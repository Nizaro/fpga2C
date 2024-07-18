`timescale 1 ns / 1 ps

module main_design_v_mix_0_0_hls_deadlock_idx10_monitor ( // for module main_design_v_mix_0_0_v_mix_inst.grp_VMixHlsDataFlowFunction_fu_476.AXIvideo2MultiPixStream_U0
    input wire clock,
    input wire reset,
    input wire [9:0] axis_block_sigs,
    input wire [36:0] inst_idle_sigs,
    input wire [20:0] inst_block_sigs,
    output wire block
);

// signal declare
reg monitor_find_block;
wire idx12_block;
wire idx11_block;
wire idx13_block;
wire sub_parallel_block;
wire all_sub_parallel_has_block;
wire all_sub_single_has_block;
wire cur_axis_has_block;
wire seq_is_axis_block;

assign block = monitor_find_block;
assign idx12_block = axis_block_sigs[7];
assign idx11_block = axis_block_sigs[6];
assign idx13_block = axis_block_sigs[8];
assign all_sub_parallel_has_block = 1'b0;
assign all_sub_single_has_block = 1'b0 | (idx12_block & (axis_block_sigs[7])) | (idx11_block & (axis_block_sigs[6])) | (idx13_block & (axis_block_sigs[8]));
assign cur_axis_has_block = 1'b0;
assign seq_is_axis_block = all_sub_parallel_has_block | all_sub_single_has_block | cur_axis_has_block;

always @(posedge clock) begin
    if (reset == 1'b1)
        monitor_find_block <= 1'b0;
    else if (seq_is_axis_block == 1'b1)
        monitor_find_block <= 1'b1;
    else
        monitor_find_block <= 1'b0;
end


// instant sub module
endmodule
