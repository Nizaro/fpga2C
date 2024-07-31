---------------------------------------------------------------------------------------------
-- © Copyright 2012, Xilinx, Inc. All rights reserved.
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
-- \   \   \/ 			Version:             V0.02
--  \   \        		Filename:            Apps_AdcToplevel.vhd
--  /   /        		Date Created:        27 Dec, 2010
-- /___/   /\    		Date Last Modified:  16 Feb, 2018
-- \   \  /  \
--  \___\/\___\
--
-- Device:          7-Series
-- Author:          defossez
-- Entity Name:     Apps_AdcToplevel
-- Purpose:         Sample application and AdcToplevel for two channel 16-bit ADC
--                  ADC with 16-bit resolution and sample speed of 100Msps.
-- Tools:           Vivado_2017.3  or later
-- Limitations:     none
--
-- Revision History:
--  Rev. 16 Feb 2018 - Defossez
--      Updates design for Vivado_2017.4 or later.
------------------------------------------------------------------------------
-- Naming Conventions:
--   active low signals:                    "*_n"
--   clock signals:                         "clk", "clk_div#", "clk_#x"
--   reset signals:                         "rst", "rst_n"
--   generics:                              "C_*"
--   user defined types:                    "*_TYPE"
--   state machine next state:              "*_ns"
--   state machine current state:           "*_cs"
--   combinatorial signals:                 "*_com"
--   pipelined or register delay signals:   "*_d#"
--   counter signals:                       "*cnt*"
--   clock enable signals:                  "*_ce"
--   internal version of output port:       "*_i"
--   device pins:                           "*_pin"
--   ports:                                 "- Names begin with Uppercase"
--   processes:                             "*_PROCESS"
--   component instantiations:              "<ENTITY_>I_<#|FUNC>"
---------------------------------------------------------------------------------------------
library IEEE;
	use IEEE.std_logic_1164.all;
	use IEEE.std_logic_UNSIGNED.all;
library UNISIM;
	use UNISIM.vcomponents.all;
library Common;
    use Common.all;
library AdcBulkMem_Lib;
    use AdcBulkMem_Lib.all;
library MmcmClock_Lib;
    use MmcmClock_Lib.all;
library Adc_Interface;
    use Adc_Interface.all;
---------------------------------------------------------------------------------------------
-- Entity pin description
---------------------------------------------------------------------------------------------
entity Apps_AdcToplevel is
    generic (
        C_OnChipLvdsTerm    : integer := 1;
        C_AdcUseIdlyCtrl    : integer := 1;
        C_AdcChnls          : integer := 2;   -- Number of ADC in a package
        C_AdcWireInt        : integer := 2;   -- 2 = 2-wire, 1 = 1-wire interface
        C_AdcBits           : integer := 16;
        C_StatTaps          : integer := 16;
        C_AdcIdlyCtrlLoc    : string := "IDELAYCTRL_X0Y1";
        C_BufioLoc          : string := "BUFIO_X0Y6";
        C_BufrLoc           : string := "BUFR_X0Y6";
        C_BlckRamLoc_Chnl_0 : string := "RAMB36_X0Y16";
        C_BlckRamLoc_Chnl_1 : string := "RAMB36_X0Y14";
        C_AppsMmcmLoc       : string := "MMCME2_ADV_X0Y1"
    );
	port (
        Adc_DCLK_0_p_pin    : in std_logic; --
        Adc_DCLK_0_n_pin    : in std_logic; --
        Adc_FCLK_0_p_pin    : in std_logic; --
        Adc_FCLK_0_n_pin    : in std_logic; --
        Adc_DI_0_0_p_pin    : in std_logic; ---------
        Adc_DI_0_0_n_pin    : in std_logic; --
        Adc_DI_1_0_p_pin    : in std_logic; -- These individual inputs must be
        Adc_DI_1_0_n_pin    : in std_logic; -- turned into a bus for handling by the
        Adc_DI_2_0_p_pin    : in std_logic; -- IO hierarchical level. See lower
        Adc_DI_2_0_n_pin    : in std_logic; -- in this HDL file.
        Adc_DI_3_0_p_pin    : in std_logic; --
        Adc_DI_3_0_n_pin    : in std_logic; --------
        Sys_Clk_p_pin       : in std_logic; --
        Sys_Clk_n_pin       : in std_logic; --
        Sys_Rst_pin         : in std_logic; --
        Adc_ReSync_pin      : in std_logic; --
        MmcmLocked_pin      : out std_logic; --
        AdcFrmDataOut_pin   : out std_logic_vector(15 downto 0); --
        AdcMemDataOut_pin   : out std_logic_vector(17 downto 0); --
        AdcIntrfcStats_pin  : out std_logic_vector(3 downto 0) --
	);
