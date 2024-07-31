---------------------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /
-- \   \   \/    � Copyright 2016 - 2018 Xilinx, Inc. All rights reserved.
--  \   \        This file contains confidential and proprietary information of Xilinx, Inc.
--  /   /        and is protected under U.S. and international copyright and other
-- /___/   /\    intellectual property laws.
-- \   \  /  \
--  \___\/\___\
--
---------------------------------------------------------------------------------------------
-- Device:               Virtex-6, 7-series.
-- Author:               Defossez
-- Entity Name:          AdcToplevel_Testbench
-- Purpose:              Create a test bench for an ADC interface..
-- Tools:		         QuestaSim_10.5d or later
-- Limitations: TESTBENCH
--                       DON'T USE THIS FILE FOR COMPILATION NOR INTEGRATION.
-- Vendor:              xilinx
-- Version:             1.2
-- Filename:            AdcToplevel_Testbench.Vhd
-- Date created:        Nov 2007
-- Date last modified:  Feb 2018
--
-- Revision History:
--	Rev. 07 Mar 11
--      Added the possibility to use the test bench in 1-wire and 2-wire mode.
--      For switching between the two please read the "ReadMe_Frst_ForSimulation.txt"
--      document in the ..\Simscripts directory.
--  Rev. 01 Feb 2018
--      Bring the simulation up to date for Questasim_10.5d and Vivado_2017.4.
--      Add extra explication to the file.
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
--		Contact:    e-mail  hotline@xilinx.com        phone   + 1 800 255 7778
---------------------------------------------------------------------------------------------
library IEEE;
    use IEEE.std_logic_1164.all;
    use IEEE.std_logic_UNSIGNED.all;
    use STD.textio.all;
library UNISIM;
    use UNISIM.vcomponents.all;
--
entity AdcToplevel_Testbench is
-- Declarations
end AdcToplevel_Testbench;
--
architecture AdcToplevel_Testbench_struct of AdcToplevel_Testbench is
---------------------------------------------------------------------------------------------
-- Component Instantiation
---------------------------------------------------------------------------------------------
--
component AdcToplevel
    generic (
        C_AdcChnls          : integer;
        C_AdcWireInt        : integer;
        C_BufioLoc          : string;
        C_BufrLoc           : string;
        C_AdcBits           : integer;
        C_StatTaps          : integer;
        C_AdcUseIdlyCtrl    : integer;
        C_AdcIdlyCtrlLoc    : string;
        C_FrmPattern        : string
    );
    port (
        DCLK_p          : in std_logic;
        DCLK_n          : in std_logic;
        FCLK_p          : in std_logic;
        FCLK_n          : in std_logic;
        DATA_p          : in std_logic_vector((C_AdcChnls*C_AdcWireInt)-1 downto 0);
        DATA_n          : in std_logic_vector((C_AdcChnls*C_AdcWireInt)-1 downto 0);
        -- application connections
        SysRefClk       : in std_logic;
        AdcIntrfcRst    : in std_logic;
        AdcIntrfcEna    : in std_logic;
        AdcReSync       : in std_logic;
        AdcFrmSyncWrn   : out std_logic;
        AdcBitClkAlgnWrn: out std_logic;
        AdcBitClkInvrtd : out std_logic;
        AdcBitClkDone   : out std_logic;
        AdcIdlyCtrlRdy  : out std_logic;
        -- Data from the frame clock
        AdcFrmDataOut   : out std_logic_vector(15 downto 0);
        -- ADC memory data output
        AdcMemDataOut   : out std_logic_vector(((32/C_AdcWireInt)*((C_AdcChnls/2)*C_AdcWireInt))-1 downto 0);
        AdcMemClk       : in std_logic;
        AdcMemRst       : in std_logic;
        AdcMemEna       : in std_logic;
        AdcMemFlags     : out std_logic_vector((4*(C_AdcChnls/2)*C_AdcWireInt)-1 downto 0);
        AdcMemFull      : out std_logic_vector(((C_AdcChnls/2)*C_AdcWireInt)-1 downto 0);
        AdcMemEmpty     : out std_logic_vector(((C_AdcChnls/2)*C_AdcWireInt)-1 downto 0)
    );
