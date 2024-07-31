-----------------------------------------------------------------------------------------------
-- � Copyright 2012, Xilinx, Inc. All rights reserved.
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
-- /___/  \  /   Vendor:    Xilinx
-- \   \   \/    Version:   V0.02
--  \   \        Filename:  AdcMem_Testbench.vhd
--  /   /        Date Last Modified:    25 Jul 2012
-- /___/   /\    Date Created:          07 Apr 2008
-- \   \  /  \
--  \___\/\___\
--
-- Device:          7-Series
-- Entity Name:     AdcMem_Testbench
-- Purpose:         Test Bench for design.
-- Tools:           Vivado_2017.3 or later and Later
-- Limitations: TESTBENCH;
--                                        DON'T USE THIS FILE FOR COMPILATION NOR INTEGRATION.
--
-- Revision History:
--    Rev.
-----------------------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_UNSIGNED.all;
use STD.textio.all;
library UNISIM;
use UNISIM.all;
--
entity AdcMem_Testbench is
-- Declarations
end  AdcMem_Testbench;
--
architecture AdcMem_Testbench_struct of AdcMem_Testbench is
-----------------------------------------------------------------------------------------------
-- Component Instantiation
-----------------------------------------------------------------------------------------------
component AdcMem
	generic (
		C_AdcWireInt	: integer
	);
    port (
        ClkIn	: in std_logic;
        EnaIn	: in std_logic;
        RstIn	: in std_logic;
        DatIn	: in std_logic_vector((32/C_AdcWireInt)-1 downto 0);
        ClkOut	: in std_logic;
        RstOut	: in std_logic;
        EnaOut	: in std_logic;
        DatOut	: out std_logic_vector((32/C_AdcWireInt)-1 downto 0);
        Flags	: out std_logic_vector(3 downto 0);
        Full    : out std_logic;
        Empty   : out std_logic
    );
end component;
--
component AdcMem_Tester
	generic (
        C_ClockPeriod   : time;
        C_WrPhase       : real;
        C_RdPhase       : real;
        C_StimVecFile   : string;
		C_AdcWireInt	: integer
    );
    port (
        ClkIn	: out std_logic;
        EnaIn	: out std_logic;
        RstIn	: out std_logic;
        DatIn	: out std_logic_vector((32/C_AdcWireInt)-1 downto 0);
        ClkOut	: out std_logic;
        RstOut	: out std_logic;
        EnaOut	: out std_logic;
        DatOut	: in std_logic_vector((32/C_AdcWireInt)-1 downto 0);
        Flags	: in std_logic_vector(3 downto 0);
        Full    : in std_logic;
        Empty   : in std_logic
    );
end component;
-----------------------------------------------------------------------------------------------
-- Signal Declarations
-----------------------------------------------------------------------------------------------
constant Sim_C_ClockPeriod  : time := 4 ns;
constant Sim_C_WrPhase      : real := 1.00;
constant Sim_C_RdPhase      : real := 1.25;
constant Sim_C_StimVecFile  : string := "..\Vhdl\AdcMem_Vec.txt";
constant Sim_C_AdcWireInt	: integer := 2;
--
signal Sim_ClkIn	: std_logic;
signal Sim_EnaIn	: std_logic;
signal Sim_RstIn	: std_logic;
signal Sim_DatIn	: std_logic_vector((32/Sim_C_AdcWireInt)-1 downto 0);
signal Sim_ClkOut	: std_logic;
signal Sim_RstOut	: std_logic;
signal Sim_EnaOut	: std_logic;
signal Sim_DatOut	: std_logic_vector((32/Sim_C_AdcWireInt)-1 downto 0);
signal Sim_Flags	: std_logic_vector(3 downto 0);
signal Sim_Full     : std_logic;
signal Sim_Empty    : std_logic;
-----------------------------------------------------------------------------------------------
begin
--
UUT : AdcMem
	generic map (
		C_AdcWireInt 	=>  Sim_C_AdcWireInt
	)
    port map (
        ClkIn	=> Sim_ClkIn,
        EnaIn	=> Sim_EnaIn,
        RstIn	=> Sim_RstIn,
        DatIn	=> Sim_DatIn,
        ClkOut	=> Sim_ClkOut,
        RstOut	=> Sim_RstOut,
        EnaOut	=> Sim_EnaOut,
        DatOut	=> Sim_DatOut,
        Flags	=> Sim_Flags,
        Full    => Sim_Full,
        Empty   => Sim_Empty
    );
--
DTU : AdcMem_Tester
	generic map (
        C_ClockPeriod   => Sim_C_ClockPeriod, --
        C_WrPhase       => Sim_C_WrPhase, --
        C_RdPhase       => Sim_C_RdPhase, --
        C_StimVecFile   => Sim_C_StimVecFile, --
		C_AdcWireInt	=> Sim_C_AdcWireInt --
	)
    port map (
        ClkIn	=> Sim_ClkIn,
        EnaIn	=> Sim_EnaIn,
        RstIn	=> Sim_RstIn,
        DatIn	=> Sim_DatIn,
        ClkOut	=> Sim_ClkOut,
        RstOut	=> Sim_RstOut,
        EnaOut	=> Sim_EnaOut,
        DatOut	=> Sim_DatOut,
        Flags	=> Sim_Flags,
        Full    => Sim_Full,
        Empty   => Sim_Empty
    );
------------------------------------------------------------------------------
end  AdcMem_Testbench_struct;
--
