---------------------------------------------------------------------------------------------
-- © Copyright 2012, Xilinx, Inc. All rights reserved.
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
-- \   \   \/ 			Version:             V.0.02
--  \   \        		Filename:            AdcFrame_Toplevel.vhd
--  /   /        		Date Created:        17 February, 2011
-- /___/   /\    		Date Last Modified:  26 July, 2011  
-- \   \  /  \          
--  \___\/\___\
-- 
-- Device:          7-Series
-- Author:          defossez
-- Entity Name:     AdcFrame_Toplevel
-- Purpose:         Test HDL file for AdcFrame implementation. 
-- Tools:           Vivado_2017.3 or later and later
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
library AdcFrame_Lib;
    use AdcFrame_Lib.all;
---------------------------------------------------------------------------------------------
-- Entity pin description
---------------------------------------------------------------------------------------------
entity AdcFrame_Toplevel is
    generic (
        C_AdcBits           : integer := 16;
        C_AdcWireInt        : integer := 2;
        C_FrmPattern        : string := "0000000011110000";
        C_OnChipLvdsTerm    : integer := 1
    );
    port (
        FrmClk_n_pin        : in std_logic;     -- input n from IBUFDS_DIFF_OUT
        FrmClk_p_pin        : in std_logic;     -- input p from IBUFDS_DIFF_OUT
        FrmClkRst_pin       : in std_logic;
        FrmClkEna_pin       : in std_logic;
        FrmClk_pin          : in std_logic;
        FrmClkDiv_pin       : in std_logic;
        FrmClkDone_pin      : in std_logic;     -- Input from clock syncronisation.
        FrmClkReSync_pin    : in std_logic;
        FrmClkBitSlip_p_pin : out std_logic;
        FrmClkBitSlip_n_pin : out std_logic;
        FrmClkSwapMux_pin   : out std_logic;
        FrmClkMsbRegEna_pin : out std_logic;
        FrmClkLsbRegEna_pin : out std_logic;
        FrmClkReSyncOut_pin : out std_logic;
        FrmClkDat_pin       : out std_logic_vector(15 downto 0);
        FrmClkSyncWarn_pin  : out std_logic
    );
end AdcFrame_Toplevel;
---------------------------------------------------------------------------------------------
-- Architecture section
---------------------------------------------------------------------------------------------
architecture AdcFrame_Toplevel_struct of AdcFrame_Toplevel is
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
signal IntFrmClk_n : std_logic;
signal IntFrmClk_p : std_logic;
-- Attributes
---------------------------------------------------------------------------------------------
begin
--
AdcFrame_Toplevel_I_Ibufds_DI_0_0 : IBUFDS_DIFF_OUT
    generic map (IOSTANDARD => "LVDS_25", DIFF_TERM => ConvTrueFalse(C_OnChipLvdsTerm))
    port map (I => FrmClk_p_pin, IB => FrmClk_n_pin, O => IntFrmClk_p, OB => IntFrmClk_n);
--
AdcFrame_Toplevel_I_AdcFrame : entity AdcFrame_Lib.AdcFrame
    generic map (
        C_AdcBits           => C_AdcBits,
        C_AdcWireInt        => C_AdcWireInt,
        C_FrmPattern        => C_FrmPattern
    )
    port map (
        FrmClk_n        => IntFrmClk_n,         -- in  -- input n from IBUFDS_DIFF_OUT
        FrmClk_p        => IntFrmClk_p,         -- in  -- input p from IBUFDS_DIFF_OUT
        FrmClkRst       => FrmClkRst_pin,       -- in  
        FrmClkEna       => FrmClkEna_pin,       -- in  
        FrmClk          => FrmClk_pin,          -- in  
        FrmClkDiv       => FrmClkDiv_pin,       -- in  
        FrmClkDone      => FrmClkDone_pin,      -- in  -- Input from clock syncronisation.
        FrmClkReSync    => FrmClkReSync_pin,    -- in  
        FrmClkBitSlip_p => FrmClkBitSlip_p_pin, -- out 
        FrmClkBitSlip_n => FrmClkBitSlip_n_pin, -- out 
        FrmClkSwapMux   => FrmClkSwapMux_pin,   -- out 
        FrmClkMsbRegEna => FrmClkMsbRegEna_pin, -- out 
        FrmClkLsbRegEna => FrmClkLsbRegEna_pin, -- out 
        FrmClkReSyncOut => FrmClkReSyncOut_pin, -- out 
        FrmClkDat       => FrmClkDat_pin,       -- out -- [15:0]
        FrmClkSyncWarn  => FrmClkSyncWarn_pin   -- out 
    );
--
---------------------------------------------------------------------------------------------
end AdcFrame_Toplevel_struct;
