// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1 (64-bit)
// Tool Version Limit: 2024.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XMAIN_DESIGN_V_MIX_0_0_V_MIX_H
#define XMAIN_DESIGN_V_MIX_0_0_V_MIX_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xmain_design_v_mix_0_0_v_mix_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
#ifdef SDT
    char *Name;
#else
    u16 DeviceId;
#endif
    u32 Main_design_v_mix_0_0_ctrl_BaseAddress;
} XMain_design_v_mix_0_0_v_mix_Config;
#endif

typedef struct {
    u32 Main_design_v_mix_0_0_ctrl_BaseAddress;
    u32 IsReady;
} XMain_design_v_mix_0_0_v_mix;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XMain_design_v_mix_0_0_v_mix_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XMain_design_v_mix_0_0_v_mix_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XMain_design_v_mix_0_0_v_mix_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XMain_design_v_mix_0_0_v_mix_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
#ifdef SDT
int XMain_design_v_mix_0_0_v_mix_Initialize(XMain_design_v_mix_0_0_v_mix *InstancePtr, UINTPTR BaseAddress);
XMain_design_v_mix_0_0_v_mix_Config* XMain_design_v_mix_0_0_v_mix_LookupConfig(UINTPTR BaseAddress);
#else
int XMain_design_v_mix_0_0_v_mix_Initialize(XMain_design_v_mix_0_0_v_mix *InstancePtr, u16 DeviceId);
XMain_design_v_mix_0_0_v_mix_Config* XMain_design_v_mix_0_0_v_mix_LookupConfig(u16 DeviceId);
#endif
int XMain_design_v_mix_0_0_v_mix_CfgInitialize(XMain_design_v_mix_0_0_v_mix *InstancePtr, XMain_design_v_mix_0_0_v_mix_Config *ConfigPtr);
#else
int XMain_design_v_mix_0_0_v_mix_Initialize(XMain_design_v_mix_0_0_v_mix *InstancePtr, const char* InstanceName);
int XMain_design_v_mix_0_0_v_mix_Release(XMain_design_v_mix_0_0_v_mix *InstancePtr);
#endif

void XMain_design_v_mix_0_0_v_mix_Start(XMain_design_v_mix_0_0_v_mix *InstancePtr);
u32 XMain_design_v_mix_0_0_v_mix_IsDone(XMain_design_v_mix_0_0_v_mix *InstancePtr);
u32 XMain_design_v_mix_0_0_v_mix_IsIdle(XMain_design_v_mix_0_0_v_mix *InstancePtr);
u32 XMain_design_v_mix_0_0_v_mix_IsReady(XMain_design_v_mix_0_0_v_mix *InstancePtr);
void XMain_design_v_mix_0_0_v_mix_EnableAutoRestart(XMain_design_v_mix_0_0_v_mix *InstancePtr);
void XMain_design_v_mix_0_0_v_mix_DisableAutoRestart(XMain_design_v_mix_0_0_v_mix *InstancePtr);

