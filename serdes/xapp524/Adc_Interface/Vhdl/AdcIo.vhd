-----------------------------------------------------------------------------------------------
-- Copyright 2012, Xilinx, Inc. All rights reserved.
-- This file contains confidential and proprietary information of Xilinx, Inc. and is
-- protected under U.S. and international copyright and other intellectual property laws.
-----------------------------------------------------------------------------------------------
--
-- Disclaimer:
--		This disclaimer is not a license and does not grant any rights to the materials
--		distributed herewith. Except as otherwise provided in a valid license issued to you
--		by Xilinx, and to the maximum extent permitted by applicable law: (1) THESE MATERIALS
--		ARE MADE AVAILABLE "AS IS" AND WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL
--		WARRANTIES AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING BUT NOT LIMITED
--		TO WARRANTIES OF MERCHANTABILITY, NON-INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR
--		PURPOSE; and (2) Xilinx shall not be liable (whether in contract or tort, including
--		negligence, or under any other theory of liability) for any loss or damage of any
--		kind or nature related to, arising under or in connection with these materials,
--		including for any direct, or any indirect, special, incidental, or consequential
--		loss or damage (including loss of data, profits, goodwill, or any type of loss or
--		damage suffered as a result of any action brought by a third party) even if such
--		damage or loss was reasonably foreseeable or Xilinx had been advised of the
--		possibility of the same.
--
-- CRITICAL APPLICATIONS
--		Xilinx products are not designed or intended to be fail-safe, or for use in any
--		application requiring fail-safe performance, such as life-support or safety devices
--		or systems, Class III medical devices, nuclear facilities, applications related to
--		the deployment of airbags, or any other applications that could lead to death,
--		personal injury, or severe property or environmental damage (individually and
--		collectively, "Critical Applications"). Customer assumes the sole risk and
--		liability of any use of Xilinx products in Critical Applications, subject only to
--		applicable laws and regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS PART OF THIS FILE AT ALL TIMES. 
--
--		Contact:    e-mail  hotline@xilinx.com        phone   + 1 800 255 7778
--   ____  ____
--  /   /\/   /
-- /___/  \  / 			Vendor:               Xilinx Inc.
-- \   \   \/ 			Version:              0.01
--  \   \        		Filename:             AdcIo.vhd
--  /   /        		Date Last Modified:   24 Jul 12
-- /___/   /\    		Date Created:         19 Oct 09
-- \   \  /  \
--  \___\/\___\
-- 
-- Device:          7-Series
-- Author:          Marc Defossez
-- Entity Name:     AdcIo
-- Purpose:         FPGA IO for the ADC interface
-- Tools:           Vivado_2017.3 or later
-- Limitations:     none
--
-- Revision History:
--	Rev. 19 Oct 09
--	For easynes of later use of the design or use of the design in different technologies
--	a separate file with ADC IO declaration was needed.
--
-----------------------------------------------------------------------------------------------
library IEEE;
	use IEEE.std_logic_1164.all;
	use IEEE.std_logic_UNSIGNED.all;
	use STD.textio.all;
library UNISIM;
	use UNISIM.vcomponents.all;
--
entity AdcIo is
    generic (
        C_AdcWireInt        : integer := 1;   -- 2 = 2-wire, 1 = 1-wire interface
        C_AdcChnls          : integer := 2;
        C_OnChipLvdsTerm	: integer := 1 	-- 0 = No Term, 1 - Termination ON.
	  );
    port (
        DCLK_p	: out std_logic;
        DCLK_n	: out std_logic;
        FCLK_p	: out std_logic;
        FCLK_n	: out std_logic;
        DATA_p	: out std_logic_vector((C_AdcChnls*C_AdcWireInt)-1 downto 0);
        DATA_n	: out std_logic_vector((C_AdcChnls*C_AdcWireInt)-1 downto 0);
        -- Port 0
        Adc_DCLK_0_p_pin	: in  std_logic;
        Adc_DCLK_0_n_pin	: in  std_logic;
        Adc_FCLK_0_p_pin	: in  std_logic;
        Adc_FCLK_0_n_pin	: in  std_logic;
        Adc_DI_p_pin    	: in  std_logic_vector((C_AdcChnls*C_AdcWireInt)-1 downto 0);
        Adc_DI_n_pin    	: in  std_logic_vector((C_AdcChnls*C_AdcWireInt)-1 downto 0)
    );
end entity AdcIo;
--
architecture AdcIo_struct of AdcIo is
-----------------------------------------------------------------------------------------------
-- Component Instantiation
-----------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------
-- Signal Declarations
-----------------------------------------------------------------------------------------------
-- Constants
constant Low  : std_logic := '0';
constant High : std_logic := '1';
function ConvTrueFalse (Term : integer) return boolean is
begin
	if (Term = 0) then
		return FALSE;
	else
		return TRUE;
	end if;
end ConvTrueFalse;
-- Signals

-- Attributes
-----------------------------------------------------------------------------------------------
begin
-----------------------------------------------------------------------------------------------
-- ADC PORT
--		DCLK_p/n
--		FCLK_p/n
--		DATA_p/n[3:0]
-----------------------------------------------------------------------------------------------
AdcIO_I_Ibufgds_Dclk_0 : IBUFGDS
	generic map (DIFF_TERM	=> ConvTrueFalse(C_OnChipLvdsTerm), IOSTANDARD	=> "LVDS_25")
	port map (I => Adc_DCLK_0_p_pin, IB => Adc_DCLK_0_n_pin, O => DCLK_p);
DCLK_n <= Low;
--
AdcIo_I_Ibufds_Fclk_0 : IBUFDS_DIFF_OUT
	generic	map (IOSTANDARD	=> "LVDS_25", DIFF_TERM	=> ConvTrueFalse(C_OnChipLvdsTerm))
	port map (I	=> Adc_FCLK_0_p_pin, IB => Adc_FCLK_0_n_pin,
				O => FCLK_p, OB => FCLK_n);
--
Gen_1 : for n in (C_AdcChnls*C_AdcWireInt)-1 downto 0 generate
    AdcIo_I_Ibufds_DI : IBUFDS_DIFF_OUT
        generic map (IOSTANDARD => "LVDS_25", DIFF_TERM	=> ConvTrueFalse(C_OnChipLvdsTerm))
        port map (I => Adc_DI_p_pin(n), IB => Adc_DI_n_pin(n),
                    O => DATA_p(n), OB => DATA_n(n));
end generate Gen_1;
--
-----------------------------------------------------------------------------------------------
end architecture AdcIo_struct; 