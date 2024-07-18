set moduleName AXIvideo2MultiPixStream_5
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {AXIvideo2MultiPixStream.5}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ s_axis_video1_V_data_V int 24 regular {axi_s 0 volatile  { s_axis_video1 Data } }  }
	{ s_axis_video1_V_keep_V int 3 regular {axi_s 0 volatile  { s_axis_video1 Keep } }  }
	{ s_axis_video1_V_strb_V int 3 regular {axi_s 0 volatile  { s_axis_video1 Strb } }  }
	{ s_axis_video1_V_user_V int 1 regular {axi_s 0 volatile  { s_axis_video1 User } }  }
	{ s_axis_video1_V_last_V int 1 regular {axi_s 0 volatile  { s_axis_video1 Last } }  }
	{ s_axis_video1_V_id_V int 1 regular {axi_s 0 volatile  { s_axis_video1 ID } }  }
	{ s_axis_video1_V_dest_V int 1 regular {axi_s 0 volatile  { s_axis_video1 Dest } }  }
	{ srcLayer1 int 24 regular {fifo 1 volatile }  }
	{ HwReg_layerHeight_1_val int 16 regular  }
	{ HwReg_layerWidth_1_val int 16 regular  }
	{ HwReg_layerEnableFlag_1_val int 1 regular  }
	{ HwReg_layerEnableFlag_1_val_c17 int 1 regular {fifo 1}  }
	{ HwReg_layerWidth_1_val_c24 int 16 regular {fifo 1}  }
	{ HwReg_layerHeight_1_val_c32 int 16 regular {fifo 1}  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "s_axis_video1_V_data_V", "interface" : "axis", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_video1_V_keep_V", "interface" : "axis", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_video1_V_strb_V", "interface" : "axis", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_video1_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_video1_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_video1_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_video1_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "srcLayer1", "interface" : "fifo", "bitwidth" : 24, "direction" : "WRITEONLY"} , 
 	{ "Name" : "HwReg_layerHeight_1_val", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "HwReg_layerWidth_1_val", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "HwReg_layerEnableFlag_1_val", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "HwReg_layerEnableFlag_1_val_c17", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "HwReg_layerWidth_1_val_c24", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "HwReg_layerHeight_1_val_c32", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 42
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ s_axis_video1_TDATA sc_in sc_lv 24 signal 0 } 
	{ s_axis_video1_TVALID sc_in sc_logic 1 invld 6 } 
	{ s_axis_video1_TREADY sc_out sc_logic 1 inacc 6 } 
	{ s_axis_video1_TKEEP sc_in sc_lv 3 signal 1 } 
	{ s_axis_video1_TSTRB sc_in sc_lv 3 signal 2 } 
	{ s_axis_video1_TUSER sc_in sc_lv 1 signal 3 } 
	{ s_axis_video1_TLAST sc_in sc_lv 1 signal 4 } 
	{ s_axis_video1_TID sc_in sc_lv 1 signal 5 } 
	{ s_axis_video1_TDEST sc_in sc_lv 1 signal 6 } 
	{ srcLayer1_din sc_out sc_lv 24 signal 7 } 
	{ srcLayer1_num_data_valid sc_in sc_lv 3 signal 7 } 
	{ srcLayer1_fifo_cap sc_in sc_lv 3 signal 7 } 
	{ srcLayer1_full_n sc_in sc_logic 1 signal 7 } 
	{ srcLayer1_write sc_out sc_logic 1 signal 7 } 
	{ HwReg_layerHeight_1_val sc_in sc_lv 16 signal 8 } 
	{ HwReg_layerWidth_1_val sc_in sc_lv 16 signal 9 } 
	{ HwReg_layerEnableFlag_1_val sc_in sc_lv 1 signal 10 } 
	{ HwReg_layerEnableFlag_1_val_c17_din sc_out sc_lv 1 signal 11 } 
	{ HwReg_layerEnableFlag_1_val_c17_num_data_valid sc_in sc_lv 3 signal 11 } 
	{ HwReg_layerEnableFlag_1_val_c17_fifo_cap sc_in sc_lv 3 signal 11 } 
	{ HwReg_layerEnableFlag_1_val_c17_full_n sc_in sc_logic 1 signal 11 } 
	{ HwReg_layerEnableFlag_1_val_c17_write sc_out sc_logic 1 signal 11 } 
	{ HwReg_layerWidth_1_val_c24_din sc_out sc_lv 16 signal 12 } 
	{ HwReg_layerWidth_1_val_c24_num_data_valid sc_in sc_lv 3 signal 12 } 
	{ HwReg_layerWidth_1_val_c24_fifo_cap sc_in sc_lv 3 signal 12 } 
	{ HwReg_layerWidth_1_val_c24_full_n sc_in sc_logic 1 signal 12 } 
	{ HwReg_layerWidth_1_val_c24_write sc_out sc_logic 1 signal 12 } 
	{ HwReg_layerHeight_1_val_c32_din sc_out sc_lv 16 signal 13 } 
	{ HwReg_layerHeight_1_val_c32_num_data_valid sc_in sc_lv 3 signal 13 } 
	{ HwReg_layerHeight_1_val_c32_fifo_cap sc_in sc_lv 3 signal 13 } 
	{ HwReg_layerHeight_1_val_c32_full_n sc_in sc_logic 1 signal 13 } 
	{ HwReg_layerHeight_1_val_c32_write sc_out sc_logic 1 signal 13 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "s_axis_video1_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "s_axis_video1_V_data_V", "role": "default" }} , 
 	{ "name": "s_axis_video1_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "s_axis_video1_V_dest_V", "role": "default" }} , 
 	{ "name": "s_axis_video1_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "s_axis_video1_V_dest_V", "role": "default" }} , 
 	{ "name": "s_axis_video1_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "s_axis_video1_V_keep_V", "role": "default" }} , 
 	{ "name": "s_axis_video1_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "s_axis_video1_V_strb_V", "role": "default" }} , 
 	{ "name": "s_axis_video1_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axis_video1_V_user_V", "role": "default" }} , 
 	{ "name": "s_axis_video1_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axis_video1_V_last_V", "role": "default" }} , 
 	{ "name": "s_axis_video1_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axis_video1_V_id_V", "role": "default" }} , 
 	{ "name": "s_axis_video1_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axis_video1_V_dest_V", "role": "default" }} , 
 	{ "name": "srcLayer1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "srcLayer1", "role": "din" }} , 
 	{ "name": "srcLayer1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "srcLayer1", "role": "num_data_valid" }} , 
 	{ "name": "srcLayer1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "srcLayer1", "role": "fifo_cap" }} , 
 	{ "name": "srcLayer1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "srcLayer1", "role": "full_n" }} , 
 	{ "name": "srcLayer1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "srcLayer1", "role": "write" }} , 
 	{ "name": "HwReg_layerHeight_1_val", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "HwReg_layerHeight_1_val", "role": "default" }} , 
 	{ "name": "HwReg_layerWidth_1_val", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "HwReg_layerWidth_1_val", "role": "default" }} , 
 	{ "name": "HwReg_layerEnableFlag_1_val", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "HwReg_layerEnableFlag_1_val", "role": "default" }} , 
 	{ "name": "HwReg_layerEnableFlag_1_val_c17_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "HwReg_layerEnableFlag_1_val_c17", "role": "din" }} , 
 	{ "name": "HwReg_layerEnableFlag_1_val_c17_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "HwReg_layerEnableFlag_1_val_c17", "role": "num_data_valid" }} , 
 	{ "name": "HwReg_layerEnableFlag_1_val_c17_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "HwReg_layerEnableFlag_1_val_c17", "role": "fifo_cap" }} , 
 	{ "name": "HwReg_layerEnableFlag_1_val_c17_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HwReg_layerEnableFlag_1_val_c17", "role": "full_n" }} , 
 	{ "name": "HwReg_layerEnableFlag_1_val_c17_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HwReg_layerEnableFlag_1_val_c17", "role": "write" }} , 
 	{ "name": "HwReg_layerWidth_1_val_c24_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "HwReg_layerWidth_1_val_c24", "role": "din" }} , 
 	{ "name": "HwReg_layerWidth_1_val_c24_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "HwReg_layerWidth_1_val_c24", "role": "num_data_valid" }} , 
 	{ "name": "HwReg_layerWidth_1_val_c24_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "HwReg_layerWidth_1_val_c24", "role": "fifo_cap" }} , 
 	{ "name": "HwReg_layerWidth_1_val_c24_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HwReg_layerWidth_1_val_c24", "role": "full_n" }} , 
 	{ "name": "HwReg_layerWidth_1_val_c24_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HwReg_layerWidth_1_val_c24", "role": "write" }} , 
 	{ "name": "HwReg_layerHeight_1_val_c32_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "HwReg_layerHeight_1_val_c32", "role": "din" }} , 
 	{ "name": "HwReg_layerHeight_1_val_c32_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "HwReg_layerHeight_1_val_c32", "role": "num_data_valid" }} , 
 	{ "name": "HwReg_layerHeight_1_val_c32_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "HwReg_layerHeight_1_val_c32", "role": "fifo_cap" }} , 
 	{ "name": "HwReg_layerHeight_1_val_c32_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HwReg_layerHeight_1_val_c32", "role": "full_n" }} , 
 	{ "name": "HwReg_layerHeight_1_val_c32_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HwReg_layerHeight_1_val_c32", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "3", "5", "7", "8"],
		"CDFG" : "AXIvideo2MultiPixStream_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "8316006",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "s_axis_video1_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video1",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_AXIvideo2MultiPixStream_5_Pipeline_loop_wait_for_eol_fu_228", "Port" : "s_axis_video1_V_data_V", "Inst_start_state" : "8", "Inst_end_state" : "9"},
					{"ID" : "1", "SubInstance" : "grp_AXIvideo2MultiPixStream_5_Pipeline_loop_wait_for_start_fu_180", "Port" : "s_axis_video1_V_data_V", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "3", "SubInstance" : "grp_AXIvideo2MultiPixStream_5_Pipeline_loop_width_fu_200", "Port" : "s_axis_video1_V_data_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "s_axis_video1_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video1",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_AXIvideo2MultiPixStream_5_Pipeline_loop_wait_for_eol_fu_228", "Port" : "s_axis_video1_V_keep_V", "Inst_start_state" : "8", "Inst_end_state" : "9"},
					{"ID" : "1", "SubInstance" : "grp_AXIvideo2MultiPixStream_5_Pipeline_loop_wait_for_start_fu_180", "Port" : "s_axis_video1_V_keep_V", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "3", "SubInstance" : "grp_AXIvideo2MultiPixStream_5_Pipeline_loop_width_fu_200", "Port" : "s_axis_video1_V_keep_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "s_axis_video1_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video1",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_AXIvideo2MultiPixStream_5_Pipeline_loop_wait_for_eol_fu_228", "Port" : "s_axis_video1_V_strb_V", "Inst_start_state" : "8", "Inst_end_state" : "9"},
					{"ID" : "1", "SubInstance" : "grp_AXIvideo2MultiPixStream_5_Pipeline_loop_wait_for_start_fu_180", "Port" : "s_axis_video1_V_strb_V", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "3", "SubInstance" : "grp_AXIvideo2MultiPixStream_5_Pipeline_loop_width_fu_200", "Port" : "s_axis_video1_V_strb_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "s_axis_video1_V_user_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video1",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_AXIvideo2MultiPixStream_5_Pipeline_loop_wait_for_eol_fu_228", "Port" : "s_axis_video1_V_user_V", "Inst_start_state" : "8", "Inst_end_state" : "9"},
					{"ID" : "1", "SubInstance" : "grp_AXIvideo2MultiPixStream_5_Pipeline_loop_wait_for_start_fu_180", "Port" : "s_axis_video1_V_user_V", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "3", "SubInstance" : "grp_AXIvideo2MultiPixStream_5_Pipeline_loop_width_fu_200", "Port" : "s_axis_video1_V_user_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "s_axis_video1_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video1",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_AXIvideo2MultiPixStream_5_Pipeline_loop_wait_for_eol_fu_228", "Port" : "s_axis_video1_V_last_V", "Inst_start_state" : "8", "Inst_end_state" : "9"},
					{"ID" : "1", "SubInstance" : "grp_AXIvideo2MultiPixStream_5_Pipeline_loop_wait_for_start_fu_180", "Port" : "s_axis_video1_V_last_V", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "3", "SubInstance" : "grp_AXIvideo2MultiPixStream_5_Pipeline_loop_width_fu_200", "Port" : "s_axis_video1_V_last_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "s_axis_video1_V_id_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video1",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_AXIvideo2MultiPixStream_5_Pipeline_loop_wait_for_eol_fu_228", "Port" : "s_axis_video1_V_id_V", "Inst_start_state" : "8", "Inst_end_state" : "9"},
					{"ID" : "1", "SubInstance" : "grp_AXIvideo2MultiPixStream_5_Pipeline_loop_wait_for_start_fu_180", "Port" : "s_axis_video1_V_id_V", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "3", "SubInstance" : "grp_AXIvideo2MultiPixStream_5_Pipeline_loop_width_fu_200", "Port" : "s_axis_video1_V_id_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "s_axis_video1_V_dest_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video1",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_AXIvideo2MultiPixStream_5_Pipeline_loop_wait_for_eol_fu_228", "Port" : "s_axis_video1_V_dest_V", "Inst_start_state" : "8", "Inst_end_state" : "9"},
					{"ID" : "1", "SubInstance" : "grp_AXIvideo2MultiPixStream_5_Pipeline_loop_wait_for_start_fu_180", "Port" : "s_axis_video1_V_dest_V", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "3", "SubInstance" : "grp_AXIvideo2MultiPixStream_5_Pipeline_loop_width_fu_200", "Port" : "s_axis_video1_V_dest_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "srcLayer1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_AXIvideo2MultiPixStream_5_Pipeline_loop_width_fu_200", "Port" : "srcLayer1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "HwReg_layerHeight_1_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "HwReg_layerWidth_1_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "HwReg_layerEnableFlag_1_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "HwReg_layerEnableFlag_1_val_c17", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerEnableFlag_1_val_c17_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_layerWidth_1_val_c24", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerWidth_1_val_c24_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_layerHeight_1_val_c32", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerHeight_1_val_c32_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "loop_height", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "10", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state10"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state2", "ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_AXIvideo2MultiPixStream_5_Pipeline_loop_wait_for_start_fu_180", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "AXIvideo2MultiPixStream_5_Pipeline_loop_wait_for_start",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "2",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "s_axis_video1_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video1",
				"BlockSignal" : [
					{"Name" : "s_axis_video1_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_axis_video1_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video1"},
			{"Name" : "s_axis_video1_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video1"},
			{"Name" : "s_axis_video1_V_user_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video1"},
			{"Name" : "s_axis_video1_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video1"},
			{"Name" : "s_axis_video1_V_id_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video1"},
			{"Name" : "s_axis_video1_V_dest_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video1"},
			{"Name" : "axi_data_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "axi_last_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "loop_wait_for_start", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_AXIvideo2MultiPixStream_5_Pipeline_loop_wait_for_start_fu_180.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_AXIvideo2MultiPixStream_5_Pipeline_loop_width_fu_200", "Parent" : "0", "Child" : ["4"],
		"CDFG" : "AXIvideo2MultiPixStream_5_Pipeline_loop_width",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "3842",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "sof_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "axi_last_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "axi_data_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "cols", "Type" : "None", "Direction" : "I"},
			{"Name" : "srcLayer1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "srcLayer1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_axis_video1_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video1",
				"BlockSignal" : [
					{"Name" : "s_axis_video1_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_axis_video1_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video1"},
			{"Name" : "s_axis_video1_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video1"},
			{"Name" : "s_axis_video1_V_user_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video1"},
			{"Name" : "s_axis_video1_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video1"},
			{"Name" : "s_axis_video1_V_id_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video1"},
			{"Name" : "s_axis_video1_V_dest_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video1"},
			{"Name" : "eol_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "axi_data_3_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "loop_width", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_AXIvideo2MultiPixStream_5_Pipeline_loop_width_fu_200.flow_control_loop_pipe_sequential_init_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_AXIvideo2MultiPixStream_5_Pipeline_loop_wait_for_eol_fu_228", "Parent" : "0", "Child" : ["6"],
		"CDFG" : "AXIvideo2MultiPixStream_5_Pipeline_loop_wait_for_eol",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "2",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "axi_data_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln3150", "Type" : "None", "Direction" : "I"},
			{"Name" : "eol_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "s_axis_video1_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video1",
				"BlockSignal" : [
					{"Name" : "s_axis_video1_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_axis_video1_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video1"},
			{"Name" : "s_axis_video1_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video1"},
			{"Name" : "s_axis_video1_V_user_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video1"},
			{"Name" : "s_axis_video1_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video1"},
			{"Name" : "s_axis_video1_V_id_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video1"},
			{"Name" : "s_axis_video1_V_dest_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video1"},
			{"Name" : "axi_data_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "axi_last_4_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "loop_wait_for_eol", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_AXIvideo2MultiPixStream_5_Pipeline_loop_wait_for_eol_fu_228.flow_control_loop_pipe_sequential_init_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_reg_unsigned_short_s_fu_259", "Parent" : "0",
		"CDFG" : "reg_unsigned_short_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "d", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_reg_unsigned_short_s_fu_265", "Parent" : "0",
		"CDFG" : "reg_unsigned_short_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "d", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	AXIvideo2MultiPixStream_5 {
		s_axis_video1_V_data_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video1_V_keep_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video1_V_strb_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video1_V_user_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video1_V_last_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video1_V_id_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video1_V_dest_V {Type I LastRead 0 FirstWrite -1}
		srcLayer1 {Type O LastRead -1 FirstWrite 1}
		HwReg_layerHeight_1_val {Type I LastRead 0 FirstWrite -1}
		HwReg_layerWidth_1_val {Type I LastRead 0 FirstWrite -1}
		HwReg_layerEnableFlag_1_val {Type I LastRead 0 FirstWrite -1}
		HwReg_layerEnableFlag_1_val_c17 {Type O LastRead -1 FirstWrite 0}
		HwReg_layerWidth_1_val_c24 {Type O LastRead -1 FirstWrite 0}
		HwReg_layerHeight_1_val_c32 {Type O LastRead -1 FirstWrite 0}}
	AXIvideo2MultiPixStream_5_Pipeline_loop_wait_for_start {
		s_axis_video1_V_data_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video1_V_keep_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video1_V_strb_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video1_V_user_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video1_V_last_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video1_V_id_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video1_V_dest_V {Type I LastRead 0 FirstWrite -1}
		axi_data_out {Type O LastRead -1 FirstWrite 0}
		axi_last_out {Type O LastRead -1 FirstWrite 0}}
	AXIvideo2MultiPixStream_5_Pipeline_loop_width {
		sof_4 {Type I LastRead 0 FirstWrite -1}
		axi_last_2 {Type I LastRead 0 FirstWrite -1}
		axi_data_2 {Type I LastRead 0 FirstWrite -1}
		cols {Type I LastRead 0 FirstWrite -1}
		srcLayer1 {Type O LastRead -1 FirstWrite 1}
		s_axis_video1_V_data_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video1_V_keep_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video1_V_strb_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video1_V_user_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video1_V_last_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video1_V_id_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video1_V_dest_V {Type I LastRead 0 FirstWrite -1}
		eol_out {Type O LastRead -1 FirstWrite 0}
		axi_data_3_out {Type O LastRead -1 FirstWrite 0}}
	AXIvideo2MultiPixStream_5_Pipeline_loop_wait_for_eol {
		axi_data_3_reload {Type I LastRead 0 FirstWrite -1}
		select_ln3150 {Type I LastRead 0 FirstWrite -1}
		eol_reload {Type I LastRead 0 FirstWrite -1}
		s_axis_video1_V_data_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video1_V_keep_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video1_V_strb_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video1_V_user_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video1_V_last_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video1_V_id_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video1_V_dest_V {Type I LastRead 0 FirstWrite -1}
		axi_data_4_out {Type O LastRead -1 FirstWrite 0}
		axi_last_4_out {Type O LastRead -1 FirstWrite 0}}
	reg_unsigned_short_s {
		d {Type I LastRead 0 FirstWrite -1}}
	reg_unsigned_short_s {
		d {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "8316006"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "8316006"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	s_axis_video1_V_data_V { axis {  { s_axis_video1_TDATA in_data 0 24 } } }
	s_axis_video1_V_keep_V { axis {  { s_axis_video1_TKEEP in_data 0 3 } } }
	s_axis_video1_V_strb_V { axis {  { s_axis_video1_TSTRB in_data 0 3 } } }
	s_axis_video1_V_user_V { axis {  { s_axis_video1_TUSER in_data 0 1 } } }
	s_axis_video1_V_last_V { axis {  { s_axis_video1_TLAST in_data 0 1 } } }
	s_axis_video1_V_id_V { axis {  { s_axis_video1_TID in_data 0 1 } } }
	s_axis_video1_V_dest_V { axis {  { s_axis_video1_TVALID in_vld 0 1 }  { s_axis_video1_TREADY in_acc 1 1 }  { s_axis_video1_TDEST in_data 0 1 } } }
	srcLayer1 { ap_fifo {  { srcLayer1_din fifo_data_in 1 24 }  { srcLayer1_num_data_valid fifo_status_num_data_valid 0 3 }  { srcLayer1_fifo_cap fifo_update 0 3 }  { srcLayer1_full_n fifo_status 0 1 }  { srcLayer1_write fifo_port_we 1 1 } } }
	HwReg_layerHeight_1_val { ap_none {  { HwReg_layerHeight_1_val in_data 0 16 } } }
	HwReg_layerWidth_1_val { ap_none {  { HwReg_layerWidth_1_val in_data 0 16 } } }
	HwReg_layerEnableFlag_1_val { ap_none {  { HwReg_layerEnableFlag_1_val in_data 0 1 } } }
	HwReg_layerEnableFlag_1_val_c17 { ap_fifo {  { HwReg_layerEnableFlag_1_val_c17_din fifo_data_in 1 1 }  { HwReg_layerEnableFlag_1_val_c17_num_data_valid fifo_status_num_data_valid 0 3 }  { HwReg_layerEnableFlag_1_val_c17_fifo_cap fifo_update 0 3 }  { HwReg_layerEnableFlag_1_val_c17_full_n fifo_status 0 1 }  { HwReg_layerEnableFlag_1_val_c17_write fifo_port_we 1 1 } } }
	HwReg_layerWidth_1_val_c24 { ap_fifo {  { HwReg_layerWidth_1_val_c24_din fifo_data_in 1 16 }  { HwReg_layerWidth_1_val_c24_num_data_valid fifo_status_num_data_valid 0 3 }  { HwReg_layerWidth_1_val_c24_fifo_cap fifo_update 0 3 }  { HwReg_layerWidth_1_val_c24_full_n fifo_status 0 1 }  { HwReg_layerWidth_1_val_c24_write fifo_port_we 1 1 } } }
	HwReg_layerHeight_1_val_c32 { ap_fifo {  { HwReg_layerHeight_1_val_c32_din fifo_data_in 1 16 }  { HwReg_layerHeight_1_val_c32_num_data_valid fifo_status_num_data_valid 0 3 }  { HwReg_layerHeight_1_val_c32_fifo_cap fifo_update 0 3 }  { HwReg_layerHeight_1_val_c32_full_n fifo_status 0 1 }  { HwReg_layerHeight_1_val_c32_write fifo_port_we 1 1 } } }
}
