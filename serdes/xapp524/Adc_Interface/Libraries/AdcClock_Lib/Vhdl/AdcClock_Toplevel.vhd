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
-- \   \   \/ 			Version:             V0.03
--  \   \        		Filename:            AdcClock_Toplevel.vhd
--  /   /        		Date Created:        16 Feb, 2011
-- /___/   /\    		Date Last Modified:  24 Jul, 2012  
-- \   \  /  \          
--  \___\/\___\
-- 
-- Device:          7-Series
-- Author:          defossez
-- Entity Name:     AdcClock_Toplevel
-- Purpose:         Implementation of the AdcClock hierarchical level.
--                  Check if everything is nicely synthesized, MAPped, and implemented.  
-- Tools:           Vivado_2017.3 or later
-- Limitations:     none
--
-- Revision History:
--	Rev. 24 Oct 2013
--      Needed to add a BUFG in the RefClk net because of Vivado.
--      Vivado errors out because it can not route the RefClk from an input buffer
--      To the IDELAYCTRL clock pin with out BUFG.
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
library AdcClock_Lib;
    use AdcClock_Lib.all;
---------------------------------------------------------------------------------------------
-- Entity pin description
---------------------------------------------------------------------------------------------
entity AdcClock_Toplevel is
    generic (
        C_BufioLoc          : string := "BUFIO_X0Y6";  -- IO-Bank 13 (LPC)
        C_BufrLoc           : string := "BUFR_X0Y6";  -- IO-Bank 13 (LPC)
        C_AdcBits           : integer := 16;
        C_StatTaps          : integer := 16;
        C_AdcIdlyCtrlLoc    : string := "IDELAYCTRL_X0Y1";  -- IO-Bank 13 (LPC)
        C_OnChipLvdsTerm    : integer := 0  -- 0 = No Term, 1 - Termination ON.
     );
	port (
	    SysRefClk_p_pin        : in std_logic; -- 200 Mhz reference clock
	    SysRefClk_n_pin        : in std_logic;
		BitClk_p_pin           : in std_logic;
		BitClk_n_pin           : in std_logic;
        BitClkRst_pin          : in std_logic;
        BitClkEna_pin          : in std_logic;
        BitClkReSync_pin       : in std_logic;
        AdcIdlyCtrlRdy_pin     : out std_logic;
        --BitClkMonClk_pin       : out std_logic;
        BitClkRefClk_pin       : out std_logic;
        BitClkAlignWarn_pin    : out std_logic;
        BitClkInvrtd_pin       : out std_logic;
        BitClkDone_pin         : out std_logic
	);
end AdcClock_Toplevel;
---------------------------------------------------------------------------------------------
-- Architecture section
---------------------------------------------------------------------------------------------
architecture AdcClock_Toplevel_struct of AdcClock_Toplevel is
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
signal IntSysRefClk         : std_logic;
signal IntSysRefClk_Bufg    : std_logic;
signal IntAdcIdlyCtrlRdy    : std_logic;
signal IntBitClk            : std_logic;
signal IntBitClkRst         : std_logic;
signal IntBitClkEna         : std_logic;
signal IntBitClkReSync      : std_logic;
signal IntBitClkMonClk      : std_logic;
signal IntBitClkRefClk      : std_logic;
signal IntBitClkAlignWarn   : std_logic;
signal IntBitClkAlignWarn_d : std_logic_vector(3 downto 0);
signal IntBitClkInvrtd      : std_logic;
signal IntBitClkInvrtd_d    : std_logic_vector(3 downto 0);
signal IntBitClkDone        : std_logic;
signal IntBitClkDone_d      : std_logic_vector(3 downto 0);
-- Attributes
attribute KEEP_HIERARCHY : string;
    attribute KEEP_HIERARCHY of AdcClock_Toplevel_struct : architecture is "no";
attribute LOC : string;
    attribute LOC of AdcClock_Toplevel_I_IdlyCtrl : label is C_AdcIdlyCtrlLoc;
