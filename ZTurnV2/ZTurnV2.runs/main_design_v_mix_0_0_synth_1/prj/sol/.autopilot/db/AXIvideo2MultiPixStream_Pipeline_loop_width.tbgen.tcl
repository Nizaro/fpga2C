set moduleName AXIvideo2MultiPixStream_Pipeline_loop_width
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {AXIvideo2MultiPixStream_Pipeline_loop_width}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ sof_10 int 1 regular  }
	{ axi_last_21 int 1 regular  }
	{ axi_data_17 int 24 regular  }
	{ cols int 12 regular  }
	{ srcLayer2 int 24 regular {fifo 1 volatile }  }
	{ s_axis_video2_V_data_V int 24 regular {axi_s 0 volatile  { s_axis_video2 Data } }  }
	{ s_axis_video2_V_keep_V int 3 regular {axi_s 0 volatile  { s_axis_video2 Keep } }  }
	{ s_axis_video2_V_strb_V int 3 regular {axi_s 0 volatile  { s_axis_video2 Strb } }  }
	{ s_axis_video2_V_user_V int 1 regular {axi_s 0 volatile  { s_axis_video2 User } }  }
	{ s_axis_video2_V_last_V int 1 regular {axi_s 0 volatile  { s_axis_video2 Last } }  }
	{ s_axis_video2_V_id_V int 1 regular {axi_s 0 volatile  { s_axis_video2 ID } }  }
	{ s_axis_video2_V_dest_V int 1 regular {axi_s 0 volatile  { s_axis_video2 Dest } }  }
	{ eol_out int 1 regular {pointer 1}  }
	{ axi_data_18_out int 24 regular {pointer 1}  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "sof_10", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "axi_last_21", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "axi_data_17", "interface" : "wire", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "cols", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "srcLayer2", "interface" : "fifo", "bitwidth" : 24, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s_axis_video2_V_data_V", "interface" : "axis", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_video2_V_keep_V", "interface" : "axis", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_video2_V_strb_V", "interface" : "axis", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_video2_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_video2_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_video2_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_video2_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "eol_out", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "axi_data_18_out", "interface" : "wire", "bitwidth" : 24, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 28
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ s_axis_video2_TVALID sc_in sc_logic 1 invld 5 } 
	{ srcLayer2_din sc_out sc_lv 24 signal 4 } 
	{ srcLayer2_num_data_valid sc_in sc_lv 3 signal 4 } 
	{ srcLayer2_fifo_cap sc_in sc_lv 3 signal 4 } 
	{ srcLayer2_full_n sc_in sc_logic 1 signal 4 } 
	{ srcLayer2_write sc_out sc_logic 1 signal 4 } 
	{ sof_10 sc_in sc_lv 1 signal 0 } 
	{ axi_last_21 sc_in sc_lv 1 signal 1 } 
	{ axi_data_17 sc_in sc_lv 24 signal 2 } 
	{ cols sc_in sc_lv 12 signal 3 } 
	{ s_axis_video2_TDATA sc_in sc_lv 24 signal 5 } 
	{ s_axis_video2_TREADY sc_out sc_logic 1 inacc 11 } 
	{ s_axis_video2_TKEEP sc_in sc_lv 3 signal 6 } 
	{ s_axis_video2_TSTRB sc_in sc_lv 3 signal 7 } 
	{ s_axis_video2_TUSER sc_in sc_lv 1 signal 8 } 
	{ s_axis_video2_TLAST sc_in sc_lv 1 signal 9 } 
	{ s_axis_video2_TID sc_in sc_lv 1 signal 10 } 
	{ s_axis_video2_TDEST sc_in sc_lv 1 signal 11 } 
	{ eol_out sc_out sc_lv 1 signal 12 } 
	{ eol_out_ap_vld sc_out sc_logic 1 outvld 12 } 
	{ axi_data_18_out sc_out sc_lv 24 signal 13 } 
	{ axi_data_18_out_ap_vld sc_out sc_logic 1 outvld 13 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "s_axis_video2_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "s_axis_video2_V_data_V", "role": "default" }} , 
 	{ "name": "srcLayer2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "srcLayer2", "role": "din" }} , 
 	{ "name": "srcLayer2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "srcLayer2", "role": "num_data_valid" }} , 
 	{ "name": "srcLayer2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "srcLayer2", "role": "fifo_cap" }} , 
 	{ "name": "srcLayer2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "srcLayer2", "role": "full_n" }} , 
 	{ "name": "srcLayer2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "srcLayer2", "role": "write" }} , 
 	{ "name": "sof_10", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sof_10", "role": "default" }} , 
 	{ "name": "axi_last_21", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "axi_last_21", "role": "default" }} , 
 	{ "name": "axi_data_17", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "axi_data_17", "role": "default" }} , 
 	{ "name": "cols", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "cols", "role": "default" }} , 
 	{ "name": "s_axis_video2_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "s_axis_video2_V_data_V", "role": "default" }} , 
 	{ "name": "s_axis_video2_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "s_axis_video2_V_dest_V", "role": "default" }} , 
 	{ "name": "s_axis_video2_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "s_axis_video2_V_keep_V", "role": "default" }} , 
 	{ "name": "s_axis_video2_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "s_axis_video2_V_strb_V", "role": "default" }} , 
 	{ "name": "s_axis_video2_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axis_video2_V_user_V", "role": "default" }} , 
 	{ "name": "s_axis_video2_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axis_video2_V_last_V", "role": "default" }} , 
 	{ "name": "s_axis_video2_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axis_video2_V_id_V", "role": "default" }} , 
 	{ "name": "s_axis_video2_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axis_video2_V_dest_V", "role": "default" }} , 
 	{ "name": "eol_out", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "eol_out", "role": "default" }} , 
 	{ "name": "eol_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "eol_out", "role": "ap_vld" }} , 
 	{ "name": "axi_data_18_out", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "axi_data_18_out", "role": "default" }} , 
 	{ "name": "axi_data_18_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "axi_data_18_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "AXIvideo2MultiPixStream_Pipeline_loop_width",
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
			{"Name" : "sof_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "axi_last_21", "Type" : "None", "Direction" : "I"},
			{"Name" : "axi_data_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "cols", "Type" : "None", "Direction" : "I"},
			{"Name" : "srcLayer2", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "srcLayer2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_axis_video2_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video2",
				"BlockSignal" : [
					{"Name" : "s_axis_video2_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_axis_video2_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video2"},
			{"Name" : "s_axis_video2_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video2"},
			{"Name" : "s_axis_video2_V_user_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video2"},
			{"Name" : "s_axis_video2_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video2"},
			{"Name" : "s_axis_video2_V_id_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video2"},
			{"Name" : "s_axis_video2_V_dest_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video2"},
			{"Name" : "eol_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "axi_data_18_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "loop_width", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	AXIvideo2MultiPixStream_Pipeline_loop_width {
		sof_10 {Type I LastRead 0 FirstWrite -1}
		axi_last_21 {Type I LastRead 0 FirstWrite -1}
		axi_data_17 {Type I LastRead 0 FirstWrite -1}
		cols {Type I LastRead 0 FirstWrite -1}
		srcLayer2 {Type O LastRead -1 FirstWrite 1}
		s_axis_video2_V_data_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video2_V_keep_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video2_V_strb_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video2_V_user_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video2_V_last_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video2_V_id_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video2_V_dest_V {Type I LastRead 0 FirstWrite -1}
		eol_out {Type O LastRead -1 FirstWrite 0}
		axi_data_18_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "3842"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "3842"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	sof_10 { ap_none {  { sof_10 in_data 0 1 } } }
	axi_last_21 { ap_none {  { axi_last_21 in_data 0 1 } } }
	axi_data_17 { ap_none {  { axi_data_17 in_data 0 24 } } }
	cols { ap_none {  { cols in_data 0 12 } } }
	srcLayer2 { ap_fifo {  { srcLayer2_din fifo_data_in 1 24 }  { srcLayer2_num_data_valid fifo_status_num_data_valid 0 3 }  { srcLayer2_fifo_cap fifo_update 0 3 }  { srcLayer2_full_n fifo_status 0 1 }  { srcLayer2_write fifo_port_we 1 1 } } }
	s_axis_video2_V_data_V { axis {  { s_axis_video2_TVALID in_vld 0 1 }  { s_axis_video2_TDATA in_data 0 24 } } }
	s_axis_video2_V_keep_V { axis {  { s_axis_video2_TKEEP in_data 0 3 } } }
	s_axis_video2_V_strb_V { axis {  { s_axis_video2_TSTRB in_data 0 3 } } }
	s_axis_video2_V_user_V { axis {  { s_axis_video2_TUSER in_data 0 1 } } }
	s_axis_video2_V_last_V { axis {  { s_axis_video2_TLAST in_data 0 1 } } }
	s_axis_video2_V_id_V { axis {  { s_axis_video2_TID in_data 0 1 } } }
	s_axis_video2_V_dest_V { axis {  { s_axis_video2_TREADY in_acc 1 1 }  { s_axis_video2_TDEST in_data 0 1 } } }
	eol_out { ap_vld {  { eol_out out_data 1 1 }  { eol_out_ap_vld out_vld 1 1 } } }
	axi_data_18_out { ap_vld {  { axi_data_18_out out_data 1 24 }  { axi_data_18_out_ap_vld out_vld 1 1 } } }
}
