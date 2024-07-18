#include "hls_signal_handler.h"
#include <algorithm>
#include <complex>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <exception>
#include <fstream>
#include <iomanip>
#include <iostream>
#include <map>
#include "ap_fixed.h"
#include "ap_int.h"
#include "autopilot_cbe.h"
#include "hls_half.h"
#include "hls_directio.h"
#include "hls_stream.h"

using namespace std;

// wrapc file define:
#define AUTOTB_TVIN_s_axis_video_V_data_V "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvin_s_axis_video_V_data_V.dat"
#define AUTOTB_TVOUT_s_axis_video_V_data_V "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvout_s_axis_video_V_data_V.dat"
#define AUTOTB_TVIN_s_axis_video_V_keep_V "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvin_s_axis_video_V_keep_V.dat"
#define AUTOTB_TVOUT_s_axis_video_V_keep_V "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvout_s_axis_video_V_keep_V.dat"
#define AUTOTB_TVIN_s_axis_video_V_strb_V "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvin_s_axis_video_V_strb_V.dat"
#define AUTOTB_TVOUT_s_axis_video_V_strb_V "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvout_s_axis_video_V_strb_V.dat"
#define AUTOTB_TVIN_s_axis_video_V_user_V "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvin_s_axis_video_V_user_V.dat"
#define AUTOTB_TVOUT_s_axis_video_V_user_V "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvout_s_axis_video_V_user_V.dat"
#define AUTOTB_TVIN_s_axis_video_V_last_V "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvin_s_axis_video_V_last_V.dat"
#define AUTOTB_TVOUT_s_axis_video_V_last_V "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvout_s_axis_video_V_last_V.dat"
#define AUTOTB_TVIN_s_axis_video_V_id_V "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvin_s_axis_video_V_id_V.dat"
#define AUTOTB_TVOUT_s_axis_video_V_id_V "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvout_s_axis_video_V_id_V.dat"
#define AUTOTB_TVIN_s_axis_video_V_dest_V "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvin_s_axis_video_V_dest_V.dat"
#define AUTOTB_TVOUT_s_axis_video_V_dest_V "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvout_s_axis_video_V_dest_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_video_V_data_V "../tv/stream_size/stream_size_in_s_axis_video_V_data_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_video_V_data_V "../tv/stream_size/stream_ingress_status_s_axis_video_V_data_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_video_V_keep_V "../tv/stream_size/stream_size_in_s_axis_video_V_keep_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_video_V_keep_V "../tv/stream_size/stream_ingress_status_s_axis_video_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_video_V_strb_V "../tv/stream_size/stream_size_in_s_axis_video_V_strb_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_video_V_strb_V "../tv/stream_size/stream_ingress_status_s_axis_video_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_video_V_user_V "../tv/stream_size/stream_size_in_s_axis_video_V_user_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_video_V_user_V "../tv/stream_size/stream_ingress_status_s_axis_video_V_user_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_video_V_last_V "../tv/stream_size/stream_size_in_s_axis_video_V_last_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_video_V_last_V "../tv/stream_size/stream_ingress_status_s_axis_video_V_last_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_video_V_id_V "../tv/stream_size/stream_size_in_s_axis_video_V_id_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_video_V_id_V "../tv/stream_size/stream_ingress_status_s_axis_video_V_id_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_video_V_dest_V "../tv/stream_size/stream_size_in_s_axis_video_V_dest_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_video_V_dest_V "../tv/stream_size/stream_ingress_status_s_axis_video_V_dest_V.dat"
#define AUTOTB_TVIN_s_axis_video1_V_data_V "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvin_s_axis_video1_V_data_V.dat"
#define AUTOTB_TVOUT_s_axis_video1_V_data_V "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvout_s_axis_video1_V_data_V.dat"
#define AUTOTB_TVIN_s_axis_video1_V_keep_V "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvin_s_axis_video1_V_keep_V.dat"
#define AUTOTB_TVOUT_s_axis_video1_V_keep_V "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvout_s_axis_video1_V_keep_V.dat"
#define AUTOTB_TVIN_s_axis_video1_V_strb_V "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvin_s_axis_video1_V_strb_V.dat"
#define AUTOTB_TVOUT_s_axis_video1_V_strb_V "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvout_s_axis_video1_V_strb_V.dat"
#define AUTOTB_TVIN_s_axis_video1_V_user_V "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvin_s_axis_video1_V_user_V.dat"
#define AUTOTB_TVOUT_s_axis_video1_V_user_V "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvout_s_axis_video1_V_user_V.dat"
#define AUTOTB_TVIN_s_axis_video1_V_last_V "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvin_s_axis_video1_V_last_V.dat"
#define AUTOTB_TVOUT_s_axis_video1_V_last_V "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvout_s_axis_video1_V_last_V.dat"
#define AUTOTB_TVIN_s_axis_video1_V_id_V "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvin_s_axis_video1_V_id_V.dat"
#define AUTOTB_TVOUT_s_axis_video1_V_id_V "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvout_s_axis_video1_V_id_V.dat"
#define AUTOTB_TVIN_s_axis_video1_V_dest_V "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvin_s_axis_video1_V_dest_V.dat"
#define AUTOTB_TVOUT_s_axis_video1_V_dest_V "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvout_s_axis_video1_V_dest_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_video1_V_data_V "../tv/stream_size/stream_size_in_s_axis_video1_V_data_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_video1_V_data_V "../tv/stream_size/stream_ingress_status_s_axis_video1_V_data_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_video1_V_keep_V "../tv/stream_size/stream_size_in_s_axis_video1_V_keep_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_video1_V_keep_V "../tv/stream_size/stream_ingress_status_s_axis_video1_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_video1_V_strb_V "../tv/stream_size/stream_size_in_s_axis_video1_V_strb_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_video1_V_strb_V "../tv/stream_size/stream_ingress_status_s_axis_video1_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_video1_V_user_V "../tv/stream_size/stream_size_in_s_axis_video1_V_user_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_video1_V_user_V "../tv/stream_size/stream_ingress_status_s_axis_video1_V_user_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_video1_V_last_V "../tv/stream_size/stream_size_in_s_axis_video1_V_last_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_video1_V_last_V "../tv/stream_size/stream_ingress_status_s_axis_video1_V_last_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_video1_V_id_V "../tv/stream_size/stream_size_in_s_axis_video1_V_id_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_video1_V_id_V "../tv/stream_size/stream_ingress_status_s_axis_video1_V_id_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_video1_V_dest_V "../tv/stream_size/stream_size_in_s_axis_video1_V_dest_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_video1_V_dest_V "../tv/stream_size/stream_ingress_status_s_axis_video1_V_dest_V.dat"
#define AUTOTB_TVIN_s_axis_video2_V_data_V "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvin_s_axis_video2_V_data_V.dat"
#define AUTOTB_TVOUT_s_axis_video2_V_data_V "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvout_s_axis_video2_V_data_V.dat"
#define AUTOTB_TVIN_s_axis_video2_V_keep_V "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvin_s_axis_video2_V_keep_V.dat"
#define AUTOTB_TVOUT_s_axis_video2_V_keep_V "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvout_s_axis_video2_V_keep_V.dat"
#define AUTOTB_TVIN_s_axis_video2_V_strb_V "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvin_s_axis_video2_V_strb_V.dat"
#define AUTOTB_TVOUT_s_axis_video2_V_strb_V "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvout_s_axis_video2_V_strb_V.dat"
#define AUTOTB_TVIN_s_axis_video2_V_user_V "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvin_s_axis_video2_V_user_V.dat"
#define AUTOTB_TVOUT_s_axis_video2_V_user_V "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvout_s_axis_video2_V_user_V.dat"
#define AUTOTB_TVIN_s_axis_video2_V_last_V "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvin_s_axis_video2_V_last_V.dat"
#define AUTOTB_TVOUT_s_axis_video2_V_last_V "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvout_s_axis_video2_V_last_V.dat"
#define AUTOTB_TVIN_s_axis_video2_V_id_V "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvin_s_axis_video2_V_id_V.dat"
#define AUTOTB_TVOUT_s_axis_video2_V_id_V "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvout_s_axis_video2_V_id_V.dat"
#define AUTOTB_TVIN_s_axis_video2_V_dest_V "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvin_s_axis_video2_V_dest_V.dat"
#define AUTOTB_TVOUT_s_axis_video2_V_dest_V "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvout_s_axis_video2_V_dest_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_video2_V_data_V "../tv/stream_size/stream_size_in_s_axis_video2_V_data_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_video2_V_data_V "../tv/stream_size/stream_ingress_status_s_axis_video2_V_data_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_video2_V_keep_V "../tv/stream_size/stream_size_in_s_axis_video2_V_keep_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_video2_V_keep_V "../tv/stream_size/stream_ingress_status_s_axis_video2_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_video2_V_strb_V "../tv/stream_size/stream_size_in_s_axis_video2_V_strb_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_video2_V_strb_V "../tv/stream_size/stream_ingress_status_s_axis_video2_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_video2_V_user_V "../tv/stream_size/stream_size_in_s_axis_video2_V_user_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_video2_V_user_V "../tv/stream_size/stream_ingress_status_s_axis_video2_V_user_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_video2_V_last_V "../tv/stream_size/stream_size_in_s_axis_video2_V_last_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_video2_V_last_V "../tv/stream_size/stream_ingress_status_s_axis_video2_V_last_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_video2_V_id_V "../tv/stream_size/stream_size_in_s_axis_video2_V_id_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_video2_V_id_V "../tv/stream_size/stream_ingress_status_s_axis_video2_V_id_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_video2_V_dest_V "../tv/stream_size/stream_size_in_s_axis_video2_V_dest_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_video2_V_dest_V "../tv/stream_size/stream_ingress_status_s_axis_video2_V_dest_V.dat"
#define AUTOTB_TVIN_width "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvin_width.dat"
#define AUTOTB_TVOUT_width "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvout_width.dat"
#define AUTOTB_TVIN_height "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvin_height.dat"
#define AUTOTB_TVOUT_height "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvout_height.dat"
#define AUTOTB_TVIN_video_format "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvin_video_format.dat"
#define AUTOTB_TVOUT_video_format "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvout_video_format.dat"
#define AUTOTB_TVIN_background_Y_R "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvin_background_Y_R.dat"
#define AUTOTB_TVOUT_background_Y_R "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvout_background_Y_R.dat"
#define AUTOTB_TVIN_background_U_G "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvin_background_U_G.dat"
#define AUTOTB_TVOUT_background_U_G "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvout_background_U_G.dat"
#define AUTOTB_TVIN_background_V_B "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvin_background_V_B.dat"
#define AUTOTB_TVOUT_background_V_B "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvout_background_V_B.dat"
#define AUTOTB_TVIN_layerEnable "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvin_layerEnable.dat"
#define AUTOTB_TVOUT_layerEnable "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvout_layerEnable.dat"
#define AUTOTB_TVIN_layerAlpha_0 "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvin_layerAlpha_0.dat"
#define AUTOTB_TVOUT_layerAlpha_0 "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvout_layerAlpha_0.dat"
#define AUTOTB_TVIN_layerAlpha_1 "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvin_layerAlpha_1.dat"
#define AUTOTB_TVOUT_layerAlpha_1 "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvout_layerAlpha_1.dat"
#define AUTOTB_TVIN_layerAlpha_2 "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvin_layerAlpha_2.dat"
#define AUTOTB_TVOUT_layerAlpha_2 "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvout_layerAlpha_2.dat"
#define AUTOTB_TVIN_layerStartX_0 "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvin_layerStartX_0.dat"
#define AUTOTB_TVOUT_layerStartX_0 "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvout_layerStartX_0.dat"
#define AUTOTB_TVIN_layerStartX_1 "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvin_layerStartX_1.dat"
#define AUTOTB_TVOUT_layerStartX_1 "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvout_layerStartX_1.dat"
#define AUTOTB_TVIN_layerStartX_2 "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvin_layerStartX_2.dat"
#define AUTOTB_TVOUT_layerStartX_2 "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvout_layerStartX_2.dat"
#define AUTOTB_TVIN_layerStartY_0 "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvin_layerStartY_0.dat"
#define AUTOTB_TVOUT_layerStartY_0 "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvout_layerStartY_0.dat"
#define AUTOTB_TVIN_layerStartY_1 "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvin_layerStartY_1.dat"
#define AUTOTB_TVOUT_layerStartY_1 "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvout_layerStartY_1.dat"
#define AUTOTB_TVIN_layerStartY_2 "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvin_layerStartY_2.dat"
#define AUTOTB_TVOUT_layerStartY_2 "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvout_layerStartY_2.dat"
#define AUTOTB_TVIN_layerWidth_0 "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvin_layerWidth_0.dat"
#define AUTOTB_TVOUT_layerWidth_0 "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvout_layerWidth_0.dat"
#define AUTOTB_TVIN_layerWidth_1 "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvin_layerWidth_1.dat"
#define AUTOTB_TVOUT_layerWidth_1 "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvout_layerWidth_1.dat"
#define AUTOTB_TVIN_layerWidth_2 "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvin_layerWidth_2.dat"
#define AUTOTB_TVOUT_layerWidth_2 "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvout_layerWidth_2.dat"
#define AUTOTB_TVIN_layerHeight_0 "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvin_layerHeight_0.dat"
#define AUTOTB_TVOUT_layerHeight_0 "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvout_layerHeight_0.dat"
#define AUTOTB_TVIN_layerHeight_1 "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvin_layerHeight_1.dat"
#define AUTOTB_TVOUT_layerHeight_1 "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvout_layerHeight_1.dat"
#define AUTOTB_TVIN_layerHeight_2 "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvin_layerHeight_2.dat"
#define AUTOTB_TVOUT_layerHeight_2 "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvout_layerHeight_2.dat"
#define AUTOTB_TVIN_layerScaleFactor_0 "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvin_layerScaleFactor_0.dat"
#define AUTOTB_TVOUT_layerScaleFactor_0 "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvout_layerScaleFactor_0.dat"
#define AUTOTB_TVIN_layerScaleFactor_1 "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvin_layerScaleFactor_1.dat"
#define AUTOTB_TVOUT_layerScaleFactor_1 "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvout_layerScaleFactor_1.dat"
#define AUTOTB_TVIN_layerScaleFactor_2 "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvin_layerScaleFactor_2.dat"
#define AUTOTB_TVOUT_layerScaleFactor_2 "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvout_layerScaleFactor_2.dat"
#define AUTOTB_TVIN_layerVideoFormat "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvin_layerVideoFormat.dat"
#define AUTOTB_TVOUT_layerVideoFormat "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvout_layerVideoFormat.dat"
#define AUTOTB_TVIN_layerStride_0 "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvin_layerStride_0.dat"
#define AUTOTB_TVOUT_layerStride_0 "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvout_layerStride_0.dat"
#define AUTOTB_TVIN_layerStride_1 "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvin_layerStride_1.dat"
#define AUTOTB_TVOUT_layerStride_1 "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvout_layerStride_1.dat"
#define AUTOTB_TVIN_layerStride_2 "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvin_layerStride_2.dat"
#define AUTOTB_TVOUT_layerStride_2 "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvout_layerStride_2.dat"
#define AUTOTB_TVIN_reserve "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvin_reserve.dat"
#define AUTOTB_TVOUT_reserve "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvout_reserve.dat"
#define AUTOTB_TVIN_K11 "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvin_K11.dat"
#define AUTOTB_TVOUT_K11 "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvout_K11.dat"
#define AUTOTB_TVIN_K12 "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvin_K12.dat"
#define AUTOTB_TVOUT_K12 "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvout_K12.dat"
#define AUTOTB_TVIN_K13 "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvin_K13.dat"
#define AUTOTB_TVOUT_K13 "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvout_K13.dat"
#define AUTOTB_TVIN_K21 "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvin_K21.dat"
#define AUTOTB_TVOUT_K21 "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvout_K21.dat"
#define AUTOTB_TVIN_K22 "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvin_K22.dat"
#define AUTOTB_TVOUT_K22 "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvout_K22.dat"
#define AUTOTB_TVIN_K23 "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvin_K23.dat"
#define AUTOTB_TVOUT_K23 "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvout_K23.dat"
#define AUTOTB_TVIN_K31 "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvin_K31.dat"
#define AUTOTB_TVOUT_K31 "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvout_K31.dat"
#define AUTOTB_TVIN_K32 "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvin_K32.dat"
#define AUTOTB_TVOUT_K32 "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvout_K32.dat"
#define AUTOTB_TVIN_K33 "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvin_K33.dat"
#define AUTOTB_TVOUT_K33 "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvout_K33.dat"
#define AUTOTB_TVIN_ROffset "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvin_ROffset.dat"
#define AUTOTB_TVOUT_ROffset "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvout_ROffset.dat"
#define AUTOTB_TVIN_GOffset "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvin_GOffset.dat"
#define AUTOTB_TVOUT_GOffset "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvout_GOffset.dat"
#define AUTOTB_TVIN_BOffset "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvin_BOffset.dat"
#define AUTOTB_TVOUT_BOffset "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvout_BOffset.dat"
#define AUTOTB_TVIN_K11_2 "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvin_K11_2.dat"
#define AUTOTB_TVOUT_K11_2 "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvout_K11_2.dat"
#define AUTOTB_TVIN_K12_2 "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvin_K12_2.dat"
#define AUTOTB_TVOUT_K12_2 "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvout_K12_2.dat"
#define AUTOTB_TVIN_K13_2 "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvin_K13_2.dat"
#define AUTOTB_TVOUT_K13_2 "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvout_K13_2.dat"
#define AUTOTB_TVIN_K21_2 "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvin_K21_2.dat"
#define AUTOTB_TVOUT_K21_2 "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvout_K21_2.dat"
#define AUTOTB_TVIN_K22_2 "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvin_K22_2.dat"
#define AUTOTB_TVOUT_K22_2 "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvout_K22_2.dat"
#define AUTOTB_TVIN_K23_2 "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvin_K23_2.dat"
#define AUTOTB_TVOUT_K23_2 "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvout_K23_2.dat"
#define AUTOTB_TVIN_K31_2 "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvin_K31_2.dat"
#define AUTOTB_TVOUT_K31_2 "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvout_K31_2.dat"
#define AUTOTB_TVIN_K32_2 "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvin_K32_2.dat"
#define AUTOTB_TVOUT_K32_2 "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvout_K32_2.dat"
#define AUTOTB_TVIN_K33_2 "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvin_K33_2.dat"
#define AUTOTB_TVOUT_K33_2 "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvout_K33_2.dat"
#define AUTOTB_TVIN_YOffset "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvin_YOffset.dat"
#define AUTOTB_TVOUT_YOffset "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvout_YOffset.dat"
#define AUTOTB_TVIN_UOffset "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvin_UOffset.dat"
#define AUTOTB_TVOUT_UOffset "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvout_UOffset.dat"
#define AUTOTB_TVIN_VOffset "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvin_VOffset.dat"
#define AUTOTB_TVOUT_VOffset "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvout_VOffset.dat"
#define AUTOTB_TVIN_m_axis_video_V_data_V "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvin_m_axis_video_V_data_V.dat"
#define AUTOTB_TVOUT_m_axis_video_V_data_V "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvout_m_axis_video_V_data_V.dat"
#define AUTOTB_TVIN_m_axis_video_V_keep_V "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvin_m_axis_video_V_keep_V.dat"
#define AUTOTB_TVOUT_m_axis_video_V_keep_V "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvout_m_axis_video_V_keep_V.dat"
#define AUTOTB_TVIN_m_axis_video_V_strb_V "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvin_m_axis_video_V_strb_V.dat"
#define AUTOTB_TVOUT_m_axis_video_V_strb_V "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvout_m_axis_video_V_strb_V.dat"
#define AUTOTB_TVIN_m_axis_video_V_user_V "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvin_m_axis_video_V_user_V.dat"
#define AUTOTB_TVOUT_m_axis_video_V_user_V "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvout_m_axis_video_V_user_V.dat"
#define AUTOTB_TVIN_m_axis_video_V_last_V "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvin_m_axis_video_V_last_V.dat"
#define AUTOTB_TVOUT_m_axis_video_V_last_V "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvout_m_axis_video_V_last_V.dat"
#define AUTOTB_TVIN_m_axis_video_V_id_V "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvin_m_axis_video_V_id_V.dat"
#define AUTOTB_TVOUT_m_axis_video_V_id_V "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvout_m_axis_video_V_id_V.dat"
#define AUTOTB_TVIN_m_axis_video_V_dest_V "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvin_m_axis_video_V_dest_V.dat"
#define AUTOTB_TVOUT_m_axis_video_V_dest_V "../tv/cdatafile/c.main_design_v_mix_0_0_v_mix.autotvout_m_axis_video_V_dest_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_video_V_data_V "../tv/stream_size/stream_size_out_m_axis_video_V_data_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_video_V_data_V "../tv/stream_size/stream_egress_status_m_axis_video_V_data_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_video_V_keep_V "../tv/stream_size/stream_size_out_m_axis_video_V_keep_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_video_V_keep_V "../tv/stream_size/stream_egress_status_m_axis_video_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_video_V_strb_V "../tv/stream_size/stream_size_out_m_axis_video_V_strb_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_video_V_strb_V "../tv/stream_size/stream_egress_status_m_axis_video_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_video_V_user_V "../tv/stream_size/stream_size_out_m_axis_video_V_user_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_video_V_user_V "../tv/stream_size/stream_egress_status_m_axis_video_V_user_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_video_V_last_V "../tv/stream_size/stream_size_out_m_axis_video_V_last_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_video_V_last_V "../tv/stream_size/stream_egress_status_m_axis_video_V_last_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_video_V_id_V "../tv/stream_size/stream_size_out_m_axis_video_V_id_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_video_V_id_V "../tv/stream_size/stream_egress_status_m_axis_video_V_id_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_video_V_dest_V "../tv/stream_size/stream_size_out_m_axis_video_V_dest_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_video_V_dest_V "../tv/stream_size/stream_egress_status_m_axis_video_V_dest_V.dat"


