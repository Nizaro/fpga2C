------------------------------------------------------------------------------
-- Copyright (c) 2012 Xilinx, Inc.
-- This design is confidential and proprietary of Xilinx, All Rights Reserved.
------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /   Vendor:                Xilinx
-- \   \   \/    Version:               1.1
--  \   \        Filename:              top16_ddr_rx.vhd
--  /   /        Date Last Modified:    Mar 30, 2016
-- /___/   /\    Date Created:          Sep 2, 2011
-- \   \  /  \
--  \___\/\___\
-- 
--Device: 	7-Series
--Purpose:  	DDR top level receiver example - 1 channel1 of 16-bits
--
--Reference:	XAPP1017.pdf
--    
--Revision History:
--    Rev 1.0 - First created (nicks)
--
------------------------------------------------------------------------------
--
--  Disclaimer: 
--
--		This disclaimer is not a license and does not grant any rights to the materials 
--              distributed herewith. Except as otherwise provided in a valid license issued to you 
--              by Xilinx, and to the maximum extent permitted by applicable law: 
--              (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND WITH ALL FAULTS, 
--              AND XILINX HEREBY DISCLAIMS ALL WARRANTIES AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, 
--              INCLUDING BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-INFRINGEMENT, OR 
--              FITNESS FOR ANY PARTICULAR PURPOSE; and (2) Xilinx shall not be liable (whether in contract 
--              or tort, including negligence, or under any other theory of liability) for any loss or damage 
--              of any kind or nature related to, arising under or in connection with these materials, 
--              including for any direct, or any indirect, special, incidental, or consequential loss 
--              or damage (including loss of data, profits, goodwill, or any type of loss or damage suffered 
--              as a result of any action brought by a third party) even if such damage or loss was 
--              reasonably foreseeable or Xilinx had been advised of the possibility of the same.
--
--  Critical Applications:
--
--		Xilinx products are not designed or intended to be fail-safe, or for use in any application 
--		requiring fail-safe performance, such as life-support or safety devices or systems, 
--		Class III medical devices, nuclear facilities, applications related to the deployment of airbags,
--		or any other applications that could lead to death, personal injury, or severe property or 
--		environmental damage (individually and collectively, "Critical Applications"). Customer assumes 
--		the sole risk and liability of any use of Xilinx products in Critical Applications, subject only 
--		to applicable laws and regulations governing limitations on product liability.
--
--  THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS PART OF THIS FILE AT ALL TIMES.
--
------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all ;

library unisim ;
use unisim.vcomponents.all ;

entity top16_ddr_rx is port (
	reset				:  in std_logic ;                     		-- reset (active high)
	refclkin			:  in std_logic ;                     		-- Reference clock for input delay control
	clkin_p,  clkin_n		:  in std_logic ;                     		-- lvds clock input
	datain_p, datain_n		:  in std_logic_vector(15 downto 0) ;  		-- lvds data inputs
	dummy	 			: out std_logic) ; 				-- Dummy output for test
end top16_ddr_rx ;

architecture arch_top16_ddr_rx of top16_ddr_rx is

component serdes_1_to_468_idelay_ddr generic (
	S 			: integer := 8 ;				-- Set the serdes factor to 4, 6 or 8
	D 			: integer := 8 ;				-- Set the number of inputs
 	CLKIN_PERIOD		: real := 2.000 ;				-- clock period (ns) of input clock on clkin_p
	REF_FREQ 		: real := 200.0 ;   				-- Parameter to set reference frequency used by idelay controller
 	HIGH_PERFORMANCE_MODE 	: string := "FALSE" ;				-- Parameter to set HIGH_PERFORMANCE_MODE of input delays to reduce jitter
	DATA_FORMAT 		: string := "PER_CLOCK") ;			-- Used to determine method for mapping input parallel word to output serial words
port 	(
	clkin_p			:  in std_logic ;				-- Input from LVDS clock pin
	clkin_n			:  in std_logic ;				-- Input from LVDS clock pin
	datain_p		:  in std_logic_vector(D-1 downto 0) ;		-- Input from LVDS receiver pin
	datain_n		:  in std_logic_vector(D-1 downto 0) ;		-- Input from LVDS receiver pin
	enable_phase_detector	:  in std_logic ;				-- Enables the phase detector logic when high
	enable_monitor		:  in std_logic ;				-- Enables the monitor logic when high, note time-shared with phase detector function
	reset			:  in std_logic ;				-- Reset line
	bitslip			:  in std_logic ;				-- bitslip 
	idelay_rdy		:  in std_logic ;				-- input delays are ready
	rxclk			: out std_logic ;				-- Global/BUFIO rx clock network
	system_clk		: out std_logic ;				-- Global/Regional clock output
	rx_lckd			: out std_logic ;				-- 
	rx_data			: out std_logic_vector((S*D)-1 downto 0) ;  	-- Output data
	bit_rate_value		:  in std_logic_vector(15 downto 0) ;	 	-- Bit rate in Mbps, eg X"0585
	dcd_correct		:  in std_logic ;	 			-- '0' = square, '1' = assume 10% DCD
	bit_time_value		: out std_logic_vector(4 downto 0) ;		-- Calculated bit time value for slave devices
	debug			: out std_logic_vector(10*D+18 downto 0) ;  	-- Debug bus
	eye_info		: out std_logic_vector(32*D-1 downto 0) ;  	-- Eye info
	m_delay_1hot		: out std_logic_vector(32*D-1 downto 0) ;  	-- Master delay control value as a one-hot vector
	clock_sweep		: out std_logic_vector(31 downto 0)) ;  	-- clock Eye info
end component ;

-- Parameters

constant D 	: integer := 16 ;						-- Set the number of inputs to be 16 in this example
constant S 	: integer := 6 ;						-- Set the serdes factor to be 6 in this example

signal 	rxd			: std_logic_vector(D*S-1 downto 0)  ; 
signal 	old_rxd			: std_logic_vector(D*S-1 downto 0)  ; 
signal	refclkint 		: std_logic ;
signal	refclkintbufg 		: std_logic ;
signal	rx_lckd			: std_logic ;
signal 	bcount			: std_logic_vector(3 downto 0)  ;
signal	delay_ready		: std_logic  ;
signal	bitslip			: std_logic  ;
signal	rx_system_clk		: std_logic  ;

begin

-- 200 or 300 Mhz Generator Clock Input

iob_200m_in : IBUF port map (
	I    			=> refclkin,
	O         		=> refclkint);

bufg_200_ref : BUFG port map(
	I 			=> refclkint, 
	O 			=> refclkintbufg) ;

icontrol : IDELAYCTRL port map(               			-- Instantiate input delay control block
	REFCLK			=> refclkintbufg,
	RST			=> reset,
	RDY			=> delay_ready);

-- Input clock and data 
	
rx0 : serdes_1_to_468_idelay_ddr generic map(
 	S			=> S,				-- Set the serdes factor (4, 6 or 8)
 	HIGH_PERFORMANCE_MODE 	=> "TRUE",
      	D			=> D,				-- Number of data lines
      	CLKIN_PERIOD		=> 1.600,			-- Set input clock period
      	REF_FREQ		=> 300.0,			-- Set idelay control reference frequency, 300 MHz shown
	DATA_FORMAT 		=> "PER_CLOCK") 		-- PER_CLOCK or PER_CHANL data formatting
port map (                           
	clkin_p   		=> clkin_p,
	clkin_n   		=> clkin_n,
	datain_p     		=> datain_p,
	datain_n     		=> datain_n,
	enable_phase_detector	=> '1',				-- enable phase detector operation
	enable_monitor		=> '0',				-- enables data eye monitoring
	dcd_correct		=> '0',				-- enables clock duty cycle correction
	rxclk    		=> open,
	idelay_rdy		=> delay_ready,
	system_clk		=> rx_system_clk,
	reset     		=> reset,
	rx_lckd			=> rx_lckd,
	bitslip  		=> bitslip,
	rx_data			=> rxd,
	bit_rate_value		=> X"1200",			-- required bit rate value in BCD (1200 Mbps shown)
	bit_time_value		=> open,
	eye_info		=> open,			-- data eye monitor per line
	m_delay_1hot		=> open,			-- sample point monitor per line
	debug			=> open) ;			-- debug bus

-- Data checking for testing, user logic will go here
-- expected pattern for testing is upper 4 bits = "1100", other bits are a walking '1' pattern

process (rx_system_clk)	begin
if rx_system_clk'event and rx_system_clk = '1' then
	if rx_lckd = '0' then
		dummy <= '0' ;
		bitslip <= '0' ;
		bcount <= "0000" ;
	else 
		bcount <= bcount + 1 ;
		if (rxd(16*S-1 downto 16*S-4) /= "1100") and (bcount = "1111") then
			bitslip <= '1' ;
		else 
			bitslip <= '0' ;		
		end if ;
		old_rxd <= rxd ;
		if rxd = "1100" & old_rxd(16*S-6 downto 0) & old_rxd(16*S-5) then
			dummy <= '1' ;
		else 
			dummy <= '0' ;
		end if ;
	end if ;
end if ;
end process ;
      	
end arch_top16_ddr_rx ;