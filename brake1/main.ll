; ModuleID = 'main2.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.pthread_attr_t = type { i64, [48 x i8] }

@__VERIFIER_thread_priorities = constant [5 x i32] [i32 5, i32 5, i32 5, i32 5, i32 22], align 16
@.str = private unnamed_addr constant [17 x i8] c"c::task_RR_Wheel\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"c::task_FR_Wheel\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"c::task_FL_Wheel\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"c::task_RL_Wheel\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"c::task_compute\00", align 1
@__VERIFIER_threads = global [5 x i8*] [i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0)], align 16
@brake_acc_nodiv_ctrl_B_local_ABS_FL_Wheel_Threshold_10kmh = global i32 100, align 4
@brake_acc_nodiv_ctrl_B_local_ABS_RL_Wheel_Threshold_10kmh = global i32 100, align 4
@brake_acc_nodiv_ctrl_B_local_ABS_RR_Wheel_Threshold_10kmh = global i32 100, align 4
@brake_acc_nodiv_ctrl_B_local_ABS_FR_Wheel_Threshold_10kmh = global i32 100, align 4
@brake_acc_nodiv_ctrl_P_RT_X0 = common global i32 0, align 4
@brake_acc_nodiv_ctrl_B_local_RT_h = common global i32 0, align 4
@brake_acc_nodiv_ctrl_P_RT4_X0 = common global i32 0, align 4
@brake_acc_nodiv_ctrl_B_local_RT4 = common global i32 0, align 4
@brake_acc_nodiv_ctrl_P_RT1_X0 = common global i32 0, align 4
@brake_acc_nodiv_ctrl_B_local_RT1 = common global i32 0, align 4
@brake_acc_nodiv_ctrl_P_RT2_X0 = common global i32 0, align 4
@brake_acc_nodiv_ctrl_B_local_RT2 = common global i32 0, align 4
@brake_acc_nodiv_ctrl_P_RT3_X0 = common global i32 0, align 4
@brake_acc_nodiv_ctrl_B_local_RT3 = common global i32 0, align 4
@test = common global i32 0, align 4
@brake_acc_nodiv_ctrl_P_Distribution_Gain1 = common global i32 0, align 4
@brake_acc_nodiv_ctrl_B_local_RT14 = common global i32 0, align 4
@Distribution_idx = common global i32 0, align 4
@brake_acc_nodiv_ctrl_P_Distribution_Gain2 = common global i32 0, align 4
@Distribution_idx_0 = common global i32 0, align 4
@brake_acc_nodiv_ctrl_P_Distribution_Gain3 = common global i32 0, align 4
@Distribution_idx_1 = common global i32 0, align 4
@RT9 = common global i32 0, align 4
@RT10 = common global i32 0, align 4
@vkmh = common global i32 0, align 4
@RT11 = common global i32 0, align 4
@RT12 = common global i32 0, align 4
@brake_acc_nodiv_ctrl_P_average_rpm_Gain = common global i32 0, align 4
@brake_acc_nodiv_ctrl_P_wgrads_Gain = common global i32 0, align 4
@brake_acc_nodiv_ctrl_P_vkmh_Gain = common global i32 0, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"main.c\00", align 1
@__PRETTY_FUNCTION__.task_compute = private unnamed_addr constant [27 x i8] c"void *task_compute(void *)\00", align 1
@brake_acc_nodiv_ctrl_P_Distribution_Gain0 = common global i32 0, align 4
@RT_Buffer0 = common global i32 0, align 4
@RT4_Buffer0 = common global i32 0, align 4
@RT1_Buffer0 = common global i32 0, align 4
@RT2_Buffer0 = common global i32 0, align 4
@RT3_Buffer0 = common global i32 0, align 4
@brake_acc_nodiv_ctrl_P_Gain1_Gain = common global i32 0, align 4
@RT14 = common global i32 0, align 4
@brake_acc_nodiv_ctrl_B_local_RTH = common global i32 0, align 4
@RT0_Buffer0 = common global i32 0, align 4
@cnt1 = common global i32 0, align 4
@cnt2 = common global i32 0, align 4
@cnt3 = common global i32 0, align 4

