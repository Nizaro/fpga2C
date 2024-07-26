`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:        Xilinx
// Engineer:       bwiec
// 
// Create Date:    09/20/2013 03:37:01 PM
// Design Name:    dma_sim
// Module Name:    dma_sim_top
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

module dma_sim_top
(
    // Global signals
    input        aclk,
    input        aresetn,
    
    // S_AXIS_S2MM_1 DMA interface
    input [31:0] s_axis_s2mm_1_tdata,
    input        s_axis_s2mm_1_tlast,
    output       s_axis_s2mm_1_tready,
    input        s_axis_s2mm_1_tvalid,
    
    // S_AXIS_S2MM_2 DMA interface
    input [31:0] s_axis_s2mm_2_tdata,
    input        s_axis_s2mm_2_tlast,
    output       s_axis_s2mm_2_tready,
    input        s_axis_s2mm_2_tvalid
);
    
    design_1_wrapper design_1_wrapper_inst
    (
        // Global signals
        .M_AXI_LITE_ACLK(aclk),
        .M_AXI_LITE_ARESETN(aresetn),
        
        // S_AXIS_S2MM_1 DMA interface        
        .S_AXIS_S2MM_1_tdata(s_axis_s2mm_1_tdata),
        .S_AXIS_S2MM_1_tkeep(4'hF),
        .S_AXIS_S2MM_1_tlast(s_axis_s2mm_1_tlast),
        .S_AXIS_S2MM_1_tready(s_axis_s2mm_1_tready),
        .S_AXIS_S2MM_1_tvalid(s_axis_s2mm_1_tvalid),
        
        // S_AXIS_S2MM_2 DMA interface
        .S_AXIS_S2MM_2_tdata(s_axis_s2mm_2_tdata),
        .S_AXIS_S2MM_2_tkeep(4'hF),
        .S_AXIS_S2MM_2_tlast(s_axis_s2mm_2_tlast),
        .S_AXIS_S2MM_2_tready(s_axis_s2mm_2_tready),
        .S_AXIS_S2MM_2_tvalid(s_axis_s2mm_2_tvalid)
    );
    
endmodule


