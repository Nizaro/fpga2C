---------------------------------------------------------------------------------------------
-- Copyright © 2009, Xilinx, Inc. 
-- This design is confidential and proprietary of Xilinx, Inc. All Rights Reserved.
---------------------------------------------------------------------------------------------
--
--  Disclaimer:
--          LIMITED WARRANTY AND DISCLAIMER.
--          These designs are provided to you "as is". Xilinx and its licensors make and you
--          receive no warranties or conditions, express, implied, statutory or otherwise,
--          and Xilinx specifically disclaims any implied warranties of merchantability,
--			non-infringement, or fitness for a particular purpose. Xilinx does not warrant
--          that the functions contained in these designs will meet your requirements, or
--          that the operation of these designs will be uninterrupted or error free, or that
--          defects in the designs will be corrected.
--          Furthermore, Xilinx does not warrant or make any representations regarding use or
--			the results of the use of the designs in terms of correctness, accuracy,
--			reliability, or otherwise.
--
--          LIMITATION OF LIABILITY.
--          In no event will Xilinx or its licensors be liable for any loss of data, lost
--			profits, cost or procurement of substitute goods or services, or for any special,
--			incidental, consequential, or indirect damages arising from the use or operation
--          of the designs or accompanying documentation, however caused and on any theory of
--			liability. This limitation will apply even if Xilinx has been advised of the
--			possibility of such damage. This limitation shall apply not-withstanding the
--          failure of the essential purpose of any limited remedies herein.
--
--  Contact:    e-mail  hotline@xilinx.com        phone   + 1 800 255 7778
--   ____  ____
--  /   /\/   /
-- /___/  \  / 			Vendor:              Xilinx Inc.
-- \   \   \/ 			Version:              
--  \   \        		
--  /   /        		Filename:            Cnt_6b_Bin.vhd
-- /___/   /\    		Date Created:        24 March, 2009  
-- \   \  /  \          Date Last Modified:  21 Sep, 2009
--  \___\/\___\
-- 
-- Device:          Virtex-6
-- Author:          defossez
-- Entity Name:     Cnt_6b_Bin
-- Purpose:         This is a 6-bit counter.
-- Tools:           ISE_11.3
-- Limitations:     none
--
-- Revision History:
--    Rev. 
--
------------------------------------------------------------------------------
-- Naming Conventions:
--   active low signals:                    "*_n"
--   clock signals:                         "clk", "clk_div#", "clk_#x"
--   reset signals:                         "rst", "rst_n"
--   generics:                              "C_*"
--   user defined types:                    "*_TYPE"
--   state machine next state:              "*_ns"
--   state machine current state:           "*_cs"
--   combinatorial signals:                 "*_com"
--   pipelined or register delay signals:   "*_d#"
--   counter signals:                       "*cnt*"
--   clock enable signals:                  "*_ce"
--   internal version of output port:       "*_i"
--   device pins:                           "*_pin"
--   ports:                                 "- Names begin with Uppercase"
--   processes:                             "*_PROCESS"
--   component instantiations:              "<ENTITY_>I_<#|FUNC>"
---------------------------------------------------------------------------------------------
--
library IEEE;
	use IEEE.std_logic_1164.all;
	use IEEE.std_logic_UNSIGNED.all;
library UNISIM;
	use UNISIM.vcomponents.all;
---------------------------------------------------------------------------------------------
-- Entity pin description
---------------------------------------------------------------------------------------------
-- CntClk	: Clock for the counter.
-- CntEna	: Enable input
-- CntRst	: Reset of the counter.
-- CntOut	: Counter output.
---------------------------------------------------------------------------------------------
entity Cnt_6b_Bin is
	port(
		CntClk	: in std_logic;
		CntEna	: in std_logic;
		CntRst	: in std_logic;
		CntOut	: out std_logic_vector(5 downto 0)
	);
