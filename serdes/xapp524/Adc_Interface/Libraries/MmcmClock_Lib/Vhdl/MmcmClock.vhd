---------------------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /
-- \   \   \/    © Copyright 2012 Xilinx, Inc. All rights reserved.
--  \   \        This file contains confidential and proprietary information of Xilinx, Inc.
--  /   /        and is protected under U.S. and international copyright and other
-- /___/   /\    intellectual property laws.
-- \   \  /  \
--  \___\/\___\
--
---------------------------------------------------------------------------------------------
-- Device:              Series-7
-- Author:              defossez
-- Entity Name:         MmcmClock
-- Purpose:             Clock generation
--
-- MMCM frequency calculations
-- Input frequency: 100 MHz
-- Clock must serve an application for an ADC interface
-- Serial LVDS ADC interface of 2-channel, 16-bit and 100MSPS sample rate.
--      Serial clock is (16-bit * 100Msps)/2 = 800MHz
--      ISERDES are used in 8-bit mode and need a parallel clock of (800/4) = 200MHz
-- Component: Kintex -2
--        Fin_min     = 10 MHz
--        Fin_max     = 933 MHz
--        Fvco_min    = 600 MHz
--        Fvco_max    = 1440 MHz
--        Fout_min    = 4.69 Mhz
--        Fout_max    = 933 MHz
--        Fpfd_min    = 10 MHz
--        Fpfd_max    = 500 MHz(Bandwidth set to High or Optimized.)
--
--        Dmin = rndup Fin/Fpfd_max               => 1 <==
--        Dmax = Rnddwn Fin/Fpfd_min              => 2
--        Mmin = (rndup Fvco_min/Fin) * Dmin      => 6
--        Mmax = rnddwn ((Dmax * Fvco_max)/Fin)   => 72
--        Mideal = (Dmin * Fvco_max) / Fin        => 14.4 <==
--              Fvco must be maximized for best functioning of the VCO.
--              For easy calculation and use, the multiply factor will be taken
--              as a integer value close to the ideal multiplier setting the VCO
--              frequency as high as possible.
--              M is taken as 14, then Fvco is 1400 MHz
--
--        Fvco = Fin * M/D          100 x 14/1  => 1400
--        Fout = Fin * M/D*O        Fout_Clk0  => D = 7    ==> 200 MHz   IDELAYCTRL ref clock.
--                                  Fout_Clk1  => D = 7    ==> 200 MHz
--                                  Fout_Clk2  => D = 28   ==> 50 MHz
--                                  Fout_Clk3  => D = 7    ==> 200 MHz     AdcClk
--                                  Fout_Clk4  => D = 28        |
--                                  Fout_Clk5  => D = 28        |==> Not Used
--                                  Fout_Clk6  => D = 28        |
--
-- CLKOUT0 is used for the reference clock of the IDELAYCTRL component.
--      When the reference clock is set to 200 MHz the tap delay is 78ps,
--      when the clock is set to 300 MHZ the tap delay is 52ps.
--      The clock precission must be +- 10MHz.
-----------------------------------------------------------------------------------------------
-- Tools:               Vivado_2017.3 or later
-- Limitations:         none
--
-- Vendor:              Xilinx Inc.
-- Version:             V0.03
-- Filename:            MmcmClock.vhd
-- Date Created:        02 September, 2011
-- Date Last Modified:  17 July, 2012
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
--  Rev. 10 Oct 2011
--      Needed to put the common used components between the clock design of the transmitter
--      and the reciever in a common library. This due the fact that the ISE tool went nuts
--      when finding files with the same name in different directories of the design.
--  Rev. 21 Dec 2012
--      Files retrieved from previous design and add to DAC design.
--  Rev. 05 Apr 2012
--      Comments correct for use with DAC interface.
------------------------------------------------------------------------------
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
library UNISIM;
  use UNISIM.vcomponents.all;
library Common;
    use Common.all;
