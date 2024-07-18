set moduleName v_mix_core_alpha_false_false_10
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
set C_modelName {v_mix_core_alpha<false, false>.10}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ outLayer1 int 24 regular {fifo 0 volatile }  }
	{ srcLayer2x int 24 regular {fifo 0 volatile }  }
	{ hwReg_0_val int 12 regular {ap_stable 0} }
	{ hwReg_1_val int 12 regular {ap_stable 0} }
	{ hwReg_6_val int 3 regular {fifo 0}  }
	{ hwReg_9_2_val int 16 regular {fifo 0}  }
	{ hwReg_10_2_val int 16 regular {fifo 0}  }
	{ hwReg_11_2_val int 16 regular {fifo 0}  }
	{ hwReg_12_2_val int 16 regular {fifo 0}  }
	{ hwReg_13_2_val int 8 regular {fifo 0}  }
	{ outLayer2 int 24 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "outLayer1", "interface" : "fifo", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "srcLayer2x", "interface" : "fifo", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "hwReg_0_val", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "hwReg_1_val", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "hwReg_6_val", "interface" : "fifo", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "hwReg_9_2_val", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "hwReg_10_2_val", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "hwReg_11_2_val", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "hwReg_12_2_val", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "hwReg_13_2_val", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "outLayer2", "interface" : "fifo", "bitwidth" : 24, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 57
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
	{ outLayer1_dout sc_in sc_lv 24 signal 0 } 
	{ outLayer1_num_data_valid sc_in sc_lv 3 signal 0 } 
	{ outLayer1_fifo_cap sc_in sc_lv 3 signal 0 } 
	{ outLayer1_empty_n sc_in sc_logic 1 signal 0 } 
	{ outLayer1_read sc_out sc_logic 1 signal 0 } 
	{ srcLayer2x_dout sc_in sc_lv 24 signal 1 } 
	{ srcLayer2x_num_data_valid sc_in sc_lv 3 signal 1 } 
	{ srcLayer2x_fifo_cap sc_in sc_lv 3 signal 1 } 
	{ srcLayer2x_empty_n sc_in sc_logic 1 signal 1 } 
	{ srcLayer2x_read sc_out sc_logic 1 signal 1 } 
	{ hwReg_0_val sc_in sc_lv 12 signal 2 } 
	{ hwReg_1_val sc_in sc_lv 12 signal 3 } 
	{ hwReg_6_val_dout sc_in sc_lv 3 signal 4 } 
	{ hwReg_6_val_num_data_valid sc_in sc_lv 3 signal 4 } 
	{ hwReg_6_val_fifo_cap sc_in sc_lv 3 signal 4 } 
	{ hwReg_6_val_empty_n sc_in sc_logic 1 signal 4 } 
	{ hwReg_6_val_read sc_out sc_logic 1 signal 4 } 
	{ hwReg_9_2_val_dout sc_in sc_lv 16 signal 5 } 
	{ hwReg_9_2_val_num_data_valid sc_in sc_lv 4 signal 5 } 
	{ hwReg_9_2_val_fifo_cap sc_in sc_lv 4 signal 5 } 
	{ hwReg_9_2_val_empty_n sc_in sc_logic 1 signal 5 } 
	{ hwReg_9_2_val_read sc_out sc_logic 1 signal 5 } 
	{ hwReg_10_2_val_dout sc_in sc_lv 16 signal 6 } 
	{ hwReg_10_2_val_num_data_valid sc_in sc_lv 4 signal 6 } 
	{ hwReg_10_2_val_fifo_cap sc_in sc_lv 4 signal 6 } 
	{ hwReg_10_2_val_empty_n sc_in sc_logic 1 signal 6 } 
	{ hwReg_10_2_val_read sc_out sc_logic 1 signal 6 } 
	{ hwReg_11_2_val_dout sc_in sc_lv 16 signal 7 } 
	{ hwReg_11_2_val_num_data_valid sc_in sc_lv 3 signal 7 } 
	{ hwReg_11_2_val_fifo_cap sc_in sc_lv 3 signal 7 } 
	{ hwReg_11_2_val_empty_n sc_in sc_logic 1 signal 7 } 
	{ hwReg_11_2_val_read sc_out sc_logic 1 signal 7 } 
	{ hwReg_12_2_val_dout sc_in sc_lv 16 signal 8 } 
	{ hwReg_12_2_val_num_data_valid sc_in sc_lv 3 signal 8 } 
	{ hwReg_12_2_val_fifo_cap sc_in sc_lv 3 signal 8 } 
	{ hwReg_12_2_val_empty_n sc_in sc_logic 1 signal 8 } 
	{ hwReg_12_2_val_read sc_out sc_logic 1 signal 8 } 
	{ hwReg_13_2_val_dout sc_in sc_lv 8 signal 9 } 
	{ hwReg_13_2_val_num_data_valid sc_in sc_lv 4 signal 9 } 
	{ hwReg_13_2_val_fifo_cap sc_in sc_lv 4 signal 9 } 
	{ hwReg_13_2_val_empty_n sc_in sc_logic 1 signal 9 } 
	{ hwReg_13_2_val_read sc_out sc_logic 1 signal 9 } 
	{ outLayer2_din sc_out sc_lv 24 signal 10 } 
	{ outLayer2_num_data_valid sc_in sc_lv 3 signal 10 } 
	{ outLayer2_fifo_cap sc_in sc_lv 3 signal 10 } 
	{ outLayer2_full_n sc_in sc_logic 1 signal 10 } 
	{ outLayer2_write sc_out sc_logic 1 signal 10 } 
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
 	{ "name": "outLayer1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "outLayer1", "role": "dout" }} , 
 	{ "name": "outLayer1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "outLayer1", "role": "num_data_valid" }} , 
 	{ "name": "outLayer1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "outLayer1", "role": "fifo_cap" }} , 
 	{ "name": "outLayer1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outLayer1", "role": "empty_n" }} , 
 	{ "name": "outLayer1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outLayer1", "role": "read" }} , 
 	{ "name": "srcLayer2x_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "srcLayer2x", "role": "dout" }} , 
 	{ "name": "srcLayer2x_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "srcLayer2x", "role": "num_data_valid" }} , 
 	{ "name": "srcLayer2x_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "srcLayer2x", "role": "fifo_cap" }} , 
 	{ "name": "srcLayer2x_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "srcLayer2x", "role": "empty_n" }} , 
 	{ "name": "srcLayer2x_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "srcLayer2x", "role": "read" }} , 
 	{ "name": "hwReg_0_val", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "hwReg_0_val", "role": "default" }} , 
 	{ "name": "hwReg_1_val", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "hwReg_1_val", "role": "default" }} , 
 	{ "name": "hwReg_6_val_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "hwReg_6_val", "role": "dout" }} , 
 	{ "name": "hwReg_6_val_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "hwReg_6_val", "role": "num_data_valid" }} , 
 	{ "name": "hwReg_6_val_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "hwReg_6_val", "role": "fifo_cap" }} , 
 	{ "name": "hwReg_6_val_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hwReg_6_val", "role": "empty_n" }} , 
 	{ "name": "hwReg_6_val_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hwReg_6_val", "role": "read" }} , 
 	{ "name": "hwReg_9_2_val_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "hwReg_9_2_val", "role": "dout" }} , 
 	{ "name": "hwReg_9_2_val_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "hwReg_9_2_val", "role": "num_data_valid" }} , 
 	{ "name": "hwReg_9_2_val_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "hwReg_9_2_val", "role": "fifo_cap" }} , 
 	{ "name": "hwReg_9_2_val_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hwReg_9_2_val", "role": "empty_n" }} , 
 	{ "name": "hwReg_9_2_val_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hwReg_9_2_val", "role": "read" }} , 
 	{ "name": "hwReg_10_2_val_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "hwReg_10_2_val", "role": "dout" }} , 
 	{ "name": "hwReg_10_2_val_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "hwReg_10_2_val", "role": "num_data_valid" }} , 
 	{ "name": "hwReg_10_2_val_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "hwReg_10_2_val", "role": "fifo_cap" }} , 
 	{ "name": "hwReg_10_2_val_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hwReg_10_2_val", "role": "empty_n" }} , 
 	{ "name": "hwReg_10_2_val_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hwReg_10_2_val", "role": "read" }} , 
 	{ "name": "hwReg_11_2_val_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "hwReg_11_2_val", "role": "dout" }} , 
 	{ "name": "hwReg_11_2_val_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "hwReg_11_2_val", "role": "num_data_valid" }} , 
 	{ "name": "hwReg_11_2_val_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "hwReg_11_2_val", "role": "fifo_cap" }} , 
 	{ "name": "hwReg_11_2_val_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hwReg_11_2_val", "role": "empty_n" }} , 
 	{ "name": "hwReg_11_2_val_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hwReg_11_2_val", "role": "read" }} , 
 	{ "name": "hwReg_12_2_val_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "hwReg_12_2_val", "role": "dout" }} , 
 	{ "name": "hwReg_12_2_val_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "hwReg_12_2_val", "role": "num_data_valid" }} , 
 	{ "name": "hwReg_12_2_val_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "hwReg_12_2_val", "role": "fifo_cap" }} , 
 	{ "name": "hwReg_12_2_val_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hwReg_12_2_val", "role": "empty_n" }} , 
 	{ "name": "hwReg_12_2_val_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hwReg_12_2_val", "role": "read" }} , 
 	{ "name": "hwReg_13_2_val_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "hwReg_13_2_val", "role": "dout" }} , 
 	{ "name": "hwReg_13_2_val_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "hwReg_13_2_val", "role": "num_data_valid" }} , 
 	{ "name": "hwReg_13_2_val_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "hwReg_13_2_val", "role": "fifo_cap" }} , 
 	{ "name": "hwReg_13_2_val_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hwReg_13_2_val", "role": "empty_n" }} , 
 	{ "name": "hwReg_13_2_val_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hwReg_13_2_val", "role": "read" }} , 
 	{ "name": "outLayer2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "outLayer2", "role": "din" }} , 
 	{ "name": "outLayer2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "outLayer2", "role": "num_data_valid" }} , 
 	{ "name": "outLayer2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "outLayer2", "role": "fifo_cap" }} , 
 	{ "name": "outLayer2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outLayer2", "role": "full_n" }} , 
 	{ "name": "outLayer2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outLayer2", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "v_mix_core_alpha_false_false_10",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4418", "EstimateLatencyMax" : "8305202",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "outLayer1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_v_mix_core_alpha_false_false_10_Pipeline_VITIS_LOOP_465_3_fu_132", "Port" : "outLayer1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "srcLayer2x", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_v_mix_core_alpha_false_false_10_Pipeline_VITIS_LOOP_465_3_fu_132", "Port" : "srcLayer2x", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "hwReg_0_val", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "hwReg_1_val", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "hwReg_6_val", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "hwReg_6_val_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "hwReg_9_2_val", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "8", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "hwReg_9_2_val_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "hwReg_10_2_val", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "8", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "hwReg_10_2_val_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "hwReg_11_2_val", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "hwReg_11_2_val_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "hwReg_12_2_val", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "hwReg_12_2_val_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "hwReg_13_2_val", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "8", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "hwReg_13_2_val_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "outLayer2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_v_mix_core_alpha_false_false_10_Pipeline_VITIS_LOOP_465_3_fu_132", "Port" : "outLayer2", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_463_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_v_mix_core_alpha_false_false_10_Pipeline_VITIS_LOOP_465_3_fu_132", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "v_mix_core_alpha_false_false_10_Pipeline_VITIS_LOOP_465_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "67", "EstimateLatencyMax" : "3843",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "hwReg_0_val", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "outLayer2", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "outLayer2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "srcLayer2x", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "srcLayer2x_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "outLayer1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "outLayer1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "layerStartX", "Type" : "None", "Direction" : "I"},
			{"Name" : "add71", "Type" : "None", "Direction" : "I"},
			{"Name" : "notrhs", "Type" : "None", "Direction" : "I"},
			{"Name" : "rev5", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_465_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_v_mix_core_alpha_false_false_10_Pipeline_VITIS_LOOP_465_3_fu_132.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	v_mix_core_alpha_false_false_10 {
		outLayer1 {Type I LastRead 1 FirstWrite -1}
		srcLayer2x {Type I LastRead 1 FirstWrite -1}
		hwReg_0_val {Type I LastRead 1 FirstWrite -1}
		hwReg_1_val {Type I LastRead 1 FirstWrite -1}
		hwReg_6_val {Type I LastRead 0 FirstWrite -1}
		hwReg_9_2_val {Type I LastRead 0 FirstWrite -1}
		hwReg_10_2_val {Type I LastRead 0 FirstWrite -1}
		hwReg_11_2_val {Type I LastRead 0 FirstWrite -1}
		hwReg_12_2_val {Type I LastRead 0 FirstWrite -1}
		hwReg_13_2_val {Type I LastRead 0 FirstWrite -1}
		outLayer2 {Type O LastRead -1 FirstWrite 2}}
	v_mix_core_alpha_false_false_10_Pipeline_VITIS_LOOP_465_3 {
		hwReg_0_val {Type I LastRead 0 FirstWrite -1}
		outLayer2 {Type O LastRead -1 FirstWrite 2}
		srcLayer2x {Type I LastRead 1 FirstWrite -1}
		outLayer1 {Type I LastRead 1 FirstWrite -1}
		layerStartX {Type I LastRead 0 FirstWrite -1}
		add71 {Type I LastRead 0 FirstWrite -1}
		notrhs {Type I LastRead 0 FirstWrite -1}
		rev5 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4418", "Max" : "8305202"}
	, {"Name" : "Interval", "Min" : "4418", "Max" : "8305202"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	outLayer1 { ap_fifo {  { outLayer1_dout fifo_data_in 0 24 }  { outLayer1_num_data_valid fifo_status_num_data_valid 0 3 }  { outLayer1_fifo_cap fifo_update 0 3 }  { outLayer1_empty_n fifo_status 0 1 }  { outLayer1_read fifo_port_we 1 1 } } }
	srcLayer2x { ap_fifo {  { srcLayer2x_dout fifo_data_in 0 24 }  { srcLayer2x_num_data_valid fifo_status_num_data_valid 0 3 }  { srcLayer2x_fifo_cap fifo_update 0 3 }  { srcLayer2x_empty_n fifo_status 0 1 }  { srcLayer2x_read fifo_port_we 1 1 } } }
	hwReg_0_val { ap_stable {  { hwReg_0_val in_data 0 12 } } }
	hwReg_1_val { ap_stable {  { hwReg_1_val in_data 0 12 } } }
	hwReg_6_val { ap_fifo {  { hwReg_6_val_dout fifo_data_in 0 3 }  { hwReg_6_val_num_data_valid fifo_status_num_data_valid 0 3 }  { hwReg_6_val_fifo_cap fifo_update 0 3 }  { hwReg_6_val_empty_n fifo_status 0 1 }  { hwReg_6_val_read fifo_port_we 1 1 } } }
	hwReg_9_2_val { ap_fifo {  { hwReg_9_2_val_dout fifo_data_in 0 16 }  { hwReg_9_2_val_num_data_valid fifo_status_num_data_valid 0 4 }  { hwReg_9_2_val_fifo_cap fifo_update 0 4 }  { hwReg_9_2_val_empty_n fifo_status 0 1 }  { hwReg_9_2_val_read fifo_port_we 1 1 } } }
	hwReg_10_2_val { ap_fifo {  { hwReg_10_2_val_dout fifo_data_in 0 16 }  { hwReg_10_2_val_num_data_valid fifo_status_num_data_valid 0 4 }  { hwReg_10_2_val_fifo_cap fifo_update 0 4 }  { hwReg_10_2_val_empty_n fifo_status 0 1 }  { hwReg_10_2_val_read fifo_port_we 1 1 } } }
	hwReg_11_2_val { ap_fifo {  { hwReg_11_2_val_dout fifo_data_in 0 16 }  { hwReg_11_2_val_num_data_valid fifo_status_num_data_valid 0 3 }  { hwReg_11_2_val_fifo_cap fifo_update 0 3 }  { hwReg_11_2_val_empty_n fifo_status 0 1 }  { hwReg_11_2_val_read fifo_port_we 1 1 } } }
	hwReg_12_2_val { ap_fifo {  { hwReg_12_2_val_dout fifo_data_in 0 16 }  { hwReg_12_2_val_num_data_valid fifo_status_num_data_valid 0 3 }  { hwReg_12_2_val_fifo_cap fifo_update 0 3 }  { hwReg_12_2_val_empty_n fifo_status 0 1 }  { hwReg_12_2_val_read fifo_port_we 1 1 } } }
	hwReg_13_2_val { ap_fifo {  { hwReg_13_2_val_dout fifo_data_in 0 8 }  { hwReg_13_2_val_num_data_valid fifo_status_num_data_valid 0 4 }  { hwReg_13_2_val_fifo_cap fifo_update 0 4 }  { hwReg_13_2_val_empty_n fifo_status 0 1 }  { hwReg_13_2_val_read fifo_port_we 1 1 } } }
	outLayer2 { ap_fifo {  { outLayer2_din fifo_data_in 1 24 }  { outLayer2_num_data_valid fifo_status_num_data_valid 0 3 }  { outLayer2_fifo_cap fifo_update 0 3 }  { outLayer2_full_n fifo_status 0 1 }  { outLayer2_write fifo_port_we 1 1 } } }
}