end Apps_AdcToplevel;
---------------------------------------------------------------------------------------------
-- Architecture section
---------------------------------------------------------------------------------------------
architecture Apps_AdcToplevel_struct of Apps_AdcToplevel is
---------------------------------------------------------------------------------------------
-- Component Instantiation
---------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------
-- Constants, Signals and Attributes Declarations
---------------------------------------------------------------------------------------------
-- Functions
-- Calculate and set the frame pattern
function CalcFrmPattrn(Wire, Bit: integer) return string is
begin
	case Bit is
        when 12 =>
            if Wire = 1 then return "111111000000";
            elsif Wire = 2 then return  "000000111000";
            end if;
        when 16 =>
            if Wire = 1 then return "0000000011110000";
            elsif Wire = 2 then return  "1111111100000000";
            end if;
        when 14 =>
            if Wire = 1 then return "0000000011110000";
            elsif Wire = 2 then return  "1111111100000000";
            end if;
        when others =>
            return "0000000000000000";
    end case;
end function CalcFrmPattrn;
--
-- Constants
constant Low    : std_logic	:= '0';
constant LowVec : std_logic_vector(31 downto 0) := X"00000000";
constant High   : std_logic	:= '1';
-- Signals
signal IntDCLK_n            : std_logic;
signal IntDCLK_p            : std_logic;
signal IntFCLK_n            : std_logic;
signal IntFCLK_p            : std_logic;
signal IntData_n            : std_logic_vector((C_AdcChnls*C_AdcWireInt)-1 downto 0);
signal IntData_p            : std_logic_vector((C_AdcChnls*C_AdcWireInt)-1 downto 0);
signal IntAdc_DI_n_pin      : std_logic_vector((C_AdcChnls*C_AdcWireInt)-1 downto 0);
signal IntAdc_DI_p_pin      : std_logic_vector((C_AdcChnls*C_AdcWireInt)-1 downto 0);
signal IntSysRefClk         : std_logic;
signal IntSysRst            : std_logic;
signal IntAdcReSync         : std_logic;
signal IntRstIn             : std_logic;
signal IntEnaIn             : std_logic;
signal IntSysClk            : std_logic;
signal IntSysClkFb          : std_logic;
signal IntMmcm_SysClk3      : std_logic;
signal IntMmcm_SysClk1      : std_logic;
signal IntMmcm_RstOut       : std_logic;
signal IntMmcm_EnaOut       : std_logic;
signal IntMmcm_Lckd_Led     : std_logic;
signal IntStatIntrfc        : std_logic_vector(19 downto 0);
signal IntFrmDataOut        : std_logic_vector(63 downto 0);
signal IntMemFlags          : std_logic_vector((4*(C_AdcChnls/2)*C_AdcWireInt)-1 downto 0);
signal IntMemDataOut        : std_logic_vector(31 downto 0);
signal IntBulkMemDataIn     : std_logic_vector(35 downto 0);
signal IntBulkMemDataOut    : std_logic_vector(71 downto 0);
signal IntAdcMemEna         : std_logic;
signal IntMemFull           : std_logic_vector(((C_AdcChnls/2)*C_AdcWireInt)-1 downto 0);
signal IntMemEmpty          : std_logic_vector(((C_AdcChnls/2)*C_AdcWireInt)-1 downto 0);
signal IntBulkMemFull_0     : std_logic;
signal IntBulkMemEmpty_0    : std_logic;
signal IntBulkMemFull_1     : std_logic;
signal IntBulkMemEmpty_1    : std_logic;
signal IntBulkMemEnaIn_0    : std_logic;
signal IntBulkMemEnaOut_0   : std_logic;
signal IntBulkMemEnaIn_1    : std_logic;
signal IntBulkMemEnaOut_1   : std_logic;
signal IntBulkMem_Wr_0      : std_logic;
signal IntBulkMem_Rd_0      : std_logic;
signal IntBulkMem_Wr_1      : std_logic;
signal IntBulkMem_Rd_1      : std_logic;
signal IntMmcm_Locked       : std_logic;
signal IntMmcm_AliveOut     : std_logic;
-- Attributes
attribute KEEP_HIERARCHY : string;
    attribute KEEP_HIERARCHY of Apps_AdcToplevel_struct : architecture is "YES";
