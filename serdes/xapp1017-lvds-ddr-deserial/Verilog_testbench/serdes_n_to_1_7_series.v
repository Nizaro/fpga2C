//////////////////////////////////////////////////////////////////////////////
// Copyright (c) 2012 Xilinx, Inc.
// This design is confidential and proprietary of Xilinx, All Rights Reserved.
//////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /   Vendor:                Xilinx
// \   \   \/    Version:               1.0
//  \   \        Filename:              serdes_n_to_1_7_series.vhd
//  /   /        Date Last Modified:    Mar 30, 2016
// /___/   /\    Date Created:          Dec 6, 2013
// \   \  /  \
//  \___\/\___\
// 
//Device: 	7-Series
//Purpose:  	D-bit generic transmitter module 
// 		Takes in S*D-1 bits of data and serialises this to D bits, where S can be 2, 4, 6, 8, 10 or 14
// 		data is transmitted LSB first. Transmission is DDR or SDR as defined by DATA_RATE
//		Data formatting is set by the DATA_FORMAT parameter. 
//		PER_CLOCK (default) format transmits bits for 0, 1, 2 ... on the same transmitter clock edge
//		PER_CHANL format transmits bits for 0, 4, 8 .. (4:1 serdes) 0, 6, 12 .. (6:1 serdes) 
//              0, 8, 16 ..  (8:1 serdes) on the same sample edge
//		Data inversion can be accomplished via the TX_SWAP_MASK 
//		parameter if required.
//		Also generates clock output
//
//Reference:	
//    
//Revision History:
//    Rev 1.0 - First created (nicks)
//
//////////////////////////////////////////////////////////////////////////////
//
//  Disclaimer: 
//
//		This disclaimer is not a license and does not grant any rights to the materials 
//              distributed herewith. Except as otherwise provided in a valid license issued to you 
//              by Xilinx, and to the maximum extent permitted by applicable law: 
//              (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND WITH ALL FAULTS, 
//              AND XILINX HEREBY DISCLAIMS ALL WARRANTIES AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, 
//              INCLUDING BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-INFRINGEMENT, OR 
//              FITNESS FOR ANY PARTICULAR PURPOSE; and (2) Xilinx shall not be liable (whether in contract 
//              or tort, including negligence, or under any other theory of liability) for any loss or damage 
//              of any kind or nature related to, arising under or in connection with these materials, 
//              including for any direct, or any indirect, special, incidental, or consequential loss 
//              or damage (including loss of data, profits, goodwill, or any type of loss or damage suffered 
//              as a result of any action brought by a third party) even if such damage or loss was 
//              reasonably foreseeable or Xilinx had been advised of the possibility of the same.
//
//  Critical Applications:
//
//		Xilinx products are not designed or intended to be fail-safe, or for use in any application 
//		requiring fail-safe performance, such as life-support or safety devices or systems, 
//		Class III medical devices, nuclear facilities, applications related to the deployment of airbags,
//		or any other applications that could lead to death, personal injury, or severe property or 
//		environmental damage (individually and collectively, "Critical Applications"). Customer assumes 
//		the sole risk and liability of any use of Xilinx products in Critical Applications, subject only 
//		to applicable laws and regulations governing limitations on product liability.
//
//  THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS PART OF THIS FILE AT ALL TIMES.
//
//////////////////////////////////////////////////////////////////////////////

module serdes_n_to_1_7_series (txclk, reset, system_clk, datain, clk_pattern, clkout_p, clkout_n, clkout, dataout_p, dataout_n, dataout) ;

parameter integer 	D = 8 ;   			// Parameter to set the number of data lines
parameter integer 	S = 8 ;   			// Parameter to set the serdes factor : 2, 4, 6, 8, 10 or 14 for DDR, 2, 3, 4, 5, 6, 7 or 8 for SDR
parameter         	DATA_RATE = "DDR" ;     	// Parameter Used to determine whether clocking is DDR or SDR
parameter         	DATA_FORMAT = "PER_CLOCK" ;     // Parameter Used to determine method for mapping input parallel word to output serial words
parameter         	DATA_OUTPUTS = "DIFF" ; 	// Defines a differential ("DIFF") or single ended ("SEND") data output structure
parameter         	CLOCK_OUTPUT = "DIFF" ; 	// Defines a differential ("DIFF") or single ended ("SEND") or no ("NONE") clock output structure
                                     	                                   	