void XMain_design_v_mix_0_0_v_mix_Set_width(XMain_design_v_mix_0_0_v_mix *InstancePtr, u32 Data);
u32 XMain_design_v_mix_0_0_v_mix_Get_width(XMain_design_v_mix_0_0_v_mix *InstancePtr);
void XMain_design_v_mix_0_0_v_mix_Set_height(XMain_design_v_mix_0_0_v_mix *InstancePtr, u32 Data);
u32 XMain_design_v_mix_0_0_v_mix_Get_height(XMain_design_v_mix_0_0_v_mix *InstancePtr);
void XMain_design_v_mix_0_0_v_mix_Set_video_format(XMain_design_v_mix_0_0_v_mix *InstancePtr, u32 Data);
u32 XMain_design_v_mix_0_0_v_mix_Get_video_format(XMain_design_v_mix_0_0_v_mix *InstancePtr);
void XMain_design_v_mix_0_0_v_mix_Set_background_Y_R(XMain_design_v_mix_0_0_v_mix *InstancePtr, u32 Data);
u32 XMain_design_v_mix_0_0_v_mix_Get_background_Y_R(XMain_design_v_mix_0_0_v_mix *InstancePtr);
void XMain_design_v_mix_0_0_v_mix_Set_background_U_G(XMain_design_v_mix_0_0_v_mix *InstancePtr, u32 Data);
u32 XMain_design_v_mix_0_0_v_mix_Get_background_U_G(XMain_design_v_mix_0_0_v_mix *InstancePtr);
void XMain_design_v_mix_0_0_v_mix_Set_background_V_B(XMain_design_v_mix_0_0_v_mix *InstancePtr, u32 Data);
u32 XMain_design_v_mix_0_0_v_mix_Get_background_V_B(XMain_design_v_mix_0_0_v_mix *InstancePtr);
void XMain_design_v_mix_0_0_v_mix_Set_layerEnable(XMain_design_v_mix_0_0_v_mix *InstancePtr, u32 Data);
u32 XMain_design_v_mix_0_0_v_mix_Get_layerEnable(XMain_design_v_mix_0_0_v_mix *InstancePtr);
void XMain_design_v_mix_0_0_v_mix_Set_layerAlpha_1(XMain_design_v_mix_0_0_v_mix *InstancePtr, u32 Data);
u32 XMain_design_v_mix_0_0_v_mix_Get_layerAlpha_1(XMain_design_v_mix_0_0_v_mix *InstancePtr);
void XMain_design_v_mix_0_0_v_mix_Set_layerStartX_1(XMain_design_v_mix_0_0_v_mix *InstancePtr, u32 Data);
u32 XMain_design_v_mix_0_0_v_mix_Get_layerStartX_1(XMain_design_v_mix_0_0_v_mix *InstancePtr);
void XMain_design_v_mix_0_0_v_mix_Set_layerStartY_1(XMain_design_v_mix_0_0_v_mix *InstancePtr, u32 Data);
u32 XMain_design_v_mix_0_0_v_mix_Get_layerStartY_1(XMain_design_v_mix_0_0_v_mix *InstancePtr);
void XMain_design_v_mix_0_0_v_mix_Set_layerWidth_1(XMain_design_v_mix_0_0_v_mix *InstancePtr, u32 Data);
u32 XMain_design_v_mix_0_0_v_mix_Get_layerWidth_1(XMain_design_v_mix_0_0_v_mix *InstancePtr);
void XMain_design_v_mix_0_0_v_mix_Set_layerStride_1(XMain_design_v_mix_0_0_v_mix *InstancePtr, u32 Data);
u32 XMain_design_v_mix_0_0_v_mix_Get_layerStride_1(XMain_design_v_mix_0_0_v_mix *InstancePtr);
void XMain_design_v_mix_0_0_v_mix_Set_layerHeight_1(XMain_design_v_mix_0_0_v_mix *InstancePtr, u32 Data);
u32 XMain_design_v_mix_0_0_v_mix_Get_layerHeight_1(XMain_design_v_mix_0_0_v_mix *InstancePtr);
void XMain_design_v_mix_0_0_v_mix_Set_layerScaleFactor_1(XMain_design_v_mix_0_0_v_mix *InstancePtr, u32 Data);
u32 XMain_design_v_mix_0_0_v_mix_Get_layerScaleFactor_1(XMain_design_v_mix_0_0_v_mix *InstancePtr);
void XMain_design_v_mix_0_0_v_mix_Set_layerAlpha_2(XMain_design_v_mix_0_0_v_mix *InstancePtr, u32 Data);
u32 XMain_design_v_mix_0_0_v_mix_Get_layerAlpha_2(XMain_design_v_mix_0_0_v_mix *InstancePtr);
void XMain_design_v_mix_0_0_v_mix_Set_layerStartX_2(XMain_design_v_mix_0_0_v_mix *InstancePtr, u32 Data);
u32 XMain_design_v_mix_0_0_v_mix_Get_layerStartX_2(XMain_design_v_mix_0_0_v_mix *InstancePtr);
void XMain_design_v_mix_0_0_v_mix_Set_layerStartY_2(XMain_design_v_mix_0_0_v_mix *InstancePtr, u32 Data);
u32 XMain_design_v_mix_0_0_v_mix_Get_layerStartY_2(XMain_design_v_mix_0_0_v_mix *InstancePtr);
void XMain_design_v_mix_0_0_v_mix_Set_layerWidth_2(XMain_design_v_mix_0_0_v_mix *InstancePtr, u32 Data);
u32 XMain_design_v_mix_0_0_v_mix_Get_layerWidth_2(XMain_design_v_mix_0_0_v_mix *InstancePtr);
void XMain_design_v_mix_0_0_v_mix_Set_layerStride_2(XMain_design_v_mix_0_0_v_mix *InstancePtr, u32 Data);
u32 XMain_design_v_mix_0_0_v_mix_Get_layerStride_2(XMain_design_v_mix_0_0_v_mix *InstancePtr);
void XMain_design_v_mix_0_0_v_mix_Set_layerHeight_2(XMain_design_v_mix_0_0_v_mix *InstancePtr, u32 Data);
u32 XMain_design_v_mix_0_0_v_mix_Get_layerHeight_2(XMain_design_v_mix_0_0_v_mix *InstancePtr);
void XMain_design_v_mix_0_0_v_mix_Set_layerScaleFactor_2(XMain_design_v_mix_0_0_v_mix *InstancePtr, u32 Data);
u32 XMain_design_v_mix_0_0_v_mix_Get_layerScaleFactor_2(XMain_design_v_mix_0_0_v_mix *InstancePtr);
void XMain_design_v_mix_0_0_v_mix_Set_reserve(XMain_design_v_mix_0_0_v_mix *InstancePtr, u32 Data);
u32 XMain_design_v_mix_0_0_v_mix_Get_reserve(XMain_design_v_mix_0_0_v_mix *InstancePtr);

void XMain_design_v_mix_0_0_v_mix_InterruptGlobalEnable(XMain_design_v_mix_0_0_v_mix *InstancePtr);
void XMain_design_v_mix_0_0_v_mix_InterruptGlobalDisable(XMain_design_v_mix_0_0_v_mix *InstancePtr);
void XMain_design_v_mix_0_0_v_mix_InterruptEnable(XMain_design_v_mix_0_0_v_mix *InstancePtr, u32 Mask);
void XMain_design_v_mix_0_0_v_mix_InterruptDisable(XMain_design_v_mix_0_0_v_mix *InstancePtr, u32 Mask);
void XMain_design_v_mix_0_0_v_mix_InterruptClear(XMain_design_v_mix_0_0_v_mix *InstancePtr, u32 Mask);
u32 XMain_design_v_mix_0_0_v_mix_InterruptGetEnabled(XMain_design_v_mix_0_0_v_mix *InstancePtr);
u32 XMain_design_v_mix_0_0_v_mix_InterruptGetStatus(XMain_design_v_mix_0_0_v_mix *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