end component AdcToplevel;
--
component AdcToplevel_Tester
    port (
        PDNB            : out std_logic;
        PDNA            : out std_logic;
        CFG1            : out std_logic_vector(1 downto 0);
        CFG2            : out std_logic_vector(1 downto 0);
        CFG3            : out std_logic;
        CFG4            : out std_logic_vector(1 downto 0);
        SEN             : out std_logic;
        SCLK            : out std_logic;
        SDATA           : out std_logic;
        RESET           : out std_logic;
        POWERON         : out std_logic;
        SysRefClk       : out std_logic;
        AdcMemClk       : out std_logic;
        AdcIntrfcRst    : out std_logic;
        AdcIntrfcEna    : out std_logic;
        AdcReSync       : out std_logic;
        AdcMemRst       : out std_logic;
        AdcMemEna       : out std_logic
    );
end component AdcToplevel_Tester;
--
component AdcToplevel_Checker
    generic (
        C_CheckVecFile      : string;
        C_AdcUseIdlyCtrl    : integer;
        C_AdcIdlyCtrlLoc    : string;
        C_AdcChnls          : integer;
        C_AdcWireInt        : integer;
        C_AdcBits           : integer
    );
    port (
        AdcMemClk       : in std_logic;
        AdcFrmSyncWrn   : in std_logic;
        AdcBitClkAlgnWrn: in std_logic;
        AdcBitClkInvrtd : in std_logic;
        AdcBitClkDone   : in std_logic;
        AdcIdlyCtrlRdy  : in std_logic;
        AdcFrmDataOut   : in std_logic_vector(15 downto 0);
        AdcMemDataOut   : in std_logic_vector(((32/C_AdcWireInt)*((C_AdcChnls/2)*C_AdcWireInt))-1 downto 0);
        AdcMemFlags     : in std_logic_vector((4*(C_AdcChnls/2)*C_AdcWireInt)-1 downto 0);
        AdcMemFull      : in std_logic_vector(((C_AdcChnls/2)*C_AdcWireInt)-1 downto 0);
        AdcMemEmpty     : in std_logic_vector(((C_AdcChnls/2)*C_AdcWireInt)-1 downto 0)
    );
end component AdcToplevel_Checker;
--
component Ads6445_Tester
    generic (
        C_ClockPeriod        : time;
        C_Ads6445DataVecFile : string;
        C_Ads6445TestVecFile : string
    );
    port (
        DCLK_p          : out std_logic;
        DCLK_n          : out std_logic;
        FCLK_p          : out std_logic;
        FCLK_n          : out std_logic;
        DATA_A0p        : out std_logic;
        DATA_A0n        : out std_logic;
        DATA_A1p        : out std_logic;
        DATA_A1n        : out std_logic;
        DATA_B0p        : out std_logic;
        DATA_B0n        : out std_logic;
        DATA_B1p        : out std_logic;
        DATA_B1n        : out std_logic;
        PDNB            : in std_logic;
        PDNA            : in std_logic;
        CFG1            : in std_logic_vector(1 downto 0);
        CFG2            : in std_logic_vector(1 downto 0);
        CFG3            : in std_logic;
        CFG4            : in std_logic_vector(1 downto 0);
        SEN             : in std_logic;
        SDATA           : in std_logic;
        SCLK            : in std_logic;
        RESET           : in std_logic;
        POWERON         : in std_logic
    );
