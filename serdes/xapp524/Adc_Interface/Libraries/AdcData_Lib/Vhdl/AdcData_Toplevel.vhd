---------------------------------------------------------------------------------------------
-- © Copyright 2011, Xilinx, Inc. All rights reserved.
-- This file contains confidential and proprietary information of Xilinx, Inc. and is
-- protected under U.S. and international copyright and other intellectual property laws.
---------------------------------------------------------------------------------------------
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
-- /___/  \  / 			Vendor:              Xilinx Inc.
-- \   \   \/ 			Version:              
--  \   \        		Filename:            AdcData_Toplevel.vhd
--  /   /        		Date Created:        17 February, 2011
-- /___/   /\    		Date Last Modified:  17 February, 2011  
-- \   \  /  \          
--  \___\/\___\
-- 
-- Device:          Virtex_6
-- Author:          defossez
-- Entity Name:     AdcData_Toplevel
-- Purpose:         Test implementation for the AdcData hierarchical level of the ADC
--                  interface design. This to examine that everything is implemented as it
--                  needs to be. 
-- Tools:           ISE_12.4
-- Limitations:     none
--
-- Revision History:
--	Rev. 
--
------------------------------------------------------------------------------
-- Naming Conventions:
--   active low signals:                    "*_n"
--   clock signals:                         "clk", "clk_div#", "clk_#x"
--   reset signals:                         "rst", "rst_n"
--   generics:                              "C_*"
--   user defined types:                    "*_TYPE"
--   state machine next state:              "*_ns"
--   state machine current state:           "*_cs"
--   combinatorial signals:                 "*_com"
--   pipelined or register delay signals:   "*_d#"
--   counter signals:                       "*cnt*"
--   clock enable signals:                  "*_ce"
--   internal version of output port:       "*_i"
--   device pins:                           "*_pin"
--   ports:                                 "- Names begin with Uppercase"
--   processes:                             "*_PROCESS"
--   component instantiations:              "<ENTITY_>I_<#|FUNC>"
---------------------------------------------------------------------------------------------
library IEEE;
	use IEEE.std_logic_1164.all;
	use IEEE.std_logic_UNSIGNED.all;
library UNISIM;
	use UNISIM.vcomponents.all;
library AdcData;
    use AdcData.all;
---------------------------------------------------------------------------------------------
-- Entity pin description
---------------------------------------------------------------------------------------------
entity AdcData_Toplevel is
    generic (
        C_OnChipLvdsTerm    : integer := 1;     -- 0 = No Term, 1 - Termination ON.
        C_AdcBits           : integer := 16;    -- Can be 12, 14 or 16
        C_AdcBytOrBitMode   : integer := 0;     -- 1 = BIT mode, 0 = BYTE mode,
        C_AdcMsbOrLsbFst    : integer := 0;     -- 0 = MSB first, 1 = LSB first
        C_AdcWireInt        : integer := 2      -- 1 = 1-wire, 2 = 2-wire.
    );
    port (
        DatD0_n_pin         : in std_logic;
        DatD0_p_pin         : in std_logic;
        DatD1_n_pin         : in std_logic;
        DatD1_p_pin         : in std_logic;
        DatClk_pin          : in std_logic;
        DatClkDiv_pin       : in std_logic;
        DatRst_pin          : in std_logic;
        DatEna_pin          : in std_logic;
        DatDone_pin         : in std_logic;
        DatBitSlip_p_pin    : in std_logic;
        DatBitSlip_n_pin    : in std_logic;
        DatSwapMux_pin      : in std_logic;
        DatMsbRegEna_pin    : in std_logic;
        DatLsbRegEna_pin    : in std_logic;
        DatReSync_pin       : in std_logic;
        DatOut_pin          : out std_logic_vector(31 downto 0)
    );
end AdcData_Toplevel;
---------------------------------------------------------------------------------------------
-- Architecture section
---------------------------------------------------------------------------------------------
architecture AdcData_Toplevel_struct of AdcData_Toplevel is
---------------------------------------------------------------------------------------------
-- Component Instantiation
---------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------
-- Constants, Signals and Attributes Declarations
---------------------------------------------------------------------------------------------
-- Functions
function ConvTrueFalse (Term : integer) return boolean is
begin
    if (Term = 0) then
        return FALSE;
    else
        return TRUE;
    end if;
end ConvTrueFalse;
-- Constants
constant Low  : std_logic	:= '0';
constant High : std_logic	:= '1';
-- Signals
signal IntDatD0_n : std_logic;
signal IntDatD0_p : std_logic;
signal IntDatD1_n : std_logic;
signal IntDatD1_p : std_logic;
-- Attributes
attribute KEEP_HIERARCHY : string;
    attribute KEEP_HIERARCHY of AdcData_Toplevel_struct : architecture is "NO";
---------------------------------------------------------------------------------------------
begin
--
AdcData_Toplevel_I_Ibufds_DI_0_0 : IBUFDS_DIFF_OUT
    generic map (IOSTANDARD => "LVDS_25", DIFF_TERM => ConvTrueFalse(C_OnChipLvdsTerm))
    port map (I => DatD0_p_pin, IB => DatD0_n_pin, O => IntDatD0_p, OB => IntDatD0_n);
AdcData_Toplevel_I_Ibufds_DI_1_0 : IBUFDS_DIFF_OUT
    generic map (IOSTANDARD => "LVDS_25", DIFF_TERM => ConvTrueFalse(C_OnChipLvdsTerm))
    port map (I => DatD1_p_pin, IB => DatD1_n_pin, O => IntDatD1_p, OB => IntDatD1_n);
--
AdcData_Toplevel_I_AdcData : entity AdcData.AdcData
    generic map (
        C_AdcBits           => C_AdcBits,            -- Can be 12, 14 or 16
        C_AdcBytOrBitMode   => C_AdcBytOrBitMode,    -- 1 = BIT mode, 0 = BYTE mode,
        C_AdcMsbOrLsbFst    => C_AdcMsbOrLsbFst,     -- 0 = MSB first, 1 = LSB first
        C_AdcWireInt        => C_AdcWireInt          -- 1 = 1-wire, 2 = 2-wire.
    )
    port map (
        DatD0_n         => IntDatD0_n,      -- in
        DatD0_p         => IntDatD0_p,      -- in
        DatD1_n         => IntDatD1_n,      -- in
        DatD1_p         => IntDatD1_p,      -- in
        DatClk          => DatClk_pin,          -- in
        DatClkDiv       => DatClkDiv_pin,       -- in
        DatRst          => DatRst_pin,          -- in
        DatEna          => DatEna_pin,          -- in
        DatDone         => DatDone_pin,         -- in
        DatBitSlip_p    => DatBitSlip_p_pin,    -- in
        DatBitSlip_n    => DatBitSlip_n_pin,    -- in
        DatSwapMux      => DatSwapMux_pin,      -- in
        DatMsbRegEna    => DatMsbRegEna_pin,    -- in
        DatLsbRegEna    => DatLsbRegEna_pin,    -- in
        DatReSync       => DatReSync_pin,       -- in
        DatOut          => DatOut_pin           -- out
    );
--
---------------------------------------------------------------------------------------------
end AdcData_Toplevel_struct;