---------------------------------------------------------------------------------------------
-- Entity pin description
---------------------------------------------------------------------------------------------
--      GENERICS
--  C_DacMmcmLoc    : Location constraint for the MMCM
-- -- Reset and enable stuff
-- C_PrimRstOutDly : Delay on the primary reset, most of the time used for the IDELAYCTRL.RST
-- C_UseRstOutDly  : Use a delay on the reset synchronous to a MMCM clock?
-- C_RstOutDly     : The delay that the above enable reset gets.
-- C_EnaOutDly     : After the reset is released, the delay of the enable.
--      PORTS
--  Mmcm_ClkIn1     : MMCM clock input.
--  Mmcm_ClkIn2     : MMCM clock input.
--  Mmcm_ClkInSel   : MMCM clock input.
--
--  Mmcm_ClkFbOut   : MMCM Feedback output, can be internal the FPGA but can also be on the PCB.
--  Mmcm_ClkFbIn    : MMCM feedback input, When from external a IBUFG is needed.
--
--  Mmcm_RstIn      : System reset input.
--  Mmcm_SysClk0    : Clock 0 output
--  Mmcm_SysClk1    : Clock 1 output
--  Mmcm_SysClk2    : Clock 2 output
--  Mmcm_SysClk3    : Clock 3 output
--  Mmcm_SysClk4    : Clock 4 output
--  Mmcm_SysClk5    : Clock 5 output |==> Not Used Here
--  Mmcm_SysClk5    : Clock 6 output |
--
--  Mmcm_AliveOut   : Pulsing output to show the MMCM is locked and functional.
--  Mmcm_RstOut     : 'x' clock cycles after external events this reset will be released
--  Mmcm_EnaOut     : 'x' clcok cycles after above reset is release this enable will go active.
--  Mmcm_ReadyIn    : input from IDELAYCTRL.RDY
--
--  Mmcm_Drp_Di     : DRP port
--  Mmcm_Drp_Addr   : DRP port
--  Mmcm_Drp_We     : DRP port
--  Mmcm_Drp_En     : DRP port
--  Mmcm_Drp_Clk    : DRP port
--  Mmcm_Drp_Do     : DRP port
--  Mmcm_Drp_Rdy    : DRP port
--
--  Mmcm_PsIncDec   : Phase shift of the MMCM
--  Mmcm_Psen       : Phase shift of the MMCM
--  Mmcm_PsClk      : Phase shift of the MMCM
--  Mmcm_PsDone     : Phase shift of the MMCM
--
--  Mmcm_TimeTick_Fast  : Pulsing output following a 1/2 second rate
--  Mmcm_TimeTick_Slow  : Pulsing output following a sec rate.
-----------------------------------------------------------------------------------------------
entity MmcmClock is
    generic (
        -- MMCM related stuff
        C_DacMmcmLoc    : string;
        -- Reset and enable stuff
        C_PrimRstOutDly : integer := 2;
        C_UseRstOutDly  : integer := 1;
        C_RstOutDly     : integer := 6;
        C_EnaOutDly     : integer := 8;
        -- Stuff for LED.
        C_AlifeFactor   : integer := 5;
        C_OnTime        : integer := 10
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
        Mmcm_RstOut         : out std_logic;
        Mmcm_EnaOut         : out std_logic;
        Mmcm_ReadyIn        : in std_logic;
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
end entity MmcmClock;
-----------------------------------------------------------------------------------------------
-- Architecture section
-----------------------------------------------------------------------------------------------
architecture MmcmClock_struct of MmcmClock is
-----------------------------------------------------------------------------------------------
-- Component Instantiation
-----------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------
-- Constants, Signals and Attributes Declarations
-----------------------------------------------------------------------------------------------
-- Functions
-- Constants
constant Low  : std_logic   := '0';
constant High : std_logic   := '1';
-- Signals
signal IntMmcm_Bufg_SysClk      : std_logic_vector(6 downto 0);
signal IntMmcm_Bufg_ClkFbOut    : std_logic;
signal IntMmcm_SysClk           : std_logic_vector(6 downto 0);
signal IntMmcm_ClkFbOut         : std_logic;
signal IntMmcm_Locked           : std_logic;
signal IntMmcm_EnaOut           : std_logic;
signal IntMmcm_RstOut           : std_logic;
-- Attributes
attribute KEEP_HIERARCHY : string;
    attribute KEEP_HIERARCHY of MmcmClock_struct : architecture is "YES";
attribute LOC : string;
    attribute LOC of MmcmClock_I_Mmcm_Adv : label is C_DacMmcmLoc;
-----------------------------------------------------------------------------------------------
begin
-----------------------------------------------------------------------------------------------
MmcmClock_I_Mmcm_Adv : MMCME2_ADV
    generic map (
        BANDWIDTH               => "OPTIMIZED", -- string
        CLKIN1_PERIOD           => 10.0,        -- real --
        CLKIN2_PERIOD           => 0.0,         -- real
        REF_JITTER1             => 0.010,       -- real --
        REF_JITTER2             => 0.0,         -- real
        DIVCLK_DIVIDE           => 1,           -- integer  --
        CLKFBOUT_MULT_F         => 14.0,        -- real  --
        CLKFBOUT_PHASE          => 0.0,         -- real
        CLKFBOUT_USE_FINE_PS    => FALSE,       -- boolean
        CLKOUT0_DIVIDE_F        => 7.000,       -- real  -- 4.0322
        CLKOUT0_DUTY_CYCLE      => 0.5,         -- real
        CLKOUT0_PHASE           => 0.0,         -- real
        CLKOUT0_USE_FINE_PS     => FALSE,       -- boolean
        CLKOUT1_DIVIDE          => 7,           -- integer  --
        CLKOUT1_DUTY_CYCLE      => 0.5,         -- real
        CLKOUT1_PHASE           => 0.0,         -- real
        CLKOUT1_USE_FINE_PS     => FALSE,       -- boolean
        CLKOUT2_DIVIDE          => 28,           -- integer  --
        CLKOUT2_DUTY_CYCLE      => 0.5,         -- real
        CLKOUT2_PHASE           => 0.0,         -- real  --
        CLKOUT2_USE_FINE_PS     => FALSE,       -- boolean
        CLKOUT3_DIVIDE          => 7,           -- integer
        CLKOUT3_DUTY_CYCLE      => 0.5,         -- real
        CLKOUT3_PHASE           => 0.0,         -- real
        CLKOUT3_USE_FINE_PS     => FALSE,        -- boolean  --
        CLKOUT4_CASCADE         => FALSE,       -- boolean
        CLKOUT4_DIVIDE          => 28,           -- integer --
        CLKOUT4_DUTY_CYCLE      => 0.5,         -- real
        CLKOUT4_PHASE           => 0.0,         -- real
        CLKOUT4_USE_FINE_PS     => FALSE,        -- boolean  --
        CLKOUT5_DIVIDE          => 28,           -- integer
        CLKOUT5_DUTY_CYCLE      => 0.5,         -- real
        CLKOUT5_PHASE           => 0.0,         -- real
        CLKOUT5_USE_FINE_PS     => FALSE,       -- boolean
        CLKOUT6_DIVIDE          => 28,           -- integer
        CLKOUT6_DUTY_CYCLE      => 0.5,         -- real
        CLKOUT6_PHASE           => 0.0,         -- real
        CLKOUT6_USE_FINE_PS     => FALSE,       -- boolean
        COMPENSATION            => "ZHOLD",     -- string
        STARTUP_WAIT            => FALSE        -- boolean
    )
    port map (
        CLKIN1          => Mmcm_ClkIn1,             -- in
        CLKIN2          => Mmcm_ClkIn2,             -- in
        CLKINSEL        => Mmcm_ClkInSel,           -- in
        CLKFBIN         => Mmcm_ClkFbIn,            -- in
        CLKOUT0         => IntMmcm_Bufg_SysClk(0),  -- out
        CLKOUT0B        => open,                    -- out
        CLKOUT1         => IntMmcm_Bufg_SysClk(1),  -- out
        CLKOUT1B        => open,                    -- out
        CLKOUT2         => IntMmcm_Bufg_SysClk(2),  -- out
        CLKOUT2B        => open,                    -- out
        CLKOUT3         => IntMmcm_Bufg_SysClk(3),  -- out
        CLKOUT3B        => open,                    -- out
        CLKOUT4         => IntMmcm_Bufg_SysClk(4),  -- out
        CLKOUT5         => IntMmcm_Bufg_SysClk(5),  -- out
        CLKOUT6         => IntMmcm_Bufg_SysClk(6),  -- out
        CLKFBOUT        => IntMmcm_Bufg_ClkFbOut,   -- out
        CLKFBOUTB       => open,                    -- out
        CLKINSTOPPED    => open,                    -- out
        CLKFBSTOPPED    => open,                    -- out
        LOCKED          => IntMmcm_Locked,          -- out
        PWRDWN          => Low,             -- in
        RST             => Mmcm_RstIn,      -- in
        DI              => Mmcm_Drp_Di,     -- in
        DADDR           => Mmcm_Drp_Addr,   -- in
        DCLK            => Mmcm_Drp_Clk,    -- in
        DEN             => Mmcm_Drp_En,     -- in
        DWE             => Mmcm_Drp_We,     -- in
        DO              => Mmcm_Drp_Do,     -- out
        DRDY            => Mmcm_Drp_Rdy,    -- out
        PSINCDEC        => Mmcm_PsIncDec,   -- in
        PSEN            => Mmcm_PsEn,       -- in
        PSCLK           => Mmcm_PsClk,      -- in
        PSDONE          => Mmcm_PsDone      -- out
    );
-----------------------------------------------------------------------------------------------
Mmcm_SysClk0 <= IntMmcm_Bufg_SysClk(0);
Mmcm_SysClk1 <= IntMmcm_Bufg_SysClk(1);
Mmcm_SysClk2 <= IntMmcm_Bufg_SysClk(2);
Mmcm_SysClk3 <= IntMmcm_Bufg_SysClk(3);
Mmcm_SysClk4 <= IntMmcm_Bufg_SysClk(4);
Mmcm_SysClk5 <= IntMmcm_Bufg_SysClk(5);
Mmcm_SysClk6 <= IntMmcm_Bufg_SysClk(6);
Mmcm_ClkFbOut <= IntMmcm_Bufg_ClkFbOut;
Mmcm_Locked <= IntMmcm_Locked;
-----------------------------------------------------------------------------------------------
MmcmClock_I_LifeIndicator : entity Common.LifeIndicator
    generic map (
        C_AlifeFactor       => C_AlifeFactor,
        C_OnTime            => C_OnTime
    )
    port map (
        RefClkIn    => IntMmcm_Bufg_SysClk(0), -- Clocked at 312.5 MHz
        LifeRst     => Mmcm_RstIn,
        LifeIn      => IntMmcm_Locked,
        LifeOut     => Mmcm_AliveOut
    );
-----------------------------------------------------------------------------------------------
MmcmClock_I_AppsRstEna : entity Common.AppsRstEna
    generic map (
        C_PrimRstOutDly => C_PrimRstOutDly,
        C_UseRstOutDly  => C_UseRstOutDly,
        C_RstOutDly     => C_RstOutDly,
        C_EnaOutDly     => C_EnaOutDly
    )
    port map (
        Locked      => IntMmcm_Locked,      -- in
        Rst         => Mmcm_RstIn,          -- in
        SysClkIn    => Mmcm_ClkIn1,         -- in -- When CLKIN2 is used modify this line.
        ExtRst      => Low,                 -- in
        ReadyIn     => Mmcm_ReadyIn,        -- in
        ClkIn       => IntMmcm_Bufg_SysClk(3),   -- in -- Clocked at 312.5 MHz - CLKDIV
        RstOut      => IntMmcm_RstOut,      -- out
        EnaOut      => IntMmcm_EnaOut       -- out
    );
Mmcm_RstOut <= IntMmcm_RstOut;
Mmcm_EnaOut <= IntMmcm_EnaOut;
-----------------------------------------------------------------------------------------------
-- The purpose of this circuit is to generate a regular clock tick.
-- The tick is as wide as one input clock cycle.
-- The frequency of the tick depents from: Input clock, division, and etcetera.
-- Except the input clock, who is connected here, the other things that determine the
-- occurence of the tick must be set in the /JesdAppsClk/Vhdl/TimeTickCnt.vhd file.
-- For this design the tick occurs every 1 ms (the input clock is 200 MHz).
MmcmClock_I_TimeTickCnt : entity Common.TimeTickCnt
    port map (
        RefClkIn        => IntMmcm_Bufg_SysClk(0), -- in -- Clocked at CLKREF speed
        TickEna         => IntMmcm_EnaOut,  -- in
        TickOut_Fast    => Mmcm_TimeTick_Fast,  -- out
        TickOut_Slow    => Mmcm_TimeTick_Slow   -- out
    );
---------------------------------------------------------------------------------------------
end MmcmClock_struct;
--