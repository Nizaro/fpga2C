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
--  \   \        		Filename:            AdcData_Tester.vhd
--  /   /        		Date Created:        01 August, 2011
-- /___/   /\    		Date Last Modified:  01 August, 2011
-- \   \  /  \
--  \___\/\___\
--
-- Device:       Series-7 and Virtex-6
-- Author:       defossez
-- Entity Name:  AdcData_Tester
-- Purpose:      Stimulus file for testbench
-- Tools:        ISE_13.2
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
entity AdcData_Tester is
    generic (
        C_StimVecFile       : string;
        C_AdcWireInt        : integer;
        C_NumOfBitSlips     : integer;
        C_SwapBits          : std_logic;
        C_DoneHigh          : integer;
        C_SimClockPeriod    : time
    );
    port (
        DatD0_n         : out std_logic;
        DatD0_p         : out std_logic;
        DatD1_n         : out std_logic;
        DatD1_p         : out std_logic;
        DatClk          : out std_logic;
        DatClkDiv       : out std_logic;
        DatRst          : out std_logic;
        DatEna          : out std_logic;
        DatDone         : out std_logic;
        DatBitSlip_p    : out std_logic;
        DatBitSlip_n    : out std_logic;
        DatSwapMux      : out std_logic;
        DatMsbRegEna    : out std_logic;
        DatLsbRegEna    : out std_logic;
        DatReSync       : out std_logic;
        DatOut          : in std_logic_vector(31 downto 0)
    );
end AdcData_Tester;
--
architecture AdcData_Tester_flow of AdcData_Tester is
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

function stdl_to_str(inp: std_logic) return string is
begin
		if (inp = '1') then
			return "1";
		elsif (inp = '0') then
			return "0";
        elsif (inp = 'Z') then
            return "Z";
        else
            return "X";
		end if;
end function stdl_to_str;

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
constant DataVecFile : string := C_StimVecFile;
-- This value indicates the total number of bitslips teh simulation is going to exectute
-- Before continuing.
constant NumberOfBitslips : integer := C_NumOfBitSlips;
-- This value indicates if the simulation is going to indicate that a bitswap must be
-- performed. 1 = swap (pull DatSwapMux high).
constant SwapBits : std_logic := C_SwapBits;
-- This value detemines when the DatDone pin is pulled high.
-- DatDone is normally the indication that the frame synchronisation logic is done.
-- This number is multiplied with the ClockPeriod to determine the time.
-- The DatDone pin is then synchronized to DatClkDiv.
constant DoneHigh : integer := C_DoneHigh;
--
constant ClockPeriod : time := C_SimClockPeriod;
--
signal IntDatD0_n : std_logic;
signal IntDatD0_p : std_logic;
signal IntDatD1_n : std_logic;
signal IntDatD1_p : std_logic;
signal IntDatClk : std_logic := '0';
signal IntDatClkDiv : std_logic := '0';
signal IntDatRst : std_logic := '1';
signal IntDatEna : std_logic := '0';
signal IntDatReSync : std_logic := '0';
signal IntDatDone : std_logic := '0';
signal IntDatBitSlip_p : std_logic := '0';
signal IntDatBitSlip_n : std_logic := '0';
signal IntDatSwapMux   : std_logic := '0';
signal IntDatMsbRegEna : std_logic := '0';
signal IntDatLsbRegEna : std_logic := '1';

signal IntSlipCnt : std_logic_vector(3 downto 0) := X"0";
---------------------------------------------------------------------------------------------
begin
--
DatClk <= IntDatClk;
DatClkDiv <= IntDatClkDiv;
DatRst <= IntDatRst;
DatEna <= IntDatEna;
DatDone <= IntDatDone;
DatReSync <= IntDatReSync;
DatBitSlip_p <= IntDatBitSlip_p;
DatBitSlip_n <= IntDatBitSlip_n;
DatSwapMux <= IntDatSwapMux;
DatMsbRegEna <= IntDatMsbRegEna;
DatLsbRegEna <= IntDatLsbRegEna;
DatD0_p <= IntDatD0_p;
DatD0_n <= IntDatD0_n;
DatD1_p <= IntDatD1_p;
DatD1_n <= IntDatD1_n;
---------------------------------------------------------------------------------------------
-- Processes
---------------------------------------------------------------------------------------------
MainProc : process
    variable IntSlipCnt : std_logic_vector(3 downto 0) := X"0";
    variable IntSlipNum : std_logic_vector(3 downto 0) := X"0";
    variable IntSlipStat : integer := 0;
    variable IntSwapStat : integer := 0;