end component Ads6445_Tester;
---------------------------------------------------------------------------------------------
-- Test bench documentation / explication
---------------------------------------------------------------------------------------------
-- Setup picture
--    AdcToplevel          Ads6445          AdcToplevel      AdcToplevel
--    _Tester              _Tester                           _Checker
--  ┌──────────┐        ┌──────────┐        ┌──────────┐    ┌──────────┐
--  │          │        │          │        │          │    │          │
--  │          │        │          │        │          │    │          │
--  │          ╞════════╡          ╞════════╡          ╞════╡          │
--  │          │        │          │        │          │    │          │
--  │          │        │          │        │          │    │          │
--  │          │        └──────────┘        │          │    │          │
--  │          │                            │          │    │          │
--  │          ╞════════════════════════════╡          │    │          │
--  │          │                            │          │    │          │
--  └──────────┘                            └──────────┘    └──────────┘
--
-- Descriptions of the adaptable constants:
-- C_AdcIdlyCtrlLoc     -- Defines the place where the IDELAYCONTRL primitive must be dropped.
-- C_BufioLo            -- Fix the BUFIO in this location.
-- C_BufioLo            -- Fix the BUFR in this location.
-- The aboven constraints are for the implementation of the design than for simulation.
-- SInce these are in the code for the design they must be provided.
-- Make sure that at implementation Clock buffers, delay control and all other primitives
-- used in the design are nicely dropped close to each other in the same IO-Bank.
-- C_StatTaps           -- Used by the clock tuning, ./Libraries/AdcClock_Lib_Vhdl/AdcClock.vhd,
--                      -- Start number of taps of the IDELAY used in this hierarchical level.
-- C_AdcChnls           -- ADC Channels available in a package.
-- C_AdcBits            -- Value can be 12, 14, or 16 (14 is means 14-bit burried in 16-bit)
-- C_AdcWireInt         -- 0 = 1-wire, 1 = 2-wire
-- C_FrmPattern         -- Pattern to lock the frame to.
--     A 14 or 16 bit ADC in 2-wire mode has a 8-bit frame pattern. The C_FrmPattern parameter
--     must be set to:  C_FrmPattern ==> "0000000011110000".
--     A 14 or 16 bit ADC in 1-wire mode has a 16-bit frame pattern. The C_FrmPattern parameter
--     must be set to:  C_FrmPattern ==> "1111111100000000".
--     The same applies for a 12-bit ADC device.
--          C_FrmPattern        : string    := "111111000000";      -- 1-wire, 12 bit.
--          C_FrmPattern        : string    := "000000111000";      -- 2-wire, 12 bit.
-- C_CheckVecFile       -- Used by the AdcToplevel_Checker.vhd simulation file.
--                      -- This is the location used by the checker to write resulyts
--                      -- into a file.
---------------------------------------------------------------------------------------------
-- Constants and  Signal Declarations
---------------------------------------------------------------------------------------------
-- This is teh sample frequency of the ADC.
--  8 ns is teh max sample frequency for an ADS6445 device.
-- This timing is used to generate the DCLK output clock of the ADS6445_Tester.
--  An internal, to the tester, DCLK clock is used/generated to output data channels
--  and frame clock.
constant Sim_C_ClockPeriod      : time := 8 ns;
-- The simulation version of the ADC will transmit the test vectors in this file.
-- "AdcRead_Vec.txt" is a vector file with random data.
-- "AdcReadCnst_x_Vec.txt", with x = 1 or 2 are constant value test vector files. 
constant Sim_C_Ads6445DataVecFile : string := "../Vhdl/SimSrcRsltsTxtFiles/AdcRead_Vec.txt";
-- constant Sim_C_Ads6445DataVecFile : string := "../Vhdl/SimSrcRsltsTxtFiles/AdcReadCnst_1_Vec.txt";
-- constant Sim_C_Ads6445DataVecFile : string := "../Vhdl/SimSrcRsltsTxtFiles/AdcReadCnst_2_Vec.txt";
--
-- This file is written by this test bench (Ads6445_Testbench and Ads6445_Tester) and
-- contains the bits the simulation ADC transmits. This as check of the data coming out 
-- of the simulation interface being fed into the design interface.
constant Sim_C_Ads6445TestVecFile : string := "../Vhdl/SimSrcRsltsTxtFiles/AdcOutVec.txt";
--
-- Below file is written by the AdcToplevel_Checker.
constant sim_C_CheckVecFile      : string    := "../Vhdl/SimSrcRsltsTxtFiles/AdcInVec.txt";
constant Sim_C_AdcIdlyCtrlLoc    : string    := "IDELAYCTRL_X0Y3";
constant Sim_C_BufioLoc          : string    := "BUFIODQS_X0Y12";
constant Sim_C_BufrLoc           : string    := "BUFR_X0Y6";
constant Sim_C_StatTaps          : integer   := 16;
constant Sim_C_AdcChnls          : integer   := 2;
constant Sim_C_AdcWireInt        : integer   := 2;  --<--
constant Sim_C_AdcBits           : integer   := 16;
constant Sim_C_AdcUseIdlyCtrl    : integer   := 1;
constant Sim_C_FrmPattern        : string    := "0000000011110000"; --<--
constant Low                     : std_logic := '0';
constant High                    : std_logic := '1';
--
signal Sim_DCLK_p          : std_logic;
signal Sim_DCLK_n          : std_logic;
signal Sim_FCLK_p          : std_logic;
signal Sim_FCLK_n          : std_logic;
-- When changing from 2-wire to 1-wire the number of inputs halves.
-- in 2-wire mode each ADC outputs data over two LVDS channels while in 1-wire mode each ADC
-- uses one LVDS channel to output data. The outputs of the "Ads6445_Tester" components must
-- be adjusted. An example is shown at the pins of the "Ads6445_Tester" component.
signal Sim_DATA_p          : std_logic_vector((Sim_C_AdcChnls*Sim_C_AdcWireInt)-1 downto 0);
signal Sim_DATA_n          : std_logic_vector((Sim_C_AdcChnls*Sim_C_AdcWireInt)-1 downto 0);
signal Sim_SysRefClk       : std_logic;
signal Sim_AdcMemClk       : std_logic;
signal Sim_AdcIntrfcRst    : std_logic;
signal Sim_AdcIntrfcEna    : std_logic;
signal Sim_AdcReSync       : std_logic;
signal Sim_AdcFrmSyncWrn   : std_logic;
signal Sim_AdcBitClkAlgnWrn: std_logic;
signal Sim_AdcBitClkInvrtd : std_logic;
signal Sim_AdcBitClkDone   : std_logic;
signal Sim_AdcIdlyCtrlRdy  : std_logic;
signal Sim_AdcFrmDataOut   : std_logic_vector(15 downto 0);
signal Sim_AdcMemDataOut   : std_logic_vector(((32/Sim_C_AdcWireInt)*((Sim_C_AdcChnls/2)*Sim_C_AdcWireInt))-1 downto 0);
signal Sim_AdcMemRst       : std_logic;
signal Sim_AdcMemEna       : std_logic;
signal Sim_AdcMemFlags     : std_logic_vector((4*(Sim_C_AdcChnls/2)*Sim_C_AdcWireInt)-1 downto 0);
signal Sim_AdcMemFull      : std_logic_vector(((Sim_C_AdcChnls/2)*Sim_C_AdcWireInt)-1 downto 0);
signal Sim_AdcMemEmpty     : std_logic_vector(((Sim_C_AdcChnls/2)*Sim_C_AdcWireInt)-1 downto 0);
signal Sim_Pdna            : std_logic;
signal Sim_Pdnb            : std_logic;
signal Sim_Cfg1            : std_logic_vector(1 downto 0);
signal Sim_Cfg2            : std_logic_vector(1 downto 0);
signal Sim_Cfg3            : std_logic;
signal Sim_Cfg4            : std_logic_vector(1 downto 0);
signal Sim_Sen             : std_logic;
signal Sim_Sclk            : std_logic;
signal Sim_Sdata           : std_logic;
signal Sim_Reset           : std_logic;
signal Sim_PowerOn         : std_logic;
---------------------------------------------------------------------------------------------
begin
--
UUT : AdcToplevel
    generic map (
        C_BufioLoc          => Sim_C_BufioLoc,
        C_BufrLoc           => Sim_C_BufrLoc,
        C_StatTaps          => Sim_C_StatTaps,
        C_AdcUseIdlyCtrl    => Sim_C_AdcUseIdlyCtrl,
        C_AdcIdlyCtrlLoc    => Sim_C_AdcIdlyCtrlLoc,
        C_AdcChnls          => Sim_C_AdcChnls,
        C_AdcWireInt        => Sim_C_AdcWireInt,
        C_AdcBits           => Sim_C_AdcBits,
        C_FrmPattern        => Sim_C_FrmPattern
    )
    port map (
        DCLK_p           => Sim_DCLK_p,           -- in |
        DCLK_n           => Sim_DCLK_n,           -- in |
        FCLK_p           => Sim_FCLK_p,           -- in +-- From  Ads6445_Tester
        FCLK_n           => Sim_FCLK_n,           -- in +--
        DATA_p           => Sim_DATA_p,           -- in |
        DATA_n           => Sim_DATA_n,           -- in |
        SysRefClk        => Sim_SysRefClk,        -- in |
        AdcMemClk        => Sim_AdcMemClk,        -- in |
        AdcIntrfcRst     => Sim_AdcIntrfcRst,     -- in +- From AdcToplevel_Tester
        AdcIntrfcEna     => Sim_AdcIntrfcEna,     -- in |
        AdcReSync        => Sim_AdcReSync,        -- in |
        AdcFrmSyncWrn    => Sim_AdcFrmSyncWrn,    -- out
        AdcBitClkAlgnWrn => Sim_AdcBitClkAlgnWrn, -- out
        AdcBitClkInvrtd  => Sim_AdcBitClkInvrtd,  -- out
        AdcBitClkDone    => Sim_AdcBitClkDone,    -- out
        AdcIdlyCtrlRdy   => Sim_AdcIdlyCtrlRdy,   -- out
        AdcFrmDataOut    => Sim_AdcFrmDataOut,    -- out
        AdcMemDataOut    => Sim_AdcMemDataOut,    -- out
        AdcMemRst        => Sim_AdcMemRst,        -- in +- From AdcToplevel_Tester
        AdcMemEna        => Sim_AdcMemEna,        -- in |
        AdcMemFlags      => Sim_AdcMemFlags,      -- out
        AdcMemFull       => Sim_AdcMemFull,       -- out
        AdcMemEmpty      => Sim_AdcMemEmpty       -- out
    );
