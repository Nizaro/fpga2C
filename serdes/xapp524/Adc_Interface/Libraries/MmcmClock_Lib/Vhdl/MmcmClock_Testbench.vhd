---------------------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /
-- \   \   \/    © Copyright 2012 Xiloutx, Inc. All rights reserved.
--  \   \        This file contains confidential and proprietary information of Xilinx, Inc.
--  /   /        and is protected under U.S. and international copyright and other
-- /___/   /\    intellectual property laws.
-- \   \  /  \
--  \___\/\___\
--
---------------------------------------------------------------------------------------------
-- Device:
-- Author:              defossez
-- Entity Name:         MmcmClock_Testbench
-- Purpose:             7-Series MMCm and synchronized Reset and Enbale.
-- Tools:
-- Limitations: TESTBENCH
--                       DON'T USE THIS FILE FOR COMPILATION NOR INTEGRATION.
--
-- Vendor:              Xilinx Inc.
-- Version:
-- Filename:            MmcmClock_Testbench.vhd
-- Date Created:        7 Jan, 2012
-- Date Last Modified:  10 April, 2012
---------------------------------------------------------------------------------------------
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
-- Contact:    e-mail  hotline@xilinx.com        phone   + 1 800 255 7778
---------------------------------------------------------------------------------------------
-- Revision History:
--  Rev.
--
---------------------------------------------------------------------------------------------
-- Naming Conventions:
--  Generics start with:                                    "C_*"
--  Ports
--      All words in the label of a port name start with a upper case, AnInputPort.
--      Active low ports end in                             "*_n"
--      Active high ports of a differential pair end in:    "*_p"
--      Ports being device pins end in _pin                 "*_pin"
--      Reset ports end in:                                 "*Rst"
--      Enable ports end in:                                "*Ena", "*En"
--      Clock ports end in:                                 "*Clk", "ClkDiv", "*Clk#"
--  Signals and constants
--      Signals and constant labels start with              "Int*"
--      Registered signals end in                           "_d#"
--      User defined types:                                 "*_TYPE"
--      State machine next state:                           "*_Ns"
--      State machine current state:                        "*_Cs"
--      Counter signals end in:                             "*Cnt", "*Cnt_n"
--   Processes:                                 "<Entity_><Function>_PROCESS"
--   Component instantiations:                  "<Entity>_I_<Component>_<Function>"
---------------------------------------------------------------------------------------------
library IEEE;
    use IEEE.std_logic_1164.all;
    use IEEE.std_logic_UNSIGNED.all;
    use STD.textio.all;
library UNISIM;
    use UNISIM.vcomponents.all;
---------------------------------------------------------------------------------------------
entity MmcmClock_Testbench is
-- Declarations
end MmcmClock_Testbench;
---------------------------------------------------------------------------------------------
architecture MmcmClock_Testbench_struct of MmcmClock_Testbench is
---------------------------------------------------------------------------------------------
-- Component Instantiation
---------------------------------------------------------------------------------------------
component MmcmClock
    generic (
        -- MMCM related stuff
        C_DacMmcmLoc    : string;
        -- Reset and enable stuff
        C_PrimRstOutDly : integer;
        C_UseRstOutDly  : integer;
        C_RstOutDly     : integer;
        C_EnaOutDly     : integer;
        -- Stuff for LED.
        C_Width         : integer;
        C_AlifeFactor   : integer;
        C_AlifeOn       : std_logic_vector(7 downto 0)
    );
    port (
        Mmcm_ClkIn1         : in std_logic;
        Mmcm_ClkIn2         : in std_logic;
        Mmcm_ClkInSel       : in std_logic;
        Mmcm_ClkFbOut       : out std_Logic;
        Mmcm_ClkFbIn        : in std_Logic;
        Mmcm_RstIn          : in std_Logic;
        Mmcm_SysClk0        : out std_logic;
        Mmcm_SysClk1        : out std_logic;
        Mmcm_SysClk2        : out std_logic;
        Mmcm_SysClk3        : out std_logic;
        Mmcm_SysClk4        : out std_logic;
        Mmcm_SysClk5        : out std_logic;
        Mmcm_SysClk6        : out std_logic;
        Mmcm_Locked         : out std_logic;
        Mmcm_AliveOut       : out std_logic;
        Mmcm_PrimRstOut     : out std_Logic;
        Mmcm_RstOut         : out std_logic;
        Mmcm_EnaOut         : out std_logic;
        --
        Mmcm_Drp_Di         : in std_logic_vector(15 downto 0);
        Mmcm_Drp_Addr       : in std_logic_vector(6 downto 0);
        Mmcm_Drp_We         : in std_logic;
        Mmcm_Drp_En         : in std_logic;
        Mmcm_Drp_Clk        : in std_logic;
        Mmcm_Drp_Do         : out std_logic_vector(15 downto 0);
        Mmcm_Drp_Rdy        : out std_logic;
        --
        Mmcm_PsIncDec       : in std_logic;
        Mmcm_Psen           : in std_logic;
        Mmcm_PsClk          : in std_logic;
        Mmcm_PsDone         : out std_logic;

        Mmcm_TimeTick_Fast  : out std_logic;
        Mmcm_TimeTick_Slow  : out std_logic
    );