begin
-- Put some text on screen
    assert false
    report CR &
        " This simulation reads data to from a file on disk and puts it into the AdcData circuit" & CR &
        " The circuit is the data part of a Virtex-6 ADC interface It can be used in 1-wire or 2-wire mode." & CR &
        "   " & CR &
        " This simulation is made to evaluate the data reception part of the design. Data out of this simulation " & CR &
        " might not be correct as such, but it is the data movement and control that is evaluated here. " & CR &
        " The data circuit acts under control of signals provided by the Frame logic. These signals are here " & CR &
        " simulated output signals and might thus not arrive on the correct place in the simulation. " & CR &
        " Also, the dat transmission will always start at a rising edge of teh clock, what is not always the case " & CR &
        " with a real design. " & CR &
        " " & CR &
        " To simulate a real working design, this Data part must be simulated together with the Frame part. " & CR
    severity note;
--
    wait for ClockPeriod*35.4;
    IntDatRst <= '0';
    wait for ClockPeriod*16; -- wait a number of CLKDIV cycles. Normally done per state machine.
    IntDatEna <= '1';
    wait for ClockPeriod*DoneHigh; -- wait until the fake DONE goes high after "ClockPeriod * constant(DoneHigh)".
    wait until (IntDatClkDiv'event and IntDatClkDiv = '1');
    --wait for ClockPeriod;
    IntDatDone <= '1';

    Enabled : while (IntDatDone = '1') loop
        wait until (IntDatClkDiv'event and IntDatClkDiv = '1');
        IntSlipCnt := IntSlipCnt + 1;
        if (IntSlipCnt = X"E" and IntSlipStat = 0 and IntSlipNum /= 6) then
            IntDatBitSlip_p <= '1';
            IntSlipStat := 1;
            IntSlipNum := IntSlipNum + 1;
        elsif (IntSlipCnt = X"E" and IntSlipStat = 1 and IntSlipNum /= 6) then
            IntDatBitSlip_n <= '1';
            IntSlipStat := 0;
            IntSlipNum := IntSlipNum + 1;
        else
            IntDatBitSlip_p <= '0';
            IntDatBitSlip_n <= '0';
         end if;
         --
         if (IntSwapStat = 1) then
             IntDatMsbRegEna <= not IntDatMsbRegEna;
             IntDatLsbRegEna <= not IntDatLsbRegEna;
         end if;
         --
         if (IntSlipNum = 5 and IntSlipCnt =X"7") then
             IntDatSwapMux <= SwapBits;
             IntSwapStat := 1;
         end if;
    end loop Enabled;
--
end process MainProc;
---------------------------------------------------------------------------------------------
-- Architecture Concurrent Statements
---------------------------------------------------------------------------------------------
-- Raed and transmit data
TheData : process
    file TextFile : text open READ_MODE is DataVecFile;
    variable TextIn : string (32 downto 1);
    variable Linelength : line;
    variable IntDataMsb_1w : std_logic_vector(15 downto 0);
    variable IntDataLsb_1w : std_logic_vector(15 downto 0);
    variable IntDataMsb_2w : std_logic_vector(7 downto 0);
    variable IntDataLsb_2w : std_logic_vector(7 downto 0);
    variable IntBitCnt : integer := 0;
    variable IntClkEdge : integer := 0;
begin
    One_Wire : while C_AdcWireInt = 1 loop
        OneLoop : while not endfile(TextFile) loop
            readline (TextFile, LineLength);    -- read a line
            read (LineLength, TextIn);          -- Put the line in a workable variable
            IntDataMsb_1w := str_to_stdlvec(TextIn(32 downto 17)); -- Convert and split channels.
            IntDataLsb_1w := str_to_stdlvec(TextIn(16 downto 1));
    assert false
    report " Line read from file: " & TextIn & CR
    severity note;
            Serial_1w : while IntBitCnt /= 16 loop
            wait until (IntDatClk'event and IntDatClk = '1');
                IntDatD0_p <= IntDataLsb_1w(IntBitCnt) after 100 ps; -- out bit
                IntDatD1_p <= IntDataMsb_1w(IntBitCnt) after 100 ps; -- out bit
            wait until (IntDatClk'event and IntDatClk = '0');
                IntDatD0_n <= not IntDataLsb_1w(IntBitCnt+1) after 100 ps; -- out bit
                IntDatD1_n <= not IntDataMsb_1w(IntBitCnt+1) after 100 ps; -- out bit
            IntBitCnt := IntBitCnt + 2;
    assert false
    report " Serialized Data: " & CR &
           " DatD0 n/p (LSB): " & stdl_to_str(IntDatD0_n) & "/" & stdl_to_str(IntDatD0_p) & CR &
           " DatD1 n/P (MSB): " & stdl_to_str(IntDatD1_n) & "/" & stdl_to_str(IntDatD1_p) & CR
     severity note;
            end loop Serial_1w;
                IntBitCnt := 0;
        end loop OneLoop;
        exit One_Wire;
    end loop One_wire;
    --
    Two_Wire : while C_AdcWireInt = 2 loop
        TwoLoop : while not endfile(TextFile) loop
            readline (TextFile, LineLength);    -- read a line
            read (LineLength, TextIn);          -- Put the line in a workable variable
            IntDataMsb_2w := str_to_stdlvec(TextIn(16 downto 9)); -- Convert and split channels.
            IntDataLsb_2w := str_to_stdlvec(TextIn(8 downto 1));
            assert false
            report " Line read from file: " & TextIn & CR
            severity note;
            --
            Serial_2w : while IntBitCnt /= 8 loop
            if IntClkEdge = 0 then
            -- start transmit alwayas on rising IntDatClk edge.
                wait until (IntDatClk'event and IntDatClk = '1');
                    IntDatD0_p <= IntDataLsb_2w(IntBitCnt) after 100 ps; -- out bit
                    IntDatD0_n <= not IntDataLsb_2w(IntBitCnt) after 100 ps; -- out bit
                    IntDatD1_p <= IntDataMsb_2w(IntBitCnt) after 100 ps; -- out bit
                    IntDatD1_n <= not IntDataMsb_2w(IntBitCnt) after 100 ps; -- out bit
                IntBitCnt := IntBitCnt + 1;
                IntClkEdge := 1;
            else -- IntClkEdge = 1;
            -- From then on transmit data on every clock edge, rising and falling.
                wait until (IntDatClk'event);
                    IntDatD0_p <= IntDataLsb_2w(IntBitCnt) after 100 ps; -- out bit
                    IntDatD0_n <= not IntDataLsb_2w(IntBitCnt) after 100 ps; -- out bit
                    IntDatD1_p <= IntDataMsb_2w(IntBitCnt) after 100 ps; -- out bit
                    IntDatD1_n <= not IntDataMsb_2w(IntBitCnt) after 100 ps; -- out bit
                IntBitCnt := IntBitCnt + 1;
            end if;
    assert false
    report " Serialized Data: " & CR &
           " DatD0 n/p (LSB): " & stdl_to_str(IntDatD0_n) & "/" & stdl_to_str(IntDatD0_p) & CR &
           " DatD1 n/P (MSB): " & stdl_to_str(IntDatD1_n) & "/" & stdl_to_str(IntDatD1_p) & CR
     severity note;

            end loop Serial_2w;
                IntBitCnt := 0;
        end loop TwoLoop;
        exit Two_Wire;
    end loop Two_wire;
    assert false
    report "That's All Folks !"
    severity warning;
    wait;
end process TheData;
---------------------------------------------------------------------------------------------
-- Generate Clocks
TheClock : process
begin
    IntDatClk  <= '1';
    wait for ClockPeriod/2;
    IntDatClk  <= '0';
    wait for ClockPeriod/2;
end process TheClock;
--
TheClockDiv : process
begin
    IntDatClkDiv <= '0';
    wait for ClockPeriod*2;
    IntDatClkDiv <= '1';
    wait for ClockPeriod*2;
end process TheClockDiv;
-------------------------------------------------------------------------------------------
end AdcData_Tester_flow;
--
