set moduleName VMixHlsDataFlowFunction
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {VMixHlsDataFlowFunction}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ HwReg_width_val int 12 regular {ap_stable 0} }
	{ HwReg_height_val int 12 regular {ap_stable 0} }
	{ HwReg_background_Y_R_val12 int 8 regular {ap_stable 0} }
	{ HwReg_background_U_G_val13 int 8 regular {ap_stable 0} }
	{ HwReg_background_V_B_val14 int 8 regular {ap_stable 0} }
	{ HwReg_layerEnable_val16 int 3 regular  }
	{ HwReg_layerEnableFlag_0_val int 1 regular  }
	{ HwReg_layerEnableFlag_1_val int 1 regular  }
	{ HwReg_layerEnableFlag_2_val int 1 regular  }
	{ HwReg_layerStartX_1_val17 int 16 regular  }
	{ HwReg_layerStartX_2_val18 int 16 regular  }
	{ HwReg_layerStartY_1_val19 int 16 regular  }
	{ HwReg_layerStartY_2_val20 int 16 regular  }
	{ HwReg_layerWidth_1_val int 16 regular  }
	{ HwReg_layerWidth_2_val int 16 regular  }
	{ HwReg_layerHeight_1_val int 16 regular  }
	{ HwReg_layerHeight_2_val int 16 regular  }
	{ HwReg_layerScaleFactor_1_val25 int 8 regular  }
	{ HwReg_layerScaleFactor_2_val26 int 8 regular  }
	{ s_axis_video_V_data_V int 24 regular {axi_s 0 volatile  { s_axis_video Data } }  }
	{ s_axis_video_V_keep_V int 3 regular {axi_s 0 volatile  { s_axis_video Keep } }  }
	{ s_axis_video_V_strb_V int 3 regular {axi_s 0 volatile  { s_axis_video Strb } }  }
	{ s_axis_video_V_user_V int 1 regular {axi_s 0 volatile  { s_axis_video User } }  }
	{ s_axis_video_V_last_V int 1 regular {axi_s 0 volatile  { s_axis_video Last } }  }
	{ s_axis_video_V_id_V int 1 regular {axi_s 0 volatile  { s_axis_video ID } }  }
	{ s_axis_video_V_dest_V int 1 regular {axi_s 0 volatile  { s_axis_video Dest } }  }
	{ s_axis_video1_V_data_V int 24 regular {axi_s 0 volatile  { s_axis_video1 Data } }  }
	{ s_axis_video1_V_keep_V int 3 regular {axi_s 0 volatile  { s_axis_video1 Keep } }  }
	{ s_axis_video1_V_strb_V int 3 regular {axi_s 0 volatile  { s_axis_video1 Strb } }  }
	{ s_axis_video1_V_user_V int 1 regular {axi_s 0 volatile  { s_axis_video1 User } }  }
	{ s_axis_video1_V_last_V int 1 regular {axi_s 0 volatile  { s_axis_video1 Last } }  }
	{ s_axis_video1_V_id_V int 1 regular {axi_s 0 volatile  { s_axis_video1 ID } }  }
	{ s_axis_video1_V_dest_V int 1 regular {axi_s 0 volatile  { s_axis_video1 Dest } }  }
	{ s_axis_video2_V_data_V int 24 regular {axi_s 0 volatile  { s_axis_video2 Data } }  }
	{ s_axis_video2_V_keep_V int 3 regular {axi_s 0 volatile  { s_axis_video2 Keep } }  }
	{ s_axis_video2_V_strb_V int 3 regular {axi_s 0 volatile  { s_axis_video2 Strb } }  }
	{ s_axis_video2_V_user_V int 1 regular {axi_s 0 volatile  { s_axis_video2 User } }  }
	{ s_axis_video2_V_last_V int 1 regular {axi_s 0 volatile  { s_axis_video2 Last } }  }
	{ s_axis_video2_V_id_V int 1 regular {axi_s 0 volatile  { s_axis_video2 ID } }  }
	{ s_axis_video2_V_dest_V int 1 regular {axi_s 0 volatile  { s_axis_video2 Dest } }  }
	{ m_axis_video_V_data_V int 24 regular {axi_s 1 volatile  { m_axis_video Data } }  }
	{ m_axis_video_V_keep_V int 3 regular {axi_s 1 volatile  { m_axis_video Keep } }  }
	{ m_axis_video_V_strb_V int 3 regular {axi_s 1 volatile  { m_axis_video Strb } }  }
	{ m_axis_video_V_user_V int 1 regular {axi_s 1 volatile  { m_axis_video User } }  }
	{ m_axis_video_V_last_V int 1 regular {axi_s 1 volatile  { m_axis_video Last } }  }
	{ m_axis_video_V_id_V int 1 regular {axi_s 1 volatile  { m_axis_video ID } }  }
	{ m_axis_video_V_dest_V int 1 regular {axi_s 1 volatile  { m_axis_video Dest } }  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "HwReg_width_val", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "HwReg_height_val", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "HwReg_background_Y_R_val12", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "HwReg_background_U_G_val13", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "HwReg_background_V_B_val14", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "HwReg_layerEnable_val16", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "HwReg_layerEnableFlag_0_val", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "HwReg_layerEnableFlag_1_val", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "HwReg_layerEnableFlag_2_val", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "HwReg_layerStartX_1_val17", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "HwReg_layerStartX_2_val18", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "HwReg_layerStartY_1_val19", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "HwReg_layerStartY_2_val20", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "HwReg_layerWidth_1_val", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "HwReg_layerWidth_2_val", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "HwReg_layerHeight_1_val", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "HwReg_layerHeight_2_val", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "HwReg_layerScaleFactor_1_val25", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "HwReg_layerScaleFactor_2_val26", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_video_V_data_V", "interface" : "axis", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_video_V_keep_V", "interface" : "axis", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_video_V_strb_V", "interface" : "axis", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_video_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_video_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_video_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_video_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_video1_V_data_V", "interface" : "axis", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_video1_V_keep_V", "interface" : "axis", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_video1_V_strb_V", "interface" : "axis", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_video1_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_video1_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_video1_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_video1_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_video2_V_data_V", "interface" : "axis", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_video2_V_keep_V", "interface" : "axis", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_video2_V_strb_V", "interface" : "axis", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_video2_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_video2_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_video2_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_video2_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "m_axis_video_V_data_V", "interface" : "axis", "bitwidth" : 24, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_video_V_keep_V", "interface" : "axis", "bitwidth" : 3, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_video_V_strb_V", "interface" : "axis", "bitwidth" : 3, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_video_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_video_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_video_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_video_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 81
set portList { 
	{ HwReg_width_val sc_in sc_lv 12 signal 0 } 
	{ HwReg_height_val sc_in sc_lv 12 signal 1 } 
	{ HwReg_background_Y_R_val12 sc_in sc_lv 8 signal 2 } 
	{ HwReg_background_U_G_val13 sc_in sc_lv 8 signal 3 } 
	{ HwReg_background_V_B_val14 sc_in sc_lv 8 signal 4 } 
	{ HwReg_layerEnable_val16 sc_in sc_lv 3 signal 5 } 
	{ HwReg_layerEnableFlag_0_val sc_in sc_lv 1 signal 6 } 
	{ HwReg_layerEnableFlag_1_val sc_in sc_lv 1 signal 7 } 
	{ HwReg_layerEnableFlag_2_val sc_in sc_lv 1 signal 8 } 
	{ HwReg_layerStartX_1_val17 sc_in sc_lv 16 signal 9 } 
	{ HwReg_layerStartX_2_val18 sc_in sc_lv 16 signal 10 } 
	{ HwReg_layerStartY_1_val19 sc_in sc_lv 16 signal 11 } 
	{ HwReg_layerStartY_2_val20 sc_in sc_lv 16 signal 12 } 
	{ HwReg_layerWidth_1_val sc_in sc_lv 16 signal 13 } 
	{ HwReg_layerWidth_2_val sc_in sc_lv 16 signal 14 } 
	{ HwReg_layerHeight_1_val sc_in sc_lv 16 signal 15 } 
	{ HwReg_layerHeight_2_val sc_in sc_lv 16 signal 16 } 
	{ HwReg_layerScaleFactor_1_val25 sc_in sc_lv 8 signal 17 } 
	{ HwReg_layerScaleFactor_2_val26 sc_in sc_lv 8 signal 18 } 
	{ s_axis_video_TDATA sc_in sc_lv 24 signal 19 } 
	{ s_axis_video_TKEEP sc_in sc_lv 3 signal 20 } 
	{ s_axis_video_TSTRB sc_in sc_lv 3 signal 21 } 
	{ s_axis_video_TUSER sc_in sc_lv 1 signal 22 } 
	{ s_axis_video_TLAST sc_in sc_lv 1 signal 23 } 
	{ s_axis_video_TID sc_in sc_lv 1 signal 24 } 
	{ s_axis_video_TDEST sc_in sc_lv 1 signal 25 } 
	{ s_axis_video1_TDATA sc_in sc_lv 24 signal 26 } 
	{ s_axis_video1_TKEEP sc_in sc_lv 3 signal 27 } 
	{ s_axis_video1_TSTRB sc_in sc_lv 3 signal 28 } 
	{ s_axis_video1_TUSER sc_in sc_lv 1 signal 29 } 
	{ s_axis_video1_TLAST sc_in sc_lv 1 signal 30 } 
	{ s_axis_video1_TID sc_in sc_lv 1 signal 31 } 
	{ s_axis_video1_TDEST sc_in sc_lv 1 signal 32 } 
	{ s_axis_video2_TDATA sc_in sc_lv 24 signal 33 } 
	{ s_axis_video2_TKEEP sc_in sc_lv 3 signal 34 } 
	{ s_axis_video2_TSTRB sc_in sc_lv 3 signal 35 } 
	{ s_axis_video2_TUSER sc_in sc_lv 1 signal 36 } 
	{ s_axis_video2_TLAST sc_in sc_lv 1 signal 37 } 
	{ s_axis_video2_TID sc_in sc_lv 1 signal 38 } 
	{ s_axis_video2_TDEST sc_in sc_lv 1 signal 39 } 
	{ m_axis_video_TDATA sc_out sc_lv 24 signal 40 } 
	{ m_axis_video_TKEEP sc_out sc_lv 3 signal 41 } 
	{ m_axis_video_TSTRB sc_out sc_lv 3 signal 42 } 
	{ m_axis_video_TUSER sc_out sc_lv 1 signal 43 } 
	{ m_axis_video_TLAST sc_out sc_lv 1 signal 44 } 
	{ m_axis_video_TID sc_out sc_lv 1 signal 45 } 
	{ m_axis_video_TDEST sc_out sc_lv 1 signal 46 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ HwReg_layerEnable_val16_ap_vld sc_in sc_logic 1 invld 5 } 
	{ HwReg_layerStartX_1_val17_ap_vld sc_in sc_logic 1 invld 9 } 
	{ HwReg_layerStartX_2_val18_ap_vld sc_in sc_logic 1 invld 10 } 
	{ HwReg_layerStartY_1_val19_ap_vld sc_in sc_logic 1 invld 11 } 
	{ HwReg_layerStartY_2_val20_ap_vld sc_in sc_logic 1 invld 12 } 
	{ HwReg_layerScaleFactor_1_val25_ap_vld sc_in sc_logic 1 invld 17 } 
	{ HwReg_layerScaleFactor_2_val26_ap_vld sc_in sc_logic 1 invld 18 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ s_axis_video_TVALID sc_in sc_logic 1 invld 25 } 
	{ s_axis_video_TREADY sc_out sc_logic 1 inacc 25 } 
	{ HwReg_height_val_ap_vld sc_in sc_logic 1 invld 1 } 
	{ HwReg_width_val_ap_vld sc_in sc_logic 1 invld 0 } 
	{ HwReg_layerEnableFlag_0_val_ap_vld sc_in sc_logic 1 invld 6 } 
	{ s_axis_video1_TVALID sc_in sc_logic 1 invld 32 } 
	{ s_axis_video1_TREADY sc_out sc_logic 1 inacc 32 } 
	{ HwReg_layerHeight_1_val_ap_vld sc_in sc_logic 1 invld 15 } 
	{ HwReg_layerWidth_1_val_ap_vld sc_in sc_logic 1 invld 13 } 
	{ HwReg_layerEnableFlag_1_val_ap_vld sc_in sc_logic 1 invld 7 } 
	{ HwReg_background_Y_R_val12_ap_vld sc_in sc_logic 1 invld 2 } 
	{ HwReg_background_U_G_val13_ap_vld sc_in sc_logic 1 invld 3 } 
	{ HwReg_background_V_B_val14_ap_vld sc_in sc_logic 1 invld 4 } 
	{ s_axis_video2_TVALID sc_in sc_logic 1 invld 39 } 
	{ s_axis_video2_TREADY sc_out sc_logic 1 inacc 39 } 
	{ HwReg_layerHeight_2_val_ap_vld sc_in sc_logic 1 invld 16 } 
	{ HwReg_layerWidth_2_val_ap_vld sc_in sc_logic 1 invld 14 } 
	{ HwReg_layerEnableFlag_2_val_ap_vld sc_in sc_logic 1 invld 8 } 
	{ m_axis_video_TVALID sc_out sc_logic 1 outvld 46 } 
	{ m_axis_video_TREADY sc_in sc_logic 1 outacc 46 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "HwReg_width_val", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "HwReg_width_val", "role": "default" }} , 
 	{ "name": "HwReg_height_val", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "HwReg_height_val", "role": "default" }} , 
 	{ "name": "HwReg_background_Y_R_val12", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "HwReg_background_Y_R_val12", "role": "default" }} , 
 	{ "name": "HwReg_background_U_G_val13", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "HwReg_background_U_G_val13", "role": "default" }} , 
 	{ "name": "HwReg_background_V_B_val14", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "HwReg_background_V_B_val14", "role": "default" }} , 
 	{ "name": "HwReg_layerEnable_val16", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "HwReg_layerEnable_val16", "role": "default" }} , 
 	{ "name": "HwReg_layerEnableFlag_0_val", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "HwReg_layerEnableFlag_0_val", "role": "default" }} , 
 	{ "name": "HwReg_layerEnableFlag_1_val", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "HwReg_layerEnableFlag_1_val", "role": "default" }} , 
 	{ "name": "HwReg_layerEnableFlag_2_val", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "HwReg_layerEnableFlag_2_val", "role": "default" }} , 
 	{ "name": "HwReg_layerStartX_1_val17", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "HwReg_layerStartX_1_val17", "role": "default" }} , 
 	{ "name": "HwReg_layerStartX_2_val18", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "HwReg_layerStartX_2_val18", "role": "default" }} , 
 	{ "name": "HwReg_layerStartY_1_val19", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "HwReg_layerStartY_1_val19", "role": "default" }} , 
 	{ "name": "HwReg_layerStartY_2_val20", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "HwReg_layerStartY_2_val20", "role": "default" }} , 
 	{ "name": "HwReg_layerWidth_1_val", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "HwReg_layerWidth_1_val", "role": "default" }} , 
 	{ "name": "HwReg_layerWidth_2_val", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "HwReg_layerWidth_2_val", "role": "default" }} , 
 	{ "name": "HwReg_layerHeight_1_val", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "HwReg_layerHeight_1_val", "role": "default" }} , 
 	{ "name": "HwReg_layerHeight_2_val", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "HwReg_layerHeight_2_val", "role": "default" }} , 
 	{ "name": "HwReg_layerScaleFactor_1_val25", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "HwReg_layerScaleFactor_1_val25", "role": "default" }} , 
 	{ "name": "HwReg_layerScaleFactor_2_val26", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "HwReg_layerScaleFactor_2_val26", "role": "default" }} , 
 	{ "name": "s_axis_video_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "s_axis_video_V_data_V", "role": "default" }} , 
 	{ "name": "s_axis_video_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "s_axis_video_V_keep_V", "role": "default" }} , 
 	{ "name": "s_axis_video_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "s_axis_video_V_strb_V", "role": "default" }} , 
 	{ "name": "s_axis_video_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axis_video_V_user_V", "role": "default" }} , 
 	{ "name": "s_axis_video_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axis_video_V_last_V", "role": "default" }} , 
 	{ "name": "s_axis_video_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axis_video_V_id_V", "role": "default" }} , 
 	{ "name": "s_axis_video_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axis_video_V_dest_V", "role": "default" }} , 
 	{ "name": "s_axis_video1_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "s_axis_video1_V_data_V", "role": "default" }} , 
 	{ "name": "s_axis_video1_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "s_axis_video1_V_keep_V", "role": "default" }} , 
 	{ "name": "s_axis_video1_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "s_axis_video1_V_strb_V", "role": "default" }} , 
 	{ "name": "s_axis_video1_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axis_video1_V_user_V", "role": "default" }} , 
 	{ "name": "s_axis_video1_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axis_video1_V_last_V", "role": "default" }} , 
 	{ "name": "s_axis_video1_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axis_video1_V_id_V", "role": "default" }} , 
 	{ "name": "s_axis_video1_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axis_video1_V_dest_V", "role": "default" }} , 
 	{ "name": "s_axis_video2_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "s_axis_video2_V_data_V", "role": "default" }} , 
 	{ "name": "s_axis_video2_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "s_axis_video2_V_keep_V", "role": "default" }} , 
 	{ "name": "s_axis_video2_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "s_axis_video2_V_strb_V", "role": "default" }} , 
 	{ "name": "s_axis_video2_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axis_video2_V_user_V", "role": "default" }} , 
 	{ "name": "s_axis_video2_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axis_video2_V_last_V", "role": "default" }} , 
 	{ "name": "s_axis_video2_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axis_video2_V_id_V", "role": "default" }} , 
 	{ "name": "s_axis_video2_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axis_video2_V_dest_V", "role": "default" }} , 
 	{ "name": "m_axis_video_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "m_axis_video_V_data_V", "role": "default" }} , 
 	{ "name": "m_axis_video_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "m_axis_video_V_keep_V", "role": "default" }} , 
 	{ "name": "m_axis_video_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "m_axis_video_V_strb_V", "role": "default" }} , 
 	{ "name": "m_axis_video_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_video_V_user_V", "role": "default" }} , 
 	{ "name": "m_axis_video_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_video_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_video_TID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_video_V_id_V", "role": "default" }} , 
 	{ "name": "m_axis_video_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_video_V_dest_V", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "HwReg_layerEnable_val16_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "HwReg_layerEnable_val16", "role": "ap_vld" }} , 
 	{ "name": "HwReg_layerStartX_1_val17_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "HwReg_layerStartX_1_val17", "role": "ap_vld" }} , 
 	{ "name": "HwReg_layerStartX_2_val18_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "HwReg_layerStartX_2_val18", "role": "ap_vld" }} , 
 	{ "name": "HwReg_layerStartY_1_val19_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "HwReg_layerStartY_1_val19", "role": "ap_vld" }} , 
 	{ "name": "HwReg_layerStartY_2_val20_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "HwReg_layerStartY_2_val20", "role": "ap_vld" }} , 
 	{ "name": "HwReg_layerScaleFactor_1_val25_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "HwReg_layerScaleFactor_1_val25", "role": "ap_vld" }} , 
 	{ "name": "HwReg_layerScaleFactor_2_val26_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "HwReg_layerScaleFactor_2_val26", "role": "ap_vld" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "s_axis_video_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "s_axis_video_V_dest_V", "role": "default" }} , 
 	{ "name": "s_axis_video_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "s_axis_video_V_dest_V", "role": "default" }} , 
 	{ "name": "HwReg_height_val_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "HwReg_height_val", "role": "ap_vld" }} , 
 	{ "name": "HwReg_width_val_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "HwReg_width_val", "role": "ap_vld" }} , 
 	{ "name": "HwReg_layerEnableFlag_0_val_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "HwReg_layerEnableFlag_0_val", "role": "ap_vld" }} , 
 	{ "name": "s_axis_video1_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "s_axis_video1_V_dest_V", "role": "default" }} , 
 	{ "name": "s_axis_video1_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "s_axis_video1_V_dest_V", "role": "default" }} , 
 	{ "name": "HwReg_layerHeight_1_val_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "HwReg_layerHeight_1_val", "role": "ap_vld" }} , 
 	{ "name": "HwReg_layerWidth_1_val_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "HwReg_layerWidth_1_val", "role": "ap_vld" }} , 
 	{ "name": "HwReg_layerEnableFlag_1_val_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "HwReg_layerEnableFlag_1_val", "role": "ap_vld" }} , 
 	{ "name": "HwReg_background_Y_R_val12_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "HwReg_background_Y_R_val12", "role": "ap_vld" }} , 
 	{ "name": "HwReg_background_U_G_val13_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "HwReg_background_U_G_val13", "role": "ap_vld" }} , 
 	{ "name": "HwReg_background_V_B_val14_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "HwReg_background_V_B_val14", "role": "ap_vld" }} , 
 	{ "name": "s_axis_video2_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "s_axis_video2_V_dest_V", "role": "default" }} , 
 	{ "name": "s_axis_video2_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "s_axis_video2_V_dest_V", "role": "default" }} , 
 	{ "name": "HwReg_layerHeight_2_val_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "HwReg_layerHeight_2_val", "role": "ap_vld" }} , 
 	{ "name": "HwReg_layerWidth_2_val_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "HwReg_layerWidth_2_val", "role": "ap_vld" }} , 
 	{ "name": "HwReg_layerEnableFlag_2_val_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "HwReg_layerEnableFlag_2_val", "role": "ap_vld" }} , 
 	{ "name": "m_axis_video_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "m_axis_video_V_dest_V", "role": "default" }} , 
 	{ "name": "m_axis_video_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "m_axis_video_V_dest_V", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "11", "14", "17", "20", "29", "32", "35", "38", "41", "44", "53", "56", "59", "62", "65", "68", "71", "74", "77", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132", "133", "134", "135", "136", "137", "138", "139", "140", "141", "142", "143", "144", "145", "146", "147", "148", "149", "150", "151", "152", "153", "154", "155", "156"],
		"CDFG" : "VMixHlsDataFlowFunction",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4430", "EstimateLatencyMax" : "8316006",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "entry_proc_U0"},
			{"ID" : "2", "Name" : "AXIvideo2MultiPixStream_1_U0"},
			{"ID" : "20", "Name" : "AXIvideo2MultiPixStream_5_U0"},
			{"ID" : "44", "Name" : "AXIvideo2MultiPixStream_U0"}],
		"OutputProcess" : [
			{"ID" : "77", "Name" : "MultiPixStream2AXIvideo_U0"}],
		"Port" : [
			{"Name" : "HwReg_width_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "HwReg_height_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "HwReg_background_Y_R_val12", "Type" : "None", "Direction" : "I"},
			{"Name" : "HwReg_background_U_G_val13", "Type" : "None", "Direction" : "I"},
			{"Name" : "HwReg_background_V_B_val14", "Type" : "None", "Direction" : "I"},
			{"Name" : "HwReg_layerEnable_val16", "Type" : "None", "Direction" : "I"},
			{"Name" : "HwReg_layerEnableFlag_0_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "HwReg_layerEnableFlag_1_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "HwReg_layerEnableFlag_2_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "HwReg_layerStartX_1_val17", "Type" : "None", "Direction" : "I"},
			{"Name" : "HwReg_layerStartX_2_val18", "Type" : "None", "Direction" : "I"},
			{"Name" : "HwReg_layerStartY_1_val19", "Type" : "None", "Direction" : "I"},
			{"Name" : "HwReg_layerStartY_2_val20", "Type" : "None", "Direction" : "I"},
			{"Name" : "HwReg_layerWidth_1_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "HwReg_layerWidth_2_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "HwReg_layerHeight_1_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "HwReg_layerHeight_2_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "HwReg_layerScaleFactor_1_val25", "Type" : "None", "Direction" : "I"},
			{"Name" : "HwReg_layerScaleFactor_2_val26", "Type" : "None", "Direction" : "I"},
			{"Name" : "s_axis_video_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "AXIvideo2MultiPixStream_1_U0", "Port" : "s_axis_video_V_data_V"}]},
			{"Name" : "s_axis_video_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "AXIvideo2MultiPixStream_1_U0", "Port" : "s_axis_video_V_keep_V"}]},
			{"Name" : "s_axis_video_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "AXIvideo2MultiPixStream_1_U0", "Port" : "s_axis_video_V_strb_V"}]},
			{"Name" : "s_axis_video_V_user_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "AXIvideo2MultiPixStream_1_U0", "Port" : "s_axis_video_V_user_V"}]},
			{"Name" : "s_axis_video_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "AXIvideo2MultiPixStream_1_U0", "Port" : "s_axis_video_V_last_V"}]},
			{"Name" : "s_axis_video_V_id_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "AXIvideo2MultiPixStream_1_U0", "Port" : "s_axis_video_V_id_V"}]},
			{"Name" : "s_axis_video_V_dest_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "AXIvideo2MultiPixStream_1_U0", "Port" : "s_axis_video_V_dest_V"}]},
			{"Name" : "s_axis_video1_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video1",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "AXIvideo2MultiPixStream_5_U0", "Port" : "s_axis_video1_V_data_V"}]},
			{"Name" : "s_axis_video1_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video1",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "AXIvideo2MultiPixStream_5_U0", "Port" : "s_axis_video1_V_keep_V"}]},
			{"Name" : "s_axis_video1_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video1",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "AXIvideo2MultiPixStream_5_U0", "Port" : "s_axis_video1_V_strb_V"}]},
			{"Name" : "s_axis_video1_V_user_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video1",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "AXIvideo2MultiPixStream_5_U0", "Port" : "s_axis_video1_V_user_V"}]},
			{"Name" : "s_axis_video1_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video1",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "AXIvideo2MultiPixStream_5_U0", "Port" : "s_axis_video1_V_last_V"}]},
			{"Name" : "s_axis_video1_V_id_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video1",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "AXIvideo2MultiPixStream_5_U0", "Port" : "s_axis_video1_V_id_V"}]},
			{"Name" : "s_axis_video1_V_dest_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video1",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "AXIvideo2MultiPixStream_5_U0", "Port" : "s_axis_video1_V_dest_V"}]},
			{"Name" : "s_axis_video2_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video2",
				"SubConnect" : [
					{"ID" : "44", "SubInstance" : "AXIvideo2MultiPixStream_U0", "Port" : "s_axis_video2_V_data_V"}]},
			{"Name" : "s_axis_video2_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video2",
				"SubConnect" : [
					{"ID" : "44", "SubInstance" : "AXIvideo2MultiPixStream_U0", "Port" : "s_axis_video2_V_keep_V"}]},
			{"Name" : "s_axis_video2_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video2",
				"SubConnect" : [
					{"ID" : "44", "SubInstance" : "AXIvideo2MultiPixStream_U0", "Port" : "s_axis_video2_V_strb_V"}]},
			{"Name" : "s_axis_video2_V_user_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video2",
				"SubConnect" : [
					{"ID" : "44", "SubInstance" : "AXIvideo2MultiPixStream_U0", "Port" : "s_axis_video2_V_user_V"}]},
			{"Name" : "s_axis_video2_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video2",
				"SubConnect" : [
					{"ID" : "44", "SubInstance" : "AXIvideo2MultiPixStream_U0", "Port" : "s_axis_video2_V_last_V"}]},
			{"Name" : "s_axis_video2_V_id_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video2",
				"SubConnect" : [
					{"ID" : "44", "SubInstance" : "AXIvideo2MultiPixStream_U0", "Port" : "s_axis_video2_V_id_V"}]},
			{"Name" : "s_axis_video2_V_dest_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video2",
				"SubConnect" : [
					{"ID" : "44", "SubInstance" : "AXIvideo2MultiPixStream_U0", "Port" : "s_axis_video2_V_dest_V"}]},
			{"Name" : "m_axis_video_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_video",
				"SubConnect" : [
					{"ID" : "77", "SubInstance" : "MultiPixStream2AXIvideo_U0", "Port" : "m_axis_video_V_data_V"}]},
			{"Name" : "m_axis_video_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_video",
				"SubConnect" : [
					{"ID" : "77", "SubInstance" : "MultiPixStream2AXIvideo_U0", "Port" : "m_axis_video_V_keep_V"}]},
			{"Name" : "m_axis_video_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_video",
				"SubConnect" : [
					{"ID" : "77", "SubInstance" : "MultiPixStream2AXIvideo_U0", "Port" : "m_axis_video_V_strb_V"}]},
			{"Name" : "m_axis_video_V_user_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_video",
				"SubConnect" : [
					{"ID" : "77", "SubInstance" : "MultiPixStream2AXIvideo_U0", "Port" : "m_axis_video_V_user_V"}]},
			{"Name" : "m_axis_video_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_video",
				"SubConnect" : [
					{"ID" : "77", "SubInstance" : "MultiPixStream2AXIvideo_U0", "Port" : "m_axis_video_V_last_V"}]},
			{"Name" : "m_axis_video_V_id_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_video",
				"SubConnect" : [
					{"ID" : "77", "SubInstance" : "MultiPixStream2AXIvideo_U0", "Port" : "m_axis_video_V_id_V"}]},
			{"Name" : "m_axis_video_V_dest_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_video",
				"SubConnect" : [
					{"ID" : "77", "SubInstance" : "MultiPixStream2AXIvideo_U0", "Port" : "m_axis_video_V_dest_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.entry_proc_U0", "Parent" : "0",
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
			{"Name" : "HwReg_layerEnable_val16_c12", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["41"], "DependentChan" : "82", "DependentChanDepth" : "7", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerEnable_val16_c12_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_layerStartX_1_val17", "Type" : "None", "Direction" : "I"},
			{"Name" : "HwReg_layerStartX_1_val17_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["41"], "DependentChan" : "83", "DependentChanDepth" : "7", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerStartX_1_val17_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_layerStartX_2_val18", "Type" : "None", "Direction" : "I"},
			{"Name" : "HwReg_layerStartX_2_val18_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["65"], "DependentChan" : "84", "DependentChanDepth" : "8", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerStartX_2_val18_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_layerStartY_1_val19", "Type" : "None", "Direction" : "I"},
			{"Name" : "HwReg_layerStartY_1_val19_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["41"], "DependentChan" : "85", "DependentChanDepth" : "7", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerStartY_1_val19_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_layerStartY_2_val20", "Type" : "None", "Direction" : "I"},
			{"Name" : "HwReg_layerStartY_2_val20_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["65"], "DependentChan" : "86", "DependentChanDepth" : "8", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerStartY_2_val20_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_layerScaleFactor_1_val25", "Type" : "None", "Direction" : "I"},
			{"Name" : "HwReg_layerScaleFactor_1_val25_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["41"], "DependentChan" : "87", "DependentChanDepth" : "7", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerScaleFactor_1_val25_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_layerScaleFactor_2_val26", "Type" : "None", "Direction" : "I"},
			{"Name" : "HwReg_layerScaleFactor_2_val26_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["65"], "DependentChan" : "88", "DependentChanDepth" : "8", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerScaleFactor_2_val26_c_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.AXIvideo2MultiPixStream_1_U0", "Parent" : "0", "Child" : ["3", "5", "7", "9", "10"],
		"CDFG" : "AXIvideo2MultiPixStream_1",
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
			{"Name" : "s_axis_video_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_AXIvideo2MultiPixStream_1_Pipeline_loop_width_fu_182", "Port" : "s_axis_video_V_data_V", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "7", "SubInstance" : "grp_AXIvideo2MultiPixStream_1_Pipeline_loop_wait_for_eol_fu_210", "Port" : "s_axis_video_V_data_V", "Inst_start_state" : "8", "Inst_end_state" : "9"},
					{"ID" : "3", "SubInstance" : "grp_AXIvideo2MultiPixStream_1_Pipeline_loop_wait_for_start_fu_162", "Port" : "s_axis_video_V_data_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "s_axis_video_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_AXIvideo2MultiPixStream_1_Pipeline_loop_width_fu_182", "Port" : "s_axis_video_V_keep_V", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "7", "SubInstance" : "grp_AXIvideo2MultiPixStream_1_Pipeline_loop_wait_for_eol_fu_210", "Port" : "s_axis_video_V_keep_V", "Inst_start_state" : "8", "Inst_end_state" : "9"},
					{"ID" : "3", "SubInstance" : "grp_AXIvideo2MultiPixStream_1_Pipeline_loop_wait_for_start_fu_162", "Port" : "s_axis_video_V_keep_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "s_axis_video_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_AXIvideo2MultiPixStream_1_Pipeline_loop_width_fu_182", "Port" : "s_axis_video_V_strb_V", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "7", "SubInstance" : "grp_AXIvideo2MultiPixStream_1_Pipeline_loop_wait_for_eol_fu_210", "Port" : "s_axis_video_V_strb_V", "Inst_start_state" : "8", "Inst_end_state" : "9"},
					{"ID" : "3", "SubInstance" : "grp_AXIvideo2MultiPixStream_1_Pipeline_loop_wait_for_start_fu_162", "Port" : "s_axis_video_V_strb_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "s_axis_video_V_user_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_AXIvideo2MultiPixStream_1_Pipeline_loop_width_fu_182", "Port" : "s_axis_video_V_user_V", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "7", "SubInstance" : "grp_AXIvideo2MultiPixStream_1_Pipeline_loop_wait_for_eol_fu_210", "Port" : "s_axis_video_V_user_V", "Inst_start_state" : "8", "Inst_end_state" : "9"},
					{"ID" : "3", "SubInstance" : "grp_AXIvideo2MultiPixStream_1_Pipeline_loop_wait_for_start_fu_162", "Port" : "s_axis_video_V_user_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "s_axis_video_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_AXIvideo2MultiPixStream_1_Pipeline_loop_width_fu_182", "Port" : "s_axis_video_V_last_V", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "7", "SubInstance" : "grp_AXIvideo2MultiPixStream_1_Pipeline_loop_wait_for_eol_fu_210", "Port" : "s_axis_video_V_last_V", "Inst_start_state" : "8", "Inst_end_state" : "9"},
					{"ID" : "3", "SubInstance" : "grp_AXIvideo2MultiPixStream_1_Pipeline_loop_wait_for_start_fu_162", "Port" : "s_axis_video_V_last_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "s_axis_video_V_id_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_AXIvideo2MultiPixStream_1_Pipeline_loop_width_fu_182", "Port" : "s_axis_video_V_id_V", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "7", "SubInstance" : "grp_AXIvideo2MultiPixStream_1_Pipeline_loop_wait_for_eol_fu_210", "Port" : "s_axis_video_V_id_V", "Inst_start_state" : "8", "Inst_end_state" : "9"},
					{"ID" : "3", "SubInstance" : "grp_AXIvideo2MultiPixStream_1_Pipeline_loop_wait_for_start_fu_162", "Port" : "s_axis_video_V_id_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "s_axis_video_V_dest_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_AXIvideo2MultiPixStream_1_Pipeline_loop_width_fu_182", "Port" : "s_axis_video_V_dest_V", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "7", "SubInstance" : "grp_AXIvideo2MultiPixStream_1_Pipeline_loop_wait_for_eol_fu_210", "Port" : "s_axis_video_V_dest_V", "Inst_start_state" : "8", "Inst_end_state" : "9"},
					{"ID" : "3", "SubInstance" : "grp_AXIvideo2MultiPixStream_1_Pipeline_loop_wait_for_start_fu_162", "Port" : "s_axis_video_V_dest_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "srcLayer0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["11"], "DependentChan" : "89", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_AXIvideo2MultiPixStream_1_Pipeline_loop_width_fu_182", "Port" : "srcLayer0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "Height", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "WidthIn", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "layerEnableFlag", "Type" : "None", "Direction" : "I"},
			{"Name" : "HwReg_layerEnableFlag_0_val_c14", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["11"], "DependentChan" : "90", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerEnableFlag_0_val_c14_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "loop_height", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "10", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state10"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state2", "ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.AXIvideo2MultiPixStream_1_U0.grp_AXIvideo2MultiPixStream_1_Pipeline_loop_wait_for_start_fu_162", "Parent" : "2", "Child" : ["4"],
		"CDFG" : "AXIvideo2MultiPixStream_1_Pipeline_loop_wait_for_start",
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
			{"Name" : "s_axis_video_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video",
				"BlockSignal" : [
					{"Name" : "s_axis_video_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_axis_video_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video"},
			{"Name" : "s_axis_video_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video"},
			{"Name" : "s_axis_video_V_user_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video"},
			{"Name" : "s_axis_video_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video"},
			{"Name" : "s_axis_video_V_id_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video"},
			{"Name" : "s_axis_video_V_dest_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video"},
			{"Name" : "axi_data_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "axi_last_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "loop_wait_for_start", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "4", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.AXIvideo2MultiPixStream_1_U0.grp_AXIvideo2MultiPixStream_1_Pipeline_loop_wait_for_start_fu_162.flow_control_loop_pipe_sequential_init_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.AXIvideo2MultiPixStream_1_U0.grp_AXIvideo2MultiPixStream_1_Pipeline_loop_width_fu_182", "Parent" : "2", "Child" : ["6"],
		"CDFG" : "AXIvideo2MultiPixStream_1_Pipeline_loop_width",
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
			{"Name" : "sof_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "axi_last_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "axi_data_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "cols", "Type" : "None", "Direction" : "I"},
			{"Name" : "srcLayer0", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "srcLayer0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_axis_video_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video",
				"BlockSignal" : [
					{"Name" : "s_axis_video_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_axis_video_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video"},
			{"Name" : "s_axis_video_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video"},
			{"Name" : "s_axis_video_V_user_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video"},
			{"Name" : "s_axis_video_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video"},
			{"Name" : "s_axis_video_V_id_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video"},
			{"Name" : "s_axis_video_V_dest_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video"},
			{"Name" : "eol_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "axi_data_11_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "loop_width", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.AXIvideo2MultiPixStream_1_U0.grp_AXIvideo2MultiPixStream_1_Pipeline_loop_width_fu_182.flow_control_loop_pipe_sequential_init_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.AXIvideo2MultiPixStream_1_U0.grp_AXIvideo2MultiPixStream_1_Pipeline_loop_wait_for_eol_fu_210", "Parent" : "2", "Child" : ["8"],
		"CDFG" : "AXIvideo2MultiPixStream_1_Pipeline_loop_wait_for_eol",
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
			{"Name" : "axi_data_11_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln3150", "Type" : "None", "Direction" : "I"},
			{"Name" : "eol_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "s_axis_video_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video",
				"BlockSignal" : [
					{"Name" : "s_axis_video_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_axis_video_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video"},
			{"Name" : "s_axis_video_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video"},
			{"Name" : "s_axis_video_V_user_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video"},
			{"Name" : "s_axis_video_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video"},
			{"Name" : "s_axis_video_V_id_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video"},
			{"Name" : "s_axis_video_V_dest_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video"},
			{"Name" : "axi_data_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "axi_last_4_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "loop_wait_for_eol", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.AXIvideo2MultiPixStream_1_U0.grp_AXIvideo2MultiPixStream_1_Pipeline_loop_wait_for_eol_fu_210.flow_control_loop_pipe_sequential_init_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.AXIvideo2MultiPixStream_1_U0.grp_reg_unsigned_short_1_fu_233", "Parent" : "2",
		"CDFG" : "reg_unsigned_short_1",
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
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.AXIvideo2MultiPixStream_1_U0.grp_reg_unsigned_short_1_fu_239", "Parent" : "2",
		"CDFG" : "reg_unsigned_short_1",
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
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.v_mix_420_to_422_false_2_U0", "Parent" : "0", "Child" : ["12"],
		"CDFG" : "v_mix_420_to_422_false_2",
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
		"StartSource" : "2",
		"StartFifo" : "start_for_v_mix_420_to_422_false_2_U0_U",
		"Port" : [
			{"Name" : "srcLayer0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "89", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_v_mix_420_to_422_false_2_Pipeline_VITIS_LOOP_76_2_fu_94", "Port" : "srcLayer0", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "height", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "width", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "layerEnableFlag", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "90", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "layerEnableFlag_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "srcLayer0Yuv422", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["14"], "DependentChan" : "91", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_v_mix_420_to_422_false_2_Pipeline_VITIS_LOOP_76_2_fu_94", "Port" : "srcLayer0Yuv422", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "HwReg_layerEnableFlag_0_val_c13", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["14"], "DependentChan" : "92", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerEnableFlag_0_val_c13_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_74_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.v_mix_420_to_422_false_2_U0.grp_v_mix_420_to_422_false_2_Pipeline_VITIS_LOOP_76_2_fu_94", "Parent" : "11", "Child" : ["13"],
		"CDFG" : "v_mix_420_to_422_false_2_Pipeline_VITIS_LOOP_76_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "66", "EstimateLatencyMax" : "3842",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "width", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "srcLayer0", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "srcLayer0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "srcLayer0Yuv422", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "srcLayer0Yuv422_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_76_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.v_mix_420_to_422_false_2_U0.grp_v_mix_420_to_422_false_2_Pipeline_VITIS_LOOP_76_2_fu_94.flow_control_loop_pipe_sequential_init_U", "Parent" : "12"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.v_mix_422_to_444_false_3_U0", "Parent" : "0", "Child" : ["15"],
		"CDFG" : "v_mix_422_to_444_false_3",
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
		"StartSource" : "11",
		"StartFifo" : "start_for_v_mix_422_to_444_false_3_U0_U",
		"Port" : [
			{"Name" : "srcLayer0Yuv422", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["11"], "DependentChan" : "91", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_v_mix_422_to_444_false_3_Pipeline_VITIS_LOOP_105_2_fu_94", "Port" : "srcLayer0Yuv422", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "height", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "width", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "layerEnableFlag", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["11"], "DependentChan" : "92", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "layerEnableFlag_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "srcLayer0Yuv", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["17"], "DependentChan" : "93", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_v_mix_422_to_444_false_3_Pipeline_VITIS_LOOP_105_2_fu_94", "Port" : "srcLayer0Yuv", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "HwReg_layerEnableFlag_0_val_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["17"], "DependentChan" : "94", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerEnableFlag_0_val_c_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_103_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.v_mix_422_to_444_false_3_U0.grp_v_mix_422_to_444_false_3_Pipeline_VITIS_LOOP_105_2_fu_94", "Parent" : "14", "Child" : ["16"],
		"CDFG" : "v_mix_422_to_444_false_3_Pipeline_VITIS_LOOP_105_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "66", "EstimateLatencyMax" : "3842",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "width", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "srcLayer0Yuv422", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "srcLayer0Yuv422_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "srcLayer0Yuv", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "srcLayer0Yuv_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_105_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.v_mix_422_to_444_false_3_U0.grp_v_mix_422_to_444_false_3_Pipeline_VITIS_LOOP_105_2_fu_94.flow_control_loop_pipe_sequential_init_U", "Parent" : "15"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.v_mix_yuv2rgb_false_4_U0", "Parent" : "0", "Child" : ["18"],
		"CDFG" : "v_mix_yuv2rgb_false_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
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
		"StartSource" : "14",
		"StartFifo" : "start_for_v_mix_yuv2rgb_false_4_U0_U",
		"Port" : [
			{"Name" : "srcLayer0Yuv", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["14"], "DependentChan" : "93", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_v_mix_yuv2rgb_false_4_Pipeline_VITIS_LOOP_897_2_fu_82", "Port" : "srcLayer0Yuv", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "height", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "width", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "layerEnableFlag", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["14"], "DependentChan" : "94", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "layerEnableFlag_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "outLayer0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["41"], "DependentChan" : "95", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_v_mix_yuv2rgb_false_4_Pipeline_VITIS_LOOP_897_2_fu_82", "Port" : "outLayer0", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_895_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.v_mix_yuv2rgb_false_4_U0.grp_v_mix_yuv2rgb_false_4_Pipeline_VITIS_LOOP_897_2_fu_82", "Parent" : "17", "Child" : ["19"],
		"CDFG" : "v_mix_yuv2rgb_false_4_Pipeline_VITIS_LOOP_897_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "66", "EstimateLatencyMax" : "3842",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "width", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "srcLayer0Yuv", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "srcLayer0Yuv_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "outLayer0", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "outLayer0_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_897_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.v_mix_yuv2rgb_false_4_U0.grp_v_mix_yuv2rgb_false_4_Pipeline_VITIS_LOOP_897_2_fu_82.flow_control_loop_pipe_sequential_init_U", "Parent" : "18"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.AXIvideo2MultiPixStream_5_U0", "Parent" : "0", "Child" : ["21", "23", "25", "27", "28"],
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
					{"ID" : "25", "SubInstance" : "grp_AXIvideo2MultiPixStream_5_Pipeline_loop_wait_for_eol_fu_228", "Port" : "s_axis_video1_V_data_V", "Inst_start_state" : "8", "Inst_end_state" : "9"},
					{"ID" : "21", "SubInstance" : "grp_AXIvideo2MultiPixStream_5_Pipeline_loop_wait_for_start_fu_180", "Port" : "s_axis_video1_V_data_V", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "23", "SubInstance" : "grp_AXIvideo2MultiPixStream_5_Pipeline_loop_width_fu_200", "Port" : "s_axis_video1_V_data_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "s_axis_video1_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video1",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "grp_AXIvideo2MultiPixStream_5_Pipeline_loop_wait_for_eol_fu_228", "Port" : "s_axis_video1_V_keep_V", "Inst_start_state" : "8", "Inst_end_state" : "9"},
					{"ID" : "21", "SubInstance" : "grp_AXIvideo2MultiPixStream_5_Pipeline_loop_wait_for_start_fu_180", "Port" : "s_axis_video1_V_keep_V", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "23", "SubInstance" : "grp_AXIvideo2MultiPixStream_5_Pipeline_loop_width_fu_200", "Port" : "s_axis_video1_V_keep_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "s_axis_video1_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video1",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "grp_AXIvideo2MultiPixStream_5_Pipeline_loop_wait_for_eol_fu_228", "Port" : "s_axis_video1_V_strb_V", "Inst_start_state" : "8", "Inst_end_state" : "9"},
					{"ID" : "21", "SubInstance" : "grp_AXIvideo2MultiPixStream_5_Pipeline_loop_wait_for_start_fu_180", "Port" : "s_axis_video1_V_strb_V", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "23", "SubInstance" : "grp_AXIvideo2MultiPixStream_5_Pipeline_loop_width_fu_200", "Port" : "s_axis_video1_V_strb_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "s_axis_video1_V_user_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video1",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "grp_AXIvideo2MultiPixStream_5_Pipeline_loop_wait_for_eol_fu_228", "Port" : "s_axis_video1_V_user_V", "Inst_start_state" : "8", "Inst_end_state" : "9"},
					{"ID" : "21", "SubInstance" : "grp_AXIvideo2MultiPixStream_5_Pipeline_loop_wait_for_start_fu_180", "Port" : "s_axis_video1_V_user_V", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "23", "SubInstance" : "grp_AXIvideo2MultiPixStream_5_Pipeline_loop_width_fu_200", "Port" : "s_axis_video1_V_user_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "s_axis_video1_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video1",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "grp_AXIvideo2MultiPixStream_5_Pipeline_loop_wait_for_eol_fu_228", "Port" : "s_axis_video1_V_last_V", "Inst_start_state" : "8", "Inst_end_state" : "9"},
					{"ID" : "21", "SubInstance" : "grp_AXIvideo2MultiPixStream_5_Pipeline_loop_wait_for_start_fu_180", "Port" : "s_axis_video1_V_last_V", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "23", "SubInstance" : "grp_AXIvideo2MultiPixStream_5_Pipeline_loop_width_fu_200", "Port" : "s_axis_video1_V_last_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "s_axis_video1_V_id_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video1",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "grp_AXIvideo2MultiPixStream_5_Pipeline_loop_wait_for_eol_fu_228", "Port" : "s_axis_video1_V_id_V", "Inst_start_state" : "8", "Inst_end_state" : "9"},
					{"ID" : "21", "SubInstance" : "grp_AXIvideo2MultiPixStream_5_Pipeline_loop_wait_for_start_fu_180", "Port" : "s_axis_video1_V_id_V", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "23", "SubInstance" : "grp_AXIvideo2MultiPixStream_5_Pipeline_loop_width_fu_200", "Port" : "s_axis_video1_V_id_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "s_axis_video1_V_dest_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video1",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "grp_AXIvideo2MultiPixStream_5_Pipeline_loop_wait_for_eol_fu_228", "Port" : "s_axis_video1_V_dest_V", "Inst_start_state" : "8", "Inst_end_state" : "9"},
					{"ID" : "21", "SubInstance" : "grp_AXIvideo2MultiPixStream_5_Pipeline_loop_wait_for_start_fu_180", "Port" : "s_axis_video1_V_dest_V", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "23", "SubInstance" : "grp_AXIvideo2MultiPixStream_5_Pipeline_loop_width_fu_200", "Port" : "s_axis_video1_V_dest_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "srcLayer1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["29"], "DependentChan" : "96", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_AXIvideo2MultiPixStream_5_Pipeline_loop_width_fu_200", "Port" : "srcLayer1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "HwReg_layerHeight_1_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "HwReg_layerWidth_1_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "HwReg_layerEnableFlag_1_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "HwReg_layerEnableFlag_1_val_c17", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["29"], "DependentChan" : "97", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerEnableFlag_1_val_c17_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_layerWidth_1_val_c24", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["29"], "DependentChan" : "98", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerWidth_1_val_c24_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_layerHeight_1_val_c32", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["29"], "DependentChan" : "99", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerHeight_1_val_c32_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "loop_height", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "10", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state10"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state2", "ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.AXIvideo2MultiPixStream_5_U0.grp_AXIvideo2MultiPixStream_5_Pipeline_loop_wait_for_start_fu_180", "Parent" : "20", "Child" : ["22"],
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
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.AXIvideo2MultiPixStream_5_U0.grp_AXIvideo2MultiPixStream_5_Pipeline_loop_wait_for_start_fu_180.flow_control_loop_pipe_sequential_init_U", "Parent" : "21"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.AXIvideo2MultiPixStream_5_U0.grp_AXIvideo2MultiPixStream_5_Pipeline_loop_width_fu_200", "Parent" : "20", "Child" : ["24"],
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
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.AXIvideo2MultiPixStream_5_U0.grp_AXIvideo2MultiPixStream_5_Pipeline_loop_width_fu_200.flow_control_loop_pipe_sequential_init_U", "Parent" : "23"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.AXIvideo2MultiPixStream_5_U0.grp_AXIvideo2MultiPixStream_5_Pipeline_loop_wait_for_eol_fu_228", "Parent" : "20", "Child" : ["26"],
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
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.AXIvideo2MultiPixStream_5_U0.grp_AXIvideo2MultiPixStream_5_Pipeline_loop_wait_for_eol_fu_228.flow_control_loop_pipe_sequential_init_U", "Parent" : "25"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.AXIvideo2MultiPixStream_5_U0.grp_reg_unsigned_short_s_fu_259", "Parent" : "20",
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
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.AXIvideo2MultiPixStream_5_U0.grp_reg_unsigned_short_s_fu_265", "Parent" : "20",
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
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.v_mix_420_to_422_false_6_U0", "Parent" : "0", "Child" : ["30"],
		"CDFG" : "v_mix_420_to_422_false_6",
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
		"StartSource" : "20",
		"StartFifo" : "start_for_v_mix_420_to_422_false_6_U0_U",
		"Port" : [
			{"Name" : "srcLayer1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["20"], "DependentChan" : "96", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "grp_v_mix_420_to_422_false_6_Pipeline_VITIS_LOOP_76_2_fu_110", "Port" : "srcLayer1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "HwReg_layerHeight_1_val", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["20"], "DependentChan" : "99", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerHeight_1_val_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_layerWidth_1_val", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["20"], "DependentChan" : "98", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerWidth_1_val_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_layerEnableFlag_1_val", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["20"], "DependentChan" : "97", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerEnableFlag_1_val_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "srcLayer1Yuv422", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["32"], "DependentChan" : "100", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "grp_v_mix_420_to_422_false_6_Pipeline_VITIS_LOOP_76_2_fu_110", "Port" : "srcLayer1Yuv422", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "HwReg_layerEnableFlag_1_val_c16", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["32"], "DependentChan" : "101", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerEnableFlag_1_val_c16_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_layerWidth_1_val_c23", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["32"], "DependentChan" : "102", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerWidth_1_val_c23_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_layerHeight_1_val_c31", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["32"], "DependentChan" : "103", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerHeight_1_val_c31_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_74_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.v_mix_420_to_422_false_6_U0.grp_v_mix_420_to_422_false_6_Pipeline_VITIS_LOOP_76_2_fu_110", "Parent" : "29", "Child" : ["31"],
		"CDFG" : "v_mix_420_to_422_false_6_Pipeline_VITIS_LOOP_76_2",
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
			{"Name" : "srcLayer1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "srcLayer1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "srcLayer1Yuv422", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "srcLayer1Yuv422_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_76_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.v_mix_420_to_422_false_6_U0.grp_v_mix_420_to_422_false_6_Pipeline_VITIS_LOOP_76_2_fu_110.flow_control_loop_pipe_sequential_init_U", "Parent" : "30"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.v_mix_422_to_444_false_7_U0", "Parent" : "0", "Child" : ["33"],
		"CDFG" : "v_mix_422_to_444_false_7",
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
		"StartSource" : "29",
		"StartFifo" : "start_for_v_mix_422_to_444_false_7_U0_U",
		"Port" : [
			{"Name" : "srcLayer1Yuv422", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["29"], "DependentChan" : "100", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "grp_v_mix_422_to_444_false_7_Pipeline_VITIS_LOOP_105_2_fu_110", "Port" : "srcLayer1Yuv422", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "HwReg_layerHeight_1_val", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["29"], "DependentChan" : "103", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerHeight_1_val_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_layerWidth_1_val", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["29"], "DependentChan" : "102", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerWidth_1_val_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_layerEnableFlag_1_val", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["29"], "DependentChan" : "101", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerEnableFlag_1_val_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "srcLayer1Yuv", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["35"], "DependentChan" : "104", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "grp_v_mix_422_to_444_false_7_Pipeline_VITIS_LOOP_105_2_fu_110", "Port" : "srcLayer1Yuv", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "HwReg_layerEnableFlag_1_val_c15", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["35"], "DependentChan" : "105", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerEnableFlag_1_val_c15_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_layerWidth_1_val_c22", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["35"], "DependentChan" : "106", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerWidth_1_val_c22_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_layerHeight_1_val_c30", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["35"], "DependentChan" : "107", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerHeight_1_val_c30_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_103_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.v_mix_422_to_444_false_7_U0.grp_v_mix_422_to_444_false_7_Pipeline_VITIS_LOOP_105_2_fu_110", "Parent" : "32", "Child" : ["34"],
		"CDFG" : "v_mix_422_to_444_false_7_Pipeline_VITIS_LOOP_105_2",
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
			{"Name" : "srcLayer1Yuv422", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "srcLayer1Yuv422_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "srcLayer1Yuv", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "srcLayer1Yuv_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_105_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.v_mix_422_to_444_false_7_U0.grp_v_mix_422_to_444_false_7_Pipeline_VITIS_LOOP_105_2_fu_110.flow_control_loop_pipe_sequential_init_U", "Parent" : "33"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.v_mix_yuv2rgb_false_8_U0", "Parent" : "0", "Child" : ["36"],
		"CDFG" : "v_mix_yuv2rgb_false_8",
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
		"StartSource" : "32",
		"StartFifo" : "start_for_v_mix_yuv2rgb_false_8_U0_U",
		"Port" : [
			{"Name" : "srcLayer1Yuv", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["32"], "DependentChan" : "104", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_v_mix_yuv2rgb_false_8_Pipeline_VITIS_LOOP_897_2_fu_110", "Port" : "srcLayer1Yuv", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "HwReg_layerHeight_1_val", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["32"], "DependentChan" : "107", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerHeight_1_val_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_layerWidth_1_val", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["32"], "DependentChan" : "106", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerWidth_1_val_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_layerEnableFlag_1_val", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["32"], "DependentChan" : "105", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerEnableFlag_1_val_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "srcLayer1Rgb", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["38"], "DependentChan" : "108", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_v_mix_yuv2rgb_false_8_Pipeline_VITIS_LOOP_897_2_fu_110", "Port" : "srcLayer1Rgb", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "HwReg_layerEnableFlag_1_val_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["38"], "DependentChan" : "109", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerEnableFlag_1_val_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_layerWidth_1_val_c21", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["38"], "DependentChan" : "110", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerWidth_1_val_c21_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_layerHeight_1_val_c29", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["38"], "DependentChan" : "111", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerHeight_1_val_c29_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_895_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.v_mix_yuv2rgb_false_8_U0.grp_v_mix_yuv2rgb_false_8_Pipeline_VITIS_LOOP_897_2_fu_110", "Parent" : "35", "Child" : ["37"],
		"CDFG" : "v_mix_yuv2rgb_false_8_Pipeline_VITIS_LOOP_897_2",
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
			{"Name" : "srcLayer1Yuv", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "srcLayer1Yuv_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "srcLayer1Rgb", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "srcLayer1Rgb_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_897_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.v_mix_yuv2rgb_false_8_U0.grp_v_mix_yuv2rgb_false_8_Pipeline_VITIS_LOOP_897_2_fu_110.flow_control_loop_pipe_sequential_init_U", "Parent" : "36"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.v_mix_upsample_false_9_U0", "Parent" : "0", "Child" : ["39"],
		"CDFG" : "v_mix_upsample_false_9",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
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
		"StartSource" : "35",
		"StartFifo" : "start_for_v_mix_upsample_false_9_U0_U",
		"Port" : [
			{"Name" : "srcLayer1Rgb", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["35"], "DependentChan" : "108", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_v_mix_upsample_false_9_Pipeline_VITIS_LOOP_107_2_fu_98", "Port" : "srcLayer1Rgb", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "HwReg_layerHeight_1_val", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["35"], "DependentChan" : "111", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerHeight_1_val_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_layerWidth_1_val", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["35"], "DependentChan" : "110", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerWidth_1_val_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_layerEnableFlag_1_val", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["35"], "DependentChan" : "109", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerEnableFlag_1_val_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "srcLayer1x", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["41"], "DependentChan" : "112", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_v_mix_upsample_false_9_Pipeline_VITIS_LOOP_107_2_fu_98", "Port" : "srcLayer1x", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "HwReg_layerWidth_1_val_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["41"], "DependentChan" : "113", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerWidth_1_val_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_layerHeight_1_val_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["41"], "DependentChan" : "114", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerHeight_1_val_c_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_105_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.v_mix_upsample_false_9_U0.grp_v_mix_upsample_false_9_Pipeline_VITIS_LOOP_107_2_fu_98", "Parent" : "38", "Child" : ["40"],
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
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.v_mix_upsample_false_9_U0.grp_v_mix_upsample_false_9_Pipeline_VITIS_LOOP_107_2_fu_98.flow_control_loop_pipe_sequential_init_U", "Parent" : "39"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.v_mix_core_alpha_false_false_U0", "Parent" : "0", "Child" : ["42"],
		"CDFG" : "v_mix_core_alpha_false_false_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
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
		"StartSource" : "1",
		"StartFifo" : "start_for_v_mix_core_alpha_false_false_U0_U",
		"Port" : [
			{"Name" : "outLayer0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["17"], "DependentChan" : "95", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_v_mix_core_alpha_false_false_Pipeline_VITIS_LOOP_465_3_fu_170", "Port" : "outLayer0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "srcLayer1x", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["38"], "DependentChan" : "112", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_v_mix_core_alpha_false_false_Pipeline_VITIS_LOOP_465_3_fu_170", "Port" : "srcLayer1x", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "HwReg_width_val", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "HwReg_height_val", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "HwReg_background_Y_R_val12", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "HwReg_background_U_G_val13", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "HwReg_background_V_B_val14", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "HwReg_layerEnable_val16", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "82", "DependentChanDepth" : "7", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerEnable_val16_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_layerStartX_1_val17", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "83", "DependentChanDepth" : "7", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerStartX_1_val17_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_layerStartY_1_val19", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "85", "DependentChanDepth" : "7", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerStartY_1_val19_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_layerWidth_1_val", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["38"], "DependentChan" : "113", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerWidth_1_val_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_layerHeight_1_val", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["38"], "DependentChan" : "114", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerHeight_1_val_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_layerScaleFactor_1_val25", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "87", "DependentChanDepth" : "7", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerScaleFactor_1_val25_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "outLayer1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["65"], "DependentChan" : "115", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_v_mix_core_alpha_false_false_Pipeline_VITIS_LOOP_465_3_fu_170", "Port" : "outLayer1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "HwReg_layerEnable_val16_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["65"], "DependentChan" : "116", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerEnable_val16_c_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_463_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.v_mix_core_alpha_false_false_U0.grp_v_mix_core_alpha_false_false_Pipeline_VITIS_LOOP_465_3_fu_170", "Parent" : "41", "Child" : ["43"],
		"CDFG" : "v_mix_core_alpha_false_false_Pipeline_VITIS_LOOP_465_3",
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
			{"Name" : "HwReg_width_val", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "outLayer1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "outLayer1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "srcLayer1x", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "srcLayer1x_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_background_V_B_val14", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "HwReg_background_U_G_val13", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "HwReg_background_Y_R_val12", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "layerStartX", "Type" : "None", "Direction" : "I"},
			{"Name" : "add71_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "notrhs_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "rev5", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_58", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "outLayer0", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "outLayer0_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_465_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "43", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.v_mix_core_alpha_false_false_U0.grp_v_mix_core_alpha_false_false_Pipeline_VITIS_LOOP_465_3_fu_170.flow_control_loop_pipe_sequential_init_U", "Parent" : "42"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.AXIvideo2MultiPixStream_U0", "Parent" : "0", "Child" : ["45", "47", "49", "51", "52"],
		"CDFG" : "AXIvideo2MultiPixStream",
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
			{"Name" : "s_axis_video2_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video2",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_200", "Port" : "s_axis_video2_V_data_V", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "45", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_180", "Port" : "s_axis_video2_V_data_V", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "49", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_228", "Port" : "s_axis_video2_V_data_V", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "s_axis_video2_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video2",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_200", "Port" : "s_axis_video2_V_keep_V", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "45", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_180", "Port" : "s_axis_video2_V_keep_V", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "49", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_228", "Port" : "s_axis_video2_V_keep_V", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "s_axis_video2_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video2",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_200", "Port" : "s_axis_video2_V_strb_V", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "45", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_180", "Port" : "s_axis_video2_V_strb_V", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "49", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_228", "Port" : "s_axis_video2_V_strb_V", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "s_axis_video2_V_user_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video2",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_200", "Port" : "s_axis_video2_V_user_V", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "45", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_180", "Port" : "s_axis_video2_V_user_V", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "49", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_228", "Port" : "s_axis_video2_V_user_V", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "s_axis_video2_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video2",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_200", "Port" : "s_axis_video2_V_last_V", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "45", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_180", "Port" : "s_axis_video2_V_last_V", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "49", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_228", "Port" : "s_axis_video2_V_last_V", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "s_axis_video2_V_id_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video2",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_200", "Port" : "s_axis_video2_V_id_V", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "45", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_180", "Port" : "s_axis_video2_V_id_V", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "49", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_228", "Port" : "s_axis_video2_V_id_V", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "s_axis_video2_V_dest_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video2",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_200", "Port" : "s_axis_video2_V_dest_V", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "45", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_180", "Port" : "s_axis_video2_V_dest_V", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "49", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_228", "Port" : "s_axis_video2_V_dest_V", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "srcLayer2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["53"], "DependentChan" : "117", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_200", "Port" : "srcLayer2", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "HwReg_layerHeight_2_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "HwReg_layerWidth_2_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "HwReg_layerEnableFlag_2_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "HwReg_layerEnableFlag_2_val_c20", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["53"], "DependentChan" : "118", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerEnableFlag_2_val_c20_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_layerWidth_2_val_c28", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["53"], "DependentChan" : "119", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerWidth_2_val_c28_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_layerHeight_2_val_c36", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["53"], "DependentChan" : "120", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerHeight_2_val_c36_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "loop_height", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "10", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state10"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state2", "ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.AXIvideo2MultiPixStream_U0.grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_180", "Parent" : "44", "Child" : ["46"],
		"CDFG" : "AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start",
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
			{"Name" : "s_axis_video2_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video2",
				"BlockSignal" : [
					{"Name" : "s_axis_video2_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_axis_video2_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video2"},
			{"Name" : "s_axis_video2_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video2"},
			{"Name" : "s_axis_video2_V_user_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video2"},
			{"Name" : "s_axis_video2_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video2"},
			{"Name" : "s_axis_video2_V_id_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video2"},
			{"Name" : "s_axis_video2_V_dest_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video2"},
			{"Name" : "axi_data_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "axi_last_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "loop_wait_for_start", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "46", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.AXIvideo2MultiPixStream_U0.grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_180.flow_control_loop_pipe_sequential_init_U", "Parent" : "45"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.AXIvideo2MultiPixStream_U0.grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_200", "Parent" : "44", "Child" : ["48"],
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
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.AXIvideo2MultiPixStream_U0.grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_200.flow_control_loop_pipe_sequential_init_U", "Parent" : "47"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.AXIvideo2MultiPixStream_U0.grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_228", "Parent" : "44", "Child" : ["50"],
		"CDFG" : "AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol",
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
			{"Name" : "axi_data_18_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln3150", "Type" : "None", "Direction" : "I"},
			{"Name" : "eol_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "s_axis_video2_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video2",
				"BlockSignal" : [
					{"Name" : "s_axis_video2_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_axis_video2_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video2"},
			{"Name" : "s_axis_video2_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video2"},
			{"Name" : "s_axis_video2_V_user_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video2"},
			{"Name" : "s_axis_video2_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video2"},
			{"Name" : "s_axis_video2_V_id_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video2"},
			{"Name" : "s_axis_video2_V_dest_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video2"},
			{"Name" : "axi_data_19_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "axi_last_23_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "loop_wait_for_eol", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.AXIvideo2MultiPixStream_U0.grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_228.flow_control_loop_pipe_sequential_init_U", "Parent" : "49"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.AXIvideo2MultiPixStream_U0.grp_reg_unsigned_short_s_fu_259", "Parent" : "44",
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
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.AXIvideo2MultiPixStream_U0.grp_reg_unsigned_short_s_fu_265", "Parent" : "44",
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
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.v_mix_420_to_422_false_U0", "Parent" : "0", "Child" : ["54"],
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
		"StartSource" : "44",
		"StartFifo" : "start_for_v_mix_420_to_422_false_U0_U",
		"Port" : [
			{"Name" : "srcLayer2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["44"], "DependentChan" : "117", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_v_mix_420_to_422_false_Pipeline_VITIS_LOOP_76_2_fu_110", "Port" : "srcLayer2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "HwReg_layerHeight_2_val", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["44"], "DependentChan" : "120", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerHeight_2_val_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_layerWidth_2_val", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["44"], "DependentChan" : "119", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerWidth_2_val_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_layerEnableFlag_2_val", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["44"], "DependentChan" : "118", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerEnableFlag_2_val_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "srcLayer2Yuv422", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["56"], "DependentChan" : "121", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_v_mix_420_to_422_false_Pipeline_VITIS_LOOP_76_2_fu_110", "Port" : "srcLayer2Yuv422", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "HwReg_layerEnableFlag_2_val_c19", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["56"], "DependentChan" : "122", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerEnableFlag_2_val_c19_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_layerWidth_2_val_c27", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["56"], "DependentChan" : "123", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerWidth_2_val_c27_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_layerHeight_2_val_c35", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["56"], "DependentChan" : "124", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerHeight_2_val_c35_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_74_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.v_mix_420_to_422_false_U0.grp_v_mix_420_to_422_false_Pipeline_VITIS_LOOP_76_2_fu_110", "Parent" : "53", "Child" : ["55"],
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
	{"ID" : "55", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.v_mix_420_to_422_false_U0.grp_v_mix_420_to_422_false_Pipeline_VITIS_LOOP_76_2_fu_110.flow_control_loop_pipe_sequential_init_U", "Parent" : "54"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.v_mix_422_to_444_false_U0", "Parent" : "0", "Child" : ["57"],
		"CDFG" : "v_mix_422_to_444_false_s",
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
		"StartSource" : "53",
		"StartFifo" : "start_for_v_mix_422_to_444_false_U0_U",
		"Port" : [
			{"Name" : "srcLayer2Yuv422", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["53"], "DependentChan" : "121", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "57", "SubInstance" : "grp_v_mix_422_to_444_false_Pipeline_VITIS_LOOP_105_2_fu_110", "Port" : "srcLayer2Yuv422", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "HwReg_layerHeight_2_val", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["53"], "DependentChan" : "124", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerHeight_2_val_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_layerWidth_2_val", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["53"], "DependentChan" : "123", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerWidth_2_val_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_layerEnableFlag_2_val", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["53"], "DependentChan" : "122", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerEnableFlag_2_val_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "srcLayer2Yuv", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["59"], "DependentChan" : "125", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "57", "SubInstance" : "grp_v_mix_422_to_444_false_Pipeline_VITIS_LOOP_105_2_fu_110", "Port" : "srcLayer2Yuv", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "HwReg_layerEnableFlag_2_val_c18", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["59"], "DependentChan" : "126", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerEnableFlag_2_val_c18_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_layerWidth_2_val_c26", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["59"], "DependentChan" : "127", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerWidth_2_val_c26_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_layerHeight_2_val_c34", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["59"], "DependentChan" : "128", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerHeight_2_val_c34_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_103_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.v_mix_422_to_444_false_U0.grp_v_mix_422_to_444_false_Pipeline_VITIS_LOOP_105_2_fu_110", "Parent" : "56", "Child" : ["58"],
		"CDFG" : "v_mix_422_to_444_false_Pipeline_VITIS_LOOP_105_2",
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
			{"Name" : "srcLayer2Yuv422", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "srcLayer2Yuv422_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "srcLayer2Yuv", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "srcLayer2Yuv_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_105_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "58", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.v_mix_422_to_444_false_U0.grp_v_mix_422_to_444_false_Pipeline_VITIS_LOOP_105_2_fu_110.flow_control_loop_pipe_sequential_init_U", "Parent" : "57"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.v_mix_yuv2rgb_false_U0", "Parent" : "0", "Child" : ["60"],
		"CDFG" : "v_mix_yuv2rgb_false_s",
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
		"StartSource" : "56",
		"StartFifo" : "start_for_v_mix_yuv2rgb_false_U0_U",
		"Port" : [
			{"Name" : "srcLayer2Yuv", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["56"], "DependentChan" : "125", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "60", "SubInstance" : "grp_v_mix_yuv2rgb_false_Pipeline_VITIS_LOOP_897_2_fu_110", "Port" : "srcLayer2Yuv", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "HwReg_layerHeight_2_val", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["56"], "DependentChan" : "128", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerHeight_2_val_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_layerWidth_2_val", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["56"], "DependentChan" : "127", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerWidth_2_val_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_layerEnableFlag_2_val", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["56"], "DependentChan" : "126", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerEnableFlag_2_val_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "srcLayer2Rgb", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["62"], "DependentChan" : "129", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "60", "SubInstance" : "grp_v_mix_yuv2rgb_false_Pipeline_VITIS_LOOP_897_2_fu_110", "Port" : "srcLayer2Rgb", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "HwReg_layerEnableFlag_2_val_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["62"], "DependentChan" : "130", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerEnableFlag_2_val_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_layerWidth_2_val_c25", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["62"], "DependentChan" : "131", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerWidth_2_val_c25_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_layerHeight_2_val_c33", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["62"], "DependentChan" : "132", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerHeight_2_val_c33_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_895_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.v_mix_yuv2rgb_false_U0.grp_v_mix_yuv2rgb_false_Pipeline_VITIS_LOOP_897_2_fu_110", "Parent" : "59", "Child" : ["61"],
		"CDFG" : "v_mix_yuv2rgb_false_Pipeline_VITIS_LOOP_897_2",
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
			{"Name" : "srcLayer2Yuv", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "srcLayer2Yuv_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "srcLayer2Rgb", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "srcLayer2Rgb_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_897_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "61", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.v_mix_yuv2rgb_false_U0.grp_v_mix_yuv2rgb_false_Pipeline_VITIS_LOOP_897_2_fu_110.flow_control_loop_pipe_sequential_init_U", "Parent" : "60"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.v_mix_upsample_false_U0", "Parent" : "0", "Child" : ["63"],
		"CDFG" : "v_mix_upsample_false_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
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
		"StartSource" : "59",
		"StartFifo" : "start_for_v_mix_upsample_false_U0_U",
		"Port" : [
			{"Name" : "srcLayer2Rgb", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["59"], "DependentChan" : "129", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "63", "SubInstance" : "grp_v_mix_upsample_false_Pipeline_VITIS_LOOP_107_2_fu_98", "Port" : "srcLayer2Rgb", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "HwReg_layerHeight_2_val", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["59"], "DependentChan" : "132", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerHeight_2_val_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_layerWidth_2_val", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["59"], "DependentChan" : "131", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerWidth_2_val_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_layerEnableFlag_2_val", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["59"], "DependentChan" : "130", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerEnableFlag_2_val_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "srcLayer2x", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["65"], "DependentChan" : "133", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "63", "SubInstance" : "grp_v_mix_upsample_false_Pipeline_VITIS_LOOP_107_2_fu_98", "Port" : "srcLayer2x", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "HwReg_layerWidth_2_val_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["65"], "DependentChan" : "134", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerWidth_2_val_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_layerHeight_2_val_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["65"], "DependentChan" : "135", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerHeight_2_val_c_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_105_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.v_mix_upsample_false_U0.grp_v_mix_upsample_false_Pipeline_VITIS_LOOP_107_2_fu_98", "Parent" : "62", "Child" : ["64"],
		"CDFG" : "v_mix_upsample_false_Pipeline_VITIS_LOOP_107_2",
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
			{"Name" : "srcLayer2Rgb", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "srcLayer2Rgb_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "srcLayer2x", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "srcLayer2x_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_107_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "64", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.v_mix_upsample_false_U0.grp_v_mix_upsample_false_Pipeline_VITIS_LOOP_107_2_fu_98.flow_control_loop_pipe_sequential_init_U", "Parent" : "63"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.v_mix_core_alpha_false_false_10_U0", "Parent" : "0", "Child" : ["66"],
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
		"StartSource" : "1",
		"StartFifo" : "start_for_v_mix_core_alpha_false_false_10_U0_U",
		"Port" : [
			{"Name" : "outLayer1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["41"], "DependentChan" : "115", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "66", "SubInstance" : "grp_v_mix_core_alpha_false_false_10_Pipeline_VITIS_LOOP_465_3_fu_132", "Port" : "outLayer1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "srcLayer2x", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["62"], "DependentChan" : "133", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "66", "SubInstance" : "grp_v_mix_core_alpha_false_false_10_Pipeline_VITIS_LOOP_465_3_fu_132", "Port" : "srcLayer2x", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "hwReg_0_val", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "hwReg_1_val", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "hwReg_6_val", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["41"], "DependentChan" : "116", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "hwReg_6_val_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "hwReg_9_2_val", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "84", "DependentChanDepth" : "8", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "hwReg_9_2_val_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "hwReg_10_2_val", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "86", "DependentChanDepth" : "8", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "hwReg_10_2_val_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "hwReg_11_2_val", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["62"], "DependentChan" : "134", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "hwReg_11_2_val_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "hwReg_12_2_val", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["62"], "DependentChan" : "135", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "hwReg_12_2_val_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "hwReg_13_2_val", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "88", "DependentChanDepth" : "8", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "hwReg_13_2_val_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "outLayer2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["68"], "DependentChan" : "136", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "66", "SubInstance" : "grp_v_mix_core_alpha_false_false_10_Pipeline_VITIS_LOOP_465_3_fu_132", "Port" : "outLayer2", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_463_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.v_mix_core_alpha_false_false_10_U0.grp_v_mix_core_alpha_false_false_10_Pipeline_VITIS_LOOP_465_3_fu_132", "Parent" : "65", "Child" : ["67"],
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
	{"ID" : "67", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.v_mix_core_alpha_false_false_10_U0.grp_v_mix_core_alpha_false_false_10_Pipeline_VITIS_LOOP_465_3_fu_132.flow_control_loop_pipe_sequential_init_U", "Parent" : "66"},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.v_mix_rgb2yuv_false_U0", "Parent" : "0", "Child" : ["69"],
		"CDFG" : "v_mix_rgb2yuv_false_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4353", "EstimateLatencyMax" : "8303041",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "65",
		"StartFifo" : "start_for_v_mix_rgb2yuv_false_U0_U",
		"Port" : [
			{"Name" : "outLayer2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["65"], "DependentChan" : "136", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "69", "SubInstance" : "grp_v_mix_rgb2yuv_false_Pipeline_VITIS_LOOP_1042_2_fu_62", "Port" : "outLayer2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "height_val", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "width_val", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "outYuv", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["71"], "DependentChan" : "137", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "69", "SubInstance" : "grp_v_mix_rgb2yuv_false_Pipeline_VITIS_LOOP_1042_2_fu_62", "Port" : "outYuv", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1040_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.v_mix_rgb2yuv_false_U0.grp_v_mix_rgb2yuv_false_Pipeline_VITIS_LOOP_1042_2_fu_62", "Parent" : "68", "Child" : ["70"],
		"CDFG" : "v_mix_rgb2yuv_false_Pipeline_VITIS_LOOP_1042_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "66", "EstimateLatencyMax" : "3842",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "width_val", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "outLayer2", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "outLayer2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "outYuv", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "outYuv_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1042_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "70", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.v_mix_rgb2yuv_false_U0.grp_v_mix_rgb2yuv_false_Pipeline_VITIS_LOOP_1042_2_fu_62.flow_control_loop_pipe_sequential_init_U", "Parent" : "69"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.v_mix_444_to_422_false_U0", "Parent" : "0", "Child" : ["72"],
		"CDFG" : "v_mix_444_to_422_false_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4353", "EstimateLatencyMax" : "8303041",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "68",
		"StartFifo" : "start_for_v_mix_444_to_422_false_U0_U",
		"Port" : [
			{"Name" : "outYuv", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["68"], "DependentChan" : "137", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_v_mix_444_to_422_false_Pipeline_VITIS_LOOP_718_2_fu_62", "Port" : "outYuv", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "height_val", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "width_val", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "out422", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["74"], "DependentChan" : "138", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_v_mix_444_to_422_false_Pipeline_VITIS_LOOP_718_2_fu_62", "Port" : "out422", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_716_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.v_mix_444_to_422_false_U0.grp_v_mix_444_to_422_false_Pipeline_VITIS_LOOP_718_2_fu_62", "Parent" : "71", "Child" : ["73"],
		"CDFG" : "v_mix_444_to_422_false_Pipeline_VITIS_LOOP_718_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "66", "EstimateLatencyMax" : "3842",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "width_val", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "outYuv", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "outYuv_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out422", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "out422_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_718_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "73", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.v_mix_444_to_422_false_U0.grp_v_mix_444_to_422_false_Pipeline_VITIS_LOOP_718_2_fu_62.flow_control_loop_pipe_sequential_init_U", "Parent" : "72"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.v_mix_422_to_420_false_U0", "Parent" : "0", "Child" : ["75"],
		"CDFG" : "v_mix_422_to_420_false_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4353", "EstimateLatencyMax" : "8303041",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "71",
		"StartFifo" : "start_for_v_mix_422_to_420_false_U0_U",
		"Port" : [
			{"Name" : "out422", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["71"], "DependentChan" : "138", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "grp_v_mix_422_to_420_false_Pipeline_VITIS_LOOP_508_2_fu_62", "Port" : "out422", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "height_val", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "width_val", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "out420", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["77"], "DependentChan" : "139", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "grp_v_mix_422_to_420_false_Pipeline_VITIS_LOOP_508_2_fu_62", "Port" : "out420", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_506_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.v_mix_422_to_420_false_U0.grp_v_mix_422_to_420_false_Pipeline_VITIS_LOOP_508_2_fu_62", "Parent" : "74", "Child" : ["76"],
		"CDFG" : "v_mix_422_to_420_false_Pipeline_VITIS_LOOP_508_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "66", "EstimateLatencyMax" : "3842",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "width_val", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "out422", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "out422_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out420", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "out420_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_508_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "76", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.v_mix_422_to_420_false_U0.grp_v_mix_422_to_420_false_Pipeline_VITIS_LOOP_508_2_fu_62.flow_control_loop_pipe_sequential_init_U", "Parent" : "75"},
	{"ID" : "77", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MultiPixStream2AXIvideo_U0", "Parent" : "0", "Child" : ["78", "80", "81"],
		"CDFG" : "MultiPixStream2AXIvideo",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "8305202",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "74",
		"StartFifo" : "start_for_MultiPixStream2AXIvideo_U0_U",
		"Port" : [
			{"Name" : "out420", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["74"], "DependentChan" : "139", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "78", "SubInstance" : "grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_3233_3_fu_98", "Port" : "out420", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "m_axis_video_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_video",
				"SubConnect" : [
					{"ID" : "78", "SubInstance" : "grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_3233_3_fu_98", "Port" : "m_axis_video_V_data_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "m_axis_video_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_video",
				"SubConnect" : [
					{"ID" : "78", "SubInstance" : "grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_3233_3_fu_98", "Port" : "m_axis_video_V_keep_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "m_axis_video_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_video",
				"SubConnect" : [
					{"ID" : "78", "SubInstance" : "grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_3233_3_fu_98", "Port" : "m_axis_video_V_strb_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "m_axis_video_V_user_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_video",
				"SubConnect" : [
					{"ID" : "78", "SubInstance" : "grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_3233_3_fu_98", "Port" : "m_axis_video_V_user_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "m_axis_video_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_video",
				"SubConnect" : [
					{"ID" : "78", "SubInstance" : "grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_3233_3_fu_98", "Port" : "m_axis_video_V_last_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "m_axis_video_V_id_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_video",
				"SubConnect" : [
					{"ID" : "78", "SubInstance" : "grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_3233_3_fu_98", "Port" : "m_axis_video_V_id_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "m_axis_video_V_dest_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_video",
				"SubConnect" : [
					{"ID" : "78", "SubInstance" : "grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_3233_3_fu_98", "Port" : "m_axis_video_V_dest_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "Height", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "WidthOut", "Type" : "Stable", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_3231_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiPixStream2AXIvideo_U0.grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_3233_3_fu_98", "Parent" : "77", "Child" : ["79"],
		"CDFG" : "MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_3233_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "3843",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "sof", "Type" : "None", "Direction" : "I"},
			{"Name" : "cols", "Type" : "None", "Direction" : "I"},
			{"Name" : "sub", "Type" : "None", "Direction" : "I"},
			{"Name" : "out420", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "out420_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "m_axis_video_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_video",
				"BlockSignal" : [
					{"Name" : "m_axis_video_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "m_axis_video_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_video"},
			{"Name" : "m_axis_video_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_video"},
			{"Name" : "m_axis_video_V_user_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_video"},
			{"Name" : "m_axis_video_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_video"},
			{"Name" : "m_axis_video_V_id_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_video"},
			{"Name" : "m_axis_video_V_dest_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_video"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_3233_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "79", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.MultiPixStream2AXIvideo_U0.grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_3233_3_fu_98.flow_control_loop_pipe_sequential_init_U", "Parent" : "78"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiPixStream2AXIvideo_U0.grp_reg_unsigned_short_1_fu_122", "Parent" : "77",
		"CDFG" : "reg_unsigned_short_1",
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
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.MultiPixStream2AXIvideo_U0.grp_reg_unsigned_short_1_fu_128", "Parent" : "77",
		"CDFG" : "reg_unsigned_short_1",
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
	{"ID" : "82", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.HwReg_layerEnable_val16_c12_U", "Parent" : "0"},
	{"ID" : "83", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.HwReg_layerStartX_1_val17_c_U", "Parent" : "0"},
	{"ID" : "84", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.HwReg_layerStartX_2_val18_c_U", "Parent" : "0"},
	{"ID" : "85", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.HwReg_layerStartY_1_val19_c_U", "Parent" : "0"},
	{"ID" : "86", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.HwReg_layerStartY_2_val20_c_U", "Parent" : "0"},
	{"ID" : "87", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.HwReg_layerScaleFactor_1_val25_c_U", "Parent" : "0"},
	{"ID" : "88", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.HwReg_layerScaleFactor_2_val26_c_U", "Parent" : "0"},
	{"ID" : "89", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.srcLayer0_U", "Parent" : "0"},
	{"ID" : "90", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.HwReg_layerEnableFlag_0_val_c14_U", "Parent" : "0"},
	{"ID" : "91", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.srcLayer0Yuv422_U", "Parent" : "0"},
	{"ID" : "92", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.HwReg_layerEnableFlag_0_val_c13_U", "Parent" : "0"},
	{"ID" : "93", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.srcLayer0Yuv_U", "Parent" : "0"},
	{"ID" : "94", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.HwReg_layerEnableFlag_0_val_c_U", "Parent" : "0"},
	{"ID" : "95", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.outLayer0_U", "Parent" : "0"},
	{"ID" : "96", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.srcLayer1_U", "Parent" : "0"},
	{"ID" : "97", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.HwReg_layerEnableFlag_1_val_c17_U", "Parent" : "0"},
	{"ID" : "98", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.HwReg_layerWidth_1_val_c24_U", "Parent" : "0"},
	{"ID" : "99", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.HwReg_layerHeight_1_val_c32_U", "Parent" : "0"},
	{"ID" : "100", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.srcLayer1Yuv422_U", "Parent" : "0"},
	{"ID" : "101", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.HwReg_layerEnableFlag_1_val_c16_U", "Parent" : "0"},
	{"ID" : "102", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.HwReg_layerWidth_1_val_c23_U", "Parent" : "0"},
	{"ID" : "103", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.HwReg_layerHeight_1_val_c31_U", "Parent" : "0"},
	{"ID" : "104", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.srcLayer1Yuv_U", "Parent" : "0"},
	{"ID" : "105", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.HwReg_layerEnableFlag_1_val_c15_U", "Parent" : "0"},
	{"ID" : "106", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.HwReg_layerWidth_1_val_c22_U", "Parent" : "0"},
	{"ID" : "107", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.HwReg_layerHeight_1_val_c30_U", "Parent" : "0"},
	{"ID" : "108", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.srcLayer1Rgb_U", "Parent" : "0"},
	{"ID" : "109", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.HwReg_layerEnableFlag_1_val_c_U", "Parent" : "0"},
	{"ID" : "110", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.HwReg_layerWidth_1_val_c21_U", "Parent" : "0"},
	{"ID" : "111", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.HwReg_layerHeight_1_val_c29_U", "Parent" : "0"},
	{"ID" : "112", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.srcLayer1x_U", "Parent" : "0"},
	{"ID" : "113", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.HwReg_layerWidth_1_val_c_U", "Parent" : "0"},
	{"ID" : "114", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.HwReg_layerHeight_1_val_c_U", "Parent" : "0"},
	{"ID" : "115", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.outLayer1_U", "Parent" : "0"},
	{"ID" : "116", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.HwReg_layerEnable_val16_c_U", "Parent" : "0"},
	{"ID" : "117", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.srcLayer2_U", "Parent" : "0"},
	{"ID" : "118", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.HwReg_layerEnableFlag_2_val_c20_U", "Parent" : "0"},
	{"ID" : "119", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.HwReg_layerWidth_2_val_c28_U", "Parent" : "0"},
	{"ID" : "120", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.HwReg_layerHeight_2_val_c36_U", "Parent" : "0"},
	{"ID" : "121", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.srcLayer2Yuv422_U", "Parent" : "0"},
	{"ID" : "122", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.HwReg_layerEnableFlag_2_val_c19_U", "Parent" : "0"},
	{"ID" : "123", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.HwReg_layerWidth_2_val_c27_U", "Parent" : "0"},
	{"ID" : "124", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.HwReg_layerHeight_2_val_c35_U", "Parent" : "0"},
	{"ID" : "125", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.srcLayer2Yuv_U", "Parent" : "0"},
	{"ID" : "126", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.HwReg_layerEnableFlag_2_val_c18_U", "Parent" : "0"},
	{"ID" : "127", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.HwReg_layerWidth_2_val_c26_U", "Parent" : "0"},
	{"ID" : "128", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.HwReg_layerHeight_2_val_c34_U", "Parent" : "0"},
	{"ID" : "129", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.srcLayer2Rgb_U", "Parent" : "0"},
	{"ID" : "130", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.HwReg_layerEnableFlag_2_val_c_U", "Parent" : "0"},
	{"ID" : "131", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.HwReg_layerWidth_2_val_c25_U", "Parent" : "0"},
	{"ID" : "132", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.HwReg_layerHeight_2_val_c33_U", "Parent" : "0"},
	{"ID" : "133", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.srcLayer2x_U", "Parent" : "0"},
	{"ID" : "134", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.HwReg_layerWidth_2_val_c_U", "Parent" : "0"},
	{"ID" : "135", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.HwReg_layerHeight_2_val_c_U", "Parent" : "0"},
	{"ID" : "136", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.outLayer2_U", "Parent" : "0"},
	{"ID" : "137", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.outYuv_U", "Parent" : "0"},
	{"ID" : "138", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out422_U", "Parent" : "0"},
	{"ID" : "139", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out420_U", "Parent" : "0"},
	{"ID" : "140", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_v_mix_core_alpha_false_false_U0_U", "Parent" : "0"},
	{"ID" : "141", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_v_mix_core_alpha_false_false_10_U0_U", "Parent" : "0"},
	{"ID" : "142", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_v_mix_420_to_422_false_2_U0_U", "Parent" : "0"},
	{"ID" : "143", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_v_mix_422_to_444_false_3_U0_U", "Parent" : "0"},
	{"ID" : "144", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_v_mix_yuv2rgb_false_4_U0_U", "Parent" : "0"},
	{"ID" : "145", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_v_mix_420_to_422_false_6_U0_U", "Parent" : "0"},
	{"ID" : "146", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_v_mix_422_to_444_false_7_U0_U", "Parent" : "0"},
	{"ID" : "147", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_v_mix_yuv2rgb_false_8_U0_U", "Parent" : "0"},
	{"ID" : "148", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_v_mix_upsample_false_9_U0_U", "Parent" : "0"},
	{"ID" : "149", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_v_mix_420_to_422_false_U0_U", "Parent" : "0"},
	{"ID" : "150", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_v_mix_422_to_444_false_U0_U", "Parent" : "0"},
	{"ID" : "151", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_v_mix_yuv2rgb_false_U0_U", "Parent" : "0"},
	{"ID" : "152", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_v_mix_upsample_false_U0_U", "Parent" : "0"},
	{"ID" : "153", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_v_mix_rgb2yuv_false_U0_U", "Parent" : "0"},
	{"ID" : "154", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_v_mix_444_to_422_false_U0_U", "Parent" : "0"},
	{"ID" : "155", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_v_mix_422_to_420_false_U0_U", "Parent" : "0"},
	{"ID" : "156", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_MultiPixStream2AXIvideo_U0_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	VMixHlsDataFlowFunction {
		HwReg_width_val {Type I LastRead 0 FirstWrite -1}
		HwReg_height_val {Type I LastRead 0 FirstWrite -1}
		HwReg_background_Y_R_val12 {Type I LastRead 10 FirstWrite -1}
		HwReg_background_U_G_val13 {Type I LastRead 10 FirstWrite -1}
		HwReg_background_V_B_val14 {Type I LastRead 10 FirstWrite -1}
		HwReg_layerEnable_val16 {Type I LastRead 0 FirstWrite -1}
		HwReg_layerEnableFlag_0_val {Type I LastRead 0 FirstWrite -1}
		HwReg_layerEnableFlag_1_val {Type I LastRead 0 FirstWrite -1}
		HwReg_layerEnableFlag_2_val {Type I LastRead 0 FirstWrite -1}
		HwReg_layerStartX_1_val17 {Type I LastRead 0 FirstWrite -1}
		HwReg_layerStartX_2_val18 {Type I LastRead 0 FirstWrite -1}
		HwReg_layerStartY_1_val19 {Type I LastRead 0 FirstWrite -1}
		HwReg_layerStartY_2_val20 {Type I LastRead 0 FirstWrite -1}
		HwReg_layerWidth_1_val {Type I LastRead 0 FirstWrite -1}
		HwReg_layerWidth_2_val {Type I LastRead 0 FirstWrite -1}
		HwReg_layerHeight_1_val {Type I LastRead 0 FirstWrite -1}
		HwReg_layerHeight_2_val {Type I LastRead 0 FirstWrite -1}
		HwReg_layerScaleFactor_1_val25 {Type I LastRead 0 FirstWrite -1}
		HwReg_layerScaleFactor_2_val26 {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_data_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_keep_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_strb_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_user_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_last_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_id_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_dest_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video1_V_data_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video1_V_keep_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video1_V_strb_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video1_V_user_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video1_V_last_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video1_V_id_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video1_V_dest_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video2_V_data_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video2_V_keep_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video2_V_strb_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video2_V_user_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video2_V_last_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video2_V_id_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video2_V_dest_V {Type I LastRead 0 FirstWrite -1}
		m_axis_video_V_data_V {Type O LastRead -1 FirstWrite 1}
		m_axis_video_V_keep_V {Type O LastRead -1 FirstWrite 1}
		m_axis_video_V_strb_V {Type O LastRead -1 FirstWrite 1}
		m_axis_video_V_user_V {Type O LastRead -1 FirstWrite 1}
		m_axis_video_V_last_V {Type O LastRead -1 FirstWrite 1}
		m_axis_video_V_id_V {Type O LastRead -1 FirstWrite 1}
		m_axis_video_V_dest_V {Type O LastRead -1 FirstWrite 1}}
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
		HwReg_layerScaleFactor_2_val26_c {Type O LastRead -1 FirstWrite 0}}
	AXIvideo2MultiPixStream_1 {
		s_axis_video_V_data_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_keep_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_strb_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_user_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_last_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_id_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_dest_V {Type I LastRead 0 FirstWrite -1}
		srcLayer0 {Type O LastRead -1 FirstWrite 1}
		Height {Type I LastRead 0 FirstWrite -1}
		WidthIn {Type I LastRead 0 FirstWrite -1}
		layerEnableFlag {Type I LastRead 0 FirstWrite -1}
		HwReg_layerEnableFlag_0_val_c14 {Type O LastRead -1 FirstWrite 0}}
	AXIvideo2MultiPixStream_1_Pipeline_loop_wait_for_start {
		s_axis_video_V_data_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_keep_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_strb_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_user_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_last_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_id_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_dest_V {Type I LastRead 0 FirstWrite -1}
		axi_data_out {Type O LastRead -1 FirstWrite 0}
		axi_last_out {Type O LastRead -1 FirstWrite 0}}
	AXIvideo2MultiPixStream_1_Pipeline_loop_width {
		sof_7 {Type I LastRead 0 FirstWrite -1}
		axi_last_12 {Type I LastRead 0 FirstWrite -1}
		axi_data_10 {Type I LastRead 0 FirstWrite -1}
		cols {Type I LastRead 0 FirstWrite -1}
		srcLayer0 {Type O LastRead -1 FirstWrite 1}
		s_axis_video_V_data_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_keep_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_strb_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_user_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_last_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_id_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_dest_V {Type I LastRead 0 FirstWrite -1}
		eol_out {Type O LastRead -1 FirstWrite 0}
		axi_data_11_out {Type O LastRead -1 FirstWrite 0}}
	AXIvideo2MultiPixStream_1_Pipeline_loop_wait_for_eol {
		axi_data_11_reload {Type I LastRead 0 FirstWrite -1}
		select_ln3150 {Type I LastRead 0 FirstWrite -1}
		eol_reload {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_data_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_keep_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_strb_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_user_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_last_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_id_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video_V_dest_V {Type I LastRead 0 FirstWrite -1}
		axi_data_4_out {Type O LastRead -1 FirstWrite 0}
		axi_last_4_out {Type O LastRead -1 FirstWrite 0}}
	reg_unsigned_short_1 {
		d {Type I LastRead 0 FirstWrite -1}}
	reg_unsigned_short_1 {
		d {Type I LastRead 0 FirstWrite -1}}
	v_mix_420_to_422_false_2 {
		srcLayer0 {Type I LastRead 1 FirstWrite -1}
		height {Type I LastRead 0 FirstWrite -1}
		width {Type I LastRead 0 FirstWrite -1}
		layerEnableFlag {Type I LastRead 0 FirstWrite -1}
		srcLayer0Yuv422 {Type O LastRead -1 FirstWrite 1}
		HwReg_layerEnableFlag_0_val_c13 {Type O LastRead -1 FirstWrite 0}}
	v_mix_420_to_422_false_2_Pipeline_VITIS_LOOP_76_2 {
		width {Type I LastRead 0 FirstWrite -1}
		srcLayer0 {Type I LastRead 1 FirstWrite -1}
		srcLayer0Yuv422 {Type O LastRead -1 FirstWrite 1}}
	v_mix_422_to_444_false_3 {
		srcLayer0Yuv422 {Type I LastRead 1 FirstWrite -1}
		height {Type I LastRead 0 FirstWrite -1}
		width {Type I LastRead 0 FirstWrite -1}
		layerEnableFlag {Type I LastRead 0 FirstWrite -1}
		srcLayer0Yuv {Type O LastRead -1 FirstWrite 1}
		HwReg_layerEnableFlag_0_val_c {Type O LastRead -1 FirstWrite 0}}
	v_mix_422_to_444_false_3_Pipeline_VITIS_LOOP_105_2 {
		width {Type I LastRead 0 FirstWrite -1}
		srcLayer0Yuv422 {Type I LastRead 1 FirstWrite -1}
		srcLayer0Yuv {Type O LastRead -1 FirstWrite 1}}
	v_mix_yuv2rgb_false_4 {
		srcLayer0Yuv {Type I LastRead 1 FirstWrite -1}
		height {Type I LastRead 0 FirstWrite -1}
		width {Type I LastRead 0 FirstWrite -1}
		layerEnableFlag {Type I LastRead 0 FirstWrite -1}
		outLayer0 {Type O LastRead -1 FirstWrite 1}}
	v_mix_yuv2rgb_false_4_Pipeline_VITIS_LOOP_897_2 {
		width {Type I LastRead 0 FirstWrite -1}
		srcLayer0Yuv {Type I LastRead 1 FirstWrite -1}
		outLayer0 {Type O LastRead -1 FirstWrite 1}}
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
		d {Type I LastRead 0 FirstWrite -1}}
	v_mix_420_to_422_false_6 {
		srcLayer1 {Type I LastRead 1 FirstWrite -1}
		HwReg_layerHeight_1_val {Type I LastRead 0 FirstWrite -1}
		HwReg_layerWidth_1_val {Type I LastRead 0 FirstWrite -1}
		HwReg_layerEnableFlag_1_val {Type I LastRead 0 FirstWrite -1}
		srcLayer1Yuv422 {Type O LastRead -1 FirstWrite 1}
		HwReg_layerEnableFlag_1_val_c16 {Type O LastRead -1 FirstWrite 0}
		HwReg_layerWidth_1_val_c23 {Type O LastRead -1 FirstWrite 0}
		HwReg_layerHeight_1_val_c31 {Type O LastRead -1 FirstWrite 0}}
	v_mix_420_to_422_false_6_Pipeline_VITIS_LOOP_76_2 {
		empty {Type I LastRead 0 FirstWrite -1}
		srcLayer1 {Type I LastRead 1 FirstWrite -1}
		srcLayer1Yuv422 {Type O LastRead -1 FirstWrite 1}}
	v_mix_422_to_444_false_7 {
		srcLayer1Yuv422 {Type I LastRead 1 FirstWrite -1}
		HwReg_layerHeight_1_val {Type I LastRead 0 FirstWrite -1}
		HwReg_layerWidth_1_val {Type I LastRead 0 FirstWrite -1}
		HwReg_layerEnableFlag_1_val {Type I LastRead 0 FirstWrite -1}
		srcLayer1Yuv {Type O LastRead -1 FirstWrite 1}
		HwReg_layerEnableFlag_1_val_c15 {Type O LastRead -1 FirstWrite 0}
		HwReg_layerWidth_1_val_c22 {Type O LastRead -1 FirstWrite 0}
		HwReg_layerHeight_1_val_c30 {Type O LastRead -1 FirstWrite 0}}
	v_mix_422_to_444_false_7_Pipeline_VITIS_LOOP_105_2 {
		empty {Type I LastRead 0 FirstWrite -1}
		srcLayer1Yuv422 {Type I LastRead 1 FirstWrite -1}
		srcLayer1Yuv {Type O LastRead -1 FirstWrite 1}}
	v_mix_yuv2rgb_false_8 {
		srcLayer1Yuv {Type I LastRead 1 FirstWrite -1}
		HwReg_layerHeight_1_val {Type I LastRead 0 FirstWrite -1}
		HwReg_layerWidth_1_val {Type I LastRead 0 FirstWrite -1}
		HwReg_layerEnableFlag_1_val {Type I LastRead 0 FirstWrite -1}
		srcLayer1Rgb {Type O LastRead -1 FirstWrite 1}
		HwReg_layerEnableFlag_1_val_c {Type O LastRead -1 FirstWrite 0}
		HwReg_layerWidth_1_val_c21 {Type O LastRead -1 FirstWrite 0}
		HwReg_layerHeight_1_val_c29 {Type O LastRead -1 FirstWrite 0}}
	v_mix_yuv2rgb_false_8_Pipeline_VITIS_LOOP_897_2 {
		empty {Type I LastRead 0 FirstWrite -1}
		srcLayer1Yuv {Type I LastRead 1 FirstWrite -1}
		srcLayer1Rgb {Type O LastRead -1 FirstWrite 1}}
	v_mix_upsample_false_9 {
		srcLayer1Rgb {Type I LastRead 1 FirstWrite -1}
		HwReg_layerHeight_1_val {Type I LastRead 0 FirstWrite -1}
		HwReg_layerWidth_1_val {Type I LastRead 0 FirstWrite -1}
		HwReg_layerEnableFlag_1_val {Type I LastRead 0 FirstWrite -1}
		srcLayer1x {Type O LastRead -1 FirstWrite 1}
		HwReg_layerWidth_1_val_c {Type O LastRead -1 FirstWrite 0}
		HwReg_layerHeight_1_val_c {Type O LastRead -1 FirstWrite 0}}
	v_mix_upsample_false_9_Pipeline_VITIS_LOOP_107_2 {
		empty {Type I LastRead 0 FirstWrite -1}
		srcLayer1Rgb {Type I LastRead 1 FirstWrite -1}
		srcLayer1x {Type O LastRead -1 FirstWrite 1}}
	v_mix_core_alpha_false_false_s {
		outLayer0 {Type I LastRead 1 FirstWrite -1}
		srcLayer1x {Type I LastRead 1 FirstWrite -1}
		HwReg_width_val {Type I LastRead 1 FirstWrite -1}
		HwReg_height_val {Type I LastRead 1 FirstWrite -1}
		HwReg_background_Y_R_val12 {Type I LastRead 1 FirstWrite -1}
		HwReg_background_U_G_val13 {Type I LastRead 1 FirstWrite -1}
		HwReg_background_V_B_val14 {Type I LastRead 1 FirstWrite -1}
		HwReg_layerEnable_val16 {Type I LastRead 0 FirstWrite -1}
		HwReg_layerStartX_1_val17 {Type I LastRead 0 FirstWrite -1}
		HwReg_layerStartY_1_val19 {Type I LastRead 0 FirstWrite -1}
		HwReg_layerWidth_1_val {Type I LastRead 0 FirstWrite -1}
		HwReg_layerHeight_1_val {Type I LastRead 0 FirstWrite -1}
		HwReg_layerScaleFactor_1_val25 {Type I LastRead 0 FirstWrite -1}
		outLayer1 {Type O LastRead -1 FirstWrite 2}
		HwReg_layerEnable_val16_c {Type O LastRead -1 FirstWrite 0}}
	v_mix_core_alpha_false_false_Pipeline_VITIS_LOOP_465_3 {
		HwReg_width_val {Type I LastRead 0 FirstWrite -1}
		outLayer1 {Type O LastRead -1 FirstWrite 2}
		srcLayer1x {Type I LastRead 1 FirstWrite -1}
		HwReg_background_V_B_val14 {Type I LastRead 0 FirstWrite -1}
		HwReg_background_U_G_val13 {Type I LastRead 0 FirstWrite -1}
		HwReg_background_Y_R_val12 {Type I LastRead 0 FirstWrite -1}
		layerStartX {Type I LastRead 0 FirstWrite -1}
		add71_i {Type I LastRead 0 FirstWrite -1}
		notrhs_i {Type I LastRead 0 FirstWrite -1}
		rev5 {Type I LastRead 0 FirstWrite -1}
		empty_58 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		outLayer0 {Type I LastRead 1 FirstWrite -1}}
	AXIvideo2MultiPixStream {
		s_axis_video2_V_data_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video2_V_keep_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video2_V_strb_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video2_V_user_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video2_V_last_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video2_V_id_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video2_V_dest_V {Type I LastRead 0 FirstWrite -1}
		srcLayer2 {Type O LastRead -1 FirstWrite 1}
		HwReg_layerHeight_2_val {Type I LastRead 0 FirstWrite -1}
		HwReg_layerWidth_2_val {Type I LastRead 0 FirstWrite -1}
		HwReg_layerEnableFlag_2_val {Type I LastRead 0 FirstWrite -1}
		HwReg_layerEnableFlag_2_val_c20 {Type O LastRead -1 FirstWrite 0}
		HwReg_layerWidth_2_val_c28 {Type O LastRead -1 FirstWrite 0}
		HwReg_layerHeight_2_val_c36 {Type O LastRead -1 FirstWrite 0}}
	AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start {
		s_axis_video2_V_data_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video2_V_keep_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video2_V_strb_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video2_V_user_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video2_V_last_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video2_V_id_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video2_V_dest_V {Type I LastRead 0 FirstWrite -1}
		axi_data_out {Type O LastRead -1 FirstWrite 0}
		axi_last_out {Type O LastRead -1 FirstWrite 0}}
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
		axi_data_18_out {Type O LastRead -1 FirstWrite 0}}
	AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol {
		axi_data_18_reload {Type I LastRead 0 FirstWrite -1}
		select_ln3150 {Type I LastRead 0 FirstWrite -1}
		eol_reload {Type I LastRead 0 FirstWrite -1}
		s_axis_video2_V_data_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video2_V_keep_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video2_V_strb_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video2_V_user_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video2_V_last_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video2_V_id_V {Type I LastRead 0 FirstWrite -1}
		s_axis_video2_V_dest_V {Type I LastRead 0 FirstWrite -1}
		axi_data_19_out {Type O LastRead -1 FirstWrite 0}
		axi_last_23_out {Type O LastRead -1 FirstWrite 0}}
	reg_unsigned_short_s {
		d {Type I LastRead 0 FirstWrite -1}}
	reg_unsigned_short_s {
		d {Type I LastRead 0 FirstWrite -1}}
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
		srcLayer2Yuv422 {Type O LastRead -1 FirstWrite 1}}
	v_mix_422_to_444_false_s {
		srcLayer2Yuv422 {Type I LastRead 1 FirstWrite -1}
		HwReg_layerHeight_2_val {Type I LastRead 0 FirstWrite -1}
		HwReg_layerWidth_2_val {Type I LastRead 0 FirstWrite -1}
		HwReg_layerEnableFlag_2_val {Type I LastRead 0 FirstWrite -1}
		srcLayer2Yuv {Type O LastRead -1 FirstWrite 1}
		HwReg_layerEnableFlag_2_val_c18 {Type O LastRead -1 FirstWrite 0}
		HwReg_layerWidth_2_val_c26 {Type O LastRead -1 FirstWrite 0}
		HwReg_layerHeight_2_val_c34 {Type O LastRead -1 FirstWrite 0}}
	v_mix_422_to_444_false_Pipeline_VITIS_LOOP_105_2 {
		empty {Type I LastRead 0 FirstWrite -1}
		srcLayer2Yuv422 {Type I LastRead 1 FirstWrite -1}
		srcLayer2Yuv {Type O LastRead -1 FirstWrite 1}}
	v_mix_yuv2rgb_false_s {
		srcLayer2Yuv {Type I LastRead 1 FirstWrite -1}
		HwReg_layerHeight_2_val {Type I LastRead 0 FirstWrite -1}
		HwReg_layerWidth_2_val {Type I LastRead 0 FirstWrite -1}
		HwReg_layerEnableFlag_2_val {Type I LastRead 0 FirstWrite -1}
		srcLayer2Rgb {Type O LastRead -1 FirstWrite 1}
		HwReg_layerEnableFlag_2_val_c {Type O LastRead -1 FirstWrite 0}
		HwReg_layerWidth_2_val_c25 {Type O LastRead -1 FirstWrite 0}
		HwReg_layerHeight_2_val_c33 {Type O LastRead -1 FirstWrite 0}}
	v_mix_yuv2rgb_false_Pipeline_VITIS_LOOP_897_2 {
		empty {Type I LastRead 0 FirstWrite -1}
		srcLayer2Yuv {Type I LastRead 1 FirstWrite -1}
		srcLayer2Rgb {Type O LastRead -1 FirstWrite 1}}
	v_mix_upsample_false_s {
		srcLayer2Rgb {Type I LastRead 1 FirstWrite -1}
		HwReg_layerHeight_2_val {Type I LastRead 0 FirstWrite -1}
		HwReg_layerWidth_2_val {Type I LastRead 0 FirstWrite -1}
		HwReg_layerEnableFlag_2_val {Type I LastRead 0 FirstWrite -1}
		srcLayer2x {Type O LastRead -1 FirstWrite 1}
		HwReg_layerWidth_2_val_c {Type O LastRead -1 FirstWrite 0}
		HwReg_layerHeight_2_val_c {Type O LastRead -1 FirstWrite 0}}
	v_mix_upsample_false_Pipeline_VITIS_LOOP_107_2 {
		empty {Type I LastRead 0 FirstWrite -1}
		srcLayer2Rgb {Type I LastRead 1 FirstWrite -1}
		srcLayer2x {Type O LastRead -1 FirstWrite 1}}
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
		empty {Type I LastRead 0 FirstWrite -1}}
	v_mix_rgb2yuv_false_s {
		outLayer2 {Type I LastRead 1 FirstWrite -1}
		height_val {Type I LastRead 0 FirstWrite -1}
		width_val {Type I LastRead 0 FirstWrite -1}
		outYuv {Type O LastRead -1 FirstWrite 1}}
	v_mix_rgb2yuv_false_Pipeline_VITIS_LOOP_1042_2 {
		width_val {Type I LastRead 0 FirstWrite -1}
		outLayer2 {Type I LastRead 1 FirstWrite -1}
		outYuv {Type O LastRead -1 FirstWrite 1}}
	v_mix_444_to_422_false_s {
		outYuv {Type I LastRead 1 FirstWrite -1}
		height_val {Type I LastRead 0 FirstWrite -1}
		width_val {Type I LastRead 0 FirstWrite -1}
		out422 {Type O LastRead -1 FirstWrite 1}}
	v_mix_444_to_422_false_Pipeline_VITIS_LOOP_718_2 {
		width_val {Type I LastRead 0 FirstWrite -1}
		outYuv {Type I LastRead 1 FirstWrite -1}
		out422 {Type O LastRead -1 FirstWrite 1}}
	v_mix_422_to_420_false_s {
		out422 {Type I LastRead 1 FirstWrite -1}
		height_val {Type I LastRead 0 FirstWrite -1}
		width_val {Type I LastRead 0 FirstWrite -1}
		out420 {Type O LastRead -1 FirstWrite 1}}
	v_mix_422_to_420_false_Pipeline_VITIS_LOOP_508_2 {
		width_val {Type I LastRead 0 FirstWrite -1}
		out422 {Type I LastRead 1 FirstWrite -1}
		out420 {Type O LastRead -1 FirstWrite 1}}
	MultiPixStream2AXIvideo {
		out420 {Type I LastRead 1 FirstWrite -1}
		m_axis_video_V_data_V {Type O LastRead -1 FirstWrite 1}
		m_axis_video_V_keep_V {Type O LastRead -1 FirstWrite 1}
		m_axis_video_V_strb_V {Type O LastRead -1 FirstWrite 1}
		m_axis_video_V_user_V {Type O LastRead -1 FirstWrite 1}
		m_axis_video_V_last_V {Type O LastRead -1 FirstWrite 1}
		m_axis_video_V_id_V {Type O LastRead -1 FirstWrite 1}
		m_axis_video_V_dest_V {Type O LastRead -1 FirstWrite 1}
		Height {Type I LastRead 0 FirstWrite -1}
		WidthOut {Type I LastRead 0 FirstWrite -1}}
	MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_3233_3 {
		sof {Type I LastRead 0 FirstWrite -1}
		cols {Type I LastRead 0 FirstWrite -1}
		sub {Type I LastRead 0 FirstWrite -1}
		out420 {Type I LastRead 1 FirstWrite -1}
		m_axis_video_V_data_V {Type O LastRead -1 FirstWrite 1}
		m_axis_video_V_keep_V {Type O LastRead -1 FirstWrite 1}
		m_axis_video_V_strb_V {Type O LastRead -1 FirstWrite 1}
		m_axis_video_V_user_V {Type O LastRead -1 FirstWrite 1}
		m_axis_video_V_last_V {Type O LastRead -1 FirstWrite 1}
		m_axis_video_V_id_V {Type O LastRead -1 FirstWrite 1}
		m_axis_video_V_dest_V {Type O LastRead -1 FirstWrite 1}}
	reg_unsigned_short_1 {
		d {Type I LastRead 0 FirstWrite -1}}
	reg_unsigned_short_1 {
		d {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4430", "Max" : "8316006"}
	, {"Name" : "Interval", "Min" : "4419", "Max" : "8316007"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	HwReg_width_val { ap_none {  { HwReg_width_val in_data 0 12 }  { HwReg_width_val_ap_vld in_vld 0 1 } } }
	HwReg_height_val { ap_none {  { HwReg_height_val in_data 0 12 }  { HwReg_height_val_ap_vld in_vld 0 1 } } }
	HwReg_background_Y_R_val12 { ap_none {  { HwReg_background_Y_R_val12 in_data 0 8 }  { HwReg_background_Y_R_val12_ap_vld in_vld 0 1 } } }
	HwReg_background_U_G_val13 { ap_none {  { HwReg_background_U_G_val13 in_data 0 8 }  { HwReg_background_U_G_val13_ap_vld in_vld 0 1 } } }
	HwReg_background_V_B_val14 { ap_none {  { HwReg_background_V_B_val14 in_data 0 8 }  { HwReg_background_V_B_val14_ap_vld in_vld 0 1 } } }
	HwReg_layerEnable_val16 { ap_none {  { HwReg_layerEnable_val16 in_data 0 3 }  { HwReg_layerEnable_val16_ap_vld in_vld 0 1 } } }
	HwReg_layerEnableFlag_0_val { ap_none {  { HwReg_layerEnableFlag_0_val in_data 0 1 }  { HwReg_layerEnableFlag_0_val_ap_vld in_vld 0 1 } } }
	HwReg_layerEnableFlag_1_val { ap_none {  { HwReg_layerEnableFlag_1_val in_data 0 1 }  { HwReg_layerEnableFlag_1_val_ap_vld in_vld 0 1 } } }
	HwReg_layerEnableFlag_2_val { ap_none {  { HwReg_layerEnableFlag_2_val in_data 0 1 }  { HwReg_layerEnableFlag_2_val_ap_vld in_vld 0 1 } } }
	HwReg_layerStartX_1_val17 { ap_none {  { HwReg_layerStartX_1_val17 in_data 0 16 }  { HwReg_layerStartX_1_val17_ap_vld in_vld 0 1 } } }
	HwReg_layerStartX_2_val18 { ap_none {  { HwReg_layerStartX_2_val18 in_data 0 16 }  { HwReg_layerStartX_2_val18_ap_vld in_vld 0 1 } } }
	HwReg_layerStartY_1_val19 { ap_none {  { HwReg_layerStartY_1_val19 in_data 0 16 }  { HwReg_layerStartY_1_val19_ap_vld in_vld 0 1 } } }
	HwReg_layerStartY_2_val20 { ap_none {  { HwReg_layerStartY_2_val20 in_data 0 16 }  { HwReg_layerStartY_2_val20_ap_vld in_vld 0 1 } } }
	HwReg_layerWidth_1_val { ap_none {  { HwReg_layerWidth_1_val in_data 0 16 }  { HwReg_layerWidth_1_val_ap_vld in_vld 0 1 } } }
	HwReg_layerWidth_2_val { ap_none {  { HwReg_layerWidth_2_val in_data 0 16 }  { HwReg_layerWidth_2_val_ap_vld in_vld 0 1 } } }
	HwReg_layerHeight_1_val { ap_none {  { HwReg_layerHeight_1_val in_data 0 16 }  { HwReg_layerHeight_1_val_ap_vld in_vld 0 1 } } }
	HwReg_layerHeight_2_val { ap_none {  { HwReg_layerHeight_2_val in_data 0 16 }  { HwReg_layerHeight_2_val_ap_vld in_vld 0 1 } } }
	HwReg_layerScaleFactor_1_val25 { ap_none {  { HwReg_layerScaleFactor_1_val25 in_data 0 8 }  { HwReg_layerScaleFactor_1_val25_ap_vld in_vld 0 1 } } }
	HwReg_layerScaleFactor_2_val26 { ap_none {  { HwReg_layerScaleFactor_2_val26 in_data 0 8 }  { HwReg_layerScaleFactor_2_val26_ap_vld in_vld 0 1 } } }
	s_axis_video_V_data_V { axis {  { s_axis_video_TDATA in_data 0 24 } } }
	s_axis_video_V_keep_V { axis {  { s_axis_video_TKEEP in_data 0 3 } } }
	s_axis_video_V_strb_V { axis {  { s_axis_video_TSTRB in_data 0 3 } } }
	s_axis_video_V_user_V { axis {  { s_axis_video_TUSER in_data 0 1 } } }
	s_axis_video_V_last_V { axis {  { s_axis_video_TLAST in_data 0 1 } } }
	s_axis_video_V_id_V { axis {  { s_axis_video_TID in_data 0 1 } } }
	s_axis_video_V_dest_V { axis {  { s_axis_video_TDEST in_data 0 1 }  { s_axis_video_TVALID in_vld 0 1 }  { s_axis_video_TREADY in_acc 1 1 } } }
	s_axis_video1_V_data_V { axis {  { s_axis_video1_TDATA in_data 0 24 } } }
	s_axis_video1_V_keep_V { axis {  { s_axis_video1_TKEEP in_data 0 3 } } }
	s_axis_video1_V_strb_V { axis {  { s_axis_video1_TSTRB in_data 0 3 } } }
	s_axis_video1_V_user_V { axis {  { s_axis_video1_TUSER in_data 0 1 } } }
	s_axis_video1_V_last_V { axis {  { s_axis_video1_TLAST in_data 0 1 } } }
	s_axis_video1_V_id_V { axis {  { s_axis_video1_TID in_data 0 1 } } }
	s_axis_video1_V_dest_V { axis {  { s_axis_video1_TDEST in_data 0 1 }  { s_axis_video1_TVALID in_vld 0 1 }  { s_axis_video1_TREADY in_acc 1 1 } } }
	s_axis_video2_V_data_V { axis {  { s_axis_video2_TDATA in_data 0 24 } } }
	s_axis_video2_V_keep_V { axis {  { s_axis_video2_TKEEP in_data 0 3 } } }
	s_axis_video2_V_strb_V { axis {  { s_axis_video2_TSTRB in_data 0 3 } } }
	s_axis_video2_V_user_V { axis {  { s_axis_video2_TUSER in_data 0 1 } } }
	s_axis_video2_V_last_V { axis {  { s_axis_video2_TLAST in_data 0 1 } } }
	s_axis_video2_V_id_V { axis {  { s_axis_video2_TID in_data 0 1 } } }
	s_axis_video2_V_dest_V { axis {  { s_axis_video2_TDEST in_data 0 1 }  { s_axis_video2_TVALID in_vld 0 1 }  { s_axis_video2_TREADY in_acc 1 1 } } }
	m_axis_video_V_data_V { axis {  { m_axis_video_TDATA out_data 1 24 } } }
	m_axis_video_V_keep_V { axis {  { m_axis_video_TKEEP out_data 1 3 } } }
	m_axis_video_V_strb_V { axis {  { m_axis_video_TSTRB out_data 1 3 } } }
	m_axis_video_V_user_V { axis {  { m_axis_video_TUSER out_data 1 1 } } }
	m_axis_video_V_last_V { axis {  { m_axis_video_TLAST out_data 1 1 } } }
	m_axis_video_V_id_V { axis {  { m_axis_video_TID out_data 1 1 } } }
	m_axis_video_V_dest_V { axis {  { m_axis_video_TDEST out_data 1 1 }  { m_axis_video_TVALID out_vld 1 1 }  { m_axis_video_TREADY out_acc 0 1 } } }
}