; Function Attrs: nounwind uwtable
define i8* @task_compute(i8* %unused) #0 {
  %1 = load i32, i32* @brake_acc_nodiv_ctrl_P_RT_X0, align 4
  store i32 %1, i32* @brake_acc_nodiv_ctrl_B_local_RT_h, align 4
  %2 = load i32, i32* @brake_acc_nodiv_ctrl_P_RT4_X0, align 4
  store i32 %2, i32* @brake_acc_nodiv_ctrl_B_local_RT4, align 4
  %3 = load i32, i32* @brake_acc_nodiv_ctrl_P_RT1_X0, align 4
  store i32 %3, i32* @brake_acc_nodiv_ctrl_B_local_RT1, align 4
  %4 = load i32, i32* @brake_acc_nodiv_ctrl_P_RT2_X0, align 4
  store i32 %4, i32* @brake_acc_nodiv_ctrl_B_local_RT2, align 4
  %5 = load i32, i32* @brake_acc_nodiv_ctrl_P_RT3_X0, align 4
  store i32 %5, i32* @brake_acc_nodiv_ctrl_B_local_RT3, align 4
  store i32 0, i32* @test, align 4
  %6 = load i32, i32* @brake_acc_nodiv_ctrl_P_Distribution_Gain1, align 4
  %7 = load i32, i32* @brake_acc_nodiv_ctrl_B_local_RT14, align 4
  %8 = add nsw i32 %6, %7
  store i32 %8, i32* @Distribution_idx, align 4
  %9 = load i32, i32* @brake_acc_nodiv_ctrl_P_Distribution_Gain2, align 4
  %10 = load i32, i32* @brake_acc_nodiv_ctrl_B_local_RT14, align 4
  %11 = add nsw i32 %9, %10
  store i32 %11, i32* @Distribution_idx_0, align 4
  %12 = load i32, i32* @brake_acc_nodiv_ctrl_P_Distribution_Gain3, align 4
  %13 = load i32, i32* @brake_acc_nodiv_ctrl_B_local_RT14, align 4
  %14 = add nsw i32 %12, %13
  store i32 %14, i32* @Distribution_idx_1, align 4
  %15 = load i32, i32* @RT9, align 4
  %16 = load i32, i32* @RT10, align 4
  %17 = add nsw i32 %15, %16
  store i32 %17, i32* @vkmh, align 4
  %18 = load i32, i32* @vkmh, align 4
  %19 = load i32, i32* @RT11, align 4
  %20 = add nsw i32 %18, %19
  store i32 %20, i32* @vkmh, align 4
  %21 = load i32, i32* @vkmh, align 4
  %22 = load i32, i32* @RT12, align 4
  %23 = add nsw i32 %21, %22
  store i32 %23, i32* @vkmh, align 4
  %24 = load i32, i32* @vkmh, align 4
  %25 = load i32, i32* @brake_acc_nodiv_ctrl_P_average_rpm_Gain, align 4
  %26 = add nsw i32 %24, %25
  store i32 %26, i32* @vkmh, align 4
  %27 = load i32, i32* @vkmh, align 4
  %28 = load i32, i32* @brake_acc_nodiv_ctrl_P_wgrads_Gain, align 4
  %29 = add nsw i32 %27, %28
  store i32 %29, i32* @vkmh, align 4
  %30 = load i32, i32* @vkmh, align 4
  %31 = load i32, i32* @brake_acc_nodiv_ctrl_P_vkmh_Gain, align 4
  %32 = add nsw i32 %30, %31
  store i32 %32, i32* @vkmh, align 4
  %33 = load i32, i32* @test, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

; <label>:35                                      ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i32 321, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.task_compute, i32 0, i32 0)) #3
  unreachable

; <label>:36                                      ; preds = %0
  %37 = load i32, i32* @test, align 4
  %38 = icmp ne i32 %37, 1
  br i1 %38, label %39, label %40

; <label>:39                                      ; preds = %36
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i32 325, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.task_compute, i32 0, i32 0)) #3
  unreachable