// tvout file define:
#define AUTOTB_TVOUT_PC_s_axis_video_V_data_V "../tv/rtldatafile/rtl.main_design_v_mix_0_0_v_mix.autotvout_s_axis_video_V_data_V.dat"
#define AUTOTB_TVOUT_PC_s_axis_video_V_keep_V "../tv/rtldatafile/rtl.main_design_v_mix_0_0_v_mix.autotvout_s_axis_video_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_s_axis_video_V_strb_V "../tv/rtldatafile/rtl.main_design_v_mix_0_0_v_mix.autotvout_s_axis_video_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_s_axis_video_V_user_V "../tv/rtldatafile/rtl.main_design_v_mix_0_0_v_mix.autotvout_s_axis_video_V_user_V.dat"
#define AUTOTB_TVOUT_PC_s_axis_video_V_last_V "../tv/rtldatafile/rtl.main_design_v_mix_0_0_v_mix.autotvout_s_axis_video_V_last_V.dat"
#define AUTOTB_TVOUT_PC_s_axis_video_V_id_V "../tv/rtldatafile/rtl.main_design_v_mix_0_0_v_mix.autotvout_s_axis_video_V_id_V.dat"
#define AUTOTB_TVOUT_PC_s_axis_video_V_dest_V "../tv/rtldatafile/rtl.main_design_v_mix_0_0_v_mix.autotvout_s_axis_video_V_dest_V.dat"
#define AUTOTB_TVOUT_PC_s_axis_video1_V_data_V "../tv/rtldatafile/rtl.main_design_v_mix_0_0_v_mix.autotvout_s_axis_video1_V_data_V.dat"
#define AUTOTB_TVOUT_PC_s_axis_video1_V_keep_V "../tv/rtldatafile/rtl.main_design_v_mix_0_0_v_mix.autotvout_s_axis_video1_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_s_axis_video1_V_strb_V "../tv/rtldatafile/rtl.main_design_v_mix_0_0_v_mix.autotvout_s_axis_video1_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_s_axis_video1_V_user_V "../tv/rtldatafile/rtl.main_design_v_mix_0_0_v_mix.autotvout_s_axis_video1_V_user_V.dat"
#define AUTOTB_TVOUT_PC_s_axis_video1_V_last_V "../tv/rtldatafile/rtl.main_design_v_mix_0_0_v_mix.autotvout_s_axis_video1_V_last_V.dat"
#define AUTOTB_TVOUT_PC_s_axis_video1_V_id_V "../tv/rtldatafile/rtl.main_design_v_mix_0_0_v_mix.autotvout_s_axis_video1_V_id_V.dat"
#define AUTOTB_TVOUT_PC_s_axis_video1_V_dest_V "../tv/rtldatafile/rtl.main_design_v_mix_0_0_v_mix.autotvout_s_axis_video1_V_dest_V.dat"
#define AUTOTB_TVOUT_PC_s_axis_video2_V_data_V "../tv/rtldatafile/rtl.main_design_v_mix_0_0_v_mix.autotvout_s_axis_video2_V_data_V.dat"
#define AUTOTB_TVOUT_PC_s_axis_video2_V_keep_V "../tv/rtldatafile/rtl.main_design_v_mix_0_0_v_mix.autotvout_s_axis_video2_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_s_axis_video2_V_strb_V "../tv/rtldatafile/rtl.main_design_v_mix_0_0_v_mix.autotvout_s_axis_video2_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_s_axis_video2_V_user_V "../tv/rtldatafile/rtl.main_design_v_mix_0_0_v_mix.autotvout_s_axis_video2_V_user_V.dat"
#define AUTOTB_TVOUT_PC_s_axis_video2_V_last_V "../tv/rtldatafile/rtl.main_design_v_mix_0_0_v_mix.autotvout_s_axis_video2_V_last_V.dat"
#define AUTOTB_TVOUT_PC_s_axis_video2_V_id_V "../tv/rtldatafile/rtl.main_design_v_mix_0_0_v_mix.autotvout_s_axis_video2_V_id_V.dat"
#define AUTOTB_TVOUT_PC_s_axis_video2_V_dest_V "../tv/rtldatafile/rtl.main_design_v_mix_0_0_v_mix.autotvout_s_axis_video2_V_dest_V.dat"
#define AUTOTB_TVOUT_PC_m_axis_video_V_data_V "../tv/rtldatafile/rtl.main_design_v_mix_0_0_v_mix.autotvout_m_axis_video_V_data_V.dat"
#define AUTOTB_TVOUT_PC_m_axis_video_V_keep_V "../tv/rtldatafile/rtl.main_design_v_mix_0_0_v_mix.autotvout_m_axis_video_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_m_axis_video_V_strb_V "../tv/rtldatafile/rtl.main_design_v_mix_0_0_v_mix.autotvout_m_axis_video_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_m_axis_video_V_user_V "../tv/rtldatafile/rtl.main_design_v_mix_0_0_v_mix.autotvout_m_axis_video_V_user_V.dat"
#define AUTOTB_TVOUT_PC_m_axis_video_V_last_V "../tv/rtldatafile/rtl.main_design_v_mix_0_0_v_mix.autotvout_m_axis_video_V_last_V.dat"
#define AUTOTB_TVOUT_PC_m_axis_video_V_id_V "../tv/rtldatafile/rtl.main_design_v_mix_0_0_v_mix.autotvout_m_axis_video_V_id_V.dat"
#define AUTOTB_TVOUT_PC_m_axis_video_V_dest_V "../tv/rtldatafile/rtl.main_design_v_mix_0_0_v_mix.autotvout_m_axis_video_V_dest_V.dat"


