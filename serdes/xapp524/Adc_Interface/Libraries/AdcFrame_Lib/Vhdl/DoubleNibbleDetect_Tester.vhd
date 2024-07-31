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
--  \   \        		Filename:            DoubleNibbleDetect_Tester.vhd
--  /   /        		Date Created:        16 March, 2011
-- /___/   /\    		Date Last Modified:  16 March, 2011
-- \   \  /  \
--  \___\/\___\
--
-- Device:       Virtex-6
-- Author:       defossez
-- Entity Name:  DoubleNibbleDetect_Tester
-- Purpose:      Stimulus file for testbench
-- Tools:        ISE_13.1
-- Limitations:  TESTBENCH / STIMULUS;
--               DON'T USE THIS FILE FOR COMPILATION NOR INTERATION.
--
-- Revision History:
--	Rev.
--
---------------------------------------------------------------------------------------------
library IEEE;
    use IEEE.std_logic_1164.all;
    use IEEE.std_logic_UNSIGNED.all;
    use IEEE.std_logic_textio.all;
    use std.textio.all;
    use IEEE.std_logic_arith.all;
---------------------------------------------------------------------------------------------
entity DoubleNibbleDetect_Tester is
    generic (
        C_StimVecFile : string;
        C_ClockPeriod : time
    );
    port (
        Clock   : out std_logic;
        RstIn   : out std_logic;
        Final   : in std_logic;
        DataIn  : out std_logic_vector(3 downto 0);
        DataOut : in std_logic_vector(3 downto 0)
    );
end DoubleNibbleDetect_Tester;
--
architecture DoubleNibbleDetect_Tester_flow of DoubleNibbleDetect_Tester is
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
-- This file contains the test vectors the simulation will transmit
-- "DataRead_Vec.txt" is a vector file with random data.
constant StimVecFile : string := C_StimVecFile;
constant ClockPeriod : time := C_ClockPeriod;
signal IntClock : std_logic;
---------------------------------------------------------------------------------------------
begin
---------------------------------------------------------------------------------------------
-- Processes
---------------------------------------------------------------------------------------------
MainProc : process
    file TextFile : text open READ_MODE is StimVecFile;
    variable TextIn : string (4 downto 1);
    variable Linelength : line;
    variable IntDataFromFile : std_logic_vector(3 downto 0) := "0000";
begin
-- Put some text on screen
assert false
report CR &
       " This simulation reads data to from a file on disk" & CR &
       " and puts in into a -DoubleNibleDetect- circuit" & CR &
       " The circuit detects twice consecutive same data in the stream and makes" & CR &
       " sure that the output of the circuit never shows the double data" & CR
severity note;
--
RstIn <= '1';
wait for ClockPeriod*35.4;
RstIn <= '0';
--
DataLoop : while not endfile(TextFile) loop
    readline (TextFile, LineLength);    -- read a line
    read (LineLength, TextIn);          -- Put the line in a workable variable
    IntDataFromFile := str_to_stdlvec(TextIn(4 downto 1)); -- Convert and split channels.
    wait until (IntClock'event and IntClock = '1');
    DataIn <= IntDataFromFile after 200 ps;
end loop DataLoop;
--
assert false
report "That's All Folks !"
severity warning;
FILE_CLOSE (TextFile);
wait;
--
end process MainProc;
---------------------------------------------------------------------------------------------
-- Architecture Concurrent Statements
---------------------------------------------------------------------------------------------
-- Generate Clock
TheClock : process
begin
	IntClock <= '0';
	wait for ClockPeriod/2;
	IntClock <= '1';
	wait for ClockPeriod/2;
end process;
Clock <= IntClock;
--
-------------------------------------------------------------------------------------------
end DoubleNibbleDetect_Tester_flow;