end component MmcmClock;
--
component MmcmClock_Tester
    generic (
        C_PrimRstOutDly : integer;
        C_UseRstOutDly  : integer;
        C_RstOutDly     : integer;
        C_EnaOutDly     : integer;
        C_Width         : integer;
        C_AlifeFactor   : integer;
        C_AlifeOn       : std_logic_vector(7 downto 0)
    );
    port (
        Mmcm_ClkIn1         : out std_logic;
        Mmcm_ClkIn2         : out std_logic;
        Mmcm_ClkInSel       : out std_logic;
        Mmcm_ClkFbOut       : in std_Logic;
        Mmcm_ClkFbIn        : out std_Logic;
        Mmcm_RstIn          : out std_Logic;
        Mmcm_SysClk0        : in std_logic;
        Mmcm_SysClk1        : in std_logic;
        Mmcm_SysClk2        : in std_logic;
        Mmcm_SysClk3        : in std_logic;
        Mmcm_SysClk4        : in std_logic;
        Mmcm_SysClk5        : in std_logic;
        Mmcm_SysClk6        : in std_logic;
        Mmcm_Locked         : in std_logic;
        Mmcm_AliveOut       : in std_logic;
        Mmcm_PrimRstOut     : in std_Logic;
        Mmcm_RstOut         : in std_logic;
        Mmcm_EnaOut         : in std_logic;
        --
        Mmcm_Drp_Di         : out std_logic_vector(15 downto 0);
        Mmcm_Drp_Addr       : out std_logic_vector(6 downto 0);
        Mmcm_Drp_We         : out std_logic;
        Mmcm_Drp_En         : out std_logic;
        Mmcm_Drp_Clk        : out std_logic;
        Mmcm_Drp_Do         : in std_logic_vector(15 downto 0);
        Mmcm_Drp_Rdy        : in std_logic;
        --
        Mmcm_PsIncDec       : out std_logic;
        Mmcm_Psen           : out std_logic;
        Mmcm_PsClk          : out std_logic;
        Mmcm_PsDone         : in std_logic;

        Mmcm_TimeTick_Fast  : in std_logic;
        Mmcm_TimeTick_Slow  : in std_logic
    );