namespace hls::sim
{
  template<size_t n>
  struct Byte {
    unsigned char a[n];

    Byte()
    {
      for (size_t i = 0; i < n; ++i) {
        a[i] = 0;
      }
    }

    template<typename T>
    Byte<n>& operator= (const T &val)
    {
      std::memcpy(a, &val, n);
      return *this;
    }
  };

  struct SimException : public std::exception {
    const std::string msg;
    const size_t line;
    SimException(const std::string &msg, const size_t line)
      : msg(msg), line(line)
    {
    }
  };

  void errExit(const size_t line, const std::string &msg)
  {
    std::string s;
    s += "ERROR";
//  s += '(';
//  s += __FILE__;
//  s += ":";
//  s += std::to_string(line);
//  s += ')';
    s += ": ";
    s += msg;
    s += "\n";
    fputs(s.c_str(), stderr);
    exit(1);
  }
}

namespace hls::sim
{
  size_t divide_ceil(size_t a, size_t b)
  {
    return (a + b - 1) / b;
  }

  const bool little_endian()
  {
    int a = 1;
    return *(char*)&a == 1;
  }

  inline void rev_endian(unsigned char *p, size_t nbytes)
  {
    std::reverse(p, p+nbytes);
  }

  const bool LE = little_endian();

  inline size_t least_nbyte(size_t width)
  {
    return (width+7)>>3;
  }

  std::string formatData(unsigned char *pos, size_t wbits)
  {
    size_t wbytes = least_nbyte(wbits);
    size_t i = LE ? wbytes-1 : 0;
    auto next = [&] () {
      auto c = pos[i];
      LE ? --i : ++i;
      return c;
    };
    std::ostringstream ss;
    ss << "0x";
    if (int t = (wbits & 0x7)) {
      if (t <= 4) {
        unsigned char mask = (1<<t)-1;
        ss << std::hex << std::setfill('0') << std::setw(1)
           << (int) (next() & mask);
        wbytes -= 1;
      }
    }
    for (size_t i = 0; i < wbytes; ++i) {
      ss << std::hex << std::setfill('0') << std::setw(2) << (int)next();
    }
    return ss.str();
  }

  char ord(char c)
  {
    if (c >= 'a' && c <= 'f') {
      return c-'a'+10;
    } else if (c >= 'A' && c <= 'F') {
      return c-'A'+10;
    } else if (c >= '0' && c <= '9') {
      return c-'0';
    } else {
      throw SimException("Not Hexdecimal Digit", __LINE__);
    }
  }

  void unformatData(const char *data, unsigned char *put, size_t pbytes = 0)
  {
    size_t nchars = strlen(data+2);
    size_t nbytes = (nchars+1)>>1;
    if (pbytes == 0) {
      pbytes = nbytes;
    } else if (pbytes > nbytes) {
      throw SimException("Wrong size specified", __LINE__);
    }
    put = LE ? put : put+pbytes-1;
    auto nextp = [&] () {
      return LE ? put++ : put--;
    };
    const char *c = data + (nchars + 2) - 1;
    auto next = [&] () {
      char res { *c == 'x' ? (char)0 : ord(*c) };
      --c;
      return res;
    };
    for (size_t i = 0; i < pbytes; ++i) {
      char l = next();
      char h = next();
      *nextp() = (h<<4)+l;
    }
  }

  char* strip(char *s)
  {
    while (isspace(*s)) {
      ++s;
    }
    for (char *p = s+strlen(s)-1; p >= s; --p) {
      if (isspace(*p)) {
        *p = 0;
      } else {
        return s;
      }
    }
    return s;
  }

  size_t sum(const std::vector<size_t> &v)
  {
    size_t res = 0;
    for (const auto &e : v) {
      res += e;
    }
    return res;
  }

  const char* bad = "Bad TV file";
  const char* err = "Error on TV file";

  const unsigned char bmark[] = {
    0x5a, 0x5a, 0xa5, 0xa5, 0x0f, 0x0f, 0xf0, 0xf0
  };

#ifdef USE_BINARY_TV_FILE
  class Input {
    FILE *fp;
    long pos;

    void read(unsigned char *buf, size_t size)
    {
      if (fread(buf, size, 1, fp) != 1) {
        throw SimException(bad, __LINE__);
      }
      if (LE) {
        rev_endian(buf, size);
      }
    }

  public:
    void advance(size_t nbytes)
    {
      if (fseek(fp, nbytes, SEEK_CUR) == -1) {
        throw SimException(bad, __LINE__);
      }
    }

    Input(const char *path) : fp(nullptr)
    {
      fp = fopen(path, "rb");
      if (fp == nullptr) {
        errExit(__LINE__, err);
      }
    }

    void begin()
    {
      advance(8);
      pos = ftell(fp);
    }

    void reset()
    {
      fseek(fp, pos, SEEK_SET);
    }

    void into(unsigned char *param, size_t wbytes, size_t asize, size_t nbytes)
    {
      size_t n = nbytes / asize;
      size_t r = nbytes % asize;
      for (size_t i = 0; i < n; ++i) {
        read(param, wbytes);
        param += asize;
      }
      if (r > 0) {
        advance(asize-r);
        read(param, r);
      }
    }

    ~Input()
    {
      unsigned char buf[8];
      size_t res = fread(buf, 8, 1, fp);
      fclose(fp);
      if (res != 1) {
        errExit(__LINE__, bad);
      }
      if (std::memcmp(buf, bmark, 8) != 0) {
        errExit(__LINE__, bad);
      }
    }
  };

  class Output {
    FILE *fp;

    void write(unsigned char *buf, size_t size)
    {
      if (LE) {
        rev_endian(buf, size);
      }
      if (fwrite(buf, size, 1, fp) != 1) {
        throw SimException(err, __LINE__);
      }
      if (LE) {
        rev_endian(buf, size);
      }
    }

  public:
    Output(const char *path) : fp(nullptr)
    {
      fp = fopen(path, "wb");
      if (fp == nullptr) {
        errExit(__LINE__, err);
      }
    }

    void begin(size_t total)
    {
      unsigned char buf[8] = {0};
      std::memcpy(buf, &total, sizeof(buf));
      write(buf, sizeof(buf));
    }

    void from(unsigned char *param, size_t wbytes, size_t asize, size_t nbytes, size_t skip)
    {
      param -= asize*skip;
      size_t n = divide_ceil(nbytes, asize);
      for (size_t i = 0; i < n; ++i) {
        write(param, wbytes);
        param += asize;
      }
    }

    ~Output()
    {
      size_t res = fwrite(bmark, 8, 1, fp);
      fclose(fp);
      if (res != 1) {
        errExit(__LINE__, err);
      }
    }
  };
#endif

  class Reader {
    FILE *fp;
    long pos;
    int size;
    char *s;

    void readline()
    {
      s = fgets(s, size, fp);
      if (s == nullptr) {
        throw SimException(bad, __LINE__);
      }
    }

  public:
    Reader(const char *path) : fp(nullptr), size(1<<12), s(new char[size])
    {
      try {
        fp = fopen(path, "r");
        if (fp == nullptr) {
          throw SimException(err, __LINE__);
        } else {
          readline();
          static const char mark[] = "[[[runtime]]]\n";
          if (strcmp(s, mark) != 0) {
            throw SimException(bad, __LINE__);
          }
        }
      } catch (const hls::sim::SimException &e) {
        errExit(e.line, e.msg);
      }
    }

    ~Reader()
    {
      fclose(fp);
      delete[] s;
    }

    void begin()
    {
      readline();
      static const char mark[] = "[[transaction]]";
      if (strncmp(s, mark, strlen(mark)) != 0) {
        throw SimException(bad, __LINE__);
      }
      pos = ftell(fp);
    }

    void reset()
    {
      fseek(fp, pos, SEEK_SET);
    }

    void skip(size_t n)
    {
      for (size_t i = 0; i < n; ++i) {
        readline();
      }
    }

    char* next()
    {
      long pos = ftell(fp);
      readline();
      if (*s == '[') {
        fseek(fp, pos, SEEK_SET);
        return nullptr;
      }
      return strip(s);
    }

    void end()
    {
      do {
        readline();
      } while (strcmp(s, "[[/transaction]]\n") != 0);
    }
  };

  class Writer {
    FILE *fp;

    void write(const char *s)
    {
      if (fputs(s, fp) == EOF) {
        throw SimException(err, __LINE__);
      }
    }

  public:
    Writer(const char *path) : fp(nullptr)
    {
      try {
        fp = fopen(path, "w");
        if (fp == nullptr) {
          throw SimException(err, __LINE__);
        } else {
          static const char mark[] = "[[[runtime]]]\n";
          write(mark);
        }
      } catch (const hls::sim::SimException &e) {
        errExit(e.line, e.msg);
      }
    }

    virtual ~Writer()
    {
      try {
        static const char mark[] = "[[[/runtime]]]\n";
        write(mark);
      } catch (const hls::sim::SimException &e) {
        errExit(e.line, e.msg);
      }
      fclose(fp);
    }

    void begin(size_t AESL_transaction)
    {
      static const char mark[] = "[[transaction]]           ";
      write(mark);
      auto buf = std::to_string(AESL_transaction);
      buf.push_back('\n');
      buf.push_back('\0');
      write(buf.data());
    }

    void next(const char *s)
    {
      write(s);
      write("\n");
    }

    void end()
    {
      static const char mark[] = "[[/transaction]]\n";
      write(mark);
    }
  };

  bool RTLOutputCheckAndReplacement(char *data)
  {
    bool changed = false;
    for (size_t i = 2; i < strlen(data); ++i) {
      if (data[i] == 'X' || data[i] == 'x') {
        data[i] = '0';
        changed = true;
      }
    }
    return changed;
  }

