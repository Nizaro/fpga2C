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
CMAKE_SOURCE_DIR = /home/nothon/fpga2C/vitis_workspace/zturnV2_platform/zynq_fsbl/zynq_fsbl_bsp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/nothon/fpga2C/vitis_workspace/zturnV2_platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp

# Include any dependencies generated for this target.
include libsrc/iicps/src/CMakeFiles/iicps.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include libsrc/iicps/src/CMakeFiles/iicps.dir/compiler_depend.make

# Include the progress variables for this target.
include libsrc/iicps/src/CMakeFiles/iicps.dir/progress.make

# Include the compile flags for this target's objects.
include libsrc/iicps/src/CMakeFiles/iicps.dir/flags.make

libsrc/iicps/src/CMakeFiles/iicps.dir/xiicps_g.c.obj: libsrc/iicps/src/CMakeFiles/iicps.dir/flags.make
libsrc/iicps/src/CMakeFiles/iicps.dir/xiicps_g.c.obj: /home/nothon/fpga2C/vitis_workspace/zturnV2_platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/iicps/src/xiicps_g.c
libsrc/iicps/src/CMakeFiles/iicps.dir/xiicps_g.c.obj: libsrc/iicps/src/CMakeFiles/iicps.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nothon/fpga2C/vitis_workspace/zturnV2_platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object libsrc/iicps/src/CMakeFiles/iicps.dir/xiicps_g.c.obj"
	cd /home/nothon/fpga2C/vitis_workspace/zturnV2_platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/iicps/src && /tools/Xilinx/Vitis/2024.1/gnu/aarch32/lin/gcc-arm-none-eabi/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libsrc/iicps/src/CMakeFiles/iicps.dir/xiicps_g.c.obj -MF CMakeFiles/iicps.dir/xiicps_g.c.obj.d -o CMakeFiles/iicps.dir/xiicps_g.c.obj -c /home/nothon/fpga2C/vitis_workspace/zturnV2_platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/iicps/src/xiicps_g.c

libsrc/iicps/src/CMakeFiles/iicps.dir/xiicps_g.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/iicps.dir/xiicps_g.c.i"
	cd /home/nothon/fpga2C/vitis_workspace/zturnV2_platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/iicps/src && /tools/Xilinx/Vitis/2024.1/gnu/aarch32/lin/gcc-arm-none-eabi/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/nothon/fpga2C/vitis_workspace/zturnV2_platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/iicps/src/xiicps_g.c > CMakeFiles/iicps.dir/xiicps_g.c.i

libsrc/iicps/src/CMakeFiles/iicps.dir/xiicps_g.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/iicps.dir/xiicps_g.c.s"
	cd /home/nothon/fpga2C/vitis_workspace/zturnV2_platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/iicps/src && /tools/Xilinx/Vitis/2024.1/gnu/aarch32/lin/gcc-arm-none-eabi/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/nothon/fpga2C/vitis_workspace/zturnV2_platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/iicps/src/xiicps_g.c -o CMakeFiles/iicps.dir/xiicps_g.c.s

libsrc/iicps/src/CMakeFiles/iicps.dir/xiicps_selftest.c.obj: libsrc/iicps/src/CMakeFiles/iicps.dir/flags.make
libsrc/iicps/src/CMakeFiles/iicps.dir/xiicps_selftest.c.obj: /home/nothon/fpga2C/vitis_workspace/zturnV2_platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/iicps/src/xiicps_selftest.c
libsrc/iicps/src/CMakeFiles/iicps.dir/xiicps_selftest.c.obj: libsrc/iicps/src/CMakeFiles/iicps.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nothon/fpga2C/vitis_workspace/zturnV2_platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object libsrc/iicps/src/CMakeFiles/iicps.dir/xiicps_selftest.c.obj"
	cd /home/nothon/fpga2C/vitis_workspace/zturnV2_platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/iicps/src && /tools/Xilinx/Vitis/2024.1/gnu/aarch32/lin/gcc-arm-none-eabi/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libsrc/iicps/src/CMakeFiles/iicps.dir/xiicps_selftest.c.obj -MF CMakeFiles/iicps.dir/xiicps_selftest.c.obj.d -o CMakeFiles/iicps.dir/xiicps_selftest.c.obj -c /home/nothon/fpga2C/vitis_workspace/zturnV2_platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/iicps/src/xiicps_selftest.c