---------------------------------------------------------------------------------------------
begin
--
AdcClock_Toplevel_I_Ibufgds_Sys : IBUFGDS
    generic map (DIFF_TERM  => ConvTrueFalse(C_OnChipLvdsTerm), IOSTANDARD  => "LVDS")
    port map (I => SysRefClk_p_pin, IB => SysRefClk_n_pin, O => IntSysRefClk);
-- BUFG added because Vivado cannot route the design.
-- ISE never had issues.
AdcClock_Toplevel_I_Bufg : BUFG
    port map (I => IntSysRefClk, O => IntSysRefClk_Bufg);
--
AdcClock_Toplevel_I_IdlyCtrl : IDELAYCTRL
    port map (REFCLK => IntSysRefClk_Bufg, RST => IntBitClkRst, RDY => IntAdcIdlyCtrlRdy);
---------------------------------------------------------------------------------------------
AdcClock_Toplevel_I_Ibufgds_BitClk : IBUFGDS
    generic map (DIFF_TERM  => ConvTrueFalse(C_OnChipLvdsTerm), IOSTANDARD  => "LVDS_25")
    port map (I => BitClk_p_pin, IB => BitClk_n_pin, O => IntBitClk);
AdcClock_Toplevel_I_Ibuf_Rst : IBUF
    generic map (IOSTANDARD => "LVCMOS15")
    port map (I => BitClkRst_pin, O => IntBitClkRst);
AdcClock_Toplevel_I_Ibuf_Ena : IBUF
    generic map (IOSTANDARD => "LVCMOS25")
    port map (I => BitClkEna_pin, O => IntBitClkEna);
AdcClock_Toplevel_I_Ibuf_ReSync : IBUF
    generic map (IOSTANDARD => "LVCMOS25")
    port map (I => BitClkReSync_pin, O => IntBitClkReSync);
---------------------------------------------------------------------------------------------
-- AdcClock hierarcical level
---------------------------------------------------------------------------------------------
AdcClock_Toplevel_I_AdcClock : entity AdcClock_Lib.AdcClock
    generic map (
        C_BufioLoc  => C_BufioLoc,
        C_BufrLoc   => C_BufrLoc,
        C_AdcBits   => C_AdcBits,
        C_StatTaps  => C_StatTaps
    )
    port map (
        BitClk              => IntBitClk,       -- in  
        BitClkRst           => IntBitClkRst,    -- in  
        BitClkEna           => IntBitClkEna,    -- in  
        BitClkReSync        => IntBitClkReSync, -- in  
        BitClk_MonClkOut    => IntBitClkMonClk, -- out -- CLK output
        BitClk_MonClkIn     => IntBitClkMonClk, -- in  -- ISERDES.CLK input
        BitClk_RefClkOut    => IntBitClkRefClk, -- out -- CLKDIV & logic output
        BitClk_RefClkIn     => IntBitClkRefClk, -- in  -- CLKDIV & logic input
        BitClkAlignWarn     => IntBitClkAlignWarn, -- out 
        BitClkInvrtd        => IntBitClkInvrtd, -- out 
        BitClkDone          => IntBitClkDone    -- out 
    );
---------------------------------------------------------------------------------------------
AdcClock_Toplevel_I_Obuf_200 : OBUF
    generic map (IOSTANDARD => "LVCMOS15", SLEW => "FAST")
    port map (I => IntAdcIdlyCtrlRdy, O => AdcIdlyCtrlRdy_pin);
--
AdcClock_Toplevel_I_Obuf_Ref : OBUF
    generic map (IOSTANDARD => "LVCMOS25", SLEW => "FAST")
    port map (I => IntBitClkRefClk, O => BitClkRefClk_pin);
--
AdcClock_Toplevel_I_Fdce_0_AlignWarn : FDCE
    generic map (INIT => '0')
    port map (D => IntBitClkAlignWarn, CE => High, C => IntBitClkRefClk,
              CLR => IntBitClkRst, Q => IntBitClkAlignWarn_d(0));