  void warnOnX()
  {
    static const char msg[] =
      "WARNING: [SIM 212-201] RTL produces unknown value "
      "'x' or 'X' on some port, possible cause: "
      "There are uninitialized variables in the design.\n";
    fprintf(stderr, msg);
  }

#ifndef POST_CHECK
  class RefTCL {
    FILE *fp;
    std::ostringstream ss;

    void formatDepth()
    {
      ss << "set depth_list {\n";
      for (auto &p : depth) {
        ss << "  {" << p.first << " " << p.second << "}\n";
      }
      if (nameHBM != "") {
        ss << "  {" << nameHBM << " " << depthHBM << "}\n";
      }
      ss << "}\n";
    }

    void formatTransNum()
    {
      ss << "set trans_num " << AESL_transaction << "\n";
    }

    void formatHBM()
    {
      ss << "set HBM_ArgDict {\n"
         << "  Name " << nameHBM << "\n"
         << "  Port " << portHBM << "\n"
         << "  BitWidth " << widthHBM << "\n"
         << "}\n";
    }

    void close()
    {
      formatDepth();
      formatTransNum();
      if (nameHBM != "") {
        formatHBM();
      }
      std::string &&s { ss.str() };
      size_t res = fwrite(s.data(), s.size(), 1, fp);
      fclose(fp);
      if (res != 1) {
        errExit(__LINE__, err);
      }
    }

  public:
    std::map<const std::string, size_t> depth;
    std::string nameHBM;
    size_t depthHBM;
    std::string portHBM;
    unsigned widthHBM;
    size_t AESL_transaction;
    std::mutex mut;

    RefTCL(const char *path)
    {
      fp = fopen(path, "w");
      if (fp == nullptr) {
        errExit(__LINE__, err);
      }
    }

    void set(const char* name, size_t dep)
    {
      std::lock_guard<std::mutex> guard(mut);
      if (depth[name] < dep) {
        depth[name] = dep;
      }
    }

    ~RefTCL()
    {
      close();
    }
  };

#endif

  struct Register {
    const char* name;
    unsigned width;
#ifdef POST_CHECK
    Reader* reader;
#else
    Writer* owriter;
    Writer* iwriter;
#endif
    void* param;

#ifndef POST_CHECK
    void doTCL(RefTCL &tcl)
    {
      if (strcmp(name, "return") == 0) {
        tcl.set("ap_return", 1);
      } else {
        tcl.set(name, 1);
      }
    }
#endif
    ~Register()
    {
#ifdef POST_CHECK
      delete reader;
#else
      delete owriter;
      delete iwriter;
#endif
    }
  };

  template<typename E>
  struct DirectIO {
    unsigned width;
    const char* name;
#ifdef POST_CHECK
    Reader* reader;
#else
    Writer* writer;
    Writer* swriter;
    Writer* gwriter;
#endif
    hls::directio<E>* param;
    std::vector<E> buf;
    size_t initSize;
    size_t depth;
    bool hasWrite;

    void markSize()
    {
      initSize = param->size();
    }

    void buffer()
    {
      buf.clear();
      while (param->valid()) {
        buf.push_back(param->read());
      }
      for (auto &e : buf) {
        param->write(e);
      }
    }

#ifndef POST_CHECK
    void doTCL(RefTCL &tcl)
    {
      tcl.set(name, depth);
    }
#endif

    ~DirectIO()
    {
#ifdef POST_CHECK
      delete reader;
#else
      delete writer;
      delete swriter;
      delete gwriter;
#endif
    }
  };

  template<typename Reader, typename Writer>
  struct Memory {
    unsigned width;
    unsigned asize;
    bool hbm;
    std::vector<const char*> name;
#ifdef POST_CHECK
    Reader* reader;
#else
    Writer* owriter;
    Writer* iwriter;
#endif
    std::vector<void*> param;
    std::vector<size_t> nbytes;
    std::vector<size_t> offset;
    std::vector<bool> hasWrite;

    size_t depth()
    {
      size_t depth = 0;
      for (size_t n : nbytes) {
        depth += divide_ceil(n, asize);
      }
      return depth;
    }

#ifndef POST_CHECK
    void doTCL(RefTCL &tcl)
    {
      if (hbm) {
        tcl.nameHBM.append(name[0]);
        tcl.portHBM.append("{").append(name[0]);
        for (size_t i = 1; i < name.size(); ++i) {
          tcl.nameHBM.append("_").append(name[i]);
          tcl.portHBM.append(" ").append(name[i]);
        }
        tcl.nameHBM.append("_HBM");
        tcl.portHBM.append("}");
        tcl.widthHBM = width;
        tcl.depthHBM = divide_ceil(nbytes[0], asize);
      } else {
        tcl.set(name[0], depth());
      }
    }
#endif

    ~Memory()
    {
#ifdef POST_CHECK
      delete reader;
#else
      delete owriter;
      delete iwriter;
#endif
    }
  };

  struct A2Stream {
    unsigned width;
    unsigned asize;
    const char* name;
#ifdef POST_CHECK
    Reader* reader;
#else
    Writer* owriter;
    Writer* iwriter;
#endif
    void* param;
    size_t nbytes;
    bool hasWrite;

#ifndef POST_CHECK
    void doTCL(RefTCL &tcl)
    {
      tcl.set(name, divide_ceil(nbytes, asize));
    }
#endif

    ~A2Stream()
    {
#ifdef POST_CHECK
      delete reader;
#else
      delete owriter;
      delete iwriter;
#endif
    }
  };

  template<typename E>
  struct Stream {
    unsigned width;
    const char* name;
#ifdef POST_CHECK
    Reader* reader;
#else
    Writer* writer;
    Writer* swriter;
    Writer* gwriter;
#endif
    hls::stream<E>* param;
    std::vector<E> buf;
    size_t initSize;
    size_t depth;
    bool hasWrite;

    void markSize()
    {
      initSize = param->size();
    }

    void buffer()
    {
      buf.clear();
      while (!param->empty()) {
        buf.push_back(param->read());
      }
      for (auto &e : buf) {
        param->write(e);
      }
    }

#ifndef POST_CHECK
    void doTCL(RefTCL &tcl)
    {
      tcl.set(name, depth);
    }
#endif

    ~Stream()
    {
#ifdef POST_CHECK
      delete reader;
#else
      delete writer;
      delete swriter;
      delete gwriter;
#endif
    }
  };

#ifdef POST_CHECK
  void check(Register &port)
  {
    port.reader->begin();
    bool foundX = false;
    if (char *s = port.reader->next()) {
      foundX |= RTLOutputCheckAndReplacement(s);
      unformatData(s, (unsigned char*)port.param);
    }
    port.reader->end();
    if (foundX) {
      warnOnX();
    }
  }

  template<typename E>
  void check(DirectIO<E> &port)
  {
    if (port.hasWrite) {
      port.reader->begin();
      bool foundX = false;
      E *p = new E;
      while (char *s = port.reader->next()) {
        foundX |= RTLOutputCheckAndReplacement(s);
        unformatData(s, (unsigned char*)p);
        port.param->write(*p);
      }
      delete p;
      port.reader->end();
      if (foundX) {
        warnOnX();
      }
    } else {
      port.reader->begin();
      size_t n = 0;
      if (char *s = port.reader->next()) {
        std::istringstream ss(s);
        ss >> n;
      } else {
        throw SimException(bad, __LINE__);
      }
      port.reader->end();
      for (size_t j = 0; j < n; ++j) {
        port.param->read();
      }
    }
  }

#ifdef USE_BINARY_TV_FILE
  void checkHBM(Memory<Input, Output> &port)
  {
    port.reader->begin();
    size_t wbytes = least_nbyte(port.width);
    for (size_t i = 0; i < port.param.size(); ++i) {
      if (port.hasWrite[i]) {
        port.reader->reset();
        size_t skip = wbytes * port.offset[i];
        port.reader->advance(skip);
        port.reader->into((unsigned char*)port.param[i], wbytes,
                           port.asize, port.nbytes[i] - skip);
      }
    }
  }

  void check(Memory<Input, Output> &port)
  {
    if (port.hbm) {
      return checkHBM(port);
    } else {
      port.reader->begin();
      size_t wbytes = least_nbyte(port.width);
      for (size_t i = 0; i < port.param.size(); ++i) {
        if (port.hasWrite[i]) {
          port.reader->into((unsigned char*)port.param[i], wbytes,
                             port.asize, port.nbytes[i]);
        } else {
          size_t n = divide_ceil(port.nbytes[i], port.asize);
          port.reader->advance(port.asize*n);
        }
      }
    }
  }
#endif
  void transfer(Reader *reader, size_t nbytes, unsigned char *put, bool &foundX)
  {
    if (char *s = reader->next()) {
      foundX |= RTLOutputCheckAndReplacement(s);
      unformatData(s, put, nbytes);
    } else {
      throw SimException("No more data", __LINE__);
    }
  }

  void checkHBM(Memory<Reader, Writer> &port)
  {
    port.reader->begin();
    bool foundX = false;
    size_t wbytes = least_nbyte(port.width);
    for (size_t i = 0, last = port.param.size()-1; i <= last; ++i) {
      if (port.hasWrite[i]) {
        port.reader->skip(port.offset[i]);
        size_t n = port.nbytes[i] / port.asize - port.offset[i];
        unsigned char *put = (unsigned char*)port.param[i];
        for (size_t j = 0; j < n; ++j) {
          transfer(port.reader, wbytes, put, foundX);
          put += port.asize;
        }
        if (i < last) {
          port.reader->reset();
        }
      }
    }
    port.reader->end();
    if (foundX) {
      warnOnX();
    }
  }

  void check(Memory<Reader, Writer> &port)
  {
    if (port.hbm) {
      return checkHBM(port);
    } else {
      port.reader->begin();
      bool foundX = false;
      size_t wbytes = least_nbyte(port.width);
      for (size_t i = 0; i < port.param.size(); ++i) {
        if (port.hasWrite[i]) {
          size_t n = port.nbytes[i] / port.asize;
          size_t r = port.nbytes[i] % port.asize;
          unsigned char *put = (unsigned char*)port.param[i];
          for (size_t j = 0; j < n; ++j) {
            transfer(port.reader, wbytes, put, foundX);
            put += port.asize;
          }
          if (r > 0) {
            transfer(port.reader, r, put, foundX);
          }
        } else {
          size_t n = divide_ceil(port.nbytes[i], port.asize);
          port.reader->skip(n);
        }
      }
      port.reader->end();
      if (foundX) {
        warnOnX();
      }
    }
  }

  void check(A2Stream &port)
  {
    port.reader->begin();
    bool foundX = false;
    if (port.hasWrite) {
      size_t wbytes = least_nbyte(port.width);
      size_t n = port.nbytes / port.asize;
      size_t r = port.nbytes % port.asize;
      unsigned char *put = (unsigned char*)port.param;
      for (size_t j = 0; j < n; ++j) {
        if (char *s = port.reader->next()) {
          foundX |= RTLOutputCheckAndReplacement(s);
          unformatData(s, put, wbytes);
        }
        put += port.asize;
      }
      if (r > 0) {
        if (char *s = port.reader->next()) {
          foundX |= RTLOutputCheckAndReplacement(s);
          unformatData(s, put, r);
        }
      }
    }
    port.reader->end();
    if (foundX) {
      warnOnX();
    }
  }

  template<typename E>
  void check(Stream<E> &port)
  {
    if (port.hasWrite) {
      port.reader->begin();
      bool foundX = false;
      E *p = new E;
      while (char *s = port.reader->next()) {
        foundX |= RTLOutputCheckAndReplacement(s);
        unformatData(s, (unsigned char*)p);
        port.param->write(*p);
      }
      delete p;
      port.reader->end();
      if (foundX) {
        warnOnX();
      }
    } else {
      port.reader->begin();
      size_t n = 0;
      if (char *s = port.reader->next()) {
        std::istringstream ss(s);
        ss >> n;
      } else {
        throw SimException(bad, __LINE__);
      }
      port.reader->end();
      for (size_t j = 0; j < n; ++j) {
        port.param->read();
      }
    }
  }
#else
  void dump(Register &port, Writer *writer, size_t AESL_transaction)
  {
    writer->begin(AESL_transaction);
    std::string &&s { formatData((unsigned char*)port.param, port.width) };
    writer->next(s.data());
    writer->end();
  }

