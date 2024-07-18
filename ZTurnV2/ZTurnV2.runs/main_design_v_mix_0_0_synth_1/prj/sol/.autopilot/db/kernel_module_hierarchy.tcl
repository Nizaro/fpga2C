set ModuleHierarchy {[{
"Name" : "v_mix","ID" : "0","Type" : "sequential",
"SubInsts" : [
	{"Name" : "grp_VMixHlsDataFlowFunction_fu_476","ID" : "1","Type" : "dataflow",
		"SubInsts" : [
		{"Name" : "entry_proc_U0","ID" : "2","Type" : "sequential"},
		{"Name" : "AXIvideo2MultiPixStream_1_U0","ID" : "3","Type" : "sequential",
			"SubInsts" : [
			{"Name" : "grp_AXIvideo2MultiPixStream_1_Pipeline_loop_wait_for_start_fu_162","ID" : "4","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "loop_wait_for_start","ID" : "5","Type" : "pipeline"},]},
			{"Name" : "grp_reg_unsigned_short_1_fu_233","ID" : "6","Type" : "pipeline"},
			{"Name" : "grp_reg_unsigned_short_1_fu_239","ID" : "7","Type" : "pipeline"},],
			"SubLoops" : [
			{"Name" : "loop_height","ID" : "8","Type" : "no",
			"SubInsts" : [
			{"Name" : "grp_AXIvideo2MultiPixStream_1_Pipeline_loop_width_fu_182","ID" : "9","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "loop_width","ID" : "10","Type" : "pipeline"},]},
			{"Name" : "grp_AXIvideo2MultiPixStream_1_Pipeline_loop_wait_for_eol_fu_210","ID" : "11","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "loop_wait_for_eol","ID" : "12","Type" : "pipeline"},]},]},]},
		{"Name" : "AXIvideo2MultiPixStream_5_U0","ID" : "13","Type" : "sequential",
			"SubInsts" : [
			{"Name" : "grp_AXIvideo2MultiPixStream_5_Pipeline_loop_wait_for_start_fu_180","ID" : "14","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "loop_wait_for_start","ID" : "15","Type" : "pipeline"},]},
			{"Name" : "grp_reg_unsigned_short_s_fu_259","ID" : "16","Type" : "pipeline"},
			{"Name" : "grp_reg_unsigned_short_s_fu_265","ID" : "17","Type" : "pipeline"},],
			"SubLoops" : [
			{"Name" : "loop_height","ID" : "18","Type" : "no",
			"SubInsts" : [
			{"Name" : "grp_AXIvideo2MultiPixStream_5_Pipeline_loop_width_fu_200","ID" : "19","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "loop_width","ID" : "20","Type" : "pipeline"},]},
			{"Name" : "grp_AXIvideo2MultiPixStream_5_Pipeline_loop_wait_for_eol_fu_228","ID" : "21","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "loop_wait_for_eol","ID" : "22","Type" : "pipeline"},]},]},]},
		{"Name" : "AXIvideo2MultiPixStream_U0","ID" : "23","Type" : "sequential",
			"SubInsts" : [
			{"Name" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_180","ID" : "24","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "loop_wait_for_start","ID" : "25","Type" : "pipeline"},]},
			{"Name" : "grp_reg_unsigned_short_s_fu_259","ID" : "26","Type" : "pipeline"},
			{"Name" : "grp_reg_unsigned_short_s_fu_265","ID" : "27","Type" : "pipeline"},],
			"SubLoops" : [
			{"Name" : "loop_height","ID" : "28","Type" : "no",
			"SubInsts" : [
			{"Name" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_200","ID" : "29","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "loop_width","ID" : "30","Type" : "pipeline"},]},
			{"Name" : "grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_228","ID" : "31","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "loop_wait_for_eol","ID" : "32","Type" : "pipeline"},]},]},]},
		{"Name" : "v_mix_420_to_422_false_2_U0","ID" : "33","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_74_1","ID" : "34","Type" : "no",
			"SubInsts" : [
			{"Name" : "grp_v_mix_420_to_422_false_2_Pipeline_VITIS_LOOP_76_2_fu_94","ID" : "35","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_76_2","ID" : "36","Type" : "pipeline"},]},]},]},
		{"Name" : "v_mix_420_to_422_false_6_U0","ID" : "37","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_74_1","ID" : "38","Type" : "no",
			"SubInsts" : [
			{"Name" : "grp_v_mix_420_to_422_false_6_Pipeline_VITIS_LOOP_76_2_fu_110","ID" : "39","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_76_2","ID" : "40","Type" : "pipeline"},]},]},]},
		{"Name" : "v_mix_420_to_422_false_U0","ID" : "41","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_74_1","ID" : "42","Type" : "no",
			"SubInsts" : [
			{"Name" : "grp_v_mix_420_to_422_false_Pipeline_VITIS_LOOP_76_2_fu_110","ID" : "43","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_76_2","ID" : "44","Type" : "pipeline"},]},]},]},
		{"Name" : "v_mix_422_to_444_false_3_U0","ID" : "45","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_103_1","ID" : "46","Type" : "no",
			"SubInsts" : [
			{"Name" : "grp_v_mix_422_to_444_false_3_Pipeline_VITIS_LOOP_105_2_fu_94","ID" : "47","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_105_2","ID" : "48","Type" : "pipeline"},]},]},]},
		{"Name" : "v_mix_422_to_444_false_7_U0","ID" : "49","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_103_1","ID" : "50","Type" : "no",
			"SubInsts" : [
			{"Name" : "grp_v_mix_422_to_444_false_7_Pipeline_VITIS_LOOP_105_2_fu_110","ID" : "51","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_105_2","ID" : "52","Type" : "pipeline"},]},]},]},
		{"Name" : "v_mix_422_to_444_false_U0","ID" : "53","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_103_1","ID" : "54","Type" : "no",
			"SubInsts" : [
			{"Name" : "grp_v_mix_422_to_444_false_Pipeline_VITIS_LOOP_105_2_fu_110","ID" : "55","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_105_2","ID" : "56","Type" : "pipeline"},]},]},]},
		{"Name" : "v_mix_yuv2rgb_false_4_U0","ID" : "57","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_895_1","ID" : "58","Type" : "no",
			"SubInsts" : [
			{"Name" : "grp_v_mix_yuv2rgb_false_4_Pipeline_VITIS_LOOP_897_2_fu_82","ID" : "59","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_897_2","ID" : "60","Type" : "pipeline"},]},]},]},
		{"Name" : "v_mix_yuv2rgb_false_8_U0","ID" : "61","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_895_1","ID" : "62","Type" : "no",
			"SubInsts" : [
			{"Name" : "grp_v_mix_yuv2rgb_false_8_Pipeline_VITIS_LOOP_897_2_fu_110","ID" : "63","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_897_2","ID" : "64","Type" : "pipeline"},]},]},]},
		{"Name" : "v_mix_yuv2rgb_false_U0","ID" : "65","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_895_1","ID" : "66","Type" : "no",
			"SubInsts" : [
			{"Name" : "grp_v_mix_yuv2rgb_false_Pipeline_VITIS_LOOP_897_2_fu_110","ID" : "67","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_897_2","ID" : "68","Type" : "pipeline"},]},]},]},
		{"Name" : "v_mix_upsample_false_9_U0","ID" : "69","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_105_1","ID" : "70","Type" : "no",
			"SubInsts" : [
			{"Name" : "grp_v_mix_upsample_false_9_Pipeline_VITIS_LOOP_107_2_fu_98","ID" : "71","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_107_2","ID" : "72","Type" : "pipeline"},]},]},]},
		{"Name" : "v_mix_upsample_false_U0","ID" : "73","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_105_1","ID" : "74","Type" : "no",
			"SubInsts" : [
			{"Name" : "grp_v_mix_upsample_false_Pipeline_VITIS_LOOP_107_2_fu_98","ID" : "75","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_107_2","ID" : "76","Type" : "pipeline"},]},]},]},
		{"Name" : "v_mix_core_alpha_false_false_U0","ID" : "77","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_463_2","ID" : "78","Type" : "no",
			"SubInsts" : [
			{"Name" : "grp_v_mix_core_alpha_false_false_Pipeline_VITIS_LOOP_465_3_fu_170","ID" : "79","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_465_3","ID" : "80","Type" : "pipeline"},]},]},]},
		{"Name" : "v_mix_core_alpha_false_false_10_U0","ID" : "81","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_463_2","ID" : "82","Type" : "no",
			"SubInsts" : [
			{"Name" : "grp_v_mix_core_alpha_false_false_10_Pipeline_VITIS_LOOP_465_3_fu_132","ID" : "83","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_465_3","ID" : "84","Type" : "pipeline"},]},]},]},
		{"Name" : "v_mix_rgb2yuv_false_U0","ID" : "85","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_1040_1","ID" : "86","Type" : "no",
			"SubInsts" : [
			{"Name" : "grp_v_mix_rgb2yuv_false_Pipeline_VITIS_LOOP_1042_2_fu_62","ID" : "87","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_1042_2","ID" : "88","Type" : "pipeline"},]},]},]},
		{"Name" : "v_mix_444_to_422_false_U0","ID" : "89","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_716_1","ID" : "90","Type" : "no",
			"SubInsts" : [
			{"Name" : "grp_v_mix_444_to_422_false_Pipeline_VITIS_LOOP_718_2_fu_62","ID" : "91","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_718_2","ID" : "92","Type" : "pipeline"},]},]},]},
		{"Name" : "v_mix_422_to_420_false_U0","ID" : "93","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_506_1","ID" : "94","Type" : "no",
			"SubInsts" : [
			{"Name" : "grp_v_mix_422_to_420_false_Pipeline_VITIS_LOOP_508_2_fu_62","ID" : "95","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_508_2","ID" : "96","Type" : "pipeline"},]},]},]},
		{"Name" : "MultiPixStream2AXIvideo_U0","ID" : "97","Type" : "sequential",
			"SubInsts" : [
			{"Name" : "grp_reg_unsigned_short_1_fu_122","ID" : "98","Type" : "pipeline"},
			{"Name" : "grp_reg_unsigned_short_1_fu_128","ID" : "99","Type" : "pipeline"},],
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_3231_2","ID" : "100","Type" : "no",
			"SubInsts" : [
			{"Name" : "grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_3233_3_fu_98","ID" : "101","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_3233_3","ID" : "102","Type" : "pipeline"},]},]},]},]},],
"SubLoops" : [
	{"Name" : "VITIS_LOOP_2626_1","ID" : "103","Type" : "pipeline"},]
}]}