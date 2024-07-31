-----------------------------------------------------------------------------------------------
-- � Copyright 2009 - 2009, Xilinx, Inc. All rights reserved.
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
--  \   \        Filename:              AdcBulkMem_36b_Testbench.vhd
--  /   /        Date Last Modified:    Thursday, February 15 2018
-- /___/   /\    Date Created:  		Tuesday, July 14, 2009
-- \   \  /  \
--  \___\/\___\
--
-- Device: 		Virtex-6, 7-Series
-- Entity Name: AdcBulkMem_36b_Testbench
-- Purpose: 	Test Bench for design.
-- Tools:		QuestaSim_10.5d or later
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
entity AdcBulkMem_36b_Testbench is
     -- generic / port / local declatations
end entity AdcBulkMem_36b_Testbench;
--
architecture AdcBulkMem_36b_Testbench_struct of AdcBulkMem_36b_Testbench is
-----------------------------------------------------------------------------------------------
-- Component Instantiation
-----------------------------------------------------------------------------------------------
component AdcBulkMem_36b
	port (
		Mem_ClkIn	: in std_logic;
		Mem_EnaIn	: in std_logic;
		Mem_RstIn	: in std_logic;
		Mem_DataIn	: in std_logic_vector(35 downto 0);
		Mem_ClkOut	: in std_logic;
		Mem_EnaOut	: in std_logic;
		Mem_RstOut	: in std_logic;
		Mem_DataOut	: out std_logic_vector(8 downto 0);
		Empty		: out std_logic;
		Middle		: out std_logic;
		Full		: out std_logic
	);
end component;
--
component AdcBulkMem_36b_Tester
    generic (
        C_DataInVecFile     : string;
        C_DataOutVecFile    : string;
        C_WriteClockPeriod  : time;
        C_ReadClockPeriod   : time
    );
	port (
		Mem_ClkIn	: out std_logic;
		Mem_EnaIn	: out std_logic;
		Mem_RstIn	: out std_logic;
		Mem_DataIn	: out std_logic_vector(35 downto 0);
		Mem_ClkOut	: out std_logic;
		Mem_EnaOut	: out std_logic;
		Mem_RstOut	: out std_logic;
		Mem_DataOut	: in std_logic_vector(8 downto 0);
		Empty		: in std_logic;
		Middle		: in std_logic;
		Full		: in std_logic
	);
end component;
-----------------------------------------------------------------------------------------------
-- SImulation function
-----------------------------------------------------------------------------------------------
-- The ..._Tester file enables teh Block-RAM for writing.
-- Reads data from a "DataVecIn.txt" file and writes that data in the memory.
-- It writes the memory until the 'Full' flags goes high and then stops writing.
-- After a small delay the .._Tester file starts reading from the Block-RAM memory.
-- The data it reads is writting in a file on disk, DataVecOut.txt.
-- It reads until the empty flag goes high.
-- Waits for a small delay and starts the process of writing again.
-- Open the ./Documents/AdcBulkMem_36b_SimulationWaves.png file for a screensht of the
-- waveforms.
-----------------------------------------------------------------------------------------------
-- Signal and constants Declarations
-----------------------------------------------------------------------------------------------
constant Sim_C_DataInVecFile    : string := "../Vhdl/DataVecIn.txt";
constant Sim_C_DataOutVecFile   : string := "../Vhdl/DataVecOut.txt";
constant Sim_C_WriteClockPeriod : time := 4 ns;
constant Sim_C_ReadClockPeriod  : time := 10 ns;
--
signal Sim_Mem_ClkIn	: std_logic;
signal Sim_Mem_EnaIn	: std_logic;
signal Sim_Mem_RstIn	: std_logic;
signal Sim_Mem_DataIn	: std_logic_vector(35 downto 0);
signal Sim_Mem_ClkOut	: std_logic;
signal Sim_Mem_EnaOut	: std_logic;
signal Sim_Mem_RstOut	: std_logic;
signal Sim_Mem_DataOut	: std_logic_vector(8 downto 0);
signal Sim_Empty		: std_logic;
signal Sim_Middle		: std_logic;
signal Sim_Full			: std_logic;
-----------------------------------------------------------------------------------------------
--
begin
UUT : AdcBulkMem_36b
	port map (
		Mem_ClkIn	=> Sim_Mem_ClkIn,	-- in
		Mem_EnaIn	=> Sim_Mem_EnaIn,	-- in
		Mem_RstIn	=> Sim_Mem_RstIn,	-- in
		Mem_DataIn	=> Sim_Mem_DataIn,	-- in
		Mem_ClkOut	=> Sim_Mem_ClkOut,	-- in
		Mem_EnaOut	=> Sim_Mem_EnaOut,	-- in
		Mem_RstOut	=> Sim_Mem_RstOut,	-- in
		Mem_DataOut	=> Sim_Mem_DataOut,	-- out
		Empty		=> Sim_Empty,		-- out
		Middle		=> Sim_Middle,		-- out
		Full		=> Sim_Full			-- out
	);
--
DTU : AdcBulkMem_36b_Tester
    generic map (
        C_DataInVecFile     => Sim_C_DataInVecFile,
        C_DataOutVecFile    => Sim_C_DataOutVecFile,
        C_WriteClockPeriod  => Sim_C_WriteClockPeriod,
        C_ReadClockPeriod   => Sim_C_ReadClockPeriod
    )
	port map (
		Mem_ClkIn	=> Sim_Mem_ClkIn,	-- out
		Mem_EnaIn	=> Sim_Mem_EnaIn,	-- out
		Mem_RstIn	=> Sim_Mem_RstIn,	-- out
		Mem_DataIn	=> Sim_Mem_DataIn,	-- out
		Mem_ClkOut	=> Sim_Mem_ClkOut,	-- out
		Mem_EnaOut	=> Sim_Mem_EnaOut,	-- out
		Mem_RstOut	=> Sim_Mem_RstOut,	-- out
		Mem_DataOut	=> Sim_Mem_DataOut,	-- in
		Empty		=> Sim_Empty,		-- in
		Middle		=> Sim_Middle,		-- in
		Full		=> Sim_Full			-- in
	);
--
-----------------------------------------------------------------------------------------------
end architecture AdcBulkMem_36b_Testbench_struct;
--