  template<typename E>
  void dump(DirectIO<E> &port, size_t AESL_transaction)
  {
    if (port.hasWrite) {
      port.writer->begin(AESL_transaction);
      port.depth = port.param->size()-port.initSize;
      for (size_t j = 0; j < port.depth; ++j) {
        std::string &&s {
          formatData((unsigned char*)&port.buf[port.initSize+j], port.width)
        };
        port.writer->next(s.c_str());
      }
      port.writer->end();

      port.swriter->begin(AESL_transaction);
      port.swriter->next(std::to_string(port.depth).c_str());
      port.swriter->end();
    } else {
      port.writer->begin(AESL_transaction);
      port.depth = port.initSize-port.param->size();
      for (size_t j = 0; j < port.depth; ++j) {
        std::string &&s {
          formatData((unsigned char*)&port.buf[j], port.width)
        };
        port.writer->next(s.c_str());
      }
      port.writer->end();

      port.swriter->begin(AESL_transaction);
      port.swriter->next(std::to_string(port.depth).c_str());
      port.swriter->end();

      port.gwriter->begin(AESL_transaction);
      size_t n = (port.depth ? port.initSize : port.depth);
      size_t d = port.depth;
      do {
        port.gwriter->next(std::to_string(n--).c_str());
      } while (d--);
      port.gwriter->end();
    }
  }

  void error_on_depth_unspecified(const char *portName)
  {
    std::string msg {"A depth specification is required for interface port "};
    msg.append("'");
    msg.append(portName);
    msg.append("'");
    msg.append(" for cosimulation.");
    throw SimException(msg, __LINE__);
  }

#ifdef USE_BINARY_TV_FILE
  void dump(Memory<Input, Output> &port, Output *writer, size_t AESL_transaction)
  {
    writer->begin(port.depth());
    size_t wbytes = least_nbyte(port.width);
    for (size_t i = 0; i < port.param.size(); ++i) {
      if (port.nbytes[i] == 0) {
        error_on_depth_unspecified(port.hbm ? port.name[i] : port.name[0]);
      }
      writer->from((unsigned char*)port.param[i], wbytes, port.asize,
                   port.nbytes[i], 0);
    }
  }

#endif
  void dump(Memory<Reader, Writer> &port, Writer *writer, size_t AESL_transaction)
  {
    writer->begin(AESL_transaction);
    for (size_t i = 0; i < port.param.size(); ++i) {
      if (port.nbytes[i] == 0) {
        error_on_depth_unspecified(port.hbm ? port.name[i] : port.name[0]);
      }
      size_t n = divide_ceil(port.nbytes[i], port.asize);
      unsigned char *put = (unsigned char*)port.param[i];
      for (size_t j = 0; j < n; ++j) {
        std::string &&s {
          formatData(put, port.width)
        };
        writer->next(s.data());
        put += port.asize;
      }
      if (port.hbm) {
        break;
      }
    }
    writer->end();
  }

  void dump(A2Stream &port, Writer *writer, size_t AESL_transaction)
  {
    writer->begin(AESL_transaction);
    if (port.nbytes == 0) {
      error_on_depth_unspecified(port.name);
    }
    size_t n = divide_ceil(port.nbytes, port.asize);
    unsigned char *put = (unsigned char*)port.param;
    for (size_t j = 0; j < n; ++j) {
      std::string &&s { formatData(put, port.width) };
      writer->next(s.data());
      put += port.asize;
    }
    writer->end();
  }

  template<typename E>
  void dump(Stream<E> &port, size_t AESL_transaction)
  {
    if (port.hasWrite) {
      port.writer->begin(AESL_transaction);
      port.depth = port.param->size()-port.initSize;
      for (size_t j = 0; j < port.depth; ++j) {
        std::string &&s {
          formatData((unsigned char*)&port.buf[port.initSize+j], port.width)
        };
        port.writer->next(s.c_str());
      }
      port.writer->end();

      port.swriter->begin(AESL_transaction);
      port.swriter->next(std::to_string(port.depth).c_str());
      port.swriter->end();
    } else {
      port.writer->begin(AESL_transaction);
      port.depth = port.initSize-port.param->size();
      for (size_t j = 0; j < port.depth; ++j) {
        std::string &&s {
          formatData((unsigned char*)&port.buf[j], port.width)
        };
        port.writer->next(s.c_str());
      }
      port.writer->end();

      port.swriter->begin(AESL_transaction);
      port.swriter->next(std::to_string(port.depth).c_str());
      port.swriter->end();

      port.gwriter->begin(AESL_transaction);
      size_t n = (port.depth ? port.initSize : port.depth);
      size_t d = port.depth;
      do {
        port.gwriter->next(std::to_string(n--).c_str());
      } while (d--);
      port.gwriter->end();
    }
  }
#endif
}



extern "C"
void v_mix_hw_stub_wrapper(void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, hls::sim::Byte<2>, hls::sim::Byte<2>, hls::sim::Byte<2>, hls::sim::Byte<2>, hls::sim::Byte<2>, hls::sim::Byte<2>, hls::sim::Byte<4>, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, hls::sim::Byte<2>, hls::sim::Byte<4>, hls::sim::Byte<4>, hls::sim::Byte<4>, hls::sim::Byte<4>, hls::sim::Byte<4>, hls::sim::Byte<4>, hls::sim::Byte<4>, hls::sim::Byte<4>, hls::sim::Byte<4>, hls::sim::Byte<4>, hls::sim::Byte<4>, hls::sim::Byte<4>, hls::sim::Byte<4>, hls::sim::Byte<4>, hls::sim::Byte<4>, hls::sim::Byte<4>, hls::sim::Byte<4>, hls::sim::Byte<4>, hls::sim::Byte<4>, hls::sim::Byte<4>, hls::sim::Byte<4>, hls::sim::Byte<4>, hls::sim::Byte<4>, hls::sim::Byte<4>, void*, void*, void*, void*, void*, void*, void*);