---------------------------------------------------------------------------------------------
begin
---------------------------------------------------------------------------------------------
-- ADC interface
---------------------------------------------------------------------------------------------
--
-- Make from individual data inputs a bus for connection into the IBUFFERs
IntAdc_DI_p_pin <= Adc_DI_3_0_p_pin & Adc_DI_2_0_p_pin & Adc_DI_1_0_p_pin & Adc_DI_0_0_p_pin;
IntAdc_DI_n_pin <= Adc_DI_3_0_n_pin & Adc_DI_2_0_n_pin & Adc_DI_1_0_n_pin & Adc_DI_0_0_n_pin;
--
--IntAdc_DI_p_pin <= Adc_DI_1_0_p_pin & Adc_DI_0_0_p_pin;
--IntAdc_DI_n_pin <= Adc_DI_1_0_n_pin & Adc_DI_0_0_n_pin;
--
Apps_AdcToplevel_I_AdcIo : entity Adc_Interface.AdcIo
    generic map (
        C_AdcChnls          => C_AdcChnls,          -- Number of ADC in a package
        C_AdcWireInt        => C_AdcWireInt,        -- 2 = 2-wire, 1 = 1-wire interface
        C_OnChipLvdsTerm    => C_OnChipLvdsTerm     -- 0 = No Term, 1 - Termination ON.
    )
    port map (
        DCLK_p              => IntDCLK_p, -- out
        DCLK_n              => IntDCLK_n, -- out
        FCLK_p              => IntFCLK_p, -- out
        FCLK_n              => IntFCLK_n, -- out
        DATA_p              => IntData_p, -- out -- [3:0]
        DATA_n              => IntData_n, -- out -- [3:0]
        Adc_DCLK_0_p_pin    => Adc_DCLK_0_p_pin, -- in
        Adc_DCLK_0_n_pin    => Adc_DCLK_0_n_pin, -- in
        Adc_FCLK_0_p_pin    => Adc_FCLK_0_p_pin, -- in
        Adc_FCLK_0_n_pin    => Adc_FCLK_0_n_pin, -- in
        Adc_DI_p_pin        => IntAdc_DI_p_pin, -- in
        Adc_DI_n_pin        => IntAdc_DI_n_pin -- in
    );