--
DTU : AdcToplevel_Tester
    port map (
        PDNB             => Sim_Pdna,             -- out
        PDNA             => Sim_Pdnb,             -- out
        CFG1             => Sim_Cfg1,             -- out
        CFG2             => Sim_Cfg2,             -- out
        CFG3             => Sim_Cfg3,             -- out
        CFG4             => Sim_Cfg4,             -- out
        SEN              => Sim_Sen,              -- out
        SCLK             => Sim_Sclk,             -- out
        SDATA            => Sim_Sdata,            -- out
        RESET            => Sim_Reset,            -- out
        POWERON          => Sim_PowerOn,          -- out
        SysRefClk        => Sim_SysRefClk,        -- out
        AdcMemClk        => Sim_AdcMemClk,        -- out
        AdcIntrfcRst     => Sim_AdcIntrfcRst,     -- out
        AdcIntrfcEna     => Sim_AdcIntrfcEna,     -- out
        AdcReSync        => Sim_AdcReSync,        -- out
        AdcMemRst        => Sim_AdcMemRst,        -- out
        AdcMemEna        => Sim_AdcMemEna         -- out
    );
--
DCU : AdcToplevel_Checker
    generic map (
        C_CheckVecFile   => Sim_C_CheckVecFile,   --
        C_AdcUseIdlyCtrl => Sim_C_AdcUseIdlyCtrl, --
        C_AdcIdlyCtrlLoc => Sim_C_AdcIdlyCtrlLoc, --
        C_AdcChnls       => Sim_C_AdcChnls,       --
        C_AdcWireInt     => Sim_C_AdcWireInt,     --
        C_AdcBits        => Sim_C_AdcBits         --
    )
    port map (
        AdcMemClk        => Sim_AdcMemClk,        -- in
        AdcFrmSyncWrn    => Sim_AdcFrmSyncWrn,    -- in
        AdcBitClkAlgnWrn => Sim_AdcBitClkAlgnWrn, -- in
        AdcBitClkInvrtd  => Sim_AdcBitClkInvrtd,  -- in
        AdcBitClkDone    => Sim_AdcBitClkDone,    -- in
        AdcIdlyCtrlRdy   => Sim_AdcIdlyCtrlRdy,   -- in
        AdcFrmDataOut    => Sim_AdcFrmDataOut,    -- in
        AdcMemDataOut    => Sim_AdcMemDataOut,    -- in
        AdcMemFlags      => Sim_AdcMemFlags,      -- in
        AdcMemFull       => Sim_AdcMemFull,       -- in
        AdcMemEmpty      => Sim_AdcMemEmpty       -- in
    );
