; ModuleID = '/home/nothon/fpga2C/ZTurnV2/ZTurnV2.runs/main_design_v_mix_0_0_synth_1/prj/sol/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>" = type { %"struct.hls::axis<ap_uint<24>, 1, 1, 1, '8', false>" }
%"struct.hls::axis<ap_uint<24>, 1, 1, 1, '8', false>" = type { %"struct.ap_uint<24>", %"struct.ap_uint<3>", %"struct.ap_uint<3>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>" }
%"struct.ap_uint<24>" = type { %"struct.ap_int_base<24, false>" }
%"struct.ap_int_base<24, false>" = type { %"struct.ssdm_int<24, false>" }
%"struct.ssdm_int<24, false>" = type { i24 }
%"struct.ap_uint<3>" = type { %"struct.ap_int_base<3, false>" }
%"struct.ap_int_base<3, false>" = type { %"struct.ssdm_int<3, false>" }
%"struct.ssdm_int<3, false>" = type { i3 }
%"struct.ap_uint<1>" = type { %"struct.ap_int_base<1, false>" }
%"struct.ap_int_base<1, false>" = type { %"struct.ssdm_int<1, false>" }
%"struct.ssdm_int<1, false>" = type { i1 }

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #0

; Function Attrs: noinline
define void @apatb_v_mix_ir(%"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* noalias nonnull dereferenceable(12) %s_axis_video, %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* noalias nonnull dereferenceable(12) %s_axis_video1, %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* noalias nonnull dereferenceable(12) %s_axis_video2, i16 zeroext %width, i16 zeroext %height, i16 zeroext %video_format, i16 zeroext %background_Y_R, i16 zeroext %background_U_G, i16 zeroext %background_V_B, i32 %layerEnable, i16* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="3" "partition" %layerAlpha, i16* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="3" "partition" %layerStartX, i16* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="3" "partition" %layerStartY, i16* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="3" "partition" %layerWidth, i16* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="3" "partition" %layerHeight, i8* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="3" "partition" %layerScaleFactor, i8* noalias nocapture nonnull readnone "fpga.decayed.dim.hint"="3" %layerVideoFormat, i16* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="3" "partition" %layerStride, i16 zeroext %reserve, i32 %K11, i32 %K12, i32 %K13, i32 %K21, i32 %K22, i32 %K23, i32 %K31, i32 %K32, i32 %K33, i32 %ROffset, i32 %GOffset, i32 %BOffset, i32 %K11_2, i32 %K12_2, i32 %K13_2, i32 %K21_2, i32 %K22_2, i32 %K23_2, i32 %K31_2, i32 %K32_2, i32 %K33_2, i32 %YOffset, i32 %UOffset, i32 %VOffset, %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* noalias nonnull dereferenceable(12) %m_axis_video) local_unnamed_addr #1 {
entry:
  %s_axis_video_copy.data = alloca i24, align 512
  %s_axis_video_copy.keep = alloca i3, align 512
  %s_axis_video_copy.strb = alloca i3, align 512
  %s_axis_video_copy.user = alloca i1, align 512
  %s_axis_video_copy.last = alloca i1, align 512
  %s_axis_video_copy.id = alloca i1, align 512
  %s_axis_video_copy.dest = alloca i1, align 512
  %s_axis_video1_copy.data = alloca i24, align 512
  %s_axis_video1_copy.keep = alloca i3, align 512
  %s_axis_video1_copy.strb = alloca i3, align 512
  %s_axis_video1_copy.user = alloca i1, align 512
  %s_axis_video1_copy.last = alloca i1, align 512
  %s_axis_video1_copy.id = alloca i1, align 512
  %s_axis_video1_copy.dest = alloca i1, align 512
  %s_axis_video2_copy.data = alloca i24, align 512
  %s_axis_video2_copy.keep = alloca i3, align 512
  %s_axis_video2_copy.strb = alloca i3, align 512
  %s_axis_video2_copy.user = alloca i1, align 512
  %s_axis_video2_copy.last = alloca i1, align 512
  %s_axis_video2_copy.id = alloca i1, align 512
  %s_axis_video2_copy.dest = alloca i1, align 512
  %layerAlpha_copy_0 = alloca i16, align 512
  %layerAlpha_copy_1 = alloca i16, align 512
  %layerAlpha_copy_2 = alloca i16, align 512
  %layerStartX_copy_0 = alloca i16, align 512
  %layerStartX_copy_1 = alloca i16, align 512
  %layerStartX_copy_2 = alloca i16, align 512
  %layerStartY_copy_0 = alloca i16, align 512
  %layerStartY_copy_1 = alloca i16, align 512
  %layerStartY_copy_2 = alloca i16, align 512
  %layerWidth_copy_0 = alloca i16, align 512
  %layerWidth_copy_1 = alloca i16, align 512
  %layerWidth_copy_2 = alloca i16, align 512
  %layerHeight_copy_0 = alloca i16, align 512
  %layerHeight_copy_1 = alloca i16, align 512
  %layerHeight_copy_2 = alloca i16, align 512
  %layerScaleFactor_copy_0 = alloca i8, align 512
  %layerScaleFactor_copy_1 = alloca i8, align 512
  %layerScaleFactor_copy_2 = alloca i8, align 512
  %layerVideoFormat_copy = alloca [3 x i8], align 512
  %layerStride_copy_0 = alloca i16, align 512
  %layerStride_copy_1 = alloca i16, align 512
  %layerStride_copy_2 = alloca i16, align 512
  %m_axis_video_copy.data = alloca i24, align 512
  %m_axis_video_copy.keep = alloca i3, align 512
  %m_axis_video_copy.strb = alloca i3, align 512
  %m_axis_video_copy.user = alloca i1, align 512
  %m_axis_video_copy.last = alloca i1, align 512
  %m_axis_video_copy.id = alloca i1, align 512
  %m_axis_video_copy.dest = alloca i1, align 512
  %0 = bitcast i16* %layerAlpha to [3 x i16]*
  %1 = bitcast i16* %layerStartX to [3 x i16]*
  %2 = bitcast i16* %layerStartY to [3 x i16]*
  %3 = bitcast i16* %layerWidth to [3 x i16]*
  %4 = bitcast i16* %layerHeight to [3 x i16]*
  %5 = bitcast i8* %layerScaleFactor to [3 x i8]*
  %6 = bitcast i8* %layerVideoFormat to [3 x i8]*
  %7 = bitcast i16* %layerStride to [3 x i16]*
  call void @copy_in(%"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* nonnull %s_axis_video, i24* nonnull align 512 %s_axis_video_copy.data, i3* nonnull align 512 %s_axis_video_copy.keep, i3* nonnull align 512 %s_axis_video_copy.strb, i1* nonnull align 512 %s_axis_video_copy.user, i1* nonnull align 512 %s_axis_video_copy.last, i1* nonnull align 512 %s_axis_video_copy.id, i1* nonnull align 512 %s_axis_video_copy.dest, %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* nonnull %s_axis_video1, i24* nonnull align 512 %s_axis_video1_copy.data, i3* nonnull align 512 %s_axis_video1_copy.keep, i3* nonnull align 512 %s_axis_video1_copy.strb, i1* nonnull align 512 %s_axis_video1_copy.user, i1* nonnull align 512 %s_axis_video1_copy.last, i1* nonnull align 512 %s_axis_video1_copy.id, i1* nonnull align 512 %s_axis_video1_copy.dest, %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* nonnull %s_axis_video2, i24* nonnull align 512 %s_axis_video2_copy.data, i3* nonnull align 512 %s_axis_video2_copy.keep, i3* nonnull align 512 %s_axis_video2_copy.strb, i1* nonnull align 512 %s_axis_video2_copy.user, i1* nonnull align 512 %s_axis_video2_copy.last, i1* nonnull align 512 %s_axis_video2_copy.id, i1* nonnull align 512 %s_axis_video2_copy.dest, [3 x i16]* nonnull %0, i16* nonnull align 512 %layerAlpha_copy_0, i16* nonnull align 512 %layerAlpha_copy_1, i16* nonnull align 512 %layerAlpha_copy_2, [3 x i16]* nonnull %1, i16* nonnull align 512 %layerStartX_copy_0, i16* nonnull align 512 %layerStartX_copy_1, i16* nonnull align 512 %layerStartX_copy_2, [3 x i16]* nonnull %2, i16* nonnull align 512 %layerStartY_copy_0, i16* nonnull align 512 %layerStartY_copy_1, i16* nonnull align 512 %layerStartY_copy_2, [3 x i16]* nonnull %3, i16* nonnull align 512 %layerWidth_copy_0, i16* nonnull align 512 %layerWidth_copy_1, i16* nonnull align 512 %layerWidth_copy_2, [3 x i16]* nonnull %4, i16* nonnull align 512 %layerHeight_copy_0, i16* nonnull align 512 %layerHeight_copy_1, i16* nonnull align 512 %layerHeight_copy_2, [3 x i8]* nonnull %5, i8* nonnull align 512 %layerScaleFactor_copy_0, i8* nonnull align 512 %layerScaleFactor_copy_1, i8* nonnull align 512 %layerScaleFactor_copy_2, [3 x i8]* nonnull %6, [3 x i8]* nonnull align 512 %layerVideoFormat_copy, [3 x i16]* nonnull %7, i16* nonnull align 512 %layerStride_copy_0, i16* nonnull align 512 %layerStride_copy_1, i16* nonnull align 512 %layerStride_copy_2, %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* nonnull %m_axis_video, i24* nonnull align 512 %m_axis_video_copy.data, i3* nonnull align 512 %m_axis_video_copy.keep, i3* nonnull align 512 %m_axis_video_copy.strb, i1* nonnull align 512 %m_axis_video_copy.user, i1* nonnull align 512 %m_axis_video_copy.last, i1* nonnull align 512 %m_axis_video_copy.id, i1* nonnull align 512 %m_axis_video_copy.dest)
  call void @apatb_v_mix_hw(i24* %s_axis_video_copy.data, i3* %s_axis_video_copy.keep, i3* %s_axis_video_copy.strb, i1* %s_axis_video_copy.user, i1* %s_axis_video_copy.last, i1* %s_axis_video_copy.id, i1* %s_axis_video_copy.dest, i24* %s_axis_video1_copy.data, i3* %s_axis_video1_copy.keep, i3* %s_axis_video1_copy.strb, i1* %s_axis_video1_copy.user, i1* %s_axis_video1_copy.last, i1* %s_axis_video1_copy.id, i1* %s_axis_video1_copy.dest, i24* %s_axis_video2_copy.data, i3* %s_axis_video2_copy.keep, i3* %s_axis_video2_copy.strb, i1* %s_axis_video2_copy.user, i1* %s_axis_video2_copy.last, i1* %s_axis_video2_copy.id, i1* %s_axis_video2_copy.dest, i16 %width, i16 %height, i16 %video_format, i16 %background_Y_R, i16 %background_U_G, i16 %background_V_B, i32 %layerEnable, i16* %layerAlpha_copy_0, i16* %layerAlpha_copy_1, i16* %layerAlpha_copy_2, i16* %layerStartX_copy_0, i16* %layerStartX_copy_1, i16* %layerStartX_copy_2, i16* %layerStartY_copy_0, i16* %layerStartY_copy_1, i16* %layerStartY_copy_2, i16* %layerWidth_copy_0, i16* %layerWidth_copy_1, i16* %layerWidth_copy_2, i16* %layerHeight_copy_0, i16* %layerHeight_copy_1, i16* %layerHeight_copy_2, i8* %layerScaleFactor_copy_0, i8* %layerScaleFactor_copy_1, i8* %layerScaleFactor_copy_2, [3 x i8]* %layerVideoFormat_copy, i16* %layerStride_copy_0, i16* %layerStride_copy_1, i16* %layerStride_copy_2, i16 %reserve, i32 %K11, i32 %K12, i32 %K13, i32 %K21, i32 %K22, i32 %K23, i32 %K31, i32 %K32, i32 %K33, i32 %ROffset, i32 %GOffset, i32 %BOffset, i32 %K11_2, i32 %K12_2, i32 %K13_2, i32 %K21_2, i32 %K22_2, i32 %K23_2, i32 %K31_2, i32 %K32_2, i32 %K33_2, i32 %YOffset, i32 %UOffset, i32 %VOffset, i24* %m_axis_video_copy.data, i3* %m_axis_video_copy.keep, i3* %m_axis_video_copy.strb, i1* %m_axis_video_copy.user, i1* %m_axis_video_copy.last, i1* %m_axis_video_copy.id, i1* %m_axis_video_copy.dest)
  call void @copy_back(%"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* %s_axis_video, i24* %s_axis_video_copy.data, i3* %s_axis_video_copy.keep, i3* %s_axis_video_copy.strb, i1* %s_axis_video_copy.user, i1* %s_axis_video_copy.last, i1* %s_axis_video_copy.id, i1* %s_axis_video_copy.dest, %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* %s_axis_video1, i24* %s_axis_video1_copy.data, i3* %s_axis_video1_copy.keep, i3* %s_axis_video1_copy.strb, i1* %s_axis_video1_copy.user, i1* %s_axis_video1_copy.last, i1* %s_axis_video1_copy.id, i1* %s_axis_video1_copy.dest, %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* %s_axis_video2, i24* %s_axis_video2_copy.data, i3* %s_axis_video2_copy.keep, i3* %s_axis_video2_copy.strb, i1* %s_axis_video2_copy.user, i1* %s_axis_video2_copy.last, i1* %s_axis_video2_copy.id, i1* %s_axis_video2_copy.dest, [3 x i16]* %0, i16* %layerAlpha_copy_0, i16* %layerAlpha_copy_1, i16* %layerAlpha_copy_2, [3 x i16]* %1, i16* %layerStartX_copy_0, i16* %layerStartX_copy_1, i16* %layerStartX_copy_2, [3 x i16]* %2, i16* %layerStartY_copy_0, i16* %layerStartY_copy_1, i16* %layerStartY_copy_2, [3 x i16]* %3, i16* %layerWidth_copy_0, i16* %layerWidth_copy_1, i16* %layerWidth_copy_2, [3 x i16]* %4, i16* %layerHeight_copy_0, i16* %layerHeight_copy_1, i16* %layerHeight_copy_2, [3 x i8]* %5, i8* %layerScaleFactor_copy_0, i8* %layerScaleFactor_copy_1, i8* %layerScaleFactor_copy_2, [3 x i8]* %6, [3 x i8]* %layerVideoFormat_copy, [3 x i16]* %7, i16* %layerStride_copy_0, i16* %layerStride_copy_1, i16* %layerStride_copy_2, %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* %m_axis_video, i24* %m_axis_video_copy.data, i3* %m_axis_video_copy.keep, i3* %m_axis_video_copy.strb, i1* %m_axis_video_copy.user, i1* %m_axis_video_copy.last, i1* %m_axis_video_copy.id, i1* %m_axis_video_copy.dest)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a3i16([3 x i16]* "orig.arg.no"="0" %dst, [3 x i16]* readonly "orig.arg.no"="1" %src, i64 "orig.arg.no"="2" %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [3 x i16]* %src, null
  %1 = icmp eq [3 x i16]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [3 x i16], [3 x i16]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [3 x i16], [3 x i16]* %src, i64 0, i64 %for.loop.idx2
  %3 = load i16, i16* %src.addr, align 2
  store i16 %3, i16* %dst.addr, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0a3i8([3 x i8]* noalias align 512 "orig.arg.no"="0" %dst, [3 x i8]* noalias readonly "orig.arg.no"="1" %src) unnamed_addr #3 {
entry:
  %0 = icmp eq [3 x i8]* %dst, null
  %1 = icmp eq [3 x i8]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a3i8([3 x i8]* nonnull %dst, [3 x i8]* nonnull %src, i64 3)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a3i8([3 x i8]* "orig.arg.no"="0" %dst, [3 x i8]* readonly "orig.arg.no"="1" %src, i64 "orig.arg.no"="2" %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [3 x i8]* %src, null
  %1 = icmp eq [3 x i8]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [3 x i8], [3 x i8]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [3 x i8], [3 x i8]* %src, i64 0, i64 %for.loop.idx2
  %3 = load i8, i8* %src.addr, align 1
  store i8 %3, i8* %dst.addr, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a3i16.26.27(i16* "orig.arg.no"="0" "unpacked"="0.0" %dst_0, i16* "orig.arg.no"="0" "unpacked"="0.1" %dst_1, i16* "orig.arg.no"="0" "unpacked"="0.2" %dst_2, [3 x i16]* readonly "orig.arg.no"="1" %src, i64 "orig.arg.no"="2" %num) #2 {
entry:
  %0 = icmp eq [3 x i16]* %src, null
  %1 = icmp eq i16* %dst_0, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %dst.addr.exit, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %dst.addr.exit ]
  %src.addr = getelementptr [3 x i16], [3 x i16]* %src, i64 0, i64 %for.loop.idx2
  %3 = load i16, i16* %src.addr, align 2
  switch i64 %for.loop.idx2, label %dst.addr.case.2 [
    i64 0, label %dst.addr.case.0
    i64 1, label %dst.addr.case.1
  ]

dst.addr.case.0:                                  ; preds = %for.loop
  store i16 %3, i16* %dst_0, align 2
  br label %dst.addr.exit

dst.addr.case.1:                                  ; preds = %for.loop
  store i16 %3, i16* %dst_1, align 2
  br label %dst.addr.exit

dst.addr.case.2:                                  ; preds = %for.loop
  %4 = icmp eq i64 %for.loop.idx2, 2
  call void @llvm.assume(i1 %4)
  store i16 %3, i16* %dst_2, align 2
  br label %dst.addr.exit

dst.addr.exit:                                    ; preds = %dst.addr.case.2, %dst.addr.case.1, %dst.addr.case.0
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %dst.addr.exit, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @onebyonecpy_hls.p0a3i16.25.28(i16* noalias align 512 "orig.arg.no"="0" "unpacked"="0.0" %dst_0, i16* noalias align 512 "orig.arg.no"="0" "unpacked"="0.1" %dst_1, i16* noalias align 512 "orig.arg.no"="0" "unpacked"="0.2" %dst_2, [3 x i16]* noalias readonly "orig.arg.no"="1" %src) #3 {
entry:
  %0 = icmp eq i16* %dst_0, null
  %1 = icmp eq [3 x i16]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a3i16.26.27(i16* nonnull %dst_0, i16* %dst_1, i16* %dst_2, [3 x i16]* nonnull %src, i64 3)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a3i8.30.31(i8* "orig.arg.no"="0" "unpacked"="0.0" %dst_0, i8* "orig.arg.no"="0" "unpacked"="0.1" %dst_1, i8* "orig.arg.no"="0" "unpacked"="0.2" %dst_2, [3 x i8]* readonly "orig.arg.no"="1" %src, i64 "orig.arg.no"="2" %num) #2 {
entry:
  %0 = icmp eq [3 x i8]* %src, null
  %1 = icmp eq i8* %dst_0, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %dst.addr.exit, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %dst.addr.exit ]
  %src.addr = getelementptr [3 x i8], [3 x i8]* %src, i64 0, i64 %for.loop.idx2
  %3 = load i8, i8* %src.addr, align 1
  switch i64 %for.loop.idx2, label %dst.addr.case.2 [
    i64 0, label %dst.addr.case.0
    i64 1, label %dst.addr.case.1
  ]

dst.addr.case.0:                                  ; preds = %for.loop
  store i8 %3, i8* %dst_0, align 1
  br label %dst.addr.exit

dst.addr.case.1:                                  ; preds = %for.loop
  store i8 %3, i8* %dst_1, align 1
  br label %dst.addr.exit

dst.addr.case.2:                                  ; preds = %for.loop
  %4 = icmp eq i64 %for.loop.idx2, 2
  call void @llvm.assume(i1 %4)
  store i8 %3, i8* %dst_2, align 1
  br label %dst.addr.exit

dst.addr.exit:                                    ; preds = %dst.addr.case.2, %dst.addr.case.1, %dst.addr.case.0
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %dst.addr.exit, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @onebyonecpy_hls.p0a3i8.29.32(i8* noalias align 512 "orig.arg.no"="0" "unpacked"="0.0" %dst_0, i8* noalias align 512 "orig.arg.no"="0" "unpacked"="0.1" %dst_1, i8* noalias align 512 "orig.arg.no"="0" "unpacked"="0.2" %dst_2, [3 x i8]* noalias readonly "orig.arg.no"="1" %src) #3 {
entry:
  %0 = icmp eq i8* %dst_0, null
  %1 = icmp eq [3 x i8]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a3i8.30.31(i8* nonnull %dst_0, i8* %dst_1, i8* %dst_2, [3 x i8]* nonnull %src, i64 3)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal void @copy_in(%"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* noalias "orig.arg.no"="0", i24* noalias align 512 "orig.arg.no"="1" "unpacked"="1.0" %_V_data_V, i3* noalias align 512 "orig.arg.no"="1" "unpacked"="1.1" %_V_keep_V, i3* noalias align 512 "orig.arg.no"="1" "unpacked"="1.2" %_V_strb_V, i1* noalias align 512 "orig.arg.no"="1" "unpacked"="1.3" %_V_user_V, i1* noalias align 512 "orig.arg.no"="1" "unpacked"="1.4" %_V_last_V, i1* noalias align 512 "orig.arg.no"="1" "unpacked"="1.5" %_V_id_V, i1* noalias align 512 "orig.arg.no"="1" "unpacked"="1.6" %_V_dest_V, %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* noalias "orig.arg.no"="2", i24* noalias align 512 "orig.arg.no"="3" "unpacked"="3.0" %_V_data_V1, i3* noalias align 512 "orig.arg.no"="3" "unpacked"="3.1" %_V_keep_V2, i3* noalias align 512 "orig.arg.no"="3" "unpacked"="3.2" %_V_strb_V3, i1* noalias align 512 "orig.arg.no"="3" "unpacked"="3.3" %_V_user_V4, i1* noalias align 512 "orig.arg.no"="3" "unpacked"="3.4" %_V_last_V5, i1* noalias align 512 "orig.arg.no"="3" "unpacked"="3.5" %_V_id_V6, i1* noalias align 512 "orig.arg.no"="3" "unpacked"="3.6" %_V_dest_V7, %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* noalias "orig.arg.no"="4", i24* noalias align 512 "orig.arg.no"="5" "unpacked"="17.0" %_V_data_V2, i3* noalias align 512 "orig.arg.no"="5" "unpacked"="17.1" %_V_keep_V3, i3* noalias align 512 "orig.arg.no"="5" "unpacked"="17.2" %_V_strb_V4, i1* noalias align 512 "orig.arg.no"="5" "unpacked"="17.3" %_V_user_V5, i1* noalias align 512 "orig.arg.no"="5" "unpacked"="17.4" %_V_last_V6, i1* noalias align 512 "orig.arg.no"="5" "unpacked"="17.5" %_V_id_V7, i1* noalias align 512 "orig.arg.no"="5" "unpacked"="17.6" %_V_dest_V8, [3 x i16]* noalias readonly "orig.arg.no"="6", i16* noalias align 512 "orig.arg.no"="7" "unpacked"="7.0" %_0, i16* noalias align 512 "orig.arg.no"="7" "unpacked"="7.1" %_1, i16* noalias align 512 "orig.arg.no"="7" "unpacked"="7.2" %_2, [3 x i16]* noalias readonly "orig.arg.no"="8", i16* noalias align 512 "orig.arg.no"="9" "unpacked"="9.0" %_01, i16* noalias align 512 "orig.arg.no"="9" "unpacked"="9.1" %_12, i16* noalias align 512 "orig.arg.no"="9" "unpacked"="9.2" %_23, [3 x i16]* noalias readonly "orig.arg.no"="10", i16* noalias align 512 "orig.arg.no"="11" "unpacked"="11.0" %_04, i16* noalias align 512 "orig.arg.no"="11" "unpacked"="11.1" %_15, i16* noalias align 512 "orig.arg.no"="11" "unpacked"="11.2" %_26, [3 x i16]* noalias readonly "orig.arg.no"="12", i16* noalias align 512 "orig.arg.no"="13" "unpacked"="13.0" %_07, i16* noalias align 512 "orig.arg.no"="13" "unpacked"="13.1" %_18, i16* noalias align 512 "orig.arg.no"="13" "unpacked"="13.2" %_29, [3 x i16]* noalias readonly "orig.arg.no"="14", i16* noalias align 512 "orig.arg.no"="15" "unpacked"="15.0" %_010, i16* noalias align 512 "orig.arg.no"="15" "unpacked"="15.1" %_111, i16* noalias align 512 "orig.arg.no"="15" "unpacked"="15.2" %_212, [3 x i8]* noalias readonly "orig.arg.no"="16", i8* noalias align 512 "orig.arg.no"="17" "unpacked"="17.0" %_013, i8* noalias align 512 "orig.arg.no"="17" "unpacked"="17.1" %_114, i8* noalias align 512 "orig.arg.no"="17" "unpacked"="17.2" %_215, [3 x i8]* noalias readonly "orig.arg.no"="18", [3 x i8]* noalias align 512 "orig.arg.no"="19", [3 x i16]* noalias readonly "orig.arg.no"="20", i16* noalias align 512 "orig.arg.no"="21" "unpacked"="21.0" %_016, i16* noalias align 512 "orig.arg.no"="21" "unpacked"="21.1" %_117, i16* noalias align 512 "orig.arg.no"="21" "unpacked"="21.2" %_218, %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* noalias "orig.arg.no"="22", i24* noalias align 512 "orig.arg.no"="23" "unpacked"="37.0" %_V_data_V18, i3* noalias align 512 "orig.arg.no"="23" "unpacked"="37.1" %_V_keep_V29, i3* noalias align 512 "orig.arg.no"="23" "unpacked"="37.2" %_V_strb_V310, i1* noalias align 512 "orig.arg.no"="23" "unpacked"="37.3" %_V_user_V411, i1* noalias align 512 "orig.arg.no"="23" "unpacked"="37.4" %_V_last_V512, i1* noalias align 512 "orig.arg.no"="23" "unpacked"="37.5" %_V_id_V613, i1* noalias align 512 "orig.arg.no"="23" "unpacked"="37.6" %_V_dest_V714) #4 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>.97"(i24* align 512 %_V_data_V, i3* align 512 %_V_keep_V, i3* align 512 %_V_strb_V, i1* align 512 %_V_user_V, i1* align 512 %_V_last_V, i1* align 512 %_V_id_V, i1* align 512 %_V_dest_V, %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* %0)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>.97"(i24* align 512 %_V_data_V1, i3* align 512 %_V_keep_V2, i3* align 512 %_V_strb_V3, i1* align 512 %_V_user_V4, i1* align 512 %_V_last_V5, i1* align 512 %_V_id_V6, i1* align 512 %_V_dest_V7, %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* %1)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>.97"(i24* align 512 %_V_data_V2, i3* align 512 %_V_keep_V3, i3* align 512 %_V_strb_V4, i1* align 512 %_V_user_V5, i1* align 512 %_V_last_V6, i1* align 512 %_V_id_V7, i1* align 512 %_V_dest_V8, %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* %2)
  call void @onebyonecpy_hls.p0a3i16.25.28(i16* align 512 %_0, i16* align 512 %_1, i16* align 512 %_2, [3 x i16]* %3)
  call void @onebyonecpy_hls.p0a3i16.25.28(i16* align 512 %_01, i16* align 512 %_12, i16* align 512 %_23, [3 x i16]* %4)
  call void @onebyonecpy_hls.p0a3i16.25.28(i16* align 512 %_04, i16* align 512 %_15, i16* align 512 %_26, [3 x i16]* %5)
  call void @onebyonecpy_hls.p0a3i16.25.28(i16* align 512 %_07, i16* align 512 %_18, i16* align 512 %_29, [3 x i16]* %6)
  call void @onebyonecpy_hls.p0a3i16.25.28(i16* align 512 %_010, i16* align 512 %_111, i16* align 512 %_212, [3 x i16]* %7)
  call void @onebyonecpy_hls.p0a3i8.29.32(i8* align 512 %_013, i8* align 512 %_114, i8* align 512 %_215, [3 x i8]* %8)
  call fastcc void @onebyonecpy_hls.p0a3i8([3 x i8]* align 512 %10, [3 x i8]* %9)
  call void @onebyonecpy_hls.p0a3i16.25.28(i16* align 512 %_016, i16* align 512 %_117, i16* align 512 %_218, [3 x i16]* %11)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>.97"(i24* align 512 %_V_data_V18, i3* align 512 %_V_keep_V29, i3* align 512 %_V_strb_V310, i1* align 512 %_V_user_V411, i1* align 512 %_V_last_V512, i1* align 512 %_V_id_V613, i1* align 512 %_V_dest_V714, %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* %12)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a3i16.38.39([3 x i16]* "orig.arg.no"="0" %dst, i16* readonly "orig.arg.no"="1" "unpacked"="1.0" %src_0, i16* readonly "orig.arg.no"="1" "unpacked"="1.1" %src_1, i16* readonly "orig.arg.no"="1" "unpacked"="1.2" %src_2, i64 "orig.arg.no"="2" %num) #2 {
entry:
  %0 = icmp eq i16* %src_0, null
  %1 = icmp eq [3 x i16]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %src.addr.exit, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %src.addr.exit ]
  %dst.addr = getelementptr [3 x i16], [3 x i16]* %dst, i64 0, i64 %for.loop.idx2
  switch i64 %for.loop.idx2, label %src.addr.case.2 [
    i64 0, label %src.addr.case.0
    i64 1, label %src.addr.case.1
  ]

src.addr.case.0:                                  ; preds = %for.loop
  %_0 = load i16, i16* %src_0, align 2
  br label %src.addr.exit

src.addr.case.1:                                  ; preds = %for.loop
  %_1 = load i16, i16* %src_1, align 2
  br label %src.addr.exit

src.addr.case.2:                                  ; preds = %for.loop
  %3 = icmp eq i64 %for.loop.idx2, 2
  call void @llvm.assume(i1 %3)
  %_2 = load i16, i16* %src_2, align 2
  br label %src.addr.exit

src.addr.exit:                                    ; preds = %src.addr.case.2, %src.addr.case.1, %src.addr.case.0
  %4 = phi i16 [ %_0, %src.addr.case.0 ], [ %_1, %src.addr.case.1 ], [ %_2, %src.addr.case.2 ]
  store i16 %4, i16* %dst.addr, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %src.addr.exit, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @onebyonecpy_hls.p0a3i16.37.40([3 x i16]* noalias "orig.arg.no"="0" %dst, i16* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.0" %src_0, i16* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.1" %src_1, i16* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.2" %src_2) #3 {
entry:
  %0 = icmp eq [3 x i16]* %dst, null
  %1 = icmp eq i16* %src_0, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a3i16.38.39([3 x i16]* nonnull %dst, i16* nonnull %src_0, i16* %src_1, i16* %src_2, i64 3)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a3i8.42.43([3 x i8]* "orig.arg.no"="0" %dst, i8* readonly "orig.arg.no"="1" "unpacked"="1.0" %src_0, i8* readonly "orig.arg.no"="1" "unpacked"="1.1" %src_1, i8* readonly "orig.arg.no"="1" "unpacked"="1.2" %src_2, i64 "orig.arg.no"="2" %num) #2 {
entry:
  %0 = icmp eq i8* %src_0, null
  %1 = icmp eq [3 x i8]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %src.addr.exit, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %src.addr.exit ]
  %dst.addr = getelementptr [3 x i8], [3 x i8]* %dst, i64 0, i64 %for.loop.idx2
  switch i64 %for.loop.idx2, label %src.addr.case.2 [
    i64 0, label %src.addr.case.0
    i64 1, label %src.addr.case.1
  ]

src.addr.case.0:                                  ; preds = %for.loop
  %_0 = load i8, i8* %src_0, align 1
  br label %src.addr.exit

src.addr.case.1:                                  ; preds = %for.loop
  %_1 = load i8, i8* %src_1, align 1
  br label %src.addr.exit

src.addr.case.2:                                  ; preds = %for.loop
  %3 = icmp eq i64 %for.loop.idx2, 2
  call void @llvm.assume(i1 %3)
  %_2 = load i8, i8* %src_2, align 1
  br label %src.addr.exit

src.addr.exit:                                    ; preds = %src.addr.case.2, %src.addr.case.1, %src.addr.case.0
  %4 = phi i8 [ %_0, %src.addr.case.0 ], [ %_1, %src.addr.case.1 ], [ %_2, %src.addr.case.2 ]
  store i8 %4, i8* %dst.addr, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %src.addr.exit, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @onebyonecpy_hls.p0a3i8.41.44([3 x i8]* noalias "orig.arg.no"="0" %dst, i8* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.0" %src_0, i8* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.1" %src_1, i8* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.2" %src_2) #3 {
entry:
  %0 = icmp eq [3 x i8]* %dst, null
  %1 = icmp eq i8* %src_0, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a3i8.42.43([3 x i8]* nonnull %dst, i8* nonnull %src_0, i8* %src_1, i8* %src_2, i64 3)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal void @copy_out(%"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* noalias "orig.arg.no"="0", i24* noalias align 512 "orig.arg.no"="1" "unpacked"="1.0" %_V_data_V, i3* noalias align 512 "orig.arg.no"="1" "unpacked"="1.1" %_V_keep_V, i3* noalias align 512 "orig.arg.no"="1" "unpacked"="1.2" %_V_strb_V, i1* noalias align 512 "orig.arg.no"="1" "unpacked"="1.3" %_V_user_V, i1* noalias align 512 "orig.arg.no"="1" "unpacked"="1.4" %_V_last_V, i1* noalias align 512 "orig.arg.no"="1" "unpacked"="1.5" %_V_id_V, i1* noalias align 512 "orig.arg.no"="1" "unpacked"="1.6" %_V_dest_V, %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* noalias "orig.arg.no"="2", i24* noalias align 512 "orig.arg.no"="3" "unpacked"="3.0" %_V_data_V1, i3* noalias align 512 "orig.arg.no"="3" "unpacked"="3.1" %_V_keep_V2, i3* noalias align 512 "orig.arg.no"="3" "unpacked"="3.2" %_V_strb_V3, i1* noalias align 512 "orig.arg.no"="3" "unpacked"="3.3" %_V_user_V4, i1* noalias align 512 "orig.arg.no"="3" "unpacked"="3.4" %_V_last_V5, i1* noalias align 512 "orig.arg.no"="3" "unpacked"="3.5" %_V_id_V6, i1* noalias align 512 "orig.arg.no"="3" "unpacked"="3.6" %_V_dest_V7, %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* noalias "orig.arg.no"="4", i24* noalias align 512 "orig.arg.no"="5" "unpacked"="17.0" %_V_data_V2, i3* noalias align 512 "orig.arg.no"="5" "unpacked"="17.1" %_V_keep_V3, i3* noalias align 512 "orig.arg.no"="5" "unpacked"="17.2" %_V_strb_V4, i1* noalias align 512 "orig.arg.no"="5" "unpacked"="17.3" %_V_user_V5, i1* noalias align 512 "orig.arg.no"="5" "unpacked"="17.4" %_V_last_V6, i1* noalias align 512 "orig.arg.no"="5" "unpacked"="17.5" %_V_id_V7, i1* noalias align 512 "orig.arg.no"="5" "unpacked"="17.6" %_V_dest_V8, [3 x i16]* noalias "orig.arg.no"="6", i16* noalias readonly align 512 "orig.arg.no"="7" "unpacked"="7.0" %_0, i16* noalias readonly align 512 "orig.arg.no"="7" "unpacked"="7.1" %_1, i16* noalias readonly align 512 "orig.arg.no"="7" "unpacked"="7.2" %_2, [3 x i16]* noalias "orig.arg.no"="8", i16* noalias readonly align 512 "orig.arg.no"="9" "unpacked"="9.0" %_01, i16* noalias readonly align 512 "orig.arg.no"="9" "unpacked"="9.1" %_12, i16* noalias readonly align 512 "orig.arg.no"="9" "unpacked"="9.2" %_23, [3 x i16]* noalias "orig.arg.no"="10", i16* noalias readonly align 512 "orig.arg.no"="11" "unpacked"="11.0" %_04, i16* noalias readonly align 512 "orig.arg.no"="11" "unpacked"="11.1" %_15, i16* noalias readonly align 512 "orig.arg.no"="11" "unpacked"="11.2" %_26, [3 x i16]* noalias "orig.arg.no"="12", i16* noalias readonly align 512 "orig.arg.no"="13" "unpacked"="13.0" %_07, i16* noalias readonly align 512 "orig.arg.no"="13" "unpacked"="13.1" %_18, i16* noalias readonly align 512 "orig.arg.no"="13" "unpacked"="13.2" %_29, [3 x i16]* noalias "orig.arg.no"="14", i16* noalias readonly align 512 "orig.arg.no"="15" "unpacked"="15.0" %_010, i16* noalias readonly align 512 "orig.arg.no"="15" "unpacked"="15.1" %_111, i16* noalias readonly align 512 "orig.arg.no"="15" "unpacked"="15.2" %_212, [3 x i8]* noalias "orig.arg.no"="16", i8* noalias readonly align 512 "orig.arg.no"="17" "unpacked"="17.0" %_013, i8* noalias readonly align 512 "orig.arg.no"="17" "unpacked"="17.1" %_114, i8* noalias readonly align 512 "orig.arg.no"="17" "unpacked"="17.2" %_215, [3 x i8]* noalias "orig.arg.no"="18", [3 x i8]* noalias readonly align 512 "orig.arg.no"="19", [3 x i16]* noalias "orig.arg.no"="20", i16* noalias readonly align 512 "orig.arg.no"="21" "unpacked"="21.0" %_016, i16* noalias readonly align 512 "orig.arg.no"="21" "unpacked"="21.1" %_117, i16* noalias readonly align 512 "orig.arg.no"="21" "unpacked"="21.2" %_218, %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* noalias "orig.arg.no"="22", i24* noalias align 512 "orig.arg.no"="23" "unpacked"="37.0" %_V_data_V18, i3* noalias align 512 "orig.arg.no"="23" "unpacked"="37.1" %_V_keep_V29, i3* noalias align 512 "orig.arg.no"="23" "unpacked"="37.2" %_V_strb_V310, i1* noalias align 512 "orig.arg.no"="23" "unpacked"="37.3" %_V_user_V411, i1* noalias align 512 "orig.arg.no"="23" "unpacked"="37.4" %_V_last_V512, i1* noalias align 512 "orig.arg.no"="23" "unpacked"="37.5" %_V_id_V613, i1* noalias align 512 "orig.arg.no"="23" "unpacked"="37.6" %_V_dest_V714) #5 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"(%"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* %0, i24* align 512 %_V_data_V, i3* align 512 %_V_keep_V, i3* align 512 %_V_strb_V, i1* align 512 %_V_user_V, i1* align 512 %_V_last_V, i1* align 512 %_V_id_V, i1* align 512 %_V_dest_V)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"(%"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* %1, i24* align 512 %_V_data_V1, i3* align 512 %_V_keep_V2, i3* align 512 %_V_strb_V3, i1* align 512 %_V_user_V4, i1* align 512 %_V_last_V5, i1* align 512 %_V_id_V6, i1* align 512 %_V_dest_V7)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"(%"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* %2, i24* align 512 %_V_data_V2, i3* align 512 %_V_keep_V3, i3* align 512 %_V_strb_V4, i1* align 512 %_V_user_V5, i1* align 512 %_V_last_V6, i1* align 512 %_V_id_V7, i1* align 512 %_V_dest_V8)
  call void @onebyonecpy_hls.p0a3i16.37.40([3 x i16]* %3, i16* align 512 %_0, i16* align 512 %_1, i16* align 512 %_2)
  call void @onebyonecpy_hls.p0a3i16.37.40([3 x i16]* %4, i16* align 512 %_01, i16* align 512 %_12, i16* align 512 %_23)
  call void @onebyonecpy_hls.p0a3i16.37.40([3 x i16]* %5, i16* align 512 %_04, i16* align 512 %_15, i16* align 512 %_26)
  call void @onebyonecpy_hls.p0a3i16.37.40([3 x i16]* %6, i16* align 512 %_07, i16* align 512 %_18, i16* align 512 %_29)
  call void @onebyonecpy_hls.p0a3i16.37.40([3 x i16]* %7, i16* align 512 %_010, i16* align 512 %_111, i16* align 512 %_212)
  call void @onebyonecpy_hls.p0a3i8.41.44([3 x i8]* %8, i8* align 512 %_013, i8* align 512 %_114, i8* align 512 %_215)
  call fastcc void @onebyonecpy_hls.p0a3i8([3 x i8]* %9, [3 x i8]* align 512 %10)
  call void @onebyonecpy_hls.p0a3i16.37.40([3 x i16]* %11, i16* align 512 %_016, i16* align 512 %_117, i16* align 512 %_218)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"(%"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* %12, i24* align 512 %_V_data_V18, i3* align 512 %_V_keep_V29, i3* align 512 %_V_strb_V310, i1* align 512 %_V_user_V411, i1* align 512 %_V_last_V512, i1* align 512 %_V_id_V613, i1* align 512 %_V_dest_V714)
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"(%"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* noalias %dst, i24* noalias align 512 "unpacked"="1.0" %src_V_data_V, i3* noalias align 512 "unpacked"="1.1" %src_V_keep_V, i3* noalias align 512 "unpacked"="1.2" %src_V_strb_V, i1* noalias align 512 "unpacked"="1.3" %src_V_user_V, i1* noalias align 512 "unpacked"="1.4" %src_V_last_V, i1* noalias align 512 "unpacked"="1.5" %src_V_id_V, i1* noalias align 512 "unpacked"="1.6" %src_V_dest_V) unnamed_addr #6 {
entry:
  %0 = icmp eq %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>.90"(%"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* nonnull %dst, i24* align 512 %src_V_data_V, i3* align 512 %src_V_keep_V, i3* align 512 %src_V_strb_V, i1* align 512 %src_V_user_V, i1* align 512 %src_V_last_V, i1* align 512 %src_V_id_V, i1* align 512 %src_V_dest_V)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>.90"(%"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* noalias nocapture, i24* noalias nocapture align 512 "unpacked"="1.0" %_V_data_V, i3* noalias nocapture align 512 "unpacked"="1.1" %_V_keep_V, i3* noalias nocapture align 512 "unpacked"="1.2" %_V_strb_V, i1* noalias nocapture align 512 "unpacked"="1.3" %_V_user_V, i1* noalias nocapture align 512 "unpacked"="1.4" %_V_last_V, i1* noalias nocapture align 512 "unpacked"="1.5" %_V_id_V, i1* noalias nocapture align 512 "unpacked"="1.6" %_V_dest_V) unnamed_addr #7 {
entry:
  %1 = alloca i24
  %2 = alloca i3
  %3 = alloca i3
  %4 = alloca i1
  %5 = alloca i1
  %6 = alloca i1
  %7 = alloca i1
  %8 = alloca %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %9 = bitcast i24* %_V_data_V to i8*
  %10 = call i1 @fpga_fifo_not_empty_4(i8* %9)
  br i1 %10, label %push, label %ret

push:                                             ; preds = %empty
  %11 = bitcast i24* %1 to i8*
  %12 = bitcast i24* %_V_data_V to i8*
  call void @fpga_fifo_pop_4(i8* %11, i8* %12)
  %13 = load volatile i24, i24* %1
  %14 = bitcast i3* %3 to i8*
  %15 = bitcast i3* %_V_keep_V to i8*
  call void @fpga_fifo_pop_1(i8* %14, i8* %15)
  %16 = bitcast i3* %3 to i8*
  %17 = load i8, i8* %16
  %18 = trunc i8 %17 to i3
  %19 = bitcast i3* %2 to i8*
  %20 = bitcast i3* %_V_strb_V to i8*
  call void @fpga_fifo_pop_1(i8* %19, i8* %20)
  %21 = bitcast i3* %2 to i8*
  %22 = load i8, i8* %21
  %23 = trunc i8 %22 to i3
  %24 = bitcast i1* %7 to i8*
  %25 = bitcast i1* %_V_user_V to i8*
  call void @fpga_fifo_pop_1(i8* %24, i8* %25)
  %26 = bitcast i1* %7 to i8*
  %27 = load i8, i8* %26
  %28 = trunc i8 %27 to i1
  %29 = bitcast i1* %6 to i8*
  %30 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_pop_1(i8* %29, i8* %30)
  %31 = bitcast i1* %6 to i8*
  %32 = load i8, i8* %31
  %33 = trunc i8 %32 to i1
  %34 = bitcast i1* %5 to i8*
  %35 = bitcast i1* %_V_id_V to i8*
  call void @fpga_fifo_pop_1(i8* %34, i8* %35)
  %36 = bitcast i1* %5 to i8*
  %37 = load i8, i8* %36
  %38 = trunc i8 %37 to i1
  %39 = bitcast i1* %4 to i8*
  %40 = bitcast i1* %_V_dest_V to i8*
  call void @fpga_fifo_pop_1(i8* %39, i8* %40)
  %41 = bitcast i1* %4 to i8*
  %42 = load i8, i8* %41
  %43 = trunc i8 %42 to i1
  %.fca.0.0.0.0.0.insert = insertvalue %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>" undef, i24 %13, 0, 0, 0, 0, 0
  %.fca.0.1.0.0.0.insert = insertvalue %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>" %.fca.0.0.0.0.0.insert, i3 %18, 0, 1, 0, 0, 0
  %.fca.0.2.0.0.0.insert = insertvalue %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>" %.fca.0.1.0.0.0.insert, i3 %23, 0, 2, 0, 0, 0
  %.fca.0.3.0.0.0.insert = insertvalue %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>" %.fca.0.2.0.0.0.insert, i1 %28, 0, 3, 0, 0, 0
  %.fca.0.4.0.0.0.insert = insertvalue %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>" %.fca.0.3.0.0.0.insert, i1 %33, 0, 4, 0, 0, 0
  %.fca.0.5.0.0.0.insert = insertvalue %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>" %.fca.0.4.0.0.0.insert, i1 %38, 0, 5, 0, 0, 0
  %.fca.0.6.0.0.0.insert = insertvalue %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>" %.fca.0.5.0.0.0.insert, i1 %43, 0, 6, 0, 0, 0
  store %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>" %.fca.0.6.0.0.0.insert, %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* %8
  %44 = bitcast %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* %8 to i8*
  %45 = bitcast %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* %0 to i8*
  call void @fpga_fifo_push_12(i8* %44, i8* %45)
  br label %empty, !llvm.loop !56

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>.97"(i24* noalias align 512 "unpacked"="0.0" %dst_V_data_V, i3* noalias align 512 "unpacked"="0.1" %dst_V_keep_V, i3* noalias align 512 "unpacked"="0.2" %dst_V_strb_V, i1* noalias align 512 "unpacked"="0.3" %dst_V_user_V, i1* noalias align 512 "unpacked"="0.4" %dst_V_last_V, i1* noalias align 512 "unpacked"="0.5" %dst_V_id_V, i1* noalias align 512 "unpacked"="0.6" %dst_V_dest_V, %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* noalias %src) unnamed_addr #6 {
entry:
  %0 = icmp eq %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>.100"(i24* align 512 %dst_V_data_V, i3* align 512 %dst_V_keep_V, i3* align 512 %dst_V_strb_V, i1* align 512 %dst_V_user_V, i1* align 512 %dst_V_last_V, i1* align 512 %dst_V_id_V, i1* align 512 %dst_V_dest_V, %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* nonnull %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>.100"(i24* noalias nocapture align 512 "unpacked"="0.0" %_V_data_V, i3* noalias nocapture align 512 "unpacked"="0.1" %_V_keep_V, i3* noalias nocapture align 512 "unpacked"="0.2" %_V_strb_V, i1* noalias nocapture align 512 "unpacked"="0.3" %_V_user_V, i1* noalias nocapture align 512 "unpacked"="0.4" %_V_last_V, i1* noalias nocapture align 512 "unpacked"="0.5" %_V_id_V, i1* noalias nocapture align 512 "unpacked"="0.6" %_V_dest_V, %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* noalias nocapture) unnamed_addr #7 {
entry:
  %1 = alloca %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"
  %2 = alloca i24
  %3 = alloca i3
  %4 = alloca i3
  %5 = alloca i1
  %6 = alloca i1
  %7 = alloca i1
  %8 = alloca i1
  br label %empty

empty:                                            ; preds = %push, %entry
  %9 = bitcast %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* %0 to i8*
  %10 = call i1 @fpga_fifo_not_empty_12(i8* %9)
  br i1 %10, label %push, label %ret

push:                                             ; preds = %empty
  %11 = bitcast %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* %1 to i8*
  %12 = bitcast %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* %0 to i8*
  call void @fpga_fifo_pop_12(i8* %11, i8* %12)
  %13 = load volatile %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>", %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* %1
  %.fca.0.0.0.0.0.extract = extractvalue %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>" %13, 0, 0, 0, 0, 0
  %.fca.0.1.0.0.0.extract = extractvalue %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>" %13, 0, 1, 0, 0, 0
  %.fca.0.2.0.0.0.extract = extractvalue %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>" %13, 0, 2, 0, 0, 0
  %.fca.0.3.0.0.0.extract = extractvalue %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>" %13, 0, 3, 0, 0, 0
  %.fca.0.4.0.0.0.extract = extractvalue %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>" %13, 0, 4, 0, 0, 0
  %.fca.0.5.0.0.0.extract = extractvalue %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>" %13, 0, 5, 0, 0, 0
  %.fca.0.6.0.0.0.extract = extractvalue %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>" %13, 0, 6, 0, 0, 0
  store i24 %.fca.0.0.0.0.0.extract, i24* %2
  %14 = bitcast i24* %2 to i8*
  %15 = bitcast i24* %_V_data_V to i8*
  call void @fpga_fifo_push_4(i8* %14, i8* %15)
  store i3 %.fca.0.1.0.0.0.extract, i3* %4
  %16 = bitcast i3* %4 to i8*
  %17 = bitcast i3* %_V_keep_V to i8*
  call void @fpga_fifo_push_1(i8* %16, i8* %17)
  store i3 %.fca.0.2.0.0.0.extract, i3* %3
  %18 = bitcast i3* %3 to i8*
  %19 = bitcast i3* %_V_strb_V to i8*
  call void @fpga_fifo_push_1(i8* %18, i8* %19)
  store i1 %.fca.0.3.0.0.0.extract, i1* %8
  %20 = bitcast i1* %8 to i8*
  %21 = bitcast i1* %_V_user_V to i8*
  call void @fpga_fifo_push_1(i8* %20, i8* %21)
  store i1 %.fca.0.4.0.0.0.extract, i1* %7
  %22 = bitcast i1* %7 to i8*
  %23 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_push_1(i8* %22, i8* %23)
  store i1 %.fca.0.5.0.0.0.extract, i1* %6
  %24 = bitcast i1* %6 to i8*
  %25 = bitcast i1* %_V_id_V to i8*
  call void @fpga_fifo_push_1(i8* %24, i8* %25)
  store i1 %.fca.0.6.0.0.0.extract, i1* %5
  %26 = bitcast i1* %5 to i8*
  %27 = bitcast i1* %_V_dest_V to i8*
  call void @fpga_fifo_push_1(i8* %26, i8* %27)
  br label %empty, !llvm.loop !56

ret:                                              ; preds = %empty
  ret void
}

declare void @apatb_v_mix_hw(i24*, i3*, i3*, i1*, i1*, i1*, i1*, i24*, i3*, i3*, i1*, i1*, i1*, i1*, i24*, i3*, i3*, i1*, i1*, i1*, i1*, i16, i16, i16, i16, i16, i16, i32, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i8*, i8*, i8*, [3 x i8]*, i16*, i16*, i16*, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i24*, i3*, i3*, i1*, i1*, i1*, i1*)

; Function Attrs: argmemonly noinline willreturn
define internal void @copy_back(%"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* noalias "orig.arg.no"="0", i24* noalias align 512 "orig.arg.no"="1" "unpacked"="1.0" %_V_data_V, i3* noalias align 512 "orig.arg.no"="1" "unpacked"="1.1" %_V_keep_V, i3* noalias align 512 "orig.arg.no"="1" "unpacked"="1.2" %_V_strb_V, i1* noalias align 512 "orig.arg.no"="1" "unpacked"="1.3" %_V_user_V, i1* noalias align 512 "orig.arg.no"="1" "unpacked"="1.4" %_V_last_V, i1* noalias align 512 "orig.arg.no"="1" "unpacked"="1.5" %_V_id_V, i1* noalias align 512 "orig.arg.no"="1" "unpacked"="1.6" %_V_dest_V, %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* noalias "orig.arg.no"="2", i24* noalias align 512 "orig.arg.no"="3" "unpacked"="3.0" %_V_data_V1, i3* noalias align 512 "orig.arg.no"="3" "unpacked"="3.1" %_V_keep_V2, i3* noalias align 512 "orig.arg.no"="3" "unpacked"="3.2" %_V_strb_V3, i1* noalias align 512 "orig.arg.no"="3" "unpacked"="3.3" %_V_user_V4, i1* noalias align 512 "orig.arg.no"="3" "unpacked"="3.4" %_V_last_V5, i1* noalias align 512 "orig.arg.no"="3" "unpacked"="3.5" %_V_id_V6, i1* noalias align 512 "orig.arg.no"="3" "unpacked"="3.6" %_V_dest_V7, %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* noalias "orig.arg.no"="4", i24* noalias align 512 "orig.arg.no"="5" "unpacked"="17.0" %_V_data_V2, i3* noalias align 512 "orig.arg.no"="5" "unpacked"="17.1" %_V_keep_V3, i3* noalias align 512 "orig.arg.no"="5" "unpacked"="17.2" %_V_strb_V4, i1* noalias align 512 "orig.arg.no"="5" "unpacked"="17.3" %_V_user_V5, i1* noalias align 512 "orig.arg.no"="5" "unpacked"="17.4" %_V_last_V6, i1* noalias align 512 "orig.arg.no"="5" "unpacked"="17.5" %_V_id_V7, i1* noalias align 512 "orig.arg.no"="5" "unpacked"="17.6" %_V_dest_V8, [3 x i16]* noalias "orig.arg.no"="6", i16* noalias readonly align 512 "orig.arg.no"="7" "unpacked"="7.0" %_0, i16* noalias readonly align 512 "orig.arg.no"="7" "unpacked"="7.1" %_1, i16* noalias readonly align 512 "orig.arg.no"="7" "unpacked"="7.2" %_2, [3 x i16]* noalias "orig.arg.no"="8", i16* noalias readonly align 512 "orig.arg.no"="9" "unpacked"="9.0" %_01, i16* noalias readonly align 512 "orig.arg.no"="9" "unpacked"="9.1" %_12, i16* noalias readonly align 512 "orig.arg.no"="9" "unpacked"="9.2" %_23, [3 x i16]* noalias "orig.arg.no"="10", i16* noalias readonly align 512 "orig.arg.no"="11" "unpacked"="11.0" %_04, i16* noalias readonly align 512 "orig.arg.no"="11" "unpacked"="11.1" %_15, i16* noalias readonly align 512 "orig.arg.no"="11" "unpacked"="11.2" %_26, [3 x i16]* noalias "orig.arg.no"="12", i16* noalias readonly align 512 "orig.arg.no"="13" "unpacked"="13.0" %_07, i16* noalias readonly align 512 "orig.arg.no"="13" "unpacked"="13.1" %_18, i16* noalias readonly align 512 "orig.arg.no"="13" "unpacked"="13.2" %_29, [3 x i16]* noalias "orig.arg.no"="14", i16* noalias readonly align 512 "orig.arg.no"="15" "unpacked"="15.0" %_010, i16* noalias readonly align 512 "orig.arg.no"="15" "unpacked"="15.1" %_111, i16* noalias readonly align 512 "orig.arg.no"="15" "unpacked"="15.2" %_212, [3 x i8]* noalias "orig.arg.no"="16", i8* noalias readonly align 512 "orig.arg.no"="17" "unpacked"="17.0" %_013, i8* noalias readonly align 512 "orig.arg.no"="17" "unpacked"="17.1" %_114, i8* noalias readonly align 512 "orig.arg.no"="17" "unpacked"="17.2" %_215, [3 x i8]* noalias "orig.arg.no"="18", [3 x i8]* noalias readonly align 512 "orig.arg.no"="19", [3 x i16]* noalias "orig.arg.no"="20", i16* noalias readonly align 512 "orig.arg.no"="21" "unpacked"="21.0" %_016, i16* noalias readonly align 512 "orig.arg.no"="21" "unpacked"="21.1" %_117, i16* noalias readonly align 512 "orig.arg.no"="21" "unpacked"="21.2" %_218, %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* noalias "orig.arg.no"="22", i24* noalias align 512 "orig.arg.no"="23" "unpacked"="37.0" %_V_data_V18, i3* noalias align 512 "orig.arg.no"="23" "unpacked"="37.1" %_V_keep_V29, i3* noalias align 512 "orig.arg.no"="23" "unpacked"="37.2" %_V_strb_V310, i1* noalias align 512 "orig.arg.no"="23" "unpacked"="37.3" %_V_user_V411, i1* noalias align 512 "orig.arg.no"="23" "unpacked"="37.4" %_V_last_V512, i1* noalias align 512 "orig.arg.no"="23" "unpacked"="37.5" %_V_id_V613, i1* noalias align 512 "orig.arg.no"="23" "unpacked"="37.6" %_V_dest_V714) #5 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"(%"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* %0, i24* align 512 %_V_data_V, i3* align 512 %_V_keep_V, i3* align 512 %_V_strb_V, i1* align 512 %_V_user_V, i1* align 512 %_V_last_V, i1* align 512 %_V_id_V, i1* align 512 %_V_dest_V)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"(%"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* %1, i24* align 512 %_V_data_V1, i3* align 512 %_V_keep_V2, i3* align 512 %_V_strb_V3, i1* align 512 %_V_user_V4, i1* align 512 %_V_last_V5, i1* align 512 %_V_id_V6, i1* align 512 %_V_dest_V7)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"(%"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* %2, i24* align 512 %_V_data_V2, i3* align 512 %_V_keep_V3, i3* align 512 %_V_strb_V4, i1* align 512 %_V_user_V5, i1* align 512 %_V_last_V6, i1* align 512 %_V_id_V7, i1* align 512 %_V_dest_V8)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"(%"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* %12, i24* align 512 %_V_data_V18, i3* align 512 %_V_keep_V29, i3* align 512 %_V_strb_V310, i1* align 512 %_V_user_V411, i1* align 512 %_V_last_V512, i1* align 512 %_V_id_V613, i1* align 512 %_V_dest_V714)
  ret void
}

define void @v_mix_hw_stub_wrapper(i24*, i3*, i3*, i1*, i1*, i1*, i1*, i24*, i3*, i3*, i1*, i1*, i1*, i1*, i24*, i3*, i3*, i1*, i1*, i1*, i1*, i16, i16, i16, i16, i16, i16, i32, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i8*, i8*, i8*, [3 x i8]*, i16*, i16*, i16*, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i24*, i3*, i3*, i1*, i1*, i1*, i1*) #8 {
entry:
  %82 = alloca %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"
  %83 = alloca %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"
  %84 = alloca %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"
  %85 = alloca [3 x i16]
  %86 = alloca [3 x i16]
  %87 = alloca [3 x i16]
  %88 = alloca [3 x i16]
  %89 = alloca [3 x i16]
  %90 = alloca [3 x i8]
  %91 = alloca [3 x i16]
  %92 = alloca %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"
  call void @copy_out(%"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* %82, i24* %0, i3* %1, i3* %2, i1* %3, i1* %4, i1* %5, i1* %6, %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* %83, i24* %7, i3* %8, i3* %9, i1* %10, i1* %11, i1* %12, i1* %13, %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* %84, i24* %14, i3* %15, i3* %16, i1* %17, i1* %18, i1* %19, i1* %20, [3 x i16]* %85, i16* %28, i16* %29, i16* %30, [3 x i16]* %86, i16* %31, i16* %32, i16* %33, [3 x i16]* %87, i16* %34, i16* %35, i16* %36, [3 x i16]* %88, i16* %37, i16* %38, i16* %39, [3 x i16]* %89, i16* %40, i16* %41, i16* %42, [3 x i8]* %90, i8* %43, i8* %44, i8* %45, [3 x i8]* null, [3 x i8]* %46, [3 x i16]* %91, i16* %47, i16* %48, i16* %49, %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* %92, i24* %75, i3* %76, i3* %77, i1* %78, i1* %79, i1* %80, i1* %81)
  %93 = bitcast [3 x i16]* %85 to i16*
  %94 = bitcast [3 x i16]* %86 to i16*
  %95 = bitcast [3 x i16]* %87 to i16*
  %96 = bitcast [3 x i16]* %88 to i16*
  %97 = bitcast [3 x i16]* %89 to i16*
  %98 = bitcast [3 x i8]* %90 to i8*
  %99 = bitcast [3 x i8]* %46 to i8*
  %100 = bitcast [3 x i16]* %91 to i16*
  call void @v_mix_hw_stub(%"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* %82, %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* %83, %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* %84, i16 %21, i16 %22, i16 %23, i16 %24, i16 %25, i16 %26, i32 %27, i16* %93, i16* %94, i16* %95, i16* %96, i16* %97, i8* %98, i8* %99, i16* %100, i16 %50, i32 %51, i32 %52, i32 %53, i32 %54, i32 %55, i32 %56, i32 %57, i32 %58, i32 %59, i32 %60, i32 %61, i32 %62, i32 %63, i32 %64, i32 %65, i32 %66, i32 %67, i32 %68, i32 %69, i32 %70, i32 %71, i32 %72, i32 %73, i32 %74, %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* %92)
  call void @copy_in(%"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* %82, i24* %0, i3* %1, i3* %2, i1* %3, i1* %4, i1* %5, i1* %6, %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* %83, i24* %7, i3* %8, i3* %9, i1* %10, i1* %11, i1* %12, i1* %13, %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* %84, i24* %14, i3* %15, i3* %16, i1* %17, i1* %18, i1* %19, i1* %20, [3 x i16]* %85, i16* %28, i16* %29, i16* %30, [3 x i16]* %86, i16* %31, i16* %32, i16* %33, [3 x i16]* %87, i16* %34, i16* %35, i16* %36, [3 x i16]* %88, i16* %37, i16* %38, i16* %39, [3 x i16]* %89, i16* %40, i16* %41, i16* %42, [3 x i8]* %90, i8* %43, i8* %44, i8* %45, [3 x i8]* null, [3 x i8]* %46, [3 x i16]* %91, i16* %47, i16* %48, i16* %49, %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* %92, i24* %75, i3* %76, i3* %77, i1* %78, i1* %79, i1* %80, i1* %81)
  ret void
}

declare void @v_mix_hw_stub(%"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* noalias nonnull, %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* noalias nonnull, %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* noalias nonnull, i16 zeroext, i16 zeroext, i16 zeroext, i16 zeroext, i16 zeroext, i16 zeroext, i32, i16* noalias nocapture nonnull readonly, i16* noalias nocapture nonnull readonly, i16* noalias nocapture nonnull readonly, i16* noalias nocapture nonnull readonly, i16* noalias nocapture nonnull readonly, i8* noalias nocapture nonnull readonly, i8* noalias nocapture nonnull readnone, i16* noalias nocapture nonnull readonly, i16 zeroext, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* noalias nonnull)

declare i1 @fpga_fifo_not_empty_12(i8*)

declare i1 @fpga_fifo_not_empty_4(i8*)

declare void @fpga_fifo_pop_12(i8*, i8*)

declare void @fpga_fifo_pop_4(i8*, i8*)

declare void @fpga_fifo_pop_1(i8*, i8*)

declare void @fpga_fifo_push_12(i8*, i8*)

declare void @fpga_fifo_push_4(i8*, i8*)

declare void @fpga_fifo_push_1(i8*, i8*)

attributes #0 = { nounwind willreturn }
attributes #1 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #2 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="arraycpy_hls" }
attributes #3 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { argmemonly noinline willreturn "fpga.wrapper.func"="copyin" }
attributes #5 = { argmemonly noinline willreturn "fpga.wrapper.func"="copyout" }
attributes #6 = { argmemonly noinline willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #7 = { argmemonly noinline willreturn "fpga.wrapper.func"="streamcpy_hls" }
attributes #8 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}
!datalayout.transforms.on.top = !{!5, !14, !21, !28, !35, !42, !49}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = !{!6, !8, !10}
!6 = !{!7}
!7 = !{!"10", [3 x i16]* null}
!8 = !{!9}
!9 = !{!"array_partition", !"type=Complete", !"dim=1"}
!10 = !{!11, !12, !13}
!11 = !{!"10.0", i16* null}
!12 = !{!"10.1", i16* null}
!13 = !{!"10.2", i16* null}
!14 = !{!15, !8, !17}
!15 = !{!16}
!16 = !{!"11", [3 x i16]* null}
!17 = !{!18, !19, !20}
!18 = !{!"11.0", i16* null}
!19 = !{!"11.1", i16* null}
!20 = !{!"11.2", i16* null}
!21 = !{!22, !8, !24}
!22 = !{!23}
!23 = !{!"12", [3 x i16]* null}
!24 = !{!25, !26, !27}
!25 = !{!"12.0", i16* null}
!26 = !{!"12.1", i16* null}
!27 = !{!"12.2", i16* null}
!28 = !{!29, !8, !31}
!29 = !{!30}
!30 = !{!"13", [3 x i16]* null}
!31 = !{!32, !33, !34}
!32 = !{!"13.0", i16* null}
!33 = !{!"13.1", i16* null}
!34 = !{!"13.2", i16* null}
!35 = !{!36, !8, !38}
!36 = !{!37}
!37 = !{!"14", [3 x i16]* null}
!38 = !{!39, !40, !41}
!39 = !{!"14.0", i16* null}
!40 = !{!"14.1", i16* null}
!41 = !{!"14.2", i16* null}
!42 = !{!43, !8, !45}
!43 = !{!44}
!44 = !{!"15", [3 x i8]* null}
!45 = !{!46, !47, !48}
!46 = !{!"15.0", i8* null}
!47 = !{!"15.1", i8* null}
!48 = !{!"15.2", i8* null}
!49 = !{!50, !8, !52}
!50 = !{!51}
!51 = !{!"17", [3 x i16]* null}
!52 = !{!53, !54, !55}
!53 = !{!"17.0", i16* null}
!54 = !{!"17.1", i16* null}
!55 = !{!"17.2", i16* null}
!56 = distinct !{!56, !57}
!57 = !{!"llvm.loop.rotate.disable"}
