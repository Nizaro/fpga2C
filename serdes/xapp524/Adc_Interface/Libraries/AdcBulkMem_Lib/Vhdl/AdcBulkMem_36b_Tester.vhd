-----------------------------------------------------------------------------------------------
-- � Copyright 2006 - 2009, Xilinx, Inc. All rights reserved.
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
-- /___/  \  /   Vendor: Xilinx
-- \   \   \/    Version:
--  \   \        Filename:              AdcBulkMem_36b_Tester.vhd
--  /   /        Date Last Modified:    Tuesday, July 14, 2009
-- /___/   /\    Date Created:  		Tuesday, July 14, 2009
-- \   \  /  \
--  \___\/\___\
--
-- Device: 		 Virtex-6
-- Entity Name:  AdcBulkMem_36b_Tester
-- Purpose:      Stimulus file for testbench
-- Tools:
-- Limitations:  TESTBENCH / STIMULUS;
--               DON'T USE THIS FILE FOR COMPILATION NOR INTERATION.
--
-- Revision History:
--    Rev.
--
-----------------------------------------------------------------------------------------------
--
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_UNSIGNED.all;
use IEEE.std_logic_textio.all;
use std.textio.all;
use IEEE.std_logic_arith.all;
--
entity AdcBulkMem_36b_Tester is
    generic (
        C_DataInVecFile     : string;
        C_DataOutVecFile    : string;
        C_WriteClockPeriod  : time;
        C_ReadClockPeriod   : time
    );
	port (
		Mem_ClkIn	: out std_logic;
		Mem_EnaIn	: out std_logic;
		Mem_RstIn	: out std_logic;
		Mem_DataIn	: out std_logic_vector(35 downto 0);
		Mem_ClkOut	: out std_logic;
		Mem_EnaOut	: out std_logic;
		Mem_RstOut	: out std_logic;
		Mem_DataOut	: in std_logic_vector(8 downto 0);
		Empty		: in std_logic;
		Middle		: in std_logic;
		Full		: in std_logic
	);