libsrc/iicps/src/CMakeFiles/iicps.dir/xiicps_selftest.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/iicps.dir/xiicps_selftest.c.i"
	cd /home/nothon/fpga2C/vitis_workspace/zturnV2_platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/iicps/src && /tools/Xilinx/Vitis/2024.1/gnu/aarch32/lin/gcc-arm-none-eabi/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/nothon/fpga2C/vitis_workspace/zturnV2_platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/iicps/src/xiicps_selftest.c > CMakeFiles/iicps.dir/xiicps_selftest.c.i

libsrc/iicps/src/CMakeFiles/iicps.dir/xiicps_selftest.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/iicps.dir/xiicps_selftest.c.s"
	cd /home/nothon/fpga2C/vitis_workspace/zturnV2_platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/iicps/src && /tools/Xilinx/Vitis/2024.1/gnu/aarch32/lin/gcc-arm-none-eabi/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/nothon/fpga2C/vitis_workspace/zturnV2_platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/iicps/src/xiicps_selftest.c -o CMakeFiles/iicps.dir/xiicps_selftest.c.s

libsrc/iicps/src/CMakeFiles/iicps.dir/xiicps.c.obj: libsrc/iicps/src/CMakeFiles/iicps.dir/flags.make
libsrc/iicps/src/CMakeFiles/iicps.dir/xiicps.c.obj: /home/nothon/fpga2C/vitis_workspace/zturnV2_platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/iicps/src/xiicps.c
libsrc/iicps/src/CMakeFiles/iicps.dir/xiicps.c.obj: libsrc/iicps/src/CMakeFiles/iicps.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nothon/fpga2C/vitis_workspace/zturnV2_platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object libsrc/iicps/src/CMakeFiles/iicps.dir/xiicps.c.obj"
	cd /home/nothon/fpga2C/vitis_workspace/zturnV2_platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/iicps/src && /tools/Xilinx/Vitis/2024.1/gnu/aarch32/lin/gcc-arm-none-eabi/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libsrc/iicps/src/CMakeFiles/iicps.dir/xiicps.c.obj -MF CMakeFiles/iicps.dir/xiicps.c.obj.d -o CMakeFiles/iicps.dir/xiicps.c.obj -c /home/nothon/fpga2C/vitis_workspace/zturnV2_platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/iicps/src/xiicps.c

libsrc/iicps/src/CMakeFiles/iicps.dir/xiicps.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/iicps.dir/xiicps.c.i"
	cd /home/nothon/fpga2C/vitis_workspace/zturnV2_platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/iicps/src && /tools/Xilinx/Vitis/2024.1/gnu/aarch32/lin/gcc-arm-none-eabi/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/nothon/fpga2C/vitis_workspace/zturnV2_platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/iicps/src/xiicps.c > CMakeFiles/iicps.dir/xiicps.c.i

libsrc/iicps/src/CMakeFiles/iicps.dir/xiicps.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/iicps.dir/xiicps.c.s"
	cd /home/nothon/fpga2C/vitis_workspace/zturnV2_platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/iicps/src && /tools/Xilinx/Vitis/2024.1/gnu/aarch32/lin/gcc-arm-none-eabi/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/nothon/fpga2C/vitis_workspace/zturnV2_platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/iicps/src/xiicps.c -o CMakeFiles/iicps.dir/xiicps.c.s