end component MmcmClock_Tester;
---------------------------------------------------------------------------------------------
-- Signal Declarations
---------------------------------------------------------------------------------------------
constant Sim_C_DacMmcmLoc    : string := "MMCME2_ADV_X0Y4";
constant Sim_C_PrimRstOutDly : integer := 2;
constant Sim_C_UseRstOutDly  : integer := 1;
constant Sim_C_RstOutDly     : integer := 6;
constant Sim_C_EnaOutDly     : integer := 8;
constant Sim_C_Width         : integer := 1;
constant Sim_C_AlifeFactor   : integer := 5;
constant Sim_C_AlifeOn       : std_logic_vector(7 downto 0) := "00000001";
--
signal Sim_Mmcm_ClkIn1         : std_logic;
signal Sim_Mmcm_ClkIn2         : std_logic;
signal Sim_Mmcm_ClkInSel       : std_logic;
signal Sim_Mmcm_ClkFbOut       : std_Logic;
signal Sim_Mmcm_ClkFbIn        : std_Logic;
signal Sim_Mmcm_RstIn          : std_Logic;
signal Sim_Mmcm_SysClk0        : std_logic;
signal Sim_Mmcm_SysClk1        : std_logic;
signal Sim_Mmcm_SysClk2        : std_logic;
signal Sim_Mmcm_SysClk3        : std_logic;
signal Sim_Mmcm_SysClk4        : std_logic;
signal Sim_Mmcm_SysClk5        : std_logic;
signal Sim_Mmcm_SysClk6        : std_logic;
signal Sim_Mmcm_Locked         : std_logic;
signal Sim_Mmcm_AliveOut       : std_logic;
signal Sim_Mmcm_PrimRstOut     : std_Logic;
signal Sim_Mmcm_RstOut         : std_logic;
signal Sim_Mmcm_EnaOut         : std_logic;
signal Sim_Mmcm_Drp_Di         : std_logic_vector(15 downto 0);
signal Sim_Mmcm_Drp_Addr       : std_logic_vector(6 downto 0);
signal Sim_Mmcm_Drp_We         : std_logic;
signal Sim_Mmcm_Drp_En         : std_logic;
signal Sim_Mmcm_Drp_Clk        : std_logic;
signal Sim_Mmcm_Drp_Do         : std_logic_vector(15 downto 0);
signal Sim_Mmcm_Drp_Rdy        : std_logic;
signal Sim_Mmcm_PsIncDec       : std_logic;
signal Sim_Mmcm_Psen           : std_logic;
signal Sim_Mmcm_PsClk          : std_logic;
signal Sim_Mmcm_PsDone         : std_logic;
signal Sim_Mmcm_TimeTick_Fast  : std_logic;
signal Sim_Mmcm_TimeTick_Slow  : std_logic;
---------------------------------------------------------------------------------------------
begin
--
UUT : MmcmClock
    generic map (
        C_DacMmcmLoc    => Sim_C_DacMmcmLoc,
        C_PrimRstOutDly => Sim_C_PrimRstOutDly,
        C_UseRstOutDly  => Sim_C_UseRstOutDly,
        C_RstOutDly     => Sim_C_RstOutDly,
        C_EnaOutDly     => Sim_C_EnaOutDly,
        C_Width         => Sim_C_Width,
        C_AlifeFactor   => Sim_C_AlifeFactor,
        C_AlifeOn       => Sim_C_AlifeOn
    )
    port map (
        Mmcm_ClkIn1         => Sim_Mmcm_ClkIn1, -- in
        Mmcm_ClkIn2         => Sim_Mmcm_ClkIn2, -- in
        Mmcm_ClkInSel       => Sim_Mmcm_ClkInSel, -- in
        Mmcm_ClkFbOut       => Sim_Mmcm_ClkFbOut, -- out
        Mmcm_ClkFbIn        => Sim_Mmcm_ClkFbIn, -- in
        Mmcm_RstIn          => Sim_Mmcm_RstIn, -- in
        Mmcm_SysClk0        => Sim_Mmcm_SysClk0, -- out
        Mmcm_SysClk1        => Sim_Mmcm_SysClk1, -- out
        Mmcm_SysClk2        => Sim_Mmcm_SysClk2, -- out
        Mmcm_SysClk3        => Sim_Mmcm_SysClk3, -- out
        Mmcm_SysClk4        => Sim_Mmcm_SysClk4, -- out
        Mmcm_SysClk5        => Sim_Mmcm_SysClk5, -- out
        Mmcm_SysClk6        => Sim_Mmcm_SysClk6, -- out
        Mmcm_Locked         => Sim_Mmcm_Locked, -- out
        Mmcm_AliveOut       => Sim_Mmcm_AliveOut, -- out
        Mmcm_PrimRstOut     => Sim_Mmcm_PrimRstOut, -- out
        Mmcm_RstOut         => Sim_Mmcm_RstOut, -- out
        Mmcm_EnaOut         => Sim_Mmcm_EnaOut, -- out
        Mmcm_Drp_Di         => Sim_Mmcm_Drp_Di, -- in [15:0]
        Mmcm_Drp_Addr       => Sim_Mmcm_Drp_Addr, -- in [6:0]
        Mmcm_Drp_We         => Sim_Mmcm_Drp_We, -- in
        Mmcm_Drp_En         => Sim_Mmcm_Drp_En, -- in
        Mmcm_Drp_Clk        => Sim_Mmcm_Drp_Clk, -- in
        Mmcm_Drp_Do         => Sim_Mmcm_Drp_Do, -- out [15:0]
        Mmcm_Drp_Rdy        => Sim_Mmcm_Drp_Rdy, -- out
        Mmcm_PsIncDec       => Sim_Mmcm_PsIncDec, -- in
        Mmcm_Psen           => Sim_Mmcm_Psen, -- in
        Mmcm_PsClk          => Sim_Mmcm_PsClk, -- in
        Mmcm_PsDone         => Sim_Mmcm_PsDone, -- out
        Mmcm_TimeTick_Fast  => Sim_Mmcm_TimeTick_Fast, -- out
        Mmcm_TimeTick_Slow  => Sim_Mmcm_TimeTick_Slow -- out
    );
