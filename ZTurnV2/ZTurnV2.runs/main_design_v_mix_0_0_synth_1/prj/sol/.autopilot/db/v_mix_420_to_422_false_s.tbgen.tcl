set moduleName v_mix_420_to_422_false_s
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
set C_modelName {v_mix_420_to_422<false>}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ srcLayer2 int 24 regular {fifo 0 volatile }  }
	{ HwReg_layerHeight_2_val int 16 regular {fifo 0}  }
	{ HwReg_layerWidth_2_val int 16 regular {fifo 0}  }
	{ HwReg_layerEnableFlag_2_val int 1 regular {fifo 0}  }
	{ srcLayer2Yuv422 int 24 regular {fifo 1 volatile }  }
	{ HwReg_layerEnableFlag_2_val_c19 int 1 regular {fifo 1}  }
	{ HwReg_layerWidth_2_val_c27 int 16 regular {fifo 1}  }
	{ HwReg_layerHeight_2_val_c35 int 16 regular {fifo 1}  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "srcLayer2", "interface" : "fifo", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "HwReg_layerHeight_2_val", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "HwReg_layerWidth_2_val", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "HwReg_layerEnableFlag_2_val", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "srcLayer2Yuv422", "interface" : "fifo", "bitwidth" : 24, "direction" : "WRITEONLY"} , 
 	{ "Name" : "HwReg_layerEnableFlag_2_val_c19", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "HwReg_layerWidth_2_val_c27", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "HwReg_layerHeight_2_val_c35", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 50
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
	{ srcLayer2_dout sc_in sc_lv 24 signal 0 } 
	{ srcLayer2_num_data_valid sc_in sc_lv 3 signal 0 } 
	{ srcLayer2_fifo_cap sc_in sc_lv 3 signal 0 } 
	{ srcLayer2_empty_n sc_in sc_logic 1 signal 0 } 
	{ srcLayer2_read sc_out sc_logic 1 signal 0 } 
	{ HwReg_layerHeight_2_val_dout sc_in sc_lv 16 signal 1 } 
	{ HwReg_layerHeight_2_val_num_data_valid sc_in sc_lv 3 signal 1 } 
	{ HwReg_layerHeight_2_val_fifo_cap sc_in sc_lv 3 signal 1 } 
	{ HwReg_layerHeight_2_val_empty_n sc_in sc_logic 1 signal 1 } 
	{ HwReg_layerHeight_2_val_read sc_out sc_logic 1 signal 1 } 
	{ HwReg_layerWidth_2_val_dout sc_in sc_lv 16 signal 2 } 
	{ HwReg_layerWidth_2_val_num_data_valid sc_in sc_lv 3 signal 2 } 
	{ HwReg_layerWidth_2_val_fifo_cap sc_in sc_lv 3 signal 2 } 
	{ HwReg_layerWidth_2_val_empty_n sc_in sc_logic 1 signal 2 } 
	{ HwReg_layerWidth_2_val_read sc_out sc_logic 1 signal 2 } 
	{ HwReg_layerEnableFlag_2_val_dout sc_in sc_lv 1 signal 3 } 
	{ HwReg_layerEnableFlag_2_val_num_data_valid sc_in sc_lv 3 signal 3 } 
	{ HwReg_layerEnableFlag_2_val_fifo_cap sc_in sc_lv 3 signal 3 } 
	{ HwReg_layerEnableFlag_2_val_empty_n sc_in sc_logic 1 signal 3 } 
	{ HwReg_layerEnableFlag_2_val_read sc_out sc_logic 1 signal 3 } 
	{ srcLayer2Yuv422_din sc_out sc_lv 24 signal 4 } 
	{ srcLayer2Yuv422_num_data_valid sc_in sc_lv 3 signal 4 } 
	{ srcLayer2Yuv422_fifo_cap sc_in sc_lv 3 signal 4 } 
	{ srcLayer2Yuv422_full_n sc_in sc_logic 1 signal 4 } 
	{ srcLayer2Yuv422_write sc_out sc_logic 1 signal 4 } 
	{ HwReg_layerEnableFlag_2_val_c19_din sc_out sc_lv 1 signal 5 } 
	{ HwReg_layerEnableFlag_2_val_c19_num_data_valid sc_in sc_lv 3 signal 5 } 
	{ HwReg_layerEnableFlag_2_val_c19_fifo_cap sc_in sc_lv 3 signal 5 } 
	{ HwReg_layerEnableFlag_2_val_c19_full_n sc_in sc_logic 1 signal 5 } 
	{ HwReg_layerEnableFlag_2_val_c19_write sc_out sc_logic 1 signal 5 } 
	{ HwReg_layerWidth_2_val_c27_din sc_out sc_lv 16 signal 6 } 
	{ HwReg_layerWidth_2_val_c27_num_data_valid sc_in sc_lv 3 signal 6 } 
	{ HwReg_layerWidth_2_val_c27_fifo_cap sc_in sc_lv 3 signal 6 } 
	{ HwReg_layerWidth_2_val_c27_full_n sc_in sc_logic 1 signal 6 } 
	{ HwReg_layerWidth_2_val_c27_write sc_out sc_logic 1 signal 6 } 
	{ HwReg_layerHeight_2_val_c35_din sc_out sc_lv 16 signal 7 } 
	{ HwReg_layerHeight_2_val_c35_num_data_valid sc_in sc_lv 3 signal 7 } 
	{ HwReg_layerHeight_2_val_c35_fifo_cap sc_in sc_lv 3 signal 7 } 
	{ HwReg_layerHeight_2_val_c35_full_n sc_in sc_logic 1 signal 7 } 
	{ HwReg_layerHeight_2_val_c35_write sc_out sc_logic 1 signal 7 } 
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
 	{ "name": "srcLayer2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "srcLayer2", "role": "dout" }} , 
 	{ "name": "srcLayer2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "srcLayer2", "role": "num_data_valid" }} , 
 	{ "name": "srcLayer2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "srcLayer2", "role": "fifo_cap" }} , 
 	{ "name": "srcLayer2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "srcLayer2", "role": "empty_n" }} , 
 	{ "name": "srcLayer2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "srcLayer2", "role": "read" }} , 
 	{ "name": "HwReg_layerHeight_2_val_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "HwReg_layerHeight_2_val", "role": "dout" }} , 
 	{ "name": "HwReg_layerHeight_2_val_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "HwReg_layerHeight_2_val", "role": "num_data_valid" }} , 
 	{ "name": "HwReg_layerHeight_2_val_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "HwReg_layerHeight_2_val", "role": "fifo_cap" }} , 
 	{ "name": "HwReg_layerHeight_2_val_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HwReg_layerHeight_2_val", "role": "empty_n" }} , 
 	{ "name": "HwReg_layerHeight_2_val_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HwReg_layerHeight_2_val", "role": "read" }} , 
 	{ "name": "HwReg_layerWidth_2_val_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "HwReg_layerWidth_2_val", "role": "dout" }} , 
 	{ "name": "HwReg_layerWidth_2_val_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "HwReg_layerWidth_2_val", "role": "num_data_valid" }} , 
 	{ "name": "HwReg_layerWidth_2_val_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "HwReg_layerWidth_2_val", "role": "fifo_cap" }} , 
 	{ "name": "HwReg_layerWidth_2_val_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HwReg_layerWidth_2_val", "role": "empty_n" }} , 
 	{ "name": "HwReg_layerWidth_2_val_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HwReg_layerWidth_2_val", "role": "read" }} , 
 	{ "name": "HwReg_layerEnableFlag_2_val_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "HwReg_layerEnableFlag_2_val", "role": "dout" }} , 
 	{ "name": "HwReg_layerEnableFlag_2_val_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "HwReg_layerEnableFlag_2_val", "role": "num_data_valid" }} , 
 	{ "name": "HwReg_layerEnableFlag_2_val_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "HwReg_layerEnableFlag_2_val", "role": "fifo_cap" }} , 
 	{ "name": "HwReg_layerEnableFlag_2_val_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HwReg_layerEnableFlag_2_val", "role": "empty_n" }} , 
 	{ "name": "HwReg_layerEnableFlag_2_val_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HwReg_layerEnableFlag_2_val", "role": "read" }} , 
 	{ "name": "srcLayer2Yuv422_din", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "srcLayer2Yuv422", "role": "din" }} , 
 	{ "name": "srcLayer2Yuv422_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "srcLayer2Yuv422", "role": "num_data_valid" }} , 
 	{ "name": "srcLayer2Yuv422_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "srcLayer2Yuv422", "role": "fifo_cap" }} , 
 	{ "name": "srcLayer2Yuv422_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "srcLayer2Yuv422", "role": "full_n" }} , 
 	{ "name": "srcLayer2Yuv422_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "srcLayer2Yuv422", "role": "write" }} , 
 	{ "name": "HwReg_layerEnableFlag_2_val_c19_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "HwReg_layerEnableFlag_2_val_c19", "role": "din" }} , 
 	{ "name": "HwReg_layerEnableFlag_2_val_c19_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "HwReg_layerEnableFlag_2_val_c19", "role": "num_data_valid" }} , 
 	{ "name": "HwReg_layerEnableFlag_2_val_c19_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "HwReg_layerEnableFlag_2_val_c19", "role": "fifo_cap" }} , 
 	{ "name": "HwReg_layerEnableFlag_2_val_c19_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HwReg_layerEnableFlag_2_val_c19", "role": "full_n" }} , 
 	{ "name": "HwReg_layerEnableFlag_2_val_c19_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HwReg_layerEnableFlag_2_val_c19", "role": "write" }} , 
 	{ "name": "HwReg_layerWidth_2_val_c27_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "HwReg_layerWidth_2_val_c27", "role": "din" }} , 
 	{ "name": "HwReg_layerWidth_2_val_c27_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "HwReg_layerWidth_2_val_c27", "role": "num_data_valid" }} , 
 	{ "name": "HwReg_layerWidth_2_val_c27_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "HwReg_layerWidth_2_val_c27", "role": "fifo_cap" }} , 
 	{ "name": "HwReg_layerWidth_2_val_c27_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HwReg_layerWidth_2_val_c27", "role": "full_n" }} , 
 	{ "name": "HwReg_layerWidth_2_val_c27_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HwReg_layerWidth_2_val_c27", "role": "write" }} , 
 	{ "name": "HwReg_layerHeight_2_val_c35_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "HwReg_layerHeight_2_val_c35", "role": "din" }} , 
 	{ "name": "HwReg_layerHeight_2_val_c35_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "HwReg_layerHeight_2_val_c35", "role": "num_data_valid" }} , 
 	{ "name": "HwReg_layerHeight_2_val_c35_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "HwReg_layerHeight_2_val_c35", "role": "fifo_cap" }} , 
 	{ "name": "HwReg_layerHeight_2_val_c35_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HwReg_layerHeight_2_val_c35", "role": "full_n" }} , 
 	{ "name": "HwReg_layerHeight_2_val_c35_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HwReg_layerHeight_2_val_c35", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "v_mix_420_to_422_false_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "8303041",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "srcLayer2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_v_mix_420_to_422_false_Pipeline_VITIS_LOOP_76_2_fu_110", "Port" : "srcLayer2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "HwReg_layerHeight_2_val", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerHeight_2_val_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_layerWidth_2_val", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerWidth_2_val_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_layerEnableFlag_2_val", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerEnableFlag_2_val_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "srcLayer2Yuv422", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_v_mix_420_to_422_false_Pipeline_VITIS_LOOP_76_2_fu_110", "Port" : "srcLayer2Yuv422", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "HwReg_layerEnableFlag_2_val_c19", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerEnableFlag_2_val_c19_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_layerWidth_2_val_c27", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerWidth_2_val_c27_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_layerHeight_2_val_c35", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerHeight_2_val_c35_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_74_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_v_mix_420_to_422_false_Pipeline_VITIS_LOOP_76_2_fu_110", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "v_mix_420_to_422_false_Pipeline_VITIS_LOOP_76_2",
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
			{"Name" : "srcLayer2", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "srcLayer2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "srcLayer2Yuv422", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "srcLayer2Yuv422_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_76_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_v_mix_420_to_422_false_Pipeline_VITIS_LOOP_76_2_fu_110.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	v_mix_420_to_422_false_s {
		srcLayer2 {Type I LastRead 1 FirstWrite -1}
		HwReg_layerHeight_2_val {Type I LastRead 0 FirstWrite -1}
		HwReg_layerWidth_2_val {Type I LastRead 0 FirstWrite -1}
		HwReg_layerEnableFlag_2_val {Type I LastRead 0 FirstWrite -1}
		srcLayer2Yuv422 {Type O LastRead -1 FirstWrite 1}
		HwReg_layerEnableFlag_2_val_c19 {Type O LastRead -1 FirstWrite 0}
		HwReg_layerWidth_2_val_c27 {Type O LastRead -1 FirstWrite 0}
		HwReg_layerHeight_2_val_c35 {Type O LastRead -1 FirstWrite 0}}
	v_mix_420_to_422_false_Pipeline_VITIS_LOOP_76_2 {
		empty {Type I LastRead 0 FirstWrite -1}
		srcLayer2 {Type I LastRead 1 FirstWrite -1}
		srcLayer2Yuv422 {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "8303041"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "8303041"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	srcLayer2 { ap_fifo {  { srcLayer2_dout fifo_data_in 0 24 }  { srcLayer2_num_data_valid fifo_status_num_data_valid 0 3 }  { srcLayer2_fifo_cap fifo_update 0 3 }  { srcLayer2_empty_n fifo_status 0 1 }  { srcLayer2_read fifo_port_we 1 1 } } }
	HwReg_layerHeight_2_val { ap_fifo {  { HwReg_layerHeight_2_val_dout fifo_data_in 0 16 }  { HwReg_layerHeight_2_val_num_data_valid fifo_status_num_data_valid 0 3 }  { HwReg_layerHeight_2_val_fifo_cap fifo_update 0 3 }  { HwReg_layerHeight_2_val_empty_n fifo_status 0 1 }  { HwReg_layerHeight_2_val_read fifo_port_we 1 1 } } }
	HwReg_layerWidth_2_val { ap_fifo {  { HwReg_layerWidth_2_val_dout fifo_data_in 0 16 }  { HwReg_layerWidth_2_val_num_data_valid fifo_status_num_data_valid 0 3 }  { HwReg_layerWidth_2_val_fifo_cap fifo_update 0 3 }  { HwReg_layerWidth_2_val_empty_n fifo_status 0 1 }  { HwReg_layerWidth_2_val_read fifo_port_we 1 1 } } }
	HwReg_layerEnableFlag_2_val { ap_fifo {  { HwReg_layerEnableFlag_2_val_dout fifo_data_in 0 1 }  { HwReg_layerEnableFlag_2_val_num_data_valid fifo_status_num_data_valid 0 3 }  { HwReg_layerEnableFlag_2_val_fifo_cap fifo_update 0 3 }  { HwReg_layerEnableFlag_2_val_empty_n fifo_status 0 1 }  { HwReg_layerEnableFlag_2_val_read fifo_port_we 1 1 } } }
	srcLayer2Yuv422 { ap_fifo {  { srcLayer2Yuv422_din fifo_data_in 1 24 }  { srcLayer2Yuv422_num_data_valid fifo_status_num_data_valid 0 3 }  { srcLayer2Yuv422_fifo_cap fifo_update 0 3 }  { srcLayer2Yuv422_full_n fifo_status 0 1 }  { srcLayer2Yuv422_write fifo_port_we 1 1 } } }
	HwReg_layerEnableFlag_2_val_c19 { ap_fifo {  { HwReg_layerEnableFlag_2_val_c19_din fifo_data_in 1 1 }  { HwReg_layerEnableFlag_2_val_c19_num_data_valid fifo_status_num_data_valid 0 3 }  { HwReg_layerEnableFlag_2_val_c19_fifo_cap fifo_update 0 3 }  { HwReg_layerEnableFlag_2_val_c19_full_n fifo_status 0 1 }  { HwReg_layerEnableFlag_2_val_c19_write fifo_port_we 1 1 } } }
	HwReg_layerWidth_2_val_c27 { ap_fifo {  { HwReg_layerWidth_2_val_c27_din fifo_data_in 1 16 }  { HwReg_layerWidth_2_val_c27_num_data_valid fifo_status_num_data_valid 0 3 }  { HwReg_layerWidth_2_val_c27_fifo_cap fifo_update 0 3 }  { HwReg_layerWidth_2_val_c27_full_n fifo_status 0 1 }  { HwReg_layerWidth_2_val_c27_write fifo_port_we 1 1 } } }
	HwReg_layerHeight_2_val_c35 { ap_fifo {  { HwReg_layerHeight_2_val_c35_din fifo_data_in 1 16 }  { HwReg_layerHeight_2_val_c35_num_data_valid fifo_status_num_data_valid 0 3 }  { HwReg_layerHeight_2_val_c35_fifo_cap fifo_update 0 3 }  { HwReg_layerHeight_2_val_c35_full_n fifo_status 0 1 }  { HwReg_layerHeight_2_val_c35_write fifo_port_we 1 1 } } }
}