extern "C"
void apatb_v_mix_hw(void* __xlx_apatb_param_s_axis_video_V_data_V, void* __xlx_apatb_param_s_axis_video_V_keep_V, void* __xlx_apatb_param_s_axis_video_V_strb_V, void* __xlx_apatb_param_s_axis_video_V_user_V, void* __xlx_apatb_param_s_axis_video_V_last_V, void* __xlx_apatb_param_s_axis_video_V_id_V, void* __xlx_apatb_param_s_axis_video_V_dest_V, void* __xlx_apatb_param_s_axis_video1_V_data_V, void* __xlx_apatb_param_s_axis_video1_V_keep_V, void* __xlx_apatb_param_s_axis_video1_V_strb_V, void* __xlx_apatb_param_s_axis_video1_V_user_V, void* __xlx_apatb_param_s_axis_video1_V_last_V, void* __xlx_apatb_param_s_axis_video1_V_id_V, void* __xlx_apatb_param_s_axis_video1_V_dest_V, void* __xlx_apatb_param_s_axis_video2_V_data_V, void* __xlx_apatb_param_s_axis_video2_V_keep_V, void* __xlx_apatb_param_s_axis_video2_V_strb_V, void* __xlx_apatb_param_s_axis_video2_V_user_V, void* __xlx_apatb_param_s_axis_video2_V_last_V, void* __xlx_apatb_param_s_axis_video2_V_id_V, void* __xlx_apatb_param_s_axis_video2_V_dest_V, hls::sim::Byte<2> __xlx_apatb_param_width, hls::sim::Byte<2> __xlx_apatb_param_height, hls::sim::Byte<2> __xlx_apatb_param_video_format, hls::sim::Byte<2> __xlx_apatb_param_background_Y_R, hls::sim::Byte<2> __xlx_apatb_param_background_U_G, hls::sim::Byte<2> __xlx_apatb_param_background_V_B, hls::sim::Byte<4> __xlx_apatb_param_layerEnable, void* __xlx_apatb_param_layerAlpha_0, void* __xlx_apatb_param_layerAlpha_1, void* __xlx_apatb_param_layerAlpha_2, void* __xlx_apatb_param_layerStartX_0, void* __xlx_apatb_param_layerStartX_1, void* __xlx_apatb_param_layerStartX_2, void* __xlx_apatb_param_layerStartY_0, void* __xlx_apatb_param_layerStartY_1, void* __xlx_apatb_param_layerStartY_2, void* __xlx_apatb_param_layerWidth_0, void* __xlx_apatb_param_layerWidth_1, void* __xlx_apatb_param_layerWidth_2, void* __xlx_apatb_param_layerHeight_0, void* __xlx_apatb_param_layerHeight_1, void* __xlx_apatb_param_layerHeight_2, void* __xlx_apatb_param_layerScaleFactor_0, void* __xlx_apatb_param_layerScaleFactor_1, void* __xlx_apatb_param_layerScaleFactor_2, void* __xlx_apatb_param_layerVideoFormat, void* __xlx_apatb_param_layerStride_0, void* __xlx_apatb_param_layerStride_1, void* __xlx_apatb_param_layerStride_2, hls::sim::Byte<2> __xlx_apatb_param_reserve, hls::sim::Byte<4> __xlx_apatb_param_K11, hls::sim::Byte<4> __xlx_apatb_param_K12, hls::sim::Byte<4> __xlx_apatb_param_K13, hls::sim::Byte<4> __xlx_apatb_param_K21, hls::sim::Byte<4> __xlx_apatb_param_K22, hls::sim::Byte<4> __xlx_apatb_param_K23, hls::sim::Byte<4> __xlx_apatb_param_K31, hls::sim::Byte<4> __xlx_apatb_param_K32, hls::sim::Byte<4> __xlx_apatb_param_K33, hls::sim::Byte<4> __xlx_apatb_param_ROffset, hls::sim::Byte<4> __xlx_apatb_param_GOffset, hls::sim::Byte<4> __xlx_apatb_param_BOffset, hls::sim::Byte<4> __xlx_apatb_param_K11_2, hls::sim::Byte<4> __xlx_apatb_param_K12_2, hls::sim::Byte<4> __xlx_apatb_param_K13_2, hls::sim::Byte<4> __xlx_apatb_param_K21_2, hls::sim::Byte<4> __xlx_apatb_param_K22_2, hls::sim::Byte<4> __xlx_apatb_param_K23_2, hls::sim::Byte<4> __xlx_apatb_param_K31_2, hls::sim::Byte<4> __xlx_apatb_param_K32_2, hls::sim::Byte<4> __xlx_apatb_param_K33_2, hls::sim::Byte<4> __xlx_apatb_param_YOffset, hls::sim::Byte<4> __xlx_apatb_param_UOffset, hls::sim::Byte<4> __xlx_apatb_param_VOffset, void* __xlx_apatb_param_m_axis_video_V_data_V, void* __xlx_apatb_param_m_axis_video_V_keep_V, void* __xlx_apatb_param_m_axis_video_V_strb_V, void* __xlx_apatb_param_m_axis_video_V_user_V, void* __xlx_apatb_param_m_axis_video_V_last_V, void* __xlx_apatb_param_m_axis_video_V_id_V, void* __xlx_apatb_param_m_axis_video_V_dest_V)
{
  static hls::sim::Stream<hls::sim::Byte<4>> port0 {
    .width = 24,
    .name = "s_axis_video_V_data_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(WRAPC_STREAM_SIZE_IN_s_axis_video_V_data_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVIN_s_axis_video_V_data_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_IN_s_axis_video_V_data_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_INGRESS_STATUS_s_axis_video_V_data_V),
#endif
  };
  port0.param = (hls::stream<hls::sim::Byte<4>>*)__xlx_apatb_param_s_axis_video_V_data_V;
  port0.hasWrite = false;

  static hls::sim::Stream<hls::sim::Byte<1>> port1 {
    .width = 3,
    .name = "s_axis_video_V_keep_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(WRAPC_STREAM_SIZE_IN_s_axis_video_V_keep_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVIN_s_axis_video_V_keep_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_IN_s_axis_video_V_keep_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_INGRESS_STATUS_s_axis_video_V_keep_V),
#endif
  };
  port1.param = (hls::stream<hls::sim::Byte<1>>*)__xlx_apatb_param_s_axis_video_V_keep_V;
  port1.hasWrite = false;

  static hls::sim::Stream<hls::sim::Byte<1>> port2 {
    .width = 3,
    .name = "s_axis_video_V_strb_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(WRAPC_STREAM_SIZE_IN_s_axis_video_V_strb_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVIN_s_axis_video_V_strb_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_IN_s_axis_video_V_strb_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_INGRESS_STATUS_s_axis_video_V_strb_V),
#endif
  };
  port2.param = (hls::stream<hls::sim::Byte<1>>*)__xlx_apatb_param_s_axis_video_V_strb_V;
  port2.hasWrite = false;

  static hls::sim::Stream<hls::sim::Byte<1>> port3 {
    .width = 1,
    .name = "s_axis_video_V_user_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(WRAPC_STREAM_SIZE_IN_s_axis_video_V_user_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVIN_s_axis_video_V_user_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_IN_s_axis_video_V_user_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_INGRESS_STATUS_s_axis_video_V_user_V),
#endif
  };
  port3.param = (hls::stream<hls::sim::Byte<1>>*)__xlx_apatb_param_s_axis_video_V_user_V;
  port3.hasWrite = false;

  static hls::sim::Stream<hls::sim::Byte<1>> port4 {
    .width = 1,
    .name = "s_axis_video_V_last_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(WRAPC_STREAM_SIZE_IN_s_axis_video_V_last_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVIN_s_axis_video_V_last_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_IN_s_axis_video_V_last_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_INGRESS_STATUS_s_axis_video_V_last_V),
#endif
  };
  port4.param = (hls::stream<hls::sim::Byte<1>>*)__xlx_apatb_param_s_axis_video_V_last_V;
  port4.hasWrite = false;

  static hls::sim::Stream<hls::sim::Byte<1>> port5 {
    .width = 1,
    .name = "s_axis_video_V_id_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(WRAPC_STREAM_SIZE_IN_s_axis_video_V_id_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVIN_s_axis_video_V_id_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_IN_s_axis_video_V_id_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_INGRESS_STATUS_s_axis_video_V_id_V),
#endif
  };
  port5.param = (hls::stream<hls::sim::Byte<1>>*)__xlx_apatb_param_s_axis_video_V_id_V;
  port5.hasWrite = false;

  static hls::sim::Stream<hls::sim::Byte<1>> port6 {
    .width = 1,
    .name = "s_axis_video_V_dest_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(WRAPC_STREAM_SIZE_IN_s_axis_video_V_dest_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVIN_s_axis_video_V_dest_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_IN_s_axis_video_V_dest_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_INGRESS_STATUS_s_axis_video_V_dest_V),
#endif
  };
  port6.param = (hls::stream<hls::sim::Byte<1>>*)__xlx_apatb_param_s_axis_video_V_dest_V;
  port6.hasWrite = false;

  static hls::sim::Stream<hls::sim::Byte<4>> port7 {
    .width = 24,
    .name = "s_axis_video1_V_data_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(WRAPC_STREAM_SIZE_IN_s_axis_video1_V_data_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVIN_s_axis_video1_V_data_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_IN_s_axis_video1_V_data_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_INGRESS_STATUS_s_axis_video1_V_data_V),
#endif
  };
  port7.param = (hls::stream<hls::sim::Byte<4>>*)__xlx_apatb_param_s_axis_video1_V_data_V;
  port7.hasWrite = false;

  static hls::sim::Stream<hls::sim::Byte<1>> port8 {
    .width = 3,
    .name = "s_axis_video1_V_keep_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(WRAPC_STREAM_SIZE_IN_s_axis_video1_V_keep_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVIN_s_axis_video1_V_keep_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_IN_s_axis_video1_V_keep_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_INGRESS_STATUS_s_axis_video1_V_keep_V),
#endif
  };
  port8.param = (hls::stream<hls::sim::Byte<1>>*)__xlx_apatb_param_s_axis_video1_V_keep_V;
  port8.hasWrite = false;

  static hls::sim::Stream<hls::sim::Byte<1>> port9 {
    .width = 3,
    .name = "s_axis_video1_V_strb_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(WRAPC_STREAM_SIZE_IN_s_axis_video1_V_strb_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVIN_s_axis_video1_V_strb_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_IN_s_axis_video1_V_strb_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_INGRESS_STATUS_s_axis_video1_V_strb_V),
#endif
  };
  port9.param = (hls::stream<hls::sim::Byte<1>>*)__xlx_apatb_param_s_axis_video1_V_strb_V;
  port9.hasWrite = false;

  static hls::sim::Stream<hls::sim::Byte<1>> port10 {
    .width = 1,
    .name = "s_axis_video1_V_user_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(WRAPC_STREAM_SIZE_IN_s_axis_video1_V_user_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVIN_s_axis_video1_V_user_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_IN_s_axis_video1_V_user_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_INGRESS_STATUS_s_axis_video1_V_user_V),
#endif
  };
  port10.param = (hls::stream<hls::sim::Byte<1>>*)__xlx_apatb_param_s_axis_video1_V_user_V;
  port10.hasWrite = false;

  static hls::sim::Stream<hls::sim::Byte<1>> port11 {
    .width = 1,
    .name = "s_axis_video1_V_last_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(WRAPC_STREAM_SIZE_IN_s_axis_video1_V_last_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVIN_s_axis_video1_V_last_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_IN_s_axis_video1_V_last_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_INGRESS_STATUS_s_axis_video1_V_last_V),
#endif
  };
  port11.param = (hls::stream<hls::sim::Byte<1>>*)__xlx_apatb_param_s_axis_video1_V_last_V;
  port11.hasWrite = false;

  static hls::sim::Stream<hls::sim::Byte<1>> port12 {
    .width = 1,
    .name = "s_axis_video1_V_id_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(WRAPC_STREAM_SIZE_IN_s_axis_video1_V_id_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVIN_s_axis_video1_V_id_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_IN_s_axis_video1_V_id_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_INGRESS_STATUS_s_axis_video1_V_id_V),
#endif
  };
  port12.param = (hls::stream<hls::sim::Byte<1>>*)__xlx_apatb_param_s_axis_video1_V_id_V;
  port12.hasWrite = false;

  static hls::sim::Stream<hls::sim::Byte<1>> port13 {
    .width = 1,
    .name = "s_axis_video1_V_dest_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(WRAPC_STREAM_SIZE_IN_s_axis_video1_V_dest_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVIN_s_axis_video1_V_dest_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_IN_s_axis_video1_V_dest_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_INGRESS_STATUS_s_axis_video1_V_dest_V),
#endif
  };
  port13.param = (hls::stream<hls::sim::Byte<1>>*)__xlx_apatb_param_s_axis_video1_V_dest_V;
  port13.hasWrite = false;

  static hls::sim::Stream<hls::sim::Byte<4>> port14 {
    .width = 24,
    .name = "s_axis_video2_V_data_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(WRAPC_STREAM_SIZE_IN_s_axis_video2_V_data_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVIN_s_axis_video2_V_data_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_IN_s_axis_video2_V_data_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_INGRESS_STATUS_s_axis_video2_V_data_V),
#endif
  };
  port14.param = (hls::stream<hls::sim::Byte<4>>*)__xlx_apatb_param_s_axis_video2_V_data_V;
  port14.hasWrite = false;

  static hls::sim::Stream<hls::sim::Byte<1>> port15 {
    .width = 3,
    .name = "s_axis_video2_V_keep_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(WRAPC_STREAM_SIZE_IN_s_axis_video2_V_keep_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVIN_s_axis_video2_V_keep_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_IN_s_axis_video2_V_keep_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_INGRESS_STATUS_s_axis_video2_V_keep_V),
#endif
  };
  port15.param = (hls::stream<hls::sim::Byte<1>>*)__xlx_apatb_param_s_axis_video2_V_keep_V;
  port15.hasWrite = false;

  static hls::sim::Stream<hls::sim::Byte<1>> port16 {
    .width = 3,
    .name = "s_axis_video2_V_strb_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(WRAPC_STREAM_SIZE_IN_s_axis_video2_V_strb_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVIN_s_axis_video2_V_strb_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_IN_s_axis_video2_V_strb_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_INGRESS_STATUS_s_axis_video2_V_strb_V),
#endif
  };
  port16.param = (hls::stream<hls::sim::Byte<1>>*)__xlx_apatb_param_s_axis_video2_V_strb_V;
  port16.hasWrite = false;

  static hls::sim::Stream<hls::sim::Byte<1>> port17 {
    .width = 1,
    .name = "s_axis_video2_V_user_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(WRAPC_STREAM_SIZE_IN_s_axis_video2_V_user_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVIN_s_axis_video2_V_user_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_IN_s_axis_video2_V_user_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_INGRESS_STATUS_s_axis_video2_V_user_V),
#endif
  };
  port17.param = (hls::stream<hls::sim::Byte<1>>*)__xlx_apatb_param_s_axis_video2_V_user_V;
  port17.hasWrite = false;

  static hls::sim::Stream<hls::sim::Byte<1>> port18 {
    .width = 1,
    .name = "s_axis_video2_V_last_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(WRAPC_STREAM_SIZE_IN_s_axis_video2_V_last_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVIN_s_axis_video2_V_last_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_IN_s_axis_video2_V_last_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_INGRESS_STATUS_s_axis_video2_V_last_V),
#endif
  };
  port18.param = (hls::stream<hls::sim::Byte<1>>*)__xlx_apatb_param_s_axis_video2_V_last_V;
  port18.hasWrite = false;

  static hls::sim::Stream<hls::sim::Byte<1>> port19 {
    .width = 1,
    .name = "s_axis_video2_V_id_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(WRAPC_STREAM_SIZE_IN_s_axis_video2_V_id_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVIN_s_axis_video2_V_id_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_IN_s_axis_video2_V_id_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_INGRESS_STATUS_s_axis_video2_V_id_V),
#endif
  };
  port19.param = (hls::stream<hls::sim::Byte<1>>*)__xlx_apatb_param_s_axis_video2_V_id_V;
  port19.hasWrite = false;

  static hls::sim::Stream<hls::sim::Byte<1>> port20 {
    .width = 1,
    .name = "s_axis_video2_V_dest_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(WRAPC_STREAM_SIZE_IN_s_axis_video2_V_dest_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVIN_s_axis_video2_V_dest_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_IN_s_axis_video2_V_dest_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_INGRESS_STATUS_s_axis_video2_V_dest_V),
#endif
  };
  port20.param = (hls::stream<hls::sim::Byte<1>>*)__xlx_apatb_param_s_axis_video2_V_dest_V;
  port20.hasWrite = false;

  static hls::sim::Register port21 {
    .name = "width",
    .width = 16,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_width),
#endif
  };
  port21.param = &__xlx_apatb_param_width;

  static hls::sim::Register port22 {
    .name = "height",
    .width = 16,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_height),
#endif
  };
  port22.param = &__xlx_apatb_param_height;

  static hls::sim::Register port23 {
    .name = "video_format",
    .width = 16,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_video_format),
#endif
  };
  port23.param = &__xlx_apatb_param_video_format;

  static hls::sim::Register port24 {
    .name = "background_Y_R",
    .width = 16,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_background_Y_R),
#endif
  };
  port24.param = &__xlx_apatb_param_background_Y_R;

  static hls::sim::Register port25 {
    .name = "background_U_G",
    .width = 16,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_background_U_G),
#endif
  };
  port25.param = &__xlx_apatb_param_background_U_G;

  static hls::sim::Register port26 {
    .name = "background_V_B",
    .width = 16,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_background_V_B),
#endif
  };
  port26.param = &__xlx_apatb_param_background_V_B;

  static hls::sim::Register port27 {
    .name = "layerEnable",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_layerEnable),
#endif
  };
  port27.param = &__xlx_apatb_param_layerEnable;

  static hls::sim::Register port28 {
    .name = "layerAlpha_0",
    .width = 16,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_layerAlpha_0),
#endif
  };
  port28.param = __xlx_apatb_param_layerAlpha_0;

  static hls::sim::Register port29 {
    .name = "layerAlpha_1",
    .width = 16,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_layerAlpha_1),
#endif
  };
  port29.param = __xlx_apatb_param_layerAlpha_1;

  static hls::sim::Register port30 {
    .name = "layerAlpha_2",
    .width = 16,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_layerAlpha_2),
#endif
  };
  port30.param = __xlx_apatb_param_layerAlpha_2;

  static hls::sim::Register port31 {
    .name = "layerStartX_0",
    .width = 16,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_layerStartX_0),
#endif
  };
  port31.param = __xlx_apatb_param_layerStartX_0;

  static hls::sim::Register port32 {
    .name = "layerStartX_1",
    .width = 16,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_layerStartX_1),
#endif
  };
  port32.param = __xlx_apatb_param_layerStartX_1;

  static hls::sim::Register port33 {
    .name = "layerStartX_2",
    .width = 16,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_layerStartX_2),
