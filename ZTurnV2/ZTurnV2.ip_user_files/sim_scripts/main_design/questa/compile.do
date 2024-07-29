vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/xpm
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/lib_cdc_v1_0_3
vlib questa_lib/msim/proc_sys_reset_v5_0_15
vlib questa_lib/msim/xlconcat_v2_1_6
vlib questa_lib/msim/xlslice_v1_0_4

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap xpm questa_lib/msim/xpm
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap lib_cdc_v1_0_3 questa_lib/msim/lib_cdc_v1_0_3
vmap proc_sys_reset_v5_0_15 questa_lib/msim/proc_sys_reset_v5_0_15
vmap xlconcat_v2_1_6 questa_lib/msim/xlconcat_v2_1_6
vmap xlslice_v1_0_4 questa_lib/msim/xlslice_v1_0_4

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

vlog -work xpm -64 -incr -mfcu  -sv -L axi_vip_v1_1_17 -L processing_system7_vip_v1_0_19 -L xilinx_vip "+incdir+../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/ec67/hdl" "+incdir+../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/b28c/hdl" "+incdir+../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/434f/hdl" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"/tools/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/tools/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/tools/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93  \
"/tools/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/main_design/ip/main_design_processing_system7_0_0/main_design_processing_system7_0_0_sim_netlist.vhdl" \

vcom -work lib_cdc_v1_0_3 -64 -93  \
"../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_15 -64 -93  \
"../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/3a26/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/main_design/ip/main_design_proc_sys_reset_0_0/sim/main_design_proc_sys_reset_0_0.vhd" \
"../../../bd/main_design/ip/main_design_xbar_1/main_design_xbar_1_sim_netlist.vhdl" \
"../../../bd/main_design/ip/main_design_xbar_2/main_design_xbar_2_sim_netlist.vhdl" \
"../../../bd/main_design/ipshared/41ed/hdl/noip_lvds_stream_slave_stream_v1_0_S00_AXIS.vhd" \
"../../../bd/main_design/ipshared/41ed/hdl/noip_lvds_stream_master_stream_v1_0_M00_AXIS.vhd" \
"../../../bd/main_design/ipshared/41ed/hdl/noip_lvds_stream.vhd" \
"../../../bd/main_design/ip/main_design_noip_lvds_stream_0_0/sim/main_design_noip_lvds_stream_0_0.vhd" \

vcom -work xil_defaultlib -64 -2008  \
"../../../bd/main_design/ipshared/dc1a/hdl/noip_ctrl_slave_lite_v1_0_S00_AXI.vhd" \
"../../../bd/main_design/ipshared/dc1a/hdl/noip_ctrl.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/main_design/ip/main_design_noip_ctrl_0_0/sim/main_design_noip_ctrl_0_0.vhd" \
"../../../bd/main_design/ip/main_design_noip_lvds_stream_0_1/sim/main_design_noip_lvds_stream_0_1.vhd" \
"../../../bd/main_design/ip/main_design_axi_dma_0_0_1/main_design_axi_dma_0_0_sim_netlist.vhdl" \
"../../../bd/main_design/ip/main_design_xbar_3/main_design_xbar_3_sim_netlist.vhdl" \
"../../../bd/main_design/ip/main_design_xbar_4/main_design_xbar_4_sim_netlist.vhdl" \

vlog -work xlconcat_v2_1_6 -64 -incr -mfcu  "+incdir+../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/ec67/hdl" "+incdir+../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/b28c/hdl" "+incdir+../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/434f/hdl" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/6120/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/ec67/hdl" "+incdir+../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/b28c/hdl" "+incdir+../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/434f/hdl" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/main_design/ip/main_design_xlconcat_0_0/sim/main_design_xlconcat_0_0.v" \