AdcClock_Toplevel_I_Fdce_1_AlignWarn : FDCE
    generic map (INIT => '0')
    port map (D => IntBitClkAlignWarn_d(0), CE => High, C => IntBitClkRefClk,
              CLR => IntBitClkRst, Q => IntBitClkAlignWarn_d(1));
AdcClock_Toplevel_I_Fdce_2_AlignWarn : FDCE
    generic map (INIT => '0')
    port map (D => IntBitClkAlignWarn_d(1), CE => High, C => IntBitClkRefClk,
              CLR => IntBitClkRst, Q => IntBitClkAlignWarn_d(2));
AdcClock_Toplevel_I_Fdce_3_AlignWarn : FDCE
    generic map (INIT => '0')
    port map (D => IntBitClkAlignWarn_d(2), CE => High, C => IntBitClkRefClk,
              CLR => IntBitClkRst, Q => IntBitClkAlignWarn_d(3));
AdcClock_Toplevel_I_Obuf_AlignWarn : OBUF
    generic map (IOSTANDARD => "LVCMOS15", SLEW => "SLOW")
    port map (I => IntBitClkAlignWarn_d(3), O => BitClkAlignWarn_pin);
--
AdcClock_Toplevel_I_Fdce_0_Invrtd : FDCE
    generic map (INIT => '0')
    port map (D => IntBitClkInvrtd, CE => High, C => IntBitClkRefClk,
              CLR => IntBitClkRst, Q => IntBitClkInvrtd_d(0));
AdcClock_Toplevel_I_Fdce_1_Invrtd : FDCE
    generic map (INIT => '0')
    port map (D => IntBitClkInvrtd_d(0), CE => High, C => IntBitClkRefClk,
              CLR => IntBitClkRst, Q => IntBitClkInvrtd_d(1));
AdcClock_Toplevel_I_Fdce_2_Invrtd : FDCE
    generic map (INIT => '0')
    port map (D => IntBitClkInvrtd_d(1), CE => High, C => IntBitClkRefClk,
              CLR => IntBitClkRst, Q => IntBitClkInvrtd_d(2));
AdcClock_Toplevel_I_Fdce_3_Invrtd : FDCE
    generic map (INIT => '0')
    port map (D => IntBitClkInvrtd_d(2), CE => High, C => IntBitClkRefClk,
              CLR => IntBitClkRst, Q => IntBitClkInvrtd_d(3));
AdcClock_Toplevel_I_Obuf_Invrtd : OBUF
    generic map (IOSTANDARD => "LVCMOS25", SLEW => "SLOW")
    port map (I => IntBitClkInvrtd_d(3), O => BitClkInvrtd_pin);
--
AdcClock_Toplevel_I_Fdce_0_Done : FDCE
    generic map (INIT => '0')
    port map (D => IntBitClkDone, CE => High, C => IntBitClkRefClk,
              CLR => IntBitClkRst, Q => IntBitClkDone_d(0));
AdcClock_Toplevel_I_Fdce_1_Done : FDCE
    generic map (INIT => '0')
    port map (D => IntBitClkDone_d(0), CE => High, C => IntBitClkRefClk,
              CLR => IntBitClkRst, Q => IntBitClkDone_d(1));
AdcClock_Toplevel_I_Fdce_2_Done : FDCE
    generic map (INIT => '0')
    port map (D => IntBitClkDone_d(1), CE => High, C => IntBitClkRefClk,
              CLR => IntBitClkRst, Q => IntBitClkDone_d(2));
AdcClock_Toplevel_I_Fdce_3_Done : FDCE
    generic map (INIT => '0')
    port map (D => IntBitClkDone_d(2), CE => High, C => IntBitClkRefClk,
              CLR => IntBitClkRst, Q => IntBitClkDone_d(3));
AdcClock_Toplevel_I_Obuf_Done : OBUF
    generic map (IOSTANDARD => "LVCMOS25", SLEW => "SLOW")
    port map (I => IntBitClkDone_d(3), O => BitClkDone_pin);
--
---------------------------------------------------------------------------------------------
end AdcClock_Toplevel_struct;