end entity AdcBulkMem_36b_Tester;
--
architecture AdcBulkMem_36b_Tester_struct of AdcBulkMem_36b_Tester is
-----------------------------------------------------------------------------------------------
-- Functions
-----------------------------------------------------------------------------------------------
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
-----------------------------------------------------------------------------------------------
-- Architecture Declarations
-----------------------------------------------------------------------------------------------
constant DataInVecFile      : string := C_DataInVecFile;
constant DataOutVecFile     : string := C_DataOutVecFile;
constant WriteClockPeriod   : time := C_WriteClockPeriod;
constant ReadClockPeriod    : time := C_ReadClockPeriod;
--
signal IntWrClock           : std_logic;
signal IntRdClock           : std_logic;
signal IntMem_RstIn         : std_logic := '1';
signal IntMem_RstOut        : std_logic := '1';
signal IntMem_EnaIn         : std_logic := '0';
signal IntMem_EnaOut        : std_logic := '0';
signal IntMem_DataIn        : std_logic_vector(35 downto 0);
signal IntFullEmpty         : std_logic := '0';
--
signal IntStartRead         : std_logic := '0';
signal IntStartWrite        : std_logic := '1';
signal IntDelayPeriod       : integer := 50;
signal IntWaitStat          : std_logic := '0';
-----------------------------------------------------------------------------------------------
--
begin
--
Mem_EnaIn   <= IntMem_EnaIn;
Mem_DataIn  <= IntMem_DataIn;
Mem_EnaOut  <= IntMem_EnaOut;
Mem_RstIn   <= IntMem_RstIn;
Mem_RstOut  <= IntMem_RstOut;
Mem_ClkIn   <= IntWrClock;
Mem_ClkOut  <= IntRdClock;
-----------------------------------------------------------------------------------------------
-- Processes
-----------------------------------------------------------------------------------------------
-- Full & Empty
TheFifoFullEmpty : process
begin
wait until (IntRdClock'event and IntRdClock = '1');
	if Full = '1' then
		IntFullEmpty <= '1';
	elsif Empty = '1' then
		IntFullEmpty <= '0';
	end if;
end process;
-----------------------------------------------------------------------------------------------
-- Delay betwween write and read or vice versa
TheRdWait : process
begin
    wait until (IntFullEmpty = '1' and IntMem_EnaIn = '0' and IntWaitStat = '0') or -- Write
               (IntFullEmpty = '0' and IntMem_EnaOut = '0' and IntWaitStat = '1'); -- Read
    wait until (IntWrClock'event and IntWrClock = '1');
        DelayLoop : while IntDelayPeriod /= 1 loop
            Wait until (IntWrClock'event and IntWrClock = '1');
            IntDelayPeriod <= IntDelayPeriod - 1;
        end loop DelayLoop;
        Wait until (IntWrClock'event and IntWrClock = '1');
        if IntFullEmpty = '1' then
            IntStartRead <= '1';
            IntStartWrite <= '0';
            IntDelayPeriod <= 50;
        else --  IntFullEmpty = '0'
            IntStartRead <= '0';
            IntStartWrite <= '1';
            IntDelayPeriod <= 50;
        end if;
end process TheRdWait;
-----------------------------------------------------------------------------------------------
-- Write to the FIFO-Memory.
TheFifoWrite : process
	file TextFileIn: TEXT open READ_MODE is DataInVecFile;
	variable RdLineLength : line;
	variable TextIn : string (1 to 32);
	variable IntDatIn : std_logic_vector (31 downto 0);
begin
wait until IntMem_RstOut = '0' and IntStartWrite = '1';
wait for WriteClockPeriod*20.3;
wait until (IntWrClock'event and IntWrClock = '1');
IntMem_EnaIn <= '1';
IntWaitStat <= '0';
DataWriteLoop : while IntFullEmpty = '0' loop
	if Full = '1' then
		assert false
		report "    Fifo Full; exiting."
		severity note;
		exit DataWriteLoop;
	end if;
	if endfile(TextFileIn) then
		assert false
		report "    Data file read end; exiting."
		severity note;
		exit DataWriteLoop;
	end if;
	readline (TextFileIn, RdLineLength);  			-- read one line of the text file.
	read (RdLineLength, TextIn);
	IntDatIn := str_to_stdlvec(TextIn); 			-- Convert to std_logic_vector
	assert false
	report "   File read value:     " & stdlvec_to_str(IntDatIn)
	severity note;
	wait until (IntWrClock'event and IntWrClock = '1');
	IntMem_DataIn <= "0000" & IntDatIn;
end loop DataWriteLoop;
wait until (IntWrClock'event and IntWrClock = '1');
IntMem_EnaIn <= '0';
IntWaitStat <= '1';
end process TheFifoWrite;
-----------------------------------------------------------------------------------------------
-- Read from the FIFO-Memory.
TheFifoRead : process
	file TextFileOut: TEXT open WRITE_MODE is DataOutVecFile;
	variable WrLineLength : line;
	variable IntDatOut : string (1 to 8);
begin
wait until IntMem_RstOut = '0' and  IntStartRead = '1';
wait until (IntRdClock'event and IntRdClock = '1');
IntMem_EnaOut <= '1';
DataReadLoop : while IntFullEmpty = '1' loop
-- DataReadLoop : loop
		if Empty = '1' then
		assert false
		report "    Fifo Empty; exiting."
		severity note;
		exit DataReadLoop;
	end if;
	-- Write the read data from the memory in a file.
	wait until (IntRdClock'event and IntRdClock = '1');
	IntDatOut := stdlvec_to_str(Mem_DataOut(7 downto 0));	-- FIFO data output.
	write (WrLineLength, IntDatOut);
	writeline (TextFileOut, WrLinelength);
end loop DataReadLoop;
wait until (IntRdClock'event and IntRdClock = '1');
IntMem_EnaOut <= '0';
end process TheFifoRead;
-----------------------------------------------------------------------------------------------
-- Architecture Concurrent Statements
-----------------------------------------------------------------------------------------------
-- Generate Reset
TheReset : process
	variable TempRst : std_logic := '0';
begin
	if (TempRst = '0') then
		wait for WriteClockPeriod*150;
		TempRst := '1';
	else
		IntMem_RstIn <= '0';
		wait for ReadClockPeriod*15;
		IntMem_RstOut <= '0';
	end if;
end process;
-- Generate Clocks
TheWrClock : process
begin
	IntWrClock <= '0';
	wait for WriteClockPeriod/2;
	IntWrClock <= '1';
	wait for WriteClockPeriod/2;
end process;
--
TheRdClock : process
begin
	IntRdClock <= '0';
	wait for ReadClockPeriod/2;
	IntRdClock <= '1';
	wait for ReadClockPeriod/2;
end process;
--
-----------------------------------------------------------------------------------------------
end architecture AdcBulkMem_36b_Tester_struct;
--
