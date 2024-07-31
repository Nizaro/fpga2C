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
-- Device:
-- Author:              defossez
-- Entity Name:         MmcmClock_Tester
-- Purpose:             Stimuli
-- Tools:
-- Limitations:  TESTBENCH / STIMULUS;
--               DON'T USE THIS FILE FOR COMPILATION NOR INTERATION.
--
-- Vendor:              Xilinx Inc.
-- Version:
-- Filename:            MmcmClock_Tester.vhd
-- Date Created:        7 jan, 2012
-- Date Last Modified:  10 April, 2012
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
--  Rev.
--
---------------------------------------------------------------------------------------------
-- Naming Conventions:
--  Generics start with:                                    "C_*"
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
    use IEEE.std_logic_textio.all;
    use std.textio.all;
    use IEEE.std_logic_arith.all;
---------------------------------------------------------------------------------------------
entity MmcmClock_Tester is
    generic (
        C_PrimRstOutDly : integer;
        C_UseRstOutDly  : integer;
        C_RstOutDly     : integer;
        C_EnaOutDly     : integer;
        C_Width         : integer;
        C_AlifeFactor   : integer;
        C_AlifeOn       : std_logic_vector(7 downto 0)
    );
    port (
        Mmcm_ClkIn1         : out std_logic;
        Mmcm_ClkIn2         : out std_logic;
        Mmcm_ClkInSel       : out std_logic;
        Mmcm_ClkFbOut       : in std_Logic;
        Mmcm_ClkFbIn        : out std_Logic;
        Mmcm_RstIn          : out std_Logic;
        Mmcm_SysClk0        : in std_logic;
        Mmcm_SysClk1        : in std_logic;
        Mmcm_SysClk2        : in std_logic;
        Mmcm_SysClk3        : in std_logic;
        Mmcm_SysClk4        : in std_logic;
        Mmcm_SysClk5        : in std_logic;
        Mmcm_SysClk6        : in std_logic;
        Mmcm_Locked         : in std_logic;
        Mmcm_AliveOut       : in std_logic;
        Mmcm_PrimRstOut     : in std_Logic;
        Mmcm_RstOut         : in std_logic;
        Mmcm_EnaOut         : in std_logic;
        --
        Mmcm_Drp_Di         : out std_logic_vector(15 downto 0);
        Mmcm_Drp_Addr       : out std_logic_vector(6 downto 0);
        Mmcm_Drp_We         : out std_logic;
        Mmcm_Drp_En         : out std_logic;
        Mmcm_Drp_Clk        : out std_logic;
        Mmcm_Drp_Do         : in std_logic_vector(15 downto 0);
        Mmcm_Drp_Rdy        : in std_logic;
        --
        Mmcm_PsIncDec       : out std_logic;
        Mmcm_Psen           : out std_logic;
        Mmcm_PsClk          : out std_logic;
        Mmcm_PsDone         : in std_logic;

        Mmcm_TimeTick_Fast  : in std_logic;
        Mmcm_TimeTick_Slow  : in std_logic
    );
end MmcmClock_Tester;
---------------------------------------------------------------------------------------------
architecture MmcmClock_Tester_flow of MmcmClock_Tester is
---------------------------------------------------------------------------------------------
-- Functions
---------------------------------------------------------------------------------------------
function int_to_chr(int: integer) return character is
    variable temp : character;
begin
  case int is
    when  0 => temp := '0';
    when  1 => temp := '1';
    when  2 => temp := '2';
    when  3 => temp := '3';
    when  4 => temp := '4';
    when  5 => temp := '5';
    when  6 => temp := '6';
    when  7 => temp := '7';
    when  8 => temp := '8';
    when  9 => temp := '9';
    when 10 => temp := 'A';
    when 11 => temp := 'B';
    when 12 => temp := 'C';
    when 13 => temp := 'D';
    when 14 => temp := 'E';
    when 15 => temp := 'F';
    when 16 => temp := 'G';
    when 17 => temp := 'H';
    when 18 => temp := 'I';
    when 19 => temp := 'J';
    when 20 => temp := 'K';
    when 21 => temp := 'L';
    when 22 => temp := 'M';
    when 23 => temp := 'N';
    when 24 => temp := 'O';
    when 25 => temp := 'P';
    when 26 => temp := 'Q';
    when 27 => temp := 'R';
    when 28 => temp := 'S';
    when 29 => temp := 'T';
    when 30 => temp := 'U';
    when 31 => temp := 'V';
    when 32 => temp := 'W';
    when 33 => temp := 'X';
    when 34 => temp := 'Y';
    when 35 => temp := 'Z';
    when others => temp := '?';
  end case;