--
Apps_AdcToplevel_I_AdcToplevel : entity Adc_Interface.AdcToplevel
    generic map (
        C_BufioLoc          => C_BufioLoc,          -- string
        C_BufrLoc           => C_BufrLoc,           -- string
        C_AdcIdlyCtrlLoc    => C_AdcIdlyCtrlLoc,
        C_AdcUseIdlyCtrl    => C_AdcUseIdlyCtrl,    -- 0 = No, 1 = Yes
        C_AdcBits           => C_AdcBits,
        C_AdcChnls          => C_AdcChnls,          -- Number of ADC in a package
        C_AdcWireInt        => C_AdcWireInt,        -- 2 = 2-wire, 1 = 1-wire interface
        C_FrmPattern        => CalcFrmPattrn(C_AdcWireInt, C_AdcBits),
        C_StatTaps          => C_StatTaps           -- integer
    )
    port map (
        DCLK_p           => IntDCLK_p,      -- in
        DCLK_n           => IntDCLK_n,      -- in -- Not used.
        FCLK_p           => IntFCLK_p,      -- in
        FCLK_n           => IntFCLK_n,      -- in
        DATA_p           => IntData_p,      -- in [[C_AdcChnls*C_AdcWireInt]-1:0]
        DATA_n           => IntData_n,      -- in [[C_AdcChnls*C_AdcWireInt]-1:0]
        SysRefClk        => IntSysRefClk,   -- in    -- 200 MHz for IODELAYCTRL from application
        AdcIntrfcRst     => IntMmcm_RstOut, -- in
        AdcIntrfcEna     => IntMmcm_EnaOut, -- in
        AdcReSync        => IntAdcReSync,  -- in
        AdcFrmSyncWrn    => IntStatIntrfc(4),   -- out
        AdcBitClkAlgnWrn => IntStatIntrfc(3),   -- out
        AdcBitClkInvrtd  => IntStatIntrfc(2),   -- out
        AdcBitClkDone    => IntStatIntrfc(1),   -- out
        AdcIdlyCtrlRdy   => IntStatIntrfc(0),   -- out
        AdcFrmDataOut    => IntFrmDataOut(15 downto 0),      -- out [15:0]
        AdcMemClk        => IntMmcm_SysClk3,    -- in    -- Application clock
        AdcMemRst        => IntMmcm_RstOut,     -- in    -- Application reset
        AdcMemEna        => IntAdcMemEna,       -- in    -- Application Enable
        AdcMemDataOut    => IntMemDataOut(31 downto 0),      -- out [[[32/C_AdcWireInt]*[[C_AdcChnls/2]*C_AdcWireInt]]-1:0]
        AdcMemFlags      => IntMemFlags,        -- out [[4*(C_AdcChnls/2]*C_AdcWireInt]-1:0]
        AdcMemFull       => IntMemFull,         -- out [[[C_AdcChnls/2]*C_AdcWireInt]-1:0]
        AdcMemEmpty      => IntMemEmpty         -- out [[[C_AdcChnls/2]*C_AdcWireInt]-1:0]
    );
---------------------------------------------------------------------------------------------
-- Bulk Memories - Block-RAM
-- the Bulk memories used here are only one RAMB36 deep. For a full test multiple connected
-- Block-RAM memories can be used in order to store a substantial amount of data before
-- reading it out with an application.
---------------------------------------------------------------------------------------------
Gen_10 : if (4*(C_AdcChnls/2)*C_AdcWireInt) = 8 generate
    IntBulkMemDataIn <= IntMemFlags(7) & IntMemFlags(4) & IntMemDataOut(31 downto 16) &
                        IntMemFlags(3) & IntmemFlags(0) & IntMemDataOut(15 downto 0);
end generate Gen_10;
--
Gen_11 : if (4*(C_AdcChnls/2)*C_AdcWireInt) = 4 generate
    IntBulkMemDataIn <= IntMemFlags(3) & IntMemFlags(2) & IntMemDataOut(31 downto 16) &
                        IntMemFlags(1) & IntmemFlags(0) & IntMemDataOut(15 downto 0);
end generate Gen_11;

--
Apps_AdcToplevel_I_AdcBulkMem_0 : entity AdcBulkMem_Lib.AdcBulkMem_18b
    generic map (C_BlckRamLoc => C_BlckRamLoc_Chnl_0)
    port map (
        Mem_ClkIn   => IntMmcm_SysClk3,                 -- in
        Mem_EnaIn   => IntBulkMemEnaIn_0,               -- in
        Mem_RstIn   => IntMmcm_RstOut,                  -- in
        Mem_DataIn  => IntBulkMemDataIn(17 downto 0),   -- in [17:0]
        Mem_ClkOut  => IntMmcm_SysClk1,                 -- in
        Mem_EnaOut  => IntBulkMemEnaOut_0,              -- in
        Mem_RstOut  => IntMmcm_RstOut,                  -- in
        Mem_DataOut => IntBulkMemDataOut(8 downto 0),   -- out [8:0]
        Empty       => IntBulkMemEmpty_0,               -- out
        Middle      => open, -- out
        Full        => IntBulkMemFull_0                 -- out
    );