input			txclk ;				// DDR transmitter clock network
input			reset ;				// Active high reset line
input			system_clk ;			// Clock at system rate
input	[D*S-1:0]	datain ;			// Data for output
input	[S-1:0]		clk_pattern ;			// clock pattern for output
output			clkout_p ;			// differential output clock
output			clkout_n ;			// differential output clock
output			clkout ;			// single ended output clock
output	[D-1:0]		dataout_p ;			// differential output data
output	[D-1:0]		dataout_n ;			// differential output data
output	[D-1:0]		dataout ;			// single ended output data

	
wire 	[D-1:0]		tx_data_out ;	
wire 	[D*14-1:0]	mdatain ;	
wire 	[13:0]		cdatain ;	
wire 			tx_clk_out ;
reg 			reset_int ;	
wire 	[D-1:0]		shiftin1 ;
wire 	[D-1:0]		shiftin2 ;
wire 			cshift1 ;
wire 			cshift2 ;
	
parameter [D-1:0] 	TX_SWAP_MASK = 0 ;		// pinswap mask for output bits (0 = no swap (default), 1 = swap). Allows outputs to be connected the 'wrong way round' to ease PCB routing.

always @ (posedge system_clk or posedge reset) begin
if (reset == 1'b1) begin
	reset_int <= 1'b1 ;
end
else begin
	reset_int <= 1'b0 ;
end
end

genvar i ;
genvar j ;

generate
for (i = 0 ; i <= 13 ; i = i+1) begin : loop1		// set up clock pattern length
	if (i < S) begin
		assign cdatain[i] = clk_pattern[i] ;
	end
	if (i >= S) begin
		assign cdatain[i] = 1'b0 ;
	end
end
endgenerate

generate
for (i = 0 ; i <= D-1 ; i = i+1) begin : loop0

// re-arrange data bits for transmission, connect unused serdes inputs to '0' and invert lines as given by the mask
// NOTE If pin inversion is required (non-zero SWAP MASK) then inverters will be implemented in fabric

  for (j = 0 ; j <= 13 ; j = j+1) begin : loop1

    if (DATA_FORMAT == "PER_CLOCK") begin 	
      if (j <= S-1) begin
        assign mdatain[(14*i)+j] = datain[i+(D*j)] ^ TX_SWAP_MASK[i] ;
      end
      if (j > S-1) begin
        assign mdatain[(14*i)+j] = 1'b0 ;
      end
    end
    if (DATA_FORMAT == "PER_CHANL") begin  	
      if (j <= S-1) begin
        assign mdatain[(14*i)+j] = datain[S*i+j] ^ TX_SWAP_MASK[i] ;
      end
      if (j > S-1) begin
        assign mdatain[(14*i)+j] = 1'b0 ;
      end
    end
  end

if (DATA_OUTPUTS == "DIFF") begin
OBUFDS io_data_out(
	.O    		(dataout_p[i]),
	.OB       	(dataout_n[i]),
	.I         	(tx_data_out[i]));
	
	assign dataout[i] = 1'b0 ;
end

if (DATA_OUTPUTS == "SEND") begin
OBUF io_data_out(
	.O    		(dataout[i]),
	.I         	(tx_data_out[i]));
	
	assign dataout_p[i] = 1'b0 ;
	assign dataout_n[i] = 1'b0 ;

end

if ((DATA_RATE == "DDR" && S != 4) || DATA_RATE == "SDR") begin
	
OSERDESE2 # (
	.DATA_WIDTH     	(S), 			// SERDES word width
	.TRISTATE_WIDTH     	(1), 
	.DATA_RATE_OQ      	(DATA_RATE), 		// <SDR>, DDR
	.DATA_RATE_TQ      	("SDR"), 		// <SDR>, DDR
	.SERDES_MODE    	("MASTER"))  		// <DEFAULT>, MASTER, SLAVE