--
DTU : MmcmClock_Tester
    generic map (
        C_PrimRstOutDly => Sim_C_PrimRstOutDly,
        C_UseRstOutDly  => Sim_C_UseRstOutDly,
        C_RstOutDly     => Sim_C_RstOutDly,
        C_EnaOutDly     => Sim_C_EnaOutDly,
        C_Width         => Sim_C_Width,
        C_AlifeFactor   => Sim_C_AlifeFactor,
        C_AlifeOn       => Sim_C_AlifeOn
    )
    port map (
        Mmcm_ClkIn1         => Sim_Mmcm_ClkIn1, -- out
        Mmcm_ClkIn2         => Sim_Mmcm_ClkIn2, -- out
        Mmcm_ClkInSel       => Sim_Mmcm_ClkInSel, -- out
        Mmcm_ClkFbOut       => Sim_Mmcm_ClkFbOut, -- in
        Mmcm_ClkFbIn        => Sim_Mmcm_ClkFbIn, -- out
        Mmcm_RstIn          => Sim_Mmcm_RstIn, -- out
        Mmcm_SysClk0        => Sim_Mmcm_SysClk0, -- in
        Mmcm_SysClk1        => Sim_Mmcm_SysClk1, -- in
        Mmcm_SysClk2        => Sim_Mmcm_SysClk2, -- in
        Mmcm_SysClk3        => Sim_Mmcm_SysClk3, -- in
        Mmcm_SysClk4        => Sim_Mmcm_SysClk4, -- in
        Mmcm_SysClk5        => Sim_Mmcm_SysClk5, -- in
        Mmcm_SysClk6        => Sim_Mmcm_SysClk6, -- in
        Mmcm_Locked         => Sim_Mmcm_Locked, -- in
        Mmcm_AliveOut       => Sim_Mmcm_AliveOut, -- in
        Mmcm_PrimRstOut     => Sim_Mmcm_PrimRstOut, -- in
        Mmcm_RstOut         => Sim_Mmcm_RstOut, -- in
        Mmcm_EnaOut         => Sim_Mmcm_EnaOut, -- in
        Mmcm_Drp_Di         => Sim_Mmcm_Drp_Di, -- out [15:0]
        Mmcm_Drp_Addr       => Sim_Mmcm_Drp_Addr, -- out [6:0]
        Mmcm_Drp_We         => Sim_Mmcm_Drp_We, -- out
        Mmcm_Drp_En         => Sim_Mmcm_Drp_En, -- out
        Mmcm_Drp_Clk        => Sim_Mmcm_Drp_Clk, -- out
        Mmcm_Drp_Do         => Sim_Mmcm_Drp_Do, -- in [15:0]
        Mmcm_Drp_Rdy        => Sim_Mmcm_Drp_Rdy, -- in
        Mmcm_PsIncDec       => Sim_Mmcm_PsIncDec, -- out
        Mmcm_Psen           => Sim_Mmcm_Psen, -- out
        Mmcm_PsClk          => Sim_Mmcm_PsClk, -- out
        Mmcm_PsDone         => Sim_Mmcm_PsDone, -- in
        Mmcm_TimeTick_Fast  => Sim_Mmcm_TimeTick_Fast, -- in
        Mmcm_TimeTick_Slow  => Sim_Mmcm_TimeTick_Slow -- in
    );
-------------------------------------------------------------------------------------------
end MmcmClock_Testbench_struct;
--
