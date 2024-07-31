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
--  \   \        		Filename:            AdcData_Testbench.vhd
--  /   /        		Date Created:        01 Aug, 2011
-- /___/   /\    		Date Last Modified:  17 Aug, 2011
-- \   \  /  \
--  \___\/\___\
--
-- Device:      Series-1 and Virtex-6
-- Author:      defossez
-- Entity Name: AdcData_Testbench
-- Purpose: 	Test Bench for design.
-- Tools:		ISE_13.2 and higher.
-- Limitations: TESTBENCH
--                       DON'T USE THIS FILE FOR COMPILATION NOR INTEGRATION.
--
-- Revision History:
--	Rev. 17 Aug 2011
--      Add a checker element to the setup.
--      the output of the simulation is now written to a file on disk.
--
---------------------------------------------------------------------------------------------
library IEEE;
    use IEEE.std_logic_1164.all;
    use IEEE.std_logic_UNSIGNED.all;
    use STD.textio.all;
library UNISIM;
    use UNISIM.vcomponents.all;
--
entity AdcData_Testbench is
-- Declarations
end AdcData_Testbench;
--
architecture AdcData_Testbench_struct of AdcData_Testbench is
---------------------------------------------------------------------------------------------
-- Component Instantiation
---------------------------------------------------------------------------------------------
component AdcData
    generic (
        C_AdcBits           : integer;
        C_AdcBytOrBitMode   : integer;
        C_AdcMsbOrLsbFst    : integer;
        C_AdcWireInt        : integer
    );
    port (
        DatD0_n         : in std_logic;
        DatD0_p         : in std_logic;
        DatD1_n         : in std_logic;
        DatD1_p         : in std_logic;
        DatClk          : in std_logic;
        DatClkDiv       : in std_logic;
        DatRst          : in std_logic;
        DatEna          : in std_logic;
        DatDone         : in std_logic;
        DatBitSlip_p    : in std_logic;
        DatBitSlip_n    : in std_logic;
        DatSwapMux      : in std_logic;
        DatMsbRegEna    : in std_logic;
        DatLsbRegEna    : in std_logic;
        DatReSync       : in std_logic;
        DatOut          : out std_logic_vector(31 downto 0)
    );
end component AdcData;
--
component AdcData_Tester
    generic (
        C_StimVecFile       : string;
        C_AdcWireInt        : integer;
        C_NumOfBitSlips     : integer;
        C_SwapBits          : std_logic;
        C_DoneHigh          : integer;
        C_SimClockPeriod    : time
    );
    port (
        DatD0_n         : out std_logic;
        DatD0_p         : out std_logic;
        DatD1_n         : out std_logic;
        DatD1_p         : out std_logic;
        DatClk          : out std_logic;
        DatClkDiv       : out std_logic;
        DatRst          : out std_logic;
        DatEna          : out std_logic;
        DatDone         : out std_logic;
        DatBitSlip_p    : out std_logic;
        DatBitSlip_n    : out std_logic;
        DatSwapMux      : out std_logic;
        DatMsbRegEna    : out std_logic;
        DatLsbRegEna    : out std_logic;
        DatReSync       : out std_logic;
        DatOut          : in std_logic_vector(31 downto 0)
    );
end component AdcData_Tester;
--
component AdcData_Checker
    generic (
        C_CheckVecFile      : string;
        C_AdcWireInt        : integer
    );
    port (
        DatD0_n         : in std_logic;
        DatD0_p         : in std_logic;
        DatD1_n         : in std_logic;
        DatD1_p         : in std_logic;
        DatClk          : in std_logic;
        DatClkDiv       : in std_Logic;
        DatRst          : in std_logic;
        DatEna          : in std_logic;
        DatDone         : in std_logic;
        DatOut          : in std_logic_vector(31 downto 0)
    );
