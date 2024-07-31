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
--  \   \        		Filename:            AdcFrame_Toplevel_Testbench.vhd
--  /   /        		Date Created:        05 April, 2011
-- /___/   /\    		Date Last Modified:  05 April, 2011
-- \   \  /  \
--  \___\/\___\
--
-- Device:      Virtex-6
-- Author:      defossez
-- Entity Name: AdcFrame_Toplevel_Testbench
-- Purpose: 	Test Bench for design.
-- Tools:		ISE_13.1
-- Limitations: TESTBENCH
--                       DON'T USE THIS FILE FOR COMPILATION NOR INTEGRATION.
--
-- Revision History:
--	Rev. 25 MAy 18
--      Add extra explication text to this file.
--      View the signals declaration area in this file.
---------------------------------------------------------------------------------------------
library IEEE;
    use IEEE.std_logic_1164.all;
    use IEEE.std_logic_UNSIGNED.all;
    use STD.textio.all;
library UNISIM;
    use UNISIM.vcomponents.all;
--
entity AdcFrame_Toplevel_Testbench is
-- Declarations
end AdcFrame_Toplevel_Testbench;
--
architecture AdcFrame_Toplevel_Testbench_struct of AdcFrame_Toplevel_Testbench is
---------------------------------------------------------------------------------------------
-- Component Instantiation
---------------------------------------------------------------------------------------------
component AdcFrame_Toplevel
    generic (
        C_AdcBits           : integer;
        C_AdcWireInt        : integer;
        C_FrmPattern        : string;
        C_OnChipLvdsTerm    : integer
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
end component AdcFrame_Toplevel;
--
component AdcFrame_Toplevel_Tester
    generic (
        C_ClockPeriod       : time;
        C_WaitBeforeStart   : integer;
        C_AdcBits           : integer;
        C_AdcWireInt        : integer;
        C_FrmPattern        : string;
        C_OnChipLvdsTerm    : integer
    );
    port (
        FrmClk_n_pin        : out std_logic;     -- input n from IBUFDS_DIFF_OUT
        FrmClk_p_pin        : out std_logic;     -- input p from IBUFDS_DIFF_OUT
        FrmClkRst_pin       : out std_logic;
        FrmClkEna_pin       : out std_logic;
        FrmClk_pin          : out std_logic;
        FrmClkDiv_pin       : out std_logic;
        FrmClkDone_pin      : out std_logic;     -- Input from clock syncronisation.
        FrmClkReSync_pin    : out std_logic;
        FrmClkBitSlip_p_pin : in std_logic;
        FrmClkBitSlip_n_pin : in std_logic;
        FrmClkSwapMux_pin   : in std_logic;
        FrmClkMsbRegEna_pin : in std_logic;
        FrmClkLsbRegEna_pin : in std_logic;
        FrmClkReSyncOut_pin : in std_logic;
        FrmClkDat_pin       : in std_logic_vector(15 downto 0);
        FrmClkSyncWarn_pin  : in std_logic
    );
end component AdcFrame_Toplevel_Tester;
---------------------------------------------------------------------------------------------
-- Signal Declarations
---------------------------------------------------------------------------------------------
-- Simulating this part of the design provides results for the ADC FRAME signal treatment.
-- The simulation can be done using 1-wire or 2-wire setup.
--
-- Clock period of the CLK or bit clock.
constant Sim_C_ClockPeriod      : time := 2 ns;
-- Amount of 1/2 clock cycles to wait before starting the generation of the frame clock.
-- For a 2-wire interface the min value = 8
-- For a 1-wire interface the min value = 4
constant Sim_C_WaitBeforeStart  : integer := 10;
--
constant Sim_C_AdcBits          : integer := 16;
constant Sim_C_AdcWireInt       : integer := 2; -- 2-wire
--constant Sim_C_AdcWireInt       : integer := 1; -- 1-wire
constant Sim_C_FrmPattern       : string := "0000000011110000"; -- 2-wire pattern.
--constant Sim_C_FrmPattern       : string := "1111111100000000"; -- 1-wire pattern.
-- A 16-bit resolution is typically provided in 2-wire mode.
-- Meaning two LVDS channels are used to carry the data of a single ADC channel.
--  Some 14-bit ADCs placed in 2-wire mode also provides 16-bit data over two data channels.
--  In that case one of the channels contains two LSB or MSM dummy bits or each of the two
--  LVDS channels get one LSB or MSB dummy bit.
-- Assume, as in the default simulation settings (above).
-- ADC resolution 16-bit and interface in 2-wire mode.
-- The FRAME CLOCK channel, in the interface used as synchronization data channel, will be
-- only 8-bit wide. The interface looks as:
--       ┌────┐    ┌────┐    ┌────┐    ┌────┐    ┌────┐    ┌────┐    ┌────┐    ┌────┐    ┌─
-- Clk   ┘    └────┘    └────┘    └────┘    └────┘    └────┘    └────┘    └────┘    └────┘
--                 ┌───────────────────┐                   ┌───────────────────┐
-- ClkDiv──────────┘                   └───────────────────┘                   └────────────
--            0    1    1    1    1    0    0    0    0    1    1    1    1    0    0
--               ┌───────────────────┐                   ┌───────────────────┐
-- FrameClk    ──┘                   └───────────────────┘                   └─────────────
-- In 2-wire mode de frame clock has a "11110000" pattern.
-- For 1-wire on the other hand the frame clock has a pattern as: "11111111000000000".
--
-- ADC provide thus data, frame clock and bit clock.
-- All interfaces provide data and frame clock phase aligned and the bit clock 90-degrees
-- shifted to data and frame clock. Also, all ADC device provide a high or low frame clock
-- level with 90-degrees shifted rising edge of teh bit clock. As pictured above.
-- The interface in the 7-Seies device is setup to respond to this scheme of operation.
--
constant Sim_C_OnChipLvdsTerm   : integer := 1;
--
signal Sim_FrmClk_n_pin        : std_logic;
signal Sim_FrmClk_p_pin        : std_logic;
signal Sim_FrmClkRst_pin       : std_logic;
signal Sim_FrmClkEna_pin       : std_logic;
signal Sim_FrmClk_pin          : std_logic;
signal Sim_FrmClkDiv_pin       : std_logic;
signal Sim_FrmClkDone_pin      : std_logic;
signal Sim_FrmClkReSync_pin    : std_logic;
signal Sim_FrmClkBitSlip_p_pin : std_logic;
signal Sim_FrmClkBitSlip_n_pin : std_logic;
signal Sim_FrmClkSwapMux_pin   : std_logic;
signal Sim_FrmClkMsbRegEna_pin : std_logic;
signal Sim_FrmClkLsbRegEna_pin : std_logic;
signal Sim_FrmClkReSyncOut_pin : std_logic;
signal Sim_FrmClkDat_pin       : std_logic_vector(15 downto 0);
signal Sim_FrmClkSyncWarn_pin  : std_logic;
---------------------------------------------------------------------------------------------
begin
--
UUT : AdcFrame_Toplevel
    generic map (
        C_AdcBits           => Sim_C_AdcBits, --
        C_AdcWireInt        => Sim_C_AdcWireInt, --
        C_FrmPattern        => Sim_C_FrmPattern, --
        C_OnChipLvdsTerm    => Sim_C_OnChipLvdsTerm --
    )
    port map (
        FrmClk_n_pin        => Sim_FrmClk_n_pin, -- in
        FrmClk_p_pin        => Sim_FrmClk_p_pin, -- in
        FrmClkRst_pin       => Sim_FrmClkRst_pin, -- in
        FrmClkEna_pin       => Sim_FrmClkEna_pin, -- in
        FrmClk_pin          => Sim_FrmClk_pin, -- in
        FrmClkDiv_pin       => Sim_FrmClkDiv_pin, -- in
        FrmClkDone_pin      => Sim_FrmClkDone_pin, -- in
        FrmClkReSync_pin    => Sim_FrmClkReSync_pin, -- in
        FrmClkBitSlip_p_pin => Sim_FrmClkBitSlip_p_pin, -- out
        FrmClkBitSlip_n_pin => Sim_FrmClkBitSlip_n_pin, -- out
        FrmClkSwapMux_pin   => Sim_FrmClkSwapMux_pin, -- out
        FrmClkMsbRegEna_pin => Sim_FrmClkMsbRegEna_pin, -- out
        FrmClkLsbRegEna_pin => Sim_FrmClkLsbRegEna_pin, -- out
        FrmClkReSyncOut_pin => Sim_FrmClkReSyncOut_pin, -- out
        FrmClkDat_pin       => Sim_FrmClkDat_pin, -- out
        FrmClkSyncWarn_pin  => Sim_FrmClkSyncWarn_pin  -- out
    );
--
DTU : AdcFrame_Toplevel_Tester
    generic map (
        C_ClockPeriod       => Sim_C_ClockPeriod, --
        C_WaitBeforeStart   => Sim_C_WaitBeforeStart, --
        C_AdcBits           => Sim_C_AdcBits, --
        C_AdcWireInt        => Sim_C_AdcWireInt, --
        C_FrmPattern        => Sim_C_FrmPattern, --
        C_OnChipLvdsTerm    => Sim_C_OnChipLvdsTerm --
    )
    port map (
        FrmClk_n_pin        => Sim_FrmClk_n_pin, -- out
        FrmClk_p_pin        => Sim_FrmClk_p_pin, -- out
        FrmClkRst_pin       => Sim_FrmClkRst_pin, -- out
        FrmClkEna_pin       => Sim_FrmClkEna_pin, -- out
        FrmClk_pin          => Sim_FrmClk_pin, -- out
        FrmClkDiv_pin       => Sim_FrmClkDiv_pin, -- out
        FrmClkDone_pin      => Sim_FrmClkDone_pin, -- out
        FrmClkReSync_pin    => Sim_FrmClkReSync_pin, -- out
        FrmClkBitSlip_p_pin => Sim_FrmClkBitSlip_p_pin, -- in
        FrmClkBitSlip_n_pin => Sim_FrmClkBitSlip_n_pin, -- in
        FrmClkSwapMux_pin   => Sim_FrmClkSwapMux_pin, -- in
        FrmClkMsbRegEna_pin => Sim_FrmClkMsbRegEna_pin, -- in
        FrmClkLsbRegEna_pin => Sim_FrmClkLsbRegEna_pin, -- in
        FrmClkReSyncOut_pin => Sim_FrmClkReSyncOut_pin, -- in
        FrmClkDat_pin       => Sim_FrmClkDat_pin, -- in
        FrmClkSyncWarn_pin  => Sim_FrmClkSyncWarn_pin  -- in
    );
--
-------------------------------------------------------------------------------------------
end AdcFrame_Toplevel_Testbench_struct;
