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
--  \   \        		Filename:            AdcToplevel_Tester.vhd
--  /   /        		Date Created:        17 December, 2010
-- /___/   /\    		Date Last Modified:  17 December, 2010
-- \   \  /  \          
--  \___\/\___\
-- 
-- Device:       Virtex-6
-- Author:       defossez
-- Entity Name:  AdcToplevel_Tester
-- Purpose:      Stimulus file for testbench
-- Tools:        ISE_12.4 ISIM
--               This file simulates an 2 channel, 16 bit serial LVDS ADC device.
--               this stimulus file is based upon the specified settings for a
--               Texas Instruments ADC64xx device.
--                  (14 or 16 bit, DDR 2-wire mode, Byte output and MSB first)
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
-- PDNB :       0 = Normal Operation / 1 is channel A power down.
-- PDNA :       0 = Normal Operation / 1 is channel B power down.
-- REMARK:  Above signals are from the ADS62xx ADC family.
--          The ADS64xx family has only one power down pin (PDN).
--          This simulation model uses the feature of the ADS62xx family because it 
--          makes the model somewhat easier to use in simulation environments.
-- POWERON      1 = ADC global power down added to the model to simulate ON-OFF.
--
-- Only Parallel control of the ADC is implemented.
-- The ADC provides bits in "byte" (default) format, meaning
--  0, D6, D5, D4, D3, D2, D1, D0       MSB or D0, D1, D2, D3, D4, D5, D6, 0     LSB
--  0, D13, D12, D11, D10, D9, D8, D7          D7, D8, D9, D10, D11, D12, D13, 0
--
-- CFG1 :       00 = DDR bit clock, 1-wire mode  <-- SUPPORTED
--              01 = Not used
--              10 = SDR bit clock, 2-wire
--              11 = DDR bit clock, 2-wire  <-- SUPPORTED
-- CFG2 :       00 = 14x serialisation, only in 2-wire SDR: falling edge bit clock
--              01 = 16x serialisation, only in 2-wire SDR: falling edge bit clock <- SUPPORTED
--              10 = 16x serialisation, only in 2-wire SDR: rising edge bit clock
--              11 = 14x serialisation, only in 2-wire SDR: rising edge bit clock
-- CFG3 :       MUST ALWAYS BE LOW
-- CFG4 :       00 = MSB, 2s complement |
--              01 = MSB, offset binary |
--              10 = LSB, Offset binary +---> Must be coded in the stimulus files.
--              11 = LSB, 2s complement |
-- SCLK, SDATA  00 = Normal operation
--              01 = Receiver align test pattern
--              10 = Global power down
--              11 = Clock edge align test pattern.
-- SEN          NOT USED, MUST BE LOW, in simulation, has to do with analog side of the ADC
-- RESET        MUST ALWAYS BE HIGH
---------------------------------------------------------------------------------------------
entity AdcToplevel_Tester is
    port (
        PDNB            : out std_logic; 
        PDNA            : out std_logic;
        CFG1            : out std_logic_vector(1 downto 0);
        CFG2            : out std_logic_vector(1 downto 0);
        CFG3            : out std_logic;
        CFG4            : out std_logic_vector(1 downto 0);
        SEN             : out std_logic;
        SCLK            : out std_logic;  
        SDATA           : out std_logic;
        RESET           : out std_logic;
        POWERON         : out std_logic;
        SysRefClk       : out std_logic;     -- 200 MHz for IODELAYCTRL from application
        AdcMemClk       : out std_logic;     -- Application clock
        AdcIntrfcRst    : out std_logic;
        AdcIntrfcEna    : out std_logic;
        AdcReSync       : out std_logic;
        AdcMemRst       : out std_logic;
        AdcMemEna       : out std_logic
    );
end AdcToplevel_Tester;
--
architecture AdcToplevel_Tester_flow of AdcToplevel_Tester is
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
    variable temp: string(1 downto 1) := "X";
begin
    if (inp = '1') then
        temp := "1";
    elsif (inp = '0') then
        temp := "0"; 
    end if;
return temp;
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
constant High : std_logic := '1';
constant Low : std_logic := '0';
constant ClockPeriod : time := 8 ns; -- 125 MHz (Sample frequency)
--
signal IntClk_n : std_logic;
signal IntClk_p : std_logic;
signal IntAppsSysClk : std_logic;
signal IntSysRefClk : std_logic;
---------------------------------------------------------------------------------------------
begin
---------------------------------------------------------------------------------------------
-- Processes
---------------------------------------------------------------------------------------------
MainProc : process
--
begin
-- Put some text on the "transcript" screen
assert false
report CR &
       " FPGA:        Virtex-6 or 7-Series device. " & CR &
       " ========================================= " & CR &
       " ADC interface signals" & CR
severity note;
-- Start
PDNB         <= '0'; -- ADC channel 1 power down option.
PDNA         <= '0'; -- ADC channel 0 power down option.
CFG1         <= "11"; -- "11" = DDR, 2-wire and "00" = DDR, 1-wire 
CFG2         <= "10"; -- 16-bit serialization
CFG3         <= '0'; -- MUST BE LOW
CFG4         <= "00"; -- Bit order and coding, must be coded in the data of the stimulus files.
SEN          <= '0';  -- NOT USED
SCLK         <= '0'; --  SCLK  <= '0'; -- Normal <= '0'; --SYNC  <= '1'; DESKEW  <= '1'; PWRDWN
SDATA        <= '1'; --  SDATA <= '0';           <= '1';         <= '1';         <= '0';
RESET        <= '1'; -- Reset must alway be high when parallel mode is used..
POWERON      <= '1'; -- Global power ON.
AdcIntrfcRst <= '1'; -- Keep reset active.
AdcIntrfcEna <= '0'; -- Disable the interface.
AdcReSync    <= '0'; -- No re-synchronisation.
AdcMemRst    <= '1'; -- Keep application side in reset.
AdcMemEna    <= '0'; -- Keep application side disabled.
wait for ClockPeriod*10;
AdcIntrfcRst <= '0'; -- Release Interface Reset
wait for ClockPeriod*3;
AdcIntrfcEna <= '1'; -- Enable the interface
wait for ClockPeriod*5;
AdcMemRst   <= '0';
wait for ClockPeriod*3;
AdcMemEna   <= '1';
wait for ClockPeriod*2000;
--
assert false
report "That's All for   AdcToplevel_Tester   Folks !"
severity warning;
wait;
--
end process MainProc;
---------------------------------------------------------------------------------------------
-- Architecture Concurrent Statements
---------------------------------------------------------------------------------------------
-- Generate Clocks
The_AppSys_Clock : process
    variable Temp : std_logic := '0';
begin
    if (Temp = '0') then
        wait for ClockPeriod/7.4;    -- shift over x-degrees
        Temp := '1';
    else
        IntAppsSysClk <= '0';
        wait for ClockPeriod/2; -- Application clock equal to the sample clock
        IntAppsSysClk <= '1';   -- Can be taken out of phase with the sample clock
        wait for ClockPeriod/2; -- to demonstrate the data buffer memory in distributed RAM.
    end if;
end process;
AdcMemClk <= IntAppsSysClk;
--
The_SysRef_Clock : process
begin
    IntSysRefClk <= '0';
    wait for ClockPeriod*0.3125; -- Make 200 MHz
    IntSysRefClk <= '1';
    wait for ClockPeriod*0.3125; -- Make 200 MHz
end process;
SysRefClk <= IntSysRefClk;
--
-------------------------------------------------------------------------------------------
end AdcToplevel_Tester_flow;
