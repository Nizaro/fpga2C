-----------------------------------------------------------------------------------------------
-- © Copyright 2012, Xilinx, Inc. All rights reserved.
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
--   ____  ____
--  /   /\/   /
-- /___/  \  /   Vendor: Xilinx
-- \   \   \/    Version: 1.06
--  \   \        Filename: LifeIndicator.vhd
--  /   /        Date Last Modified:
-- /___/   /\    Date Created: 11/10/06
-- \   \  /  \
--  \___\/\___\
--
-- Device: Virtex-4 & Virtex-5 & Virtex-6 & 7-Series
-- Author: Marc Defossez
-- Entity Name:  LifeIndicator
-- Purpose: LED indication of working DCM / PLL / MMCM /
-- Tools:	ISE_14.3 and later
-- Limitations: none
--
-- Revision History:
--  Rev: 11 Oct 2006
--		This is an actualized copy of an earlier used and working design.
--  Rev: 26 May 2011
--      Version adapted for Virtex-6 and Series-7
--  Rev: 27 Nov 2012
--      Design reworked to be able to get visible blinking LED.
--      The original design issued a pulse wave to only dim the LED.
--      The pulses can be measured by a scope (Chipscope).
--      The design is now also just one bit wide.
--      Making it a wire is done by setting the "C_AlifeFactor" to '0'.
--      The wire still has an enable control.
-----------------------------------------------------------------------------------------------
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
-----------------------------------------------------------------------------------------------
--
library IEEE;
    use IEEE.std_logic_1164.all;
    use IEEE.std_logic_UNSIGNED.all;
    use IEEE.numeric_std.all;
library UNISIM;
    use UNISIM.VCOMPONENTS.all;
library Common;
    use Common.all;
-----------------------------------------------------------------------------------------------
-- Entity pin description
-----------------------------------------------------------------------------------------------
-- Generics
-- C_AlifeFactor    : Frequency of blinking. Set by a even number.
--                  : When 0 there is no blinking but only a wire controlled by enable.
-- C_OnTime         : Value between 1 and 32. defines the time a LED is ON.
-----------------------------------------------------------------------------------------------
entity LifeIndicator is
    generic (
        C_AlifeFactor : integer := 4;
        C_OnTime      : integer := 10
    );
    port (
      RefClkIn	    : in std_logic;
      LifeRst       : in std_logic;
      LifeIn		: in std_logic;
      LifeOut		: out std_logic;
      Debug         : out std_logic_vector (7 downto 0)
    );
end LifeIndicator;
-----------------------------------------------------------------------------------------------
-- Arcitecture section
-----------------------------------------------------------------------------------------------
architecture LifeIndicator_struct of LifeIndicator  is
-----------------------------------------------------------------------------------------------
-- Component Instantiation
-----------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------
-- Constants, Signals and Attributes Declarations
-----------------------------------------------------------------------------------------------
-- Functions
function AddrLenght(inp: integer) return std_logic_vector is
	variable temp: std_logic_vector(4 downto 0);
begin
    if (inp <= 6) then
		temp := "11111";
	elsif (inp > 6) then
		temp := "01111";
    elsif (inp >= 10) then
        temp := "00111";
	end if;
    return temp;
end function AddrLenght;
-- Constants
constant Low			: std_logic := '0';
constant High			: std_logic := '1';
constant LowVec         : bit_vector((32*C_AlifeFactor)-1 downto 0) := (others => '0');
constant HighVec        : bit_vector((32*C_AlifeFactor)-1 downto 0) := (others => '1');
--
constant SrlCntAddr		: std_logic_vector (4 downto 0) := "11111";
constant OnTimeStep     : bit_vector((32*C_AlifeFactor)-1 downto 0) :=
        (HighVec((32*C_AlifeFactor)-1 downto ((32*C_AlifeFactor)-(C_AlifeFactor*C_OnTime))) &
         LowVec(((32*C_AlifeFactor)-(C_AlifeFactor*C_OnTime))-1 downto 0));
-- Signals
signal IntSrlDin	    : std_logic_vector(C_AlifeFactor downto 0);
signal IntSrlQout       : std_logic_vector(C_AlifeFactor downto 0);
signal IntFfDin         : std_logic;
signal IntFfOut	        : std_logic;
-- Attributes
attribute KEEP_HIERARCHY : string;
    attribute KEEP_HIERARCHY of LifeIndicator_struct : architecture is "NO";
-----------------------------------------------------------------------------------------------
begin
-----------------------------------------------------------------------------------------------
-- Debug
-----------------------------------------------------------------------------------------------
Debug(0) <= Low;
Debug(1) <= Low;
Debug(2) <= Low;
Debug(3) <= Low;
Debug(4) <= Low;
Debug(5) <= Low;
Debug(6) <= Low;
Debug(7) <= Low;
-----------------------------------------------------------------------------------------------
-- No pulse but only enabled output.
-----------------------------------------------------------------------------------------------
Gen_Off : if C_AlifeFactor = 0 generate
        LifeOut <= LifeIn;
end generate Gen_Off;
-----------------------------------------------------------------------------------------------
-- Time between pulses is 32*RefClkIn + Tcko (for RefClkIn = 200MHz this is 160ns)
-----------------------------------------------------------------------------------------------
Gen_On : if C_AlifeFactor /= 0 generate
    Gen_Life : for n in 0 to C_AlifeFactor-1 generate
        Life_I_Srlc32e : SRLC32E
            generic map (INIT => 
                OnTimeStep(((32*C_AlifeFactor)-(32*n))-1 downto ((32*C_AlifeFactor)-(32*n))-32)
            )
            port map (D => IntSrlDin(C_AlifeFactor-n), CE => LifeIn, CLK => RefClkIn,
                    A => SrlCntAddr, Q31 => IntSrlQout((C_AlifeFactor-n)-1), Q => open);
        --
        LifeCase : process (IntSrlQout, IntFfOut)
        begin
            if (n = C_AlifeFactor-1) then 
                IntFfDin <= IntSrlQout(0);
                IntSrlDin(C_AlifeFactor) <= IntFfOut;
            else
                IntSrlDin((C_AlifeFactor-n)-1) <= IntSrlQout((C_AlifeFactor-n)-1);
            end if;
        end process;
        --
        Gen_Ffs : if n = C_AlifeFactor-1 generate
            Gen_Fdre : if OnTimeStep(0) = '0' generate
                Life_I_Fdre : FDRE
                    generic map (INIT => OnTimeStep(0))
                    port map (D => IntFfDin, CE => LifeIn, C => RefClkIn,
                            R => LifeRst, Q => IntFfOut);
            end generate Gen_Fdre;
            Gen_Fdse : if OnTimeStep(0) = '1' generate
                Life_I_Fdse : FDSE
                    generic map (INIT => OnTimeStep(((32*C_AlifeFactor)-(32*n))-32))
                    port map (D => IntFfDin, CE => LifeIn, C => RefClkIn,
                            S => LifeRst, Q => IntFfOut);
            end generate Gen_Fdse;
         end generate Gen_Ffs;
    --
    end generate Gen_Life;
    LifeOut <=  IntFfOut;
end generate Gen_On;
-----------------------------------------------------------------------------------------------
end  LifeIndicator_struct;
--