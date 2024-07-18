`timescale 1 ns / 1 ps

module main_design_v_mix_0_0_hls_deadlock_idx1_monitor ( // for module main_design_v_mix_0_0_v_mix_inst.grp_VMixHlsDataFlowFunction_fu_476
    input wire clock,
    input wire reset,
    input wire [9:0] axis_block_sigs,
    input wire [36:0] inst_idle_sigs,
    input wire [20:0] inst_block_sigs,
    output wire block
);

// signal declare
reg monitor_find_block;
wire idx2_block;
wire idx6_block;
wire idx10_block;
wire idx14_block;
wire [20:0] process_idle_vec;
wire [20:0] process_chan_block_vec;
wire [20:0] process_axis_block_vec;
wire df_has_axis_block;
wire all_process_stop;

assign block = monitor_find_block;
assign idx14_block = axis_block_sigs[9];
assign process_axis_block_vec[0] = 1'b0;
assign process_idle_vec[0] = inst_idle_sigs[0];
assign process_chan_block_vec[0] = inst_block_sigs[0];
assign process_axis_block_vec[1] = idx2_block & (1'b0 | axis_block_sigs[1] | axis_block_sigs[2] | axis_block_sigs[0]);
assign process_idle_vec[1] = inst_idle_sigs[1];
assign process_chan_block_vec[1] = inst_block_sigs[1];
assign process_axis_block_vec[2] = 1'b0;
assign process_idle_vec[2] = inst_idle_sigs[2];
assign process_chan_block_vec[2] = inst_block_sigs[2];
assign process_axis_block_vec[3] = 1'b0;
assign process_idle_vec[3] = inst_idle_sigs[3];
assign process_chan_block_vec[3] = inst_block_sigs[3];
assign process_axis_block_vec[4] = 1'b0;
assign process_idle_vec[4] = inst_idle_sigs[4];
assign process_chan_block_vec[4] = inst_block_sigs[4];
assign process_axis_block_vec[5] = idx6_block & (1'b0 | axis_block_sigs[5] | axis_block_sigs[3] | axis_block_sigs[4]);
assign process_idle_vec[5] = inst_idle_sigs[5];
assign process_chan_block_vec[5] = inst_block_sigs[5];
assign process_axis_block_vec[6] = 1'b0;
assign process_idle_vec[6] = inst_idle_sigs[6];
assign process_chan_block_vec[6] = inst_block_sigs[6];
assign process_axis_block_vec[7] = 1'b0;
assign process_idle_vec[7] = inst_idle_sigs[7];
assign process_chan_block_vec[7] = inst_block_sigs[7];
assign process_axis_block_vec[8] = 1'b0;
assign process_idle_vec[8] = inst_idle_sigs[8];
assign process_chan_block_vec[8] = inst_block_sigs[8];
assign process_axis_block_vec[9] = 1'b0;
assign process_idle_vec[9] = inst_idle_sigs[9];
assign process_chan_block_vec[9] = inst_block_sigs[9];
assign process_axis_block_vec[10] = 1'b0;
assign process_idle_vec[10] = inst_idle_sigs[10];
assign process_chan_block_vec[10] = inst_block_sigs[10];
assign process_axis_block_vec[11] = idx10_block & (1'b0 | axis_block_sigs[7] | axis_block_sigs[6] | axis_block_sigs[8]);
assign process_idle_vec[11] = inst_idle_sigs[11];
assign process_chan_block_vec[11] = inst_block_sigs[11];
assign process_axis_block_vec[12] = 1'b0;
assign process_idle_vec[12] = inst_idle_sigs[12];
assign process_chan_block_vec[12] = inst_block_sigs[12];
assign process_axis_block_vec[13] = 1'b0;
assign process_idle_vec[13] = inst_idle_sigs[13];
assign process_chan_block_vec[13] = inst_block_sigs[13];
assign process_axis_block_vec[14] = 1'b0;
assign process_idle_vec[14] = inst_idle_sigs[14];
assign process_chan_block_vec[14] = inst_block_sigs[14];
assign process_axis_block_vec[15] = 1'b0;
assign process_idle_vec[15] = inst_idle_sigs[15];
assign process_chan_block_vec[15] = inst_block_sigs[15];
assign process_axis_block_vec[16] = 1'b0;
assign process_idle_vec[16] = inst_idle_sigs[16];
assign process_chan_block_vec[16] = inst_block_sigs[16];
assign process_axis_block_vec[17] = 1'b0;
assign process_idle_vec[17] = inst_idle_sigs[17];
assign process_chan_block_vec[17] = inst_block_sigs[17];
assign process_axis_block_vec[18] = 1'b0;
assign process_idle_vec[18] = inst_idle_sigs[18];
assign process_chan_block_vec[18] = inst_block_sigs[18];
assign process_axis_block_vec[19] = 1'b0;
assign process_idle_vec[19] = inst_idle_sigs[19];
assign process_chan_block_vec[19] = inst_block_sigs[19];
assign process_axis_block_vec[20] = idx14_block & (1'b0 | axis_block_sigs[9]);
assign process_idle_vec[20] = inst_idle_sigs[20];
assign process_chan_block_vec[20] = inst_block_sigs[20];
assign df_has_axis_block = |{process_axis_block_vec};
assign all_process_stop = (process_idle_vec[0] | process_chan_block_vec[0] | process_axis_block_vec[0]) & (process_idle_vec[1] | process_chan_block_vec[1] | process_axis_block_vec[1]) & (process_idle_vec[2] | process_chan_block_vec[2] | process_axis_block_vec[2]) & (process_idle_vec[3] | process_chan_block_vec[3] | process_axis_block_vec[3]) & (process_idle_vec[4] | process_chan_block_vec[4] | process_axis_block_vec[4]) & (process_idle_vec[5] | process_chan_block_vec[5] | process_axis_block_vec[5]) & (process_idle_vec[6] | process_chan_block_vec[6] | process_axis_block_vec[6]) & (process_idle_vec[7] | process_chan_block_vec[7] | process_axis_block_vec[7]) & (process_idle_vec[8] | process_chan_block_vec[8] | process_axis_block_vec[8]) & (process_idle_vec[9] | process_chan_block_vec[9] | process_axis_block_vec[9]) & (process_idle_vec[10] | process_chan_block_vec[10] | process_axis_block_vec[10]) & (process_idle_vec[11] | process_chan_block_vec[11] | process_axis_block_vec[11]) & (process_idle_vec[12] | process_chan_block_vec[12] | process_axis_block_vec[12]) & (process_idle_vec[13] | process_chan_block_vec[13] | process_axis_block_vec[13]) & (process_idle_vec[14] | process_chan_block_vec[14] | process_axis_block_vec[14]) & (process_idle_vec[15] | process_chan_block_vec[15] | process_axis_block_vec[15]) & (process_idle_vec[16] | process_chan_block_vec[16] | process_axis_block_vec[16]) & (process_idle_vec[17] | process_chan_block_vec[17] | process_axis_block_vec[17]) & (process_idle_vec[18] | process_chan_block_vec[18] | process_axis_block_vec[18]) & (process_idle_vec[19] | process_chan_block_vec[19] | process_axis_block_vec[19]) & (process_idle_vec[20] | process_chan_block_vec[20] | process_axis_block_vec[20]);

always @(posedge clock) begin
    if (reset == 1'b1)
        monitor_find_block <= 1'b0;
    else if (df_has_axis_block == 1'b1 && all_process_stop == 1'b1)
        monitor_find_block <= 1'b1;
    else
        monitor_find_block <= 1'b0;
end


// instant sub module
 main_design_v_mix_0_0_hls_deadlock_idx2_monitor main_design_v_mix_0_0_hls_deadlock_idx2_monitor_U (
    .clock(clock),
    .reset(reset),
    .axis_block_sigs(axis_block_sigs),
    .inst_idle_sigs(inst_idle_sigs),
    .inst_block_sigs(inst_block_sigs),
    .block(idx2_block)
);

 main_design_v_mix_0_0_hls_deadlock_idx6_monitor main_design_v_mix_0_0_hls_deadlock_idx6_monitor_U (
    .clock(clock),
    .reset(reset),
    .axis_block_sigs(axis_block_sigs),
    .inst_idle_sigs(inst_idle_sigs),
    .inst_block_sigs(inst_block_sigs),
    .block(idx6_block)
);

 main_design_v_mix_0_0_hls_deadlock_idx10_monitor main_design_v_mix_0_0_hls_deadlock_idx10_monitor_U (
    .clock(clock),
    .reset(reset),
    .axis_block_sigs(axis_block_sigs),
    .inst_idle_sigs(inst_idle_sigs),
    .inst_block_sigs(inst_block_sigs),
    .block(idx10_block)
);

endmodule