; <label>:40                                      ; preds = %36
  %41 = load i32, i32* @test, align 4
  %42 = icmp ne i32 %41, 2
  br i1 %42, label %43, label %44

; <label>:43                                      ; preds = %40
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i32 329, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.task_compute, i32 0, i32 0)) #3
  unreachable

; <label>:44                                      ; preds = %40
  %45 = load i32, i32* @test, align 4
  %46 = icmp ne i32 %45, 3
  br i1 %46, label %47, label %48

; <label>:47                                      ; preds = %44
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i32 333, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.task_compute, i32 0, i32 0)) #3
  unreachable

; <label>:48                                      ; preds = %44
  %49 = load i32, i32* @test, align 4
  %50 = icmp sle i32 %49, 0
  br i1 %50, label %51, label %52

; <label>:51                                      ; preds = %48
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i32 337, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.task_compute, i32 0, i32 0)) #3
  unreachable

; <label>:52                                      ; preds = %48
  %53 = load i32, i32* @test, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* @test, align 4
  %55 = load i32, i32* @brake_acc_nodiv_ctrl_P_Distribution_Gain0, align 4
  %56 = load i32, i32* @brake_acc_nodiv_ctrl_B_local_RT14, align 4
  %57 = add nsw i32 %55, %56
  store i32 %57, i32* @RT_Buffer0, align 4
  %58 = load i32, i32* @vkmh, align 4
  store i32 %58, i32* @RT4_Buffer0, align 4
  %59 = load i32, i32* @Distribution_idx, align 4
  store i32 %59, i32* @RT1_Buffer0, align 4
  %60 = load i32, i32* @Distribution_idx_0, align 4
  store i32 %60, i32* @RT2_Buffer0, align 4
  %61 = load i32, i32* @Distribution_idx_1, align 4
  store i32 %61, i32* @RT3_Buffer0, align 4
  ret i8* undef
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #1

; Function Attrs: nounwind uwtable
define i8* @task_RR_Wheel(i8* %unused) #0 {
  store i32 1, i32* @test, align 4
  %1 = load i32, i32* @brake_acc_nodiv_ctrl_P_RT_X0, align 4
  store i32 %1, i32* @brake_acc_nodiv_ctrl_B_local_RT_h, align 4
  %2 = load i32, i32* @brake_acc_nodiv_ctrl_P_RT4_X0, align 4
  store i32 %2, i32* @brake_acc_nodiv_ctrl_B_local_RT4, align 4
  %3 = load i32, i32* @brake_acc_nodiv_ctrl_P_RT1_X0, align 4
  store i32 %3, i32* @brake_acc_nodiv_ctrl_B_local_RT1, align 4
  %4 = load i32, i32* @brake_acc_nodiv_ctrl_P_RT2_X0, align 4
  store i32 %4, i32* @brake_acc_nodiv_ctrl_B_local_RT2, align 4
  %5 = load i32, i32* @brake_acc_nodiv_ctrl_P_RT3_X0, align 4
  store i32 %5, i32* @brake_acc_nodiv_ctrl_B_local_RT3, align 4
  %6 = load i32, i32* @RT_Buffer0, align 4
  store i32 %6, i32* @brake_acc_nodiv_ctrl_B_local_RT_h, align 4
  %7 = load i32, i32* @RT4_Buffer0, align 4
  store i32 %7, i32* @brake_acc_nodiv_ctrl_B_local_RT4, align 4
  %8 = load i32, i32* @brake_acc_nodiv_ctrl_B_local_RT4, align 4
  %9 = add nsw i32 10, %8
  %10 = add nsw i32 %9, 10
  %11 = add nsw i32 %10, 10
  %12 = icmp sge i32 %11, 100
  br i1 %12, label %13, label %14

; <label>:13                                      ; preds = %0
  br label %18

; <label>:14                                      ; preds = %0
  %15 = icmp sle i32 %11, 5
  br i1 %15, label %16, label %17

; <label>:16                                      ; preds = %14
  br label %17

