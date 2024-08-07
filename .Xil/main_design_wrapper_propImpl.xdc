set_property SRC_FILE_INFO {cfile:/home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_processing_system7_0_0/main_design_processing_system7_0_0.xdc rfile:../ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_processing_system7_0_0/main_design_processing_system7_0_0.xdc id:1 order:EARLY scoped_inst:main_design_i/processing_system7_0/inst} [current_design]
set_property SRC_FILE_INFO {cfile:/home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_proc_sys_reset_0_0/main_design_proc_sys_reset_0_0.xdc rfile:../ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_proc_sys_reset_0_0/main_design_proc_sys_reset_0_0.xdc id:2 order:EARLY scoped_inst:main_design_i/proc_sys_reset_0/U0} [current_design]
set_property SRC_FILE_INFO {cfile:/home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_axi_dma_0_0_1/main_design_axi_dma_0_0.xdc rfile:../ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_axi_dma_0_0_1/main_design_axi_dma_0_0.xdc id:3 order:EARLY scoped_inst:main_design_i/axi_dma_0/U0} [current_design]
set_property SRC_FILE_INFO {cfile:/home/nothon/fpga2C/ZTurnV2/ZTurnV2.srcs/constrs_1/new/elab_constraints.xdc rfile:../ZTurnV2/ZTurnV2.srcs/constrs_1/new/elab_constraints.xdc id:4} [current_design]
current_instance main_design_i/processing_system7_0/inst
set_property src_info {type:SCOPED_XDC file:1 line:21 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter clk_fpga_0 0.15999
set_property src_info {type:SCOPED_XDC file:1 line:24 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter clk_fpga_1 0.42
set_property src_info {type:SCOPED_XDC file:1 line:27 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter clk_fpga_2 2.49999
current_instance
current_instance main_design_i/proc_sys_reset_0/U0
set_property src_info {type:SCOPED_XDC file:2 line:50 export:INPUT save:INPUT read:READ} [current_design]
create_waiver -type CDC -id {CDC-11} -user "proc_sys_reset" -desc "Timing uncritical paths" -tags "1171415" -scope -internal -to [get_pins -quiet -filter REF_PIN_NAME=~*D -of_objects [get_cells -hierarchical -filter {NAME =~ */ACTIVE_LOW_AUX.ACT_LO_AUX/GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to}]]
current_instance
current_instance main_design_i/axi_dma_0/U0
set_property src_info {type:SCOPED_XDC file:3 line:52 export:INPUT save:INPUT read:READ} [current_design]
create_waiver -internal -scope -type CDC -id {CDC-1} -user "axi_dma" -tags "9601" -desc "The CDC-1 warning is waived as it is safe in the context of AXI DMA. The Address and Data value does not change until AXI transaction is complete." -to [get_pins -hier -quiet -filter {NAME =~*I_AXI_DMA_REG_MODULE/GEN_AXI_LITE_IF.AXI_LITE_IF_I/GEN_ASYNC_WRITE.REG_WADDR_TO_IPCLK/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[*].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to/D}]
set_property src_info {type:SCOPED_XDC file:3 line:56 export:INPUT save:INPUT read:READ} [current_design]
create_waiver -internal -scope -type CDC -id {CDC-1} -user "axi_dma" -tags "9601" -desc "The CDC-1 warning is waived as it is safe in the context of AXI DMA. The Address and Data value does not change until AXI transaction is complete." -to [get_pins -hier -quiet -filter {NAME =~*I_AXI_DMA_REG_MODULE/GEN_AXI_LITE_IF.AXI_LITE_IF_I/GEN_ASYNC_WRITE.REG_WADDR_TO_IPCLK1/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[*].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to/D}]
set_property src_info {type:SCOPED_XDC file:3 line:61 export:INPUT save:INPUT read:READ} [current_design]
create_waiver -internal -scope -type CDC -id {CDC-1} -user "axi_dma" -tags "9601" -desc "The CDC-1 warning is waived as it is safe in the context of AXI DMA. In multi channel mode, it is safe to ignore this." -from [get_pins -hier -quiet -filter {NAME =~*MM2S_SPLIT.I_COMMAND_MM2S_SPLITTER/vsize_data_int_reg[*]/C}]
current_instance
set_property src_info {type:XDC file:4 line:75 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS33 [get_ports clk_test_port]
set_property src_info {type:XDC file:4 line:76 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN M15 [get_ports clk_test_port]
