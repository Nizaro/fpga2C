---------------------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /   
-- \   \   \/    © Copyright 2011 Xilinx, Inc. All rights reserved.
--  \   \        This file contains confidential and proprietary information of Xilinx, Inc.
--  /   /        and is protected under U.S. and international copyright and other
-- /___/   /\    intellectual property laws.
-- \   \  /  \    
--  \___\/\___\ 
-- 
---------------------------------------------------------------------------------------------
-- Device:              
-- Author:              defossez
-- Entity Name:         AppsRstEna_Tester
-- Purpose:             <purpose of this file>
-- Tools:               
-- Limitations:  TESTBENCH / STIMULUS;
--               DON'T USE THIS FILE FOR COMPILATION NOR INTERATION.
--
-- Vendor:              Xilinx Inc.
-- Version:              
-- Filename:            AppsRstEna_Tester.vhd
-- Date Created:        03 October, 2011
-- Date Last Modified:  03 October, 2011
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
    use IEEE.std_logic_textio.all;
    use std.textio.all;
    use IEEE.std_logic_arith.all;
---------------------------------------------------------------------------------------------
entity AppsRstEna_Tester is
    port (
        Locked      : out std_logic;
        Rst         : out std_logic;
        Ena         : out std_logic;
        SysClkIn    : out std_logic;
        ExtRst      : out std_logic;
        ReadyIn     : out std_logic;
        ClkIn       : out std_logic;
        PrimRstOut  : in std_logic;
        RstOut      : in std_logic;
        EnaOut      : in std_logic
    );
end AppsRstEna_Tester;
--
architecture AppsRstEna_Tester_flow of AppsRstEna_Tester is
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
constant ClockPeriod : time := 8 ns;
constant FactorOne : integer := 2;      -- ClockPeriod/Factor... = clock cycle
constant FactorTwo : integer := 5;
constant PhaseShiftOne : integer := 1;  -- ClockPeriod/PhaseShift.. = start of clock delay.
constant PhaseShiftTwo : integer := 8;
signal IntLocked      : std_logic; -- out
signal IntRst         : std_logic; -- out
signal IntEna         : std_logic; -- out
signal IntSysClkIn    : std_logic; -- out
signal IntExtRst      : std_logic; -- out
signal IntReadyIn     : std_logic := '0'; -- out
signal IntClkIn       : std_logic; -- out
signal IntPrimRstOut  : std_logic; -- in
signal IntRstOut      : std_logic; -- in
signal IntEnaOut      : std_logic;  -- in
---------------------------------------------------------------------------------------------
begin
--
Locked   <= IntLocked;      -- out
Rst      <= IntRst;         -- out
Ena      <= IntEna;         -- out
SysClkIn <= IntSysClkIn;    -- out
ExtRst   <= IntExtRst;      -- out
ReadyIn  <= IntReadyIn;     -- out
ClkIn    <= IntClkIn;       -- out     
IntPrimRstOut <=  PrimRstOut;  -- in
IntRstOut     <=  RstOut;      -- in
IntEnaOut     <=  EnaOut;      -- in
---------------------------------------------------------------------------------------------
-- Processes
---------------------------------------------------------------------------------------------
MainProc : process
begin
IntLocked <= '0';
IntRst <= '1';
IntEna <= '0';
IntExtRst <= '0'; -- Alway activated.
IntReadyIn <= '0';
wait for ClockPeriod*34;
wait for ClockPeriod/3.5; -- make sure that the reset appears asynchronous.
IntRst <= '0';  -- System reset is released.
wait for ClockPeriod*3;
IntEna <= '1';  -- Stuff gets enabled.
-- In principle the MMCM starts running here and after a while LOCKED goes high.
-- This behavior is faked here.
wait for ClockPeriod*53.2;
IntLocked <= '1';
-- The reset that runs synchronous with teh raw clock can now go high.
wait until IntPrimRstOut = '0';
-- When the primary reset is released, teh IDLEAYCTRLler can start running.
-- When the IDELAYCTRLler is RDY this signal goes high.
wait for ClockPeriod*25; -- Time for the fake IDLEAYCTRL to get RDY.
IntReadyIn <= '1';
wait for ClockPeriod*50;
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
TheSysClkIn : process
    variable TempOne : std_logic := '0';
begin
    if (TempOne = '0') then
        wait for ClockPeriod/PhaseShiftOne;
        TempOne := '1';
    else
    	IntSysClkIn <= '0';
    	wait for ClockPeriod/FactorOne;
    	IntSysClkIn <= '1';
    	wait for ClockPeriod/FactorOne;
    end if;
end process TheSysClkIn;
--
TheClkIn : process
    variable TempTwo : std_logic := '0';
begin
    if (TempTwo = '0') then
        wait for ClockPeriod/PhaseShiftTwo;
        Temptwo := '1';
    else
        IntClkIn <= '0';
        wait for ClockPeriod/FactorTwo;
        IntClkIn <= '1';
        wait for ClockPeriod/FactorTwo;
   end if;
end process TheClkIn;
--
-------------------------------------------------------------------------------------------
end AppsRstEna_Tester_flow;
