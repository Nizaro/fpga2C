`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:        Xilinx
// Engineer:       bwiec
// 
// Create Date:    09/20/2013 03:37:01 PM
// Design Name:    dma_sim
// Module Name:    dma_sim_top_tb, test
// Project Name:   dma_ex
// Target Devices: 7-series
// Tool Versions:  Vivado 2013.2
// Description
// 
// Dependencies:   None
// 
// Revision:
//   - Revision 1.0 - Initial release
//                  - Simulation verification using Modelsim
//   - Revision 0.1 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

`define BTT 32'h0010_0000 // Total bytes to transfer (per DMA)

module dma_sim_top_tb;

    // ***** TB parameters *****
    parameter CLK_PER = 10;

    // ***** Inputs *****
    // Global signals
    reg        aclk                 = 0;
    reg        aresetn              = 0;
    
    // S_AXIS_S2MM_1 DMA interface
    reg [31:0] s_axis_s2mm_1_tdata  = 0;
    reg        s_axis_s2mm_1_tlast  = 0;
    reg        s_axis_s2mm_1_tvalid = 0;
    
    // S_AXIS_S2MM_2 DMA interface
    reg [31:0] s_axis_s2mm_2_tdata  = 0;
    reg        s_axis_s2mm_2_tlast  = 0;
    reg        s_axis_s2mm_2_tvalid = 0;
    
    // ***** Outputs *****
    // S_AXIS_S2MM_1 DMA interface
    wire       s_axis_s2mm_1_tready;
    
    // S_AXIS_S2MM_2 DMA interface
    wire       s_axis_s2mm_2_tready;

    // ***** Generate clocks *****
    always
        #(CLK_PER/2) aclk = ~aclk;
        
    // ***** Generate resets *****
    initial
        #105 aresetn = 1'b1;
        
    // ***** Instantiate UUT *****
    dma_sim_top uut
    (
        // Global signals
        .aclk(aclk),
        .aresetn(aresetn),
        
        // S_AXIS_S2MM_1 DMA interface
        .s_axis_s2mm_1_tdata(s_axis_s2mm_1_tdata),
        .s_axis_s2mm_1_tlast(s_axis_s2mm_1_tlast),
        .s_axis_s2mm_1_tready(s_axis_s2mm_1_tready),
        .s_axis_s2mm_1_tvalid(s_axis_s2mm_1_tvalid),
        
        // S_AXIS_S2MM_2 DMA interface
        .s_axis_s2mm_2_tdata(s_axis_s2mm_2_tdata),
        .s_axis_s2mm_2_tlast(s_axis_s2mm_2_tlast),
        .s_axis_s2mm_2_tready(s_axis_s2mm_2_tready),
        .s_axis_s2mm_2_tvalid(s_axis_s2mm_2_tvalid)
    );
    
    // ***** Drive DMA1 AXIS interface *****
    always @(posedge aclk) begin
	
		if (~aresetn) begin
			s_axis_s2mm_1_tvalid <= 0;
			s_axis_s2mm_1_tdata  <= 0;
			s_axis_s2mm_1_tlast  <= 0;
		end
		else begin
			s_axis_s2mm_1_tvalid <= 1'b1;
		
			if (s_axis_s2mm_1_tvalid && s_axis_s2mm_1_tready)
				s_axis_s2mm_1_tdata <= s_axis_s2mm_1_tdata + 1'b1;
				
			if (s_axis_s2mm_1_tdata == `BTT/4-2'd2)
				s_axis_s2mm_1_tlast <= 1'b1;
			else
				s_axis_s2mm_1_tlast <= 1'b0;
		end
		
    end
    
    // ***** Drive DMA2 AXIS interface *****
    always @(posedge aclk) begin
	
		if (~aresetn) begin
			s_axis_s2mm_2_tvalid <= 0;
			s_axis_s2mm_2_tdata  <= 0;
			s_axis_s2mm_2_tlast  <= 0;
		end
		else begin    
			s_axis_s2mm_2_tvalid <= 1'b1;
		
			if (s_axis_s2mm_2_tvalid && s_axis_s2mm_2_tready)
				s_axis_s2mm_2_tdata <= s_axis_s2mm_2_tdata + 1'b1;
				
			if (s_axis_s2mm_2_tdata == `BTT/4-2'd2)
				s_axis_s2mm_2_tlast <= 1'b1;
			else
				s_axis_s2mm_2_tlast <= 1'b0;
        end
    end

endmodule
  
// Define for DMA registers
`define DMA1_BASEADDR 32'h41E0_0000
`define DMA2_BASEADDR 32'h41E1_0000
`define DMACR_OFFSET  8'h30
`define DA_OFFSET     8'h48
`define LENGTH_OFFSET 8'h58

// Include DMA engine instances
`define INCLUDE_DMA1 1
`define INCLUDE_DMA2 1

module test;
    
    // ***** Local parameters *****
    parameter ADDR_WIDTH   = 32;
    parameter DATA_WIDTH   = 32;
    parameter NUM_REGS     = 3;     // Number of DMA registers that I need to write (total for both channels)
    parameter NUM_BEATS    = 20000; // Number of memory-side beats to be transferred
    
    // ***** Internal signals *****
    integer                  ii = 0;
    integer                  jj = 0;
    integer                  kk = 0;
    reg     [ADDR_WIDTH-1:0] dma_axi_lite_addr [0:NUM_REGS-1];
    integer                  dma_axi_lite_prot_type = 0;
    reg     [DATA_WIDTH-1:0] dma_axi_lite_data [0:NUM_REGS-1];
    reg     [1:0]            dma_axi_lite_resp = 0;
    reg dont_care1, dont_care2, dont_care3;
    
    // ***** Create an instance of the tb *****
    dma_sim_top_tb tb_inst();
    
    // ***** Set up DMA register space *****
    initial begin
    
        // ***** Allow sim to continue on error *****
        tb_inst.uut.design_1_wrapper_inst.design_1_i.design_1.cdn_axi_bfm_1.cdn_axi4_lite_master_bfm_inst.set_stop_on_error(0);
        tb_inst.uut.design_1_wrapper_inst.design_1_i.design_1.cdn_axi_bfm_2.cdn_axi4_slave_bfm_inst.set_stop_on_error(0);
    
        `ifdef INCLUDE_DMA1
        
            // Initialize DMA1 register values to be written
            dma_axi_lite_addr[0] = `DMA1_BASEADDR + `DMACR_OFFSET;
            dma_axi_lite_data[0] = 32'h0000_0001;
            
            dma_axi_lite_addr[1] = `DMA1_BASEADDR + `DA_OFFSET;
            dma_axi_lite_data[1] = 32'h7600_0000;
            
            dma_axi_lite_addr[2] = `DMA1_BASEADDR + `LENGTH_OFFSET;
            dma_axi_lite_data[2] = `BTT;
                    
            // Wait for end of reset
            wait(tb_inst.aresetn === 0) @(posedge tb_inst.aclk);
            wait(tb_inst.aresetn === 1) @(posedge tb_inst.aclk);
            
            $display("---------------------------------------------------------");
            $display("Setting up AXI DMA1 registers                            ");
            $display("---------------------------------------------------------");
            
            for (ii = 0; ii < NUM_REGS; ii = ii + 1) begin
                
                tb_inst.uut.design_1_wrapper_inst.design_1_i.design_1.cdn_axi_bfm_1.cdn_axi4_lite_master_bfm_inst.WRITE_BURST
                (
                    dma_axi_lite_addr[ii],
                    dma_axi_lite_prot_type,
                    dma_axi_lite_data[ii],
                    DATA_WIDTH/8,
                    dma_axi_lite_resp
                );
                
            end
        
        `endif
        
        `ifdef INCLUDE_DMA2
        
            // Initialize DMA1 register values to be written
            dma_axi_lite_addr[0] = `DMA2_BASEADDR + `DMACR_OFFSET;
            dma_axi_lite_data[0] = 32'h0000_0001;
            
            dma_axi_lite_addr[1] = `DMA2_BASEADDR + `DA_OFFSET;
            dma_axi_lite_data[1] = 32'h7610_0000;
            
            dma_axi_lite_addr[2] = `DMA2_BASEADDR + `LENGTH_OFFSET;
            dma_axi_lite_data[2] = `BTT;
            
            for (ii = 0; ii < NUM_REGS; ii = ii + 1) begin
                
                tb_inst.uut.design_1_wrapper_inst.design_1_i.design_1.cdn_axi_bfm_1.cdn_axi4_lite_master_bfm_inst.WRITE_BURST
                (
                    dma_axi_lite_addr[ii],
                    dma_axi_lite_prot_type,
                    dma_axi_lite_data[ii],
                    DATA_WIDTH/8,
                    dma_axi_lite_resp
                );
                
            end
            
        `endif
    
    end
    
    // ***** Drive slave BFM for memory model *****
    initial begin    
        fork    
            `ifdef INCLUDE_DMA1
            
                // Respond to DMA1
                for (jj = 0; jj < NUM_BEATS; jj = jj + 1) begin
                
                    $display("Response to DMA2 number %d", jj);
                    tb_inst.uut.design_1_wrapper_inst.design_1_i.design_1.cdn_axi_bfm_2.cdn_axi4_slave_bfm_inst.WRITE_BURST_RESPOND
                    (
                        0, // WID
                        0, // BUSER
                        dont_care1,
                        dont_care2,
                        dont_care3
                    );
                    
                end
                
            `endif
            
            `ifdef INCLUDE_DMA2
            
                // Respond to DMA2
                for (kk = 0; kk < NUM_BEATS; kk = kk + 1) begin
                
                    $display("Response to DMA2 number %d", kk);
                    tb_inst.uut.design_1_wrapper_inst.design_1_i.design_1.cdn_axi_bfm_2.cdn_axi4_slave_bfm_inst.WRITE_BURST_RESPOND
                    (
                        1, // WID
                        0, // BUSER
                        dont_care1,
                        dont_care2,
                        dont_care3
                    );
                    
                end
                
            `endif
            
        join
    end

endmodule
