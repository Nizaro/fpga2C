# Copyright (c) 2023 Advanced Micro Devices, Inc. All Rights Reserved.
# SPDX-License-Identifier: MIT

if (YOCTO)
find_package(common)
set(INTC_DIR "${CMAKE_CURRENT_SOURCE_DIR}")
set(SCUGIC_DIR "${CMAKE_CURRENT_SOURCE_DIR}")
else()
set(INTC_DIR "${CMAKE_CURRENT_SOURCE_DIR}/../../../../intc/src/")
set(SCUGIC_DIR "${CMAKE_CURRENT_SOURCE_DIR}/../../../../scugic/src/")
endif()
find_package(INTC QUIET)
set(defs "")
list(APPEND defs "#ifndef XCOMMON_DRV_CONFIG_H_\n")
list(APPEND defs "#define XCOMMON_DRV_CONFIG_H_\n\n")
if ((EXISTS "${INTC_DIR}/INTCConfig.cmake") AND
    DRIVER_INSTANCES)
    list(APPEND defs "#define XPAR_AXI_INTC\n")
endif()

find_package(SCUGIC QUIET)
if ((EXISTS "${SCUGIC_DIR}/SCUGICConfig.cmake") AND
     DRIVER_INSTANCES)
    list(APPEND defs "#define XPAR_SCUGIC\n")
endif()
list(APPEND defs "\n#endif")
file(WRITE ${CMAKE_CURRENT_SOURCE_DIR}/xcommon_drv_config.h ${defs})
collect (PROJECT_LIB_SOURCES xinterrupt_wrap.c)
collect (PROJECT_LIB_HEADERS xinterrupt_wrap.h)
collect (PROJECT_LIB_HEADERS xcommon_drv_config.h)
if (YOCTO)
collector_list (_sources PROJECT_LIB_SOURCES)
collector_list (_headers PROJECT_LIB_HEADERS)
file(COPY ${_headers} DESTINATION ${CMAKE_BINARY_DIR}/include)
add_library(common STATIC ${_sources})
set_target_properties(common PROPERTIES LINKER_LANGUAGE C)
endif()