; <label>:17                                      ; preds = %16, %14
  br label %18

; <label>:18                                      ; preds = %17, %13
  %19 = add nsw i32 10, %9
  %20 = icmp sgt i32 10, %19
  br i1 %20, label %21, label %22

; <label>:21                                      ; preds = %18
  br label %23

; <label>:22                                      ; preds = %18
  br label %23

; <label>:23                                      ; preds = %22, %21
  %rtb_RelationalOperator.0 = phi i8 [ 1, %21 ], [ 0, %22 ]
  %24 = load i32, i32* @brake_acc_nodiv_ctrl_B_local_RT4, align 4
  %25 = icmp sge i32 %24, 100
  br i1 %25, label %26, label %32

; <label>:26                                      ; preds = %23
  %27 = trunc i8 %rtb_RelationalOperator.0 to i1
  br i1 %27, label %28, label %29

; <label>:28                                      ; preds = %26
  store i32 8, i32* @brake_acc_nodiv_ctrl_B_local_ABS_RR_Wheel_Threshold_10kmh, align 4
  br label %31

; <label>:29                                      ; preds = %26
  %30 = load i32, i32* @brake_acc_nodiv_ctrl_B_local_RT_h, align 4
  store i32 %30, i32* @brake_acc_nodiv_ctrl_B_local_ABS_RR_Wheel_Threshold_10kmh, align 4
  br label %31

; <label>:31                                      ; preds = %29, %28
  br label %34

; <label>:32                                      ; preds = %23
  %33 = load i32, i32* @brake_acc_nodiv_ctrl_B_local_RT_h, align 4
  store i32 %33, i32* @brake_acc_nodiv_ctrl_B_local_ABS_RR_Wheel_Threshold_10kmh, align 4
  br label %34

; <label>:34                                      ; preds = %32, %31
  %35 = load i32, i32* @RT1_Buffer0, align 4
  store i32 %35, i32* @brake_acc_nodiv_ctrl_B_local_RT1, align 4
  store i32 10, i32* @RT9, align 4
  ret i8* undef
}

; Function Attrs: nounwind uwtable
define i8* @task_FL_Wheel(i8* %unused) #0 {
  %1 = load i32, i32* @test, align 4
  %2 = add nsw i32 %1, 1
  store i32 %2, i32* @test, align 4
  %3 = load i32, i32* @brake_acc_nodiv_ctrl_P_RT_X0, align 4
  store i32 %3, i32* @brake_acc_nodiv_ctrl_B_local_RT_h, align 4
  %4 = load i32, i32* @brake_acc_nodiv_ctrl_P_RT4_X0, align 4
  store i32 %4, i32* @brake_acc_nodiv_ctrl_B_local_RT4, align 4
  %5 = load i32, i32* @brake_acc_nodiv_ctrl_P_RT1_X0, align 4
  store i32 %5, i32* @brake_acc_nodiv_ctrl_B_local_RT1, align 4
  %6 = load i32, i32* @brake_acc_nodiv_ctrl_P_RT2_X0, align 4
  store i32 %6, i32* @brake_acc_nodiv_ctrl_B_local_RT2, align 4
  %7 = load i32, i32* @brake_acc_nodiv_ctrl_P_RT3_X0, align 4
  store i32 %7, i32* @brake_acc_nodiv_ctrl_B_local_RT3, align 4
  %8 = load i32, i32* @RT_Buffer0, align 4
  store i32 %8, i32* @brake_acc_nodiv_ctrl_B_local_RT_h, align 4
  %9 = load i32, i32* @RT4_Buffer0, align 4
  store i32 %9, i32* @brake_acc_nodiv_ctrl_B_local_RT4, align 4
  %10 = load i32, i32* @brake_acc_nodiv_ctrl_B_local_RT4, align 4
  %11 = add nsw i32 10, %10
  %12 = add nsw i32 %11, 10
  %13 = add nsw i32 %12, 10
  %14 = icmp sge i32 %13, 100
  br i1 %14, label %15, label %16

; <label>:15                                      ; preds = %0
  br label %20

