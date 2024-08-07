#!/usr/bin/env bash
#**********************************************************************************************************
# Vivado (TM) v2024.1 (64-bit)
#
# Script generated by Vivado on Wed Aug 07 11:43:50 CEST 2024
# SW Build 5076996 on Wed May 22 18:36:09 MDT 2024
#
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved. 
#
# Filename     : main_design.sh
# Simulator    : Cadence Xcelium Parallel Simulator
# Description  : Simulation script generated by export_simulation Tcl command
# Purpose      : Run 'compile', 'elaborate', 'simulate' steps for compiling, elaborating and simulating the
#                design. The script will copy the library mapping file from the compiled library directory,
#                create design library directories and library mappings in the mapping file.
#
# Usage        : main_design.sh
#                main_design.sh [-lib_map_path] [-step] [-keep_index] [-noclean_files]*
#                main_design.sh [-reset_run]
#                main_design.sh [-reset_log]
#                main_design.sh [-help]
#
#               * The -noclean_files switch is deprecated and will not peform any function (by default, the
#                 simulator generated files will not be removed unless -reset_run switch is used)
#
# Prerequisite : Before running export_simulation, you must first compile the AMD simulation library
#                using the 'compile_simlib' Tcl command (for more information, run 'compile_simlib -help'
#                command in the Vivado Tcl shell). After compiling the library, specify the -lib_map_path
#                switch with the directory path where the library is created while generating the script
#                with export_simulation.
#
#                Alternatively, you can set the library path by setting the following project property:-
#
#                 set_property compxlib.<simulator>_compiled_library_dir <path> [current_project]
#
#                You can also point to the simulation library by either setting the 'lib_map_path' global
#                variable in this script or specify it with the '-lib_map_path' switch while executing this
#                script (type 'main_design.sh -help' for more information).
#
#                Note: For pure RTL based designs, the -lib_map_path switch can be specified later with the
#                generated script, but if design is targetted for system simulation containing SystemC/C++/C
#                sources, then the library path MUST be specified upfront when calling export_simulation.
#
#                For more information, refer 'Vivado Design Suite User Guide:Logic simulation (UG900)'
#
#**********************************************************************************************************

# catch pipeline exit status
set -Eeuo pipefail

# set xmvhdl compile options
xmvhdl_opts="-64bit -messages -relax -logfile .tmp_log -update"

# set xmvlog compile options
xmvlog_opts="-64bit -messages -logfile .tmp_log -update"

# set xmelab elaboration options
xmelab_opts="-64bit -relax -access +rwc -namemap_mixgen -messages -logfile elaborate.log"

# set xmsim simulation options
xmsim_opts="-64bit -logfile simulate.log"

# set design libraries for elaboration
design_libs_elab="-libname xilinx_vip -libname xpm -libname xil_defaultlib -libname lib_cdc_v1_0_3 -libname proc_sys_reset_v5_0_15 -libname xlconcat_v2_1_6 -libname xlslice_v1_0_4 -libname xilinx_vip -libname unisims_ver -libname unimacro_ver -libname secureip"

# set design libraries
design_libs=(simprims_ver xilinx_vip xpm xil_defaultlib lib_cdc_v1_0_3 proc_sys_reset_v5_0_15 xlconcat_v2_1_6 xlslice_v1_0_4)

# simulation root library directory
sim_lib_dir="xcelium_lib"

# script info
echo -e "main_design.sh - Script generated by export_simulation (Vivado v2024.1 (64-bit)-id)\n"

# main steps
run()
{
  check_args $*
  setup
  if [[ ($b_step == 1) ]]; then
    case $step in
      "compile" )
       init_lib
       compile
      ;;
      "elaborate" )
       elaborate
      ;;
      "simulate" )
       simulate
      ;;
      * )
        echo -e "ERROR: Invalid or missing step '$step' (type \"./main_design.sh -help\" for more information)\n"
        exit 1
      esac
  else
    init_lib
    compile
    elaborate
    simulate
  fi
}