--
ADC : Ads6445_Tester
    generic map (
        C_ClockPeriod        => Sim_C_ClockPeriod, --
        C_Ads6445DataVecFile => Sim_C_Ads6445DataVecFile, --
        C_Ads6445TestVecFile => Sim_C_Ads6445TestVecFile --
    )
    port map (
        DCLK_p          => Sim_DCLK_p,            -- out
        DCLK_n          => Sim_DCLK_n,            -- out
        FCLK_p          => Sim_FCLK_p,            -- out
        FCLK_n          => Sim_FCLK_n,            -- out
        DATA_A0p        => Sim_DATA_p(0),         -- out
        DATA_A0n        => Sim_DATA_n(0),         -- out
        DATA_A1p        => Sim_DATA_p(1),         -- out
        DATA_A1n        => Sim_DATA_n(1),         -- out
        DATA_B0p        => open,                  -- Sim_DATA_p(2), -- out
        DATA_B0n        => open,                  -- Sim_DATA_n(2), -- out
        DATA_B1p        => open,                  -- Sim_DATA_p(3), -- out
        DATA_B1n        => open,                  -- Sim_DATA_n(3), -- out
        PDNB            => Sim_Pdna,              -- in
        PDNA            => Sim_Pdnb,              -- in
        CFG1            => Sim_Cfg1,              -- in
        CFG2            => Sim_Cfg2,              -- in
        CFG3            => Sim_Cfg3,              -- in
        CFG4            => Sim_Cfg4,              -- in
        SEN             => Sim_Sen,               -- in
        SCLK            => Sim_Sclk,              -- in
        SDATA           => Sim_Sdata,             -- in
        RESET           => Sim_Reset,             -- in
        POWERON         => Sim_PowerOn            -- in
    );
--
-------------------------------------------------------------------------------------------
end AdcToplevel_Testbench_struct;