; <label>:16                                      ; preds = %0
  %17 = icmp sle i32 %13, 5
  br i1 %17, label %18, label %19

; <label>:18                                      ; preds = %16
  br label %19

; <label>:19                                      ; preds = %18, %16
  br label %20

; <label>:20                                      ; preds = %19, %15
  %21 = add nsw i32 10, %11
  %22 = icmp sgt i32 10, %21
  br i1 %22, label %23, label %24

; <label>:23                                      ; preds = %20
  br label %25

; <label>:24                                      ; preds = %20
  br label %25

; <label>:25                                      ; preds = %24, %23
  %rtb_RelationalOperator.0 = phi i8 [ 1, %23 ], [ 0, %24 ]
  %26 = load i32, i32* @brake_acc_nodiv_ctrl_B_local_RT4, align 4
  %27 = icmp sge i32 %26, 100
  br i1 %27, label %28, label %34

; <label>:28                                      ; preds = %25
  %29 = trunc i8 %rtb_RelationalOperator.0 to i1
  br i1 %29, label %30, label %31

; <label>:30                                      ; preds = %28
  store i32 8, i32* @brake_acc_nodiv_ctrl_B_local_ABS_FL_Wheel_Threshold_10kmh, align 4
  br label %33

; <label>:31                                      ; preds = %28
  %32 = load i32, i32* @brake_acc_nodiv_ctrl_B_local_RT3, align 4
  store i32 %32, i32* @brake_acc_nodiv_ctrl_B_local_ABS_FL_Wheel_Threshold_10kmh, align 4
  br label %33

; <label>:33                                      ; preds = %31, %30
  br label %36

; <label>:34                                      ; preds = %25
  %35 = load i32, i32* @brake_acc_nodiv_ctrl_B_local_RT3, align 4
  store i32 %35, i32* @brake_acc_nodiv_ctrl_B_local_ABS_FL_Wheel_Threshold_10kmh, align 4
  br label %36

; <label>:36                                      ; preds = %34, %33
  %37 = trunc i8 %rtb_RelationalOperator.0 to i1
  br i1 %37, label %38, label %39

; <label>:38                                      ; preds = %36
  br label %40

; <label>:39                                      ; preds = %36
  br label %40

; <label>:40                                      ; preds = %39, %38
  %In_BrakePedal.0 = phi i32 [ 15, %38 ], [ 65, %39 ]
  %41 = icmp sge i32 %In_BrakePedal.0, 50
  br i1 %41, label %42, label %43

; <label>:42                                      ; preds = %40
  br label %43

; <label>:43                                      ; preds = %42, %40
  %44 = icmp sle i32 %In_BrakePedal.0, 20
  br i1 %44, label %45, label %46

; <label>:45                                      ; preds = %43
  br label %47

; <label>:46                                      ; preds = %43
  br label %47

; <label>:47                                      ; preds = %46, %45
  %tmp.0 = phi i32 [ 20, %45 ], [ 15, %46 ]
  %48 = load i32, i32* @brake_acc_nodiv_ctrl_P_Gain1_Gain, align 4
  %49 = add nsw i32 %48, %tmp.0
  store i32 %49, i32* @RT14, align 4
  store i32 10, i32* @RT12, align 4
  ret i8* undef
}

