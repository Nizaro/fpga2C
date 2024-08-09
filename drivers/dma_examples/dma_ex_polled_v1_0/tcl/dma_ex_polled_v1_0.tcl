#-----------------------------------------------------------
# dma_ex_polled_v1_0.tcl
#-----------------------------------------------------------
set design_name dma_ex_polled
set design_ver v1_0
set underscore _
set design_name_full "$design_name$underscore$design_ver"
puts "NOTE: This file must be executed from the project's 'tcl' directory"

#-----------------------------------------------------------
# Archive existing design if it already exists
#-----------------------------------------------------------
puts "NOTE: Archive exisitng $design_name_full design if it exists"
set format_date [exec date +%Y%m%d_%H%M]
set date_suffix $underscore$format_date
if { [file exists "../proj/$design_name_full"] == 1 } { 
  puts "Moving existing $design_name_full to time-stamped suffix $design_name_full$date_suffix"
  exec mv "../proj/$design_name_full" "../proj/$design_name_full$date_suffix"
}

#-----------------------------------------------------------
# Create project
#-----------------------------------------------------------
puts "Creating project for $design_name_full..."
create_project $design_name_full "../proj/$design_name_full" -part xc7z020clg484-1
set_property board em.avnet.com:zynq:zed:d [current_project]

#-----------------------------------------------------------
# Add HDL source to design
#-----------------------------------------------------------
puts "Adding HDL source to the design..."
set top_suffix _top
set fpga_top "$design_name_full$top_suffix.v"
puts "NOTE: Using $fpga_top for top level"
add_files -norecurse -fileset sources_1 "../src/$fpga_top"

#-----------------------------------------------------------
# Create BD source
#-----------------------------------------------------------
puts "Creating block diagram..."
source "./bd.tcl"
make_wrapper -files [get_files "../proj/$design_name_full/$design_name_full.srcs/sources_1/bd/design_1/design_1.bd"] -top
import_files -force -norecurse "../proj/$design_name_full/$design_name_full.srcs/sources_1/bd/design_1/hdl/design_1_wrapper.v"