#endif
  };
  port33.param = __xlx_apatb_param_layerStartX_2;

  static hls::sim::Register port34 {
    .name = "layerStartY_0",
    .width = 16,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_layerStartY_0),
#endif
  };
  port34.param = __xlx_apatb_param_layerStartY_0;

  static hls::sim::Register port35 {
    .name = "layerStartY_1",
    .width = 16,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_layerStartY_1),
#endif
  };
  port35.param = __xlx_apatb_param_layerStartY_1;

  static hls::sim::Register port36 {
    .name = "layerStartY_2",
    .width = 16,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_layerStartY_2),
#endif
  };
  port36.param = __xlx_apatb_param_layerStartY_2;

  static hls::sim::Register port37 {
    .name = "layerWidth_0",
    .width = 16,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_layerWidth_0),
#endif
  };
  port37.param = __xlx_apatb_param_layerWidth_0;

  static hls::sim::Register port38 {
    .name = "layerWidth_1",
    .width = 16,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_layerWidth_1),
#endif
  };
  port38.param = __xlx_apatb_param_layerWidth_1;

  static hls::sim::Register port39 {
    .name = "layerWidth_2",
    .width = 16,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_layerWidth_2),
#endif
  };
  port39.param = __xlx_apatb_param_layerWidth_2;

  static hls::sim::Register port40 {
    .name = "layerHeight_0",
    .width = 16,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_layerHeight_0),
#endif
  };
  port40.param = __xlx_apatb_param_layerHeight_0;

  static hls::sim::Register port41 {
    .name = "layerHeight_1",
    .width = 16,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_layerHeight_1),
#endif
  };
  port41.param = __xlx_apatb_param_layerHeight_1;

  static hls::sim::Register port42 {
    .name = "layerHeight_2",
    .width = 16,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_layerHeight_2),
#endif
  };
  port42.param = __xlx_apatb_param_layerHeight_2;

  static hls::sim::Register port43 {
    .name = "layerScaleFactor_0",
    .width = 8,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_layerScaleFactor_0),
#endif
  };
  port43.param = __xlx_apatb_param_layerScaleFactor_0;

  static hls::sim::Register port44 {
    .name = "layerScaleFactor_1",
    .width = 8,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_layerScaleFactor_1),
#endif
  };
  port44.param = __xlx_apatb_param_layerScaleFactor_1;

  static hls::sim::Register port45 {
    .name = "layerScaleFactor_2",
    .width = 8,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_layerScaleFactor_2),
#endif
  };
  port45.param = __xlx_apatb_param_layerScaleFactor_2;

  static hls::sim::Register port46 {
    .name = "layerStride_0",
    .width = 16,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_layerStride_0),
#endif
  };
  port46.param = __xlx_apatb_param_layerStride_0;

  static hls::sim::Register port47 {
    .name = "layerStride_1",
    .width = 16,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_layerStride_1),
#endif
  };
  port47.param = __xlx_apatb_param_layerStride_1;

  static hls::sim::Register port48 {
    .name = "layerStride_2",
    .width = 16,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_layerStride_2),
#endif
  };
  port48.param = __xlx_apatb_param_layerStride_2;

  static hls::sim::Register port49 {
    .name = "reserve",
    .width = 16,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_reserve),
#endif
  };
  port49.param = &__xlx_apatb_param_reserve;

  static hls::sim::Register port50 {
    .name = "K11",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_K11),
#endif
  };
  port50.param = &__xlx_apatb_param_K11;

  static hls::sim::Register port51 {
    .name = "K12",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_K12),
#endif
  };
  port51.param = &__xlx_apatb_param_K12;

  static hls::sim::Register port52 {
    .name = "K13",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_K13),
#endif
  };
  port52.param = &__xlx_apatb_param_K13;

  static hls::sim::Register port53 {
    .name = "K21",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_K21),
#endif
  };
  port53.param = &__xlx_apatb_param_K21;

  static hls::sim::Register port54 {
    .name = "K22",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_K22),
#endif
  };
  port54.param = &__xlx_apatb_param_K22;

  static hls::sim::Register port55 {
    .name = "K23",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_K23),
#endif
  };
  port55.param = &__xlx_apatb_param_K23;

  static hls::sim::Register port56 {
    .name = "K31",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_K31),
#endif
  };
  port56.param = &__xlx_apatb_param_K31;

  static hls::sim::Register port57 {
    .name = "K32",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_K32),
#endif
  };
  port57.param = &__xlx_apatb_param_K32;

  static hls::sim::Register port58 {
    .name = "K33",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_K33),
#endif
  };
  port58.param = &__xlx_apatb_param_K33;

  static hls::sim::Register port59 {
    .name = "ROffset",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_ROffset),
#endif
  };
  port59.param = &__xlx_apatb_param_ROffset;

  static hls::sim::Register port60 {
    .name = "GOffset",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_GOffset),
#endif
  };
  port60.param = &__xlx_apatb_param_GOffset;

  static hls::sim::Register port61 {
    .name = "BOffset",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_BOffset),
#endif
  };
  port61.param = &__xlx_apatb_param_BOffset;

  static hls::sim::Register port62 {
    .name = "K11_2",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_K11_2),
#endif
  };
  port62.param = &__xlx_apatb_param_K11_2;

  static hls::sim::Register port63 {
    .name = "K12_2",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_K12_2),
#endif
  };
  port63.param = &__xlx_apatb_param_K12_2;

  static hls::sim::Register port64 {
    .name = "K13_2",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_K13_2),
#endif
  };
  port64.param = &__xlx_apatb_param_K13_2;

  static hls::sim::Register port65 {
    .name = "K21_2",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_K21_2),
#endif
  };
  port65.param = &__xlx_apatb_param_K21_2;

  static hls::sim::Register port66 {
    .name = "K22_2",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_K22_2),
#endif
  };
  port66.param = &__xlx_apatb_param_K22_2;

  static hls::sim::Register port67 {
    .name = "K23_2",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_K23_2),
#endif
  };
  port67.param = &__xlx_apatb_param_K23_2;

  static hls::sim::Register port68 {
    .name = "K31_2",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_K31_2),
#endif
  };
  port68.param = &__xlx_apatb_param_K31_2;

  static hls::sim::Register port69 {
    .name = "K32_2",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_K32_2),
#endif
  };
  port69.param = &__xlx_apatb_param_K32_2;

  static hls::sim::Register port70 {
    .name = "K33_2",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_K33_2),
#endif
  };
  port70.param = &__xlx_apatb_param_K33_2;

  static hls::sim::Register port71 {
    .name = "YOffset",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_YOffset),
#endif
  };
  port71.param = &__xlx_apatb_param_YOffset;

  static hls::sim::Register port72 {
    .name = "UOffset",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_UOffset),
#endif
  };
  port72.param = &__xlx_apatb_param_UOffset;

  static hls::sim::Register port73 {
    .name = "VOffset",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_VOffset),
#endif
  };
  port73.param = &__xlx_apatb_param_VOffset;

  static hls::sim::Stream<hls::sim::Byte<4>> port74 {
    .width = 24,
    .name = "m_axis_video_V_data_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_m_axis_video_V_data_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVOUT_m_axis_video_V_data_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_OUT_m_axis_video_V_data_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_EGRESS_STATUS_m_axis_video_V_data_V),
#endif
  };
  port74.param = (hls::stream<hls::sim::Byte<4>>*)__xlx_apatb_param_m_axis_video_V_data_V;
  port74.hasWrite = true;

  static hls::sim::Stream<hls::sim::Byte<1>> port75 {
    .width = 3,
    .name = "m_axis_video_V_keep_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_m_axis_video_V_keep_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVOUT_m_axis_video_V_keep_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_OUT_m_axis_video_V_keep_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_EGRESS_STATUS_m_axis_video_V_keep_V),
#endif
  };
  port75.param = (hls::stream<hls::sim::Byte<1>>*)__xlx_apatb_param_m_axis_video_V_keep_V;
  port75.hasWrite = true;

  static hls::sim::Stream<hls::sim::Byte<1>> port76 {
    .width = 3,
    .name = "m_axis_video_V_strb_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_m_axis_video_V_strb_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVOUT_m_axis_video_V_strb_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_OUT_m_axis_video_V_strb_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_EGRESS_STATUS_m_axis_video_V_strb_V),
#endif
  };
  port76.param = (hls::stream<hls::sim::Byte<1>>*)__xlx_apatb_param_m_axis_video_V_strb_V;
  port76.hasWrite = true;

  static hls::sim::Stream<hls::sim::Byte<1>> port77 {
    .width = 1,
    .name = "m_axis_video_V_user_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_m_axis_video_V_user_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVOUT_m_axis_video_V_user_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_OUT_m_axis_video_V_user_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_EGRESS_STATUS_m_axis_video_V_user_V),
#endif
  };
  port77.param = (hls::stream<hls::sim::Byte<1>>*)__xlx_apatb_param_m_axis_video_V_user_V;
  port77.hasWrite = true;

  static hls::sim::Stream<hls::sim::Byte<1>> port78 {
    .width = 1,
    .name = "m_axis_video_V_last_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_m_axis_video_V_last_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVOUT_m_axis_video_V_last_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_OUT_m_axis_video_V_last_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_EGRESS_STATUS_m_axis_video_V_last_V),
#endif
  };
  port78.param = (hls::stream<hls::sim::Byte<1>>*)__xlx_apatb_param_m_axis_video_V_last_V;
  port78.hasWrite = true;

  static hls::sim::Stream<hls::sim::Byte<1>> port79 {
    .width = 1,
    .name = "m_axis_video_V_id_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_m_axis_video_V_id_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVOUT_m_axis_video_V_id_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_OUT_m_axis_video_V_id_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_EGRESS_STATUS_m_axis_video_V_id_V),
#endif
  };
  port79.param = (hls::stream<hls::sim::Byte<1>>*)__xlx_apatb_param_m_axis_video_V_id_V;
  port79.hasWrite = true;

  static hls::sim::Stream<hls::sim::Byte<1>> port80 {
    .width = 1,
    .name = "m_axis_video_V_dest_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_m_axis_video_V_dest_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVOUT_m_axis_video_V_dest_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_OUT_m_axis_video_V_dest_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_EGRESS_STATUS_m_axis_video_V_dest_V),
#endif
  };
  port80.param = (hls::stream<hls::sim::Byte<1>>*)__xlx_apatb_param_m_axis_video_V_dest_V;
  port80.hasWrite = true;

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port81 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port81 {
#endif
    .width = 8,
    .asize = 1,
    .hbm = false,
    .name = { "layerVideoFormat" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_layerVideoFormat),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_layerVideoFormat),
