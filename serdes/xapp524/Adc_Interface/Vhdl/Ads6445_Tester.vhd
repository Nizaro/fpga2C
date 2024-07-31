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
--  \   \        		Filename:            Ads6445_Tester.vhd
--  /   /        		Date Created:        17 Dec, 2010
-- /___/   /\    		Date Last Modified:  29 Jan, 2018
-- \   \  /  \
--  \___\/\___\
--
-- Device:      Virtex-6, 7-Series
-- Author:      defossez
-- Entity Name: Ads6445_Tester
-- Purpose:     Stimulus file for testbench
-- Tools:       QuestaSim_10.5d or later
--              This file simulates a Texas Instrumenst ADS6445 device.
--              2 channel, 14/16 bit serial LVDS ADC device.
--              DDR, 2-wire mode, Byte output and MSB first.
--              2-wire mode =
--              DCLK    R  F  R  F R F R F R  F  R  F R F R F
--              FCLK    1  1  1  1 0 0 0 0 1  1  1  1 0 0 0 0
--              DATA_E  14 12 10 8 6 4 2 0 14 12 10 8 6 4 2 0
--              DATA_O  15 13 11 0 7 5 3 1 15 13 11 0 7 5 3 1
--
--              1-wire mode =
--              DCLK    R  F  R  F  R  F  R F R F R F R F R F R  F  R  F  R  F  R F R F R
--              FCLK    1  1  1  1  1  1  1 1 0 0 0 0 0 0 0 0 1  1  1  1  1  1  1 1 0 0
--              DATA    15 14 13 12 11 10 9 8 7 6 5 4 3 2 1 0 15 14 13 12 11 10 9 8 7
--
-- Limitations:  TESTBENCH / STIMULUS;
--               DON'T USE THIS FILE FOR COMPILATION NOR INTERATION.
--
-- Revision History:
--	Rev.
--      8 Mar 11
--  `       -Modified the hard coded path to the stimuli text files into relative paths.
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
-- CFG1 :       00 = DDR bit clock, 1-wire mode
--              01 = Not used
--              10 = SDR bit clock, 2-wire
--              11 = DDR bit clock, 2-wire  <-- SUPPORTED
-- CFG2 :       00 = 14x serialisation, only in 2-wire SDR: falling edge bit clock
--              01 = 16x serialisation, only in 2-wire SDR: falling edge bit clock <- SUPPORTED
--              10 = 16x serialisation, only in 2-wire SDR: rising edge bit clock <- SUPPORTED
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
entity Ads6445_Tester is
    generic (
        C_ClockPeriod        : time;
        C_Ads6445DataVecFile : string;
        C_Ads6445TestVecFile : string
    );
    port (
        DCLK_p          : out std_logic;
        DCLK_n          : out std_logic;
        FCLK_p          : out std_logic;
        FCLK_n          : out std_logic;
        DATA_A0p        : out std_logic;
        DATA_A0n        : out std_logic;
        DATA_A1p        : out std_logic;
        DATA_A1n        : out std_logic;
        DATA_B0p        : out std_logic;
        DATA_B0n        : out std_logic;
        DATA_B1p        : out std_logic;
        DATA_B1n        : out std_logic;
        --
        PDNB            : in std_logic;
        PDNA            : in std_logic;
        CFG1            : in std_logic_vector(1 downto 0);
        CFG2            : in std_logic_vector(1 downto 0);
        CFG3            : in std_logic;
        CFG4            : in std_logic_vector(1 downto 0);
        --
        SEN             : in std_logic;
        SDATA           : in std_logic;
        SCLK            : in std_logic;
        RESET           : in std_logic;
        POWERON         : in std_logic
    );
end Ads6445_Tester;
--
architecture Ads6445_Tester_flow of Ads6445_Tester is
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
	variable temp : string(inp'left+1 downto 1) := (others => 'X');
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
    variable temp : string(1 downto 1) := "X";
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
constant DataVecFile : string := C_Ads6445DataVecFile;
constant TestVecFile : string := C_Ads6445TestVecFile;
--
constant High           : std_logic := '1';
constant Low            : std_logic := '0';
constant ClockPeriod    : time := C_ClockPeriod;
--
signal IntClk_n         : std_logic;
signal IntClk_p         : std_logic;
signal IntDclk_n        : std_logic;
signal IntDclk_p        : std_logic;
signal IntAppsSysClk    : std_logic;
signal IntSysRefClk     : std_logic;
---------------------------------------------------------------------------------------------
begin
---------------------------------------------------------------------------------------------
-- Processes
---------------------------------------------------------------------------------------------
Adc_PROCESS : process
    file TextFile : text open READ_MODE is DataVecFile;
    file WriteFile : text open WRITE_MODE is TestVecFile;
    variable TextIn : string (64 downto 1);
    variable Linelength : line;
    variable OutLinelength : line;
    --
    variable IntChnl_0 : std_logic_vector(15 downto 0);
    variable IntChnl_1 : std_logic_vector(15 downto 0);
    variable IntChnl_0_E_2w : std_logic_vector(7 downto 0);
    variable IntChnl_0_O_2w : std_logic_vector(7 downto 0);
    variable IntChnl_1_E_2w : std_logic_vector(7 downto 0);
    variable IntChnl_1_O_2w : std_logic_vector(7 downto 0);
    variable IntChnl_0_1w : std_logic_vector(15 downto 0);
    variable IntChnl_1_1w : std_logic_vector(15 downto 0);
    --
    variable IntBitCount : std_logic_vector(4 downto 0) := "00000";
    variable IntFclk     : std_logic := '0'; -- Start state of FCLK (low or high start)
    variable IntFclkDwn  : std_logic := '1'; -- '0' is operational, '1' = down
    --
    variable IntStatus   : std_logic_vector(3 downto 0) := "0000";
    variable State0      : std_logic_vector(4 downto 0) := "00000";  -- 0
    variable State1      : std_logic_vector(4 downto 0) := "00001";  -- 1
    variable State2      : std_logic_vector(4 downto 0) := "00010";  -- 2
    variable State3      : std_logic_vector(4 downto 0) := "00011";  -- 3
    variable State4      : std_logic_vector(4 downto 0) := "00100";  -- 4
    variable State5      : std_logic_vector(4 downto 0) := "00101";  -- 5
    variable State6      : std_logic_vector(4 downto 0) := "00110";  -- 6
    variable State7      : std_logic_vector(4 downto 0) := "00111";  -- 7
    variable State8      : std_logic_vector(4 downto 0) := "01000";  -- 8
    variable State9      : std_logic_vector(4 downto 0) := "01001";  -- 9
    variable State10     : std_logic_vector(4 downto 0) := "01001";  -- 9
    variable State11     : std_logic_vector(4 downto 0) := "01001";  -- 10
    --
    variable StateTx1    : std_logic_vector(4 downto 0) := "10001";  -- 17
    variable StateTx2    : std_logic_vector(4 downto 0) := "10010";  -- 18
    variable StateTx3    : std_logic_vector(4 downto 0) := "10011";  -- 19
    variable StateTx4    : std_logic_vector(4 downto 0) := "10100";  -- 20
    variable StateTx5    : std_logic_vector(4 downto 0) := "10101";  -- 21
    variable StateEnd    : std_logic_vector(4 downto 0) := "10110";  -- 22
    variable NewState    : std_logic_vector(4 downto 0) := State0;
    variable OldState    : std_logic_vector(4 downto 0) := "00000";
    variable IntTxYes    : std_logic := '1';
    variable IntDispTxt  : std_logic := '1';
begin
-- Put something on the console.
assert false
report CR &
"                                                                              " & CR &
" TI - ADS6xxx series of ADC devices                                           " & CR &
" ---------------------------------------------------------------------------- " & CR &
" Parallel interface control is used for the ADS6445.                          " & CR &
" The RESET input must ALWAYS be set to HIGH.                                  " & CR &
" SEN:  MUST be set LOW, is in the real ADC for analog control.                " & CR &
" CFG1: 2-wire and DDR.                                                        " & CR &
" CFG2: Serialization 16 bit                                                   " & CR &
" CFG3: Pin must ALWAYS be LOW.                                                " & CR &
" CFG4: MSB or LSB and 2s complement or binary must be coded in the test files." & CR &
" Pins with meaning for the tester are:                                        " & CR &
"     PDNB: Power down channel B                                               " & CR &
"     PDNA: power down channel A                                               " & CR &
"     SDATA: Together with SCLK select of operational mode                     " & CR &
"     SCLK:  SYNC, DESKEW, NORMAL, or Power down.                              " & CR &
"     POWERON: Power down.                                                     " & CR
severity note;
--
wait until (IntClk_p'event and IntClk_p = High); -- Wait until clock edge.
IntStatus := PDNA & PDNB & SDATA & SCLK;
--
if (POWERON = '0') then
    assert false
    report CR & " POWER DOWN, POWERON input is LOW!." & CR
    severity note;
    DATA_A0n <= '1' after 1 ps;
    DATA_A0p <= '0' after 1 ps;
    DATA_A1n <= '1' after 1 ps;
    DATA_A1p <= '0' after 1 ps;
    DATA_B0n <= '1' after 1 ps;
    DATA_B0p <= '0' after 1 ps;
    DATA_B1n <= '1' after 1 ps;
    DATA_B1p <= '0' after 1 ps;
    FCLK_n <= '1' after 1 ps;
    FCLK_p <= '0' after 1 ps;
elsif (RESET = '0' or SEN = '1' or CFG1 = "01" or CFG1 = "10" or CFG2 = "00" or CFG2 = "11"
                   or CFG3 = '1') then
    assert false
    report CR & " Wrong setting somewhere!  " & CR &
                " RESET = " & stdl_to_str(RESET) & CR &
                " SEN   = " & stdl_to_str(SEN) & CR &
                " CFG1  = " & stdlvec_to_str(CFG1) & CR &
                " CFG2  = " & stdlvec_to_str(CFG2) & CR &
                " CFG3  = " & stdl_to_str(CFG3) & CR
    severity note;
    DATA_A0n <= '1' after 1 ps;
    DATA_A0p <= '0' after 1 ps;
    DATA_A1n <= '1' after 1 ps;
    DATA_A1p <= '0' after 1 ps;
    DATA_B0n <= '1' after 1 ps;
    DATA_B0p <= '0' after 1 ps;
    DATA_B1n <= '1' after 1 ps;
    DATA_B1p <= '0' after 1 ps;
    FCLK_n <= '1' after 1 ps;
    FCLK_p <= '0' after 1 ps;
else
-----------------------------------------------------------------------------------------------
-- DDR, 2-wire
-----------------------------------------------------------------------------------------------
    while (CFG1 = "11") loop -- DDR, 2-wire
    if (NewState = State0) then
        if (IntStatus(1 downto 0) = "01") then --IntStatus <= PDNA & PDNB & SDATA & SCLK;
            if (IntDispTxt = '1') then
                assert false
                report CR & " Both channels are per SCLK and SDATA set in POWER DOWN." & CR
                severity note;
                IntDispTxt := '0';
            end if;
            IntChnl_0_E_2w := "00000000";
            IntChnl_0_O_2w := "00000000";  -- Inverted when transmitted.
            IntChnl_1_E_2w := "00000000";
            IntChnl_1_O_2w := "00000000";  -- Inverted when transmitted.
            IntBitCount := "00000";
            IntFclk := '1';
            IntFclkDwn := '1'; -- Do not toggle FCLK
            IntTxYes := '1';
            OldState := NewState;
            NewState := StateTx1;
        else
            NewState := State1;
        end if;
     end if;
--
    if (NewState = State1) then
        if (IntStatus(3 downto 2) = "11") then
            if (IntDispTxt = '1') then
                assert false
                report CR & "  Both channels POWER DOWN via PDNA and PDNB pins." & CR
                severity note;
                IntDispTxt := '0';
             end if;
             IntChnl_0_E_2w := "00000000";
             IntChnl_0_O_2w := "00000000";  -- Inverted when transmitted.
             IntChnl_1_E_2w := "00000000";
             IntChnl_1_O_2w := "00000000";  -- Inverted when transmitted.
             IntBitCount := "00000";
             IntFclk := '1';
             IntFclkDwn := '0'; -- Toggle FCLK
             IntTxYes := '1';
             OldState := NewState;
             NewState := StateTx1;
        else
            NewState := State2;
        end if;
    end if;
--
    if (NewState = State2) then
        if (IntStatus = "0010") then
            if (IntDispTxt = '1') then
               assert false
               report CR & "  Both channels transmitting SYNC." & CR
               severity note;
               IntDispTxt := '0';
            end if;
            IntChnl_0_E_2w := "11110000";
            IntChnl_0_O_2w := "11110000";  -- Inverted when transmitted.
            IntChnl_1_E_2w := "11110000";
            IntChnl_1_O_2w := "11110000";  -- Inverted when transmitted.
            IntBitCount := "00000";
            IntFclk := '1';
            IntFclkDwn := '0'; -- Toggle FCLK
            IntTxYes := '1';
            OldState := NewState;
            NewState := StateTx1;
        else
            NewState := State3;
        end if;
    end if;
--
    if (NewState = State3) then
        if (IntStatus = "1010") then
            if (IntDispTxt = '1') then
               assert false
               report CR & " Channel A = PWRDWN, channel B transmitting SYNC." & CR
               severity note;
               IntDispTxt := '0';
            end if;
            IntChnl_0_E_2w := "00000000";
            IntChnl_0_O_2w := "00000000";  -- Inverted when transmitted.
            IntChnl_1_E_2w := "11110000";
            IntChnl_1_O_2w := "11110000";  -- Inverted when transmitted.
            IntBitCount := "00000";
            IntFclk := '1';
            IntFclkDwn := '0'; -- Toggle FCLK
            IntTxYes := '1';
            OldState := NewState;
            NewState := StateTx1;
        else
            NewState := State4;
        end if;
    end if;
--
    if (NewState = State4) then
        if (IntStatus = "0110") then
            if (IntDispTxt = '1') then
                assert false
                report CR & " Channel A = transmitting SYNC, channel B PWRDWN." & CR
                severity note;
                IntDispTxt := '0';
            end if;
            IntChnl_0_E_2w := "11110000";
            IntChnl_0_O_2w := "11110000";  -- Inverted when transmitted.
            IntChnl_1_E_2w := "00000000";
            IntChnl_1_O_2w := "00000000";  -- Inverted when transmitted.
            IntBitCount := "00000";
            IntFclk := '1';
            IntFclkDwn := '0'; -- Toggle FCLK
            IntTxYes := '1';
            OldState := NewState;
            NewState := StateTx1;
        else
            NewState := State5;
        end if;
    end if;
--
    if (NewState = State5) then
        if (IntStatus = "0011") then
            if (IntDispTxt = '1') then
                assert false
                report CR & " Both channels transmitting DESKEW." & CR
                severity note;
                IntDispTxt := '0';
            end if;
            IntChnl_0_E_2w := "01010101";
            IntChnl_0_O_2w := "01010101";  -- Inverted when transmitted.
            IntChnl_1_E_2w := "01010101";
            IntChnl_1_O_2w := "01010101";  -- Inverted when transmitted.
            IntBitCount := "00000";
            IntFclk := '1';
            IntFclkDwn := '0'; -- Toggle FCLK
            IntTxYes := '1';
            OldState := NewState;
            NewState := StateTx1;
        else
            NewState := State6;
        end if;
    end if;
--
    if (NewState = State6) then
        if (IntStatus = "1011") then
            if (IntDispTxt = '1') then
                assert false
                report CR & " Channel A = PWRDWN, channel B transmitting DESKEW." & CR &
                            " IntStatus = " & stdlvec_to_str(IntStatus) & CR
                severity note;
                IntDispTxt := '0';
            end if;
            IntChnl_0_E_2w := "00000000";
            IntChnl_0_O_2w := "00000000";  -- Inverted when transmitted.
            IntChnl_1_E_2w := "01010101";
            IntChnl_1_O_2w := "01010101";  -- Inverted when transmitted.
            IntBitCount := "00000";
            IntFclk := '1';
            IntFclkDwn := '1'; -- Toggle FCLK
            IntTxYes := '1';
            OldState := NewState;
            NewState := StateTx1;
        else
            NewState := State7;
        end if;
    end if;
--
    if (NewState = State7) then
        if (IntStatus = "0111") then
            if (IntDispTxt = '1') then
                assert false
                report CR & " Channel A = transmitting DESKEW, channel B PWRDWN." & CR
                severity note;
                IntDispTxt := '0';
            end if;
            IntChnl_0_E_2w := "01010101";
            IntChnl_0_O_2w := "01010101";  -- Inverted when transmitted.
            IntChnl_1_E_2w := "00000000";
            IntChnl_1_O_2w := "00000000";  -- Inverted when transmitted.
            IntBitCount := "00000";
            IntFclk := '1';
            IntFclkDwn := '0'; -- Toggle FCLK
            IntTxYes := '1';
            OldState := NewState;
            NewState := StateTx1;
        else
            NewState := State8;
        end if;
    end if;
--
    if (NewState = State8) then
        if (IntStatus = "0000") then
            if (IntDispTxt = '1') then
                assert false
                report CR & " Both channels transmitting data." & CR
                severity note;
                IntDispTxt := '0';
            end if;
            readline (TextFile, LineLength); -- read a line
            read (LineLength, TextIn); -- Put the line in a workable variable
            IntChnl_0 := str_to_stdlvec(TextIn(16 downto 1)); -- Convert and split channels.
            IntChnl_1 := str_to_stdlvec(TextIn(32 downto 17));
            IntChnl_0_E_2w := (IntChnl_0(7) & IntChnl_0(6) & IntChnl_0(5) & IntChnl_0(4) &
                            IntChnl_0(3) & IntChnl_0(2) & IntChnl_0(1) & IntChnl_0(0));
            IntChnl_0_O_2w := (IntChnl_0(15) & IntChnl_0(14) & IntChnl_0(13) & IntChnl_0(12) &
                            IntChnl_0(11) & IntChnl_0(10) & IntChnl_0(9) & IntChnl_0(8));
            IntChnl_1_E_2w := (IntChnl_1(7) & IntChnl_1(6) & IntChnl_1(5) & IntChnl_1(4) &
                            IntChnl_1(3) & IntChnl_1(2) & IntChnl_1(1) & IntChnl_1(0));
            IntChnl_1_O_2w := (IntChnl_1(15) & IntChnl_1(14) & IntChnl_1(13) & IntChnl_1(12) &
                            IntChnl_1(11) & IntChnl_1(10) & IntChnl_1(9) & IntChnl_1(8));
            IntBitCount := "00000";
            IntFclk := '1';
            IntFclkDwn := '0'; -- Toggle FCLK
            IntTxYes := '1';
            OldState := NewState;
            NewState := StateTx1;
        else
            NewState := State9;
        end if;
    end if;
--
    if (NewState = State9) then
        if (IntStatus = "1000") then
            if (IntDispTxt = '1') then
                assert false
                report CR & " Channel B = PWRDWN channel A transmitting data." & CR
                severity note;
                IntDispTxt := '0';
            end if;
            readline (TextFile, LineLength); -- read a line
            read (LineLength, TextIn); -- Put the line in a workable variable
            IntChnl_0 := str_to_stdlvec(TextIn(16 downto 1)); -- Convert and split channels.
            IntChnl_1 := str_to_stdlvec(TextIn(32 downto 17));
            IntChnl_0_E_2w := (IntChnl_0(7) & IntChnl_0(6) & IntChnl_0(5) & IntChnl_0(4) &
                            IntChnl_0(3) & IntChnl_0(2) & IntChnl_0(1) & IntChnl_0(0));
            IntChnl_0_O_2w := (IntChnl_0(15) & IntChnl_0(14) & IntChnl_0(13) & IntChnl_0(12) &
                            IntChnl_0(11) & IntChnl_0(10) & IntChnl_0(9) & IntChnl_0(8));
            IntChnl_1_E_2w := "00000000";
            IntChnl_1_O_2w := "00000000";  -- Inverted when transmitted.
            IntBitCount := "00000";
            IntFclk := '1';
            IntFclkDwn := '0'; -- Toggle FCLK
            IntTxYes := '1';
            OldState := NewState;
            NewState := StateTx1;
        else
            NewState := State10;
        end if;
    end if;
--
    if (NewState = State10) then
        if (IntStatus = "0100") then
            if (IntDispTxt = '1') then
                assert false
                report CR & " Channel A = PWRDWN channel B transmitting data." & CR
                severity note;
                IntDispTxt := '0';
             end if;
             readline (TextFile, LineLength); -- read a line
             read (LineLength, TextIn); -- Put the line in a workable variable
             IntChnl_0 := str_to_stdlvec(TextIn(16 downto 1)); -- Convert and split channels.
             IntChnl_1 := str_to_stdlvec(TextIn(32 downto 17));
             IntChnl_0_E_2w := "00000000";
             IntChnl_0_O_2w := "00000000";  -- Inverted when transmitted.
             IntChnl_1_E_2w := (IntChnl_1(7) & IntChnl_1(6) & IntChnl_1(5) & IntChnl_1(4) &
                             IntChnl_1(3) & IntChnl_1(2) & IntChnl_1(1) & IntChnl_1(0));
             IntChnl_1_O_2w := (IntChnl_1(15) & IntChnl_1(14) & IntChnl_1(13) & IntChnl_1(12) &
                             IntChnl_1(11) & IntChnl_1(10) & IntChnl_1(9) & IntChnl_1(8));
             IntBitCount := "00000";
             IntFclk := '1';
             IntFclkDwn := '0'; -- Toggle FCLK
             IntTxYes := '1';
             OldState := NewState;
             NewState := StateTx1;
         else
             NewState := StateTx1;
         end if;
     end if;
---------------------------------------------------------------------------------------------
-- Transmit bits
---------------------------------------------------------------------------------------------
     if (NewState = StateTx1) then
        if (IntBitCount /= "01000") then  -- Even State
            assert false
            report CR & "StateTx1 " & CR
            severity note;
            wait until (IntClk_n'event and IntClk_n = High); -- Wait until clock edge.
                DATA_A0n <= not IntChnl_0_E_2w(stdlvec_to_int(IntBitCount));
                DATA_A0p <=     IntChnl_0_E_2w(stdlvec_to_int(IntBitCount));
                DATA_A1n <= not IntChnl_0_O_2w(stdlvec_to_int(IntBitCount));
                DATA_A1p <=     IntChnl_0_O_2w(stdlvec_to_int(IntBitCount));
                DATA_B0n <= not IntChnl_1_E_2w(stdlvec_to_int(IntBitCount));
                DATA_B0p <=     IntChnl_1_E_2w(stdlvec_to_int(IntBitCount));
                DATA_B1n <= not IntChnl_1_O_2w(stdlvec_to_int(IntBitCount));
                DATA_B1p <=     IntChnl_1_O_2w(stdlvec_to_int(IntBitCount));
        --
write (OutLineLength, string'("BitCount:"), left, 10);
write (OutLineLength, stdlvec_to_str(IntBitCount), right, 4);
write (OutLineLength, string'("Chnl_1_E:"), right, 12);
write (OutLineLength, stdl_to_str(IntChnl_1_E_2w(stdlvec_to_int(IntBitCount))), right, 3);
write (OutLineLength, string'("Chnl_1_O:"), right, 16);
write (OutLineLength, stdl_to_str(IntChnl_1_O_2w(stdlvec_to_int(IntBitCount))), right, 3);
write (OutLineLength, string'("Chnl_0_E:"), right, 16);
write (OutLineLength, stdl_to_str(IntChnl_0_E_2w(stdlvec_to_int(IntBitCount))), right, 3);
write (OutLineLength, string'("Chnl_0_O:"), right, 16);
write (OutLineLength, stdl_to_str(IntChnl_0_O_2w(stdlvec_to_int(IntBitCount))), right, 3);
writeline(WriteFile , OutLineLength);
        --
                FCLK_n <= not IntFclk;              -- Put FCLK on the outputs.
                FCLK_p <= IntFclk;
                if (IntFclkDwn = '0') then
                    IntFclk := not IntFclk;         -- Invert the value.
                else
                    IntFclk := IntFclk;             -- Keep the FCLK value
                end if;
                IntBitCount := IntBitCount + "01";  -- Increment counter, happens at 0 and 4.
                NewState := StateTx2;               -- Jump to next state.
        else
            NewState := OldState;
        end if;
    end if;
        --
    if (NewState = StateTx2) then
        assert false
        report CR & " StateTx2 " & CR
        severity note;
        if (IntTxYes = '1') then  -- Odd data
            wait until (IntClk_p'event and IntClk_p = High); -- Wait until clock edge.
                DATA_A0n <= not IntChnl_0_E_2w(stdlvec_to_int(IntBitCount));
                DATA_A0p <=     IntChnl_0_E_2w(stdlvec_to_int(IntBitCount));
                DATA_A1n <= not IntChnl_0_O_2w(stdlvec_to_int(IntBitCount));
                DATA_A1p <=     IntChnl_0_O_2w(stdlvec_to_int(IntBitCount));
                DATA_B0n <= not IntChnl_1_E_2w(stdlvec_to_int(IntBitCount));
                DATA_B0p <=     IntChnl_1_E_2w(stdlvec_to_int(IntBitCount));
                DATA_B1n <= not IntChnl_1_O_2w(stdlvec_to_int(IntBitCount));
                DATA_B1p <=     IntChnl_1_O_2w(stdlvec_to_int(IntBitCount));
        --
write (OutLineLength, string'("BitCount:"), left, 10);
write (OutLineLength, stdlvec_to_str(IntBitCount), right, 4);
write (OutLineLength, string'("Chnl_1_E:"), right, 12);
write (OutLineLength, stdl_to_str(IntChnl_1_E_2w(stdlvec_to_int(IntBitCount))), right, 3);
write (OutLineLength, string'("Chnl_1_O:"), right, 16);
write (OutLineLength, stdl_to_str(IntChnl_1_O_2w(stdlvec_to_int(IntBitCount))), right, 3);
write (OutLineLength, string'("Chnl_0_E:"), right, 16);
write (OutLineLength, stdl_to_str(IntChnl_0_E_2w(stdlvec_to_int(IntBitCount))), right, 3);
write (OutLineLength, string'("Chnl_0_O:"), right, 16);
write (OutLineLength, stdl_to_str(IntChnl_0_O_2w(stdlvec_to_int(IntBitCount))), right, 3);
writeline(WriteFile , OutLineLength);
        --
                IntBitCount := IntBitCount + "01";     -- Happens at 1, 3, 5, and 7.
                NewState := StateTx3;                  -- Jump to next state.
        else
            NewState := OldState;
        end if;
    end if;
        --
    if (NewState = StateTx3) then
        assert false
        report CR & " StateTx3 " & CR
        severity note;
        if (IntBitCount /= "00100" and IntBitCount /= "01000") then
            wait until (IntClk_n'event and IntClk_n = High); -- Wait until clock edge.
                DATA_A0n <= not IntChnl_0_E_2w(stdlvec_to_int(IntBitCount));
                DATA_A0p <=     IntChnl_0_E_2w(stdlvec_to_int(IntBitCount));
                DATA_A1n <= not IntChnl_0_O_2w(stdlvec_to_int(IntBitCount));
                DATA_A1p <=     IntChnl_0_O_2w(stdlvec_to_int(IntBitCount));
                DATA_B0n <= not IntChnl_1_E_2w(stdlvec_to_int(IntBitCount));
                DATA_B0p <=     IntChnl_1_E_2w(stdlvec_to_int(IntBitCount));
                DATA_B1n <= not IntChnl_1_O_2w(stdlvec_to_int(IntBitCount));
                DATA_B1p <=     IntChnl_1_O_2w(stdlvec_to_int(IntBitCount));
        --
write (OutLineLength, string'("BitCount:"), left, 10);
write (OutLineLength, stdlvec_to_str(IntBitCount), right, 4);
write (OutLineLength, string'("Chnl_1_E:"), right, 12);
write (OutLineLength, stdl_to_str(IntChnl_1_E_2w(stdlvec_to_int(IntBitCount))), right, 3);
write (OutLineLength, string'("Chnl_1_O:"), right, 16);
write (OutLineLength, stdl_to_str(IntChnl_1_O_2w(stdlvec_to_int(IntBitCount))), right, 3);
write (OutLineLength, string'("Chnl_0_E:"), right, 16);
write (OutLineLength, stdl_to_str(IntChnl_0_E_2w(stdlvec_to_int(IntBitCount))), right, 3);
write (OutLineLength, string'("Chnl_0_O:"), right, 16);
write (OutLineLength, stdl_to_str(IntChnl_0_O_2w(stdlvec_to_int(IntBitCount))), right, 3);
writeline(WriteFile , OutLineLength);
        --
                IntBitCount := IntBitCount + "01";  -- Happens at 2, and 6
                NewState := StateTx2;               -- Jump to next state.
        else
            NewState := StateTx4;
        end if;
    end if;
        --
    if (NewState = StateTx4) then
        assert false
        report CR & " StateTx4 " & CR
        severity note;
        if (IntBitCount = "00100" and IntBitCount /= "01000") then
            NewState := StateTx1;
        else
            NewState := StateTx5;
        end if;
    end if;
        --
    if (NewState = StateTx5) then
        assert false
        report CR & " StateTx5 " & CR
        severity note;
        if (IntBitCount = "01000") then
            NewState := StateTx1;
        else
            NewState := StateEnd;
        end if;
    end if;
        --
    if  (NewState = StateEnd) then
        assert false
        report " ADC QUIT! No valid options found to do something useful."
        severity warning;
    end if;
    end loop; -- End of DDR, 2-wire
-----------------------------------------------------------------------------------------------
-- DDR, 1-wire
-----------------------------------------------------------------------------------------------
    while (CFG1 = "00") loop -- DDR, 1-wire
    if (NewState = State0) then
        if (IntStatus(1 downto 0) = "01") then --IntStatus <= PDNA & PDNB & SDATA & SCLK;
            if (IntDispTxt = '1') then
                assert false
                report CR & " Both channels are per SCLK and SDATA set in POWER DOWN." & CR
                severity note;
                IntDispTxt := '0';
            end if;
            IntChnl_0_1w := "0000000000000000";
            IntChnl_1_1w := "0000000000000000";
            IntBitCount := "00000";
            IntFclk := '1';
            IntFclkDwn := '1'; -- Do not toggle FCLK
            IntTxYes := '1';
            OldState := NewState;
            NewState := StateTx1;
        else
            NewState := State1;
        end if;
     end if;
--
    if (NewState = State1) then
        if (IntStatus(3 downto 2) = "11") then
            if (IntDispTxt = '1') then
                assert false
                report CR & "  Both channels POWER DOWN via PDNA and PDNB pins." & CR
                severity note;
                IntDispTxt := '0';
            end if;
            IntChnl_0_1w := "0000000000000000";
            IntChnl_1_1w := "0000000000000000";
            IntBitCount := "00000";
            IntFclk := '1';
            IntFclkDwn := '0'; -- Toggle FCLK
            IntTxYes := '1';
            OldState := NewState;
            NewState := StateTx1;
        else
            NewState := State2;
        end if;
    end if;
--
    if (NewState = State2) then
        if (IntStatus = "0010") then
            if (IntDispTxt = '1') then
               assert false
               report CR & "  Both channels transmitting SYNC." & CR
               severity note;
               IntDispTxt := '0';
            end if;
            IntChnl_0_1w := "1111111100000000";
            IntChnl_1_1w := "1111111100000000";
            IntBitCount := "00000";
            IntFclk := '1';
            IntFclkDwn := '0'; -- Toggle FCLK
            IntTxYes := '1';
            OldState := NewState;
            NewState := StateTx1;
        else
            NewState := State3;
        end if;
    end if;
--
    if (NewState = State3) then
        if (IntStatus = "1010") then
            if (IntDispTxt = '1') then
               assert false
               report CR & " Channel A = PWRDWN, channel B transmitting SYNC." & CR
               severity note;
               IntDispTxt := '0';
            end if;
            IntChnl_0_1w := "0000000000000000";
            IntChnl_1_1w := "1111111100000000";
            IntBitCount := "00000";
            IntFclk := '1';
            IntFclkDwn := '0'; -- Toggle FCLK
            IntTxYes := '1';
            OldState := NewState;
            NewState := StateTx1;
        else
            NewState := State4;
        end if;
    end if;
--
    if (NewState = State4) then
        if (IntStatus = "0110") then
            if (IntDispTxt = '1') then
                assert false
                report CR & " Channel A = transmitting SYNC, channel B PWRDWN." & CR
                severity note;
                IntDispTxt := '0';
            end if;
            IntChnl_0_1w := "1111111100000000";
            IntChnl_1_1w := "0000000000000000";
            IntBitCount := "00000";
            IntFclk := '1';
            IntFclkDwn := '0'; -- Toggle FCLK
            IntTxYes := '1';
            OldState := NewState;
            NewState := StateTx1;
        else
            NewState := State5;
        end if;
    end if;
--
    if (NewState = State5) then
        if (IntStatus = "0011") then
            if (IntDispTxt = '1') then
                assert false
                report CR & " Both channels transmitting DESKEW." & CR
                severity note;
                IntDispTxt := '0';
            end if;
            IntChnl_0_1w := "0101010101010101";
            IntChnl_1_1w := "0101010101010101";
            IntBitCount := "00000";
            IntFclk := '1';
            IntFclkDwn := '0'; -- Toggle FCLK
            IntTxYes := '1';
            OldState := NewState;
            NewState := StateTx1;
        else
            NewState := State6;
        end if;
    end if;
--
    if (NewState = State6) then
        if (IntStatus = "1011") then
            if (IntDispTxt = '1') then
                assert false
                report CR & " Channel A = PWRDWN, channel B transmitting DESKEW." & CR &
                            " IntStatus = " & stdlvec_to_str(IntStatus) & CR
                severity note;
                IntDispTxt := '0';
            end if;
            IntChnl_0_1w := "0000000000000000";
            IntChnl_1_1w := "0101010101010101";
            IntBitCount := "00000";
            IntFclk := '1';
            IntFclkDwn := '1'; -- Toggle FCLK
            IntTxYes := '1';
            OldState := NewState;
            NewState := StateTx1;
        else
            NewState := State7;
        end if;
    end if;
--
    if (NewState = State7) then
        if (IntStatus = "0111") then
            if (IntDispTxt = '1') then
                assert false
                report CR & " Channel A = transmitting DESKEW, channel B PWRDWN." & CR
                severity note;
                IntDispTxt := '0';
            end if;
            IntChnl_0_1w := "0101010101010101";
            IntChnl_1_1w := "0000000000000000";
            IntBitCount := "00000";
            IntFclk := '1';
            IntFclkDwn := '0'; -- Toggle FCLK
            IntTxYes := '1';
            OldState := NewState;
            NewState := StateTx1;
        else
            NewState := State8;
        end if;
    end if;
--
    if (NewState = State8) then
        if (IntStatus = "0000") then
            if (IntDispTxt = '1') then
                assert false
                report CR & " Both channels transmitting data." & CR
                severity note;
                IntDispTxt := '0';
            end if;
            readline (TextFile, LineLength); -- read a line
            read (LineLength, TextIn); -- Put the line in a workable variable
            IntChnl_0 := str_to_stdlvec(TextIn(16 downto 1)); -- Convert and split channels.
            IntChnl_1 := str_to_stdlvec(TextIn(32 downto 17));
            IntChnl_0_1w := (IntChnl_0(15) & IntChnl_0(14) & IntChnl_0(13) & IntChnl_0(12) &
                            IntChnl_0(11) & IntChnl_0(10) & IntChnl_0(9) & IntChnl_0(8) &
                            IntChnl_0(7) & IntChnl_0(6) & IntChnl_0(5) & IntChnl_0(4) &
                            IntChnl_0(3) & IntChnl_0(2) & IntChnl_0(1) & IntChnl_0(0));
            IntChnl_1_1w := (IntChnl_1(15) & IntChnl_1(14) & IntChnl_1(13) & IntChnl_1(12) &
                            IntChnl_1(11) & IntChnl_1(10) & IntChnl_1(9) & IntChnl_1(8) &
                            IntChnl_1(7) & IntChnl_1(6) & IntChnl_1(5) & IntChnl_1(4) &
                            IntChnl_1(3) & IntChnl_1(2) & IntChnl_1(1) & IntChnl_1(0));
            IntBitCount := "00000";
            IntFclk := '1';
            IntFclkDwn := '0'; -- Toggle FCLK
            IntTxYes := '1';
            OldState := NewState;
            NewState := StateTx1;
        else
            NewState := State9;
        end if;
    end if;
--
    if (NewState = State9) then
        if (IntStatus = "1000") then
            if (IntDispTxt = '1') then
                assert false
                report CR & " Channel B = PWRDWN channel A transmitting data." & CR
                severity note;
                IntDispTxt := '0';
            end if;
            readline (TextFile, LineLength); -- read a line
            read (LineLength, TextIn); -- Put the line in a workable variable
            IntChnl_0 := str_to_stdlvec(TextIn(16 downto 1)); -- Convert and split channels.
            IntChnl_1 := str_to_stdlvec(TextIn(32 downto 17));
            IntChnl_0_1w := (IntChnl_0(15) & IntChnl_0(14) & IntChnl_0(13) & IntChnl_0(12) &
                            IntChnl_0(11) & IntChnl_0(10) & IntChnl_0(9) & IntChnl_0(8) &
                            IntChnl_0(7) & IntChnl_0(6) & IntChnl_0(5) & IntChnl_0(4) &
                            IntChnl_0(3) & IntChnl_0(2) & IntChnl_0(1) & IntChnl_0(0));
            IntChnl_1_1w := "0000000000000000";
            IntBitCount := "00000";
            IntFclk := '1';
            IntFclkDwn := '0'; -- Toggle FCLK
            IntTxYes := '1';
            OldState := NewState;
            NewState := StateTx1;
        else
            NewState := State10;
        end if;
    end if;
--
    if (NewState = State10) then
        if (IntStatus = "0100") then
            if (IntDispTxt = '1') then
                assert false
                report CR & " Channel A = PWRDWN channel B transmitting data." & CR
                severity note;
                IntDispTxt := '0';
            end if;
            readline (TextFile, LineLength); -- read a line
            read (LineLength, TextIn); -- Put the line in a workable variable
            IntChnl_0 := str_to_stdlvec(TextIn(16 downto 1)); -- Convert and split channels.
            IntChnl_1 := str_to_stdlvec(TextIn(32 downto 17));
            IntChnl_0_1w := "0000000000000000";
            IntChnl_1_1w := (IntChnl_1(15) & IntChnl_1(14) & IntChnl_1(13) & IntChnl_1(12) &
                            IntChnl_1(11) & IntChnl_1(10) & IntChnl_1(9) & IntChnl_1(8) &
                            IntChnl_1(7) & IntChnl_1(6) & IntChnl_1(5) & IntChnl_1(4) &
                            IntChnl_1(3) & IntChnl_1(2) & IntChnl_1(1) & IntChnl_1(0));
            IntBitCount := "00000";
            IntFclk := '1';
            IntFclkDwn := '0'; -- Toggle FCLK
            IntTxYes := '1';
            OldState := NewState;
            NewState := StateTx1;
         else
            NewState := StateTx1;
         end if;
     end if;
---------------------------------------------------------------------------------------------
-- Transmit bits
---------------------------------------------------------------------------------------------
     if (NewState = StateTx1) then
        if (IntBitCount /= "10000") then  -- Even State
            assert false
            report CR & "StateTx1 " & CR
            severity note;
            wait until (IntClk_n'event and IntClk_n = High); -- Wait until clock edge.
                DATA_A0n <= not IntChnl_0_1w(stdlvec_to_int(IntBitCount));
                DATA_A0p <=     IntChnl_0_1w(stdlvec_to_int(IntBitCount));
                DATA_B0n <= not IntChnl_1_1w(stdlvec_to_int(IntBitCount));
                DATA_B0p <=     IntChnl_1_1w(stdlvec_to_int(IntBitCount));
        --
write (OutLineLength, string'("BitCount:"), left, 10);
write (OutLineLength, stdlvec_to_str(IntBitCount), right, 5);
write (OutLineLength, string'("Chnl_1:"), right, 16);
write (OutLineLength, stdl_to_str(IntChnl_1_1w(stdlvec_to_int(IntBitCount))), right, 8);
write (OutLineLength, string'("Chnl_0:"), right, 16);
write (OutLineLength, stdl_to_str(IntChnl_0_1w(stdlvec_to_int(IntBitCount))), right, 8);
writeline(WriteFile , OutLineLength);
        --
                FCLK_n <= not IntFclk;              -- Put FCLK on the outputs.
                FCLK_p <= IntFclk;
                if (IntFclkDwn = '0') then
                    IntFclk := not IntFclk;         -- Invert the value.
                else
                    IntFclk := IntFclk;             -- Keep the FCLK value
                end if;
                IntBitCount := IntBitCount + "01";  -- Increment counter, happens at 0 and 4.
                NewState := StateTx2;               -- Jump to next state.
        else
            NewState := OldState;
        end if;
    end if;
        --
    if (NewState = StateTx2) then
        assert false
        report CR & " StateTx2 " & CR
        severity note;
        if (IntTxYes = '1') then  -- Odd data
            wait until (IntClk_p'event and IntClk_p = High); -- Wait until clock edge.
                DATA_A0n <= not IntChnl_0_1w(stdlvec_to_int(IntBitCount));
                DATA_A0p <=     IntChnl_0_1w(stdlvec_to_int(IntBitCount));
                DATA_B0n <= not IntChnl_1_1w(stdlvec_to_int(IntBitCount));
                DATA_B0p <=     IntChnl_1_1w(stdlvec_to_int(IntBitCount));
        --
write (OutLineLength, string'("BitCount:"), left, 10);
write (OutLineLength, stdlvec_to_str(IntBitCount), right, 5);
write (OutLineLength, string'("Chnl_1:"), right, 16);
write (OutLineLength, stdl_to_str(IntChnl_1_1w(stdlvec_to_int(IntBitCount))), right, 8);
write (OutLineLength, string'("Chnl_0:"), right, 16);
write (OutLineLength, stdl_to_str(IntChnl_0_1w(stdlvec_to_int(IntBitCount))), right, 8);
writeline(WriteFile , OutLineLength);
        --
                IntBitCount := IntBitCount + "01";     -- Happens at 1, 3, 5, and 7.
                NewState := StateTx3;                  -- Jump to next state.
        else
            NewState := OldState;
        end if;
    end if;
        --
    if (NewState = StateTx3) then
        assert false
        report CR & " StateTx3 " & CR
        severity note;
        if (IntBitCount /= "01000" and IntBitCount /= "10000") then
            wait until (IntClk_n'event and IntClk_n = High); -- Wait until clock edge.
                DATA_A0n <= not IntChnl_0_1w(stdlvec_to_int(IntBitCount));
                DATA_A0p <=     IntChnl_0_1w(stdlvec_to_int(IntBitCount));
                DATA_B0n <= not IntChnl_1_1w(stdlvec_to_int(IntBitCount));
                DATA_B0p <=     IntChnl_1_1w(stdlvec_to_int(IntBitCount));
        --
write (OutLineLength, string'("BitCount:"), left, 10);
write (OutLineLength, stdlvec_to_str(IntBitCount), right, 5);
write (OutLineLength, string'("Chnl_1:"), right, 16);
write (OutLineLength, stdl_to_str(IntChnl_1_1w(stdlvec_to_int(IntBitCount))), right, 8);
write (OutLineLength, string'("Chnl_0:"), right, 16);
write (OutLineLength, stdl_to_str(IntChnl_0_1w(stdlvec_to_int(IntBitCount))), right, 8);
writeline(WriteFile , OutLineLength);
        --
                IntBitCount := IntBitCount + "01";  -- Happens at 2, and 6
                NewState := StateTx2;               -- Jump to next state.
        else
            NewState := StateTx4;
        end if;
    end if;
        --
    if (NewState = StateTx4) then
        assert false
        report CR & " StateTx4 " & CR
        severity note;
        if (IntBitCount = "01000" and IntBitCount /= "10000") then
            NewState := StateTx1;
        else
            NewState := StateTx5;
        end if;
    end if;
        --
    if (NewState = StateTx5) then
        assert false
        report CR & " StateTx5 " & CR
        severity note;
        if (IntBitCount = "10000") then
            NewState := StateTx1;
        else
            NewState := StateEnd;
        end if;
    end if;
        --
    if  (NewState = StateEnd) then
        assert false
        report " ADC QUIT! No valid options found to do something useful."
        severity warning;
    end if;
    end loop; -- End of DDR, 1-wire
--
end if;
---------------------------------------------------------------------------------------------
assert false
report CR & " That's All Folks!" & CR
severity note;
FILE_CLOSE (WriteFile);
FILE_CLOSE (TextFile);
wait;
end process Adc_PROCESS;
---------------------------------------------------------------------------------------------
-- Architecture Concurrent Statements
---------------------------------------------------------------------------------------------
-- Generate Clocks
The_Tester_Clock : process     -- Test bench bit clock
begin                          -- This clock must run in phase with the data.
    IntClk_p <= '1';
    IntClk_n <= '0';
    wait for ClockPeriod/8; -- (8ns/8)*2 = 1ns (125 MHz sample =  500 MHz 2-wire, DDR clock)
    IntClk_p <= '0';
    IntClk_n <= '1';
    wait for ClockPeriod/8;
end process;
--
The_D_Clock : process   -- External bit clock = shifted by 90-degree with respect to the data
    variable Temp : std_logic := '0';
begin
    if (Temp = '0') then
        IntDclk_p <= '1';
        IntDclk_n <= '0';
        wait for ClockPeriod/16;    -- shift over 90-degree
        Temp := '1';
    else
        IntDclk_p <= '0';
        IntDclk_n <= '1';
        wait for ClockPeriod/8; -- 16-bits, DDR = 500 MHz
        IntDclk_p <= '1';
        IntDclk_n <= '0';
        wait for ClockPeriod/8; -- This clock must run 90 degrees to the data.
    end if;
end process;
DCLK_n <= IntDclk_n;
DCLK_p <= IntDclk_p;
--
-------------------------------------------------------------------------------------------
end Ads6445_Tester_flow;
