-----------------------------------------------------------------------------------------------
-- © Copyright 2009 - 2009, Xilinx, Inc. All rights reserved.
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
-- /___/  \  / 			
-- \   \   \/ 			Vendor:              Xilinx Inc.
--  \   \        		Version:
--  /   /        		Filename:            AdcBulkMem_36b.vhd
-- /___/   /\    		Date Created:        12 June, 2009  
-- \   \  /  \          Date Last Modified:  08 December, 2009
--  \___\/\___\
-- 
-- Device:          Viterx-6
-- Author:          defossez
-- Entity Name:     AdcBulkMem_36b
-- Purpose:         Memory to dump data from the ADC.
--					Memory to store, write data in to be transmitter.
--					Memory content compare.
-- Tools:           
-- Limitations:     none
--
-- Revision History:
--    Rev. 08 Dec 2009
--		Named this file "AdcBulkMem_36b".
--		It represents a 36-bit Block-RAM.
--		There is now also a 18-bit block bulk memory, alled 'AdcBulkMem_18b'
--
-----------------------------------------------------------------------------------------------
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
-----------------------------------------------------------------------------------------------
--
library IEEE;
	use IEEE.std_logic_1164.all;
	use IEEE.std_logic_UNSIGNED.all;
library UNISIM;
	use UNISIM.vcomponents.all;
library AdcBulkMem_Lib;
	use AdcBulkMem_Lib.all;
-----------------------------------------------------------------------------------------------
-- Entity pin description
-----------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------
entity AdcBulkMem_36b is
    generic (C_BlckRamLoc : string := "RAMB36_X0Y0");
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
end AdcBulkMem_36b;
-----------------------------------------------------------------------------------------------
-- Architecture section
-----------------------------------------------------------------------------------------------
architecture AdcBulkMem_36b_struct of AdcBulkMem_36b is
-----------------------------------------------------------------------------------------------
-- Component Instantiation
-----------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------
-- Constants, Signals and Attributes Declarations
-----------------------------------------------------------------------------------------------
-- Functions
-- Constants
constant Low  : std_logic	:= '0';
constant High : std_logic	:= '1';
constant IntWeA		: std_logic_vector(3 downto 0) := "1111";
constant IntDipB	: std_logic_vector(3 downto 0) := "0000";
constant IntDiB		: std_logic_vector(31 downto 0) := X"00000000";
constant IntWeB		: std_logic_vector(7 downto 0) := "00000000";
-- Signals
signal IntMem_DataOut	: std_logic_vector(35 downto 0);
signal IntAddrA_Wr		: std_logic_vector(15 downto 0);
signal IntAddrB_Rd		: std_logic_vector(15 downto 0);
signal IntAddrCntWr		: std_logic_vector(9 downto 0);
signal IntAddrCntRd		: std_logic_vector(11 downto 0);
signal IntEmpty			: std_logic;
signal IntMiddle		: std_logic;
signal IntFull			: std_logic;
-- Attributes
attribute LOC : string;
    attribute LOC of AdcBulkMem_I_Ramb36e1 : label is C_BlckRamLoc;
-----------------------------------------------------------------------------------------------
begin
--
AdcBulkMem_I_Ramb36e1 : RAMB36E1
  generic map (
		RAM_MODE			=> "TDP",
		INIT_FILE			=> "NONE",
		DOA_REG				=> 0,
		DOB_REG				=> 0,
		EN_ECC_READ			=> FALSE,
		EN_ECC_WRITE		=> FALSE,
		RAM_EXTENSION_A		=> "NONE",
		RAM_EXTENSION_B		=> "NONE",
		WRITE_MODE_A		=> "WRITE_FIRST",
		WRITE_MODE_B		=> "WRITE_FIRST",
		WRITE_WIDTH_A		=> 36,
		WRITE_WIDTH_B		=> 9, --9
		READ_WIDTH_A		=> 36,
		READ_WIDTH_B		=> 9, --9
		RSTREG_PRIORITY_A	=> "RSTREG",
		RSTREG_PRIORITY_B	=> "RSTREG",
		INIT_A				=> X"000000000",
		INIT_B				=> X"000000000",
		SRVAL_A				=> X"000000000",
		SRVAL_B				=> X"000000000",
		SIM_COLLISION_CHECK	=> "ALL"
	)
  port map (
		CASCADEOUTA		=> open,						-- out
		DOPADOP			=> open,						-- out [3:0]	
		DOADO			=> open,						-- out [31:0]
		DIPADIP			=> Mem_DataIn(35 downto 32),	-- in [3:0]
		DIADI			=> Mem_DataIn(31 downto 0),		-- in [31:0]
		ADDRARDADDR		=> IntAddrA_Wr,					-- in [15:0]
		WEA				=> IntWeA,						-- in [3:0]
		ENARDEN			=> Mem_EnaIn,					-- in
		REGCEAREGCE		=> low,							-- in
		RSTREGARSTREG	=> Mem_RstIn,					-- in
		RSTRAMARSTRAM	=> Mem_RstIn,					-- in
		CLKARDCLK		=> Mem_ClkIn,					-- in
		CASCADEINA		=> Low,							-- in
		--
		CASCADEOUTB		=> open,						-- out									
		DOPBDOP			=> IntMem_DataOut(35 downto 32),-- out [3:0]
		DOBDO			=> IntMem_DataOut(31 downto 0),	-- out [31:0]
		DIPBDIP			=> IntDipB,						-- in [3:0]
		DIBDI			=> IntDiB,						-- in [31:0]
		ADDRBWRADDR		=> IntAddrB_Rd,					-- in [15:0]
		WEBWE			=> IntWeB,						-- in [7:0]
		ENBWREN			=> Mem_EnaOut,					-- in
		REGCEB			=> Low,							-- in
		RSTREGB			=> Mem_RstOut,					-- in
		RSTRAMB			=> Mem_RstOut,					-- in
		CLKBWRCLK		=> Mem_ClkOut,					-- in	
		CASCADEINB		=> Low,							-- in
		--					
		INJECTDBITERR	=> Low,							-- in
		INJECTSBITERR	=> Low,							-- in
		DBITERR			=> open,						-- out
		ECCPARITY		=> open,						-- out [7:0]
		RDADDRECC		=> open,						-- out [8:0]
		SBITERR			=> open							-- out
	);
