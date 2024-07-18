// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1 (64-bit)
// Tool Version Limit: 2024.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xmain_design_v_mix_0_0_v_mix.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XMain_design_v_mix_0_0_v_mix_CfgInitialize(XMain_design_v_mix_0_0_v_mix *InstancePtr, XMain_design_v_mix_0_0_v_mix_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Main_design_v_mix_0_0_ctrl_BaseAddress = ConfigPtr->Main_design_v_mix_0_0_ctrl_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XMain_design_v_mix_0_0_v_mix_Start(XMain_design_v_mix_0_0_v_mix *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMain_design_v_mix_0_0_v_mix_ReadReg(InstancePtr->Main_design_v_mix_0_0_ctrl_BaseAddress, XMAIN_DESIGN_V_MIX_0_0_V_MIX_MAIN_DESIGN_V_MIX_0_0_CTRL_ADDR_AP_CTRL) & 0x80;
    XMain_design_v_mix_0_0_v_mix_WriteReg(InstancePtr->Main_design_v_mix_0_0_ctrl_BaseAddress, XMAIN_DESIGN_V_MIX_0_0_V_MIX_MAIN_DESIGN_V_MIX_0_0_CTRL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XMain_design_v_mix_0_0_v_mix_IsDone(XMain_design_v_mix_0_0_v_mix *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMain_design_v_mix_0_0_v_mix_ReadReg(InstancePtr->Main_design_v_mix_0_0_ctrl_BaseAddress, XMAIN_DESIGN_V_MIX_0_0_V_MIX_MAIN_DESIGN_V_MIX_0_0_CTRL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XMain_design_v_mix_0_0_v_mix_IsIdle(XMain_design_v_mix_0_0_v_mix *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMain_design_v_mix_0_0_v_mix_ReadReg(InstancePtr->Main_design_v_mix_0_0_ctrl_BaseAddress, XMAIN_DESIGN_V_MIX_0_0_V_MIX_MAIN_DESIGN_V_MIX_0_0_CTRL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XMain_design_v_mix_0_0_v_mix_IsReady(XMain_design_v_mix_0_0_v_mix *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMain_design_v_mix_0_0_v_mix_ReadReg(InstancePtr->Main_design_v_mix_0_0_ctrl_BaseAddress, XMAIN_DESIGN_V_MIX_0_0_V_MIX_MAIN_DESIGN_V_MIX_0_0_CTRL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XMain_design_v_mix_0_0_v_mix_EnableAutoRestart(XMain_design_v_mix_0_0_v_mix *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMain_design_v_mix_0_0_v_mix_WriteReg(InstancePtr->Main_design_v_mix_0_0_ctrl_BaseAddress, XMAIN_DESIGN_V_MIX_0_0_V_MIX_MAIN_DESIGN_V_MIX_0_0_CTRL_ADDR_AP_CTRL, 0x80);
}

void XMain_design_v_mix_0_0_v_mix_DisableAutoRestart(XMain_design_v_mix_0_0_v_mix *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMain_design_v_mix_0_0_v_mix_WriteReg(InstancePtr->Main_design_v_mix_0_0_ctrl_BaseAddress, XMAIN_DESIGN_V_MIX_0_0_V_MIX_MAIN_DESIGN_V_MIX_0_0_CTRL_ADDR_AP_CTRL, 0);
}

void XMain_design_v_mix_0_0_v_mix_Set_width(XMain_design_v_mix_0_0_v_mix *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMain_design_v_mix_0_0_v_mix_WriteReg(InstancePtr->Main_design_v_mix_0_0_ctrl_BaseAddress, XMAIN_DESIGN_V_MIX_0_0_V_MIX_MAIN_DESIGN_V_MIX_0_0_CTRL_ADDR_WIDTH_DATA, Data);
}

u32 XMain_design_v_mix_0_0_v_mix_Get_width(XMain_design_v_mix_0_0_v_mix *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMain_design_v_mix_0_0_v_mix_ReadReg(InstancePtr->Main_design_v_mix_0_0_ctrl_BaseAddress, XMAIN_DESIGN_V_MIX_0_0_V_MIX_MAIN_DESIGN_V_MIX_0_0_CTRL_ADDR_WIDTH_DATA);
    return Data;
}

void XMain_design_v_mix_0_0_v_mix_Set_height(XMain_design_v_mix_0_0_v_mix *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMain_design_v_mix_0_0_v_mix_WriteReg(InstancePtr->Main_design_v_mix_0_0_ctrl_BaseAddress, XMAIN_DESIGN_V_MIX_0_0_V_MIX_MAIN_DESIGN_V_MIX_0_0_CTRL_ADDR_HEIGHT_DATA, Data);
}

u32 XMain_design_v_mix_0_0_v_mix_Get_height(XMain_design_v_mix_0_0_v_mix *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMain_design_v_mix_0_0_v_mix_ReadReg(InstancePtr->Main_design_v_mix_0_0_ctrl_BaseAddress, XMAIN_DESIGN_V_MIX_0_0_V_MIX_MAIN_DESIGN_V_MIX_0_0_CTRL_ADDR_HEIGHT_DATA);
    return Data;
}

void XMain_design_v_mix_0_0_v_mix_Set_video_format(XMain_design_v_mix_0_0_v_mix *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMain_design_v_mix_0_0_v_mix_WriteReg(InstancePtr->Main_design_v_mix_0_0_ctrl_BaseAddress, XMAIN_DESIGN_V_MIX_0_0_V_MIX_MAIN_DESIGN_V_MIX_0_0_CTRL_ADDR_VIDEO_FORMAT_DATA, Data);
}

u32 XMain_design_v_mix_0_0_v_mix_Get_video_format(XMain_design_v_mix_0_0_v_mix *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMain_design_v_mix_0_0_v_mix_ReadReg(InstancePtr->Main_design_v_mix_0_0_ctrl_BaseAddress, XMAIN_DESIGN_V_MIX_0_0_V_MIX_MAIN_DESIGN_V_MIX_0_0_CTRL_ADDR_VIDEO_FORMAT_DATA);
    return Data;
}

void XMain_design_v_mix_0_0_v_mix_Set_background_Y_R(XMain_design_v_mix_0_0_v_mix *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMain_design_v_mix_0_0_v_mix_WriteReg(InstancePtr->Main_design_v_mix_0_0_ctrl_BaseAddress, XMAIN_DESIGN_V_MIX_0_0_V_MIX_MAIN_DESIGN_V_MIX_0_0_CTRL_ADDR_BACKGROUND_Y_R_DATA, Data);
}

u32 XMain_design_v_mix_0_0_v_mix_Get_background_Y_R(XMain_design_v_mix_0_0_v_mix *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMain_design_v_mix_0_0_v_mix_ReadReg(InstancePtr->Main_design_v_mix_0_0_ctrl_BaseAddress, XMAIN_DESIGN_V_MIX_0_0_V_MIX_MAIN_DESIGN_V_MIX_0_0_CTRL_ADDR_BACKGROUND_Y_R_DATA);
    return Data;
}

void XMain_design_v_mix_0_0_v_mix_Set_background_U_G(XMain_design_v_mix_0_0_v_mix *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMain_design_v_mix_0_0_v_mix_WriteReg(InstancePtr->Main_design_v_mix_0_0_ctrl_BaseAddress, XMAIN_DESIGN_V_MIX_0_0_V_MIX_MAIN_DESIGN_V_MIX_0_0_CTRL_ADDR_BACKGROUND_U_G_DATA, Data);
}

u32 XMain_design_v_mix_0_0_v_mix_Get_background_U_G(XMain_design_v_mix_0_0_v_mix *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMain_design_v_mix_0_0_v_mix_ReadReg(InstancePtr->Main_design_v_mix_0_0_ctrl_BaseAddress, XMAIN_DESIGN_V_MIX_0_0_V_MIX_MAIN_DESIGN_V_MIX_0_0_CTRL_ADDR_BACKGROUND_U_G_DATA);
    return Data;
}

void XMain_design_v_mix_0_0_v_mix_Set_background_V_B(XMain_design_v_mix_0_0_v_mix *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMain_design_v_mix_0_0_v_mix_WriteReg(InstancePtr->Main_design_v_mix_0_0_ctrl_BaseAddress, XMAIN_DESIGN_V_MIX_0_0_V_MIX_MAIN_DESIGN_V_MIX_0_0_CTRL_ADDR_BACKGROUND_V_B_DATA, Data);
}

u32 XMain_design_v_mix_0_0_v_mix_Get_background_V_B(XMain_design_v_mix_0_0_v_mix *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMain_design_v_mix_0_0_v_mix_ReadReg(InstancePtr->Main_design_v_mix_0_0_ctrl_BaseAddress, XMAIN_DESIGN_V_MIX_0_0_V_MIX_MAIN_DESIGN_V_MIX_0_0_CTRL_ADDR_BACKGROUND_V_B_DATA);
    return Data;
}

void XMain_design_v_mix_0_0_v_mix_Set_layerEnable(XMain_design_v_mix_0_0_v_mix *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMain_design_v_mix_0_0_v_mix_WriteReg(InstancePtr->Main_design_v_mix_0_0_ctrl_BaseAddress, XMAIN_DESIGN_V_MIX_0_0_V_MIX_MAIN_DESIGN_V_MIX_0_0_CTRL_ADDR_LAYERENABLE_DATA, Data);
}

u32 XMain_design_v_mix_0_0_v_mix_Get_layerEnable(XMain_design_v_mix_0_0_v_mix *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMain_design_v_mix_0_0_v_mix_ReadReg(InstancePtr->Main_design_v_mix_0_0_ctrl_BaseAddress, XMAIN_DESIGN_V_MIX_0_0_V_MIX_MAIN_DESIGN_V_MIX_0_0_CTRL_ADDR_LAYERENABLE_DATA);
    return Data;
}

void XMain_design_v_mix_0_0_v_mix_Set_layerAlpha_1(XMain_design_v_mix_0_0_v_mix *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMain_design_v_mix_0_0_v_mix_WriteReg(InstancePtr->Main_design_v_mix_0_0_ctrl_BaseAddress, XMAIN_DESIGN_V_MIX_0_0_V_MIX_MAIN_DESIGN_V_MIX_0_0_CTRL_ADDR_LAYERALPHA_1_DATA, Data);
}

u32 XMain_design_v_mix_0_0_v_mix_Get_layerAlpha_1(XMain_design_v_mix_0_0_v_mix *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMain_design_v_mix_0_0_v_mix_ReadReg(InstancePtr->Main_design_v_mix_0_0_ctrl_BaseAddress, XMAIN_DESIGN_V_MIX_0_0_V_MIX_MAIN_DESIGN_V_MIX_0_0_CTRL_ADDR_LAYERALPHA_1_DATA);
    return Data;
}

void XMain_design_v_mix_0_0_v_mix_Set_layerStartX_1(XMain_design_v_mix_0_0_v_mix *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMain_design_v_mix_0_0_v_mix_WriteReg(InstancePtr->Main_design_v_mix_0_0_ctrl_BaseAddress, XMAIN_DESIGN_V_MIX_0_0_V_MIX_MAIN_DESIGN_V_MIX_0_0_CTRL_ADDR_LAYERSTARTX_1_DATA, Data);
}

u32 XMain_design_v_mix_0_0_v_mix_Get_layerStartX_1(XMain_design_v_mix_0_0_v_mix *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMain_design_v_mix_0_0_v_mix_ReadReg(InstancePtr->Main_design_v_mix_0_0_ctrl_BaseAddress, XMAIN_DESIGN_V_MIX_0_0_V_MIX_MAIN_DESIGN_V_MIX_0_0_CTRL_ADDR_LAYERSTARTX_1_DATA);
    return Data;
}

void XMain_design_v_mix_0_0_v_mix_Set_layerStartY_1(XMain_design_v_mix_0_0_v_mix *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMain_design_v_mix_0_0_v_mix_WriteReg(InstancePtr->Main_design_v_mix_0_0_ctrl_BaseAddress, XMAIN_DESIGN_V_MIX_0_0_V_MIX_MAIN_DESIGN_V_MIX_0_0_CTRL_ADDR_LAYERSTARTY_1_DATA, Data);
}

u32 XMain_design_v_mix_0_0_v_mix_Get_layerStartY_1(XMain_design_v_mix_0_0_v_mix *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMain_design_v_mix_0_0_v_mix_ReadReg(InstancePtr->Main_design_v_mix_0_0_ctrl_BaseAddress, XMAIN_DESIGN_V_MIX_0_0_V_MIX_MAIN_DESIGN_V_MIX_0_0_CTRL_ADDR_LAYERSTARTY_1_DATA);
    return Data;
}

void XMain_design_v_mix_0_0_v_mix_Set_layerWidth_1(XMain_design_v_mix_0_0_v_mix *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMain_design_v_mix_0_0_v_mix_WriteReg(InstancePtr->Main_design_v_mix_0_0_ctrl_BaseAddress, XMAIN_DESIGN_V_MIX_0_0_V_MIX_MAIN_DESIGN_V_MIX_0_0_CTRL_ADDR_LAYERWIDTH_1_DATA, Data);
}

u32 XMain_design_v_mix_0_0_v_mix_Get_layerWidth_1(XMain_design_v_mix_0_0_v_mix *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMain_design_v_mix_0_0_v_mix_ReadReg(InstancePtr->Main_design_v_mix_0_0_ctrl_BaseAddress, XMAIN_DESIGN_V_MIX_0_0_V_MIX_MAIN_DESIGN_V_MIX_0_0_CTRL_ADDR_LAYERWIDTH_1_DATA);
    return Data;
}

void XMain_design_v_mix_0_0_v_mix_Set_layerStride_1(XMain_design_v_mix_0_0_v_mix *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMain_design_v_mix_0_0_v_mix_WriteReg(InstancePtr->Main_design_v_mix_0_0_ctrl_BaseAddress, XMAIN_DESIGN_V_MIX_0_0_V_MIX_MAIN_DESIGN_V_MIX_0_0_CTRL_ADDR_LAYERSTRIDE_1_DATA, Data);
}

u32 XMain_design_v_mix_0_0_v_mix_Get_layerStride_1(XMain_design_v_mix_0_0_v_mix *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMain_design_v_mix_0_0_v_mix_ReadReg(InstancePtr->Main_design_v_mix_0_0_ctrl_BaseAddress, XMAIN_DESIGN_V_MIX_0_0_V_MIX_MAIN_DESIGN_V_MIX_0_0_CTRL_ADDR_LAYERSTRIDE_1_DATA);
    return Data;
}

void XMain_design_v_mix_0_0_v_mix_Set_layerHeight_1(XMain_design_v_mix_0_0_v_mix *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMain_design_v_mix_0_0_v_mix_WriteReg(InstancePtr->Main_design_v_mix_0_0_ctrl_BaseAddress, XMAIN_DESIGN_V_MIX_0_0_V_MIX_MAIN_DESIGN_V_MIX_0_0_CTRL_ADDR_LAYERHEIGHT_1_DATA, Data);
}

u32 XMain_design_v_mix_0_0_v_mix_Get_layerHeight_1(XMain_design_v_mix_0_0_v_mix *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMain_design_v_mix_0_0_v_mix_ReadReg(InstancePtr->Main_design_v_mix_0_0_ctrl_BaseAddress, XMAIN_DESIGN_V_MIX_0_0_V_MIX_MAIN_DESIGN_V_MIX_0_0_CTRL_ADDR_LAYERHEIGHT_1_DATA);
    return Data;
}

void XMain_design_v_mix_0_0_v_mix_Set_layerScaleFactor_1(XMain_design_v_mix_0_0_v_mix *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMain_design_v_mix_0_0_v_mix_WriteReg(InstancePtr->Main_design_v_mix_0_0_ctrl_BaseAddress, XMAIN_DESIGN_V_MIX_0_0_V_MIX_MAIN_DESIGN_V_MIX_0_0_CTRL_ADDR_LAYERSCALEFACTOR_1_DATA, Data);
}

u32 XMain_design_v_mix_0_0_v_mix_Get_layerScaleFactor_1(XMain_design_v_mix_0_0_v_mix *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMain_design_v_mix_0_0_v_mix_ReadReg(InstancePtr->Main_design_v_mix_0_0_ctrl_BaseAddress, XMAIN_DESIGN_V_MIX_0_0_V_MIX_MAIN_DESIGN_V_MIX_0_0_CTRL_ADDR_LAYERSCALEFACTOR_1_DATA);
    return Data;
}

void XMain_design_v_mix_0_0_v_mix_Set_layerAlpha_2(XMain_design_v_mix_0_0_v_mix *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMain_design_v_mix_0_0_v_mix_WriteReg(InstancePtr->Main_design_v_mix_0_0_ctrl_BaseAddress, XMAIN_DESIGN_V_MIX_0_0_V_MIX_MAIN_DESIGN_V_MIX_0_0_CTRL_ADDR_LAYERALPHA_2_DATA, Data);
}

u32 XMain_design_v_mix_0_0_v_mix_Get_layerAlpha_2(XMain_design_v_mix_0_0_v_mix *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMain_design_v_mix_0_0_v_mix_ReadReg(InstancePtr->Main_design_v_mix_0_0_ctrl_BaseAddress, XMAIN_DESIGN_V_MIX_0_0_V_MIX_MAIN_DESIGN_V_MIX_0_0_CTRL_ADDR_LAYERALPHA_2_DATA);
    return Data;
}

void XMain_design_v_mix_0_0_v_mix_Set_layerStartX_2(XMain_design_v_mix_0_0_v_mix *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMain_design_v_mix_0_0_v_mix_WriteReg(InstancePtr->Main_design_v_mix_0_0_ctrl_BaseAddress, XMAIN_DESIGN_V_MIX_0_0_V_MIX_MAIN_DESIGN_V_MIX_0_0_CTRL_ADDR_LAYERSTARTX_2_DATA, Data);
}

u32 XMain_design_v_mix_0_0_v_mix_Get_layerStartX_2(XMain_design_v_mix_0_0_v_mix *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMain_design_v_mix_0_0_v_mix_ReadReg(InstancePtr->Main_design_v_mix_0_0_ctrl_BaseAddress, XMAIN_DESIGN_V_MIX_0_0_V_MIX_MAIN_DESIGN_V_MIX_0_0_CTRL_ADDR_LAYERSTARTX_2_DATA);
    return Data;
}

void XMain_design_v_mix_0_0_v_mix_Set_layerStartY_2(XMain_design_v_mix_0_0_v_mix *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMain_design_v_mix_0_0_v_mix_WriteReg(InstancePtr->Main_design_v_mix_0_0_ctrl_BaseAddress, XMAIN_DESIGN_V_MIX_0_0_V_MIX_MAIN_DESIGN_V_MIX_0_0_CTRL_ADDR_LAYERSTARTY_2_DATA, Data);
}

u32 XMain_design_v_mix_0_0_v_mix_Get_layerStartY_2(XMain_design_v_mix_0_0_v_mix *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMain_design_v_mix_0_0_v_mix_ReadReg(InstancePtr->Main_design_v_mix_0_0_ctrl_BaseAddress, XMAIN_DESIGN_V_MIX_0_0_V_MIX_MAIN_DESIGN_V_MIX_0_0_CTRL_ADDR_LAYERSTARTY_2_DATA);
    return Data;
}

void XMain_design_v_mix_0_0_v_mix_Set_layerWidth_2(XMain_design_v_mix_0_0_v_mix *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMain_design_v_mix_0_0_v_mix_WriteReg(InstancePtr->Main_design_v_mix_0_0_ctrl_BaseAddress, XMAIN_DESIGN_V_MIX_0_0_V_MIX_MAIN_DESIGN_V_MIX_0_0_CTRL_ADDR_LAYERWIDTH_2_DATA, Data);
}

u32 XMain_design_v_mix_0_0_v_mix_Get_layerWidth_2(XMain_design_v_mix_0_0_v_mix *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMain_design_v_mix_0_0_v_mix_ReadReg(InstancePtr->Main_design_v_mix_0_0_ctrl_BaseAddress, XMAIN_DESIGN_V_MIX_0_0_V_MIX_MAIN_DESIGN_V_MIX_0_0_CTRL_ADDR_LAYERWIDTH_2_DATA);
    return Data;
}

void XMain_design_v_mix_0_0_v_mix_Set_layerStride_2(XMain_design_v_mix_0_0_v_mix *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMain_design_v_mix_0_0_v_mix_WriteReg(InstancePtr->Main_design_v_mix_0_0_ctrl_BaseAddress, XMAIN_DESIGN_V_MIX_0_0_V_MIX_MAIN_DESIGN_V_MIX_0_0_CTRL_ADDR_LAYERSTRIDE_2_DATA, Data);
}

u32 XMain_design_v_mix_0_0_v_mix_Get_layerStride_2(XMain_design_v_mix_0_0_v_mix *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMain_design_v_mix_0_0_v_mix_ReadReg(InstancePtr->Main_design_v_mix_0_0_ctrl_BaseAddress, XMAIN_DESIGN_V_MIX_0_0_V_MIX_MAIN_DESIGN_V_MIX_0_0_CTRL_ADDR_LAYERSTRIDE_2_DATA);
    return Data;
}

void XMain_design_v_mix_0_0_v_mix_Set_layerHeight_2(XMain_design_v_mix_0_0_v_mix *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMain_design_v_mix_0_0_v_mix_WriteReg(InstancePtr->Main_design_v_mix_0_0_ctrl_BaseAddress, XMAIN_DESIGN_V_MIX_0_0_V_MIX_MAIN_DESIGN_V_MIX_0_0_CTRL_ADDR_LAYERHEIGHT_2_DATA, Data);
}

u32 XMain_design_v_mix_0_0_v_mix_Get_layerHeight_2(XMain_design_v_mix_0_0_v_mix *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMain_design_v_mix_0_0_v_mix_ReadReg(InstancePtr->Main_design_v_mix_0_0_ctrl_BaseAddress, XMAIN_DESIGN_V_MIX_0_0_V_MIX_MAIN_DESIGN_V_MIX_0_0_CTRL_ADDR_LAYERHEIGHT_2_DATA);
    return Data;
}

void XMain_design_v_mix_0_0_v_mix_Set_layerScaleFactor_2(XMain_design_v_mix_0_0_v_mix *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMain_design_v_mix_0_0_v_mix_WriteReg(InstancePtr->Main_design_v_mix_0_0_ctrl_BaseAddress, XMAIN_DESIGN_V_MIX_0_0_V_MIX_MAIN_DESIGN_V_MIX_0_0_CTRL_ADDR_LAYERSCALEFACTOR_2_DATA, Data);
}

u32 XMain_design_v_mix_0_0_v_mix_Get_layerScaleFactor_2(XMain_design_v_mix_0_0_v_mix *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMain_design_v_mix_0_0_v_mix_ReadReg(InstancePtr->Main_design_v_mix_0_0_ctrl_BaseAddress, XMAIN_DESIGN_V_MIX_0_0_V_MIX_MAIN_DESIGN_V_MIX_0_0_CTRL_ADDR_LAYERSCALEFACTOR_2_DATA);
    return Data;
}

void XMain_design_v_mix_0_0_v_mix_Set_reserve(XMain_design_v_mix_0_0_v_mix *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMain_design_v_mix_0_0_v_mix_WriteReg(InstancePtr->Main_design_v_mix_0_0_ctrl_BaseAddress, XMAIN_DESIGN_V_MIX_0_0_V_MIX_MAIN_DESIGN_V_MIX_0_0_CTRL_ADDR_RESERVE_DATA, Data);
}

u32 XMain_design_v_mix_0_0_v_mix_Get_reserve(XMain_design_v_mix_0_0_v_mix *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMain_design_v_mix_0_0_v_mix_ReadReg(InstancePtr->Main_design_v_mix_0_0_ctrl_BaseAddress, XMAIN_DESIGN_V_MIX_0_0_V_MIX_MAIN_DESIGN_V_MIX_0_0_CTRL_ADDR_RESERVE_DATA);
    return Data;
}

void XMain_design_v_mix_0_0_v_mix_InterruptGlobalEnable(XMain_design_v_mix_0_0_v_mix *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMain_design_v_mix_0_0_v_mix_WriteReg(InstancePtr->Main_design_v_mix_0_0_ctrl_BaseAddress, XMAIN_DESIGN_V_MIX_0_0_V_MIX_MAIN_DESIGN_V_MIX_0_0_CTRL_ADDR_GIE, 1);
}

void XMain_design_v_mix_0_0_v_mix_InterruptGlobalDisable(XMain_design_v_mix_0_0_v_mix *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMain_design_v_mix_0_0_v_mix_WriteReg(InstancePtr->Main_design_v_mix_0_0_ctrl_BaseAddress, XMAIN_DESIGN_V_MIX_0_0_V_MIX_MAIN_DESIGN_V_MIX_0_0_CTRL_ADDR_GIE, 0);
}

void XMain_design_v_mix_0_0_v_mix_InterruptEnable(XMain_design_v_mix_0_0_v_mix *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XMain_design_v_mix_0_0_v_mix_ReadReg(InstancePtr->Main_design_v_mix_0_0_ctrl_BaseAddress, XMAIN_DESIGN_V_MIX_0_0_V_MIX_MAIN_DESIGN_V_MIX_0_0_CTRL_ADDR_IER);
    XMain_design_v_mix_0_0_v_mix_WriteReg(InstancePtr->Main_design_v_mix_0_0_ctrl_BaseAddress, XMAIN_DESIGN_V_MIX_0_0_V_MIX_MAIN_DESIGN_V_MIX_0_0_CTRL_ADDR_IER, Register | Mask);
}

void XMain_design_v_mix_0_0_v_mix_InterruptDisable(XMain_design_v_mix_0_0_v_mix *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XMain_design_v_mix_0_0_v_mix_ReadReg(InstancePtr->Main_design_v_mix_0_0_ctrl_BaseAddress, XMAIN_DESIGN_V_MIX_0_0_V_MIX_MAIN_DESIGN_V_MIX_0_0_CTRL_ADDR_IER);
    XMain_design_v_mix_0_0_v_mix_WriteReg(InstancePtr->Main_design_v_mix_0_0_ctrl_BaseAddress, XMAIN_DESIGN_V_MIX_0_0_V_MIX_MAIN_DESIGN_V_MIX_0_0_CTRL_ADDR_IER, Register & (~Mask));
}

void XMain_design_v_mix_0_0_v_mix_InterruptClear(XMain_design_v_mix_0_0_v_mix *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMain_design_v_mix_0_0_v_mix_WriteReg(InstancePtr->Main_design_v_mix_0_0_ctrl_BaseAddress, XMAIN_DESIGN_V_MIX_0_0_V_MIX_MAIN_DESIGN_V_MIX_0_0_CTRL_ADDR_ISR, Mask);
}

u32 XMain_design_v_mix_0_0_v_mix_InterruptGetEnabled(XMain_design_v_mix_0_0_v_mix *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XMain_design_v_mix_0_0_v_mix_ReadReg(InstancePtr->Main_design_v_mix_0_0_ctrl_BaseAddress, XMAIN_DESIGN_V_MIX_0_0_V_MIX_MAIN_DESIGN_V_MIX_0_0_CTRL_ADDR_IER);
}

u32 XMain_design_v_mix_0_0_v_mix_InterruptGetStatus(XMain_design_v_mix_0_0_v_mix *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XMain_design_v_mix_0_0_v_mix_ReadReg(InstancePtr->Main_design_v_mix_0_0_ctrl_BaseAddress, XMAIN_DESIGN_V_MIX_0_0_V_MIX_MAIN_DESIGN_V_MIX_0_0_CTRL_ADDR_ISR);
}

