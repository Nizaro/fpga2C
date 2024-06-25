# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
namespace eval ::optrace {
  variable script "/home/nothon/fpga2C/ZTurnV2/ZTurnV2.runs/synth_1/main_design_wrapper.tcl"
  variable category "vivado_synth"
}

# Try to connect to running dispatch if we haven't done so already.
# This code assumes that the Tcl interpreter is not using threads,
# since the ::dispatch::connected variable isn't mutex protected.
if {![info exists ::dispatch::connected]} {
  namespace eval ::dispatch {
    variable connected false
    if {[llength [array get env XILINX_CD_CONNECT_ID]] > 0} {
      set result "true"
      if {[catch {
        if {[lsearch -exact [package names] DispatchTcl] < 0} {
          set result [load librdi_cd_clienttcl[info sharedlibextension]] 
        }
        if {$result eq "false"} {
          puts "WARNING: Could not load dispatch client library"
        }
        set connect_id [ ::dispatch::init_client -mode EXISTING_SERVER ]
        if { $connect_id eq "" } {
          puts "WARNING: Could not initialize dispatch client"
        } else {
          puts "INFO: Dispatch client connection id - $connect_id"
          set connected true
        }
      } catch_res]} {
        puts "WARNING: failed to connect to dispatch server - $catch_res"
      }
    }
  }
}
if {$::dispatch::connected} {
  # Remove the dummy proc if it exists.
  if { [expr {[llength [info procs ::OPTRACE]] > 0}] } {
    rename ::OPTRACE ""
  }
  proc ::OPTRACE { task action {tags {} } } {
    ::vitis_log::op_trace "$task" $action -tags $tags -script $::optrace::script -category $::optrace::category
  }
  # dispatch is generic. We specifically want to attach logging.
  ::vitis_log::connect_client
} else {
  # Add dummy proc if it doesn't exist.
  if { [expr {[llength [info procs ::OPTRACE]] == 0}] } {
    proc ::OPTRACE {{arg1 \"\" } {arg2 \"\"} {arg3 \"\" } {arg4 \"\"} {arg5 \"\" } {arg6 \"\"}} {
        # Do nothing
    }
  }
}

OPTRACE "synth_1" START { ROLLUP_AUTO }
set_param checkpoint.writeSynthRtdsInDcp 1
set_param synth.incrementalSynthesisCache ./.Xil/Vivado-74873-nothon-Swift-SF314-57/incrSyn
set_msg_config -id {Synth 8-256} -limit 10000
set_msg_config -id {Synth 8-638} -limit 10000
OPTRACE "Creating in-memory project" START { }
create_project -in_memory -part xc7z020clg400-2

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir /home/nothon/fpga2C/ZTurnV2/ZTurnV2.cache/wt [current_project]
set_property parent.project_path /home/nothon/fpga2C/ZTurnV2/ZTurnV2.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_FIFO XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property ip_repo_paths {
  /home/nothon/fpga2C/interface_repo
  /home/nothon/fpga2C/ip_repo
} [current_project]
update_ip_catalog
set_property ip_output_repo /home/nothon/fpga2C/ZTurnV2/ZTurnV2.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
set_property vhdl_define vdhl_version=vhdl_2008 [current_fileset]
OPTRACE "Creating in-memory project" END { }
OPTRACE "Adding files" START { }
read_vhdl -vhdl2008 -library xil_defaultlib /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/hdl/main_design_wrapper.vhd
add_files /home/nothon/fpga2C/ZTurnV2/ZTurnV2.srcs/sources_1/bd/main_design/main_design.bd
set_property used_in_implementation false [get_files -all /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_processing_system7_0_0/main_design_processing_system7_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_proc_sys_reset_0_0/main_design_proc_sys_reset_0_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_proc_sys_reset_0_0/main_design_proc_sys_reset_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_proc_sys_reset_0_0/main_design_proc_sys_reset_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_xbar_1/main_design_xbar_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_util_ds_buf_0_2/main_design_util_ds_buf_0_2_board.xdc]
set_property used_in_implementation false [get_files -all /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_util_ds_buf_0_2/main_design_util_ds_buf_0_2_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_xbar_2/main_design_xbar_2_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_axi_dma_0_0_1/main_design_axi_dma_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_axi_dma_0_0_1/main_design_axi_dma_0_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_axi_dma_0_0_1/main_design_axi_dma_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_xbar_3/main_design_xbar_3_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_xbar_4/main_design_xbar_4_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_lvds_clkin_0_ibuf_1/main_design_lvds_clkin_0_ibuf_1_board.xdc]
set_property used_in_implementation false [get_files -all /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_lvds_clkin_0_ibuf_1/main_design_lvds_clkin_0_ibuf_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_lvds_sync_0_ibuf1_0/main_design_lvds_sync_0_ibuf1_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_lvds_sync_0_ibuf1_0/main_design_lvds_sync_0_ibuf1_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_lvds_dout0_0_ibuf_0/main_design_lvds_dout0_0_ibuf_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_lvds_dout0_0_ibuf_0/main_design_lvds_dout0_0_ibuf_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_lvds_dout0_0_ibuf_1/main_design_lvds_dout0_0_ibuf_1_board.xdc]
set_property used_in_implementation false [get_files -all /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_lvds_dout0_0_ibuf_1/main_design_lvds_dout0_0_ibuf_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_lvds_dout1_0_ibuf_1/main_design_lvds_dout1_0_ibuf_1_board.xdc]
set_property used_in_implementation false [get_files -all /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_lvds_dout1_0_ibuf_1/main_design_lvds_dout1_0_ibuf_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_lvds_clkin_0_ibuf_4/main_design_lvds_clkin_0_ibuf_4_board.xdc]
set_property used_in_implementation false [get_files -all /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_lvds_clkin_0_ibuf_4/main_design_lvds_clkin_0_ibuf_4_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_lvds_dout0_0_ibuf_3/main_design_lvds_dout0_0_ibuf_3_board.xdc]
set_property used_in_implementation false [get_files -all /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_lvds_dout0_0_ibuf_3/main_design_lvds_dout0_0_ibuf_3_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_lvds_dout1_0_ibuf_3/main_design_lvds_dout1_0_ibuf_3_board.xdc]
set_property used_in_implementation false [get_files -all /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_lvds_dout1_0_ibuf_3/main_design_lvds_dout1_0_ibuf_3_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_lvds_dout2_0_ibuf_1/main_design_lvds_dout2_0_ibuf_1_board.xdc]
set_property used_in_implementation false [get_files -all /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_lvds_dout2_0_ibuf_1/main_design_lvds_dout2_0_ibuf_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_lvds_dout3_0_ibuf_1/main_design_lvds_dout3_0_ibuf_1_board.xdc]
set_property used_in_implementation false [get_files -all /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_lvds_dout3_0_ibuf_1/main_design_lvds_dout3_0_ibuf_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_lvds_sync_0_ibuf_1/main_design_lvds_sync_0_ibuf_1_board.xdc]
set_property used_in_implementation false [get_files -all /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_lvds_sync_0_ibuf_1/main_design_lvds_sync_0_ibuf_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_auto_pc_0/main_design_auto_pc_0_ooc.xdc]
set_property used_in_synthesis false [get_files -all /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_auto_us_0/main_design_auto_us_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_auto_us_0/main_design_auto_us_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_auto_us_0/main_design_auto_us_0_ooc.xdc]
set_property used_in_synthesis false [get_files -all /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_auto_us_1/main_design_auto_us_1_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_auto_us_1/main_design_auto_us_1_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_auto_us_1/main_design_auto_us_1_ooc.xdc]
set_property used_in_synthesis false [get_files -all /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_auto_us_2/main_design_auto_us_2_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_auto_us_2/main_design_auto_us_2_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_auto_us_2/main_design_auto_us_2_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_auto_pc_1/main_design_auto_pc_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_auto_ss_slid_0/main_design_auto_ss_slid_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_auto_ss_k_0/main_design_auto_ss_k_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_auto_ss_slidr_0/main_design_auto_ss_slidr_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_auto_ss_k_1/main_design_auto_ss_k_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_auto_ss_slidr_1/main_design_auto_ss_slidr_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_auto_ss_k_2/main_design_auto_ss_k_2_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/ip/main_design_auto_ss_slidr_2/main_design_auto_ss_slidr_2_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/nothon/fpga2C/ZTurnV2/ZTurnV2.gen/sources_1/bd/main_design/main_design_ooc.xdc]

OPTRACE "Adding files" END { }
# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc /home/nothon/fpga2C/ZTurnV2/ZTurnV2.srcs/constrs_1/new/elab_constraints.xdc
set_property used_in_implementation false [get_files /home/nothon/fpga2C/ZTurnV2/ZTurnV2.srcs/constrs_1/new/elab_constraints.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param ips.enableIPCacheLiteLoad 1

read_checkpoint -auto_incremental -incremental /home/nothon/fpga2C/ZTurnV2/ZTurnV2.srcs/utils_1/imports/synth_1/main_design.dcp
close [open __synthesis_is_running__ w]

OPTRACE "synth_design" START { }
synth_design -top main_design_wrapper -part xc7z020clg400-2
OPTRACE "synth_design" END { }
if { [get_msg_config -count -severity {CRITICAL WARNING}] > 0 } {
 send_msg_id runtcl-6 info "Synthesis results are not added to the cache due to CRITICAL_WARNING"
}


OPTRACE "write_checkpoint" START { CHECKPOINT }
# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef main_design_wrapper.dcp
OPTRACE "write_checkpoint" END { }
OPTRACE "synth reports" START { REPORT }
generate_parallel_reports -reports { "report_utilization -file main_design_wrapper_utilization_synth.rpt -pb main_design_wrapper_utilization_synth.pb"  } 
OPTRACE "synth reports" END { }
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
OPTRACE "synth_1" END { }