end Cnt_6b_Bin;
---------------------------------------------------------------------------------------------
-- Architecture section
---------------------------------------------------------------------------------------------
architecture Cnt_6b_Bin_struct of Cnt_6b_Bin is
---------------------------------------------------------------------------------------------
-- Component Instantiation
---------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------
-- Constants, Signals and Attributes Declarations
---------------------------------------------------------------------------------------------
-- Functions
-- Constants
constant Low  : std_logic	:= '0';
constant High : std_logic	:= '1';
-- Signals
signal IntCnt		: std_logic_vector(5 downto 0);
signal IntCntLog	: std_logic_vector(5 downto 0);
-- Attributes
---------------------------------------------------------------------------------------------
--
begin
--
Cnt_PROCESS : process (CntClk, CntRst, CntEna)
begin
    if (CntClk'event and CntClk = '1') then
        if (CntRst = '1') then
            IntCnt <= (others => '0');
        elsif (CntEna = '1') then
            IntCnt <= IntCntLog;
        end if; 
   	end if;
end process;
--
CntOut <= IntCnt;
--
-- The FFs of the counter and its logic are written as separate processes.
-- The FFs use now their dedicated inputs for reset and enable (before only the reset
-- was used).
-- The counter process is described as ROM-kind of logic.
-- This could eventually be replaced by instantiating LUT primitives.
-- The counter runs now at a speed of: 700+ MHz.
--
CntLog_PROCESS : process (IntCnt)
begin
    CntLog : case IntCnt(5 downto 0) is
        when "000000" => IntCntLog <= "000001";	-- 0
        when "000001" => IntCntLog <= "000010";	-- 1
        when "000010" => IntCntLog <= "000011";	-- 2
        when "000011" => IntCntLog <= "000100";	-- 3
        when "000100" => IntCntLog <= "000101";	-- 4
        when "000101" => IntCntLog <= "000110";	-- 5
        when "000110" => IntCntLog <= "000111";	-- 6
        when "000111" => IntCntLog <= "001000";	-- 7
        when "001000" => IntCntLog <= "001001";	-- 8
        when "001001" => IntCntLog <= "001010";	-- 9
        when "001010" => IntCntLog <= "001011";	-- A
        when "001011" => IntCntLog <= "001100";	-- B
        when "001100" => IntCntLog <= "001101";	-- C
        when "001101" => IntCntLog <= "001110";	-- D
        when "001110" => IntCntLog <= "001111";	-- E
        when "001111" => IntCntLog <= "010000";	-- F

        when "010000" => IntCntLog <= "010001";	-- 10
        when "010001" => IntCntLog <= "010010";	-- 11
        when "010010" => IntCntLog <= "010011";	-- 12
        when "010011" => IntCntLog <= "010100";	-- 13
        when "010100" => IntCntLog <= "010101";	-- 14
        when "010101" => IntCntLog <= "010110";	-- 15
        when "010110" => IntCntLog <= "010111";	-- 16
        when "010111" => IntCntLog <= "011000";	-- 17
        when "011000" => IntCntLog <= "011001";	-- 18
        when "011001" => IntCntLog <= "011010";	-- 19
        when "011010" => IntCntLog <= "011011";	-- 1A
        when "011011" => IntCntLog <= "011100";	-- 1B
        when "011100" => IntCntLog <= "011101";	-- 1C
        when "011101" => IntCntLog <= "011110";	-- 1D
        when "011110" => IntCntLog <= "011111";	-- 1E
        when "011111" => IntCntLog <= "100000";	-- 1F

        when "100000" => IntCntLog <= "100001";	-- 20
        when "100001" => IntCntLog <= "100010";	-- 21
        when "100010" => IntCntLog <= "100011";	-- 22
        when "100011" => IntCntLog <= "100100";	-- 23
        when "100100" => IntCntLog <= "100101";	-- 24
        when "100101" => IntCntLog <= "100110";	-- 25
        when "100110" => IntCntLog <= "100111";	-- 26
        when "100111" => IntCntLog <= "101000";	-- 27
        when "101000" => IntCntLog <= "101001";	-- 28
        when "101001" => IntCntLog <= "101010";	-- 29
        when "101010" => IntCntLog <= "101011";	-- 2A
        when "101011" => IntCntLog <= "101100";	-- 2B
        when "101100" => IntCntLog <= "101101";	-- 2C
        when "101101" => IntCntLog <= "101110";	-- 2D
        when "101110" => IntCntLog <= "101111";	-- 2E
        when "101111" => IntCntLog <= "110000";	-- 2F

        when "110000" => IntCntLog <= "110001";	-- 30
        when "110001" => IntCntLog <= "110010";	-- 31
        when "110010" => IntCntLog <= "110011";	-- 32
        when "110011" => IntCntLog <= "110100";	-- 33
        when "110100" => IntCntLog <= "110101";	-- 34
        when "110101" => IntCntLog <= "110110";	-- 35
        when "110110" => IntCntLog <= "110111";	-- 36
        when "110111" => IntCntLog <= "111000";	-- 37
        when "111000" => IntCntLog <= "111001";	-- 38
        when "111001" => IntCntLog <= "111010";	-- 39
        when "111010" => IntCntLog <= "111011";	-- 3A
        when "111011" => IntCntLog <= "111100";	-- 3B
        when "111100" => IntCntLog <= "111101";	-- 3C
        when "111101" => IntCntLog <= "111110";	-- 3D
        when "111110" => IntCntLog <= "111111";	-- 3E
        -- when "111111" => IntCntLog <= "000000";	-- 3F
        when others => IntCntLog <= "000000";		--
    end case;
end process;
--
---------------------------------------------------------------------------------------------
end Cnt_6b_Bin_struct;
--




