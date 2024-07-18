set moduleName entry_proc
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 1
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {entry_proc}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ HwReg_layerEnable_val16 int 3 regular  }
	{ HwReg_layerEnable_val16_c12 int 3 regular {fifo 1}  }
	{ HwReg_layerStartX_1_val17 int 16 regular  }
	{ HwReg_layerStartX_1_val17_c int 16 regular {fifo 1}  }
	{ HwReg_layerStartX_2_val18 int 16 regular  }
	{ HwReg_layerStartX_2_val18_c int 16 regular {fifo 1}  }
	{ HwReg_layerStartY_1_val19 int 16 regular  }
	{ HwReg_layerStartY_1_val19_c int 16 regular {fifo 1}  }
	{ HwReg_layerStartY_2_val20 int 16 regular  }
	{ HwReg_layerStartY_2_val20_c int 16 regular {fifo 1}  }
	{ HwReg_layerScaleFactor_1_val25 int 8 regular  }
	{ HwReg_layerScaleFactor_1_val25_c int 8 regular {fifo 1}  }
	{ HwReg_layerScaleFactor_2_val26 int 8 regular  }
	{ HwReg_layerScaleFactor_2_val26_c int 8 regular {fifo 1}  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "HwReg_layerEnable_val16", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "HwReg_layerEnable_val16_c12", "interface" : "fifo", "bitwidth" : 3, "direction" : "WRITEONLY"} , 
 	{ "Name" : "HwReg_layerStartX_1_val17", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "HwReg_layerStartX_1_val17_c", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "HwReg_layerStartX_2_val18", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "HwReg_layerStartX_2_val18_c", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "HwReg_layerStartY_1_val19", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "HwReg_layerStartY_1_val19_c", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "HwReg_layerStartY_2_val20", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "HwReg_layerStartY_2_val20_c", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "HwReg_layerScaleFactor_1_val25", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "HwReg_layerScaleFactor_1_val25_c", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "HwReg_layerScaleFactor_2_val26", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "HwReg_layerScaleFactor_2_val26_c", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 52
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
	{ HwReg_layerEnable_val16 sc_in sc_lv 3 signal 0 } 
	{ HwReg_layerEnable_val16_c12_din sc_out sc_lv 3 signal 1 } 
	{ HwReg_layerEnable_val16_c12_num_data_valid sc_in sc_lv 4 signal 1 } 
	{ HwReg_layerEnable_val16_c12_fifo_cap sc_in sc_lv 4 signal 1 } 
	{ HwReg_layerEnable_val16_c12_full_n sc_in sc_logic 1 signal 1 } 
	{ HwReg_layerEnable_val16_c12_write sc_out sc_logic 1 signal 1 } 
	{ HwReg_layerStartX_1_val17 sc_in sc_lv 16 signal 2 } 
	{ HwReg_layerStartX_1_val17_c_din sc_out sc_lv 16 signal 3 } 
	{ HwReg_layerStartX_1_val17_c_num_data_valid sc_in sc_lv 4 signal 3 } 
	{ HwReg_layerStartX_1_val17_c_fifo_cap sc_in sc_lv 4 signal 3 } 
	{ HwReg_layerStartX_1_val17_c_full_n sc_in sc_logic 1 signal 3 } 
	{ HwReg_layerStartX_1_val17_c_write sc_out sc_logic 1 signal 3 } 
	{ HwReg_layerStartX_2_val18 sc_in sc_lv 16 signal 4 } 
	{ HwReg_layerStartX_2_val18_c_din sc_out sc_lv 16 signal 5 } 
	{ HwReg_layerStartX_2_val18_c_num_data_valid sc_in sc_lv 4 signal 5 } 
	{ HwReg_layerStartX_2_val18_c_fifo_cap sc_in sc_lv 4 signal 5 } 
	{ HwReg_layerStartX_2_val18_c_full_n sc_in sc_logic 1 signal 5 } 
	{ HwReg_layerStartX_2_val18_c_write sc_out sc_logic 1 signal 5 } 
	{ HwReg_layerStartY_1_val19 sc_in sc_lv 16 signal 6 } 
	{ HwReg_layerStartY_1_val19_c_din sc_out sc_lv 16 signal 7 } 
	{ HwReg_layerStartY_1_val19_c_num_data_valid sc_in sc_lv 4 signal 7 } 
	{ HwReg_layerStartY_1_val19_c_fifo_cap sc_in sc_lv 4 signal 7 } 
	{ HwReg_layerStartY_1_val19_c_full_n sc_in sc_logic 1 signal 7 } 
	{ HwReg_layerStartY_1_val19_c_write sc_out sc_logic 1 signal 7 } 
	{ HwReg_layerStartY_2_val20 sc_in sc_lv 16 signal 8 } 
	{ HwReg_layerStartY_2_val20_c_din sc_out sc_lv 16 signal 9 } 
	{ HwReg_layerStartY_2_val20_c_num_data_valid sc_in sc_lv 4 signal 9 } 
	{ HwReg_layerStartY_2_val20_c_fifo_cap sc_in sc_lv 4 signal 9 } 
	{ HwReg_layerStartY_2_val20_c_full_n sc_in sc_logic 1 signal 9 } 
	{ HwReg_layerStartY_2_val20_c_write sc_out sc_logic 1 signal 9 } 
	{ HwReg_layerScaleFactor_1_val25 sc_in sc_lv 8 signal 10 } 
	{ HwReg_layerScaleFactor_1_val25_c_din sc_out sc_lv 8 signal 11 } 
	{ HwReg_layerScaleFactor_1_val25_c_num_data_valid sc_in sc_lv 4 signal 11 } 
	{ HwReg_layerScaleFactor_1_val25_c_fifo_cap sc_in sc_lv 4 signal 11 } 
	{ HwReg_layerScaleFactor_1_val25_c_full_n sc_in sc_logic 1 signal 11 } 
	{ HwReg_layerScaleFactor_1_val25_c_write sc_out sc_logic 1 signal 11 } 
	{ HwReg_layerScaleFactor_2_val26 sc_in sc_lv 8 signal 12 } 
	{ HwReg_layerScaleFactor_2_val26_c_din sc_out sc_lv 8 signal 13 } 
	{ HwReg_layerScaleFactor_2_val26_c_num_data_valid sc_in sc_lv 4 signal 13 } 
	{ HwReg_layerScaleFactor_2_val26_c_fifo_cap sc_in sc_lv 4 signal 13 } 
	{ HwReg_layerScaleFactor_2_val26_c_full_n sc_in sc_logic 1 signal 13 } 
	{ HwReg_layerScaleFactor_2_val26_c_write sc_out sc_logic 1 signal 13 } 
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
 	{ "name": "HwReg_layerEnable_val16", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "HwReg_layerEnable_val16", "role": "default" }} , 
 	{ "name": "HwReg_layerEnable_val16_c12_din", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "HwReg_layerEnable_val16_c12", "role": "din" }} , 
 	{ "name": "HwReg_layerEnable_val16_c12_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "HwReg_layerEnable_val16_c12", "role": "num_data_valid" }} , 
 	{ "name": "HwReg_layerEnable_val16_c12_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "HwReg_layerEnable_val16_c12", "role": "fifo_cap" }} , 
 	{ "name": "HwReg_layerEnable_val16_c12_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HwReg_layerEnable_val16_c12", "role": "full_n" }} , 
 	{ "name": "HwReg_layerEnable_val16_c12_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HwReg_layerEnable_val16_c12", "role": "write" }} , 
 	{ "name": "HwReg_layerStartX_1_val17", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "HwReg_layerStartX_1_val17", "role": "default" }} , 
 	{ "name": "HwReg_layerStartX_1_val17_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "HwReg_layerStartX_1_val17_c", "role": "din" }} , 
 	{ "name": "HwReg_layerStartX_1_val17_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "HwReg_layerStartX_1_val17_c", "role": "num_data_valid" }} , 
 	{ "name": "HwReg_layerStartX_1_val17_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "HwReg_layerStartX_1_val17_c", "role": "fifo_cap" }} , 
 	{ "name": "HwReg_layerStartX_1_val17_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HwReg_layerStartX_1_val17_c", "role": "full_n" }} , 
 	{ "name": "HwReg_layerStartX_1_val17_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HwReg_layerStartX_1_val17_c", "role": "write" }} , 
 	{ "name": "HwReg_layerStartX_2_val18", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "HwReg_layerStartX_2_val18", "role": "default" }} , 
 	{ "name": "HwReg_layerStartX_2_val18_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "HwReg_layerStartX_2_val18_c", "role": "din" }} , 
 	{ "name": "HwReg_layerStartX_2_val18_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "HwReg_layerStartX_2_val18_c", "role": "num_data_valid" }} , 
 	{ "name": "HwReg_layerStartX_2_val18_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "HwReg_layerStartX_2_val18_c", "role": "fifo_cap" }} , 
 	{ "name": "HwReg_layerStartX_2_val18_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HwReg_layerStartX_2_val18_c", "role": "full_n" }} , 
 	{ "name": "HwReg_layerStartX_2_val18_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HwReg_layerStartX_2_val18_c", "role": "write" }} , 
 	{ "name": "HwReg_layerStartY_1_val19", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "HwReg_layerStartY_1_val19", "role": "default" }} , 
 	{ "name": "HwReg_layerStartY_1_val19_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "HwReg_layerStartY_1_val19_c", "role": "din" }} , 
 	{ "name": "HwReg_layerStartY_1_val19_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "HwReg_layerStartY_1_val19_c", "role": "num_data_valid" }} , 
 	{ "name": "HwReg_layerStartY_1_val19_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "HwReg_layerStartY_1_val19_c", "role": "fifo_cap" }} , 
 	{ "name": "HwReg_layerStartY_1_val19_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HwReg_layerStartY_1_val19_c", "role": "full_n" }} , 
 	{ "name": "HwReg_layerStartY_1_val19_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HwReg_layerStartY_1_val19_c", "role": "write" }} , 
 	{ "name": "HwReg_layerStartY_2_val20", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "HwReg_layerStartY_2_val20", "role": "default" }} , 
 	{ "name": "HwReg_layerStartY_2_val20_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "HwReg_layerStartY_2_val20_c", "role": "din" }} , 
 	{ "name": "HwReg_layerStartY_2_val20_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "HwReg_layerStartY_2_val20_c", "role": "num_data_valid" }} , 
 	{ "name": "HwReg_layerStartY_2_val20_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "HwReg_layerStartY_2_val20_c", "role": "fifo_cap" }} , 
 	{ "name": "HwReg_layerStartY_2_val20_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HwReg_layerStartY_2_val20_c", "role": "full_n" }} , 
 	{ "name": "HwReg_layerStartY_2_val20_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HwReg_layerStartY_2_val20_c", "role": "write" }} , 
 	{ "name": "HwReg_layerScaleFactor_1_val25", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "HwReg_layerScaleFactor_1_val25", "role": "default" }} , 
 	{ "name": "HwReg_layerScaleFactor_1_val25_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "HwReg_layerScaleFactor_1_val25_c", "role": "din" }} , 
 	{ "name": "HwReg_layerScaleFactor_1_val25_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "HwReg_layerScaleFactor_1_val25_c", "role": "num_data_valid" }} , 
 	{ "name": "HwReg_layerScaleFactor_1_val25_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "HwReg_layerScaleFactor_1_val25_c", "role": "fifo_cap" }} , 
 	{ "name": "HwReg_layerScaleFactor_1_val25_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HwReg_layerScaleFactor_1_val25_c", "role": "full_n" }} , 
 	{ "name": "HwReg_layerScaleFactor_1_val25_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HwReg_layerScaleFactor_1_val25_c", "role": "write" }} , 
 	{ "name": "HwReg_layerScaleFactor_2_val26", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "HwReg_layerScaleFactor_2_val26", "role": "default" }} , 
 	{ "name": "HwReg_layerScaleFactor_2_val26_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "HwReg_layerScaleFactor_2_val26_c", "role": "din" }} , 
 	{ "name": "HwReg_layerScaleFactor_2_val26_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "HwReg_layerScaleFactor_2_val26_c", "role": "num_data_valid" }} , 
 	{ "name": "HwReg_layerScaleFactor_2_val26_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "HwReg_layerScaleFactor_2_val26_c", "role": "fifo_cap" }} , 
 	{ "name": "HwReg_layerScaleFactor_2_val26_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HwReg_layerScaleFactor_2_val26_c", "role": "full_n" }} , 
 	{ "name": "HwReg_layerScaleFactor_2_val26_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HwReg_layerScaleFactor_2_val26_c", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "entry_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "HwReg_layerEnable_val16", "Type" : "None", "Direction" : "I"},
			{"Name" : "HwReg_layerEnable_val16_c12", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "7", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerEnable_val16_c12_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_layerStartX_1_val17", "Type" : "None", "Direction" : "I"},
			{"Name" : "HwReg_layerStartX_1_val17_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "7", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerStartX_1_val17_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_layerStartX_2_val18", "Type" : "None", "Direction" : "I"},
			{"Name" : "HwReg_layerStartX_2_val18_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "8", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerStartX_2_val18_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_layerStartY_1_val19", "Type" : "None", "Direction" : "I"},
			{"Name" : "HwReg_layerStartY_1_val19_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "7", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerStartY_1_val19_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_layerStartY_2_val20", "Type" : "None", "Direction" : "I"},
			{"Name" : "HwReg_layerStartY_2_val20_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "8", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerStartY_2_val20_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_layerScaleFactor_1_val25", "Type" : "None", "Direction" : "I"},
			{"Name" : "HwReg_layerScaleFactor_1_val25_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "7", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerScaleFactor_1_val25_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_layerScaleFactor_2_val26", "Type" : "None", "Direction" : "I"},
			{"Name" : "HwReg_layerScaleFactor_2_val26_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "8", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerScaleFactor_2_val26_c_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	entry_proc {
		HwReg_layerEnable_val16 {Type I LastRead 0 FirstWrite -1}
		HwReg_layerEnable_val16_c12 {Type O LastRead -1 FirstWrite 0}
		HwReg_layerStartX_1_val17 {Type I LastRead 0 FirstWrite -1}
		HwReg_layerStartX_1_val17_c {Type O LastRead -1 FirstWrite 0}
		HwReg_layerStartX_2_val18 {Type I LastRead 0 FirstWrite -1}
		HwReg_layerStartX_2_val18_c {Type O LastRead -1 FirstWrite 0}
		HwReg_layerStartY_1_val19 {Type I LastRead 0 FirstWrite -1}
		HwReg_layerStartY_1_val19_c {Type O LastRead -1 FirstWrite 0}
		HwReg_layerStartY_2_val20 {Type I LastRead 0 FirstWrite -1}
		HwReg_layerStartY_2_val20_c {Type O LastRead -1 FirstWrite 0}
		HwReg_layerScaleFactor_1_val25 {Type I LastRead 0 FirstWrite -1}
		HwReg_layerScaleFactor_1_val25_c {Type O LastRead -1 FirstWrite 0}
		HwReg_layerScaleFactor_2_val26 {Type I LastRead 0 FirstWrite -1}
		HwReg_layerScaleFactor_2_val26_c {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	HwReg_layerEnable_val16 { ap_none {  { HwReg_layerEnable_val16 in_data 0 3 } } }
	HwReg_layerEnable_val16_c12 { ap_fifo {  { HwReg_layerEnable_val16_c12_din fifo_data_in 1 3 }  { HwReg_layerEnable_val16_c12_num_data_valid fifo_status_num_data_valid 0 4 }  { HwReg_layerEnable_val16_c12_fifo_cap fifo_update 0 4 }  { HwReg_layerEnable_val16_c12_full_n fifo_status 0 1 }  { HwReg_layerEnable_val16_c12_write fifo_port_we 1 1 } } }
	HwReg_layerStartX_1_val17 { ap_none {  { HwReg_layerStartX_1_val17 in_data 0 16 } } }
	HwReg_layerStartX_1_val17_c { ap_fifo {  { HwReg_layerStartX_1_val17_c_din fifo_data_in 1 16 }  { HwReg_layerStartX_1_val17_c_num_data_valid fifo_status_num_data_valid 0 4 }  { HwReg_layerStartX_1_val17_c_fifo_cap fifo_update 0 4 }  { HwReg_layerStartX_1_val17_c_full_n fifo_status 0 1 }  { HwReg_layerStartX_1_val17_c_write fifo_port_we 1 1 } } }
	HwReg_layerStartX_2_val18 { ap_none {  { HwReg_layerStartX_2_val18 in_data 0 16 } } }
	HwReg_layerStartX_2_val18_c { ap_fifo {  { HwReg_layerStartX_2_val18_c_din fifo_data_in 1 16 }  { HwReg_layerStartX_2_val18_c_num_data_valid fifo_status_num_data_valid 0 4 }  { HwReg_layerStartX_2_val18_c_fifo_cap fifo_update 0 4 }  { HwReg_layerStartX_2_val18_c_full_n fifo_status 0 1 }  { HwReg_layerStartX_2_val18_c_write fifo_port_we 1 1 } } }
	HwReg_layerStartY_1_val19 { ap_none {  { HwReg_layerStartY_1_val19 in_data 0 16 } } }
	HwReg_layerStartY_1_val19_c { ap_fifo {  { HwReg_layerStartY_1_val19_c_din fifo_data_in 1 16 }  { HwReg_layerStartY_1_val19_c_num_data_valid fifo_status_num_data_valid 0 4 }  { HwReg_layerStartY_1_val19_c_fifo_cap fifo_update 0 4 }  { HwReg_layerStartY_1_val19_c_full_n fifo_status 0 1 }  { HwReg_layerStartY_1_val19_c_write fifo_port_we 1 1 } } }
	HwReg_layerStartY_2_val20 { ap_none {  { HwReg_layerStartY_2_val20 in_data 0 16 } } }
	HwReg_layerStartY_2_val20_c { ap_fifo {  { HwReg_layerStartY_2_val20_c_din fifo_data_in 1 16 }  { HwReg_layerStartY_2_val20_c_num_data_valid fifo_status_num_data_valid 0 4 }  { HwReg_layerStartY_2_val20_c_fifo_cap fifo_update 0 4 }  { HwReg_layerStartY_2_val20_c_full_n fifo_status 0 1 }  { HwReg_layerStartY_2_val20_c_write fifo_port_we 1 1 } } }
	HwReg_layerScaleFactor_1_val25 { ap_none {  { HwReg_layerScaleFactor_1_val25 in_data 0 8 } } }
	HwReg_layerScaleFactor_1_val25_c { ap_fifo {  { HwReg_layerScaleFactor_1_val25_c_din fifo_data_in 1 8 }  { HwReg_layerScaleFactor_1_val25_c_num_data_valid fifo_status_num_data_valid 0 4 }  { HwReg_layerScaleFactor_1_val25_c_fifo_cap fifo_update 0 4 }  { HwReg_layerScaleFactor_1_val25_c_full_n fifo_status 0 1 }  { HwReg_layerScaleFactor_1_val25_c_write fifo_port_we 1 1 } } }
	HwReg_layerScaleFactor_2_val26 { ap_none {  { HwReg_layerScaleFactor_2_val26 in_data 0 8 } } }
	HwReg_layerScaleFactor_2_val26_c { ap_fifo {  { HwReg_layerScaleFactor_2_val26_c_din fifo_data_in 1 8 }  { HwReg_layerScaleFactor_2_val26_c_num_data_valid fifo_status_num_data_valid 0 4 }  { HwReg_layerScaleFactor_2_val26_c_fifo_cap fifo_update 0 4 }  { HwReg_layerScaleFactor_2_val26_c_full_n fifo_status 0 1 }  { HwReg_layerScaleFactor_2_val26_c_write fifo_port_we 1 1 } } }
}