vlog -work xlslice_v1_0_4 -64 -incr -mfcu  "+incdir+../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/ec67/hdl" "+incdir+../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/b28c/hdl" "+incdir+../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/434f/hdl" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/a97c/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/ec67/hdl" "+incdir+../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/b28c/hdl" "+incdir+../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/434f/hdl" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/main_design/ip/main_design_xlslice_0_1/sim/main_design_xlslice_0_1.v" \
"../../../bd/main_design/ip/main_design_xlslice_0_2/sim/main_design_xlslice_0_2.v" \
"../../../bd/main_design/ip/main_design_monitor0_slice0_1/sim/main_design_monitor0_slice0_1.v" \
"../../../bd/main_design/ip/main_design_monitor0_slice1_1/sim/main_design_monitor0_slice1_1.v" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/main_design/ip/main_design_lvds_clkin_0_ibuf_1/util_ds_buf.vhd" \
"../../../bd/main_design/ip/main_design_lvds_clkin_0_ibuf_1/sim/main_design_lvds_clkin_0_ibuf_1.vhd" \
"../../../bd/main_design/ip/main_design_lvds_sync_0_ibuf1_0/sim/main_design_lvds_sync_0_ibuf1_0.vhd" \
"../../../bd/main_design/ip/main_design_lvds_dout0_0_ibuf_0/sim/main_design_lvds_dout0_0_ibuf_0.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/ec67/hdl" "+incdir+../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/b28c/hdl" "+incdir+../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/434f/hdl" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/main_design/ip/main_design_xlconcat_0_1/sim/main_design_xlconcat_0_1.v" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/main_design/ip/main_design_lvds_dout0_0_ibuf_1/sim/main_design_lvds_dout0_0_ibuf_1.vhd" \
"../../../bd/main_design/ip/main_design_lvds_dout1_0_ibuf_1/sim/main_design_lvds_dout1_0_ibuf_1.vhd" \
"../../../bd/main_design/ip/main_design_lvds_clkin_0_ibuf_4/sim/main_design_lvds_clkin_0_ibuf_4.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/ec67/hdl" "+incdir+../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/b28c/hdl" "+incdir+../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/434f/hdl" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/main_design/ip/main_design_lvds_data_0_concat_1/sim/main_design_lvds_data_0_concat_1.v" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/main_design/ip/main_design_lvds_dout0_0_ibuf_3/sim/main_design_lvds_dout0_0_ibuf_3.vhd" \
"../../../bd/main_design/ip/main_design_lvds_dout1_0_ibuf_3/sim/main_design_lvds_dout1_0_ibuf_3.vhd" \
"../../../bd/main_design/ip/main_design_lvds_dout2_0_ibuf_1/sim/main_design_lvds_dout2_0_ibuf_1.vhd" \
"../../../bd/main_design/ip/main_design_lvds_dout3_0_ibuf_1/sim/main_design_lvds_dout3_0_ibuf_1.vhd" \
"../../../bd/main_design/ip/main_design_lvds_sync_0_ibuf_1/sim/main_design_lvds_sync_0_ibuf_1.vhd" \
"../../../bd/main_design/ip/main_design_util_vector_logic_0_0/main_design_util_vector_logic_0_0_sim_netlist.vhdl" \
"../../../bd/main_design/ip/main_design_lvds_data_0_inverter_0/main_design_lvds_data_0_inverter_0_sim_netlist.vhdl" \
"../../../bd/main_design/ip/main_design_lvds_data_1_inverter_0/main_design_lvds_data_1_inverter_0_sim_netlist.vhdl" \
"../../../bd/main_design/ip/main_design_lvds_sync_1_inverter_0/main_design_lvds_sync_1_inverter_0_sim_netlist.vhdl" \
"../../../bd/main_design/ipshared/bedd/hdl/hdmi_ctrl_slave_stream_v1_0_S00_AXIS.vhd" \
"../../../bd/main_design/ipshared/bedd/hdl/hdmi_ctrl_slave_stream_v1_0_S01_AXIS.vhd" \
"../../../bd/main_design/ipshared/bedd/hdl/hdmi_ctrl.vhd" \
"../../../bd/main_design/ip/main_design_hdmi_ctrl_0_0/sim/main_design_hdmi_ctrl_0_0.vhd" \
"../../../bd/main_design/ip/main_design_my_iobuf_0_0/sim/main_design_my_iobuf_0_0.vhd" \
"../../../bd/main_design/ip/main_design_iobuf_I2C0_SDA_0/sim/main_design_iobuf_I2C0_SDA_0.vhd" \
"../../../bd/main_design/ip/main_design_fifo_generator_0_0/main_design_fifo_generator_0_0_sim_netlist.vhdl" \
"../../../bd/main_design/ip/main_design_fifo_generator_0_1/main_design_fifo_generator_0_1_sim_netlist.vhdl" \
"../../../bd/main_design/ip/main_design_lvds_clkin_1_ibuf_0/sim/main_design_lvds_clkin_1_ibuf_0.vhd" \
"../../../bd/main_design/ip/main_design_auto_pc_0/main_design_auto_pc_0_sim_netlist.vhdl" \
"../../../bd/main_design/ip/main_design_auto_us_df_0/main_design_auto_us_df_0_sim_netlist.vhdl" \
"../../../bd/main_design/ip/main_design_auto_us_df_1/main_design_auto_us_df_1_sim_netlist.vhdl" \
"../../../bd/main_design/ip/main_design_auto_us_df_2/main_design_auto_us_df_2_sim_netlist.vhdl" \
"../../../bd/main_design/ip/main_design_auto_pc_1/main_design_auto_pc_1_sim_netlist.vhdl" \
"../../../bd/main_design/ip/main_design_auto_ss_slid_0/main_design_auto_ss_slid_0_sim_netlist.vhdl" \
"../../../bd/main_design/ip/main_design_auto_ss_k_0/main_design_auto_ss_k_0_sim_netlist.vhdl" \
"../../../bd/main_design/ip/main_design_auto_ss_slidr_0/main_design_auto_ss_slidr_0_sim_netlist.vhdl" \
"../../../bd/main_design/ip/main_design_auto_ss_k_1/main_design_auto_ss_k_1_sim_netlist.vhdl" \
"../../../bd/main_design/ip/main_design_auto_ss_slidr_1/main_design_auto_ss_slidr_1_sim_netlist.vhdl" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/ec67/hdl" "+incdir+../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/b28c/hdl" "+incdir+../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/434f/hdl" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/main_design/ip/main_design_s_arb_req_suppress_concat_0/sim/main_design_s_arb_req_suppress_concat_0.v" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/main_design/ip/main_design_auto_ss_k_2/main_design_auto_ss_k_2_sim_netlist.vhdl" \
"../../../bd/main_design/ip/main_design_auto_ss_slidr_2/main_design_auto_ss_slidr_2_sim_netlist.vhdl" \
"../../../bd/main_design/sim/main_design.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