--
Apps_AdcToplevel_I_AdcBulkMem_1 : entity AdcBulkMem_Lib.AdcBulkMem_18b
    generic map (C_BlckRamLoc => C_BlckRamLoc_Chnl_1)
    port map (
        Mem_ClkIn   => IntMmcm_SysClk3,                 -- in
        Mem_EnaIn   => IntBulkMemEnaIn_1,               -- in
        Mem_RstIn   => IntMmcm_RstOut,                  -- in
        Mem_DataIn  => IntBulkMemDataIn(35 downto 18),  -- in [17:0]
        Mem_ClkOut  => IntMmcm_SysClk1,                 -- in
        Mem_EnaOut  => IntBulkMemEnaOut_1,              -- in
        Mem_RstOut  => IntMmcm_RstOut,                  -- in
        Mem_DataOut => IntBulkMemDataOut(17 downto 9),  -- out [8:0]
        Empty       => IntBulkMemEmpty_1,               -- out
        Middle      => open, -- out
        Full        => IntBulkMemFull_1                 -- out
    );
--
Apps_AdcToplevel_I_Fdrse_Wr_0 : entity Common.Fdrse 
    generic map (INIT => '0')
    port map (S => IntBulkMemEmpty_0, D => Low, CE => Low, C => IntMmcm_SysClk1,
              R => IntBulkMemFull_0, Q => IntBulkMem_Wr_0);
Apps_AdcToplevel_I_Fdrse_Rd_0 : entity Common.Fdrse
    generic map (INIT => '0')
    port map (S => IntBulkMemFull_0, D => Low, CE => Low, C => IntMmcm_SysClk1,
              R => IntBulkMemEmpty_0, Q => IntBulkMem_Rd_0);
--
Apps_AdcToplevel_I_Fdrse_Wr_1 : entity Common.Fdrse
    generic map (INIT => '0')
    port map (S => IntBulkMemEmpty_1, D => Low, CE => Low, C => IntMmcm_SysClk1,
              R => IntBulkMemFull_1, Q => IntBulkMem_Wr_1);
Apps_AdcToplevel_I_Fdrse_Rd_1 : entity Common.Fdrse
    generic map (INIT => '0')
    port map (S => IntBulkMemFull_1, D => Low, CE => Low, C => IntMmcm_SysClk1,
              R => IntBulkMemEmpty_1, Q => IntBulkMem_Rd_1);
--
IntAdcMemEna <= IntBulkMemEnaIn_0 and IntBulkMemEnaIn_1;
IntBulkMemEnaOut_0 <= IntMmcm_EnaOut and IntBulkMem_Rd_0;
IntBulkMemEnaOut_1 <= IntMmcm_EnaOut and IntBulkMem_Rd_1;
Gen_20 : if (C_AdcChnls/2)*C_AdcWireInt = 2 generate
    IntBulkMemEnaIn_0 <= IntMmcm_EnaOut and IntMemEmpty(0) and not IntMemFull(0) and IntBulkMem_Wr_0;
    IntBulkMemEnaIn_1 <= IntMmcm_EnaOut and IntMemEmpty(1) and not IntMemFull(1) and IntBulkMem_Wr_1;
end generate Gen_20;
--
Gen_21: if (C_AdcChnls/2)*C_AdcWireInt = 1 generate
    IntBulkMemEnaIn_0 <= IntMmcm_EnaOut and IntMemEmpty(0) and not IntMemFull(0) and IntBulkMem_Wr_0;
    IntBulkMemEnaIn_1 <= IntMmcm_EnaOut and IntMemEmpty(0) and not IntMemFull(0) and IntBulkMem_Wr_1;

end generate Gen_21;