libsrc/iicps/src/CMakeFiles/iicps.dir/xiicps_slave.c.obj: libsrc/iicps/src/CMakeFiles/iicps.dir/flags.make
libsrc/iicps/src/CMakeFiles/iicps.dir/xiicps_slave.c.obj: /home/nothon/fpga2C/vitis_workspace/zturnV2_platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/iicps/src/xiicps_slave.c
libsrc/iicps/src/CMakeFiles/iicps.dir/xiicps_slave.c.obj: libsrc/iicps/src/CMakeFiles/iicps.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nothon/fpga2C/vitis_workspace/zturnV2_platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object libsrc/iicps/src/CMakeFiles/iicps.dir/xiicps_slave.c.obj"
	cd /home/nothon/fpga2C/vitis_workspace/zturnV2_platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/iicps/src && /tools/Xilinx/Vitis/2024.1/gnu/aarch32/lin/gcc-arm-none-eabi/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libsrc/iicps/src/CMakeFiles/iicps.dir/xiicps_slave.c.obj -MF CMakeFiles/iicps.dir/xiicps_slave.c.obj.d -o CMakeFiles/iicps.dir/xiicps_slave.c.obj -c /home/nothon/fpga2C/vitis_workspace/zturnV2_platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/iicps/src/xiicps_slave.c

libsrc/iicps/src/CMakeFiles/iicps.dir/xiicps_slave.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/iicps.dir/xiicps_slave.c.i"
	cd /home/nothon/fpga2C/vitis_workspace/zturnV2_platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/iicps/src && /tools/Xilinx/Vitis/2024.1/gnu/aarch32/lin/gcc-arm-none-eabi/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/nothon/fpga2C/vitis_workspace/zturnV2_platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/iicps/src/xiicps_slave.c > CMakeFiles/iicps.dir/xiicps_slave.c.i

libsrc/iicps/src/CMakeFiles/iicps.dir/xiicps_slave.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/iicps.dir/xiicps_slave.c.s"
	cd /home/nothon/fpga2C/vitis_workspace/zturnV2_platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/iicps/src && /tools/Xilinx/Vitis/2024.1/gnu/aarch32/lin/gcc-arm-none-eabi/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/nothon/fpga2C/vitis_workspace/zturnV2_platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/iicps/src/xiicps_slave.c -o CMakeFiles/iicps.dir/xiicps_slave.c.s

libsrc/iicps/src/CMakeFiles/iicps.dir/xiicps_hw.c.obj: libsrc/iicps/src/CMakeFiles/iicps.dir/flags.make
libsrc/iicps/src/CMakeFiles/iicps.dir/xiicps_hw.c.obj: /home/nothon/fpga2C/vitis_workspace/zturnV2_platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/iicps/src/xiicps_hw.c
libsrc/iicps/src/CMakeFiles/iicps.dir/xiicps_hw.c.obj: libsrc/iicps/src/CMakeFiles/iicps.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nothon/fpga2C/vitis_workspace/zturnV2_platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object libsrc/iicps/src/CMakeFiles/iicps.dir/xiicps_hw.c.obj"
	cd /home/nothon/fpga2C/vitis_workspace/zturnV2_platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/iicps/src && /tools/Xilinx/Vitis/2024.1/gnu/aarch32/lin/gcc-arm-none-eabi/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libsrc/iicps/src/CMakeFiles/iicps.dir/xiicps_hw.c.obj -MF CMakeFiles/iicps.dir/xiicps_hw.c.obj.d -o CMakeFiles/iicps.dir/xiicps_hw.c.obj -c /home/nothon/fpga2C/vitis_workspace/zturnV2_platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/iicps/src/xiicps_hw.c

libsrc/iicps/src/CMakeFiles/iicps.dir/xiicps_hw.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/iicps.dir/xiicps_hw.c.i"
	cd /home/nothon/fpga2C/vitis_workspace/zturnV2_platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/iicps/src && /tools/Xilinx/Vitis/2024.1/gnu/aarch32/lin/gcc-arm-none-eabi/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/nothon/fpga2C/vitis_workspace/zturnV2_platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/iicps/src/xiicps_hw.c > CMakeFiles/iicps.dir/xiicps_hw.c.i

libsrc/iicps/src/CMakeFiles/iicps.dir/xiicps_hw.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/iicps.dir/xiicps_hw.c.s"
	cd /home/nothon/fpga2C/vitis_workspace/zturnV2_platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/iicps/src && /tools/Xilinx/Vitis/2024.1/gnu/aarch32/lin/gcc-arm-none-eabi/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/nothon/fpga2C/vitis_workspace/zturnV2_platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/iicps/src/xiicps_hw.c -o CMakeFiles/iicps.dir/xiicps_hw.c.s