return temp;
end function int_to_chr;

function int_to_str(int: integer; base: integer) return string is
    variable temp:      string(1 to 10);
    variable num:       integer;
    variable abs_int:   integer;
    variable len:       integer := 1;
    variable power:     integer := 1;
begin
    abs_int := abs(int);	-- Negative numbers
    num     := abs_int;

    while num >= base loop                     -- Determine how many
      len := len + 1;                          -- characters required
      num := num / base;                       -- to represent the
    end loop ;                                 -- number.

    for i in len downto 1 loop        			        -- Convert the number to
      temp(i) := int_to_chr(abs_int/power mod base);	-- a string starting
      power := power * base;                   			-- with the right hand
    end loop ;                                	 		-- side.

    -- return result and add sign if required
    if int < 0 then
       return '-'& temp(1 to len);
     else
       return temp(1 to len);
    end if;
end function int_to_str;

function str_to_stdlvec(inp: string) return std_logic_vector is
  variable temp: std_logic_vector(inp'range) := (others => 'X');
begin
  for i in inp'range loop
    if (inp(i) = '1') then
      temp(i) := '1';
    elsif (inp(i) = '0') then
      temp(i) := '0';
    end if;
  end loop;
return temp;
end function str_to_stdlvec;

function stdlvec_to_str(inp: std_logic_vector) return string is
  variable temp: string(inp'left+1 downto 1) := (others => 'X');
begin
  for i in inp'reverse_range loop
    if (inp(i) = '1') then
      temp(i+1) := '1';
    elsif (inp(i) = '0') then
      temp(i+1) := '0';
    end if;
  end loop;
return temp;
end function stdlvec_to_str;

function stdlvec_to_int(inp : std_logic_vector) return integer is
    variable result, abit   : integer := 0;
    variable count          : integer := 0;
begin
    gen : for i in inp'low to inp'high loop
        abit := 0;
        if (inp(i) = '1') then
            abit := 2**(i - inp'low);
        end if;
        result := result + abit;
        count := count + 1;
        exit gen when count = 32;
    end loop;
    return (result);
end stdlvec_to_int;
---------------------------------------------------------------------------------------------
-- Architecture Declarations
---------------------------------------------------------------------------------------------
constant ClockPeriod : time := 3.2 ns;
constant PhaseShift : integer := 256; -- ClockPeriod/PhaseShift is start phase shift.
--
signal IntMmcm_ClkIn1         : std_logic;                      -- out
signal IntMmcm_ClkIn2         : std_logic;                      -- out
signal IntMmcm_ClkInSel       : std_logic;                      -- out
signal IntMmcm_ClkFbOut       : std_Logic;                      -- in
signal IntMmcm_ClkFbIn        : std_Logic;                      -- out
signal IntMmcm_RstIn          : std_Logic;                      -- out
signal IntMmcm_SysClk0        : std_logic;                      -- in
signal IntMmcm_SysClk1        : std_logic;                      -- in
signal IntMmcm_SysClk2        : std_logic;                      -- in
signal IntMmcm_SysClk3        : std_logic;                      -- in
signal IntMmcm_SysClk4        : std_logic;                      -- in
signal IntMmcm_SysClk5        : std_logic;                      -- in
signal IntMmcm_SysClk6        : std_logic;                      -- in
signal IntMmcm_Locked         : std_logic;                      -- in
signal IntMmcm_AliveOut       : std_logic;                      -- in
signal IntMmcm_PrimRstOut     : std_Logic;                      -- in
signal IntMmcm_RstOut         : std_logic;                      -- in
signal IntMmcm_EnaOut         : std_logic;                      -- in
signal IntMmcm_Drp_Di         : std_logic_vector(15 downto 0);  -- out
signal IntMmcm_Drp_Addr       : std_logic_vector(6 downto 0);   -- out
signal IntMmcm_Drp_We         : std_logic;                      -- out
signal IntMmcm_Drp_En         : std_logic;                      -- out
signal IntMmcm_Drp_Clk        : std_logic;                      -- out
signal IntMmcm_Drp_Do         : std_logic_vector(15 downto 0);  -- in
signal IntMmcm_Drp_Rdy        : std_logic;                      -- in
signal IntMmcm_PsIncDec       : std_logic;                      -- out
signal IntMmcm_Psen           : std_logic;                      -- out
signal IntMmcm_PsClk          : std_logic;                      -- out
signal IntMmcm_PsDone         : std_logic;                      -- in
signal IntMmcm_TimeTick_Fast  : std_logic;                      -- in
signal IntMmcm_TimeTick_Slow  : std_logic;                       -- in
---------------------------------------------------------------------------------------------
begin
--
Mmcm_ClkIn1        <= IntMmcm_ClkIn1;
Mmcm_ClkIn2        <= IntMmcm_ClkIn2;
Mmcm_ClkInSel      <= IntMmcm_ClkInSel;
--
Mmcm_ClkFbIn   <= Mmcm_ClkFbOut;
--
Mmcm_RstIn         <= IntMmcm_RstIn;
IntMmcm_SysClk0    <= Mmcm_SysClk0;
IntMmcm_SysClk1    <= Mmcm_SysClk1;
IntMmcm_SysClk2    <= Mmcm_SysClk2;
IntMmcm_SysClk3    <= Mmcm_SysClk3;
IntMmcm_SysClk4    <= Mmcm_SysClk4;
IntMmcm_SysClk5    <= Mmcm_SysClk5;
IntMmcm_SysClk6    <= Mmcm_SysClk6;
IntMmcm_Locked     <= Mmcm_Locked;
IntMmcm_AliveOut   <= Mmcm_AliveOut;
IntMmcm_PrimRstOut <= Mmcm_PrimRstOut;
IntMmcm_RstOut     <= Mmcm_RstOut;
IntMmcm_EnaOut     <= Mmcm_EnaOut;
Mmcm_Drp_Di        <= IntMmcm_Drp_Di;
Mmcm_Drp_Addr      <= IntMmcm_Drp_Addr;
Mmcm_Drp_We        <= IntMmcm_Drp_We;
Mmcm_Drp_En        <= IntMmcm_Drp_En;
Mmcm_Drp_Clk       <= IntMmcm_Drp_Clk;
IntMmcm_Drp_Do     <= Mmcm_Drp_Do;
IntMmcm_Drp_Rdy    <= Mmcm_Drp_Rdy;
Mmcm_PsIncDec      <= IntMmcm_PsIncDec;
Mmcm_Psen          <= IntMmcm_Psen;
Mmcm_PsClk         <= IntMmcm_PsClk;
IntMmcm_PsDone     <= Mmcm_PsDone;
IntMmcm_TimeTick_Fast <= Mmcm_TimeTick_Fast;
IntMmcm_TimeTick_Slow <= Mmcm_TimeTick_Slow;
---------------------------------------------------------------------------------------------
-- Processes
---------------------------------------------------------------------------------------------
MainProc : process
begin
IntMmcm_ClkInSel    <= '1' after 100ps; -- Select ClkIn1.
IntMmcm_RstIn       <= '1' after 100ps;
IntMmcm_Drp_Di      <= X"0000" after 100ps;
IntMmcm_Drp_Addr    <= "0000000" after 100ps;
IntMmcm_Drp_We      <= '0' after 100ps;
IntMmcm_Drp_En      <= '0' after 100ps;
IntMmcm_Drp_Clk     <= '0' after 100ps;
IntMmcm_PsIncDec    <= '0' after 100ps;
IntMmcm_Psen        <= '0' after 100ps;
IntMmcm_PsClk       <= '0' after 100ps;
wait for ClockPeriod*100;
--
wait for ClockPeriod*13.3;
IntMmcm_RstIn       <= '0' after 100ps;
wait for ClockPeriod*13.3;
--
assert false
report "That's All Folks !"
severity warning;
wait;
--
end process MainProc;
---------------------------------------------------------------------------------------------
-- Architecture Concurrent Statements
---------------------------------------------------------------------------------------------
-- Generate Clock
TheFrstClock : process
    variable TempOne : std_logic := '0';
begin
    if (TempOne = '0') then
        wait for ClockPeriod/PhaseShift;
        TempOne := '1';
    else
        IntMmcm_ClkIn1 <= '0';
        wait for ClockPeriod/2;
        IntMmcm_ClkIn1 <= '1';
        wait for ClockPeriod/2;
    end if;
end process;
--
TheScndClock : process
    variable TempOne : std_logic := '0';
begin
    if (TempOne = '0') then
        wait for ClockPeriod/PhaseShift;
        TempOne := '1';
    else
        IntMmcm_ClkIn2 <= '0';
        wait for ClockPeriod/2;
        IntMmcm_ClkIn2 <= '0';
        wait for ClockPeriod/2;
    end if;
end process;
-------------------------------------------------------------------------------------------
end MmcmClock_Tester_flow;
