-----------------------------------------------------------------------------------------------
-- © Copyright 2009 - 2011, Xilinx, Inc. All rights reserved.
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
-- \   \   \/    Version: 
--  \   \        Filename:  TimeTickCnt_Testbench.vhd
--  /   /        Date Last Modified:    6 Jul 11
-- /___/   /\    Date Created:          10 Mar 08 
-- \   \  /  \
--  \___\/\___\
-- 
-- Device: 		Virtex-6 - Series-7
-- Entity Name: TimeTickCnt_Testbench
-- Purpose:		Test Bench for design.
-- Tools:       ISE_13.2
-- Limitations: TESTBENCH;
--                       DON'T USE THIS FILE FOR COMPILATION NOR INTEGRATION.
--
-- Revision History:
--  Rev. 6 Jul 2011 
--      Adjusted for Series-7
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
entity TimeTickCnt_Testbench is
-- Declarations
end  TimeTickCnt_Testbench;
--
architecture TimeTickCnt_Testbench_struct of TimeTickCnt_Testbench is
-----------------------------------------------------------------------------------------------
-- Component Instantiation
-----------------------------------------------------------------------------------------------
component TimeTickCnt
    port (
        RefClkIn		: in std_logic;
        TickEna				: in std_logic;
        TickOut_Fast	: out std_logic;
        TickOut_Slow	: out std_logic
    );
end component;
--
component TimeTickCnt_Tester
    port (
        RefClkIn		: out std_logic;
        TickEna			: out std_logic;
        TickOut_Fast	: in std_logic;
        TickOut_Slow	: in std_logic
    );
end component;
-----------------------------------------------------------------------------------------------
-- Signal Declarations
-----------------------------------------------------------------------------------------------
signal Sim_TickEna		: std_logic;
signal Sim_RefClkIn		: std_logic;
signal Sim_TickOut_Fast	: std_logic;
signal Sim_TickOut_Slow	: std_logic;
-----------------------------------------------------------------------------------------------
begin
--
UUT : TimeTickCnt
    port map (
        TickEna			=> Sim_TickEna,	 		-- in
        RefClkIn		=> Sim_RefClkIn, 		-- in
        TickOut_Fast	=> Sim_TickOut_Fast,	-- out
        TickOut_Slow	=> Sim_TickOut_Slow		-- out
    );
--
DTU : TimeTickCnt_Tester
    port map (
        TickEna			=> Sim_TickEna,			-- out
        RefClkIn		=> Sim_RefClkIn,		-- out
        TickOut_Fast	=> Sim_TickOut_Fast,	-- in
        TickOut_Slow	=> Sim_TickOut_Slow		-- in
    );
--
-----------------------------------------------------------------------------------------------
end  TimeTickCnt_Testbench_struct
;