libsrc/iicps/src/CMakeFiles/iicps.dir/xiicps_intr.c.obj: libsrc/iicps/src/CMakeFiles/iicps.dir/flags.make
libsrc/iicps/src/CMakeFiles/iicps.dir/xiicps_intr.c.obj: /home/nothon/fpga2C/vitis_workspace/zturnV2_platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/iicps/src/xiicps_intr.c
libsrc/iicps/src/CMakeFiles/iicps.dir/xiicps_intr.c.obj: libsrc/iicps/src/CMakeFiles/iicps.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nothon/fpga2C/vitis_workspace/zturnV2_platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object libsrc/iicps/src/CMakeFiles/iicps.dir/xiicps_intr.c.obj"
	cd /home/nothon/fpga2C/vitis_workspace/zturnV2_platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/iicps/src && /tools/Xilinx/Vitis/2024.1/gnu/aarch32/lin/gcc-arm-none-eabi/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libsrc/iicps/src/CMakeFiles/iicps.dir/xiicps_intr.c.obj -MF CMakeFiles/iicps.dir/xiicps_intr.c.obj.d -o CMakeFiles/iicps.dir/xiicps_intr.c.obj -c /home/nothon/fpga2C/vitis_workspace/zturnV2_platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/iicps/src/xiicps_intr.c

libsrc/iicps/src/CMakeFiles/iicps.dir/xiicps_intr.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/iicps.dir/xiicps_intr.c.i"
	cd /home/nothon/fpga2C/vitis_workspace/zturnV2_platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/iicps/src && /tools/Xilinx/Vitis/2024.1/gnu/aarch32/lin/gcc-arm-none-eabi/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/nothon/fpga2C/vitis_workspace/zturnV2_platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/iicps/src/xiicps_intr.c > CMakeFiles/iicps.dir/xiicps_intr.c.i

libsrc/iicps/src/CMakeFiles/iicps.dir/xiicps_intr.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/iicps.dir/xiicps_intr.c.s"
	cd /home/nothon/fpga2C/vitis_workspace/zturnV2_platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/iicps/src && /tools/Xilinx/Vitis/2024.1/gnu/aarch32/lin/gcc-arm-none-eabi/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/nothon/fpga2C/vitis_workspace/zturnV2_platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/iicps/src/xiicps_intr.c -o CMakeFiles/iicps.dir/xiicps_intr.c.s

libsrc/iicps/src/CMakeFiles/iicps.dir/xiicps_master.c.obj: libsrc/iicps/src/CMakeFiles/iicps.dir/flags.make
libsrc/iicps/src/CMakeFiles/iicps.dir/xiicps_master.c.obj: /home/nothon/fpga2C/vitis_workspace/zturnV2_platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/iicps/src/xiicps_master.c
libsrc/iicps/src/CMakeFiles/iicps.dir/xiicps_master.c.obj: libsrc/iicps/src/CMakeFiles/iicps.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nothon/fpga2C/vitis_workspace/zturnV2_platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object libsrc/iicps/src/CMakeFiles/iicps.dir/xiicps_master.c.obj"
	cd /home/nothon/fpga2C/vitis_workspace/zturnV2_platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/iicps/src && /tools/Xilinx/Vitis/2024.1/gnu/aarch32/lin/gcc-arm-none-eabi/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libsrc/iicps/src/CMakeFiles/iicps.dir/xiicps_master.c.obj -MF CMakeFiles/iicps.dir/xiicps_master.c.obj.d -o CMakeFiles/iicps.dir/xiicps_master.c.obj -c /home/nothon/fpga2C/vitis_workspace/zturnV2_platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/iicps/src/xiicps_master.c

