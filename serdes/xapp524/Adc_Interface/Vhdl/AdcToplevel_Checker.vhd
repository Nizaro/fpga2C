---------------------------------------------------------------------------------------------
-- © Copyright 2010, Xilinx, Inc. All rights reserved.
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
--  \   \        		Filename:            AdcToplevel_Checker.vhd
--  /   /        		Date Created:        01 October, 2010
-- /___/   /\    		Date Last Modified:  01 October, 2010
-- \   \  /  \
--  \___\/\___\
--
-- Device:      Virtex-6
-- Author:      defossez
-- Entity Name: AdcToplevel_Checker
-- Purpose:     Stimulus file for testbench
-- Tools:       ISE_13.1
-- Limitations: TESTBENCH / STIMULUS;
--              DON'T USE THIS FILE FOR COMPILATION NOR INTERATION.
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
entity AdcToplevel_Checker is
    generic (
        C_CheckVecFile      : string;  -- File written by this checker VHDL code.
        C_AdcUseIdlyCtrl    : integer; -- 0 = No, 1 = Yes
        C_AdcIdlyCtrlLoc    : string;  -- Location parameter for the used IDELAYCTRL
        C_AdcChnls          : integer; -- Number of ADC in a package
        C_AdcWireInt        : integer; -- 2 = 2-wire, 1 = 1-wire interface
        C_AdcBits           : integer
    );
    port (
        AdcMemClk      : in std_logic;     -- Application clock
        AdcFrmSyncWrn   : in std_logic;
        AdcBitClkAlgnWrn: in std_logic;
        AdcBitClkInvrtd : in std_logic;
        AdcBitClkDone   : in std_logic;
        AdcIdlyCtrlRdy  : in std_logic;
        AdcFrmDataOut   : in std_logic_vector(15 downto 0);
        AdcMemDataOut   : in std_logic_vector(((32/C_AdcWireInt)*((C_AdcChnls/2)*C_AdcWireInt))-1 downto 0);
        AdcMemFlags     : in std_logic_vector((4*(C_AdcChnls/2)*C_AdcWireInt)-1 downto 0);
        AdcMemFull      : in std_logic_vector(((C_AdcChnls/2)*C_AdcWireInt)-1 downto 0);
        AdcMemEmpty     : in std_logic_vector(((C_AdcChnls/2)*C_AdcWireInt)-1 downto 0)
    );
end AdcToplevel_Checker;
--
architecture AdcToplevel_Checker_flow of AdcToplevel_Checker is
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
    variable temp: string (1 downto 1) := "X";
begin
    if (inp = '1') then
        temp := "1";
    elsif (inp = '0') then
        temp := "0";
    end if;
return temp;
end function stdl_to_str;
---------------------------------------------------------------------------------------------
-- Architecture Declarations
---------------------------------------------------------------------------------------------
-- This is the file written with the output of the interface.
constant CheckVecFile : string := C_CheckVecFile;
constant High : std_logic := '1';
---------------------------------------------------------------------------------------------
begin
---------------------------------------------------------------------------------------------
-- Processes
---------------------------------------------------------------------------------------------
CheckProc : process
    file WriteCheckFile : text open WRITE_MODE is CheckVecFile;
    variable OutLinelength : line;
    variable Temp : integer := 0;
begin
--
write (OutLineLength, string'("Output of AdcToplevel -- UUT "), left, 35);
writeline(WriteCheckFile , OutLineLength);
write (OutLineLength, string'(" "), left, 35);
writeline(WriteCheckFile , OutLineLength);
--
CheckFileWrite: while (AdcIdlyCtrlRdy = '1') loop
    if (Temp = 0) then
write (OutLineLength, string'("Frame pattern:      Received Data:                          Flags:     Done "), left, 84);
writeline(WriteCheckFile , OutLineLength);
        Temp := 1;
    else
        wait until (AdcMemClk'event and AdcMemClk = High);      -- Wait until clock edge.
write (OutLineLength, stdlvec_to_str(AdcFrmDataOut), left, 20);
write (OutLineLength, stdlvec_to_str(AdcMemDataOut), left, 40);
write (OutLineLength, stdlvec_to_str(AdcMemFlags), left, 10);
write (OutLineLength, stdl_to_str(AdcBitClkDone), left, 5);
writeline(WriteCheckFile , OutLineLength);
    end if;
end loop CheckFileWrite;

FILE_CLOSE (WriteCheckFile);
assert false
report "That's All for the Checker Folks !"
severity warning;
wait;
--
end process CheckProc;
---------------------------------------------------------------------------------------------
-- Architecture Concurrent Statements
---------------------------------------------------------------------------------------------
--
-------------------------------------------------------------------------------------------
end AdcToplevel_Checker_flow;
