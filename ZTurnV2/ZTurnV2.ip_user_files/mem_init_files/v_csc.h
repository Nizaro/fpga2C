// (c) Copyright 2023 Advanced Micro Devices, Inc. All rights reserved.
//
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
//
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
////////////////////////////////////////////////////////////
#ifndef _V_CSC_H_
#define _V_CSC_H_

typedef ap_uint<SAMPLES_PER_CLOCK*MAX_DATA_WIDTH>   Y_MEM_PIXEL_TYPE;
typedef ap_uint<SAMPLES_PER_CLOCK*MAX_DATA_WIDTH>   C_MEM_PIXEL_TYPE;

template <bool> void v_mix_yuv2rgb(
	V_MIX_STREAM_MULTIPIX& srcImg,
	U16 height,
	U16 width,
	bool layerEnableFlag,
#if(ENABLE_CSC_COEFFICIENT_REGISTERS == 1)
	I32 K11,
	I32 K12,
	I32 K13,
	I32 K21,
	I32 K22,
	I32 K23,
	I32 K31,
	I32 K32,
	I32 K33,
	I32 ROffset,
	I32 GOffset,
	I32 BOffset,
#endif
	V_MIX_STREAM_MULTIPIX& outImg);

template <bool> void v_mix_rgb2yuv(
	V_MIX_STREAM_MULTIPIX& srcImg,
	U16& height,
		U16& width,
#if(ENABLE_CSC_COEFFICIENT_REGISTERS == 1)
	I32 K11_2,
	I32 K12_2,
	I32 K13_2,
	I32 K21_2,
	I32 K22_2,
	I32 K23_2,
	I32 K31_2,
	I32 K32_2,
	I32 K33_2,
	I32 YOffset,
	I32 UOffset,
	I32 VOffset,
#endif
	V_MIX_STREAM_MULTIPIX& outImg);

template <bool> void v_mix_420_to_422(
	V_MIX_STREAM_MULTIPIX& srcImg,
	U16 height,
	U16 width,
	bool layerEnableFlag,
	V_MIX_STREAM_MULTIPIX& outImg);

template <bool> void v_mix_422_to_444(
	V_MIX_STREAM_MULTIPIX& srcImg,
	U16 height,
	U16 width,
	bool layerEnableFlag,
	V_MIX_STREAM_MULTIPIX& outImg);

template <bool> void v_mix_444_to_422(
	V_MIX_STREAM_MULTIPIX& srcImg,
	U16& height,
	U16& width,
	V_MIX_STREAM_MULTIPIX& outImg);

template <bool> void v_mix_422_to_420(
	V_MIX_STREAM_MULTIPIX& srcImg,
	U16& height,
	U16& width,
	V_MIX_STREAM_MULTIPIX& outImg);

#endif