libsrc/iicps/src/CMakeFiles/iicps.dir/xiicps_master.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/iicps.dir/xiicps_master.c.i"
	cd /home/nothon/fpga2C/vitis_workspace/zturnV2_platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/iicps/src && /tools/Xilinx/Vitis/2024.1/gnu/aarch32/lin/gcc-arm-none-eabi/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/nothon/fpga2C/vitis_workspace/zturnV2_platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/iicps/src/xiicps_master.c > CMakeFiles/iicps.dir/xiicps_master.c.i

libsrc/iicps/src/CMakeFiles/iicps.dir/xiicps_master.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/iicps.dir/xiicps_master.c.s"
	cd /home/nothon/fpga2C/vitis_workspace/zturnV2_platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/iicps/src && /tools/Xilinx/Vitis/2024.1/gnu/aarch32/lin/gcc-arm-none-eabi/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/nothon/fpga2C/vitis_workspace/zturnV2_platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/iicps/src/xiicps_master.c -o CMakeFiles/iicps.dir/xiicps_master.c.s

libsrc/iicps/src/CMakeFiles/iicps.dir/xiicps_options.c.obj: libsrc/iicps/src/CMakeFiles/iicps.dir/flags.make
libsrc/iicps/src/CMakeFiles/iicps.dir/xiicps_options.c.obj: /home/nothon/fpga2C/vitis_workspace/zturnV2_platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/iicps/src/xiicps_options.c
libsrc/iicps/src/CMakeFiles/iicps.dir/xiicps_options.c.obj: libsrc/iicps/src/CMakeFiles/iicps.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nothon/fpga2C/vitis_workspace/zturnV2_platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object libsrc/iicps/src/CMakeFiles/iicps.dir/xiicps_options.c.obj"
	cd /home/nothon/fpga2C/vitis_workspace/zturnV2_platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/iicps/src && /tools/Xilinx/Vitis/2024.1/gnu/aarch32/lin/gcc-arm-none-eabi/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libsrc/iicps/src/CMakeFiles/iicps.dir/xiicps_options.c.obj -MF CMakeFiles/iicps.dir/xiicps_options.c.obj.d -o CMakeFiles/iicps.dir/xiicps_options.c.obj -c /home/nothon/fpga2C/vitis_workspace/zturnV2_platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/iicps/src/xiicps_options.c

libsrc/iicps/src/CMakeFiles/iicps.dir/xiicps_options.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/iicps.dir/xiicps_options.c.i"
	cd /home/nothon/fpga2C/vitis_workspace/zturnV2_platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/iicps/src && /tools/Xilinx/Vitis/2024.1/gnu/aarch32/lin/gcc-arm-none-eabi/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/nothon/fpga2C/vitis_workspace/zturnV2_platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/iicps/src/xiicps_options.c > CMakeFiles/iicps.dir/xiicps_options.c.i

libsrc/iicps/src/CMakeFiles/iicps.dir/xiicps_options.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/iicps.dir/xiicps_options.c.s"
	cd /home/nothon/fpga2C/vitis_workspace/zturnV2_platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/iicps/src && /tools/Xilinx/Vitis/2024.1/gnu/aarch32/lin/gcc-arm-none-eabi/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/nothon/fpga2C/vitis_workspace/zturnV2_platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/iicps/src/xiicps_options.c -o CMakeFiles/iicps.dir/xiicps_options.c.s

libsrc/iicps/src/CMakeFiles/iicps.dir/xiicps_xfer.c.obj: libsrc/iicps/src/CMakeFiles/iicps.dir/flags.make
libsrc/iicps/src/CMakeFiles/iicps.dir/xiicps_xfer.c.obj: /home/nothon/fpga2C/vitis_workspace/zturnV2_platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/iicps/src/xiicps_xfer.c
libsrc/iicps/src/CMakeFiles/iicps.dir/xiicps_xfer.c.obj: libsrc/iicps/src/CMakeFiles/iicps.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nothon/fpga2C/vitis_workspace/zturnV2_platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object libsrc/iicps/src/CMakeFiles/iicps.dir/xiicps_xfer.c.obj"
	cd /home/nothon/fpga2C/vitis_workspace/zturnV2_platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/iicps/src && /tools/Xilinx/Vitis/2024.1/gnu/aarch32/lin/gcc-arm-none-eabi/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libsrc/iicps/src/CMakeFiles/iicps.dir/xiicps_xfer.c.obj -MF CMakeFiles/iicps.dir/xiicps_xfer.c.obj.d -o CMakeFiles/iicps.dir/xiicps_xfer.c.obj -c /home/nothon/fpga2C/vitis_workspace/zturnV2_platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/iicps/src/xiicps_xfer.c

