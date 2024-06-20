vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_vip_v1_1_17
vlib modelsim_lib/msim/processing_system7_vip_v1_0_19
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/lib_cdc_v1_0_3
vlib modelsim_lib/msim/proc_sys_reset_v5_0_15
vlib modelsim_lib/msim/generic_baseblocks_v2_1_2
vlib modelsim_lib/msim/axi_register_slice_v2_1_31
vlib modelsim_lib/msim/fifo_generator_v13_2_10
vlib modelsim_lib/msim/axi_data_fifo_v2_1_30
vlib modelsim_lib/msim/axi_crossbar_v2_1_32
vlib modelsim_lib/msim/dist_mem_gen_v8_0_15
vlib modelsim_lib/msim/lib_pkg_v1_0_4
vlib modelsim_lib/msim/lib_srl_fifo_v1_0_4
vlib modelsim_lib/msim/lib_fifo_v1_0_19
vlib modelsim_lib/msim/axi_lite_ipif_v3_0_4
vlib modelsim_lib/msim/interrupt_control_v3_1_5
vlib modelsim_lib/msim/axi_quad_spi_v3_2_30
vlib modelsim_lib/msim/axi_datamover_v5_1_33
vlib modelsim_lib/msim/axi_sg_v4_1_18
vlib modelsim_lib/msim/axi_dma_v7_1_32
vlib modelsim_lib/msim/axi_protocol_converter_v2_1_31
vlib modelsim_lib/msim/axi_clock_converter_v2_1_30
vlib modelsim_lib/msim/blk_mem_gen_v8_4_8
vlib modelsim_lib/msim/axi_dwidth_converter_v2_1_31

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xpm modelsim_lib/msim/xpm
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_17 modelsim_lib/msim/axi_vip_v1_1_17
vmap processing_system7_vip_v1_0_19 modelsim_lib/msim/processing_system7_vip_v1_0_19
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap lib_cdc_v1_0_3 modelsim_lib/msim/lib_cdc_v1_0_3
vmap proc_sys_reset_v5_0_15 modelsim_lib/msim/proc_sys_reset_v5_0_15
vmap generic_baseblocks_v2_1_2 modelsim_lib/msim/generic_baseblocks_v2_1_2
vmap axi_register_slice_v2_1_31 modelsim_lib/msim/axi_register_slice_v2_1_31
vmap fifo_generator_v13_2_10 modelsim_lib/msim/fifo_generator_v13_2_10
vmap axi_data_fifo_v2_1_30 modelsim_lib/msim/axi_data_fifo_v2_1_30
vmap axi_crossbar_v2_1_32 modelsim_lib/msim/axi_crossbar_v2_1_32
vmap dist_mem_gen_v8_0_15 modelsim_lib/msim/dist_mem_gen_v8_0_15
vmap lib_pkg_v1_0_4 modelsim_lib/msim/lib_pkg_v1_0_4
vmap lib_srl_fifo_v1_0_4 modelsim_lib/msim/lib_srl_fifo_v1_0_4
vmap lib_fifo_v1_0_19 modelsim_lib/msim/lib_fifo_v1_0_19
vmap axi_lite_ipif_v3_0_4 modelsim_lib/msim/axi_lite_ipif_v3_0_4
vmap interrupt_control_v3_1_5 modelsim_lib/msim/interrupt_control_v3_1_5
vmap axi_quad_spi_v3_2_30 modelsim_lib/msim/axi_quad_spi_v3_2_30
vmap axi_datamover_v5_1_33 modelsim_lib/msim/axi_datamover_v5_1_33
vmap axi_sg_v4_1_18 modelsim_lib/msim/axi_sg_v4_1_18
vmap axi_dma_v7_1_32 modelsim_lib/msim/axi_dma_v7_1_32
vmap axi_protocol_converter_v2_1_31 modelsim_lib/msim/axi_protocol_converter_v2_1_31
vmap axi_clock_converter_v2_1_30 modelsim_lib/msim/axi_clock_converter_v2_1_30
vmap blk_mem_gen_v8_4_8 modelsim_lib/msim/blk_mem_gen_v8_4_8
vmap axi_dwidth_converter_v2_1_31 modelsim_lib/msim/axi_dwidth_converter_v2_1_31

vlog -work xilinx_vip -64 -incr -mfcu  -sv -L axi_vip_v1_1_17 -L processing_system7_vip_v1_0_19 -L xilinx_vip "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm -64 -incr -mfcu  -sv -L axi_vip_v1_1_17 -L processing_system7_vip_v1_0_19 -L xilinx_vip "+incdir+../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/ec67/hdl" "+incdir+../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/b28c/hdl" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"/tools/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/tools/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/tools/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93  \
"/tools/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0 -64 -incr -mfcu  "+incdir+../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/ec67/hdl" "+incdir+../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/b28c/hdl" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_17 -64 -incr -mfcu  -sv -L axi_vip_v1_1_17 -L processing_system7_vip_v1_0_19 -L xilinx_vip "+incdir+../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/ec67/hdl" "+incdir+../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/b28c/hdl" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/4d04/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_19 -64 -incr -mfcu  -sv -L axi_vip_v1_1_17 -L processing_system7_vip_v1_0_19 -L xilinx_vip "+incdir+../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/ec67/hdl" "+incdir+../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/b28c/hdl" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/b28c/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/ec67/hdl" "+incdir+../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/b28c/hdl" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/main_design/ip/main_design_processing_system7_0_0/sim/main_design_processing_system7_0_0.v" \

