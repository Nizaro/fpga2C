set moduleName v_mix_upsample_false_9_Pipeline_VITIS_LOOP_107_2
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
set C_modelName {v_mix_upsample<false>.9_Pipeline_VITIS_LOOP_107_2}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ empty int 12 regular  }
	{ srcLayer1Rgb int 24 regular {fifo 0 volatile }  }
	{ srcLayer1x int 24 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "empty", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "srcLayer1Rgb", "interface" : "fifo", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "srcLayer1x", "interface" : "fifo", "bitwidth" : 24, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 17
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ srcLayer1Rgb_dout sc_in sc_lv 24 signal 1 } 
	{ srcLayer1Rgb_num_data_valid sc_in sc_lv 3 signal 1 } 
	{ srcLayer1Rgb_fifo_cap sc_in sc_lv 3 signal 1 } 
	{ srcLayer1Rgb_empty_n sc_in sc_logic 1 signal 1 } 
	{ srcLayer1Rgb_read sc_out sc_logic 1 signal 1 } 
	{ srcLayer1x_din sc_out sc_lv 24 signal 2 } 
	{ srcLayer1x_num_data_valid sc_in sc_lv 3 signal 2 } 
	{ srcLayer1x_fifo_cap sc_in sc_lv 3 signal 2 } 
	{ srcLayer1x_full_n sc_in sc_logic 1 signal 2 } 
	{ srcLayer1x_write sc_out sc_logic 1 signal 2 } 
	{ empty sc_in sc_lv 12 signal 0 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "srcLayer1Rgb_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "srcLayer1Rgb", "role": "dout" }} , 
 	{ "name": "srcLayer1Rgb_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "srcLayer1Rgb", "role": "num_data_valid" }} , 
 	{ "name": "srcLayer1Rgb_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "srcLayer1Rgb", "role": "fifo_cap" }} , 
 	{ "name": "srcLayer1Rgb_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "srcLayer1Rgb", "role": "empty_n" }} , 
 	{ "name": "srcLayer1Rgb_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "srcLayer1Rgb", "role": "read" }} , 
 	{ "name": "srcLayer1x_din", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "srcLayer1x", "role": "din" }} , 
 	{ "name": "srcLayer1x_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "srcLayer1x", "role": "num_data_valid" }} , 
 	{ "name": "srcLayer1x_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "srcLayer1x", "role": "fifo_cap" }} , 
 	{ "name": "srcLayer1x_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "srcLayer1x", "role": "full_n" }} , 
 	{ "name": "srcLayer1x_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "srcLayer1x", "role": "write" }} , 
 	{ "name": "empty", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "empty", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "v_mix_upsample_false_9_Pipeline_VITIS_LOOP_107_2",
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
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "srcLayer1Rgb", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "srcLayer1Rgb_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "srcLayer1x", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "srcLayer1x_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_107_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	v_mix_upsample_false_9_Pipeline_VITIS_LOOP_107_2 {
		empty {Type I LastRead 0 FirstWrite -1}
		srcLayer1Rgb {Type I LastRead 1 FirstWrite -1}
		srcLayer1x {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "3842"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "3842"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	empty { ap_none {  { empty in_data 0 12 } } }
	srcLayer1Rgb { ap_fifo {  { srcLayer1Rgb_dout fifo_data_in 0 24 }  { srcLayer1Rgb_num_data_valid fifo_status_num_data_valid 0 3 }  { srcLayer1Rgb_fifo_cap fifo_update 0 3 }  { srcLayer1Rgb_empty_n fifo_status 0 1 }  { srcLayer1Rgb_read fifo_port_we 1 1 } } }
	srcLayer1x { ap_fifo {  { srcLayer1x_din fifo_data_in 1 24 }  { srcLayer1x_num_data_valid fifo_status_num_data_valid 0 3 }  { srcLayer1x_fifo_cap fifo_update 0 3 }  { srcLayer1x_full_n fifo_status 0 1 }  { srcLayer1x_write fifo_port_we 1 1 } } }
}
