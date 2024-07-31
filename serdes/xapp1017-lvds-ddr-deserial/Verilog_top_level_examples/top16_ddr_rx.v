//////////////////////////////////////////////////////////////////////////////
// Copyright (c) 2012 Xilinx, Inc.
// This design is confidential and proprietary of Xilinx, All Rights Reserved.
//////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /   Vendor:                Xilinx
// \   \   \/    Version:               1.1
//  \   \        Filename:              top16_ddr_rx.v
//  /   /        Date Last Modified:    Mar 30, 2016
// /___/   /\    Date Created:          Sep 2, 2011
// \   \  /  \
//  \___\/\___\
// 
//Device: 	7-Series
//Purpose:  	DDR top level receiver example - 1 channel1 of 16-bits
//
//Reference:	XAPP1017.pdf
//    
//Revision History:
//    Rev 1.0 - First created (nicks)
//
////////////////////////////////////////////////////////////////////////////////
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

`timescale 1ps/1ps

module top16_ddr_rx (
input			reset,				// reset (active high)
input			refclkin,			// Reference clock for input delay control
input			clkin_p,  clkin_n,		// lvds clock input
input		[15:0]	datain_p, datain_n,		// lvds data inputs
output	reg		dummy) ; 			// Dummy output for test

// Parameters

parameter integer     	D = 16 ;			// Set the number of inputs to be 16 in this example
parameter integer     	S = 6 ;				// Set the serdes factor to be 6 in this example

wire	[D*S-1:0]	rxd ;			
reg	[D*S-1:0]	old_rxd	;		
wire			refclkint ; 		
wire			rx_lckd ;		
wire			rx_system_clk ;					
wire			delay_ready ;		
reg 			bitslip ;
reg	[3:0]		bcount ;

// 200 or 300 Mhz Reference Clock Input, 300 MHz receomended for bit rates > 1 Gbps

IBUF iob_200m_in(
	.I    			(refclkin),
	.O         		(refclkint));

BUFG bufg_200_ref (
	.I 			(refclkint), 
	.O 			(refclkintbufg)) ;
	
IDELAYCTRL icontrol (              				// Instantiate input delay control block
	.REFCLK			(refclkintbufg),
	.RST			(reset),
	.RDY			(delay_ready));

// Input clock and data
	
serdes_1_to_468_idelay_ddr #(
	.S			(S),				// Set the serdes factor (4, 6 or 8)
 	.HIGH_PERFORMANCE_MODE 	("TRUE"),
      	.D			(D),				// Number of data lines
      	.REF_FREQ		(300.0),			// Set idelay control reference frequency, 300 MHz shown
      	.CLKIN_PERIOD		(1.666),			// Set input clock period, 600 MHz shown
	.DATA_FORMAT 		("PER_CLOCK"))  		// PER_CLOCK or PER_CHANL data formatting
rx0 (                      
	.clkin_p   		(clkin_p),
	.clkin_n   		(clkin_n),
	.datain_p     		(datain_p),
	.datain_n     		(datain_n),
	.enable_phase_detector	(1'b1),				// enable phase detector (active alignment) operation
	.enable_monitor		(1'b0),				// enables data eye monitoring
	.dcd_correct		(1'b0),				// enables clock duty cycle correction
	.rxclk    		(),
	.idelay_rdy		(delay_ready),
	.system_clk		(rx_system_clk),
	.reset     		(reset),
	.rx_lckd		(rx_lckd),
	.bitslip  		(bitslip),
	.rx_data		(rxd),
	.bit_rate_value		(16'h1200),			// required bit rate value in BCD (1200 Mbps shown)
	.bit_time_value		(),				// bit time value
	.eye_info		(),				// data eye monitor per line
	.m_delay_1hot		(),				// sample point monitor per line
	.debug			()) ;				// debug bus

// Data checking for testing, user logic will go here
// expected pattern for testing is upper 4 bits = "1100", other bits are a walking '1' pattern

always @(posedge rx_system_clk) begin
	if (rx_lckd == 1'b0) begin
		dummy <= 1'b0 ;
		bitslip <= 1'b0 ;
		bcount <= 4'h0 ;
	end
	else begin
		bcount <= bcount + 4'h1 ;
		if ((rxd[16*S-1:16*S-4] != 4'b1100) && bcount == 4'hF) begin
			bitslip <= 1'b1 ;
		end
		else begin
			bitslip <= 1'b0 ;		
		end
		old_rxd <= rxd ;
		if (rxd == {4'hC, old_rxd[16*S-6:0], old_rxd[16*S-5]}) begin
			dummy <= 1'b1 ;
		end
		else begin
			dummy <= 1'b0 ;
		end
	end
end
      	
endmodule