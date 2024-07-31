---------------------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /   
-- \   \   \/    © Copyright 2011 Xilinx, Inc. All rights reserved.
--  \   \        This file contains confidential and proprietary information of Xilinx, Inc.
--  /   /        and is protected under U.S. and international copyright and other
-- /___/   /\    intellectual property laws.
-- \   \  /  \    
--  \___\/\___\ 
-- 
---------------------------------------------------------------------------------------------
-- Device:              
-- Author:              defossez
-- Entity Name:         AppsRstEna_Testbench
-- Purpose:             <purpose of this file>
-- Tools:               
-- Limitations: TESTBENCH
--                       DON'T USE THIS FILE FOR COMPILATION NOR INTEGRATION.
--
-- Vendor:              Xilinx Inc.
-- Version:              
-- Filename:            AppsRstEna_Testbench.vhd
-- Date Created:        03 October, 2011
-- Date Last Modified:  03 October, 2011
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
--  Generics start with:                        "C_*"
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
--
entity AppsRstEna_Testbench is
-- Declarations
end AppsRstEna_Testbench;
--
architecture AppsRstEna_Testbench_struct of AppsRstEna_Testbench is
---------------------------------------------------------------------------------------------
-- Component Instantiation
---------------------------------------------------------------------------------------------
component AppsRstEna
    generic (
        C_PrimRstOutDly : integer := 2;
        C_UseRstOutDly : integer := 1;
        C_RstOutDly : integer := 6;
        C_EnaOutDly : integer := 6
    );
    port (
        Locked      : in std_logic;
        Rst         : in std_logic;
        Ena         : in std_logic;
        SysClkIn    : in std_logic;
        ExtRst      : in std_logic;
        ReadyIn     : in std_logic;
        ClkIn       : in std_logic;
        PrimRstOut  : out std_logic;
        RstOut      : out std_logic;
        EnaOut      : out std_logic
    );
end component AppsRstEna;
--
component AppsRstEna_Tester
    port (
        Locked      : out std_logic;
        Rst         : out std_logic;
        Ena         : out std_logic;
        SysClkIn    : out std_logic;
        ExtRst      : out std_logic;
        ReadyIn     : out std_logic;
        ClkIn       : out std_logic;
        PrimRstOut  : in std_logic;
        RstOut      : in std_logic;
        EnaOut      : in std_logic
    );
end component AppsRstEna_Tester;
---------------------------------------------------------------------------------------------
-- Signal Declarations
---------------------------------------------------------------------------------------------
constant Sim_C_PrimRstOutDly    : integer := 2;
constant Sim_C_UseRstOutDly     : integer := 1;
constant Sim_C_RstOutDly        : integer := 6;
constant Sim_C_EnaOutDly        : integer := 6;
--
signal Sim_Locked      : std_logic;
signal Sim_Rst         : std_logic;
signal Sim_Ena         : std_logic;
signal Sim_SysClkIn    : std_logic;
signal Sim_ExtRst      : std_logic;
signal Sim_ReadyIn     : std_logic;
signal Sim_ClkIn       : std_logic;
signal Sim_PrimRstOut  : std_logic;
signal Sim_RstOut      : std_logic;
signal Sim_EnaOut      : std_logic;
---------------------------------------------------------------------------------------------
begin
--
UUT : AppsRstEna
    generic map (
        C_PrimRstOutDly => Sim_C_PrimRstOutDly, --
        C_UseRstOutDly  => Sim_C_UseRstOutDly, --
        C_RstOutDly     => Sim_C_RstOutDly, --
        C_EnaOutDly     => Sim_C_EnaOutDly  --
    )
    port map (
        Locked      => Sim_Locked,      -- in
        Rst         => Sim_Rst,         -- in
        Ena         => Sim_Ena,         -- in
        SysClkIn    => Sim_SysClkIn,    -- in
        ExtRst      => Sim_ExtRst,      -- in
        ReadyIn     => Sim_ReadyIn,     -- in
        ClkIn       => Sim_ClkIn,       -- in
        PrimRstOut  => Sim_PrimRstOut,  -- out
        RstOut      => Sim_RstOut,      -- out
        EnaOut      => Sim_EnaOut      -- out
    );
--
DTU : AppsRstEna_Tester
    port map (
        Locked      => Sim_Locked,      -- out
        Rst         => Sim_Rst,         -- out
        Ena         => Sim_Ena,         -- out
        SysClkIn    => Sim_SysClkIn,    -- out
        ExtRst      => Sim_ExtRst,      -- out
        ReadyIn     => Sim_ReadyIn,     -- out
        ClkIn       => Sim_ClkIn,       -- out
        PrimRstOut  => Sim_PrimRstOut,  -- in
        RstOut      => Sim_RstOut,      -- in
        EnaOut      => Sim_EnaOut      --  in
    );

--
-------------------------------------------------------------------------------------------
end AppsRstEna_Testbench_struct;
