vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/axi_vip_v1_1_17

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap axi_vip_v1_1_17 questa_lib/msim/axi_vip_v1_1_17

vlog -work xilinx_vip -64 -incr -mfcu  -sv -L axi_vip_v1_1_17 -L xilinx_vip "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work axi_infrastructure_v1_1_0 -64 -incr -mfcu  "+incdir+../../../../axi_vip_0_ex.gen/sources_1/bd/ex_sim/ipshared/ec67/hdl" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../axi_vip_0_ex.gen/sources_1/bd/ex_sim/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_17 -L xilinx_vip "+incdir+../../../../axi_vip_0_ex.gen/sources_1/bd/ex_sim/ipshared/ec67/hdl" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/ex_sim/ip/ex_sim_axi_vip_mst_0/sim/ex_sim_axi_vip_mst_0_pkg.sv" \

vlog -work axi_vip_v1_1_17 -64 -incr -mfcu  -sv -L axi_vip_v1_1_17 -L xilinx_vip "+incdir+../../../../axi_vip_0_ex.gen/sources_1/bd/ex_sim/ipshared/ec67/hdl" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../axi_vip_0_ex.gen/sources_1/bd/ex_sim/ipshared/4d04/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_17 -L xilinx_vip "+incdir+../../../../axi_vip_0_ex.gen/sources_1/bd/ex_sim/ipshared/ec67/hdl" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/ex_sim/ip/ex_sim_axi_vip_mst_0/sim/ex_sim_axi_vip_mst_0.sv" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/ex_sim/sim/ex_sim.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_17 -L xilinx_vip "+incdir+../../../../axi_vip_0_ex.gen/sources_1/bd/ex_sim/ipshared/ec67/hdl" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"/home/nothon/fpga2C/axi_vip_0_ex/axi_vip_0_ex.gen/sources_1/bd/ex_sim/ip/ex_sim_axi_vip_slv_0/sim/ex_sim_axi_vip_slv_0_pkg.sv" \
"/home/nothon/fpga2C/axi_vip_0_ex/axi_vip_0_ex.gen/sources_1/bd/ex_sim/ip/ex_sim_axi_vip_slv_0/sim/ex_sim_axi_vip_slv_0.sv" \
"/home/nothon/fpga2C/axi_vip_0_ex/axi_vip_0_ex.gen/sources_1/bd/ex_sim/ip/ex_sim_axi_vip_passthrough_0/sim/ex_sim_axi_vip_passthrough_0_pkg.sv" \
"/home/nothon/fpga2C/axi_vip_0_ex/axi_vip_0_ex.gen/sources_1/bd/ex_sim/ip/ex_sim_axi_vip_passthrough_0/sim/ex_sim_axi_vip_passthrough_0.sv" \

vlog -work xil_defaultlib \
"glbl.v"