libsrc/iicps/src/CMakeFiles/iicps.dir/xiicps_xfer.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/iicps.dir/xiicps_xfer.c.i"
	cd /home/nothon/fpga2C/vitis_workspace/zturnV2_platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/iicps/src && /tools/Xilinx/Vitis/2024.1/gnu/aarch32/lin/gcc-arm-none-eabi/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/nothon/fpga2C/vitis_workspace/zturnV2_platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/iicps/src/xiicps_xfer.c > CMakeFiles/iicps.dir/xiicps_xfer.c.i

libsrc/iicps/src/CMakeFiles/iicps.dir/xiicps_xfer.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/iicps.dir/xiicps_xfer.c.s"
	cd /home/nothon/fpga2C/vitis_workspace/zturnV2_platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/iicps/src && /tools/Xilinx/Vitis/2024.1/gnu/aarch32/lin/gcc-arm-none-eabi/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/nothon/fpga2C/vitis_workspace/zturnV2_platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/iicps/src/xiicps_xfer.c -o CMakeFiles/iicps.dir/xiicps_xfer.c.s

libsrc/iicps/src/CMakeFiles/iicps.dir/xiicps_sinit.c.obj: libsrc/iicps/src/CMakeFiles/iicps.dir/flags.make
libsrc/iicps/src/CMakeFiles/iicps.dir/xiicps_sinit.c.obj: /home/nothon/fpga2C/vitis_workspace/zturnV2_platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/iicps/src/xiicps_sinit.c
libsrc/iicps/src/CMakeFiles/iicps.dir/xiicps_sinit.c.obj: libsrc/iicps/src/CMakeFiles/iicps.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nothon/fpga2C/vitis_workspace/zturnV2_platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building C object libsrc/iicps/src/CMakeFiles/iicps.dir/xiicps_sinit.c.obj"
	cd /home/nothon/fpga2C/vitis_workspace/zturnV2_platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/iicps/src && /tools/Xilinx/Vitis/2024.1/gnu/aarch32/lin/gcc-arm-none-eabi/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libsrc/iicps/src/CMakeFiles/iicps.dir/xiicps_sinit.c.obj -MF CMakeFiles/iicps.dir/xiicps_sinit.c.obj.d -o CMakeFiles/iicps.dir/xiicps_sinit.c.obj -c /home/nothon/fpga2C/vitis_workspace/zturnV2_platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/iicps/src/xiicps_sinit.c

libsrc/iicps/src/CMakeFiles/iicps.dir/xiicps_sinit.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/iicps.dir/xiicps_sinit.c.i"
	cd /home/nothon/fpga2C/vitis_workspace/zturnV2_platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/iicps/src && /tools/Xilinx/Vitis/2024.1/gnu/aarch32/lin/gcc-arm-none-eabi/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/nothon/fpga2C/vitis_workspace/zturnV2_platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/iicps/src/xiicps_sinit.c > CMakeFiles/iicps.dir/xiicps_sinit.c.i

libsrc/iicps/src/CMakeFiles/iicps.dir/xiicps_sinit.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/iicps.dir/xiicps_sinit.c.s"
	cd /home/nothon/fpga2C/vitis_workspace/zturnV2_platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/iicps/src && /tools/Xilinx/Vitis/2024.1/gnu/aarch32/lin/gcc-arm-none-eabi/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/nothon/fpga2C/vitis_workspace/zturnV2_platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/iicps/src/xiicps_sinit.c -o CMakeFiles/iicps.dir/xiicps_sinit.c.s

