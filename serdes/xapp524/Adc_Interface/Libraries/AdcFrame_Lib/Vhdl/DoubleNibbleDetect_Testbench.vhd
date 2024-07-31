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
--  \   \        		Filename:            DoubleNibbleDetect_Testbench.vhd
--  /   /        		Date Created:        16 March, 2011
-- /___/   /\    		Date Last Modified:  16 March, 2011
-- \   \  /  \
--  \___\/\___\
--
-- Device:      Virtex-6
-- Author:      defossez
-- Entity Name: DoubleNibbleDetect_Testbench
-- Purpose: 	Test Bench for design.
-- Tools:		ISE_13.1
-- Limitations: TESTBENCH
--                       DON'T USE THIS FILE FOR COMPILATION NOR INTEGRATION.
--
-- Revision History:
--	Rev.
--
---------------------------------------------------------------------------------------------
library IEEE;
    use IEEE.std_logic_1164.all;
    use IEEE.std_logic_UNSIGNED.all;
    use STD.textio.all;
library UNISIM;
    use UNISIM.vcomponents.all;
--
entity DoubleNibbleDetect_Testbench is
-- Declarations
end DoubleNibbleDetect_Testbench;
--
architecture DoubleNibbleDetect_Testbench_struct of DoubleNibbleDetect_Testbench is
---------------------------------------------------------------------------------------------
-- Component Instantiation
---------------------------------------------------------------------------------------------
component DoubleNibbleDetect
    generic (
        C_AdcBits : integer -- 16 or 12, 16 includes 14 bits
    );
    port (
        Clock   : in std_logic;
        RstIn   : in std_logic;
        Final   : out std_logic;
        DataIn  : in std_logic_vector(3 downto 0);
        DataOut : out std_logic_vector(3 downto 0)
    );
end component DoubleNibbleDetect;
--
component DoubleNibbleDetect_Tester
    generic (
        C_StimVecFile : string;
        C_ClockPeriod : time
    );
    port (
        Clock   : out std_logic;
        RstIn   : out std_logic;
        Final   : in std_logic;
        DataIn  : out std_logic_vector(3 downto 0);
        DataOut : in std_logic_vector(3 downto 0)
    );
end component DoubleNibbleDetect_Tester;
---------------------------------------------------------------------------------------------
-- Signal Declarations
---------------------------------------------------------------------------------------------
constant Sim_C_StimVecFile  : string    := "../Vhdl/DoubleNibbleDetectRead_Vec.txt";
constant Sim_C_ClockPeriod  : time      := 8 ns;
constant Sim_C_AdcBits      : integer   := 16;
--
signal Sim_Clock   : std_logic;
signal Sim_RstIn   : std_logic;
signal Sim_Final   : std_logic;
signal Sim_DataOut : std_logic_vector(3 downto 0);
signal Sim_DataIn  : std_logic_vector(3 downto 0);
---------------------------------------------------------------------------------------------
begin
--
UUT : DoubleNibbleDetect
    generic map (
        C_AdcBits => Sim_C_AdcBits
    )
    port map (
        Clock   => Sim_Clock, -- in
        RstIn   => Sim_RstIn, -- in
        Final   => Sim_Final,
        DataIn  => Sim_DataIn,
        DataOut => Sim_DataOut
    );
--
DTU : DoubleNibbleDetect_Tester
    generic map (
        C_StimVecFile => Sim_C_StimVecFile,
        C_ClockPeriod => Sim_C_ClockPeriod
    )
    port map (
        Clock   => Sim_Clock, -- out
        RstIn   => Sim_RstIn, -- out
        Final   => Sim_Final,
        DataIn  => Sim_DataIn,
        DataOut => Sim_DataOut
    );
--
-------------------------------------------------------------------------------------------
end DoubleNibbleDetect_Testbench_struct;