# RUN_STEP: <compile>
compile()
{
  xmvlog -work xilinx_vip $xmvlog_opts -sv +incdir+"../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/ec67/hdl" +incdir+"../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/b28c/hdl" +incdir+"../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/434f/hdl" +incdir+"/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
  "/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/rst_vip_if.sv" \
  2>&1 | tee compile.log; cat .tmp_log > xmvlog.log 2>/dev/null

  xmvlog -work xpm $xmvlog_opts -sv +incdir+"../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/ec67/hdl" +incdir+"../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/b28c/hdl" +incdir+"../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/434f/hdl" +incdir+"/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
  "/tools/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "/tools/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "/tools/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
  2>&1 | tee -a compile.log; cat .tmp_log >> xmvlog.log 2>/dev/null

  xmvhdl -work xpm -V93 $xmvhdl_opts \
  "/tools/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_VCOMP.vhd" \
  2>&1 | tee -a compile.log; cat .tmp_log > xmvhdl.log 2>/dev/null

  xmvhdl -work xil_defaultlib -V93 $xmvhdl_opts \
  "../../../bd/main_design/ip/main_design_processing_system7_0_0/main_design_processing_system7_0_0_sim_netlist.vhdl" \
  2>&1 | tee -a compile.log; cat .tmp_log >> xmvhdl.log 2>/dev/null

  xmvhdl -work lib_cdc_v1_0_3 -V93 $xmvhdl_opts \
  "../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd" \
  2>&1 | tee -a compile.log; cat .tmp_log >> xmvhdl.log 2>/dev/null

  xmvhdl -work proc_sys_reset_v5_0_15 -V93 $xmvhdl_opts \
  "../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/3a26/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
  2>&1 | tee -a compile.log; cat .tmp_log >> xmvhdl.log 2>/dev/null

  xmvhdl -work xil_defaultlib -V93 $xmvhdl_opts \
  "../../../bd/main_design/ip/main_design_proc_sys_reset_0_0/sim/main_design_proc_sys_reset_0_0.vhd" \
  "../../../bd/main_design/ip/main_design_xbar_1/main_design_xbar_1_sim_netlist.vhdl" \
  "../../../bd/main_design/ip/main_design_auto_pc_0/main_design_auto_pc_0_sim_netlist.vhdl" \
  "../../../bd/main_design/ip/main_design_xbar_2/main_design_xbar_2_sim_netlist.vhdl" \
  "../../../bd/main_design/ip/main_design_auto_us_df_0/main_design_auto_us_df_0_sim_netlist.vhdl" \
  "../../../bd/main_design/ip/main_design_auto_us_df_1/main_design_auto_us_df_1_sim_netlist.vhdl" \
  "../../../bd/main_design/ip/main_design_auto_us_df_2/main_design_auto_us_df_2_sim_netlist.vhdl" \
  "../../../bd/main_design/ip/main_design_auto_pc_1/main_design_auto_pc_1_sim_netlist.vhdl" \
  "../../../bd/main_design/ipshared/bb94/hdl/noip_lvds_stream_slave_stream_v1_0_S00_AXIS.vhd" \
  "../../../bd/main_design/ipshared/bb94/hdl/noip_lvds_stream_master_stream_v1_0_M00_AXIS.vhd" \
  "../../../bd/main_design/ipshared/bb94/hdl/noip_lvds_stream.vhd" \
  "../../../bd/main_design/ip/main_design_noip_lvds_stream_0_0/sim/main_design_noip_lvds_stream_0_0.vhd" \
  2>&1 | tee -a compile.log; cat .tmp_log >> xmvhdl.log 2>/dev/null

  xmvhdl -work xil_defaultlib -V200X $xmvhdl_opts \
  "../../../bd/main_design/ipshared/34d7/hdl/noip_ctrl_slave_lite_v1_0_S00_AXI.vhd" \
  "../../../bd/main_design/ipshared/34d7/hdl/noip_ctrl.vhd" \
  2>&1 | tee -a compile.log; cat .tmp_log >> xmvhdl.log 2>/dev/null

  xmvhdl -work xil_defaultlib -V93 $xmvhdl_opts \
  "../../../bd/main_design/ip/main_design_noip_ctrl_0_0/sim/main_design_noip_ctrl_0_0.vhd" \
  "../../../bd/main_design/ip/main_design_noip_lvds_stream_0_1/sim/main_design_noip_lvds_stream_0_1.vhd" \
  "../../../bd/main_design/ip/main_design_axi_dma_0_0_1/main_design_axi_dma_0_0_sim_netlist.vhdl" \
  "../../../bd/main_design/ip/main_design_xbar_3/main_design_xbar_3_sim_netlist.vhdl" \
  "../../../bd/main_design/ip/main_design_auto_ss_slid_0/main_design_auto_ss_slid_0_sim_netlist.vhdl" \
  "../../../bd/main_design/ip/main_design_auto_ss_k_0/main_design_auto_ss_k_0_sim_netlist.vhdl" \
  "../../../bd/main_design/ip/main_design_auto_ss_slidr_0/main_design_auto_ss_slidr_0_sim_netlist.vhdl" \
  "../../../bd/main_design/ip/main_design_auto_ss_k_1/main_design_auto_ss_k_1_sim_netlist.vhdl" \
  "../../../bd/main_design/ip/main_design_auto_ss_slidr_1/main_design_auto_ss_slidr_1_sim_netlist.vhdl" \
  "../../../bd/main_design/ip/main_design_xbar_4/main_design_xbar_4_sim_netlist.vhdl" \
  2>&1 | tee -a compile.log; cat .tmp_log >> xmvhdl.log 2>/dev/null

  xmvlog -work xlconcat_v2_1_6 $xmvlog_opts +incdir+"../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/ec67/hdl" +incdir+"../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/b28c/hdl" +incdir+"../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/434f/hdl" +incdir+"/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
  "../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/6120/hdl/xlconcat_v2_1_vl_rfs.v" \
  2>&1 | tee -a compile.log; cat .tmp_log >> xmvlog.log 2>/dev/null

  xmvlog -work xil_defaultlib $xmvlog_opts +incdir+"../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/ec67/hdl" +incdir+"../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/b28c/hdl" +incdir+"../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/434f/hdl" +incdir+"/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
  "../../../bd/main_design/ip/main_design_s_arb_req_suppress_concat_0/sim/main_design_s_arb_req_suppress_concat_0.v" \
  2>&1 | tee -a compile.log; cat .tmp_log >> xmvlog.log 2>/dev/null

  xmvhdl -work xil_defaultlib -V93 $xmvhdl_opts \
  "../../../bd/main_design/ip/main_design_auto_ss_k_2/main_design_auto_ss_k_2_sim_netlist.vhdl" \
  "../../../bd/main_design/ip/main_design_auto_ss_slidr_2/main_design_auto_ss_slidr_2_sim_netlist.vhdl" \
  2>&1 | tee -a compile.log; cat .tmp_log >> xmvhdl.log 2>/dev/null

  xmvlog -work xil_defaultlib $xmvlog_opts +incdir+"../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/ec67/hdl" +incdir+"../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/b28c/hdl" +incdir+"../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/434f/hdl" +incdir+"/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
  "../../../bd/main_design/ip/main_design_xlconcat_0_0/sim/main_design_xlconcat_0_0.v" \
  2>&1 | tee -a compile.log; cat .tmp_log >> xmvlog.log 2>/dev/null

  xmvlog -work xlslice_v1_0_4 $xmvlog_opts +incdir+"../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/ec67/hdl" +incdir+"../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/b28c/hdl" +incdir+"../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/434f/hdl" +incdir+"/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
  "../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/a97c/hdl/xlslice_v1_0_vl_rfs.v" \
  2>&1 | tee -a compile.log; cat .tmp_log >> xmvlog.log 2>/dev/null

  xmvlog -work xil_defaultlib $xmvlog_opts +incdir+"../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/ec67/hdl" +incdir+"../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/b28c/hdl" +incdir+"../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/434f/hdl" +incdir+"/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
  "../../../bd/main_design/ip/main_design_xlslice_0_1/sim/main_design_xlslice_0_1.v" \
  "../../../bd/main_design/ip/main_design_xlslice_0_2/sim/main_design_xlslice_0_2.v" \
  "../../../bd/main_design/ip/main_design_monitor0_slice0_1/sim/main_design_monitor0_slice0_1.v" \
  "../../../bd/main_design/ip/main_design_monitor0_slice1_1/sim/main_design_monitor0_slice1_1.v" \
  2>&1 | tee -a compile.log; cat .tmp_log >> xmvlog.log 2>/dev/null

  xmvhdl -work xil_defaultlib -V93 $xmvhdl_opts \
  "../../../bd/main_design/ipshared/bedd/hdl/hdmi_ctrl_slave_stream_v1_0_S00_AXIS.vhd" \
  "../../../bd/main_design/ipshared/bedd/hdl/hdmi_ctrl_slave_stream_v1_0_S01_AXIS.vhd" \
  "../../../bd/main_design/ipshared/bedd/hdl/hdmi_ctrl.vhd" \
  "../../../bd/main_design/ip/main_design_hdmi_ctrl_0_0/sim/main_design_hdmi_ctrl_0_0.vhd" \
  "../../../bd/main_design/ip/main_design_my_iobuf_0_0/sim/main_design_my_iobuf_0_0.vhd" \
  "../../../bd/main_design/ip/main_design_iobuf_I2C0_SDA_0/sim/main_design_iobuf_I2C0_SDA_0.vhd" \
  2>&1 | tee -a compile.log; cat .tmp_log >> xmvhdl.log 2>/dev/null

  xmvlog -work xil_defaultlib $xmvlog_opts +incdir+"../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/ec67/hdl" +incdir+"../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/b28c/hdl" +incdir+"../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/434f/hdl" +incdir+"/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
  "../../../bd/main_design/ip/main_design_xlconcat_0_2/sim/main_design_xlconcat_0_2.v" \
  "../../../bd/main_design/ip/main_design_lvds_pins_0_n_0/sim/main_design_lvds_pins_0_n_0.v" \
  2>&1 | tee -a compile.log; cat .tmp_log >> xmvlog.log 2>/dev/null

  xmvhdl -work xil_defaultlib -V93 $xmvhdl_opts \
  "../../../bd/main_design/ip/main_design_lvds_sync_1_inverter_1/main_design_lvds_sync_1_inverter_1_sim_netlist.vhdl" \
  "../../../bd/main_design/ip/main_design_selectio_wiz_0_2/main_design_selectio_wiz_0_2_sim_netlist.vhdl" \
  2>&1 | tee -a compile.log; cat .tmp_log >> xmvhdl.log 2>/dev/null

  xmvlog -work xil_defaultlib $xmvlog_opts +incdir+"../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/ec67/hdl" +incdir+"../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/b28c/hdl" +incdir+"../../../../ZTurnV2.gen/sources_1/bd/main_design/ipshared/434f/hdl" +incdir+"/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
  "../../../bd/main_design/ip/main_design_lvds_data_0_concat_n_0/sim/main_design_lvds_data_0_concat_n_0.v" \
  "../../../bd/main_design/ip/main_design_lvds_data_0_concat_p_0/sim/main_design_lvds_data_0_concat_p_0.v" \
  2>&1 | tee -a compile.log; cat .tmp_log >> xmvlog.log 2>/dev/null

  xmvhdl -work xil_defaultlib -V93 $xmvhdl_opts \
  "../../../bd/main_design/ip/main_design_lvds_selectio_data_0_0/main_design_lvds_selectio_data_0_0_sim_netlist.vhdl" \
  "../../../bd/main_design/ip/main_design_fifo_generator_0_1/main_design_fifo_generator_0_1_sim_netlist.vhdl" \
  "../../../bd/main_design/ip/main_design_fifo_0_1/main_design_fifo_0_1_sim_netlist.vhdl" \
  "../../../bd/main_design/ipshared/432e/hdl/rgb_led_ctrl_slave_lite_v1_0_S00_AXI.vhd" \
  "../../../bd/main_design/ipshared/432e/hdl/rgb_led_ctrl.vhd" \
  "../../../bd/main_design/ip/main_design_rgb_led_ctrl_0_0/sim/main_design_rgb_led_ctrl_0_0.vhd" \
  "../../../bd/main_design/sim/main_design.vhd" \
  2>&1 | tee -a compile.log; cat .tmp_log >> xmvhdl.log 2>/dev/null

  xmvlog -work xil_defaultlib $xmvlog_opts \
  glbl.v \
  2>&1 | tee -a compile.log; cat .tmp_log >> xmvlog.log 2>/dev/null
}