# Object files for target iicps
iicps_OBJECTS = \
"CMakeFiles/iicps.dir/xiicps_g.c.obj" \
"CMakeFiles/iicps.dir/xiicps_selftest.c.obj" \
"CMakeFiles/iicps.dir/xiicps.c.obj" \
"CMakeFiles/iicps.dir/xiicps_slave.c.obj" \
"CMakeFiles/iicps.dir/xiicps_hw.c.obj" \
"CMakeFiles/iicps.dir/xiicps_intr.c.obj" \
"CMakeFiles/iicps.dir/xiicps_master.c.obj" \
"CMakeFiles/iicps.dir/xiicps_options.c.obj" \
"CMakeFiles/iicps.dir/xiicps_xfer.c.obj" \
"CMakeFiles/iicps.dir/xiicps_sinit.c.obj"

# External object files for target iicps
iicps_EXTERNAL_OBJECTS =

libsrc/iicps/src/libiicps.a: libsrc/iicps/src/CMakeFiles/iicps.dir/xiicps_g.c.obj
libsrc/iicps/src/libiicps.a: libsrc/iicps/src/CMakeFiles/iicps.dir/xiicps_selftest.c.obj
libsrc/iicps/src/libiicps.a: libsrc/iicps/src/CMakeFiles/iicps.dir/xiicps.c.obj
libsrc/iicps/src/libiicps.a: libsrc/iicps/src/CMakeFiles/iicps.dir/xiicps_slave.c.obj
libsrc/iicps/src/libiicps.a: libsrc/iicps/src/CMakeFiles/iicps.dir/xiicps_hw.c.obj
libsrc/iicps/src/libiicps.a: libsrc/iicps/src/CMakeFiles/iicps.dir/xiicps_intr.c.obj
libsrc/iicps/src/libiicps.a: libsrc/iicps/src/CMakeFiles/iicps.dir/xiicps_master.c.obj
libsrc/iicps/src/libiicps.a: libsrc/iicps/src/CMakeFiles/iicps.dir/xiicps_options.c.obj
libsrc/iicps/src/libiicps.a: libsrc/iicps/src/CMakeFiles/iicps.dir/xiicps_xfer.c.obj
libsrc/iicps/src/libiicps.a: libsrc/iicps/src/CMakeFiles/iicps.dir/xiicps_sinit.c.obj
libsrc/iicps/src/libiicps.a: libsrc/iicps/src/CMakeFiles/iicps.dir/build.make
libsrc/iicps/src/libiicps.a: libsrc/iicps/src/CMakeFiles/iicps.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/nothon/fpga2C/vitis_workspace/zturnV2_platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Linking C static library libiicps.a"
	cd /home/nothon/fpga2C/vitis_workspace/zturnV2_platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/iicps/src && $(CMAKE_COMMAND) -P CMakeFiles/iicps.dir/cmake_clean_target.cmake
	cd /home/nothon/fpga2C/vitis_workspace/zturnV2_platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/iicps/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/iicps.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
libsrc/iicps/src/CMakeFiles/iicps.dir/build: libsrc/iicps/src/libiicps.a
.PHONY : libsrc/iicps/src/CMakeFiles/iicps.dir/build

libsrc/iicps/src/CMakeFiles/iicps.dir/clean:
	cd /home/nothon/fpga2C/vitis_workspace/zturnV2_platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/iicps/src && $(CMAKE_COMMAND) -P CMakeFiles/iicps.dir/cmake_clean.cmake
.PHONY : libsrc/iicps/src/CMakeFiles/iicps.dir/clean

libsrc/iicps/src/CMakeFiles/iicps.dir/depend:
	cd /home/nothon/fpga2C/vitis_workspace/zturnV2_platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/nothon/fpga2C/vitis_workspace/zturnV2_platform/zynq_fsbl/zynq_fsbl_bsp /home/nothon/fpga2C/vitis_workspace/zturnV2_platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/iicps/src /home/nothon/fpga2C/vitis_workspace/zturnV2_platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp /home/nothon/fpga2C/vitis_workspace/zturnV2_platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/iicps/src /home/nothon/fpga2C/vitis_workspace/zturnV2_platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/iicps/src/CMakeFiles/iicps.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : libsrc/iicps/src/CMakeFiles/iicps.dir/depend

