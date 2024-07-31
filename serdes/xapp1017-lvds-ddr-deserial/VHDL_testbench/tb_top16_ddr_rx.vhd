------------------------------------------------------------------------------
-- Copyright (c) 2013 Xilinx, Inc.
-- This design is confidential and proprietary of Xilinx, All Rights Reserved.
------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /   Vendor:                Xilinx
-- \   \   \/    Version:               1.0
--  \   \        Filename:              tb_top16_ddr_rx.vhd
--  /   /        Date Last Modified:    Mar 30, 2016
-- /___/   /\    Date Created:          Sep 2, 2011
-- \   \  /  \
--  \___\/\___\
-- 
--Device: 	7-Series
--Purpose:  	ddr top level receiver example - 1 channel of 16 bits
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
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all ;

library unisim ;
use unisim.vcomponents.all ;

entity tb_top16_ddr_rx is end tb_top16_ddr_rx ;

architecture rtl of tb_top16_ddr_rx is

component top16_ddr_rx port (
	reset				:  in std_logic ;                     		-- reset (active high)
	refclkin			:  in std_logic ;                     		-- Reference clock for input delay control
	clkin_p,  clkin_n		:  in std_logic ;                     		-- lvds clock input
	datain_p, datain_n		:  in std_logic_vector(15 downto 0) ;  		-- lvds data inputs
	dummy	 			: out std_logic) ; 				-- Dummy output for test
end component;

component serdes_n_to_1_7_series generic (
	D 			: integer := 8 ;   				-- Parameter to set the number of data lines
	S 			: integer := 8 ;   				-- Parameter to set the serdes factor : 2, 4, 6, 8, 10 or 14
	DATA_RATE 		: string := "DDR" ;     			-- Parameter Used to determine whether clocking is DDR or SDR
	DATA_FORMAT 		: string := "PER_CLOCK" ;     			-- Parameter Used to determine method for mapping input parallel word to output serial words
	DATA_OUTPUTS 		: string := "DIFF" ; 				-- Defines a differential ("DIFF") or single ended ("SEND") data output structure
	CLOCK_OUTPUT 		: string := "DIFF") ; 				-- Defines a differential ("DIFF") or single ended ("SEND") or no ("NONE") clock output structure
port (                                    	                                   	
	txclk 			:  in std_logic ;				-- DDR transmitter clock network
	reset 			:  in std_logic ;				-- Active high reset line
	system_clk 		:  in std_logic ;				-- Clock at system rate
	datain 			:  in std_logic_vector(D*S-1 downto 0) ;	-- Data for output
	clk_pattern 		:  in std_logic_vector(S-1 downto 0) ;		-- clock pattern for output
	clkout_p 		: out std_logic ;				-- differential output clock
	clkout_n 		: out std_logic ;				-- differential output clock
	clkout 			: out std_logic ;				-- single ended output clock
	dataout_p		: out std_logic_vector(D-1 downto 0) ;		-- differential output data
	dataout_n 		: out std_logic_vector(D-1 downto 0) ;		-- differential output data
	dataout 		: out std_logic_vector(D-1 downto 0)) ;		-- single ended output data
end component;
	
constant S		: integer := 6 ;
constant P		: integer := 833 ;

signal clk300 		: std_logic := '1' ;
signal tb_clk 		: std_logic := '1' ;
signal tb_sys_clk	: std_logic := '1' ;
signal reset 		: std_logic := '1' ;
signal clkout_p 	: std_logic ;
signal clkout_n 	: std_logic ;
signal dataout_p	: std_logic_vector(15 downto 0) ;
signal dataout_n	: std_logic_vector(15 downto 0) ;
signal match 		: std_logic ;
signal datain		: std_logic_vector(16*S-1 downto 0) := (0 => '1', others => '0') ;

begin

clk300 <= not clk300 after 1.666 nS ;			-- 300 Mhz clock
tb_clk <= not tb_clk after 833 pS ;
tb_sys_clk <= not tb_sys_clk after 2499 pS ;		
datain <= "1100" & datain(16*S-6 downto 0) & datain(16*S-5) after 4998 pS ;
reset <= '0' after 150 nS;

tx : serdes_n_to_1_7_series generic map (
	D				=> 16,
	S 				=> 6,
	DATA_RATE 			=> "DDR",
	DATA_FORMAT 			=> "PER_CLOCK")
port map(
	datain				=> datain,  
	clk_pattern			=> "010101",
	reset				=> reset,
	clkout_p			=> clkout_p,  
	clkout_n			=> clkout_n,
	dataout_p			=> dataout_p, 
	dataout_n			=> dataout_n,
	system_clk			=> tb_sys_clk,  
	txclk				=> tb_clk) ;

rx : top16_ddr_rx port map(
	reset				=> reset,
	refclkin			=> clk300,
	clkin_p                        	=> clkout_p,
	clkin_n				=> clkout_n,	
	datain_p               		=> dataout_p,	
	datain_n			=> dataout_n,	
	dummy	 			=> match) ;	
		
end rtl ;