---------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------
-- Application part of the design
-- This part of the design is here to show the ADC interface running.
---------------------------------------------------------------------------------------------
-- Inputs
---------------------------------------------------------------------------------------------
Apps_AdcToplevel_I_Ibuf_SysClk : IBUFDS
generic map (IOSTANDARD => "LVDS_25")
    port map (I => Sys_Clk_p_pin, IB => Sys_Clk_n_pin, O => IntSysClk);
Apps_AdcToplevel_I_Ibuf_RstEna : IBUF
    generic map (IOSTANDARD => "LVCMOS15")
    port map (I => Sys_Rst_pin, O => IntSysRst);
Apps_AdcToplevel_I_Ibuf_ReSync : IBUF
    generic map (IOSTANDARD => "LVCMOS15")
    port map (I => Adc_ReSync_pin, O => IntAdcReSync);
---------------------------------------------------------------------------------------------
-- Clock stuff
-- Update the MMCM parameters in the MmcmClock.vhd file.
---------------------------------------------------------------------------------------------
Apps_AdcToplevel_I_AppsClock : entity MmcmClock_Lib.MmcmClock
    generic map (
        C_DacMmcmLoc        => C_AppsMmcmLoc,   --
        C_PrimRstOutDly     => 2,   --
        C_UseRstOutDly      => 1,   --
        C_RstOutDly         => 6,   --
        C_EnaOutDly         => 8,   --
        C_AlifeFactor       => 5,   --
        C_OnTime            => 10   --
    )
    port map (
        Mmcm_ClkIn1         => IntSysClk,       -- in
        Mmcm_ClkIn2         => Low,             -- in
        Mmcm_ClkInSel       => High,            -- in
        Mmcm_ClkFbOut       => IntSysClkFb,     -- out
        Mmcm_ClkFbIn        => IntSysClkFb,     -- in
        Mmcm_RstIn          => IntSysRst,       -- in
        Mmcm_SysClk0        => IntSysRefClk,    -- out
        Mmcm_SysClk1        => IntMmcm_SysClk1, -- out
        Mmcm_SysClk2        => open,            -- out
        Mmcm_SysClk3        => IntMmcm_SysClk3, -- out
        Mmcm_SysClk4        => open,            -- out
        Mmcm_SysClk5        => open,            -- out
        Mmcm_SysClk6        => open,            -- out
        Mmcm_Locked         => IntMmcm_Locked,  -- out
        Mmcm_AliveOut       => IntMmcm_AliveOut, -- out
        Mmcm_RstOut         => IntMmcm_RstOut,  -- out
        Mmcm_EnaOut         => IntMmcm_EnaOut,  -- out
        Mmcm_ReadyIn        => High,            -- in
        Mmcm_Drp_Di         => LowVec(15 downto 0), -- in [15:0]
        Mmcm_Drp_Addr       => LowVec(6 downto 0),  -- in [6:0]
        Mmcm_Drp_We         => Low,             -- in
        Mmcm_Drp_En         => Low,             -- in
        Mmcm_Drp_Clk        => Low,             -- in
        Mmcm_Drp_Do         => open,            -- out [15:0]
        Mmcm_Drp_Rdy        => open,            -- out
        Mmcm_PsIncDec       => Low,             -- in
        Mmcm_Psen           => Low,             -- in
        Mmcm_PsClk          => Low,             -- in
        Mmcm_PsDone         => open,            -- out
        Mmcm_TimeTick_Fast  => open,            -- out
        Mmcm_TimeTick_Slow  => open             -- out
    );
IntMmcm_Lckd_Led <= IntMmcm_Locked and IntMmcm_AliveOut;
---------------------------------------------------------------------------------------------
-- Outputs
---------------------------------------------------------------------------------------------
-- When the MMCM is locked this is the outout to a LED (blinking)
Apps_AdcToplevel_I_Obuf_MmcmLckd : OBUF
    generic map (IOSTANDARD => "LVCMOS15", SLEW => "SLOW")
    port map (I => IntMmcm_Lckd_Led, O => MmcmLocked_pin);
