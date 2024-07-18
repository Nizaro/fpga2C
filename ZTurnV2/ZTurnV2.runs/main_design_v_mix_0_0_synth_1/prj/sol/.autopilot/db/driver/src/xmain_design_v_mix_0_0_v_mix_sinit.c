// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1 (64-bit)
// Tool Version Limit: 2024.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#ifdef SDT
#include "xparameters.h"
#endif
#include "xmain_design_v_mix_0_0_v_mix.h"

extern XMain_design_v_mix_0_0_v_mix_Config XMain_design_v_mix_0_0_v_mix_ConfigTable[];

#ifdef SDT
XMain_design_v_mix_0_0_v_mix_Config *XMain_design_v_mix_0_0_v_mix_LookupConfig(UINTPTR BaseAddress) {
	XMain_design_v_mix_0_0_v_mix_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XMain_design_v_mix_0_0_v_mix_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XMain_design_v_mix_0_0_v_mix_ConfigTable[Index].Main_design_v_mix_0_0_ctrl_BaseAddress == BaseAddress) {
			ConfigPtr = &XMain_design_v_mix_0_0_v_mix_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XMain_design_v_mix_0_0_v_mix_Initialize(XMain_design_v_mix_0_0_v_mix *InstancePtr, UINTPTR BaseAddress) {
	XMain_design_v_mix_0_0_v_mix_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XMain_design_v_mix_0_0_v_mix_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XMain_design_v_mix_0_0_v_mix_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XMain_design_v_mix_0_0_v_mix_Config *XMain_design_v_mix_0_0_v_mix_LookupConfig(u16 DeviceId) {
	XMain_design_v_mix_0_0_v_mix_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XMAIN_DESIGN_V_MIX_0_0_V_MIX_NUM_INSTANCES; Index++) {
		if (XMain_design_v_mix_0_0_v_mix_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XMain_design_v_mix_0_0_v_mix_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XMain_design_v_mix_0_0_v_mix_Initialize(XMain_design_v_mix_0_0_v_mix *InstancePtr, u16 DeviceId) {
	XMain_design_v_mix_0_0_v_mix_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XMain_design_v_mix_0_0_v_mix_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XMain_design_v_mix_0_0_v_mix_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

