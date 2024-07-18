set moduleName v_mix
set isTopModule 1
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
set C_modelName {v_mix}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict layerVideoFormat { MEM_WIDTH 8 MEM_SIZE 3 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
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
	{ width uint 16 regular {axi_slave 0 stable }  }
	{ height uint 16 regular {axi_slave 0 stable }  }
	{ video_format uint 16 unused {axi_slave 0 stable }  }
	{ background_Y_R uint 16 regular {axi_slave 0 stable }  }
	{ background_U_G uint 16 regular {axi_slave 0 stable }  }
	{ background_V_B uint 16 regular {axi_slave 0 stable }  }
	{ layerEnable int 32 regular {axi_slave 0}  }
	{ layerAlpha_0 int 16 unused {pointer 0 stable }  }
	{ layerAlpha_1 int 16 unused {axi_slave 0 stable }  }
	{ layerAlpha_2 int 16 unused {axi_slave 0 stable }  }
	{ layerStartX_0 int 16 regular {pointer 0}  }
	{ layerStartX_1 int 16 regular {axi_slave 0}  }
	{ layerStartX_2 int 16 regular {axi_slave 0}  }
	{ layerStartY_0 int 16 regular {pointer 0}  }
	{ layerStartY_1 int 16 regular {axi_slave 0}  }
	{ layerStartY_2 int 16 regular {axi_slave 0}  }
	{ layerWidth_0 int 16 regular {pointer 0 stable }  }
	{ layerWidth_1 int 16 regular {axi_slave 0 stable }  }
	{ layerWidth_2 int 16 regular {axi_slave 0 stable }  }
	{ layerHeight_0 int 16 regular {pointer 0 stable }  }
	{ layerHeight_1 int 16 regular {axi_slave 0 stable }  }
	{ layerHeight_2 int 16 regular {axi_slave 0 stable }  }
	{ layerScaleFactor_0 int 8 regular {pointer 0 stable }  }
	{ layerScaleFactor_1 int 8 regular {axi_slave 0 stable }  }
	{ layerScaleFactor_2 int 8 regular {axi_slave 0 stable }  }
	{ layerVideoFormat int 8 unused {array 3 { } 0 1 }  }
	{ layerStride_0 int 16 unused {pointer 0 stable }  }
	{ layerStride_1 int 16 unused {axi_slave 0 stable }  }
	{ layerStride_2 int 16 unused {axi_slave 0 stable }  }
	{ reserve uint 16 unused {axi_slave 0}  }
	{ K11 int 32 unused  }
	{ K12 int 32 unused  }
	{ K13 int 32 unused  }
	{ K21 int 32 unused  }
	{ K22 int 32 unused  }
	{ K23 int 32 unused  }
	{ K31 int 32 unused  }
	{ K32 int 32 unused  }
	{ K33 int 32 unused  }
	{ ROffset int 32 unused  }
	{ GOffset int 32 unused  }
	{ BOffset int 32 unused  }
	{ K11_2 int 32 unused  }
	{ K12_2 int 32 unused  }
	{ K13_2 int 32 unused  }
	{ K21_2 int 32 unused  }
	{ K22_2 int 32 unused  }
	{ K23_2 int 32 unused  }
	{ K31_2 int 32 unused  }
	{ K32_2 int 32 unused  }
	{ K33_2 int 32 unused  }
	{ YOffset int 32 unused  }
	{ UOffset int 32 unused  }
	{ VOffset int 32 unused  }
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
 	{ "Name" : "width", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "height", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":24}, "offset_end" : {"in":31}} , 
 	{ "Name" : "video_format", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":32}, "offset_end" : {"in":39}} , 
 	{ "Name" : "background_Y_R", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":40}, "offset_end" : {"in":47}} , 
 	{ "Name" : "background_U_G", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":48}, "offset_end" : {"in":55}} , 
 	{ "Name" : "background_V_B", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":56}, "offset_end" : {"in":63}} , 
 	{ "Name" : "layerEnable", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":64}, "offset_end" : {"in":71}} , 
 	{ "Name" : "layerAlpha_0", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "layerAlpha_1", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":512}, "offset_end" : {"in":519}} , 
 	{ "Name" : "layerAlpha_2", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":768}, "offset_end" : {"in":775}} , 
 	{ "Name" : "layerStartX_0", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "layerStartX_1", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":520}, "offset_end" : {"in":527}} , 
 	{ "Name" : "layerStartX_2", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":776}, "offset_end" : {"in":783}} , 
 	{ "Name" : "layerStartY_0", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "layerStartY_1", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":528}, "offset_end" : {"in":535}} , 
 	{ "Name" : "layerStartY_2", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":784}, "offset_end" : {"in":791}} , 
 	{ "Name" : "layerWidth_0", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "layerWidth_1", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":536}, "offset_end" : {"in":543}} , 
 	{ "Name" : "layerWidth_2", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":792}, "offset_end" : {"in":799}} , 
 	{ "Name" : "layerHeight_0", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "layerHeight_1", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":552}, "offset_end" : {"in":559}} , 
 	{ "Name" : "layerHeight_2", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":808}, "offset_end" : {"in":815}} , 
 	{ "Name" : "layerScaleFactor_0", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "layerScaleFactor_1", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":560}, "offset_end" : {"in":567}} , 
 	{ "Name" : "layerScaleFactor_2", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":816}, "offset_end" : {"in":823}} , 
 	{ "Name" : "layerVideoFormat", "interface" : "memory", "bitwidth" : 8, "direction" : "NONE"} , 
 	{ "Name" : "layerStride_0", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "layerStride_1", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":544}, "offset_end" : {"in":551}} , 
 	{ "Name" : "layerStride_2", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":800}, "offset_end" : {"in":807}} , 
 	{ "Name" : "reserve", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":4080}, "offset_end" : {"in":4087}} , 
 	{ "Name" : "K11", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "K12", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "K13", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "K21", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "K22", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "K23", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "K31", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "K32", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "K33", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ROffset", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "GOffset", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "BOffset", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "K11_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "K12_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "K13_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "K21_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "K22_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "K23_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "K31_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "K32_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "K33_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "YOffset", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "UOffset", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "VOffset", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "m_axis_video_V_data_V", "interface" : "axis", "bitwidth" : 24, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_video_V_keep_V", "interface" : "axis", "bitwidth" : 3, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_video_V_strb_V", "interface" : "axis", "bitwidth" : 3, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_video_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_video_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_video_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_video_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 97
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ s_axis_video_TDATA sc_in sc_lv 24 signal 0 } 
	{ s_axis_video_TVALID sc_in sc_logic 1 invld 6 } 
	{ s_axis_video_TREADY sc_out sc_logic 1 inacc 6 } 
	{ s_axis_video_TKEEP sc_in sc_lv 3 signal 1 } 
	{ s_axis_video_TSTRB sc_in sc_lv 3 signal 2 } 
	{ s_axis_video_TUSER sc_in sc_lv 1 signal 3 } 
	{ s_axis_video_TLAST sc_in sc_lv 1 signal 4 } 
	{ s_axis_video_TID sc_in sc_lv 1 signal 5 } 
	{ s_axis_video_TDEST sc_in sc_lv 1 signal 6 } 
	{ s_axis_video1_TDATA sc_in sc_lv 24 signal 7 } 
	{ s_axis_video1_TVALID sc_in sc_logic 1 invld 13 } 
	{ s_axis_video1_TREADY sc_out sc_logic 1 inacc 13 } 
	{ s_axis_video1_TKEEP sc_in sc_lv 3 signal 8 } 
	{ s_axis_video1_TSTRB sc_in sc_lv 3 signal 9 } 
	{ s_axis_video1_TUSER sc_in sc_lv 1 signal 10 } 
	{ s_axis_video1_TLAST sc_in sc_lv 1 signal 11 } 
	{ s_axis_video1_TID sc_in sc_lv 1 signal 12 } 
	{ s_axis_video1_TDEST sc_in sc_lv 1 signal 13 } 
	{ s_axis_video2_TDATA sc_in sc_lv 24 signal 14 } 
	{ s_axis_video2_TVALID sc_in sc_logic 1 invld 20 } 
	{ s_axis_video2_TREADY sc_out sc_logic 1 inacc 20 } 
	{ s_axis_video2_TKEEP sc_in sc_lv 3 signal 15 } 
	{ s_axis_video2_TSTRB sc_in sc_lv 3 signal 16 } 
	{ s_axis_video2_TUSER sc_in sc_lv 1 signal 17 } 
	{ s_axis_video2_TLAST sc_in sc_lv 1 signal 18 } 
	{ s_axis_video2_TID sc_in sc_lv 1 signal 19 } 
	{ s_axis_video2_TDEST sc_in sc_lv 1 signal 20 } 
	{ layerAlpha_0 sc_in sc_lv 16 signal 28 } 
	{ layerStartX_0 sc_in sc_lv 16 signal 31 } 
	{ layerStartY_0 sc_in sc_lv 16 signal 34 } 
	{ layerWidth_0 sc_in sc_lv 16 signal 37 } 
	{ layerHeight_0 sc_in sc_lv 16 signal 40 } 
	{ layerScaleFactor_0 sc_in sc_lv 8 signal 43 } 
	{ layerVideoFormat_address0 sc_out sc_lv 2 signal 46 } 
	{ layerVideoFormat_ce0 sc_out sc_logic 1 signal 46 } 
	{ layerVideoFormat_we0 sc_out sc_logic 1 signal 46 } 
	{ layerVideoFormat_d0 sc_out sc_lv 8 signal 46 } 
	{ layerVideoFormat_q0 sc_in sc_lv 8 signal 46 } 
	{ layerVideoFormat_address1 sc_out sc_lv 2 signal 46 } 
	{ layerVideoFormat_ce1 sc_out sc_logic 1 signal 46 } 
	{ layerVideoFormat_we1 sc_out sc_logic 1 signal 46 } 
	{ layerVideoFormat_d1 sc_out sc_lv 8 signal 46 } 
	{ layerVideoFormat_q1 sc_in sc_lv 8 signal 46 } 
	{ layerStride_0 sc_in sc_lv 16 signal 47 } 
	{ K11 sc_in sc_lv 32 signal 51 } 
	{ K12 sc_in sc_lv 32 signal 52 } 
	{ K13 sc_in sc_lv 32 signal 53 } 
	{ K21 sc_in sc_lv 32 signal 54 } 
	{ K22 sc_in sc_lv 32 signal 55 } 
	{ K23 sc_in sc_lv 32 signal 56 } 
	{ K31 sc_in sc_lv 32 signal 57 } 
	{ K32 sc_in sc_lv 32 signal 58 } 
	{ K33 sc_in sc_lv 32 signal 59 } 
	{ ROffset sc_in sc_lv 32 signal 60 } 
	{ GOffset sc_in sc_lv 32 signal 61 } 
	{ BOffset sc_in sc_lv 32 signal 62 } 
	{ K11_2 sc_in sc_lv 32 signal 63 } 
	{ K12_2 sc_in sc_lv 32 signal 64 } 
	{ K13_2 sc_in sc_lv 32 signal 65 } 
	{ K21_2 sc_in sc_lv 32 signal 66 } 
	{ K22_2 sc_in sc_lv 32 signal 67 } 
	{ K23_2 sc_in sc_lv 32 signal 68 } 
	{ K31_2 sc_in sc_lv 32 signal 69 } 
	{ K32_2 sc_in sc_lv 32 signal 70 } 
	{ K33_2 sc_in sc_lv 32 signal 71 } 
	{ YOffset sc_in sc_lv 32 signal 72 } 
	{ UOffset sc_in sc_lv 32 signal 73 } 
	{ VOffset sc_in sc_lv 32 signal 74 } 
	{ m_axis_video_TDATA sc_out sc_lv 24 signal 75 } 
	{ m_axis_video_TVALID sc_out sc_logic 1 outvld 81 } 
	{ m_axis_video_TREADY sc_in sc_logic 1 outacc 81 } 
	{ m_axis_video_TKEEP sc_out sc_lv 3 signal 76 } 
	{ m_axis_video_TSTRB sc_out sc_lv 3 signal 77 } 
	{ m_axis_video_TUSER sc_out sc_lv 1 signal 78 } 
	{ m_axis_video_TLAST sc_out sc_lv 1 signal 79 } 
	{ m_axis_video_TID sc_out sc_lv 1 signal 80 } 
	{ m_axis_video_TDEST sc_out sc_lv 1 signal 81 } 
	{ s_axi_CTRL_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_AWADDR sc_in sc_lv 12 signal -1 } 
	{ s_axi_CTRL_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_CTRL_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_CTRL_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_ARADDR sc_in sc_lv 12 signal -1 } 
	{ s_axi_CTRL_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_CTRL_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_CTRL_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_CTRL_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "CTRL", "role": "AWADDR" },"address":[{"name":"v_mix","role":"start","value":"0","valid_bit":"0"},{"name":"v_mix","role":"continue","value":"0","valid_bit":"4"},{"name":"v_mix","role":"auto_start","value":"0","valid_bit":"7"},{"name":"width","role":"data","value":"16"},{"name":"height","role":"data","value":"24"},{"name":"video_format","role":"data","value":"32"},{"name":"background_Y_R","role":"data","value":"40"},{"name":"background_U_G","role":"data","value":"48"},{"name":"background_V_B","role":"data","value":"56"},{"name":"layerEnable","role":"data","value":"64"},{"name":"layerAlpha_1","role":"data","value":"512"},{"name":"layerStartX_1","role":"data","value":"520"},{"name":"layerStartY_1","role":"data","value":"528"},{"name":"layerWidth_1","role":"data","value":"536"},{"name":"layerStride_1","role":"data","value":"544"},{"name":"layerHeight_1","role":"data","value":"552"},{"name":"layerScaleFactor_1","role":"data","value":"560"},{"name":"layerAlpha_2","role":"data","value":"768"},{"name":"layerStartX_2","role":"data","value":"776"},{"name":"layerStartY_2","role":"data","value":"784"},{"name":"layerWidth_2","role":"data","value":"792"},{"name":"layerStride_2","role":"data","value":"800"},{"name":"layerHeight_2","role":"data","value":"808"},{"name":"layerScaleFactor_2","role":"data","value":"816"},{"name":"reserve","role":"data","value":"4080"}] },
	{ "name": "s_axi_CTRL_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "AWVALID" } },
	{ "name": "s_axi_CTRL_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "AWREADY" } },
	{ "name": "s_axi_CTRL_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "WVALID" } },
	{ "name": "s_axi_CTRL_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "WREADY" } },
	{ "name": "s_axi_CTRL_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CTRL", "role": "WDATA" } },
	{ "name": "s_axi_CTRL_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CTRL", "role": "WSTRB" } },
	{ "name": "s_axi_CTRL_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "CTRL", "role": "ARADDR" },"address":[{"name":"v_mix","role":"start","value":"0","valid_bit":"0"},{"name":"v_mix","role":"done","value":"0","valid_bit":"1"},{"name":"v_mix","role":"idle","value":"0","valid_bit":"2"},{"name":"v_mix","role":"ready","value":"0","valid_bit":"3"},{"name":"v_mix","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_CTRL_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "ARVALID" } },
	{ "name": "s_axi_CTRL_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "ARREADY" } },
	{ "name": "s_axi_CTRL_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "RVALID" } },
	{ "name": "s_axi_CTRL_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "RREADY" } },
	{ "name": "s_axi_CTRL_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CTRL", "role": "RDATA" } },
	{ "name": "s_axi_CTRL_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CTRL", "role": "RRESP" } },
	{ "name": "s_axi_CTRL_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "BVALID" } },
	{ "name": "s_axi_CTRL_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "BREADY" } },
	{ "name": "s_axi_CTRL_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CTRL", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "s_axis_video_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "s_axis_video_V_data_V", "role": "default" }} , 
 	{ "name": "s_axis_video_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "s_axis_video_V_dest_V", "role": "default" }} , 
 	{ "name": "s_axis_video_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "s_axis_video_V_dest_V", "role": "default" }} , 
 	{ "name": "s_axis_video_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "s_axis_video_V_keep_V", "role": "default" }} , 
 	{ "name": "s_axis_video_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "s_axis_video_V_strb_V", "role": "default" }} , 
 	{ "name": "s_axis_video_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axis_video_V_user_V", "role": "default" }} , 
 	{ "name": "s_axis_video_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axis_video_V_last_V", "role": "default" }} , 
 	{ "name": "s_axis_video_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axis_video_V_id_V", "role": "default" }} , 
 	{ "name": "s_axis_video_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axis_video_V_dest_V", "role": "default" }} , 
 	{ "name": "s_axis_video1_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "s_axis_video1_V_data_V", "role": "default" }} , 
 	{ "name": "s_axis_video1_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "s_axis_video1_V_dest_V", "role": "default" }} , 
 	{ "name": "s_axis_video1_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "s_axis_video1_V_dest_V", "role": "default" }} , 
 	{ "name": "s_axis_video1_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "s_axis_video1_V_keep_V", "role": "default" }} , 
 	{ "name": "s_axis_video1_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "s_axis_video1_V_strb_V", "role": "default" }} , 
 	{ "name": "s_axis_video1_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axis_video1_V_user_V", "role": "default" }} , 
 	{ "name": "s_axis_video1_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axis_video1_V_last_V", "role": "default" }} , 
 	{ "name": "s_axis_video1_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axis_video1_V_id_V", "role": "default" }} , 
 	{ "name": "s_axis_video1_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axis_video1_V_dest_V", "role": "default" }} , 
 	{ "name": "s_axis_video2_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "s_axis_video2_V_data_V", "role": "default" }} , 
 	{ "name": "s_axis_video2_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "s_axis_video2_V_dest_V", "role": "default" }} , 
 	{ "name": "s_axis_video2_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "s_axis_video2_V_dest_V", "role": "default" }} , 
 	{ "name": "s_axis_video2_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "s_axis_video2_V_keep_V", "role": "default" }} , 
 	{ "name": "s_axis_video2_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "s_axis_video2_V_strb_V", "role": "default" }} , 
 	{ "name": "s_axis_video2_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axis_video2_V_user_V", "role": "default" }} , 
 	{ "name": "s_axis_video2_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axis_video2_V_last_V", "role": "default" }} , 
 	{ "name": "s_axis_video2_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axis_video2_V_id_V", "role": "default" }} , 
 	{ "name": "s_axis_video2_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axis_video2_V_dest_V", "role": "default" }} , 
 	{ "name": "layerAlpha_0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "layerAlpha_0", "role": "default" }} , 
 	{ "name": "layerStartX_0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "layerStartX_0", "role": "default" }} , 
 	{ "name": "layerStartY_0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "layerStartY_0", "role": "default" }} , 
 	{ "name": "layerWidth_0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "layerWidth_0", "role": "default" }} , 
 	{ "name": "layerHeight_0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "layerHeight_0", "role": "default" }} , 
 	{ "name": "layerScaleFactor_0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "layerScaleFactor_0", "role": "default" }} , 
 	{ "name": "layerVideoFormat_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "layerVideoFormat", "role": "address0" }} , 
 	{ "name": "layerVideoFormat_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layerVideoFormat", "role": "ce0" }} , 
 	{ "name": "layerVideoFormat_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layerVideoFormat", "role": "we0" }} , 
 	{ "name": "layerVideoFormat_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "layerVideoFormat", "role": "d0" }} , 
 	{ "name": "layerVideoFormat_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "layerVideoFormat", "role": "q0" }} , 
 	{ "name": "layerVideoFormat_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "layerVideoFormat", "role": "address1" }} , 
 	{ "name": "layerVideoFormat_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layerVideoFormat", "role": "ce1" }} , 
 	{ "name": "layerVideoFormat_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layerVideoFormat", "role": "we1" }} , 
 	{ "name": "layerVideoFormat_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "layerVideoFormat", "role": "d1" }} , 
 	{ "name": "layerVideoFormat_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "layerVideoFormat", "role": "q1" }} , 
 	{ "name": "layerStride_0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "layerStride_0", "role": "default" }} , 
 	{ "name": "K11", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "K11", "role": "default" }} , 
 	{ "name": "K12", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "K12", "role": "default" }} , 
 	{ "name": "K13", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "K13", "role": "default" }} , 
 	{ "name": "K21", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "K21", "role": "default" }} , 
 	{ "name": "K22", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "K22", "role": "default" }} , 
 	{ "name": "K23", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "K23", "role": "default" }} , 
 	{ "name": "K31", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "K31", "role": "default" }} , 
 	{ "name": "K32", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "K32", "role": "default" }} , 
 	{ "name": "K33", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "K33", "role": "default" }} , 
 	{ "name": "ROffset", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ROffset", "role": "default" }} , 
 	{ "name": "GOffset", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "GOffset", "role": "default" }} , 
 	{ "name": "BOffset", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "BOffset", "role": "default" }} , 
 	{ "name": "K11_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "K11_2", "role": "default" }} , 
 	{ "name": "K12_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "K12_2", "role": "default" }} , 
 	{ "name": "K13_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "K13_2", "role": "default" }} , 
 	{ "name": "K21_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "K21_2", "role": "default" }} , 
 	{ "name": "K22_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "K22_2", "role": "default" }} , 
 	{ "name": "K23_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "K23_2", "role": "default" }} , 
 	{ "name": "K31_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "K31_2", "role": "default" }} , 
 	{ "name": "K32_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "K32_2", "role": "default" }} , 
 	{ "name": "K33_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "K33_2", "role": "default" }} , 
 	{ "name": "YOffset", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "YOffset", "role": "default" }} , 
 	{ "name": "UOffset", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "UOffset", "role": "default" }} , 
 	{ "name": "VOffset", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "VOffset", "role": "default" }} , 
 	{ "name": "m_axis_video_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "m_axis_video_V_data_V", "role": "default" }} , 
 	{ "name": "m_axis_video_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "m_axis_video_V_dest_V", "role": "default" }} , 
 	{ "name": "m_axis_video_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "m_axis_video_V_dest_V", "role": "default" }} , 
 	{ "name": "m_axis_video_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "m_axis_video_V_keep_V", "role": "default" }} , 
 	{ "name": "m_axis_video_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "m_axis_video_V_strb_V", "role": "default" }} , 
 	{ "name": "m_axis_video_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_video_V_user_V", "role": "default" }} , 
 	{ "name": "m_axis_video_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_video_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_video_TID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_video_V_id_V", "role": "default" }} , 
 	{ "name": "m_axis_video_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_video_V_dest_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "158", "159", "160", "161", "162", "163", "164", "165", "166", "167", "168", "169", "170", "171", "172", "173", "174", "175", "176", "177", "178", "179", "180", "181", "182", "183", "184", "185", "186", "187", "188", "189", "190", "191"],
		"CDFG" : "v_mix",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4436", "EstimateLatencyMax" : "8316012",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "s_axis_video_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_VMixHlsDataFlowFunction_fu_476", "Port" : "s_axis_video_V_data_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "s_axis_video_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_VMixHlsDataFlowFunction_fu_476", "Port" : "s_axis_video_V_keep_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "s_axis_video_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_VMixHlsDataFlowFunction_fu_476", "Port" : "s_axis_video_V_strb_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "s_axis_video_V_user_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_VMixHlsDataFlowFunction_fu_476", "Port" : "s_axis_video_V_user_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "s_axis_video_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_VMixHlsDataFlowFunction_fu_476", "Port" : "s_axis_video_V_last_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "s_axis_video_V_id_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_VMixHlsDataFlowFunction_fu_476", "Port" : "s_axis_video_V_id_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "s_axis_video_V_dest_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_VMixHlsDataFlowFunction_fu_476", "Port" : "s_axis_video_V_dest_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "s_axis_video1_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video1",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_VMixHlsDataFlowFunction_fu_476", "Port" : "s_axis_video1_V_data_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "s_axis_video1_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video1",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_VMixHlsDataFlowFunction_fu_476", "Port" : "s_axis_video1_V_keep_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "s_axis_video1_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video1",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_VMixHlsDataFlowFunction_fu_476", "Port" : "s_axis_video1_V_strb_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "s_axis_video1_V_user_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video1",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_VMixHlsDataFlowFunction_fu_476", "Port" : "s_axis_video1_V_user_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "s_axis_video1_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video1",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_VMixHlsDataFlowFunction_fu_476", "Port" : "s_axis_video1_V_last_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "s_axis_video1_V_id_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video1",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_VMixHlsDataFlowFunction_fu_476", "Port" : "s_axis_video1_V_id_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "s_axis_video1_V_dest_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video1",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_VMixHlsDataFlowFunction_fu_476", "Port" : "s_axis_video1_V_dest_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "s_axis_video2_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video2",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_VMixHlsDataFlowFunction_fu_476", "Port" : "s_axis_video2_V_data_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "s_axis_video2_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video2",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_VMixHlsDataFlowFunction_fu_476", "Port" : "s_axis_video2_V_keep_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "s_axis_video2_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video2",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_VMixHlsDataFlowFunction_fu_476", "Port" : "s_axis_video2_V_strb_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "s_axis_video2_V_user_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video2",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_VMixHlsDataFlowFunction_fu_476", "Port" : "s_axis_video2_V_user_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "s_axis_video2_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video2",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_VMixHlsDataFlowFunction_fu_476", "Port" : "s_axis_video2_V_last_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "s_axis_video2_V_id_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video2",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_VMixHlsDataFlowFunction_fu_476", "Port" : "s_axis_video2_V_id_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "s_axis_video2_V_dest_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video2",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_VMixHlsDataFlowFunction_fu_476", "Port" : "s_axis_video2_V_dest_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "width", "Type" : "None", "Direction" : "I"},
			{"Name" : "height", "Type" : "None", "Direction" : "I"},
			{"Name" : "video_format", "Type" : "None", "Direction" : "I"},
			{"Name" : "background_Y_R", "Type" : "None", "Direction" : "I"},
			{"Name" : "background_U_G", "Type" : "None", "Direction" : "I"},
			{"Name" : "background_V_B", "Type" : "None", "Direction" : "I"},
			{"Name" : "layerEnable", "Type" : "None", "Direction" : "I"},
			{"Name" : "layerAlpha_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "layerAlpha_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "layerAlpha_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "layerStartX_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "layerStartX_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "layerStartX_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "layerStartY_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "layerStartY_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "layerStartY_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "layerWidth_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "layerWidth_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "layerWidth_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "layerHeight_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "layerHeight_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "layerHeight_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "layerScaleFactor_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "layerScaleFactor_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "layerScaleFactor_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "layerVideoFormat", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "layerStride_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "layerStride_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "layerStride_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "reserve", "Type" : "None", "Direction" : "I"},
			{"Name" : "K11", "Type" : "None", "Direction" : "I"},
			{"Name" : "K12", "Type" : "None", "Direction" : "I"},
			{"Name" : "K13", "Type" : "None", "Direction" : "I"},
			{"Name" : "K21", "Type" : "None", "Direction" : "I"},
			{"Name" : "K22", "Type" : "None", "Direction" : "I"},
			{"Name" : "K23", "Type" : "None", "Direction" : "I"},
			{"Name" : "K31", "Type" : "None", "Direction" : "I"},
			{"Name" : "K32", "Type" : "None", "Direction" : "I"},
			{"Name" : "K33", "Type" : "None", "Direction" : "I"},
			{"Name" : "ROffset", "Type" : "None", "Direction" : "I"},
			{"Name" : "GOffset", "Type" : "None", "Direction" : "I"},
			{"Name" : "BOffset", "Type" : "None", "Direction" : "I"},
			{"Name" : "K11_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "K12_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "K13_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "K21_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "K22_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "K23_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "K31_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "K32_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "K33_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "YOffset", "Type" : "None", "Direction" : "I"},
			{"Name" : "UOffset", "Type" : "None", "Direction" : "I"},
			{"Name" : "VOffset", "Type" : "None", "Direction" : "I"},
			{"Name" : "m_axis_video_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_video",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_VMixHlsDataFlowFunction_fu_476", "Port" : "m_axis_video_V_data_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "m_axis_video_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_video",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_VMixHlsDataFlowFunction_fu_476", "Port" : "m_axis_video_V_keep_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "m_axis_video_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_video",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_VMixHlsDataFlowFunction_fu_476", "Port" : "m_axis_video_V_strb_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "m_axis_video_V_user_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_video",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_VMixHlsDataFlowFunction_fu_476", "Port" : "m_axis_video_V_user_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "m_axis_video_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_video",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_VMixHlsDataFlowFunction_fu_476", "Port" : "m_axis_video_V_last_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "m_axis_video_V_id_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_video",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_VMixHlsDataFlowFunction_fu_476", "Port" : "m_axis_video_V_id_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "m_axis_video_V_dest_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_video",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_VMixHlsDataFlowFunction_fu_476", "Port" : "m_axis_video_V_dest_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_2626_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "5", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state2"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state2_blk"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476", "Parent" : "0", "Child" : ["2", "3", "12", "15", "18", "21", "30", "33", "36", "39", "42", "45", "54", "57", "60", "63", "66", "69", "72", "75", "78", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132", "133", "134", "135", "136", "137", "138", "139", "140", "141", "142", "143", "144", "145", "146", "147", "148", "149", "150", "151", "152", "153", "154", "155", "156", "157"],
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
			{"ID" : "2", "Name" : "entry_proc_U0"},
			{"ID" : "3", "Name" : "AXIvideo2MultiPixStream_1_U0"},
			{"ID" : "21", "Name" : "AXIvideo2MultiPixStream_5_U0"},
			{"ID" : "45", "Name" : "AXIvideo2MultiPixStream_U0"}],
		"OutputProcess" : [
			{"ID" : "78", "Name" : "MultiPixStream2AXIvideo_U0"}],
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
					{"ID" : "3", "SubInstance" : "AXIvideo2MultiPixStream_1_U0", "Port" : "s_axis_video_V_data_V"}]},
			{"Name" : "s_axis_video_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "AXIvideo2MultiPixStream_1_U0", "Port" : "s_axis_video_V_keep_V"}]},
			{"Name" : "s_axis_video_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "AXIvideo2MultiPixStream_1_U0", "Port" : "s_axis_video_V_strb_V"}]},
			{"Name" : "s_axis_video_V_user_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "AXIvideo2MultiPixStream_1_U0", "Port" : "s_axis_video_V_user_V"}]},
			{"Name" : "s_axis_video_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "AXIvideo2MultiPixStream_1_U0", "Port" : "s_axis_video_V_last_V"}]},
			{"Name" : "s_axis_video_V_id_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "AXIvideo2MultiPixStream_1_U0", "Port" : "s_axis_video_V_id_V"}]},
			{"Name" : "s_axis_video_V_dest_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "AXIvideo2MultiPixStream_1_U0", "Port" : "s_axis_video_V_dest_V"}]},
			{"Name" : "s_axis_video1_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video1",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "AXIvideo2MultiPixStream_5_U0", "Port" : "s_axis_video1_V_data_V"}]},
			{"Name" : "s_axis_video1_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video1",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "AXIvideo2MultiPixStream_5_U0", "Port" : "s_axis_video1_V_keep_V"}]},
			{"Name" : "s_axis_video1_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video1",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "AXIvideo2MultiPixStream_5_U0", "Port" : "s_axis_video1_V_strb_V"}]},
			{"Name" : "s_axis_video1_V_user_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video1",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "AXIvideo2MultiPixStream_5_U0", "Port" : "s_axis_video1_V_user_V"}]},
			{"Name" : "s_axis_video1_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video1",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "AXIvideo2MultiPixStream_5_U0", "Port" : "s_axis_video1_V_last_V"}]},
			{"Name" : "s_axis_video1_V_id_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video1",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "AXIvideo2MultiPixStream_5_U0", "Port" : "s_axis_video1_V_id_V"}]},
			{"Name" : "s_axis_video1_V_dest_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video1",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "AXIvideo2MultiPixStream_5_U0", "Port" : "s_axis_video1_V_dest_V"}]},
			{"Name" : "s_axis_video2_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video2",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "AXIvideo2MultiPixStream_U0", "Port" : "s_axis_video2_V_data_V"}]},
			{"Name" : "s_axis_video2_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video2",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "AXIvideo2MultiPixStream_U0", "Port" : "s_axis_video2_V_keep_V"}]},
			{"Name" : "s_axis_video2_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video2",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "AXIvideo2MultiPixStream_U0", "Port" : "s_axis_video2_V_strb_V"}]},
			{"Name" : "s_axis_video2_V_user_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video2",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "AXIvideo2MultiPixStream_U0", "Port" : "s_axis_video2_V_user_V"}]},
			{"Name" : "s_axis_video2_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video2",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "AXIvideo2MultiPixStream_U0", "Port" : "s_axis_video2_V_last_V"}]},
			{"Name" : "s_axis_video2_V_id_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video2",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "AXIvideo2MultiPixStream_U0", "Port" : "s_axis_video2_V_id_V"}]},
			{"Name" : "s_axis_video2_V_dest_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video2",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "AXIvideo2MultiPixStream_U0", "Port" : "s_axis_video2_V_dest_V"}]},
			{"Name" : "m_axis_video_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_video",
				"SubConnect" : [
					{"ID" : "78", "SubInstance" : "MultiPixStream2AXIvideo_U0", "Port" : "m_axis_video_V_data_V"}]},
			{"Name" : "m_axis_video_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_video",
				"SubConnect" : [
					{"ID" : "78", "SubInstance" : "MultiPixStream2AXIvideo_U0", "Port" : "m_axis_video_V_keep_V"}]},
			{"Name" : "m_axis_video_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_video",
				"SubConnect" : [
					{"ID" : "78", "SubInstance" : "MultiPixStream2AXIvideo_U0", "Port" : "m_axis_video_V_strb_V"}]},
			{"Name" : "m_axis_video_V_user_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_video",
				"SubConnect" : [
					{"ID" : "78", "SubInstance" : "MultiPixStream2AXIvideo_U0", "Port" : "m_axis_video_V_user_V"}]},
			{"Name" : "m_axis_video_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_video",
				"SubConnect" : [
					{"ID" : "78", "SubInstance" : "MultiPixStream2AXIvideo_U0", "Port" : "m_axis_video_V_last_V"}]},
			{"Name" : "m_axis_video_V_id_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_video",
				"SubConnect" : [
					{"ID" : "78", "SubInstance" : "MultiPixStream2AXIvideo_U0", "Port" : "m_axis_video_V_id_V"}]},
			{"Name" : "m_axis_video_V_dest_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_video",
				"SubConnect" : [
					{"ID" : "78", "SubInstance" : "MultiPixStream2AXIvideo_U0", "Port" : "m_axis_video_V_dest_V"}]}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.entry_proc_U0", "Parent" : "1",
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
			{"Name" : "HwReg_layerEnable_val16_c12", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["42"], "DependentChan" : "83", "DependentChanDepth" : "7", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerEnable_val16_c12_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_layerStartX_1_val17", "Type" : "None", "Direction" : "I"},
			{"Name" : "HwReg_layerStartX_1_val17_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["42"], "DependentChan" : "84", "DependentChanDepth" : "7", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerStartX_1_val17_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_layerStartX_2_val18", "Type" : "None", "Direction" : "I"},
			{"Name" : "HwReg_layerStartX_2_val18_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["66"], "DependentChan" : "85", "DependentChanDepth" : "8", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerStartX_2_val18_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_layerStartY_1_val19", "Type" : "None", "Direction" : "I"},
			{"Name" : "HwReg_layerStartY_1_val19_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["42"], "DependentChan" : "86", "DependentChanDepth" : "7", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerStartY_1_val19_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_layerStartY_2_val20", "Type" : "None", "Direction" : "I"},
			{"Name" : "HwReg_layerStartY_2_val20_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["66"], "DependentChan" : "87", "DependentChanDepth" : "8", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerStartY_2_val20_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_layerScaleFactor_1_val25", "Type" : "None", "Direction" : "I"},
			{"Name" : "HwReg_layerScaleFactor_1_val25_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["42"], "DependentChan" : "88", "DependentChanDepth" : "7", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerScaleFactor_1_val25_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_layerScaleFactor_2_val26", "Type" : "None", "Direction" : "I"},
			{"Name" : "HwReg_layerScaleFactor_2_val26_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["66"], "DependentChan" : "89", "DependentChanDepth" : "8", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerScaleFactor_2_val26_c_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.AXIvideo2MultiPixStream_1_U0", "Parent" : "1", "Child" : ["4", "6", "8", "10", "11"],
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
					{"ID" : "6", "SubInstance" : "grp_AXIvideo2MultiPixStream_1_Pipeline_loop_width_fu_182", "Port" : "s_axis_video_V_data_V", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "8", "SubInstance" : "grp_AXIvideo2MultiPixStream_1_Pipeline_loop_wait_for_eol_fu_210", "Port" : "s_axis_video_V_data_V", "Inst_start_state" : "8", "Inst_end_state" : "9"},
					{"ID" : "4", "SubInstance" : "grp_AXIvideo2MultiPixStream_1_Pipeline_loop_wait_for_start_fu_162", "Port" : "s_axis_video_V_data_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "s_axis_video_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_AXIvideo2MultiPixStream_1_Pipeline_loop_width_fu_182", "Port" : "s_axis_video_V_keep_V", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "8", "SubInstance" : "grp_AXIvideo2MultiPixStream_1_Pipeline_loop_wait_for_eol_fu_210", "Port" : "s_axis_video_V_keep_V", "Inst_start_state" : "8", "Inst_end_state" : "9"},
					{"ID" : "4", "SubInstance" : "grp_AXIvideo2MultiPixStream_1_Pipeline_loop_wait_for_start_fu_162", "Port" : "s_axis_video_V_keep_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "s_axis_video_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_AXIvideo2MultiPixStream_1_Pipeline_loop_width_fu_182", "Port" : "s_axis_video_V_strb_V", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "8", "SubInstance" : "grp_AXIvideo2MultiPixStream_1_Pipeline_loop_wait_for_eol_fu_210", "Port" : "s_axis_video_V_strb_V", "Inst_start_state" : "8", "Inst_end_state" : "9"},
					{"ID" : "4", "SubInstance" : "grp_AXIvideo2MultiPixStream_1_Pipeline_loop_wait_for_start_fu_162", "Port" : "s_axis_video_V_strb_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "s_axis_video_V_user_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_AXIvideo2MultiPixStream_1_Pipeline_loop_width_fu_182", "Port" : "s_axis_video_V_user_V", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "8", "SubInstance" : "grp_AXIvideo2MultiPixStream_1_Pipeline_loop_wait_for_eol_fu_210", "Port" : "s_axis_video_V_user_V", "Inst_start_state" : "8", "Inst_end_state" : "9"},
					{"ID" : "4", "SubInstance" : "grp_AXIvideo2MultiPixStream_1_Pipeline_loop_wait_for_start_fu_162", "Port" : "s_axis_video_V_user_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "s_axis_video_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_AXIvideo2MultiPixStream_1_Pipeline_loop_width_fu_182", "Port" : "s_axis_video_V_last_V", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "8", "SubInstance" : "grp_AXIvideo2MultiPixStream_1_Pipeline_loop_wait_for_eol_fu_210", "Port" : "s_axis_video_V_last_V", "Inst_start_state" : "8", "Inst_end_state" : "9"},
					{"ID" : "4", "SubInstance" : "grp_AXIvideo2MultiPixStream_1_Pipeline_loop_wait_for_start_fu_162", "Port" : "s_axis_video_V_last_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "s_axis_video_V_id_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_AXIvideo2MultiPixStream_1_Pipeline_loop_width_fu_182", "Port" : "s_axis_video_V_id_V", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "8", "SubInstance" : "grp_AXIvideo2MultiPixStream_1_Pipeline_loop_wait_for_eol_fu_210", "Port" : "s_axis_video_V_id_V", "Inst_start_state" : "8", "Inst_end_state" : "9"},
					{"ID" : "4", "SubInstance" : "grp_AXIvideo2MultiPixStream_1_Pipeline_loop_wait_for_start_fu_162", "Port" : "s_axis_video_V_id_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "s_axis_video_V_dest_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_AXIvideo2MultiPixStream_1_Pipeline_loop_width_fu_182", "Port" : "s_axis_video_V_dest_V", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "8", "SubInstance" : "grp_AXIvideo2MultiPixStream_1_Pipeline_loop_wait_for_eol_fu_210", "Port" : "s_axis_video_V_dest_V", "Inst_start_state" : "8", "Inst_end_state" : "9"},
					{"ID" : "4", "SubInstance" : "grp_AXIvideo2MultiPixStream_1_Pipeline_loop_wait_for_start_fu_162", "Port" : "s_axis_video_V_dest_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "srcLayer0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["12"], "DependentChan" : "90", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_AXIvideo2MultiPixStream_1_Pipeline_loop_width_fu_182", "Port" : "srcLayer0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "Height", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "WidthIn", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "layerEnableFlag", "Type" : "None", "Direction" : "I"},
			{"Name" : "HwReg_layerEnableFlag_0_val_c14", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["12"], "DependentChan" : "91", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerEnableFlag_0_val_c14_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "loop_height", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "10", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state10"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state2", "ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "4", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.AXIvideo2MultiPixStream_1_U0.grp_AXIvideo2MultiPixStream_1_Pipeline_loop_wait_for_start_fu_162", "Parent" : "3", "Child" : ["5"],
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
	{"ID" : "5", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.AXIvideo2MultiPixStream_1_U0.grp_AXIvideo2MultiPixStream_1_Pipeline_loop_wait_for_start_fu_162.flow_control_loop_pipe_sequential_init_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.AXIvideo2MultiPixStream_1_U0.grp_AXIvideo2MultiPixStream_1_Pipeline_loop_width_fu_182", "Parent" : "3", "Child" : ["7"],
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
	{"ID" : "7", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.AXIvideo2MultiPixStream_1_U0.grp_AXIvideo2MultiPixStream_1_Pipeline_loop_width_fu_182.flow_control_loop_pipe_sequential_init_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.AXIvideo2MultiPixStream_1_U0.grp_AXIvideo2MultiPixStream_1_Pipeline_loop_wait_for_eol_fu_210", "Parent" : "3", "Child" : ["9"],
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
	{"ID" : "9", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.AXIvideo2MultiPixStream_1_U0.grp_AXIvideo2MultiPixStream_1_Pipeline_loop_wait_for_eol_fu_210.flow_control_loop_pipe_sequential_init_U", "Parent" : "8"},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.AXIvideo2MultiPixStream_1_U0.grp_reg_unsigned_short_1_fu_233", "Parent" : "3",
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
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.AXIvideo2MultiPixStream_1_U0.grp_reg_unsigned_short_1_fu_239", "Parent" : "3",
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
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.v_mix_420_to_422_false_2_U0", "Parent" : "1", "Child" : ["13"],
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
		"StartSource" : "3",
		"StartFifo" : "start_for_v_mix_420_to_422_false_2_U0_U",
		"Port" : [
			{"Name" : "srcLayer0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["3"], "DependentChan" : "90", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_v_mix_420_to_422_false_2_Pipeline_VITIS_LOOP_76_2_fu_94", "Port" : "srcLayer0", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "height", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "width", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "layerEnableFlag", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["3"], "DependentChan" : "91", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "layerEnableFlag_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "srcLayer0Yuv422", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["15"], "DependentChan" : "92", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_v_mix_420_to_422_false_2_Pipeline_VITIS_LOOP_76_2_fu_94", "Port" : "srcLayer0Yuv422", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "HwReg_layerEnableFlag_0_val_c13", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["15"], "DependentChan" : "93", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerEnableFlag_0_val_c13_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_74_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.v_mix_420_to_422_false_2_U0.grp_v_mix_420_to_422_false_2_Pipeline_VITIS_LOOP_76_2_fu_94", "Parent" : "12", "Child" : ["14"],
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
	{"ID" : "14", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.v_mix_420_to_422_false_2_U0.grp_v_mix_420_to_422_false_2_Pipeline_VITIS_LOOP_76_2_fu_94.flow_control_loop_pipe_sequential_init_U", "Parent" : "13"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.v_mix_422_to_444_false_3_U0", "Parent" : "1", "Child" : ["16"],
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
		"StartSource" : "12",
		"StartFifo" : "start_for_v_mix_422_to_444_false_3_U0_U",
		"Port" : [
			{"Name" : "srcLayer0Yuv422", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["12"], "DependentChan" : "92", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_v_mix_422_to_444_false_3_Pipeline_VITIS_LOOP_105_2_fu_94", "Port" : "srcLayer0Yuv422", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "height", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "width", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "layerEnableFlag", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["12"], "DependentChan" : "93", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "layerEnableFlag_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "srcLayer0Yuv", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["18"], "DependentChan" : "94", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_v_mix_422_to_444_false_3_Pipeline_VITIS_LOOP_105_2_fu_94", "Port" : "srcLayer0Yuv", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "HwReg_layerEnableFlag_0_val_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["18"], "DependentChan" : "95", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerEnableFlag_0_val_c_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_103_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.v_mix_422_to_444_false_3_U0.grp_v_mix_422_to_444_false_3_Pipeline_VITIS_LOOP_105_2_fu_94", "Parent" : "15", "Child" : ["17"],
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
	{"ID" : "17", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.v_mix_422_to_444_false_3_U0.grp_v_mix_422_to_444_false_3_Pipeline_VITIS_LOOP_105_2_fu_94.flow_control_loop_pipe_sequential_init_U", "Parent" : "16"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.v_mix_yuv2rgb_false_4_U0", "Parent" : "1", "Child" : ["19"],
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
		"StartSource" : "15",
		"StartFifo" : "start_for_v_mix_yuv2rgb_false_4_U0_U",
		"Port" : [
			{"Name" : "srcLayer0Yuv", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["15"], "DependentChan" : "94", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_v_mix_yuv2rgb_false_4_Pipeline_VITIS_LOOP_897_2_fu_82", "Port" : "srcLayer0Yuv", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "height", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "width", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "layerEnableFlag", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["15"], "DependentChan" : "95", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "layerEnableFlag_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "outLayer0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["42"], "DependentChan" : "96", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_v_mix_yuv2rgb_false_4_Pipeline_VITIS_LOOP_897_2_fu_82", "Port" : "outLayer0", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_895_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.v_mix_yuv2rgb_false_4_U0.grp_v_mix_yuv2rgb_false_4_Pipeline_VITIS_LOOP_897_2_fu_82", "Parent" : "18", "Child" : ["20"],
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
	{"ID" : "20", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.v_mix_yuv2rgb_false_4_U0.grp_v_mix_yuv2rgb_false_4_Pipeline_VITIS_LOOP_897_2_fu_82.flow_control_loop_pipe_sequential_init_U", "Parent" : "19"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.AXIvideo2MultiPixStream_5_U0", "Parent" : "1", "Child" : ["22", "24", "26", "28", "29"],
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
					{"ID" : "26", "SubInstance" : "grp_AXIvideo2MultiPixStream_5_Pipeline_loop_wait_for_eol_fu_228", "Port" : "s_axis_video1_V_data_V", "Inst_start_state" : "8", "Inst_end_state" : "9"},
					{"ID" : "22", "SubInstance" : "grp_AXIvideo2MultiPixStream_5_Pipeline_loop_wait_for_start_fu_180", "Port" : "s_axis_video1_V_data_V", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "24", "SubInstance" : "grp_AXIvideo2MultiPixStream_5_Pipeline_loop_width_fu_200", "Port" : "s_axis_video1_V_data_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "s_axis_video1_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video1",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_AXIvideo2MultiPixStream_5_Pipeline_loop_wait_for_eol_fu_228", "Port" : "s_axis_video1_V_keep_V", "Inst_start_state" : "8", "Inst_end_state" : "9"},
					{"ID" : "22", "SubInstance" : "grp_AXIvideo2MultiPixStream_5_Pipeline_loop_wait_for_start_fu_180", "Port" : "s_axis_video1_V_keep_V", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "24", "SubInstance" : "grp_AXIvideo2MultiPixStream_5_Pipeline_loop_width_fu_200", "Port" : "s_axis_video1_V_keep_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "s_axis_video1_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video1",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_AXIvideo2MultiPixStream_5_Pipeline_loop_wait_for_eol_fu_228", "Port" : "s_axis_video1_V_strb_V", "Inst_start_state" : "8", "Inst_end_state" : "9"},
					{"ID" : "22", "SubInstance" : "grp_AXIvideo2MultiPixStream_5_Pipeline_loop_wait_for_start_fu_180", "Port" : "s_axis_video1_V_strb_V", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "24", "SubInstance" : "grp_AXIvideo2MultiPixStream_5_Pipeline_loop_width_fu_200", "Port" : "s_axis_video1_V_strb_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "s_axis_video1_V_user_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video1",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_AXIvideo2MultiPixStream_5_Pipeline_loop_wait_for_eol_fu_228", "Port" : "s_axis_video1_V_user_V", "Inst_start_state" : "8", "Inst_end_state" : "9"},
					{"ID" : "22", "SubInstance" : "grp_AXIvideo2MultiPixStream_5_Pipeline_loop_wait_for_start_fu_180", "Port" : "s_axis_video1_V_user_V", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "24", "SubInstance" : "grp_AXIvideo2MultiPixStream_5_Pipeline_loop_width_fu_200", "Port" : "s_axis_video1_V_user_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "s_axis_video1_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video1",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_AXIvideo2MultiPixStream_5_Pipeline_loop_wait_for_eol_fu_228", "Port" : "s_axis_video1_V_last_V", "Inst_start_state" : "8", "Inst_end_state" : "9"},
					{"ID" : "22", "SubInstance" : "grp_AXIvideo2MultiPixStream_5_Pipeline_loop_wait_for_start_fu_180", "Port" : "s_axis_video1_V_last_V", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "24", "SubInstance" : "grp_AXIvideo2MultiPixStream_5_Pipeline_loop_width_fu_200", "Port" : "s_axis_video1_V_last_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "s_axis_video1_V_id_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video1",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_AXIvideo2MultiPixStream_5_Pipeline_loop_wait_for_eol_fu_228", "Port" : "s_axis_video1_V_id_V", "Inst_start_state" : "8", "Inst_end_state" : "9"},
					{"ID" : "22", "SubInstance" : "grp_AXIvideo2MultiPixStream_5_Pipeline_loop_wait_for_start_fu_180", "Port" : "s_axis_video1_V_id_V", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "24", "SubInstance" : "grp_AXIvideo2MultiPixStream_5_Pipeline_loop_width_fu_200", "Port" : "s_axis_video1_V_id_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "s_axis_video1_V_dest_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video1",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_AXIvideo2MultiPixStream_5_Pipeline_loop_wait_for_eol_fu_228", "Port" : "s_axis_video1_V_dest_V", "Inst_start_state" : "8", "Inst_end_state" : "9"},
					{"ID" : "22", "SubInstance" : "grp_AXIvideo2MultiPixStream_5_Pipeline_loop_wait_for_start_fu_180", "Port" : "s_axis_video1_V_dest_V", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "24", "SubInstance" : "grp_AXIvideo2MultiPixStream_5_Pipeline_loop_width_fu_200", "Port" : "s_axis_video1_V_dest_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "srcLayer1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["30"], "DependentChan" : "97", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_AXIvideo2MultiPixStream_5_Pipeline_loop_width_fu_200", "Port" : "srcLayer1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "HwReg_layerHeight_1_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "HwReg_layerWidth_1_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "HwReg_layerEnableFlag_1_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "HwReg_layerEnableFlag_1_val_c17", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["30"], "DependentChan" : "98", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerEnableFlag_1_val_c17_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_layerWidth_1_val_c24", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["30"], "DependentChan" : "99", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerWidth_1_val_c24_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_layerHeight_1_val_c32", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["30"], "DependentChan" : "100", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerHeight_1_val_c32_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "loop_height", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "10", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state10"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state2", "ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.AXIvideo2MultiPixStream_5_U0.grp_AXIvideo2MultiPixStream_5_Pipeline_loop_wait_for_start_fu_180", "Parent" : "21", "Child" : ["23"],
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
	{"ID" : "23", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.AXIvideo2MultiPixStream_5_U0.grp_AXIvideo2MultiPixStream_5_Pipeline_loop_wait_for_start_fu_180.flow_control_loop_pipe_sequential_init_U", "Parent" : "22"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.AXIvideo2MultiPixStream_5_U0.grp_AXIvideo2MultiPixStream_5_Pipeline_loop_width_fu_200", "Parent" : "21", "Child" : ["25"],
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
	{"ID" : "25", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.AXIvideo2MultiPixStream_5_U0.grp_AXIvideo2MultiPixStream_5_Pipeline_loop_width_fu_200.flow_control_loop_pipe_sequential_init_U", "Parent" : "24"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.AXIvideo2MultiPixStream_5_U0.grp_AXIvideo2MultiPixStream_5_Pipeline_loop_wait_for_eol_fu_228", "Parent" : "21", "Child" : ["27"],
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
	{"ID" : "27", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.AXIvideo2MultiPixStream_5_U0.grp_AXIvideo2MultiPixStream_5_Pipeline_loop_wait_for_eol_fu_228.flow_control_loop_pipe_sequential_init_U", "Parent" : "26"},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.AXIvideo2MultiPixStream_5_U0.grp_reg_unsigned_short_s_fu_259", "Parent" : "21",
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
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.AXIvideo2MultiPixStream_5_U0.grp_reg_unsigned_short_s_fu_265", "Parent" : "21",
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
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.v_mix_420_to_422_false_6_U0", "Parent" : "1", "Child" : ["31"],
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
		"StartSource" : "21",
		"StartFifo" : "start_for_v_mix_420_to_422_false_6_U0_U",
		"Port" : [
			{"Name" : "srcLayer1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["21"], "DependentChan" : "97", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_v_mix_420_to_422_false_6_Pipeline_VITIS_LOOP_76_2_fu_110", "Port" : "srcLayer1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "HwReg_layerHeight_1_val", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["21"], "DependentChan" : "100", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerHeight_1_val_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_layerWidth_1_val", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["21"], "DependentChan" : "99", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerWidth_1_val_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_layerEnableFlag_1_val", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["21"], "DependentChan" : "98", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerEnableFlag_1_val_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "srcLayer1Yuv422", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["33"], "DependentChan" : "101", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_v_mix_420_to_422_false_6_Pipeline_VITIS_LOOP_76_2_fu_110", "Port" : "srcLayer1Yuv422", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "HwReg_layerEnableFlag_1_val_c16", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["33"], "DependentChan" : "102", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerEnableFlag_1_val_c16_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_layerWidth_1_val_c23", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["33"], "DependentChan" : "103", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerWidth_1_val_c23_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_layerHeight_1_val_c31", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["33"], "DependentChan" : "104", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerHeight_1_val_c31_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_74_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.v_mix_420_to_422_false_6_U0.grp_v_mix_420_to_422_false_6_Pipeline_VITIS_LOOP_76_2_fu_110", "Parent" : "30", "Child" : ["32"],
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
	{"ID" : "32", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.v_mix_420_to_422_false_6_U0.grp_v_mix_420_to_422_false_6_Pipeline_VITIS_LOOP_76_2_fu_110.flow_control_loop_pipe_sequential_init_U", "Parent" : "31"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.v_mix_422_to_444_false_7_U0", "Parent" : "1", "Child" : ["34"],
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
		"StartSource" : "30",
		"StartFifo" : "start_for_v_mix_422_to_444_false_7_U0_U",
		"Port" : [
			{"Name" : "srcLayer1Yuv422", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["30"], "DependentChan" : "101", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "grp_v_mix_422_to_444_false_7_Pipeline_VITIS_LOOP_105_2_fu_110", "Port" : "srcLayer1Yuv422", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "HwReg_layerHeight_1_val", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["30"], "DependentChan" : "104", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerHeight_1_val_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_layerWidth_1_val", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["30"], "DependentChan" : "103", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerWidth_1_val_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_layerEnableFlag_1_val", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["30"], "DependentChan" : "102", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerEnableFlag_1_val_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "srcLayer1Yuv", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["36"], "DependentChan" : "105", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "grp_v_mix_422_to_444_false_7_Pipeline_VITIS_LOOP_105_2_fu_110", "Port" : "srcLayer1Yuv", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "HwReg_layerEnableFlag_1_val_c15", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["36"], "DependentChan" : "106", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerEnableFlag_1_val_c15_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_layerWidth_1_val_c22", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["36"], "DependentChan" : "107", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerWidth_1_val_c22_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_layerHeight_1_val_c30", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["36"], "DependentChan" : "108", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerHeight_1_val_c30_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_103_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.v_mix_422_to_444_false_7_U0.grp_v_mix_422_to_444_false_7_Pipeline_VITIS_LOOP_105_2_fu_110", "Parent" : "33", "Child" : ["35"],
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
	{"ID" : "35", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.v_mix_422_to_444_false_7_U0.grp_v_mix_422_to_444_false_7_Pipeline_VITIS_LOOP_105_2_fu_110.flow_control_loop_pipe_sequential_init_U", "Parent" : "34"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.v_mix_yuv2rgb_false_8_U0", "Parent" : "1", "Child" : ["37"],
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
		"StartSource" : "33",
		"StartFifo" : "start_for_v_mix_yuv2rgb_false_8_U0_U",
		"Port" : [
			{"Name" : "srcLayer1Yuv", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["33"], "DependentChan" : "105", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "grp_v_mix_yuv2rgb_false_8_Pipeline_VITIS_LOOP_897_2_fu_110", "Port" : "srcLayer1Yuv", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "HwReg_layerHeight_1_val", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["33"], "DependentChan" : "108", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerHeight_1_val_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_layerWidth_1_val", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["33"], "DependentChan" : "107", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerWidth_1_val_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_layerEnableFlag_1_val", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["33"], "DependentChan" : "106", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerEnableFlag_1_val_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "srcLayer1Rgb", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["39"], "DependentChan" : "109", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "grp_v_mix_yuv2rgb_false_8_Pipeline_VITIS_LOOP_897_2_fu_110", "Port" : "srcLayer1Rgb", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "HwReg_layerEnableFlag_1_val_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["39"], "DependentChan" : "110", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerEnableFlag_1_val_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_layerWidth_1_val_c21", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["39"], "DependentChan" : "111", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerWidth_1_val_c21_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_layerHeight_1_val_c29", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["39"], "DependentChan" : "112", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerHeight_1_val_c29_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_895_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.v_mix_yuv2rgb_false_8_U0.grp_v_mix_yuv2rgb_false_8_Pipeline_VITIS_LOOP_897_2_fu_110", "Parent" : "36", "Child" : ["38"],
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
	{"ID" : "38", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.v_mix_yuv2rgb_false_8_U0.grp_v_mix_yuv2rgb_false_8_Pipeline_VITIS_LOOP_897_2_fu_110.flow_control_loop_pipe_sequential_init_U", "Parent" : "37"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.v_mix_upsample_false_9_U0", "Parent" : "1", "Child" : ["40"],
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
		"StartSource" : "36",
		"StartFifo" : "start_for_v_mix_upsample_false_9_U0_U",
		"Port" : [
			{"Name" : "srcLayer1Rgb", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["36"], "DependentChan" : "109", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "40", "SubInstance" : "grp_v_mix_upsample_false_9_Pipeline_VITIS_LOOP_107_2_fu_98", "Port" : "srcLayer1Rgb", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "HwReg_layerHeight_1_val", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["36"], "DependentChan" : "112", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerHeight_1_val_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_layerWidth_1_val", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["36"], "DependentChan" : "111", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerWidth_1_val_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_layerEnableFlag_1_val", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["36"], "DependentChan" : "110", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerEnableFlag_1_val_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "srcLayer1x", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["42"], "DependentChan" : "113", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "40", "SubInstance" : "grp_v_mix_upsample_false_9_Pipeline_VITIS_LOOP_107_2_fu_98", "Port" : "srcLayer1x", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "HwReg_layerWidth_1_val_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["42"], "DependentChan" : "114", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerWidth_1_val_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_layerHeight_1_val_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["42"], "DependentChan" : "115", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerHeight_1_val_c_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_105_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.v_mix_upsample_false_9_U0.grp_v_mix_upsample_false_9_Pipeline_VITIS_LOOP_107_2_fu_98", "Parent" : "39", "Child" : ["41"],
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
	{"ID" : "41", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.v_mix_upsample_false_9_U0.grp_v_mix_upsample_false_9_Pipeline_VITIS_LOOP_107_2_fu_98.flow_control_loop_pipe_sequential_init_U", "Parent" : "40"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.v_mix_core_alpha_false_false_U0", "Parent" : "1", "Child" : ["43"],
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
		"StartSource" : "2",
		"StartFifo" : "start_for_v_mix_core_alpha_false_false_U0_U",
		"Port" : [
			{"Name" : "outLayer0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["18"], "DependentChan" : "96", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "43", "SubInstance" : "grp_v_mix_core_alpha_false_false_Pipeline_VITIS_LOOP_465_3_fu_170", "Port" : "outLayer0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "srcLayer1x", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["39"], "DependentChan" : "113", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "43", "SubInstance" : "grp_v_mix_core_alpha_false_false_Pipeline_VITIS_LOOP_465_3_fu_170", "Port" : "srcLayer1x", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "HwReg_width_val", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "HwReg_height_val", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "HwReg_background_Y_R_val12", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "HwReg_background_U_G_val13", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "HwReg_background_V_B_val14", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "HwReg_layerEnable_val16", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "83", "DependentChanDepth" : "7", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerEnable_val16_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_layerStartX_1_val17", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "84", "DependentChanDepth" : "7", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerStartX_1_val17_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_layerStartY_1_val19", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "86", "DependentChanDepth" : "7", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerStartY_1_val19_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_layerWidth_1_val", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["39"], "DependentChan" : "114", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerWidth_1_val_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_layerHeight_1_val", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["39"], "DependentChan" : "115", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerHeight_1_val_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_layerScaleFactor_1_val25", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "88", "DependentChanDepth" : "7", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerScaleFactor_1_val25_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "outLayer1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["66"], "DependentChan" : "116", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "43", "SubInstance" : "grp_v_mix_core_alpha_false_false_Pipeline_VITIS_LOOP_465_3_fu_170", "Port" : "outLayer1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "HwReg_layerEnable_val16_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["66"], "DependentChan" : "117", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerEnable_val16_c_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_463_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "43", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.v_mix_core_alpha_false_false_U0.grp_v_mix_core_alpha_false_false_Pipeline_VITIS_LOOP_465_3_fu_170", "Parent" : "42", "Child" : ["44"],
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
	{"ID" : "44", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.v_mix_core_alpha_false_false_U0.grp_v_mix_core_alpha_false_false_Pipeline_VITIS_LOOP_465_3_fu_170.flow_control_loop_pipe_sequential_init_U", "Parent" : "43"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.AXIvideo2MultiPixStream_U0", "Parent" : "1", "Child" : ["46", "48", "50", "52", "53"],
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
					{"ID" : "48", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_200", "Port" : "s_axis_video2_V_data_V", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "46", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_180", "Port" : "s_axis_video2_V_data_V", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "50", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_228", "Port" : "s_axis_video2_V_data_V", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "s_axis_video2_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video2",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_200", "Port" : "s_axis_video2_V_keep_V", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "46", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_180", "Port" : "s_axis_video2_V_keep_V", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "50", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_228", "Port" : "s_axis_video2_V_keep_V", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "s_axis_video2_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video2",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_200", "Port" : "s_axis_video2_V_strb_V", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "46", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_180", "Port" : "s_axis_video2_V_strb_V", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "50", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_228", "Port" : "s_axis_video2_V_strb_V", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "s_axis_video2_V_user_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video2",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_200", "Port" : "s_axis_video2_V_user_V", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "46", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_180", "Port" : "s_axis_video2_V_user_V", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "50", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_228", "Port" : "s_axis_video2_V_user_V", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "s_axis_video2_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video2",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_200", "Port" : "s_axis_video2_V_last_V", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "46", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_180", "Port" : "s_axis_video2_V_last_V", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "50", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_228", "Port" : "s_axis_video2_V_last_V", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "s_axis_video2_V_id_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video2",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_200", "Port" : "s_axis_video2_V_id_V", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "46", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_180", "Port" : "s_axis_video2_V_id_V", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "50", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_228", "Port" : "s_axis_video2_V_id_V", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "s_axis_video2_V_dest_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_video2",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_200", "Port" : "s_axis_video2_V_dest_V", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "46", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_180", "Port" : "s_axis_video2_V_dest_V", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "50", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_228", "Port" : "s_axis_video2_V_dest_V", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "srcLayer2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["54"], "DependentChan" : "118", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_200", "Port" : "srcLayer2", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "HwReg_layerHeight_2_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "HwReg_layerWidth_2_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "HwReg_layerEnableFlag_2_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "HwReg_layerEnableFlag_2_val_c20", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["54"], "DependentChan" : "119", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerEnableFlag_2_val_c20_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_layerWidth_2_val_c28", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["54"], "DependentChan" : "120", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerWidth_2_val_c28_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_layerHeight_2_val_c36", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["54"], "DependentChan" : "121", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerHeight_2_val_c36_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "loop_height", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "10", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state10"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state2", "ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "46", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.AXIvideo2MultiPixStream_U0.grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_180", "Parent" : "45", "Child" : ["47"],
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
	{"ID" : "47", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.AXIvideo2MultiPixStream_U0.grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_180.flow_control_loop_pipe_sequential_init_U", "Parent" : "46"},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.AXIvideo2MultiPixStream_U0.grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_200", "Parent" : "45", "Child" : ["49"],
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
	{"ID" : "49", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.AXIvideo2MultiPixStream_U0.grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_200.flow_control_loop_pipe_sequential_init_U", "Parent" : "48"},
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.AXIvideo2MultiPixStream_U0.grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_228", "Parent" : "45", "Child" : ["51"],
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
	{"ID" : "51", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.AXIvideo2MultiPixStream_U0.grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_228.flow_control_loop_pipe_sequential_init_U", "Parent" : "50"},
	{"ID" : "52", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.AXIvideo2MultiPixStream_U0.grp_reg_unsigned_short_s_fu_259", "Parent" : "45",
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
	{"ID" : "53", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.AXIvideo2MultiPixStream_U0.grp_reg_unsigned_short_s_fu_265", "Parent" : "45",
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
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.v_mix_420_to_422_false_U0", "Parent" : "1", "Child" : ["55"],
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
		"StartSource" : "45",
		"StartFifo" : "start_for_v_mix_420_to_422_false_U0_U",
		"Port" : [
			{"Name" : "srcLayer2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["45"], "DependentChan" : "118", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "55", "SubInstance" : "grp_v_mix_420_to_422_false_Pipeline_VITIS_LOOP_76_2_fu_110", "Port" : "srcLayer2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "HwReg_layerHeight_2_val", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["45"], "DependentChan" : "121", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerHeight_2_val_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_layerWidth_2_val", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["45"], "DependentChan" : "120", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerWidth_2_val_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_layerEnableFlag_2_val", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["45"], "DependentChan" : "119", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerEnableFlag_2_val_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "srcLayer2Yuv422", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["57"], "DependentChan" : "122", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "55", "SubInstance" : "grp_v_mix_420_to_422_false_Pipeline_VITIS_LOOP_76_2_fu_110", "Port" : "srcLayer2Yuv422", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "HwReg_layerEnableFlag_2_val_c19", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["57"], "DependentChan" : "123", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerEnableFlag_2_val_c19_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_layerWidth_2_val_c27", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["57"], "DependentChan" : "124", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerWidth_2_val_c27_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_layerHeight_2_val_c35", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["57"], "DependentChan" : "125", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerHeight_2_val_c35_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_74_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "55", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.v_mix_420_to_422_false_U0.grp_v_mix_420_to_422_false_Pipeline_VITIS_LOOP_76_2_fu_110", "Parent" : "54", "Child" : ["56"],
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
	{"ID" : "56", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.v_mix_420_to_422_false_U0.grp_v_mix_420_to_422_false_Pipeline_VITIS_LOOP_76_2_fu_110.flow_control_loop_pipe_sequential_init_U", "Parent" : "55"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.v_mix_422_to_444_false_U0", "Parent" : "1", "Child" : ["58"],
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
		"StartSource" : "54",
		"StartFifo" : "start_for_v_mix_422_to_444_false_U0_U",
		"Port" : [
			{"Name" : "srcLayer2Yuv422", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["54"], "DependentChan" : "122", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "58", "SubInstance" : "grp_v_mix_422_to_444_false_Pipeline_VITIS_LOOP_105_2_fu_110", "Port" : "srcLayer2Yuv422", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "HwReg_layerHeight_2_val", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["54"], "DependentChan" : "125", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerHeight_2_val_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_layerWidth_2_val", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["54"], "DependentChan" : "124", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerWidth_2_val_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_layerEnableFlag_2_val", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["54"], "DependentChan" : "123", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerEnableFlag_2_val_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "srcLayer2Yuv", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["60"], "DependentChan" : "126", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "58", "SubInstance" : "grp_v_mix_422_to_444_false_Pipeline_VITIS_LOOP_105_2_fu_110", "Port" : "srcLayer2Yuv", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "HwReg_layerEnableFlag_2_val_c18", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["60"], "DependentChan" : "127", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerEnableFlag_2_val_c18_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_layerWidth_2_val_c26", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["60"], "DependentChan" : "128", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerWidth_2_val_c26_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_layerHeight_2_val_c34", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["60"], "DependentChan" : "129", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerHeight_2_val_c34_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_103_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "58", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.v_mix_422_to_444_false_U0.grp_v_mix_422_to_444_false_Pipeline_VITIS_LOOP_105_2_fu_110", "Parent" : "57", "Child" : ["59"],
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
	{"ID" : "59", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.v_mix_422_to_444_false_U0.grp_v_mix_422_to_444_false_Pipeline_VITIS_LOOP_105_2_fu_110.flow_control_loop_pipe_sequential_init_U", "Parent" : "58"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.v_mix_yuv2rgb_false_U0", "Parent" : "1", "Child" : ["61"],
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
		"StartSource" : "57",
		"StartFifo" : "start_for_v_mix_yuv2rgb_false_U0_U",
		"Port" : [
			{"Name" : "srcLayer2Yuv", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["57"], "DependentChan" : "126", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "61", "SubInstance" : "grp_v_mix_yuv2rgb_false_Pipeline_VITIS_LOOP_897_2_fu_110", "Port" : "srcLayer2Yuv", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "HwReg_layerHeight_2_val", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["57"], "DependentChan" : "129", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerHeight_2_val_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_layerWidth_2_val", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["57"], "DependentChan" : "128", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerWidth_2_val_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_layerEnableFlag_2_val", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["57"], "DependentChan" : "127", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerEnableFlag_2_val_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "srcLayer2Rgb", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["63"], "DependentChan" : "130", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "61", "SubInstance" : "grp_v_mix_yuv2rgb_false_Pipeline_VITIS_LOOP_897_2_fu_110", "Port" : "srcLayer2Rgb", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "HwReg_layerEnableFlag_2_val_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["63"], "DependentChan" : "131", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerEnableFlag_2_val_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_layerWidth_2_val_c25", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["63"], "DependentChan" : "132", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerWidth_2_val_c25_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_layerHeight_2_val_c33", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["63"], "DependentChan" : "133", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerHeight_2_val_c33_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_895_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "61", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.v_mix_yuv2rgb_false_U0.grp_v_mix_yuv2rgb_false_Pipeline_VITIS_LOOP_897_2_fu_110", "Parent" : "60", "Child" : ["62"],
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
	{"ID" : "62", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.v_mix_yuv2rgb_false_U0.grp_v_mix_yuv2rgb_false_Pipeline_VITIS_LOOP_897_2_fu_110.flow_control_loop_pipe_sequential_init_U", "Parent" : "61"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.v_mix_upsample_false_U0", "Parent" : "1", "Child" : ["64"],
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
		"StartSource" : "60",
		"StartFifo" : "start_for_v_mix_upsample_false_U0_U",
		"Port" : [
			{"Name" : "srcLayer2Rgb", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["60"], "DependentChan" : "130", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "grp_v_mix_upsample_false_Pipeline_VITIS_LOOP_107_2_fu_98", "Port" : "srcLayer2Rgb", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "HwReg_layerHeight_2_val", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["60"], "DependentChan" : "133", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerHeight_2_val_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_layerWidth_2_val", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["60"], "DependentChan" : "132", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerWidth_2_val_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_layerEnableFlag_2_val", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["60"], "DependentChan" : "131", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerEnableFlag_2_val_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "srcLayer2x", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["66"], "DependentChan" : "134", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "grp_v_mix_upsample_false_Pipeline_VITIS_LOOP_107_2_fu_98", "Port" : "srcLayer2x", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "HwReg_layerWidth_2_val_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["66"], "DependentChan" : "135", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerWidth_2_val_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "HwReg_layerHeight_2_val_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["66"], "DependentChan" : "136", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "HwReg_layerHeight_2_val_c_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_105_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "64", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.v_mix_upsample_false_U0.grp_v_mix_upsample_false_Pipeline_VITIS_LOOP_107_2_fu_98", "Parent" : "63", "Child" : ["65"],
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
	{"ID" : "65", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.v_mix_upsample_false_U0.grp_v_mix_upsample_false_Pipeline_VITIS_LOOP_107_2_fu_98.flow_control_loop_pipe_sequential_init_U", "Parent" : "64"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.v_mix_core_alpha_false_false_10_U0", "Parent" : "1", "Child" : ["67"],
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
		"StartSource" : "2",
		"StartFifo" : "start_for_v_mix_core_alpha_false_false_10_U0_U",
		"Port" : [
			{"Name" : "outLayer1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["42"], "DependentChan" : "116", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "grp_v_mix_core_alpha_false_false_10_Pipeline_VITIS_LOOP_465_3_fu_132", "Port" : "outLayer1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "srcLayer2x", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["63"], "DependentChan" : "134", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "grp_v_mix_core_alpha_false_false_10_Pipeline_VITIS_LOOP_465_3_fu_132", "Port" : "srcLayer2x", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "hwReg_0_val", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "hwReg_1_val", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "hwReg_6_val", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["42"], "DependentChan" : "117", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "hwReg_6_val_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "hwReg_9_2_val", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "85", "DependentChanDepth" : "8", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "hwReg_9_2_val_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "hwReg_10_2_val", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "87", "DependentChanDepth" : "8", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "hwReg_10_2_val_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "hwReg_11_2_val", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["63"], "DependentChan" : "135", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "hwReg_11_2_val_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "hwReg_12_2_val", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["63"], "DependentChan" : "136", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "hwReg_12_2_val_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "hwReg_13_2_val", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "89", "DependentChanDepth" : "8", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "hwReg_13_2_val_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "outLayer2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["69"], "DependentChan" : "137", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "grp_v_mix_core_alpha_false_false_10_Pipeline_VITIS_LOOP_465_3_fu_132", "Port" : "outLayer2", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_463_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "67", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.v_mix_core_alpha_false_false_10_U0.grp_v_mix_core_alpha_false_false_10_Pipeline_VITIS_LOOP_465_3_fu_132", "Parent" : "66", "Child" : ["68"],
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
	{"ID" : "68", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.v_mix_core_alpha_false_false_10_U0.grp_v_mix_core_alpha_false_false_10_Pipeline_VITIS_LOOP_465_3_fu_132.flow_control_loop_pipe_sequential_init_U", "Parent" : "67"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.v_mix_rgb2yuv_false_U0", "Parent" : "1", "Child" : ["70"],
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
		"StartSource" : "66",
		"StartFifo" : "start_for_v_mix_rgb2yuv_false_U0_U",
		"Port" : [
			{"Name" : "outLayer2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["66"], "DependentChan" : "137", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "70", "SubInstance" : "grp_v_mix_rgb2yuv_false_Pipeline_VITIS_LOOP_1042_2_fu_62", "Port" : "outLayer2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "height_val", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "width_val", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "outYuv", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["72"], "DependentChan" : "138", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "70", "SubInstance" : "grp_v_mix_rgb2yuv_false_Pipeline_VITIS_LOOP_1042_2_fu_62", "Port" : "outYuv", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1040_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "70", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.v_mix_rgb2yuv_false_U0.grp_v_mix_rgb2yuv_false_Pipeline_VITIS_LOOP_1042_2_fu_62", "Parent" : "69", "Child" : ["71"],
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
	{"ID" : "71", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.v_mix_rgb2yuv_false_U0.grp_v_mix_rgb2yuv_false_Pipeline_VITIS_LOOP_1042_2_fu_62.flow_control_loop_pipe_sequential_init_U", "Parent" : "70"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.v_mix_444_to_422_false_U0", "Parent" : "1", "Child" : ["73"],
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
		"StartSource" : "69",
		"StartFifo" : "start_for_v_mix_444_to_422_false_U0_U",
		"Port" : [
			{"Name" : "outYuv", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["69"], "DependentChan" : "138", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "73", "SubInstance" : "grp_v_mix_444_to_422_false_Pipeline_VITIS_LOOP_718_2_fu_62", "Port" : "outYuv", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "height_val", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "width_val", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "out422", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["75"], "DependentChan" : "139", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "73", "SubInstance" : "grp_v_mix_444_to_422_false_Pipeline_VITIS_LOOP_718_2_fu_62", "Port" : "out422", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_716_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "73", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.v_mix_444_to_422_false_U0.grp_v_mix_444_to_422_false_Pipeline_VITIS_LOOP_718_2_fu_62", "Parent" : "72", "Child" : ["74"],
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
	{"ID" : "74", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.v_mix_444_to_422_false_U0.grp_v_mix_444_to_422_false_Pipeline_VITIS_LOOP_718_2_fu_62.flow_control_loop_pipe_sequential_init_U", "Parent" : "73"},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.v_mix_422_to_420_false_U0", "Parent" : "1", "Child" : ["76"],
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
		"StartSource" : "72",
		"StartFifo" : "start_for_v_mix_422_to_420_false_U0_U",
		"Port" : [
			{"Name" : "out422", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["72"], "DependentChan" : "139", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "76", "SubInstance" : "grp_v_mix_422_to_420_false_Pipeline_VITIS_LOOP_508_2_fu_62", "Port" : "out422", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "height_val", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "width_val", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "out420", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["78"], "DependentChan" : "140", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "76", "SubInstance" : "grp_v_mix_422_to_420_false_Pipeline_VITIS_LOOP_508_2_fu_62", "Port" : "out420", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_506_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "76", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.v_mix_422_to_420_false_U0.grp_v_mix_422_to_420_false_Pipeline_VITIS_LOOP_508_2_fu_62", "Parent" : "75", "Child" : ["77"],
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
	{"ID" : "77", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.v_mix_422_to_420_false_U0.grp_v_mix_422_to_420_false_Pipeline_VITIS_LOOP_508_2_fu_62.flow_control_loop_pipe_sequential_init_U", "Parent" : "76"},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.MultiPixStream2AXIvideo_U0", "Parent" : "1", "Child" : ["79", "81", "82"],
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
		"StartSource" : "75",
		"StartFifo" : "start_for_MultiPixStream2AXIvideo_U0_U",
		"Port" : [
			{"Name" : "out420", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["75"], "DependentChan" : "140", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_3233_3_fu_98", "Port" : "out420", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "m_axis_video_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_video",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_3233_3_fu_98", "Port" : "m_axis_video_V_data_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "m_axis_video_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_video",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_3233_3_fu_98", "Port" : "m_axis_video_V_keep_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "m_axis_video_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_video",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_3233_3_fu_98", "Port" : "m_axis_video_V_strb_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "m_axis_video_V_user_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_video",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_3233_3_fu_98", "Port" : "m_axis_video_V_user_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "m_axis_video_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_video",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_3233_3_fu_98", "Port" : "m_axis_video_V_last_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "m_axis_video_V_id_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_video",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_3233_3_fu_98", "Port" : "m_axis_video_V_id_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "m_axis_video_V_dest_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_video",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_3233_3_fu_98", "Port" : "m_axis_video_V_dest_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "Height", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "WidthOut", "Type" : "Stable", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_3231_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "79", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.MultiPixStream2AXIvideo_U0.grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_3233_3_fu_98", "Parent" : "78", "Child" : ["80"],
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
	{"ID" : "80", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.MultiPixStream2AXIvideo_U0.grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_3233_3_fu_98.flow_control_loop_pipe_sequential_init_U", "Parent" : "79"},
	{"ID" : "81", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.MultiPixStream2AXIvideo_U0.grp_reg_unsigned_short_1_fu_122", "Parent" : "78",
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
	{"ID" : "82", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.MultiPixStream2AXIvideo_U0.grp_reg_unsigned_short_1_fu_128", "Parent" : "78",
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
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.HwReg_layerEnable_val16_c12_U", "Parent" : "1"},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.HwReg_layerStartX_1_val17_c_U", "Parent" : "1"},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.HwReg_layerStartX_2_val18_c_U", "Parent" : "1"},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.HwReg_layerStartY_1_val19_c_U", "Parent" : "1"},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.HwReg_layerStartY_2_val20_c_U", "Parent" : "1"},
	{"ID" : "88", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.HwReg_layerScaleFactor_1_val25_c_U", "Parent" : "1"},
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.HwReg_layerScaleFactor_2_val26_c_U", "Parent" : "1"},
	{"ID" : "90", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.srcLayer0_U", "Parent" : "1"},
	{"ID" : "91", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.HwReg_layerEnableFlag_0_val_c14_U", "Parent" : "1"},
	{"ID" : "92", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.srcLayer0Yuv422_U", "Parent" : "1"},
	{"ID" : "93", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.HwReg_layerEnableFlag_0_val_c13_U", "Parent" : "1"},
	{"ID" : "94", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.srcLayer0Yuv_U", "Parent" : "1"},
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.HwReg_layerEnableFlag_0_val_c_U", "Parent" : "1"},
	{"ID" : "96", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.outLayer0_U", "Parent" : "1"},
	{"ID" : "97", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.srcLayer1_U", "Parent" : "1"},
	{"ID" : "98", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.HwReg_layerEnableFlag_1_val_c17_U", "Parent" : "1"},
	{"ID" : "99", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.HwReg_layerWidth_1_val_c24_U", "Parent" : "1"},
	{"ID" : "100", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.HwReg_layerHeight_1_val_c32_U", "Parent" : "1"},
	{"ID" : "101", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.srcLayer1Yuv422_U", "Parent" : "1"},
	{"ID" : "102", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.HwReg_layerEnableFlag_1_val_c16_U", "Parent" : "1"},
	{"ID" : "103", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.HwReg_layerWidth_1_val_c23_U", "Parent" : "1"},
	{"ID" : "104", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.HwReg_layerHeight_1_val_c31_U", "Parent" : "1"},
	{"ID" : "105", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.srcLayer1Yuv_U", "Parent" : "1"},
	{"ID" : "106", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.HwReg_layerEnableFlag_1_val_c15_U", "Parent" : "1"},
	{"ID" : "107", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.HwReg_layerWidth_1_val_c22_U", "Parent" : "1"},
	{"ID" : "108", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.HwReg_layerHeight_1_val_c30_U", "Parent" : "1"},
	{"ID" : "109", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.srcLayer1Rgb_U", "Parent" : "1"},
	{"ID" : "110", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.HwReg_layerEnableFlag_1_val_c_U", "Parent" : "1"},
	{"ID" : "111", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.HwReg_layerWidth_1_val_c21_U", "Parent" : "1"},
	{"ID" : "112", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.HwReg_layerHeight_1_val_c29_U", "Parent" : "1"},
	{"ID" : "113", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.srcLayer1x_U", "Parent" : "1"},
	{"ID" : "114", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.HwReg_layerWidth_1_val_c_U", "Parent" : "1"},
	{"ID" : "115", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.HwReg_layerHeight_1_val_c_U", "Parent" : "1"},
	{"ID" : "116", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.outLayer1_U", "Parent" : "1"},
	{"ID" : "117", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.HwReg_layerEnable_val16_c_U", "Parent" : "1"},
	{"ID" : "118", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.srcLayer2_U", "Parent" : "1"},
	{"ID" : "119", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.HwReg_layerEnableFlag_2_val_c20_U", "Parent" : "1"},
	{"ID" : "120", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.HwReg_layerWidth_2_val_c28_U", "Parent" : "1"},
	{"ID" : "121", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.HwReg_layerHeight_2_val_c36_U", "Parent" : "1"},
	{"ID" : "122", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.srcLayer2Yuv422_U", "Parent" : "1"},
	{"ID" : "123", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.HwReg_layerEnableFlag_2_val_c19_U", "Parent" : "1"},
	{"ID" : "124", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.HwReg_layerWidth_2_val_c27_U", "Parent" : "1"},
	{"ID" : "125", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.HwReg_layerHeight_2_val_c35_U", "Parent" : "1"},
	{"ID" : "126", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.srcLayer2Yuv_U", "Parent" : "1"},
	{"ID" : "127", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.HwReg_layerEnableFlag_2_val_c18_U", "Parent" : "1"},
	{"ID" : "128", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.HwReg_layerWidth_2_val_c26_U", "Parent" : "1"},
	{"ID" : "129", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.HwReg_layerHeight_2_val_c34_U", "Parent" : "1"},
	{"ID" : "130", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.srcLayer2Rgb_U", "Parent" : "1"},
	{"ID" : "131", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.HwReg_layerEnableFlag_2_val_c_U", "Parent" : "1"},
	{"ID" : "132", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.HwReg_layerWidth_2_val_c25_U", "Parent" : "1"},
	{"ID" : "133", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.HwReg_layerHeight_2_val_c33_U", "Parent" : "1"},
	{"ID" : "134", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.srcLayer2x_U", "Parent" : "1"},
	{"ID" : "135", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.HwReg_layerWidth_2_val_c_U", "Parent" : "1"},
	{"ID" : "136", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.HwReg_layerHeight_2_val_c_U", "Parent" : "1"},
	{"ID" : "137", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.outLayer2_U", "Parent" : "1"},
	{"ID" : "138", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.outYuv_U", "Parent" : "1"},
	{"ID" : "139", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.out422_U", "Parent" : "1"},
	{"ID" : "140", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.out420_U", "Parent" : "1"},
	{"ID" : "141", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.start_for_v_mix_core_alpha_false_false_U0_U", "Parent" : "1"},
	{"ID" : "142", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.start_for_v_mix_core_alpha_false_false_10_U0_U", "Parent" : "1"},
	{"ID" : "143", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.start_for_v_mix_420_to_422_false_2_U0_U", "Parent" : "1"},
	{"ID" : "144", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.start_for_v_mix_422_to_444_false_3_U0_U", "Parent" : "1"},
	{"ID" : "145", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.start_for_v_mix_yuv2rgb_false_4_U0_U", "Parent" : "1"},
	{"ID" : "146", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.start_for_v_mix_420_to_422_false_6_U0_U", "Parent" : "1"},
	{"ID" : "147", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.start_for_v_mix_422_to_444_false_7_U0_U", "Parent" : "1"},
	{"ID" : "148", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.start_for_v_mix_yuv2rgb_false_8_U0_U", "Parent" : "1"},
	{"ID" : "149", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.start_for_v_mix_upsample_false_9_U0_U", "Parent" : "1"},
	{"ID" : "150", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.start_for_v_mix_420_to_422_false_U0_U", "Parent" : "1"},
	{"ID" : "151", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.start_for_v_mix_422_to_444_false_U0_U", "Parent" : "1"},
	{"ID" : "152", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.start_for_v_mix_yuv2rgb_false_U0_U", "Parent" : "1"},
	{"ID" : "153", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.start_for_v_mix_upsample_false_U0_U", "Parent" : "1"},
	{"ID" : "154", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.start_for_v_mix_rgb2yuv_false_U0_U", "Parent" : "1"},
	{"ID" : "155", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.start_for_v_mix_444_to_422_false_U0_U", "Parent" : "1"},
	{"ID" : "156", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.start_for_v_mix_422_to_420_false_U0_U", "Parent" : "1"},
	{"ID" : "157", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_VMixHlsDataFlowFunction_fu_476.start_for_MultiPixStream2AXIvideo_U0_U", "Parent" : "1"},
	{"ID" : "158", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.CTRL_s_axi_U", "Parent" : "0"},
	{"ID" : "159", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_16_1_1_U486", "Parent" : "0"},
	{"ID" : "160", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_16_1_1_U487", "Parent" : "0"},
	{"ID" : "161", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_16_1_1_U488", "Parent" : "0"},
	{"ID" : "162", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_16_1_1_U489", "Parent" : "0"},
	{"ID" : "163", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_8_1_1_U490", "Parent" : "0"},
	{"ID" : "164", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_s_axis_video_V_data_V_U", "Parent" : "0"},
	{"ID" : "165", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_s_axis_video_V_keep_V_U", "Parent" : "0"},
	{"ID" : "166", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_s_axis_video_V_strb_V_U", "Parent" : "0"},
	{"ID" : "167", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_s_axis_video_V_user_V_U", "Parent" : "0"},
	{"ID" : "168", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_s_axis_video_V_last_V_U", "Parent" : "0"},
	{"ID" : "169", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_s_axis_video_V_id_V_U", "Parent" : "0"},
	{"ID" : "170", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_s_axis_video_V_dest_V_U", "Parent" : "0"},
	{"ID" : "171", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_s_axis_video1_V_data_V_U", "Parent" : "0"},
	{"ID" : "172", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_s_axis_video1_V_keep_V_U", "Parent" : "0"},
	{"ID" : "173", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_s_axis_video1_V_strb_V_U", "Parent" : "0"},
	{"ID" : "174", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_s_axis_video1_V_user_V_U", "Parent" : "0"},
	{"ID" : "175", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_s_axis_video1_V_last_V_U", "Parent" : "0"},
	{"ID" : "176", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_s_axis_video1_V_id_V_U", "Parent" : "0"},
	{"ID" : "177", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_s_axis_video1_V_dest_V_U", "Parent" : "0"},
	{"ID" : "178", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_s_axis_video2_V_data_V_U", "Parent" : "0"},
	{"ID" : "179", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_s_axis_video2_V_keep_V_U", "Parent" : "0"},
	{"ID" : "180", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_s_axis_video2_V_strb_V_U", "Parent" : "0"},
	{"ID" : "181", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_s_axis_video2_V_user_V_U", "Parent" : "0"},
	{"ID" : "182", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_s_axis_video2_V_last_V_U", "Parent" : "0"},
	{"ID" : "183", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_s_axis_video2_V_id_V_U", "Parent" : "0"},
	{"ID" : "184", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_s_axis_video2_V_dest_V_U", "Parent" : "0"},
	{"ID" : "185", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_m_axis_video_V_data_V_U", "Parent" : "0"},
	{"ID" : "186", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_m_axis_video_V_keep_V_U", "Parent" : "0"},
	{"ID" : "187", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_m_axis_video_V_strb_V_U", "Parent" : "0"},
	{"ID" : "188", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_m_axis_video_V_user_V_U", "Parent" : "0"},
	{"ID" : "189", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_m_axis_video_V_last_V_U", "Parent" : "0"},
	{"ID" : "190", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_m_axis_video_V_id_V_U", "Parent" : "0"},
	{"ID" : "191", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_m_axis_video_V_dest_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	v_mix {
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
		width {Type I LastRead 0 FirstWrite -1}
		height {Type I LastRead 0 FirstWrite -1}
		video_format {Type I LastRead -1 FirstWrite -1}
		background_Y_R {Type I LastRead 0 FirstWrite -1}
		background_U_G {Type I LastRead 0 FirstWrite -1}
		background_V_B {Type I LastRead 0 FirstWrite -1}
		layerEnable {Type I LastRead 0 FirstWrite -1}
		layerAlpha_0 {Type I LastRead -1 FirstWrite -1}
		layerAlpha_1 {Type I LastRead -1 FirstWrite -1}
		layerAlpha_2 {Type I LastRead -1 FirstWrite -1}
		layerStartX_0 {Type I LastRead 0 FirstWrite -1}
		layerStartX_1 {Type I LastRead 0 FirstWrite -1}
		layerStartX_2 {Type I LastRead 0 FirstWrite -1}
		layerStartY_0 {Type I LastRead 0 FirstWrite -1}
		layerStartY_1 {Type I LastRead 0 FirstWrite -1}
		layerStartY_2 {Type I LastRead 0 FirstWrite -1}
		layerWidth_0 {Type I LastRead 0 FirstWrite -1}
		layerWidth_1 {Type I LastRead 0 FirstWrite -1}
		layerWidth_2 {Type I LastRead 0 FirstWrite -1}
		layerHeight_0 {Type I LastRead 0 FirstWrite -1}
		layerHeight_1 {Type I LastRead 0 FirstWrite -1}
		layerHeight_2 {Type I LastRead 0 FirstWrite -1}
		layerScaleFactor_0 {Type I LastRead 0 FirstWrite -1}
		layerScaleFactor_1 {Type I LastRead 0 FirstWrite -1}
		layerScaleFactor_2 {Type I LastRead 0 FirstWrite -1}
		layerVideoFormat {Type X LastRead -1 FirstWrite -1}
		layerStride_0 {Type I LastRead -1 FirstWrite -1}
		layerStride_1 {Type I LastRead -1 FirstWrite -1}
		layerStride_2 {Type I LastRead -1 FirstWrite -1}
		reserve {Type I LastRead -1 FirstWrite -1}
		K11 {Type I LastRead -1 FirstWrite -1}
		K12 {Type I LastRead -1 FirstWrite -1}
		K13 {Type I LastRead -1 FirstWrite -1}
		K21 {Type I LastRead -1 FirstWrite -1}
		K22 {Type I LastRead -1 FirstWrite -1}
		K23 {Type I LastRead -1 FirstWrite -1}
		K31 {Type I LastRead -1 FirstWrite -1}
		K32 {Type I LastRead -1 FirstWrite -1}
		K33 {Type I LastRead -1 FirstWrite -1}
		ROffset {Type I LastRead -1 FirstWrite -1}
		GOffset {Type I LastRead -1 FirstWrite -1}
		BOffset {Type I LastRead -1 FirstWrite -1}
		K11_2 {Type I LastRead -1 FirstWrite -1}
		K12_2 {Type I LastRead -1 FirstWrite -1}
		K13_2 {Type I LastRead -1 FirstWrite -1}
		K21_2 {Type I LastRead -1 FirstWrite -1}
		K22_2 {Type I LastRead -1 FirstWrite -1}
		K23_2 {Type I LastRead -1 FirstWrite -1}
		K31_2 {Type I LastRead -1 FirstWrite -1}
		K32_2 {Type I LastRead -1 FirstWrite -1}
		K33_2 {Type I LastRead -1 FirstWrite -1}
		YOffset {Type I LastRead -1 FirstWrite -1}
		UOffset {Type I LastRead -1 FirstWrite -1}
		VOffset {Type I LastRead -1 FirstWrite -1}
		m_axis_video_V_data_V {Type O LastRead -1 FirstWrite 1}
		m_axis_video_V_keep_V {Type O LastRead -1 FirstWrite 1}
		m_axis_video_V_strb_V {Type O LastRead -1 FirstWrite 1}
		m_axis_video_V_user_V {Type O LastRead -1 FirstWrite 1}
		m_axis_video_V_last_V {Type O LastRead -1 FirstWrite 1}
		m_axis_video_V_id_V {Type O LastRead -1 FirstWrite 1}
		m_axis_video_V_dest_V {Type O LastRead -1 FirstWrite 1}}
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
	{"Name" : "Latency", "Min" : "4436", "Max" : "8316012"}
	, {"Name" : "Interval", "Min" : "4437", "Max" : "8316013"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	s_axis_video_V_data_V { axis {  { s_axis_video_TDATA in_data 0 24 } } }
	s_axis_video_V_keep_V { axis {  { s_axis_video_TKEEP in_data 0 3 } } }
	s_axis_video_V_strb_V { axis {  { s_axis_video_TSTRB in_data 0 3 } } }
	s_axis_video_V_user_V { axis {  { s_axis_video_TUSER in_data 0 1 } } }
	s_axis_video_V_last_V { axis {  { s_axis_video_TLAST in_data 0 1 } } }
	s_axis_video_V_id_V { axis {  { s_axis_video_TID in_data 0 1 } } }
	s_axis_video_V_dest_V { axis {  { s_axis_video_TVALID in_vld 0 1 }  { s_axis_video_TREADY in_acc 1 1 }  { s_axis_video_TDEST in_data 0 1 } } }
	s_axis_video1_V_data_V { axis {  { s_axis_video1_TDATA in_data 0 24 } } }
	s_axis_video1_V_keep_V { axis {  { s_axis_video1_TKEEP in_data 0 3 } } }
	s_axis_video1_V_strb_V { axis {  { s_axis_video1_TSTRB in_data 0 3 } } }
	s_axis_video1_V_user_V { axis {  { s_axis_video1_TUSER in_data 0 1 } } }
	s_axis_video1_V_last_V { axis {  { s_axis_video1_TLAST in_data 0 1 } } }
	s_axis_video1_V_id_V { axis {  { s_axis_video1_TID in_data 0 1 } } }
	s_axis_video1_V_dest_V { axis {  { s_axis_video1_TVALID in_vld 0 1 }  { s_axis_video1_TREADY in_acc 1 1 }  { s_axis_video1_TDEST in_data 0 1 } } }
	s_axis_video2_V_data_V { axis {  { s_axis_video2_TDATA in_data 0 24 } } }
	s_axis_video2_V_keep_V { axis {  { s_axis_video2_TKEEP in_data 0 3 } } }
	s_axis_video2_V_strb_V { axis {  { s_axis_video2_TSTRB in_data 0 3 } } }
	s_axis_video2_V_user_V { axis {  { s_axis_video2_TUSER in_data 0 1 } } }
	s_axis_video2_V_last_V { axis {  { s_axis_video2_TLAST in_data 0 1 } } }
	s_axis_video2_V_id_V { axis {  { s_axis_video2_TID in_data 0 1 } } }
	s_axis_video2_V_dest_V { axis {  { s_axis_video2_TVALID in_vld 0 1 }  { s_axis_video2_TREADY in_acc 1 1 }  { s_axis_video2_TDEST in_data 0 1 } } }
	layerAlpha_0 { ap_none {  { layerAlpha_0 in_data 0 16 } } }
	layerStartX_0 { ap_none {  { layerStartX_0 in_data 0 16 } } }
	layerStartY_0 { ap_none {  { layerStartY_0 in_data 0 16 } } }
	layerWidth_0 { ap_none {  { layerWidth_0 in_data 0 16 } } }
	layerHeight_0 { ap_none {  { layerHeight_0 in_data 0 16 } } }
	layerScaleFactor_0 { ap_none {  { layerScaleFactor_0 in_data 0 8 } } }
	layerVideoFormat { ap_memory {  { layerVideoFormat_address0 mem_address 1 2 }  { layerVideoFormat_ce0 mem_ce 1 1 }  { layerVideoFormat_we0 mem_we 1 1 }  { layerVideoFormat_d0 mem_din 1 8 }  { layerVideoFormat_q0 mem_dout 0 8 }  { layerVideoFormat_address1 MemPortADDR2 1 2 }  { layerVideoFormat_ce1 MemPortCE2 1 1 }  { layerVideoFormat_we1 MemPortWE2 1 1 }  { layerVideoFormat_d1 MemPortDIN2 1 8 }  { layerVideoFormat_q1 MemPortDOUT2 0 8 } } }
	layerStride_0 { ap_none {  { layerStride_0 in_data 0 16 } } }
	K11 { ap_none {  { K11 in_data 0 32 } } }
	K12 { ap_none {  { K12 in_data 0 32 } } }
	K13 { ap_none {  { K13 in_data 0 32 } } }
	K21 { ap_none {  { K21 in_data 0 32 } } }
	K22 { ap_none {  { K22 in_data 0 32 } } }
	K23 { ap_none {  { K23 in_data 0 32 } } }
	K31 { ap_none {  { K31 in_data 0 32 } } }
	K32 { ap_none {  { K32 in_data 0 32 } } }
	K33 { ap_none {  { K33 in_data 0 32 } } }
	ROffset { ap_none {  { ROffset in_data 0 32 } } }
	GOffset { ap_none {  { GOffset in_data 0 32 } } }
	BOffset { ap_none {  { BOffset in_data 0 32 } } }
	K11_2 { ap_none {  { K11_2 in_data 0 32 } } }
	K12_2 { ap_none {  { K12_2 in_data 0 32 } } }
	K13_2 { ap_none {  { K13_2 in_data 0 32 } } }
	K21_2 { ap_none {  { K21_2 in_data 0 32 } } }
	K22_2 { ap_none {  { K22_2 in_data 0 32 } } }
	K23_2 { ap_none {  { K23_2 in_data 0 32 } } }
	K31_2 { ap_none {  { K31_2 in_data 0 32 } } }
	K32_2 { ap_none {  { K32_2 in_data 0 32 } } }
	K33_2 { ap_none {  { K33_2 in_data 0 32 } } }
	YOffset { ap_none {  { YOffset in_data 0 32 } } }
	UOffset { ap_none {  { UOffset in_data 0 32 } } }
	VOffset { ap_none {  { VOffset in_data 0 32 } } }
	m_axis_video_V_data_V { axis {  { m_axis_video_TDATA out_data 1 24 } } }
	m_axis_video_V_keep_V { axis {  { m_axis_video_TKEEP out_data 1 3 } } }
	m_axis_video_V_strb_V { axis {  { m_axis_video_TSTRB out_data 1 3 } } }
	m_axis_video_V_user_V { axis {  { m_axis_video_TUSER out_data 1 1 } } }
	m_axis_video_V_last_V { axis {  { m_axis_video_TLAST out_data 1 1 } } }
	m_axis_video_V_id_V { axis {  { m_axis_video_TID out_data 1 1 } } }
	m_axis_video_V_dest_V { axis {  { m_axis_video_TVALID out_vld 1 1 }  { m_axis_video_TREADY out_acc 0 1 }  { m_axis_video_TDEST out_data 1 1 } } }
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