end component AdcData_Checker;
---------------------------------------------------------------------------------------------
-- File use explication
---------------------------------------------------------------------------------------------
-- Used components:
-- AdcData  : this is the device under test (UUT). It is the data capture design of teh ADC
--            interface.
-- AdcData_Tester : This is teh file with teh stimuli for simulation of the design. The
--                  stimuli are read from a file "AdcData_Vec.txt".
-- AdcData_Checker : This is a VHDL file watching the simulation run. It records in a file
--                   The stimuli applied to the AdcData design and the results from the
--                   simulation run.
---------------------------------------------------------------------------------------------
-- Changable constants / attributes:
-- Sim_C_SimClockPeriod     :   Period os the by the AdcData_Tester generated clock.
-- Sim_C_CheckVecFile       : File used by the "AdcData_Checker" component.
--                            This file is used to store the results of the simulation run.
-- Sim_C_StimVecFile        : This file contains the test vectors the simulation will transmit
--                            "DataRead_Vec.txt" is a vector file with random data.
-- Sim_C_AdcBytOrBitMode    : Design used in byte or bit mode,
-- Sim_C__AdcMsbOrLsbFst    : What comes first, MSB or LSB bit.
-- Sim_C_AdcBits            : Resolution (12 04 16-bit).
-- Sim_C_NumberOfBitslips   : This value indicates the total number of bitslips the
--                            simulation is going to exectute before continuing.
-- Sim_C_SwapBits           : This value indicates if the simulation is going to indicate that
--                            a bitswap must be performed. 1 = swap (pull DatSwapMux high).
-- Sim_C_DoneHigh           : This value detemines when the DatDone pin is pulled high.
--                            DatDone is normally the indication that the frame synchronisation
--                            logic is done. This number is multiplied with the ClockPeriod to
--                            determine the time. The DatDone pin is then synchronized to
--                            DatClkDiv.
-- Sim_C_AdcWireInt         : 1-wire or 2-wire interface.
---------------------------------------------------------------------------------------------
-- Constants, Signals and Attributes Declarations
---------------------------------------------------------------------------------------------
-- constants
constant Sim_C_SimClockPeriod   : time      := 4 ns;
constant Sim_C_CheckVecFile     : string    := "../Vhdl/AdcDataCheck_Vec.txt";
constant Sim_C_StimVecFile      : string    := "../Vhdl/AdcData_Vec.txt";
constant Sim_C_AdcBits          : integer   := 16;
constant Sim_C_AdcBytOrBitMode  : integer   := 0;
constant Sim_C_AdcMsbOrLsbFst   : integer   := 0;
constant Sim_C_NumberOfBitslips : integer   := 6;
constant Sim_C_SwapBits         : std_logic := '1';
constant Sim_C_DoneHigh         : integer   := 31;
constant Sim_C_AdcWireInt       : integer   := 2;
-- signals
signal Sim_DatD0_n         : std_logic;
signal Sim_DatD0_p         : std_logic;
signal Sim_DatD1_n         : std_logic;
signal Sim_DatD1_p         : std_logic;
signal Sim_DatClk          : std_logic;
signal Sim_DatClkDiv       : std_logic;
signal Sim_DatRst          : std_logic;
signal Sim_DatEna          : std_logic;
signal Sim_DatDone         : std_logic;
signal Sim_DatBitSlip_p    : std_logic;
signal Sim_DatBitSlip_n    : std_logic;
signal Sim_DatSwapMux      : std_logic;
signal Sim_DatMsbRegEna    : std_logic;
signal Sim_DatLsbRegEna    : std_logic;
signal Sim_DatReSync       : std_logic;
signal Sim_DatOut          : std_logic_vector(31 downto 0);
---------------------------------------------------------------------------------------------
begin
--
UUT : AdcData
    generic map (
        C_AdcBits           => Sim_C_AdcBits,
        C_AdcBytOrBitMode   => Sim_C_AdcBytOrBitMode,
        C_AdcMsbOrLsbFst    => Sim_C_AdcMsbOrLsbFst,
        C_AdcWireInt        => Sim_C_AdcWireInt
    )
    port map (
        DatD0_n         => Sim_DatD0_n, -- in
        DatD0_p         => Sim_DatD0_p, -- in
        DatD1_n         => Sim_DatD1_n, -- in
        DatD1_p         => Sim_DatD1_p, -- in
        DatClk          => Sim_DatClk, -- in
        DatClkDiv       => Sim_DatClkDiv, -- in
        DatRst          => Sim_DatRst, -- in
        DatEna          => Sim_DatEna, -- in
        DatDone         => Sim_DatDone, -- in
        DatBitSlip_p    => Sim_DatBitSlip_p, -- in
        DatBitSlip_n    => Sim_DatBitSlip_n, -- in
        DatSwapMux      => Sim_DatSwapMux, -- in
        DatMsbRegEna    => Sim_DatMsbRegEna, -- in
        DatLsbRegEna    => Sim_DatLsbRegEna, -- in
        DatReSync       => Sim_DatReSync, -- in
        DatOut          => Sim_DatOut -- out [31:0]
    );
--
DTU : AdcData_Tester
    generic map (
        C_StimVecFile       => Sim_C_StimVecFile,
        C_AdcWireInt        => Sim_C_AdcWireInt,
        C_NumOfBitSlips     => Sim_C_NumberOfBitslips,
        C_SwapBits          => Sim_C_SwapBits,
        C_DoneHigh          => Sim_C_DoneHigh,
        C_SimClockPeriod    => Sim_C_SimClockPeriod
    )
    port map (
        DatD0_n         => Sim_DatD0_n, -- out
        DatD0_p         => Sim_DatD0_p, -- out
        DatD1_n         => Sim_DatD1_n, -- out
        DatD1_p         => Sim_DatD1_p, -- out
        DatClk          => Sim_DatClk, -- out
        DatClkDiv       => Sim_DatClkDiv, -- out
        DatRst          => Sim_DatRst, -- out
        DatEna          => Sim_DatEna, -- out
        DatDone         => Sim_DatDone, -- out
        DatBitSlip_p    => Sim_DatBitSlip_p, -- out
        DatBitSlip_n    => Sim_DatBitSlip_n, -- out
        DatSwapMux      => Sim_DatSwapMux, -- out
        DatMsbRegEna    => Sim_DatMsbRegEna, -- out
        DatLsbRegEna    => Sim_DatLsbRegEna, -- out
        DatReSync       => Sim_DatReSync, -- out
        DatOut          => Sim_DatOut -- in [31:0]
    );
--
DCU : AdcData_Checker
    generic map (
        C_CheckVecFile  => Sim_C_CheckVecFile,
        C_AdcWireInt    => Sim_C_AdcWireInt
     )
    port map (
        DatD0_n         => Sim_DatD0_n, -- in
        DatD0_p         => Sim_DatD0_p, -- in
        DatD1_n         => Sim_DatD1_n, -- in
        DatD1_p         => Sim_DatD1_p, -- in
        DatClk          => Sim_DatClk, -- in
        DatClkDiv       => Sim_DatClkDiv, -- in
        DatRst          => Sim_DatRst, -- in
        DatEna          => Sim_DatEna, -- in
        DatDone         => Sim_DatDone, -- in
        DatOut          => Sim_DatOut -- in [31:0]
    );
-------------------------------------------------------------------------------------------
end AdcData_Testbench_struct;
--
