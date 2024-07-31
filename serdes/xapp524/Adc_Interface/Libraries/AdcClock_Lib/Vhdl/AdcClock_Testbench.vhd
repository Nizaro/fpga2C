-----------------------------------------------------------------------------------------------
-- � Copyright 2009 - 2018, Xilinx, Inc. All rights reserved.
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
-- /___/  \  /   Vendor: Xilinx
-- \   \   \/    Version:
--  \   \        Filename:              AdcClock_Testbench.vhd
--  /   /        Date Last Modified:    01 Feb 2018
-- /___/   /\    Date Created:  		14 July 2009
-- \   \  /  \
--  \___\/\___\
--
-- Device: 		Virtex-6
-- Entity Name: AdcClock_Testbench
-- Purpose: 	Test Bench for design.
-- Tools:		ISE and Modelsim SE6.5b
-- Limitations: TESTBENCH
--                       DON'T USE THIS FILE FOR COMPILATION NOR INTEGRATION.
--
-- Revision History:
--    Rev.
--
-----------------------------------------------------------------------------------------------
--
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_UNSIGNED.all;
use STD.textio.all;
library UNISIM;
use UNISIM.all;
--
entity AdcClock_Testbench is
     -- generic / port / local declatations
end entity AdcClock_Testbench;
--
architecture AdcClock_Testbench_struct of AdcClock_Testbench is
-----------------------------------------------------------------------------------------------
-- Component Instantiation
-----------------------------------------------------------------------------------------------
component AdcClock
	generic (
        C_BufioLoc          : string;
        C_BufrLoc           : string;
        C_AdcBits           : integer;
        C_StatTaps          : integer
	);
	port (
        BitClk              : in std_logic;
        BitClkRst           : in std_logic;
        BitClkEna           : in std_logic;
        BitClkReSync	    : in std_logic;
        BitClk_MonClkOut    : out std_logic;   -- CLK output
        BitClk_MonClkIn	    : in std_logic;    -- ISERDES.CLK input
        BitClk_RefClkOut    : out std_logic;   -- CLKDIV & logic output
        BitClk_RefClkIn	    : in std_logic;    -- CLKDIV & logic input
        BitClkAlignWarn     : out std_logic;
        BitClkInvrtd	    : out std_logic;
        BitClkDone 		    : out std_logic
	);
end component;
--
component AdcClock_Tester
    generic (
        C_ClockPeriod       : time
    );
	port (
        BitClk              : out std_logic;
        BitClkRst           : out std_logic;
        BitClkEna           : out std_logic;
        BitClkReSync	    : out std_logic;
        BitClk_MonClkOut    : in std_logic;
        BitClk_MonClkIn	    : out std_logic;
        BitClk_RefClkOut    : in std_logic;
        BitClk_RefClkIn	    : out std_logic;
        BitClkAlignWarn     : in std_logic;
        BitClkInvrtd	    : in std_logic;
        BitClkDone 		    : in std_logic
	);
end component;
-----------------------------------------------------------------------------------------------
-- Constnats and Signal Declarations
-----------------------------------------------------------------------------------------------
constant Sim_C_ClockPeriod        : time    := 1.25 ns;
constant Sim_C_BufioLoc           : string  := "BUFIO_X0Y17"; -- IO-bank 16
constant Sim_C_BufrLoc            : string  := "BUFR_X0Y17";
constant Sim_C_AdcBits            : integer := 16;
constant Sim_C_StatTaps           : integer := 1;
--
signal Sim_BitClk               : std_logic;
signal Sim_BitClkRst            : std_logic;
signal Sim_BitClkEna            : std_logic;
signal Sim_BitClkReSync         : std_logic;
signal Sim_BitClk_MonClkOut     : std_logic;
signal Sim_BitClk_MonClkIn	    : std_logic;
signal Sim_BitClk_RefClkOut     : std_logic;
signal Sim_BitClk_RefClkIn	    : std_logic;
signal Sim_BitClkAlignWarn      : std_logic;
signal Sim_BitClkInvrtd	        : std_logic;
signal Sim_BitClkDone 		    : std_logic;
-----------------------------------------------------------------------------------------------
--
begin
UUT : AdcClock
    generic map (
        C_BufioLoc          =>  Sim_C_BufioLoc, --
        C_BufrLoc           =>  Sim_C_BufrLoc, --
        C_AdcBits           =>  Sim_C_AdcBits, --
        C_StatTaps          =>  Sim_C_StatTaps --
    )
	port map (
        BitClk              => Sim_BitClk, -- in
        BitClkRst           => Sim_BitClkRst, -- in
        BitClkEna           => Sim_BitClkEna, -- in
        BitClkReSync	    => Sim_BitClkReSync, -- in
        BitClk_MonClkOut    => Sim_BitClk_MonClkOut, -- out
        BitClk_MonClkIn	    => Sim_BitClk_MonClkIn, -- in
        BitClk_RefClkOut    => Sim_BitClk_RefClkOut, -- out
        BitClk_RefClkIn	    => Sim_BitClk_RefClkIn, -- in
        BitClkAlignWarn     => Sim_BitClkAlignWarn, -- out
        BitClkInvrtd	    => Sim_BitClkInvrtd, -- out
        BitClkDone 		    => Sim_BitClkDone  -- out
	);
--
DTU : AdcClock_Tester
    generic map (
        C_ClockPeriod       => Sim_C_ClockPeriod
    )
	port map (
        BitClk              => Sim_BitClk, -- out
        BitClkRst           => Sim_BitClkRst, -- out
        BitClkEna           => Sim_BitClkEna, -- out
        BitClkReSync	    => Sim_BitClkReSync, -- out
        BitClk_MonClkOut    => Sim_BitClk_MonClkOut, -- in
        BitClk_MonClkIn	    => Sim_BitClk_MonClkIn, -- out
        BitClk_RefClkOut    => Sim_BitClk_RefClkOut, -- in
        BitClk_RefClkIn	    => Sim_BitClk_RefClkIn, -- out
        BitClkAlignWarn     => Sim_BitClkAlignWarn, -- in
        BitClkInvrtd	    => Sim_BitClkInvrtd, -- in
        BitClkDone 		    => Sim_BitClkDone  -- in
	);
--
-----------------------------------------------------------------------------------------------
end architecture AdcClock_Testbench_struct;
--