; Function Attrs: nounwind uwtable
define i8* @task_FR_Wheel(i8* %unused) #0 {
  %1 = load i32, i32* @test, align 4
  %2 = add nsw i32 %1, 1
  store i32 %2, i32* @test, align 4
  %3 = load i32, i32* @brake_acc_nodiv_ctrl_P_RT_X0, align 4
  store i32 %3, i32* @brake_acc_nodiv_ctrl_B_local_RT_h, align 4
  %4 = load i32, i32* @brake_acc_nodiv_ctrl_P_RT4_X0, align 4
  store i32 %4, i32* @brake_acc_nodiv_ctrl_B_local_RT4, align 4
  %5 = load i32, i32* @brake_acc_nodiv_ctrl_P_RT1_X0, align 4
  store i32 %5, i32* @brake_acc_nodiv_ctrl_B_local_RT1, align 4
  %6 = load i32, i32* @brake_acc_nodiv_ctrl_P_RT2_X0, align 4
  store i32 %6, i32* @brake_acc_nodiv_ctrl_B_local_RT2, align 4
  %7 = load i32, i32* @brake_acc_nodiv_ctrl_P_RT3_X0, align 4
  store i32 %7, i32* @brake_acc_nodiv_ctrl_B_local_RT3, align 4
  %8 = load i32, i32* @RT4_Buffer0, align 4
  store i32 %8, i32* @brake_acc_nodiv_ctrl_B_local_RT4, align 4
  %9 = load i32, i32* @brake_acc_nodiv_ctrl_B_local_RT4, align 4
  %10 = add nsw i32 10, %9
  %11 = add nsw i32 %10, 10
  %12 = add nsw i32 %11, 10
  %13 = icmp sge i32 %12, 100
  br i1 %13, label %14, label %15

; <label>:14                                      ; preds = %0
  br label %19

; <label>:15                                      ; preds = %0
  %16 = icmp sle i32 %12, 5
  br i1 %16, label %17, label %18

; <label>:17                                      ; preds = %15
  br label %18

; <label>:18                                      ; preds = %17, %15
  br label %19

; <label>:19                                      ; preds = %18, %14
  %20 = add nsw i32 10, %10
  %21 = icmp sgt i32 10, %20
  br i1 %21, label %22, label %23

; <label>:22                                      ; preds = %19
  br label %24

; <label>:23                                      ; preds = %19
  br label %24

; <label>:24                                      ; preds = %23, %22
  %rtb_RelationalOperator.0 = phi i8 [ 1, %22 ], [ 0, %23 ]
  %25 = load i32, i32* @brake_acc_nodiv_ctrl_B_local_RT4, align 4
  %26 = icmp sge i32 %25, 100
  br i1 %26, label %27, label %33

; <label>:27                                      ; preds = %24
  %28 = trunc i8 %rtb_RelationalOperator.0 to i1
  br i1 %28, label %29, label %30

; <label>:29                                      ; preds = %27
  store i32 8, i32* @brake_acc_nodiv_ctrl_B_local_ABS_FR_Wheel_Threshold_10kmh, align 4
  br label %32

; <label>:30                                      ; preds = %27
  %31 = load i32, i32* @brake_acc_nodiv_ctrl_B_local_RT2, align 4
  store i32 %31, i32* @brake_acc_nodiv_ctrl_B_local_ABS_FR_Wheel_Threshold_10kmh, align 4
  br label %32

; <label>:32                                      ; preds = %30, %29
  br label %35

; <label>:33                                      ; preds = %24
  %34 = load i32, i32* @brake_acc_nodiv_ctrl_B_local_RT2, align 4
  store i32 %34, i32* @brake_acc_nodiv_ctrl_B_local_ABS_FR_Wheel_Threshold_10kmh, align 4
  br label %35

; <label>:35                                      ; preds = %33, %32
  %36 = load i32, i32* @RT3_Buffer0, align 4
  store i32 %36, i32* @brake_acc_nodiv_ctrl_B_local_RT3, align 4
  store i32 10, i32* @RT11, align 4
  ret i8* undef
}