vcom -work lib_cdc_v1_0_3 -64 -93  \
"../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_15 -64 -93  \
"../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/3a26/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/main_design/ip/main_design_proc_sys_reset_0_0/sim/main_design_proc_sys_reset_0_0.vhd" \

vlog -work generic_baseblocks_v2_1_2 -64 -incr -mfcu  "+incdir+../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/ec67/hdl" "+incdir+../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/b28c/hdl" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/0c28/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_31 -64 -incr -mfcu  "+incdir+../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/ec67/hdl" "+incdir+../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/b28c/hdl" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/92b2/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_10 -64 -incr -mfcu  "+incdir+../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/ec67/hdl" "+incdir+../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/b28c/hdl" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/1443/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_10 -64 -93  \
"../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/1443/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_10 -64 -incr -mfcu  "+incdir+../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/ec67/hdl" "+incdir+../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/b28c/hdl" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/1443/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_30 -64 -incr -mfcu  "+incdir+../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/ec67/hdl" "+incdir+../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/b28c/hdl" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/9692/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_32 -64 -incr -mfcu  "+incdir+../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/ec67/hdl" "+incdir+../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/b28c/hdl" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/e9d8/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/ec67/hdl" "+incdir+../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/b28c/hdl" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/main_design/ip/main_design_xbar_1/sim/main_design_xbar_1.v" \

vlog -work dist_mem_gen_v8_0_15 -64 -incr -mfcu  "+incdir+../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/ec67/hdl" "+incdir+../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/b28c/hdl" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/fa7e/simulation/dist_mem_gen_v8_0.v" \

vcom -work lib_pkg_v1_0_4 -64 -93  \
"../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/8c68/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_4 -64 -93  \
"../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/1e5a/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work lib_fifo_v1_0_19 -64 -93  \
"../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/0a12/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work axi_lite_ipif_v3_0_4 -64 -93  \
"../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work interrupt_control_v3_1_5 -64 -93  \
"../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/d8cc/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_quad_spi_v3_2_30 -64 -93  \
"../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/2538/hdl/axi_quad_spi_v3_2_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/main_design/ip/main_design_axi_quad_spi_0_2/sim/main_design_axi_quad_spi_0_2.vhd" \
"../../../bd/main_design/ip/main_design_util_ds_buf_0_2/util_ds_buf.vhd" \
"../../../bd/main_design/ip/main_design_util_ds_buf_0_2/sim/main_design_util_ds_buf_0_2.vhd" \

vcom -work axi_datamover_v5_1_33 -64 -93  \
"../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/bf20/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vcom -work axi_sg_v4_1_18 -64 -93  \
"../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/6f54/hdl/axi_sg_v4_1_rfs.vhd" \

vcom -work axi_dma_v7_1_32 -64 -93  \
"../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/8830/hdl/axi_dma_v7_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/main_design/ip/main_design_axi_dma_0_0_1/sim/main_design_axi_dma_0_0.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/ec67/hdl" "+incdir+../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/b28c/hdl" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/main_design/ip/main_design_xbar_2/sim/main_design_xbar_2.v" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/main_design/sim/main_design.vhd" \

vlog -work axi_protocol_converter_v2_1_31 -64 -incr -mfcu  "+incdir+../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/ec67/hdl" "+incdir+../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/b28c/hdl" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/3c06/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/ec67/hdl" "+incdir+../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/b28c/hdl" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/main_design/ip/main_design_auto_pc_0/sim/main_design_auto_pc_0.v" \

vlog -work axi_clock_converter_v2_1_30 -64 -incr -mfcu  "+incdir+../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/ec67/hdl" "+incdir+../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/b28c/hdl" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/80bf/hdl/axi_clock_converter_v2_1_vl_rfs.v" \

vlog -work blk_mem_gen_v8_4_8 -64 -incr -mfcu  "+incdir+../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/ec67/hdl" "+incdir+../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/b28c/hdl" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/09bd/simulation/blk_mem_gen_v8_4.v" \

vlog -work axi_dwidth_converter_v2_1_31 -64 -incr -mfcu  "+incdir+../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/ec67/hdl" "+incdir+../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/b28c/hdl" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/14b9/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/ec67/hdl" "+incdir+../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/b28c/hdl" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/main_design/ip/main_design_auto_us_0/sim/main_design_auto_us_0.v" \
"../../../bd/main_design/ip/main_design_auto_us_1/sim/main_design_auto_us_1.v" \
"../../../bd/main_design/ip/main_design_auto_us_2/sim/main_design_auto_us_2.v" \
"../../../bd/main_design/ip/main_design_auto_pc_1/sim/main_design_auto_pc_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

