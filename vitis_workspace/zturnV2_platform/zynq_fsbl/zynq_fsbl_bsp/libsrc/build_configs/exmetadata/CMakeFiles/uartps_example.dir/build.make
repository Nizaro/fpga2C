# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.24

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Produce verbose output by default.
VERBOSE = 1

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /tools/Xilinx/Vitis/2024.1/tps/lnx64/cmake-3.24.2/bin/cmake

# The command to remove a file.
RM = /tools/Xilinx/Vitis/2024.1/tps/lnx64/cmake-3.24.2/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/nothon/fpga2C/vitis_workspace/zturnV2_platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/exmetadata

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/nothon/fpga2C/vitis_workspace/zturnV2_platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/exmetadata

# Utility rule file for uartps_example.

# Include any custom commands dependencies for this target.
include CMakeFiles/uartps_example.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/uartps_example.dir/progress.make

CMakeFiles/uartps_example:
	lopper -f -O /home/nothon/fpga2C/vitis_workspace/zturnV2_platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/uartps /home/nothon/fpga2C/vitis_workspace/zturnV2_platform/zynq_fsbl/zynq_fsbl_bsp/hw_artifacts/ps7_cortexa9_0_baremetal.dts -- bmcmake_metadata_xlnx ps7_cortexa9_0 /tools/Xilinx/Vitis/2024.1/data/embeddedsw/XilinxProcessorIPLib/drivers/uartps_v3_14/examples drvcmake_metadata

uartps_example: CMakeFiles/uartps_example
uartps_example: CMakeFiles/uartps_example.dir/build.make
.PHONY : uartps_example

# Rule to build all files generated by this target.
CMakeFiles/uartps_example.dir/build: uartps_example
.PHONY : CMakeFiles/uartps_example.dir/build

CMakeFiles/uartps_example.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/uartps_example.dir/cmake_clean.cmake
.PHONY : CMakeFiles/uartps_example.dir/clean

CMakeFiles/uartps_example.dir/depend:
	cd /home/nothon/fpga2C/vitis_workspace/zturnV2_platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/exmetadata && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/nothon/fpga2C/vitis_workspace/zturnV2_platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/exmetadata /home/nothon/fpga2C/vitis_workspace/zturnV2_platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/exmetadata /home/nothon/fpga2C/vitis_workspace/zturnV2_platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/exmetadata /home/nothon/fpga2C/vitis_workspace/zturnV2_platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/exmetadata /home/nothon/fpga2C/vitis_workspace/zturnV2_platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/exmetadata/CMakeFiles/uartps_example.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/uartps_example.dir/depend