Mem_DataOut <= IntMem_DataOut(32) & IntMem_DataOut(7 downto 0);
IntAddrB_Rd <= Low & IntAddrCntRd & Low & Low & Low;
IntAddrA_Wr <= Low & IntAddrCntWr & Low & Low & Low & Low & Low;
--
AdcBulkMem_I_CntTwelveBit : entity AdcBulkMem_Lib.CntTwelveBit
	port map (
		CntClk		=> Mem_ClkOut,	-- in
		CntRst		=> Mem_RstOut,	-- in
		CntEna	    => Mem_EnaOut,	-- in
		CntTc    	=> open,		-- out
		CntOut		=> IntAddrCntRd	-- out [11:0]
	);
--
AdcBulkMem_I_CntTenBit : entity AdcBulkMem_Lib.CntTenBit
	port map (
		CntClk		=> Mem_ClkIn,	-- in
		CntRst		=> Mem_RstIn,	-- in
		CntEna	    => Mem_EnaIn,	-- in
		CntTc    	=> open,		-- out
		CntOut		=> IntAddrCntWr	-- out [9:0]
	);
--                                              Write                               Read
IntEmpty <= '1' when IntAddrCntWr(9 downto 7) = "111" and IntAddrCntRd(11 downto 9) = "110" else
			'1' when IntAddrCntWr(9 downto 7) = "110" and IntAddrCntRd(11 downto 9) = "101" else
			'1' when IntAddrCntWr(9 downto 7) = "101" and IntAddrCntRd(11 downto 9) = "100" else
			'1' when IntAddrCntWr(9 downto 7) = "100" and IntAddrCntRd(11 downto 9) = "011" else
			'1' when IntAddrCntWr(9 downto 7) = "011" and IntAddrCntRd(11 downto 9) = "010" else
			'1' when IntAddrCntWr(9 downto 7) = "010" and IntAddrCntRd(11 downto 9) = "001" else
			'1' when IntAddrCntWr(9 downto 7) = "001" and IntAddrCntRd(11 downto 9) = "000" else
			'1' when IntAddrCntWr(9 downto 7) = "000" and IntAddrCntRd(11 downto 9) = "111" else
			'0';
IntMiddle <= '1' when IntAddrCntWr(9 downto 7) = "111" and IntAddrCntRd(11 downto 9) = "011" else
			'1' when IntAddrCntWr(9 downto 7) = "110" and IntAddrCntRd(11 downto 9) = "010" else
			'1' when IntAddrCntWr(9 downto 7) = "101" and IntAddrCntRd(11 downto 9) = "001" else
			'1' when IntAddrCntWr(9 downto 7) = "100" and IntAddrCntRd(11 downto 9) = "000" else
			'1' when IntAddrCntWr(9 downto 7) = "011" and IntAddrCntRd(11 downto 9) = "111" else
			'1' when IntAddrCntWr(9 downto 7) = "010" and IntAddrCntRd(11 downto 9) = "110" else
			'1' when IntAddrCntWr(9 downto 7) = "001" and IntAddrCntRd(11 downto 9) = "101" else
			'1' when IntAddrCntWr(9 downto 7) = "000" and IntAddrCntRd(11 downto 9) = "100" else
			'0';
IntFull  <= '1' when IntAddrCntWr(9 downto 7) = "111" and IntAddrCntRd(11 downto 9) = "000" else
			'1' when IntAddrCntWr(9 downto 7) = "110" and IntAddrCntRd(11 downto 9) = "111" else
			'1' when IntAddrCntWr(9 downto 7) = "101" and IntAddrCntRd(11 downto 9) = "110" else
			'1' when IntAddrCntWr(9 downto 7) = "100" and IntAddrCntRd(11 downto 9) = "101" else
			'1' when IntAddrCntWr(9 downto 7) = "011" and IntAddrCntRd(11 downto 9) = "100" else
			'1' when IntAddrCntWr(9 downto 7) = "010" and IntAddrCntRd(11 downto 9) = "011" else
			'1' when IntAddrCntWr(9 downto 7) = "001" and IntAddrCntRd(11 downto 9) = "010" else
			'1' when IntAddrCntWr(9 downto 7) = "000" and IntAddrCntRd(11 downto 9) = "001" else
			'0';
AdcBulkMem_Flag_PROCESS : process (Mem_ClkOut, Mem_RstOut)
begin
	if (Mem_RstOut = '1') then 
		Empty <= '0';
		Middle <= '0';
		Full <= '0';
	elsif (Mem_ClkOut'event and Mem_ClkOut = '1') then
		Empty <= IntEmpty;
		Middle <= IntMiddle;
		Full <= IntFull;
	end if;
end process;
-----------------------------------------------------------------------------------------------
end AdcBulkMem_36b_struct;
--