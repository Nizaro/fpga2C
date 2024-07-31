------------------------------------------------------------------------------
-- Copyright (c) 2012 Xilinx, Inc.
-- This design is confidential and proprietary of Xilinx, All Rights Reserved.
------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /   Vendor:                Xilinx
-- \   \   \/    Version:               1.0
--  \   \        Filename:              serdes_n_to_1_7_series.vhd
--  /   /        Date Last Modified:    Mar 30, 2016
-- /___/   /\    Date Created:          Dec 6, 2012
-- \   \  /  \
--  \___\/\___\
-- 
--Device: 	7-Series
--Purpose:  	DDR D-bit generic transmitter module 
-- 		Takes in S*D-1 bits of data and serialises this to D bits, where S can be 2, 4, 6, 8, 10 or 14
-- 		data is transmitted LSB first
--		Data formatting is set by the DATA_FORMAT parameter. 
--		PER_CLOCK (default) format transmits bits for 0, 1, 2 ... on the same transmitter clock edge
--		PER_CHANL format transmits bits for 0, 4, 8 .. (4:1 serdes) 0, 6, 12 .. (6:1 serdes) 
--              0, 8, 16 ..  (8:1 serdes) on the same sample edge
--		Data inversion can be accomplished via the TX_SWAP_MASK 
--		parameter if required.
--		Also generates clock output
--
--Reference:	
--    
--Revision History:
--    Rev 1.0 - First created (nicks)
--
------------------------------------------------------------------------------
--
--  Disclaimer: 
--
--		This disclaimer is not a license and does not grant any rights to the materials 
--              distributed herewith. Except as otherwise provided in a valid license issued to you 
--              by Xilinx, and to the maximum extent permitted by applicable law: 
--              (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND WITH ALL FAULTS, 
--              AND XILINX HEREBY DISCLAIMS ALL WARRANTIES AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, 
--              INCLUDING BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-INFRINGEMENT, OR 
--              FITNESS FOR ANY PARTICULAR PURPOSE; and (2) Xilinx shall not be liable (whether in contract 
--              or tort, including negligence, or under any other theory of liability) for any loss or damage 
--              of any kind or nature related to, arising under or in connection with these materials, 
--              including for any direct, or any indirect, special, incidental, or consequential loss 
--              or damage (including loss of data, profits, goodwill, or any type of loss or damage suffered 
--              as a result of any action brought by a third party) even if such damage or loss was 
--              reasonably foreseeable or Xilinx had been advised of the possibility of the same.
--
--  Critical Applications:
--
--		Xilinx products are not designed or intended to be fail-safe, or for use in any application 
--		requiring fail-safe performance, such as life-support or safety devices or systems, 
--		Class III medical devices, nuclear facilities, applications related to the deployment of airbags,
--		or any other applications that could lead to death, personal injury, or severe property or 
--		environmental damage (individually and collectively, "Critical Applications"). Customer assumes 
--		the sole risk and liability of any use of Xilinx products in Critical Applications, subject only 
--		to applicable laws and regulations governing limitations on product liability.
--
--  THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS PART OF THIS FILE AT ALL TIMES.
--
------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all ;

library unisim ;
use unisim.vcomponents.all ;

entity serdes_n_to_1_7_series is generic (
	D 			: integer := 8 ;   				-- Parameter to set the number of data lines
	S 			: integer := 8 ;   				-- Parameter to set the serdes factor : 2, 4, 6, 8, 10 or 14
	DATA_RATE 		: string := "DDR" ;     			-- Parameter Used to determine whether clocking is DDR or SDR
	DATA_FORMAT 		: string := "PER_CLOCK" ;     			-- Parameter Used to determine method for mapping input parallel word to output serial words
	DATA_OUTPUTS 		: string := "DIFF" ; 				-- Defines a differential ("DIFF") or single ended ("SEND") data output structure
	CLOCK_OUTPUT 		: string := "DIFF") ; 				-- Defines a differential ("DIFF") or single ended ("SEND") or no ("NONE") clock output structure
port (                                    	                                   	
	txclk 			:  in std_logic ;				-- DDR transmitter clock network
	reset 			:  in std_logic ;				-- Active high reset line
	system_clk 		:  in std_logic ;				-- Clock at system rate
	datain 			:  in std_logic_vector(D*S-1 downto 0) ;	-- Data for output
	clk_pattern 		:  in std_logic_vector(S-1 downto 0) ;		-- clock pattern for output
	clkout_p 		: out std_logic ;				-- differential output clock
	clkout_n 		: out std_logic ;				-- differential output clock
	clkout 			: out std_logic ;				-- single ended output clock
	dataout_p		: out std_logic_vector(D-1 downto 0) ;		-- differential output data
	dataout_n 		: out std_logic_vector(D-1 downto 0) ;		-- differential output data
	dataout 		: out std_logic_vector(D-1 downto 0)) ;		-- single ended output data

end serdes_n_to_1_7_series ;

architecture arch_serdes_n_to_1_7_series of serdes_n_to_1_7_series is
	
signal	tx_data_out 		: std_logic_vector(D-1 downto 0);	
signal	mdatain 		: std_logic_vector(D*14-1 downto 0);	
signal	cdatain 		: std_logic_vector(13 downto 0) ;	
signal	tx_clk_out 		: std_logic ;
signal	reset_int 		: std_logic ;	
signal	shiftin1	 	: std_logic_vector(D-1 downto 0);	
signal	shiftin2	 	: std_logic_vector(D-1 downto 0);	
signal	cshift1	 		: std_logic ;	
signal	cshift2	 		: std_logic ;	
signal	all_low		 	: std_logic_vector(D-1 downto 0);	
	
constant TX_SWAP_MASK 		: std_logic_vector(D-1 downto 0) := (others => '0') ;	-- pinswap mask for output bits (0 = no swap (default), 1 = swap). Allows outputs to be connected the 'wrong way round' to ease PCB routing.

begin

process (system_clk, reset) begin
if reset = '1' then
	reset_int <= '1' ;
elsif system_clk'event and system_clk = '1' then
	reset_int <= '0' ;
end if ;
end process ;


loop0 : for i in 0 to D-1 generate

  all_low(i) <= '0' ;
  	
-- re-arrange data bits for transmission, connect unused serdes inputs to '0' and invert lines as given by the mask
-- NOTE If pin inversion is required (non-zero SWAP MASK) then inverters will be implemented in fabric

  loop1 : for j in 0 to 13 generate

    loop1a : if (DATA_FORMAT = "PER_CLOCK") generate 	
      loop1aa : if (j <= S-1) generate
        mdatain((14*i)+j) <= datain(i+(D*j)) xor TX_SWAP_MASK(i) ;
      end generate ;
      loop1ab : if (j > S-1) generate
        mdatain((14*i)+j) <= '0' ;
      end generate ;
    end generate ;
    loop1b : if (DATA_FORMAT = "PER_CHANL") generate  	
      loop1ba : if (j <= S-1) generate
        mdatain((14*i)+j) <= datain(S*i+j) xor TX_SWAP_MASK(i) ;
      end generate ;
      loop1bb : if (j > S-1) generate
        mdatain((14*i)+j) <= '0' ;
      end generate ;
    end generate ;
  end generate ;

loop2a : if (DATA_OUTPUTS = "DIFF") generate
io_data_out : OBUFDS port map(
	O    		=> dataout_p(i),
	OB       	=> dataout_n(i),
	I         	=> tx_data_out(i));
end generate ;

loop2b : if (DATA_OUTPUTS = "SEND") generate
io_data_out : OBUF port map(
	O    		=> dataout(i),
	I         	=> tx_data_out(i));
end generate ;

loop4a : if ((DATA_RATE = "DDR" and S /= 4) or DATA_RATE = "SDR") generate
	
oserdes_m : OSERDESE2 generic map (
	DATA_WIDTH     		=> S, 			-- SERDES word width
	TRISTATE_WIDTH     	=> 1, 
	DATA_RATE_OQ      	=> DATA_RATE, 		-- <SDR>, DDR
	DATA_RATE_TQ      	=> "SDR", 		-- <SDR>, DDR
	SERDES_MODE    		=> "MASTER")  		-- <DEFAULT>, MASTER, SLAVE
port map (                      
	OQ       		=> tx_data_out(i),
	OCE     		=> '1',
	CLK    			=> txclk,
	RST     		=> reset_int,
	CLKDIV  		=> system_clk,
	D8  			=> mdatain(14*i+7),
	D7  			=> mdatain(14*i+6),
	D6  			=> mdatain(14*i+5),
	D5  			=> mdatain(14*i+4),
	D4  			=> mdatain(14*i+3),
	D3  			=> mdatain(14*i+2),
	D2  			=> mdatain(14*i+1),
	D1  			=> mdatain(14*i+0),
	TQ  			=> open,
	T1 			=> '0',
	T2 			=> '0',
	T3 			=> '0',
	T4 			=> '0',
	TCE	 		=> '1',
	TBYTEIN			=> '0',
	TBYTEOUT		=> open,
	OFB	 		=> open,
	TFB	 		=> open,
	SHIFTOUT1 		=> open,			
	SHIFTOUT2 		=> open,			
	SHIFTIN1 		=> shiftin1(i),	
	SHIFTIN2 		=> shiftin2(i)) ;				
	
end generate ;

loop4b : if (DATA_RATE = "DDR" and S = 4) generate

oserdes_m : OSERDESE2 generic map (
	DATA_WIDTH     		=> 4, 			-- SERDES word width
	TRISTATE_WIDTH     	=> 4, 
	DATA_RATE_OQ      	=> "DDR", 		-- <SDR>, DDR
	DATA_RATE_TQ      	=> "DDR", 		-- <SDR>, DDR
	SERDES_MODE    		=> "MASTER")  		-- <DEFAULT>, MASTER, SLAVE
port map (                      
	OQ       		=> tx_data_out(i),
	OCE     		=> '1',
	CLK    			=> txclk,
	RST     		=> reset_int,
	CLKDIV  		=> system_clk,
	D8  			=> '0',
	D7  			=> '0',
	D6  			=> '0',
	D5  			=> '0',
	D4  			=> mdatain(14*i+3),
	D3  			=> mdatain(14*i+2),
	D2  			=> mdatain(14*i+1),
	D1  			=> mdatain(14*i+0),
	TQ  			=> open,
	T1 			=> '0',
	T2 			=> '0',
	T3 			=> '0',
	T4 			=> '0',
	TCE	 		=> '1',
	TBYTEIN			=> '0',
	TBYTEOUT		=> open,
	OFB	 		=> open,
	TFB	 		=> open,
	SHIFTOUT1 		=> open,			
	SHIFTOUT2 		=> open,			
	SHIFTIN1 		=> '0',	
	SHIFTIN2 		=> '0') ;				

end generate ;

loop3 : if (S = 10 or S = 14) generate

oserdes_s : OSERDESE2 generic map (
	DATA_WIDTH     		=> S, 			-- SERDES word width
	TRISTATE_WIDTH     	=> 1, 
	DATA_RATE_OQ      	=> DATA_RATE, 		-- <SDR>, DDR
	DATA_RATE_TQ      	=> "SDR", 		-- <SDR>, DDR
	SERDES_MODE    		=> "SLAVE")  		-- <DEFAULT>, MASTER, SLAVE
port map (                     
	OQ       		=> open,
	OCE     		=> '1',
	CLK    			=> txclk,
	RST     		=> reset_int,
	CLKDIV  		=> system_clk,
	D8  			=> mdatain(14*i+13),
	D7  			=> mdatain(14*i+12),
	D6  			=> mdatain(14*i+11),
	D5  			=> mdatain(14*i+10),
	D4  			=> mdatain(14*i+9),
	D3  			=> mdatain(14*i+8),
	D2  			=> '0',
	D1  			=> '0',
	TQ  			=> open,
	T1 			=> '0',
	T2 			=> '0',
	T3 			=> '0',
	T4 			=> '0',
	TCE	 		=> '1',
	TBYTEIN			=> '0',
	TBYTEOUT		=> open,
	OFB	 		=> open,
	TFB	 		=> open,
	SHIFTOUT1 		=> shiftin1(i),			
	SHIFTOUT2 		=> shiftin2(i),			
	SHIFTIN1 		=> '0',	
	SHIFTIN2 		=> '0') ;

end generate ;
end generate ;

loop4a : if (S = 4) generate
	cdatain <= "0000000000" & clk_pattern ;
end generate ;
loop4b : if (S = 6) generate
	cdatain <= "00000000" & clk_pattern ;
	shiftin1 <= all_low ;
	shiftin2 <= all_low ;
	cshift1 <= '0' ;
	cshift2 <= '0' ;
end generate ;
loop4c : if (S = 8) generate
	cdatain <= "000000" & clk_pattern ;
	shiftin1 <= all_low ;
	shiftin2 <= all_low ;
	cshift1 <= '0' ;
	cshift2 <= '0' ;
end generate ;
loop4d : if (S = 10) generate
	cdatain <= "0000" & clk_pattern ;
end generate ;
loop4e : if (S = 14) generate
	cdatain <= clk_pattern ;
end generate ;

loop5a : if (CLOCK_OUTPUT = "DIFF") generate 

io_clk_out : OBUFDS port map (
	O    		=> clkout_p,
	OB       	=> clkout_n,
	I         	=> tx_clk_out);
end generate ;

loop5b : if (CLOCK_OUTPUT = "SEND") generate
io_data_out : OBUF port map(
	O    		=> clkout,
	I         	=> tx_clk_out);
end generate ;

loop6 : if ((CLOCK_OUTPUT = "DIFF" or CLOCK_OUTPUT = "SEND") and ((DATA_RATE = "DDR" and S /= 4) or DATA_RATE = "SDR")) generate

oserdes_cm : OSERDESE2 generic map(
	DATA_WIDTH     		=> S, 			-- SERDES word width
	TRISTATE_WIDTH     	=> 1, 
	DATA_RATE_OQ      	=> DATA_RATE, 		-- <SDR>, DDR
	DATA_RATE_TQ      	=> "SDR", 		-- <SDR>, DDR
	SERDES_MODE    		=> "MASTER")  		-- <DEFAULT>, MASTER, SLAVE
port map (                     
	OQ       		=> tx_clk_out,
	OCE     		=> '1',
	CLK    			=> txclk,
	RST     		=> reset_int,
	CLKDIV  		=> system_clk,
	D8  			=> cdatain(7),
	D7  			=> cdatain(6),
	D6  			=> cdatain(5),
	D5  			=> cdatain(4),
	D4  			=> cdatain(3),
	D3  			=> cdatain(2),
	D2  			=> cdatain(1),
	D1  			=> cdatain(0),
	TQ  			=> open,
	T1 			=> '0',
	T2 			=> '0',
	T3 			=> '0',
	T4 			=> '0',
	TCE	 		=> '1',
	TBYTEIN			=> '0',
	TBYTEOUT		=> open,
	OFB	 		=> open,
	TFB	 		=> open,
	SHIFTOUT1 		=> open,			
	SHIFTOUT2 		=> open,			
	SHIFTIN1 		=> cshift1,	
	SHIFTIN2 		=> cshift2) ;	

end generate ;

loop8 : if ((CLOCK_OUTPUT = "DIFF" or CLOCK_OUTPUT = "SEND") and (DATA_RATE = "DDR" and S = 4)) generate

oserdes_cm : OSERDESE2 generic map(
	DATA_WIDTH     		=> S, 			-- SERDES word width
	TRISTATE_WIDTH     	=> 4, 
	DATA_RATE_OQ      	=> "DDR", 		-- <SDR>, DDR
	DATA_RATE_TQ      	=> "DDR", 		-- <SDR>, DDR
	SERDES_MODE    		=> "MASTER")  		-- <DEFAULT>, MASTER, SLAVE
port map (                     
	OQ       		=> tx_clk_out,
	OCE     		=> '1',
	CLK    			=> txclk,
	RST     		=> reset_int,
	CLKDIV  		=> system_clk,
	D8  			=> '0',
	D7  			=> '0',
	D6  			=> '0',
	D5  			=> '0',
	D4  			=> cdatain(3),
	D3  			=> cdatain(2),
	D2  			=> cdatain(1),
	D1  			=> cdatain(0),
	TQ  			=> open,
	T1 			=> '0',
	T2 			=> '0',
	T3 			=> '0',
	T4 			=> '0',
	TCE	 		=> '1',
	TBYTEIN			=> '0',
	TBYTEOUT		=> open,
	OFB	 		=> open,
	TFB	 		=> open,
	SHIFTOUT1 		=> open,			
	SHIFTOUT2 		=> open,			
	SHIFTIN1 		=> '0',	
	SHIFTIN2 		=> '0') ;	
	
end generate ;

loop7 : if ((CLOCK_OUTPUT = "DIFF" or CLOCK_OUTPUT = "SEND") and (S = 10 or S = 14)) generate
	
oserdes_cs : OSERDESE2 generic map(
	DATA_WIDTH     		=> S, 			-- SERDES word width
	TRISTATE_WIDTH     	=> 1, 
	DATA_RATE_OQ      	=> "DDR", 		-- <SDR>, DDR
	DATA_RATE_TQ      	=> "SDR", 		-- <SDR>, DDR
	SERDES_MODE    		=> "SLAVE")  		-- <DEFAULT>, MASTER, SLAVE
port map (                    
	OQ       		=> open,
	OCE     		=> '1',
	CLK    			=> txclk,
	RST     		=> reset_int,
	CLKDIV  		=> system_clk,
	D8  			=> cdatain(13),
	D7  			=> cdatain(12),
	D6  			=> cdatain(11),
	D5  			=> cdatain(10),
	D4  			=> cdatain(9),
	D3  			=> cdatain(8),
	D2  			=> '0',
	D1  			=> '0',
	TQ  			=> open,
	T1 			=> '0',
	T2 			=> '0',
	T3 			=> '0',
	T4 			=> '0',
	TCE	 		=> '1',
	TBYTEIN			=> '0',
	TBYTEOUT		=> open,
	OFB	 		=> open,
	TFB	 		=> open,
	SHIFTOUT1 		=> cshift1,			
	SHIFTOUT2 		=> cshift2,			
	SHIFTIN1 		=> '0',	
	SHIFTIN2 		=> '0') ;

end generate ;
end arch_serdes_n_to_1_7_series ;
