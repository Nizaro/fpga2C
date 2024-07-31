//////////////////////////////////////////////////////////////////////////////
// Copyright (c) 2013 Xilinx, Inc.
// This design is confidential and proprietary of Xilinx, All Rights Reserved.
//////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /   Vendor:                Xilinx
// \   \   \/    Version:               1.0
//  \   \        Filename:              tb_top16_ddr_rx.v
//  /   /        Date Last Modified:    Mar 30, 2016
// /___/   /\    Date Created:          Sep 2, 2011
// \   \  /  \
//  \___\/\___\
// 
//Device: 	7-Series
//Purpose:  	ddr top level receiver example - 1 channel of 16 bits
//
//Reference:	XAPP1017.pdf
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
`timescale 1 ps / 1ps

module tb_top16_ddr_rx () ;

reg 			clk300 ;
reg 			tb_clk ;
reg 			tb_sys_clk ;
wire			clkout_p ;
wire 			clkout_n ;
reg 			reset ;
wire	[15:0]		dataout_p ;
wire 	[15:0]		dataout_n ;
wire			match ;
reg	[16*S-1:0] 	datain ;

parameter integer     	S = 6 ;				// Set the serdes factor to be 6 in this example
parameter integer     	P = 833 ;			// Set the tx clock period

initial clk300 = 1 ;
initial tb_clk = 1 ;
initial tb_sys_clk = 1 ;
initial datain = 16'h0001 ;

always #(1666) clk300 = ~clk300 ;

always #(P) tb_clk = ~tb_clk ;
always #(P*S/2) tb_sys_clk = ~tb_sys_clk ;
always #(P*S) datain = {4'hC, datain[16*S-6:0], datain[16*S-5]} ; ;

initial
begin
reset = 1'b1 ;
#150000
reset = 1'b0;
end

serdes_n_to_1_7_series #(
	.D				(16),
	.S 				(6),
	.DATA_RATE 			("DDR"),
	.DATA_FORMAT 			("PER_CLOCK"))
tx(
	.datain				(datain),
	.clk_pattern			(6'h15),
	.txclk				(tb_clk),  
	.system_clk			(tb_sys_clk),
	.reset				(reset),
	.clkout_p			(clkout_p),  
	.clkout_n			(clkout_n),
	.dataout_p			(dataout_p), 
	.dataout_n			(dataout_n)) ;
                                        
top16_ddr_rx rx(                  
	.reset				(reset),
	.refclkin			(clk300),
	.clkin_p                       	(clkout_p),
	.clkin_n			(clkout_n),	
	.datain_p               	(dataout_p),	
	.datain_n			(dataout_n),	
	.dummy	 			(match)) ;

endmodule