#endif
#endif
  };
  port81.param = { __xlx_apatb_param_layerVideoFormat };
  port81.nbytes = { 3 };
  port81.offset = {  };
  port81.hasWrite = { false };

  try {
#ifdef POST_CHECK
    CodeState = ENTER_WRAPC_PC;
    check(port0);
    check(port1);
    check(port2);
    check(port3);
    check(port4);
    check(port5);
    check(port6);
    check(port7);
    check(port8);
    check(port9);
    check(port10);
    check(port11);
    check(port12);
    check(port13);
    check(port14);
    check(port15);
    check(port16);
    check(port17);
    check(port18);
    check(port19);
    check(port20);
    check(port74);
    check(port75);
    check(port76);
    check(port77);
    check(port78);
    check(port79);
    check(port80);
#else
    static hls::sim::RefTCL tcl("../tv/cdatafile/ref.tcl");
    CodeState = DUMP_INPUTS;
    dump(port21, port21.iwriter, tcl.AESL_transaction);
    dump(port22, port22.iwriter, tcl.AESL_transaction);
    dump(port23, port23.iwriter, tcl.AESL_transaction);
    dump(port24, port24.iwriter, tcl.AESL_transaction);
    dump(port25, port25.iwriter, tcl.AESL_transaction);
    dump(port26, port26.iwriter, tcl.AESL_transaction);
    dump(port27, port27.iwriter, tcl.AESL_transaction);
    dump(port28, port28.iwriter, tcl.AESL_transaction);
    dump(port29, port29.iwriter, tcl.AESL_transaction);
    dump(port30, port30.iwriter, tcl.AESL_transaction);
    dump(port31, port31.iwriter, tcl.AESL_transaction);
    dump(port32, port32.iwriter, tcl.AESL_transaction);
    dump(port33, port33.iwriter, tcl.AESL_transaction);
    dump(port34, port34.iwriter, tcl.AESL_transaction);
    dump(port35, port35.iwriter, tcl.AESL_transaction);
    dump(port36, port36.iwriter, tcl.AESL_transaction);
    dump(port37, port37.iwriter, tcl.AESL_transaction);
    dump(port38, port38.iwriter, tcl.AESL_transaction);
    dump(port39, port39.iwriter, tcl.AESL_transaction);
    dump(port40, port40.iwriter, tcl.AESL_transaction);
    dump(port41, port41.iwriter, tcl.AESL_transaction);
    dump(port42, port42.iwriter, tcl.AESL_transaction);
    dump(port43, port43.iwriter, tcl.AESL_transaction);
    dump(port44, port44.iwriter, tcl.AESL_transaction);
    dump(port45, port45.iwriter, tcl.AESL_transaction);
    dump(port46, port46.iwriter, tcl.AESL_transaction);
    dump(port47, port47.iwriter, tcl.AESL_transaction);
    dump(port48, port48.iwriter, tcl.AESL_transaction);
    dump(port49, port49.iwriter, tcl.AESL_transaction);
    dump(port50, port50.iwriter, tcl.AESL_transaction);
    dump(port51, port51.iwriter, tcl.AESL_transaction);
    dump(port52, port52.iwriter, tcl.AESL_transaction);
    dump(port53, port53.iwriter, tcl.AESL_transaction);
    dump(port54, port54.iwriter, tcl.AESL_transaction);
    dump(port55, port55.iwriter, tcl.AESL_transaction);
    dump(port56, port56.iwriter, tcl.AESL_transaction);
    dump(port57, port57.iwriter, tcl.AESL_transaction);
    dump(port58, port58.iwriter, tcl.AESL_transaction);
    dump(port59, port59.iwriter, tcl.AESL_transaction);
    dump(port60, port60.iwriter, tcl.AESL_transaction);
    dump(port61, port61.iwriter, tcl.AESL_transaction);
    dump(port62, port62.iwriter, tcl.AESL_transaction);
    dump(port63, port63.iwriter, tcl.AESL_transaction);
    dump(port64, port64.iwriter, tcl.AESL_transaction);
    dump(port65, port65.iwriter, tcl.AESL_transaction);
    dump(port66, port66.iwriter, tcl.AESL_transaction);
    dump(port67, port67.iwriter, tcl.AESL_transaction);
    dump(port68, port68.iwriter, tcl.AESL_transaction);
    dump(port69, port69.iwriter, tcl.AESL_transaction);
    dump(port70, port70.iwriter, tcl.AESL_transaction);
    dump(port71, port71.iwriter, tcl.AESL_transaction);
    dump(port72, port72.iwriter, tcl.AESL_transaction);
    dump(port73, port73.iwriter, tcl.AESL_transaction);
    dump(port81, port81.iwriter, tcl.AESL_transaction);
    port21.doTCL(tcl);
    port22.doTCL(tcl);
    port23.doTCL(tcl);
    port24.doTCL(tcl);
    port25.doTCL(tcl);
    port26.doTCL(tcl);
    port27.doTCL(tcl);
    port28.doTCL(tcl);
    port29.doTCL(tcl);
    port30.doTCL(tcl);
    port31.doTCL(tcl);
    port32.doTCL(tcl);
    port33.doTCL(tcl);
    port34.doTCL(tcl);
    port35.doTCL(tcl);
    port36.doTCL(tcl);
    port37.doTCL(tcl);
    port38.doTCL(tcl);
    port39.doTCL(tcl);
    port40.doTCL(tcl);
    port41.doTCL(tcl);
    port42.doTCL(tcl);
    port43.doTCL(tcl);
    port44.doTCL(tcl);
    port45.doTCL(tcl);
    port46.doTCL(tcl);
    port47.doTCL(tcl);
    port48.doTCL(tcl);
    port49.doTCL(tcl);
    port50.doTCL(tcl);
    port51.doTCL(tcl);
    port52.doTCL(tcl);
    port53.doTCL(tcl);
    port54.doTCL(tcl);
    port55.doTCL(tcl);
    port56.doTCL(tcl);
    port57.doTCL(tcl);
    port58.doTCL(tcl);
    port59.doTCL(tcl);
    port60.doTCL(tcl);
    port61.doTCL(tcl);
    port62.doTCL(tcl);
    port63.doTCL(tcl);
    port64.doTCL(tcl);
    port65.doTCL(tcl);
    port66.doTCL(tcl);
    port67.doTCL(tcl);
    port68.doTCL(tcl);
    port69.doTCL(tcl);
    port70.doTCL(tcl);
    port71.doTCL(tcl);
    port72.doTCL(tcl);
    port73.doTCL(tcl);
    port81.doTCL(tcl);
    port0.markSize();
    port1.markSize();
    port2.markSize();
    port3.markSize();
    port4.markSize();
    port5.markSize();
    port6.markSize();
    port7.markSize();
    port8.markSize();
    port9.markSize();
    port10.markSize();
    port11.markSize();
    port12.markSize();
    port13.markSize();
    port14.markSize();
    port15.markSize();
    port16.markSize();
    port17.markSize();
    port18.markSize();
    port19.markSize();
    port20.markSize();
    port0.buffer();
    port1.buffer();
    port2.buffer();
    port3.buffer();
    port4.buffer();
    port5.buffer();
    port6.buffer();
    port7.buffer();
    port8.buffer();
    port9.buffer();
    port10.buffer();
    port11.buffer();
    port12.buffer();
    port13.buffer();
    port14.buffer();
    port15.buffer();
    port16.buffer();
    port17.buffer();
    port18.buffer();
    port19.buffer();
    port20.buffer();
    port74.markSize();
    port75.markSize();
    port76.markSize();
    port77.markSize();
    port78.markSize();
    port79.markSize();
    port80.markSize();
    CodeState = CALL_C_DUT;
    v_mix_hw_stub_wrapper(__xlx_apatb_param_s_axis_video_V_data_V, __xlx_apatb_param_s_axis_video_V_keep_V, __xlx_apatb_param_s_axis_video_V_strb_V, __xlx_apatb_param_s_axis_video_V_user_V, __xlx_apatb_param_s_axis_video_V_last_V, __xlx_apatb_param_s_axis_video_V_id_V, __xlx_apatb_param_s_axis_video_V_dest_V, __xlx_apatb_param_s_axis_video1_V_data_V, __xlx_apatb_param_s_axis_video1_V_keep_V, __xlx_apatb_param_s_axis_video1_V_strb_V, __xlx_apatb_param_s_axis_video1_V_user_V, __xlx_apatb_param_s_axis_video1_V_last_V, __xlx_apatb_param_s_axis_video1_V_id_V, __xlx_apatb_param_s_axis_video1_V_dest_V, __xlx_apatb_param_s_axis_video2_V_data_V, __xlx_apatb_param_s_axis_video2_V_keep_V, __xlx_apatb_param_s_axis_video2_V_strb_V, __xlx_apatb_param_s_axis_video2_V_user_V, __xlx_apatb_param_s_axis_video2_V_last_V, __xlx_apatb_param_s_axis_video2_V_id_V, __xlx_apatb_param_s_axis_video2_V_dest_V, __xlx_apatb_param_width, __xlx_apatb_param_height, __xlx_apatb_param_video_format, __xlx_apatb_param_background_Y_R, __xlx_apatb_param_background_U_G, __xlx_apatb_param_background_V_B, __xlx_apatb_param_layerEnable, __xlx_apatb_param_layerAlpha_0, __xlx_apatb_param_layerAlpha_1, __xlx_apatb_param_layerAlpha_2, __xlx_apatb_param_layerStartX_0, __xlx_apatb_param_layerStartX_1, __xlx_apatb_param_layerStartX_2, __xlx_apatb_param_layerStartY_0, __xlx_apatb_param_layerStartY_1, __xlx_apatb_param_layerStartY_2, __xlx_apatb_param_layerWidth_0, __xlx_apatb_param_layerWidth_1, __xlx_apatb_param_layerWidth_2, __xlx_apatb_param_layerHeight_0, __xlx_apatb_param_layerHeight_1, __xlx_apatb_param_layerHeight_2, __xlx_apatb_param_layerScaleFactor_0, __xlx_apatb_param_layerScaleFactor_1, __xlx_apatb_param_layerScaleFactor_2, __xlx_apatb_param_layerVideoFormat, __xlx_apatb_param_layerStride_0, __xlx_apatb_param_layerStride_1, __xlx_apatb_param_layerStride_2, __xlx_apatb_param_reserve, __xlx_apatb_param_K11, __xlx_apatb_param_K12, __xlx_apatb_param_K13, __xlx_apatb_param_K21, __xlx_apatb_param_K22, __xlx_apatb_param_K23, __xlx_apatb_param_K31, __xlx_apatb_param_K32, __xlx_apatb_param_K33, __xlx_apatb_param_ROffset, __xlx_apatb_param_GOffset, __xlx_apatb_param_BOffset, __xlx_apatb_param_K11_2, __xlx_apatb_param_K12_2, __xlx_apatb_param_K13_2, __xlx_apatb_param_K21_2, __xlx_apatb_param_K22_2, __xlx_apatb_param_K23_2, __xlx_apatb_param_K31_2, __xlx_apatb_param_K32_2, __xlx_apatb_param_K33_2, __xlx_apatb_param_YOffset, __xlx_apatb_param_UOffset, __xlx_apatb_param_VOffset, __xlx_apatb_param_m_axis_video_V_data_V, __xlx_apatb_param_m_axis_video_V_keep_V, __xlx_apatb_param_m_axis_video_V_strb_V, __xlx_apatb_param_m_axis_video_V_user_V, __xlx_apatb_param_m_axis_video_V_last_V, __xlx_apatb_param_m_axis_video_V_id_V, __xlx_apatb_param_m_axis_video_V_dest_V);
    port74.buffer();
    port75.buffer();
    port76.buffer();
    port77.buffer();
    port78.buffer();
    port79.buffer();
    port80.buffer();
    dump(port0, tcl.AESL_transaction);
    dump(port1, tcl.AESL_transaction);
    dump(port2, tcl.AESL_transaction);
    dump(port3, tcl.AESL_transaction);
    dump(port4, tcl.AESL_transaction);
    dump(port5, tcl.AESL_transaction);
    dump(port6, tcl.AESL_transaction);
    dump(port7, tcl.AESL_transaction);
    dump(port8, tcl.AESL_transaction);
    dump(port9, tcl.AESL_transaction);
    dump(port10, tcl.AESL_transaction);
    dump(port11, tcl.AESL_transaction);
    dump(port12, tcl.AESL_transaction);
    dump(port13, tcl.AESL_transaction);
    dump(port14, tcl.AESL_transaction);
    dump(port15, tcl.AESL_transaction);
    dump(port16, tcl.AESL_transaction);
    dump(port17, tcl.AESL_transaction);
    dump(port18, tcl.AESL_transaction);
    dump(port19, tcl.AESL_transaction);
    dump(port20, tcl.AESL_transaction);
    port0.doTCL(tcl);
    port1.doTCL(tcl);
    port2.doTCL(tcl);
    port3.doTCL(tcl);
    port4.doTCL(tcl);
    port5.doTCL(tcl);
    port6.doTCL(tcl);
    port7.doTCL(tcl);
    port8.doTCL(tcl);
    port9.doTCL(tcl);
    port10.doTCL(tcl);
    port11.doTCL(tcl);
    port12.doTCL(tcl);
    port13.doTCL(tcl);
    port14.doTCL(tcl);
    port15.doTCL(tcl);
    port16.doTCL(tcl);
    port17.doTCL(tcl);
    port18.doTCL(tcl);
    port19.doTCL(tcl);
    port20.doTCL(tcl);
    CodeState = DUMP_OUTPUTS;
    dump(port74, tcl.AESL_transaction);
    dump(port75, tcl.AESL_transaction);
    dump(port76, tcl.AESL_transaction);
    dump(port77, tcl.AESL_transaction);
    dump(port78, tcl.AESL_transaction);
    dump(port79, tcl.AESL_transaction);
    dump(port80, tcl.AESL_transaction);
    port74.doTCL(tcl);
    port75.doTCL(tcl);
    port76.doTCL(tcl);
    port77.doTCL(tcl);
    port78.doTCL(tcl);
    port79.doTCL(tcl);
    port80.doTCL(tcl);
    tcl.AESL_transaction++;
#endif
  } catch (const hls::sim::SimException &e) {
    hls::sim::errExit(e.line, e.msg);
  }
}