oserdes_m (                      
	.OQ       		(tx_data_out[i]),
	.OCE     		(1'b1),
	.CLK    		(txclk),
	.RST     		(reset_int),
	.CLKDIV  		(system_clk),
	.D8  			(mdatain[(14*i)+7]),
	.D7  			(mdatain[(14*i)+6]),
	.D6  			(mdatain[(14*i)+5]),
	.D5  			(mdatain[(14*i)+4]),
	.D4  			(mdatain[(14*i)+3]),
	.D3  			(mdatain[(14*i)+2]),
	.D2  			(mdatain[(14*i)+1]),
	.D1  			(mdatain[(14*i)+0]),
	.TQ  			(),
	.T1 			(1'b0),
	.T2 			(1'b0),
	.T3 			(1'b0),
	.T4 			(1'b0),
	.TCE	 		(1'b1),
	.TBYTEIN		(1'b0),
	.TBYTEOUT		(),
	.OFB	 		(),
	.TFB	 		(),
	.SHIFTOUT1 		(),			
	.SHIFTOUT2 		(),			
	.SHIFTIN1 		(shiftin1[i]),	
	.SHIFTIN2 		(shiftin2[i])) ;				

end

if (DATA_RATE == "DDR" && S == 4) begin
	
OSERDESE2 # (
	.DATA_WIDTH     	(S), 			// SERDES word width
	.TRISTATE_WIDTH     	(4), 
	.DATA_RATE_OQ      	("DDR"), 		// <SDR>, DDR
	.DATA_RATE_TQ      	("DDR"), 		// <SDR>, DDR
	.SERDES_MODE    	("MASTER"))  		// <DEFAULT>, MASTER, SLAVE
oserdes_m (                      
	.OQ       		(tx_data_out[i]),
	.OCE     		(1'b1),
	.CLK    		(txclk),
	.RST     		(reset_int),
	.CLKDIV  		(system_clk),
	.D8  			(1'b0),
	.D7  			(1'b0),
	.D6  			(1'b0),
	.D5  			(1'b0),
	.D4  			(mdatain[(14*i)+3]),
	.D3  			(mdatain[(14*i)+2]),
	.D2  			(mdatain[(14*i)+1]),
	.D1  			(mdatain[(14*i)+0]),
	.TQ  			(),
	.T1 			(1'b0),
	.T2 			(1'b0),
	.T3 			(1'b0),
	.T4 			(1'b0),
	.TCE	 		(1'b1),
	.TBYTEIN		(1'b0),
	.TBYTEOUT		(),
	.OFB	 		(),
	.TFB	 		(),
	.SHIFTOUT1 		(),			
	.SHIFTOUT2 		(),			
	.SHIFTIN1 		(1'b0),	
	.SHIFTIN2 		(1'b0)) ;				

end

if (S != 10 && S != 14) begin
	assign shiftin1[i] = 1'b0 ;
	assign shiftin2[i] = 1'b0 ;
end

if (S == 10 || S == 14) begin
	
OSERDESE2 # (
	.DATA_WIDTH     	(S), 			// SERDES word width
	.TRISTATE_WIDTH     	(1), 
	.DATA_RATE_OQ      	("DDR"), 		// <SDR>, DDR
	.DATA_RATE_TQ      	("SDR"), 		// <SDR>, DDR
	.SERDES_MODE    	("SLAVE"))  		// <DEFAULT>, MASTER, SLAVE
oserdes_s (                      
	.OQ       		(),
	.OCE     		(1'b1),
	.CLK    		(txclk),
	.RST     		(reset_int),
	.CLKDIV  		(system_clk),
	.D8  			(mdatain[(14*i)+13]),
	.D7  			(mdatain[(14*i)+12]),
	.D6  			(mdatain[(14*i)+11]),
	.D5  			(mdatain[(14*i)+10]),
	.D4  			(mdatain[(14*i)+9]),
	.D3  			(mdatain[(14*i)+8]),
	.D2  			(1'b0),
	.D1  			(1'b0),
	.TQ  			(),
	.T1 			(1'b0),
	.T2 			(1'b0),
	.T3 			(1'b0),
	.T4 			(1'b0),
	.TCE	 		(1'b1),
	.TBYTEIN		(1'b0),
	.TBYTEOUT		(),
	.OFB	 		(),
	.TFB	 		(),
	.SHIFTOUT1 		(shiftin1[i]),			
	.SHIFTOUT2 		(shiftin2[i]),			
	.SHIFTIN1 		(1'b0),	
	.SHIFTIN2 		(1'b0)) ;

end
end

if (CLOCK_OUTPUT == "DIFF") begin

OBUFDS io_clk_out (
	.O    			(clkout_p),
	.OB       		(clkout_n),
	.I         		(tx_clk_out));

	assign clkout = 1'b0 ;
end

if (CLOCK_OUTPUT == "SEND") begin
OBUF io_data_out(
	.O    		(clkout),
	.I         	(tx_clk_out));

	assign clkout_p = 1'b0 ;
	assign clkout_n = 1'b0 ;
end

if ((CLOCK_OUTPUT == "DIFF" || CLOCK_OUTPUT == "SEND") && ((DATA_RATE == "DDR" && S != 4) || DATA_RATE == "SDR")) begin

OSERDESE2 #(
	.DATA_WIDTH     	(S), 			// SERDES word width
	.TRISTATE_WIDTH     	(1), 
	.DATA_RATE_OQ      	(DATA_RATE), 		// <SDR>, DDR
	.DATA_RATE_TQ      	("SDR"), 		// <SDR>, DDR
	.SERDES_MODE    	("MASTER"))  		// <DEFAULT>, MASTER, SLAVE
oserdes_cm (                    
	.OQ       		(tx_clk_out),
	.OCE     		(1'b1),
	.CLK    		(txclk),
	.RST     		(reset_int),
	.CLKDIV  		(system_clk),
	.D8  			(cdatain[7]),
	.D7  			(cdatain[6]),
	.D6  			(cdatain[5]),
	.D5  			(cdatain[4]),
	.D4  			(cdatain[3]),
	.D3  			(cdatain[2]),
	.D2  			(cdatain[1]),
	.D1  			(cdatain[0]),
	.TQ  			(),
	.T1 			(1'b0),
	.T2 			(1'b0),
	.T3 			(1'b0),
	.T4 			(1'b0),
	.TCE	 		(1'b1),
	.TBYTEIN		(1'b0),
	.TBYTEOUT		(),
	.OFB	 		(),
	.TFB	 		(),
	.SHIFTOUT1 		(),			
	.SHIFTOUT2 		(),			
	.SHIFTIN1 		(cshift1),	
	.SHIFTIN2 		(cshift2)) ;	

if (S != 10 && S != 14) begin
	assign cshift1 = 1'b0 ;
	assign cshift2 = 1'b0 ;
end
end

if ((CLOCK_OUTPUT == "DIFF" || CLOCK_OUTPUT == "SEND") && (DATA_RATE == "DDR" && S == 4)) begin

OSERDESE2 #(
	.DATA_WIDTH     	(S), 			// SERDES word width
	.TRISTATE_WIDTH     	(4), 
	.DATA_RATE_OQ      	("DDR"), 		// <SDR>, DDR
	.DATA_RATE_TQ      	("DDR"), 		// <SDR>, DDR
	.SERDES_MODE    	("MASTER"))  		// <DEFAULT>, MASTER, SLAVE
oserdes_cm (                    
	.OQ       		(tx_clk_out),
	.OCE     		(1'b1),
	.CLK    		(txclk),
	.RST     		(reset_int),
	.CLKDIV  		(system_clk),
	.D8  			(1'b0),
	.D7  			(1'b0),
	.D6  			(1'b0),
	.D5  			(1'b0),
	.D4  			(cdatain[3]),
	.D3  			(cdatain[2]),
	.D2  			(cdatain[1]),
	.D1  			(cdatain[0]),
	.TQ  			(),
	.T1 			(1'b0),
	.T2 			(1'b0),
	.T3 			(1'b0),
	.T4 			(1'b0),
	.TCE	 		(1'b1),
	.TBYTEIN		(1'b0),
	.TBYTEOUT		(),
	.OFB	 		(),
	.TFB	 		(),
	.SHIFTOUT1 		(),			
	.SHIFTOUT2 		(),			
	.SHIFTIN1 		(1'b0),	
	.SHIFTIN2 		(1'b0)) ;
	
end

if ((CLOCK_OUTPUT == "DIFF" || CLOCK_OUTPUT == "SEND") && (S == 10 || S == 14)) begin

OSERDESE2 #(
	.DATA_WIDTH     	(S), 			// SERDES word width
	.TRISTATE_WIDTH     	(1), 
	.DATA_RATE_OQ      	("DDR"), 		// <SDR>, DDR
	.DATA_RATE_TQ      	("SDR"), 		// <SDR>, DDR
	.SERDES_MODE    	("SLAVE"))  		// <DEFAULT>, MASTER, SLAVE
oserdes_cs (                    
	.OQ       		(),
	.OCE     		(1'b1),
	.CLK    		(txclk),
	.RST     		(reset_int),
	.CLKDIV  		(system_clk),
	.D8  			(cdatain[13]),
	.D7  			(cdatain[12]),
	.D6  			(cdatain[11]),
	.D5  			(cdatain[10]),
	.D4  			(cdatain[9]),
	.D3  			(cdatain[8]),
	.D2  			(1'b0),
	.D1  			(1'b0),
	.TQ  			(),
	.T1 			(1'b0),
	.T2 			(1'b0),
	.T3 			(1'b0),
	.T4 			(1'b0),
	.TCE	 		(1'b1),
	.TBYTEIN		(1'b0),
	.TBYTEOUT		(),
	.OFB	 		(),
	.TFB	 		(),
	.SHIFTOUT1 		(cshift1),			
	.SHIFTOUT2 		(cshift2),			
	.SHIFTIN1 		(1'b0),	
	.SHIFTIN2 		(1'b0)) ;

end
endgenerate 
		
endmodule