# RUN_STEP: <elaborate>
elaborate()
{
  xmelab $xmelab_opts $design_libs_elab xil_defaultlib.main_design xil_defaultlib.glbl
}

# RUN_STEP: <simulate>
simulate()
{
  xmsim $xmsim_opts xil_defaultlib.main_design -input simulate.do
}

# STEP: setup
setup()
{
  # delete previous files for a clean rerun
  if [[ ($b_reset_run == 1) ]]; then
    reset_run
    echo -e "INFO: Simulation run files deleted.\n"
    exit 0
  fi

 # delete previous log files
  if [[ ($b_reset_log == 1) ]]; then
    reset_log
    echo -e "INFO: Simulation run log files deleted.\n"
    exit 0
  fi

  # add any setup/initialization commands here:-

  # <user specific commands>

}

# simulator index file/library directory processing
init_lib()
{
  if [[ ($b_keep_index == 1) ]]; then
    # keep previous design library mappings
    true
  else
    # define design library mappings
    create_lib_mappings
  fi

  if [[ ($b_keep_index == 1) ]]; then
    # do not recreate design library directories
    true
  else
    # create design library directories
    create_lib_dir
  fi
}

# define design library mappings
create_lib_mappings()
{
  file="hdl.var"
  touch $file

  file="cds.lib"
  if [[ -e $file ]]; then
    if [[ ($lib_map_path == "") ]]; then
      return
    else
      rm -rf $file
    fi
  fi

  touch $file

  if [[ ($lib_map_path == "") ]]; then
    lib_map_path="/home/nothon/fpga2C/ZTurnV2/ZTurnV2.cache/compile_simlib/xcelium"
  fi

  if [[ ($lib_map_path != "") ]]; then
    incl_ref="INCLUDE $lib_map_path/cds.lib"
    echo $incl_ref >> $file
  fi

  for (( i=0; i<${#design_libs[*]}; i++ )); do
    lib="${design_libs[i]}"
    mapping="DEFINE $lib $sim_lib_dir/$lib"
    echo $mapping >> $file
  done
}

# create design library directory
create_lib_dir()
{
  if [[ -e $sim_lib_dir ]]; then
    rm -rf $sim_lib_dir
  fi
  for (( i=0; i<${#design_libs[*]}; i++ )); do
    lib="${design_libs[i]}"
    lib_dir="$sim_lib_dir/$lib"
    if [[ ! -e $lib_dir ]]; then
      mkdir -p $lib_dir
    fi
  done
}

# delete generated data from the previous run
reset_run()
{
  files_to_remove=(xmvlog.log xmvhdl.log xmsc.log compile.log elaborate.log simulate.log diag_report.log xsc_report.log main_design_sc.so .tmp_log xcelium_lib waves.shm c.obj)
  for (( i=0; i<${#files_to_remove[*]}; i++ )); do
    file="${files_to_remove[i]}"
    if [[ -e $file ]]; then
      rm -rf $file
    fi
  done
}

# delete generated log files from the previous run
reset_log()
{
  files_to_remove=(xmvlog.log xmvhdl.log xmsc.log compile.log elaborate.log simulate.log diag_report.log xsc_report.log .tmp_log)
  for (( i=0; i<${#files_to_remove[*]}; i++ )); do
    file="${files_to_remove[i]}"
    if [[ -e $file ]]; then
      rm -rf $file
    fi
  done
}

# check switch argument value
check_arg_value()
{
  if [[ ($1 == "-step") && (($2 != "compile") && ($2 != "elaborate") && ($2 != "simulate")) ]];then
    echo -e "ERROR: Invalid or missing step '$2' (type \"./top.sh -help\" for more information)\n"
    exit 1
  fi

  if [[ ($1 == "-lib_map_path") && ($2 == "") ]];then
    echo -e "ERROR: Simulation library directory path not specified (type \"./main_design.sh -help\" for more information)\n"
    exit 1
  fi
}

# check command line arguments
check_args()
{
  arg_count=$#
  if [[ ("$#" == 1) && (("$1" == "-help") || ("$1" == "-h")) ]]; then
    usage
  fi
  while [[ "$#" -gt 0 ]]; do
    case $1 in
      -step)          check_arg_value $1 $2;step=$2;         b_step=1;         shift;;
      -lib_map_path)  check_arg_value $1 $2;lib_map_path=$2; b_lib_map_path=1; shift;;
      -gen_bypass)    b_gen_bypass=1    ;;
      -reset_run)     b_reset_run=1     ;;
      -reset_log)     b_reset_log=1     ;;
      -keep_index)    b_keep_index=1    ;;
      -noclean_files) b_noclean_files=1 ;;
      -help|-h)       ;;
      *) echo -e "ERROR: Invalid option specified '$1' (type "./top.sh -help" for more information)\n"; exit 1 ;;
    esac
     shift
  done

  # -reset_run is not applicable with other switches
  if [[ ("$arg_count" -gt 1) && ($b_reset_run == 1) ]]; then
    echo -e "ERROR: -reset_run switch is not applicable with other switches (type \"./top.sh -help\" for more information)\n"
    exit 1
  fi

  # -reset_log is not applicable with other switches
  if [[ ("$arg_count" -gt 1) && ($b_reset_log == 1) ]]; then
    echo -e "ERROR: -reset_log switch is not applicable with other switches (type \"./top.sh -help\" for more information)\n"
    exit 1
  fi

  # -keep_index is not applicable with other switches
  if [[ ("$arg_count" -gt 1) && ($b_keep_index == 1) ]]; then
    echo -e "ERROR: -keep_index switch is not applicable with other switches (type \"./top.sh -help\" for more information)\n"
    exit 1
  fi

  # -noclean_files is not applicable with other switches
  if [[ ("$arg_count" -gt 1) && ($b_noclean_files == 1) ]]; then
    echo -e "ERROR: -noclean_files switch is not applicable with other switches (type \"./top.sh -help\" for more information)\n"
    exit 1
  fi
}

# script usage
usage()
{
  msg="Usage: main_design.sh [-help]\n\
Usage: main_design.sh [-step]\n\
Usage: main_design.sh [-lib_map_path]\n\
Usage: main_design.sh [-reset_run]\n\
Usage: main_design.sh [-reset_log]\n\
Usage: main_design.sh [-keep_index]\n\
Usage: main_design.sh [-noclean_files]\n\n\
[-help] -- Print help information for this script\n\n\
[-step <name>] -- Execute specified step (simulate)\n\n\
[-lib_map_path <path>] -- Compiled simulation library directory path. The simulation library is compiled\n\
using the compile_simlib tcl command. Please see 'compile_simlib -help' for more information.\n\n\
[-reset_run] -- Delete simulator generated data files from the previous run and recreate simulator setup\n\
file/library mappings for a clean run. This switch will not execute steps defined in the script.\n\n\
NOTE: To keep simulator index file settings from the previous run, use the -keep_index switch\n\
NOTE: To regenerate simulator index file but keep the simulator generated files, use the -noclean_files switch\n\n\
[-reset_log] -- Delete simulator generated log files from the previous run\n\n\
[-keep_index] -- Keep simulator index file settings from the previous run\n\n\
[-noclean_files] -- Reset previous run, but do not remove simulator generated files from the previous run\n"
  echo -e $msg
  exit 0
}

# initialize globals
step=""
lib_map_path=""
b_step=0
b_lib_map_path=0
b_gen_bypass=0
b_reset_run=0
b_reset_log=0
b_keep_index=0
b_noclean_files=0

# launch script
run $*