; Function Attrs: nounwind uwtable
define i8* @task_RL_Wheel(i8* %unused) #0 {
  %1 = load i32, i32* @test, align 4
  %2 = add nsw i32 %1, 1
  store i32 %2, i32* @test, align 4
  %3 = load i32, i32* @brake_acc_nodiv_ctrl_P_RT_X0, align 4
  store i32 %3, i32* @brake_acc_nodiv_ctrl_B_local_RT_h, align 4
  %4 = load i32, i32* @brake_acc_nodiv_ctrl_P_RT4_X0, align 4
  store i32 %4, i32* @brake_acc_nodiv_ctrl_B_local_RT4, align 4
  %5 = load i32, i32* @brake_acc_nodiv_ctrl_P_RT1_X0, align 4
  store i32 %5, i32* @brake_acc_nodiv_ctrl_B_local_RT1, align 4
  %6 = load i32, i32* @brake_acc_nodiv_ctrl_P_RT2_X0, align 4
  store i32 %6, i32* @brake_acc_nodiv_ctrl_B_local_RT2, align 4
  %7 = load i32, i32* @brake_acc_nodiv_ctrl_P_RT3_X0, align 4
  store i32 %7, i32* @brake_acc_nodiv_ctrl_B_local_RT3, align 4
  %8 = load i32, i32* @RT_Buffer0, align 4
  store i32 %8, i32* @brake_acc_nodiv_ctrl_B_local_RT_h, align 4
  %9 = load i32, i32* @RT4_Buffer0, align 4
  store i32 %9, i32* @brake_acc_nodiv_ctrl_B_local_RT4, align 4
  %10 = load i32, i32* @brake_acc_nodiv_ctrl_B_local_RT4, align 4
  %11 = add nsw i32 10, %10
  %12 = add nsw i32 %11, 10
  %13 = add nsw i32 %12, 10
  %14 = icmp sge i32 %13, 100
  br i1 %14, label %15, label %16

; <label>:15                                      ; preds = %0
  br label %20

; <label>:16                                      ; preds = %0
  %17 = icmp sle i32 %13, 5
  br i1 %17, label %18, label %19

; <label>:18                                      ; preds = %16
  br label %19

; <label>:19                                      ; preds = %18, %16
  br label %20

; <label>:20                                      ; preds = %19, %15
  %21 = add nsw i32 10, %11
  %22 = icmp sgt i32 10, %21
  br i1 %22, label %23, label %24

; <label>:23                                      ; preds = %20
  br label %25

; <label>:24                                      ; preds = %20
  br label %25

; <label>:25                                      ; preds = %24, %23
  %rtb_RelationalOperator.0 = phi i8 [ 1, %23 ], [ 0, %24 ]
  %26 = load i32, i32* @brake_acc_nodiv_ctrl_B_local_RT4, align 4
  %27 = icmp sge i32 %26, 100
  br i1 %27, label %28, label %34

; <label>:28                                      ; preds = %25
  %29 = trunc i8 %rtb_RelationalOperator.0 to i1
  br i1 %29, label %30, label %31

; <label>:30                                      ; preds = %28
  store i32 8, i32* @brake_acc_nodiv_ctrl_B_local_ABS_RL_Wheel_Threshold_10kmh, align 4
  br label %33

; <label>:31                                      ; preds = %28
  %32 = load i32, i32* @brake_acc_nodiv_ctrl_B_local_RT1, align 4
  store i32 %32, i32* @brake_acc_nodiv_ctrl_B_local_ABS_RL_Wheel_Threshold_10kmh, align 4
  br label %33

; <label>:33                                      ; preds = %31, %30
  br label %36

; <label>:34                                      ; preds = %25
  %35 = load i32, i32* @brake_acc_nodiv_ctrl_B_local_RT1, align 4
  store i32 %35, i32* @brake_acc_nodiv_ctrl_B_local_ABS_RL_Wheel_Threshold_10kmh, align 4
  br label %36

; <label>:36                                      ; preds = %34, %33
  %37 = load i32, i32* @RT2_Buffer0, align 4
  store i32 %37, i32* @brake_acc_nodiv_ctrl_B_local_RT2, align 4
  store i32 10, i32* @RT10, align 4
  ret i8* undef
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %t0 = alloca i64, align 8
  %t1 = alloca i64, align 8
  store i32 0, i32* @test, align 4
  %1 = call i32 @pthread_create(i64* %t0, %union.pthread_attr_t* null, i8* (i8*)* @task_compute, i8* null) #4
  %2 = call i32 @pthread_create(i64* %t1, %union.pthread_attr_t* null, i8* (i8*)* @task_RR_Wheel, i8* null) #4
  ret i32 0
}

; Function Attrs: nounwind
declare i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind }
attributes #4 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.0 (tags/RELEASE_380/final)"}
