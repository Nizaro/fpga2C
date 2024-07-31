-----------------------------------------------------------------------------------------------
-- � Copyright 2008 - 2009, Xilinx, Inc. All rights reserved.
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
--  \   \        Filename: AdcMem_Tester.vhd
--  /   /        Date Last Modified:
-- /___/   /\    Date Created:  07 Apr 08
-- \   \  /  \
--  \___\/\___\
--
-- Device: Virtex-6, 7-Series
-- Entity Name:  AdcMem_Tester
-- Purpose: Stimulus file for testbench
-- Tools:
-- Limitations: TESTBENCH / STIMULUS;
--				DON'T USE THIS FILE FOR COMPILATION NOR INTERATION.
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
entity AdcMem_Tester is
	generic (
        C_AdcWireInt	: integer;
        C_ClockPeriod   : time;
        C_WrPhase       : real;
        C_RdPhase       : real;
        C_StimVecFile   : string
    );
    port (
        ClkIn	: out std_logic;
        EnaIn	: out std_logic;
        RstIn	: out std_logic;
        DatIn	: out std_logic_vector((32/C_AdcWireInt)-1 downto 0);
        ClkOut	: out std_logic;
        RstOut	: out std_logic;
        EnaOut	: out std_logic;
        DatOut	: in std_logic_vector((32/C_AdcWireInt)-1 downto 0);
        Flags	: in std_logic_vector(3 downto 0);
        Full    : in std_logic;
        Empty   : in std_logic
    );
end  AdcMem_Tester;
--
architecture AdcMem_Tester_flow of AdcMem_Tester  is
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
constant ClockPeriod    : time      := C_ClockPeriod; --
constant WrPhase        : real      := C_WrPhase    ; --
constant RdPhase        : real      := C_RdPhase    ; --
constant DataVecFile    : string    := C_StimVecFile; --
--
signal IntWrState   : std_Logic;
signal IntWrDone    : std_Logic;
signal IntRdDone    : std_Logic;
signal IntRdState   : std_Logic;
signal IntClkIn	    : std_logic;
signal IntEnaIn	    : std_logic;
signal IntRstIn	    : std_logic;
signal IntDatIn	    : std_logic_vector((32/C_AdcWireInt)-1 downto 0);
signal IntClkOut	: std_logic;
signal IntRstOut	: std_logic;
signal IntEnaOut	: std_logic;
signal IntDatOut	: std_logic_vector((32/C_AdcWireInt)-1 downto 0);
signal IntFlags	    : std_logic_vector(3 downto 0);
signal IntFull      : std_logic;
signal IntEmpty     : std_logic;
-----------------------------------------------------------------------------------------------
begin
ClkIn	<= IntClkIn;	-- out
EnaIn	<= IntEnaIn;	-- out
RstIn	<= IntRstIn;	-- out
DatIn	<= IntDatIn;	-- out
ClkOut	<= IntClkOut;	-- out
RstOut	<= IntRstOut;	-- out
EnaOut	<= IntEnaOut;	-- out
IntDatOut	<= DatOut;	-- in
IntFlags	<= Flags;   -- in
IntFull     <= Full;    -- in
IntEmpty    <= Empty;   -- in
-----------------------------------------------------------------------------------------------
-- Processes
-----------------------------------------------------------------------------------------------
MainProc : process
begin
-- Put some text on screen
assert false
report CR &
       " Simulation of AdcMem. " & CR &
       " The AdcMem has an output of 32 bits in 1-wire mode and 16 bits in 2-wire mode. " & CR &
       " 1-Wire or 2-Wire is set thorugh the generic C_AdcWireInt (Adc Wire Interface)." & CR &
       " The simulation reads data from a text file, lockated in the same directory as " & CR &
       " the vhdl source code. File is in this case named: -- AdcMem_Vec.txt --." & CR &
       " " & CR