-- Interface status bits. Pipeline of 3 FF and an OBUF
Gen_1 : for n in 3 downto 0 generate
    Apps_AdcToplevel_I_Fdce_1_Stats : FDCE
        generic map (INIT => '0')
        port map (D => IntStatIntrfc(n), CE => IntMmcm_EnaOut, C => IntMmcm_SysClk1,
              CLR => IntMmcm_RstOut, Q => IntStatIntrfc(n+5));
    Apps_AdcToplevel_I_Fdce_2_Stats : FDCE
        generic map (INIT => '0')
        port map (D => IntStatIntrfc(n+5), CE => IntMmcm_EnaOut, C => IntMmcm_SysClk1,
              CLR => IntMmcm_RstOut, Q => IntStatIntrfc(n+10));
    Apps_AdcToplevel_I_Fdce_3_Stats : FDCE
        generic map (INIT => '0')
        port map (D => IntStatIntrfc(n+10), CE => IntMmcm_EnaOut, C => IntMmcm_SysClk1,
              CLR => IntMmcm_RstOut, Q => IntStatIntrfc(n+15));
    Apps_AdcToplevel_I_Obuf_Stats : OBUF
        generic map (IOSTANDARD => "LVCMOS25", SLEW => "SLOW")
        port map (I => IntStatIntrfc(n+15), O => AdcIntrfcStats_pin(n));
end generate Gen_1;
-- Interface Frame output bits. Pipeline of 3 FF and an OBUF
Gen_2 : for n in 15 downto 0 generate
    Apps_AdcToplevel_I_Fdce_1_FrmData : FDCE
        generic map (INIT => '0')
        port map (D => IntFrmDataOut(n), CE => IntMmcm_EnaOut, C => IntMmcm_SysClk1,
              CLR => IntMmcm_RstOut, Q => IntFrmDataOut(n+16));
    Apps_AdcToplevel_I_Fdce_2_FrmData : FDCE
        generic map (INIT => '0')
        port map (D => IntFrmDataOut(n+16), CE => IntMmcm_EnaOut, C => IntMmcm_SysClk1,
              CLR => IntMmcm_RstOut, Q => IntFrmDataOut(n+32));
    Apps_AdcToplevel_I_Fdce_3_FrmData : FDCE
        generic map (INIT => '0')
        port map (D => IntFrmDataOut(n+32), CE => IntMmcm_EnaOut, C => IntMmcm_SysClk1,
              CLR => IntMmcm_RstOut, Q => IntFrmDataOut(n+48));
    Apps_AdcToplevel_I_Obuf_FrmData : OBUF
        generic map (IOSTANDARD => "LVCMOS25", SLEW => "SLOW")
        port map (I => IntFrmDataOut(n+48), O => AdcFrmDataOut_pin(n));
end generate Gen_2;
-- Output data from Bulk memory
Gen_3 : for n in 17 downto 0 generate
    Apps_AdcToplevel_I_Fdce_1_MemData : FDCE
        generic map (INIT => '0')
        port map (D => IntBulkMemDataOut(n), CE => IntMmcm_EnaOut, C => IntMmcm_SysClk1,
              CLR => IntMmcm_RstOut, Q => IntBulkMemDataOut(n+18));
    Apps_AdcToplevel_I_Fdce_2_MemData : FDCE
        generic map (INIT => '0')
        port map (D => IntBulkMemDataOut(n+18), CE => IntMmcm_EnaOut, C => IntMmcm_SysClk1,
              CLR => IntMmcm_RstOut, Q => IntBulkMemDataOut(n+36));
    Apps_AdcToplevel_I_Fdce_3_MemData : FDCE
        generic map (INIT => '0')
        port map (D => IntBulkMemDataOut(n+36), CE => IntMmcm_EnaOut, C => IntMmcm_SysClk1,
              CLR => IntMmcm_RstOut, Q => IntBulkMemDataOut(n+54));
    Apps_AdcToplevel_I_Obuf_MemData : OBUF
        generic map (IOSTANDARD => "LVCMOS25", SLEW => "SLOW")
        port map (I => IntBulkMemDataOut(n+54), O => AdcMemDataOut_pin(n));
end generate Gen_3;
--
---------------------------------------------------------------------------------------------
end Apps_AdcToplevel_struct;
