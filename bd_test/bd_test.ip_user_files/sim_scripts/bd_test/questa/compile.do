vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xpm
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/fifo_generator_v13_2_10
vlib questa_lib/msim/xlconcat_v2_1_6

vmap xpm questa_lib/msim/xpm
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap fifo_generator_v13_2_10 questa_lib/msim/fifo_generator_v13_2_10
vmap xlconcat_v2_1_6 questa_lib/msim/xlconcat_v2_1_6

vlog -work xpm -64 -incr -mfcu  -sv \
"/tools/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/tools/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93  \
"/tools/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  \
"../../../../bd_test.gen/sources_1/bd/bd_test/ip/bd_test_selectio_wiz_0_0/bd_test_selectio_wiz_0_0_selectio_wiz.v" \
"../../../../bd_test.gen/sources_1/bd/bd_test/ip/bd_test_selectio_wiz_0_0/bd_test_selectio_wiz_0_0.v" \

vcom -work xil_defaultlib -64 -93  \
"../../../../bd_test.gen/sources_1/bd/bd_test/ipshared/bb94/hdl/noip_lvds_stream_slave_stream_v1_0_S00_AXIS.vhd" \
"../../../../bd_test.gen/sources_1/bd/bd_test/ipshared/bb94/hdl/noip_lvds_stream_master_stream_v1_0_M00_AXIS.vhd" \
"../../../../bd_test.gen/sources_1/bd/bd_test/ipshared/bb94/hdl/noip_lvds_stream.vhd" \
"../../../../bd_test.gen/sources_1/bd/bd_test/ip/bd_test_noip_lvds_stream_0_0/sim/bd_test_noip_lvds_stream_0_0.vhd" \

vlog -work fifo_generator_v13_2_10 -64 -incr -mfcu  \
"../../../../bd_test.gen/sources_1/bd/bd_test/ipshared/1443/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_10 -64 -93  \
"../../../../bd_test.gen/sources_1/bd/bd_test/ipshared/1443/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_10 -64 -incr -mfcu  \
"../../../../bd_test.gen/sources_1/bd/bd_test/ipshared/1443/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  \
"../../../../bd_test.gen/sources_1/bd/bd_test/ip/bd_test_fifo_generator_0_0/sim/bd_test_fifo_generator_0_0.v" \

vlog -work xlconcat_v2_1_6 -64 -incr -mfcu  \
"../../../../bd_test.gen/sources_1/bd/bd_test/ipshared/6120/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  \
"../../../../bd_test.gen/sources_1/bd/bd_test/ip/bd_test_xlconcat_0_0/sim/bd_test_xlconcat_0_0.v" \

vcom -work xil_defaultlib -64 -93  \
"../../../../bd_test.gen/sources_1/bd/bd_test/sim/bd_test.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