severity note;
--
IntRstIn    <= '1' after 100 ps;
IntRstOut   <= '1' after 100 ps;
IntWrState  <= '0';
IntRdState  <= '0';
IntEnaIn    <= '0';  -- Write enable
IntEnaOut   <= '0';  -- Read enable
wait for Clockperiod*22.2;
IntRstIn    <= '0' after 100 ps;
IntRstOut   <= '0' after 100 ps;
wait for Clockperiod*7.3;
-- Memory Write and Read
----------------------------------------------------------------------------------------------
    wait until (IntClkIn'event and IntClkIn = '1');
    IntWrState  <= '1' after 100 ps;
    IntEnaIn    <= '1' after 100 ps;  -- Write enable
    --IntRdState  <= '0';
    --IntEnaOut   <= '0';  -- Read enable
-- From here the "TheDataWr" process takes over.
-- While the Stimuli file is not at its end.
-- and while the status flags indicate a now full state (IntFlags = "1000").
-- Write data to the LUT memory.
-- Wnen the memory flags indicate full (IntFlags = "1000")
    wait until (IntWrDone = '1');
    wait until (IntClkOut'event and IntClkOut = '1');
    IntWrState  <= '0' after 100 ps;
    IntEnaIn    <= '0' after 100 ps;
    --IntRdState  <= '0' after 100 ps;
    --IntEnaOut   <= '0' after 100 ps;  -- Read enable
----------------------------------------------------------------------------------------------
    wait until (IntClkOut'event and IntClkOut = '1');
    --IntWrState  <= '0' after 100 ps;
    --IntEnaIn    <= '0' after 100 ps;  -- Write enable
    IntRdState  <= '1' after 100 ps; -- reading
    IntEnaOut   <= '1' after 100 ps;
-- The "TheDataRd" takes over from here.
-- While the LUT memory is not empty (IntFlags = "0001"), read.
    wait until (IntRdDone = '1');
    wait until (IntClkOut'event and IntClkOut = '1');
    --IntWrState  <= '0' after 100 ps;
    --IntEnaIn    <= '0' after 100 ps;
    IntRdState  <= '0' after 100 ps;
    IntEnaOut   <= '0' after 100 ps;
 ---------------------------------------------------------------------------------------------
    wait until (IntClkIn'event and IntClkIn = '1');
    IntWrState <= '1' after 100 ps;  -- writing
    IntEnaIn   <= '1' after 100 ps;  -- Write enable
    --IntRdState  <= '0' after 100 p after 100 pss;
    --IntEnaOut   <= '0' after 100 p after 100 pss;  -- Read enable
    wait until (IntWrDone = '1');
    wait until (IntClkOut'event and IntClkOut = '1');
    IntWrState  <= '0' after 100 ps;
    IntEnaIn    <= '0' after 100 ps;
    --IntRdState  <= '0' after 100 ps;
    --IntEnaOut   <= '0' after 100 ps;  -- Read enable
 ---------------------------------------------------------------------------------------------
    wait until (IntClkOut'event and IntClkOut = '1');
    --IntWrState  <= '0' after 100 ps;
    --IntEnaIn    <= '0' after 100 ps;  -- Write enable
    IntRdState  <= '1' after 100 ps; -- reading
    IntEnaOut   <= '1' after 100 ps;
-- The "TheDataRd" takes over from here.
-- While the LUT memory is not empty (IntFlags = "0001"), read.
    wait until (IntRdDone = '1');
    wait until (IntClkOut'event and IntClkOut = '1');
    --IntWrState  <= '0' after 100 ps;
    --IntEnaIn    <= '0' after 100 ps;
    IntRdState  <= '0' after 100 ps;
    IntEnaOut   <= '0' after 100 ps;
----------------------------------------------------------------------------------------------
--
wait for Clockperiod*7.3;
assert false
report "That's All Folks !"
severity warning;
wait;
end process MainProc;
-----------------------------------------------------------------------------------------------
-- Architecture Concurrent Statements
-----------------------------------------------------------------------------------------------
-- Write data from file.
TheDataWr : process
    file TextFile : text open READ_MODE is DataVecFile;
	variable LineLength : line;
	variable TextIn : string (64 downto 1);
    variable IntDataFromFile  : std_logic_vector((32/C_AdcWireInt)-1 downto 0);
begin
    wait until (IntWrState = '1');-- If WRITE
    assert false
    report CR & " Start Writing To Memory" & CR
    severity note;
    IntWrDone <= '0' after 100 ps;
    WrTstLoop : while (IntFlags /= "1000") loop  -- While not FULL, write
        if not endfile (TextFile) then
            readline (TextFile, LineLength);    -- read a line.
            read (LineLength, TextIn);          -- Put the line in a workable variable.
            IntDataFromFile := str_to_stdlvec(TextIn((32/C_AdcWireInt) downto 1)); -- Convert
            wait until (IntClkIn'event and IntClkIn = '1');
            IntDatIn <= IntDataFromFile after 100 ps;
        else
            exit;
        end if;
    end loop WrTstLoop;
    wait until (IntClkIn'event and IntClkIn = '1');
    IntWrDone <= '1' after 100 ps;
    assert false
    report CR & " Stop Writing To Memory" & CR
    severity note;
    --FILE_CLOSE (TextFile);
end process TheDataWr;
-----------------------------------------------------------------------------------------------
-- Read data from memory
TheDataRd : process
begin
wait until (IntRdState = '1'); -- If READ
    assert false
    report CR & " Start Reading From Memory" & CR
    severity note;
    IntRdDone <= '0' after 100 ps;
    RdDataLoop : while IntFlags /= "0001" loop -- While not EMPTY, read
        wait until (IntClkOut'event and IntClkOut = '1');
    end loop RdDataLoop;
    wait until (IntClkOut'event and IntClkOut = '1');
    IntRdDone <= '1' after 100 ps;
    assert false
    report CR & " Stop Reading From Memory" & CR
    severity note;
--wait;
end process TheDataRd;
-----------------------------------------------------------------------------------------------
-- Generate Write Clock
TheWrClk : process
	variable Temp : std_logic := '0';
begin
	if (Temp = '0') then
		wait for ClockPeriod/WrPhase;
		Temp := '1';
	else
        IntClkIn <= '0';
        wait for ClockPeriod/2;
        IntClkIn <= '1';
        wait for ClockPeriod/2;
    end if;
end process TheWrClk;
-----------------------------------------------------------------------------------------------
-- Generate Read Clock
TheRdClk : process
	variable Temp : std_logic := '0';
begin
	if (Temp = '0') then
		wait for ClockPeriod/RdPhase;
		Temp := '1';
	else
		IntClkOut <= '1';
		wait for ClockPeriod/2;
		IntClkOut <= '0';
		wait for ClockPeriod/2;
	end if;
end process TheRdClk;
-----------------------------------------------------------------------------------------------
end  AdcMem_Tester_flow;
--
