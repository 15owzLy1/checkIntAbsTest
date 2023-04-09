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
@__PRETTY_FUNCTION__.task_RR_Wheel = private unnamed_addr constant [28 x i8] c"void *task_RR_Wheel(void *)\00", align 1
@__PRETTY_FUNCTION__.task_FL_Wheel = private unnamed_addr constant [28 x i8] c"void *task_FL_Wheel(void *)\00", align 1
@brake_acc_nodiv_ctrl_P_Gain1_Gain = common global i32 0, align 4
@RT14 = common global i32 0, align 4
@__PRETTY_FUNCTION__.task_FR_Wheel = private unnamed_addr constant [28 x i8] c"void *task_FR_Wheel(void *)\00", align 1
@brake_acc_nodiv_ctrl_B_local_RTH = common global i32 0, align 4
@RT0_Buffer0 = common global i32 0, align 4
@cnt1 = common global i32 0, align 4
@cnt2 = common global i32 0, align 4
@cnt3 = common global i32 0, align 4
@cnt4 = common global i32 0, align 4

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
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* @test, align 4
  %35 = load i32, i32* @test, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

; <label>:37                                      ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i32 325, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.task_compute, i32 0, i32 0)) #3
  unreachable

; <label>:38                                      ; preds = %0
  %39 = load i32, i32* @test, align 4
  %40 = icmp ne i32 %39, 1
  br i1 %40, label %41, label %42

; <label>:41                                      ; preds = %38
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i32 330, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.task_compute, i32 0, i32 0)) #3
  unreachable

; <label>:42                                      ; preds = %38
  %43 = load i32, i32* @brake_acc_nodiv_ctrl_P_Distribution_Gain0, align 4
  %44 = load i32, i32* @brake_acc_nodiv_ctrl_B_local_RT14, align 4
  %45 = add nsw i32 %43, %44
  store i32 %45, i32* @RT_Buffer0, align 4
  %46 = load i32, i32* @vkmh, align 4
  store i32 %46, i32* @RT4_Buffer0, align 4
  %47 = load i32, i32* @Distribution_idx, align 4
  store i32 %47, i32* @RT1_Buffer0, align 4
  %48 = load i32, i32* @Distribution_idx_0, align 4
  store i32 %48, i32* @RT2_Buffer0, align 4
  %49 = load i32, i32* @Distribution_idx_1, align 4
  store i32 %49, i32* @RT3_Buffer0, align 4
  ret i8* undef
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #1

; Function Attrs: nounwind uwtable
define i8* @task_RR_Wheel(i8* %unused) #0 {
  store i32 0, i32* @test, align 4
  %1 = load i32, i32* @test, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %3, label %4

; <label>:3                                       ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i32 369, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.task_RR_Wheel, i32 0, i32 0)) #3
  unreachable

; <label>:4                                       ; preds = %0
  %5 = load i32, i32* @brake_acc_nodiv_ctrl_P_RT_X0, align 4
  store i32 %5, i32* @brake_acc_nodiv_ctrl_B_local_RT_h, align 4
  %6 = load i32, i32* @brake_acc_nodiv_ctrl_P_RT4_X0, align 4
  store i32 %6, i32* @brake_acc_nodiv_ctrl_B_local_RT4, align 4
  %7 = load i32, i32* @brake_acc_nodiv_ctrl_P_RT1_X0, align 4
  store i32 %7, i32* @brake_acc_nodiv_ctrl_B_local_RT1, align 4
  %8 = load i32, i32* @brake_acc_nodiv_ctrl_P_RT2_X0, align 4
  store i32 %8, i32* @brake_acc_nodiv_ctrl_B_local_RT2, align 4
  %9 = load i32, i32* @brake_acc_nodiv_ctrl_P_RT3_X0, align 4
  store i32 %9, i32* @brake_acc_nodiv_ctrl_B_local_RT3, align 4
  %10 = load i32, i32* @RT_Buffer0, align 4
  store i32 %10, i32* @brake_acc_nodiv_ctrl_B_local_RT_h, align 4
  %11 = load i32, i32* @RT4_Buffer0, align 4
  store i32 %11, i32* @brake_acc_nodiv_ctrl_B_local_RT4, align 4
  %12 = load i32, i32* @brake_acc_nodiv_ctrl_B_local_RT4, align 4
  %13 = add nsw i32 10, %12
  %14 = add nsw i32 %13, 10
  %15 = add nsw i32 %14, 10
  %16 = icmp sge i32 %15, 100
  br i1 %16, label %17, label %18

; <label>:17                                      ; preds = %4
  br label %22

; <label>:18                                      ; preds = %4
  %19 = icmp sle i32 %15, 5
  br i1 %19, label %20, label %21

; <label>:20                                      ; preds = %18
  br label %21

; <label>:21                                      ; preds = %20, %18
  br label %22

; <label>:22                                      ; preds = %21, %17
  %23 = add nsw i32 10, %13
  %24 = icmp sgt i32 10, %23
  br i1 %24, label %25, label %26

; <label>:25                                      ; preds = %22
  br label %27

; <label>:26                                      ; preds = %22
  br label %27

; <label>:27                                      ; preds = %26, %25
  %rtb_RelationalOperator.0 = phi i8 [ 1, %25 ], [ 0, %26 ]
  %28 = load i32, i32* @brake_acc_nodiv_ctrl_B_local_RT4, align 4
  %29 = icmp sge i32 %28, 100
  br i1 %29, label %30, label %36

; <label>:30                                      ; preds = %27
  %31 = trunc i8 %rtb_RelationalOperator.0 to i1
  br i1 %31, label %32, label %33

; <label>:32                                      ; preds = %30
  store i32 8, i32* @brake_acc_nodiv_ctrl_B_local_ABS_RR_Wheel_Threshold_10kmh, align 4
  br label %35

; <label>:33                                      ; preds = %30
  %34 = load i32, i32* @brake_acc_nodiv_ctrl_B_local_RT_h, align 4
  store i32 %34, i32* @brake_acc_nodiv_ctrl_B_local_ABS_RR_Wheel_Threshold_10kmh, align 4
  br label %35

; <label>:35                                      ; preds = %33, %32
  br label %38

; <label>:36                                      ; preds = %27
  %37 = load i32, i32* @brake_acc_nodiv_ctrl_B_local_RT_h, align 4
  store i32 %37, i32* @brake_acc_nodiv_ctrl_B_local_ABS_RR_Wheel_Threshold_10kmh, align 4
  br label %38

; <label>:38                                      ; preds = %36, %35
  %39 = load i32, i32* @RT1_Buffer0, align 4
  store i32 %39, i32* @brake_acc_nodiv_ctrl_B_local_RT1, align 4
  store i32 10, i32* @RT9, align 4
  ret i8* undef
}

; Function Attrs: nounwind uwtable
define i8* @task_FL_Wheel(i8* %unused) #0 {
  store i32 0, i32* @test, align 4
  %1 = load i32, i32* @test, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %3, label %4

; <label>:3                                       ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i32 475, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.task_FL_Wheel, i32 0, i32 0)) #3
  unreachable

; <label>:4                                       ; preds = %0
  %5 = load i32, i32* @brake_acc_nodiv_ctrl_P_RT_X0, align 4
  store i32 %5, i32* @brake_acc_nodiv_ctrl_B_local_RT_h, align 4
  %6 = load i32, i32* @brake_acc_nodiv_ctrl_P_RT4_X0, align 4
  store i32 %6, i32* @brake_acc_nodiv_ctrl_B_local_RT4, align 4
  %7 = load i32, i32* @brake_acc_nodiv_ctrl_P_RT1_X0, align 4
  store i32 %7, i32* @brake_acc_nodiv_ctrl_B_local_RT1, align 4
  %8 = load i32, i32* @brake_acc_nodiv_ctrl_P_RT2_X0, align 4
  store i32 %8, i32* @brake_acc_nodiv_ctrl_B_local_RT2, align 4
  %9 = load i32, i32* @brake_acc_nodiv_ctrl_P_RT3_X0, align 4
  store i32 %9, i32* @brake_acc_nodiv_ctrl_B_local_RT3, align 4
  %10 = load i32, i32* @RT_Buffer0, align 4
  store i32 %10, i32* @brake_acc_nodiv_ctrl_B_local_RT_h, align 4
  %11 = load i32, i32* @RT4_Buffer0, align 4
  store i32 %11, i32* @brake_acc_nodiv_ctrl_B_local_RT4, align 4
  %12 = load i32, i32* @brake_acc_nodiv_ctrl_B_local_RT4, align 4
  %13 = add nsw i32 10, %12
  %14 = add nsw i32 %13, 10
  %15 = add nsw i32 %14, 10
  %16 = icmp sge i32 %15, 100
  br i1 %16, label %17, label %18

; <label>:17                                      ; preds = %4
  br label %22

; <label>:18                                      ; preds = %4
  %19 = icmp sle i32 %15, 5
  br i1 %19, label %20, label %21

; <label>:20                                      ; preds = %18
  br label %21

; <label>:21                                      ; preds = %20, %18
  br label %22

; <label>:22                                      ; preds = %21, %17
  %23 = add nsw i32 10, %13
  %24 = icmp sgt i32 10, %23
  br i1 %24, label %25, label %26

; <label>:25                                      ; preds = %22
  br label %27

; <label>:26                                      ; preds = %22
  br label %27

; <label>:27                                      ; preds = %26, %25
  %rtb_RelationalOperator.0 = phi i8 [ 1, %25 ], [ 0, %26 ]
  %28 = load i32, i32* @brake_acc_nodiv_ctrl_B_local_RT4, align 4
  %29 = icmp sge i32 %28, 100
  br i1 %29, label %30, label %36

; <label>:30                                      ; preds = %27
  %31 = trunc i8 %rtb_RelationalOperator.0 to i1
  br i1 %31, label %32, label %33

; <label>:32                                      ; preds = %30
  store i32 8, i32* @brake_acc_nodiv_ctrl_B_local_ABS_FL_Wheel_Threshold_10kmh, align 4
  br label %35

; <label>:33                                      ; preds = %30
  %34 = load i32, i32* @brake_acc_nodiv_ctrl_B_local_RT3, align 4
  store i32 %34, i32* @brake_acc_nodiv_ctrl_B_local_ABS_FL_Wheel_Threshold_10kmh, align 4
  br label %35

; <label>:35                                      ; preds = %33, %32
  br label %38

; <label>:36                                      ; preds = %27
  %37 = load i32, i32* @brake_acc_nodiv_ctrl_B_local_RT3, align 4
  store i32 %37, i32* @brake_acc_nodiv_ctrl_B_local_ABS_FL_Wheel_Threshold_10kmh, align 4
  br label %38

; <label>:38                                      ; preds = %36, %35
  %39 = trunc i8 %rtb_RelationalOperator.0 to i1
  br i1 %39, label %40, label %41

; <label>:40                                      ; preds = %38
  br label %42

; <label>:41                                      ; preds = %38
  br label %42

; <label>:42                                      ; preds = %41, %40
  %In_BrakePedal.0 = phi i32 [ 15, %40 ], [ 65, %41 ]
  %43 = icmp sge i32 %In_BrakePedal.0, 50
  br i1 %43, label %44, label %45

; <label>:44                                      ; preds = %42
  br label %45

; <label>:45                                      ; preds = %44, %42
  %46 = icmp sle i32 %In_BrakePedal.0, 20
  br i1 %46, label %47, label %48

; <label>:47                                      ; preds = %45
  br label %49

; <label>:48                                      ; preds = %45
  br label %49

; <label>:49                                      ; preds = %48, %47
  %tmp.0 = phi i32 [ 20, %47 ], [ 15, %48 ]
  %50 = load i32, i32* @brake_acc_nodiv_ctrl_P_Gain1_Gain, align 4
  %51 = add nsw i32 %50, %tmp.0
  store i32 %51, i32* @RT14, align 4
  store i32 10, i32* @RT12, align 4
  ret i8* undef
}

; Function Attrs: nounwind uwtable
define i8* @task_FR_Wheel(i8* %unused) #0 {
  store i32 0, i32* @test, align 4
  %1 = load i32, i32* @test, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %3, label %4

; <label>:3                                       ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i32 611, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.task_FR_Wheel, i32 0, i32 0)) #3
  unreachable

; <label>:4                                       ; preds = %0
  %5 = load i32, i32* @brake_acc_nodiv_ctrl_P_RT_X0, align 4
  store i32 %5, i32* @brake_acc_nodiv_ctrl_B_local_RT_h, align 4
  %6 = load i32, i32* @brake_acc_nodiv_ctrl_P_RT4_X0, align 4
  store i32 %6, i32* @brake_acc_nodiv_ctrl_B_local_RT4, align 4
  %7 = load i32, i32* @brake_acc_nodiv_ctrl_P_RT1_X0, align 4
  store i32 %7, i32* @brake_acc_nodiv_ctrl_B_local_RT1, align 4
  %8 = load i32, i32* @brake_acc_nodiv_ctrl_P_RT2_X0, align 4
  store i32 %8, i32* @brake_acc_nodiv_ctrl_B_local_RT2, align 4
  %9 = load i32, i32* @brake_acc_nodiv_ctrl_P_RT3_X0, align 4
  store i32 %9, i32* @brake_acc_nodiv_ctrl_B_local_RT3, align 4
  %10 = load i32, i32* @RT4_Buffer0, align 4
  store i32 %10, i32* @brake_acc_nodiv_ctrl_B_local_RT4, align 4
  %11 = load i32, i32* @brake_acc_nodiv_ctrl_B_local_RT4, align 4
  %12 = add nsw i32 10, %11
  %13 = add nsw i32 %12, 10
  %14 = add nsw i32 %13, 10
  %15 = icmp sge i32 %14, 100
  br i1 %15, label %16, label %17

; <label>:16                                      ; preds = %4
  br label %21

; <label>:17                                      ; preds = %4
  %18 = icmp sle i32 %14, 5
  br i1 %18, label %19, label %20

; <label>:19                                      ; preds = %17
  br label %20

; <label>:20                                      ; preds = %19, %17
  br label %21

; <label>:21                                      ; preds = %20, %16
  %22 = add nsw i32 10, %12
  %23 = icmp sgt i32 10, %22
  br i1 %23, label %24, label %25

; <label>:24                                      ; preds = %21
  br label %26

; <label>:25                                      ; preds = %21
  br label %26

; <label>:26                                      ; preds = %25, %24
  %rtb_RelationalOperator.0 = phi i8 [ 1, %24 ], [ 0, %25 ]
  %27 = load i32, i32* @brake_acc_nodiv_ctrl_B_local_RT4, align 4
  %28 = icmp sge i32 %27, 100
  br i1 %28, label %29, label %35

; <label>:29                                      ; preds = %26
  %30 = trunc i8 %rtb_RelationalOperator.0 to i1
  br i1 %30, label %31, label %32

; <label>:31                                      ; preds = %29
  store i32 8, i32* @brake_acc_nodiv_ctrl_B_local_ABS_FR_Wheel_Threshold_10kmh, align 4
  br label %34

; <label>:32                                      ; preds = %29
  %33 = load i32, i32* @brake_acc_nodiv_ctrl_B_local_RT2, align 4
  store i32 %33, i32* @brake_acc_nodiv_ctrl_B_local_ABS_FR_Wheel_Threshold_10kmh, align 4
  br label %34

; <label>:34                                      ; preds = %32, %31
  br label %37

; <label>:35                                      ; preds = %26
  %36 = load i32, i32* @brake_acc_nodiv_ctrl_B_local_RT2, align 4
  store i32 %36, i32* @brake_acc_nodiv_ctrl_B_local_ABS_FR_Wheel_Threshold_10kmh, align 4
  br label %37

; <label>:37                                      ; preds = %35, %34
  %38 = load i32, i32* @RT3_Buffer0, align 4
  store i32 %38, i32* @brake_acc_nodiv_ctrl_B_local_RT3, align 4
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
  %t2 = alloca i64, align 8
  %t3 = alloca i64, align 8
  store i32 0, i32* @test, align 4
  %1 = call i32 @pthread_create(i64* %t0, %union.pthread_attr_t* null, i8* (i8*)* @task_compute, i8* null) #4
  %2 = call i32 @pthread_create(i64* %t1, %union.pthread_attr_t* null, i8* (i8*)* @task_RR_Wheel, i8* null) #4
  %3 = call i32 @pthread_create(i64* %t2, %union.pthread_attr_t* null, i8* (i8*)* @task_FL_Wheel, i8* null) #4
  %4 = call i32 @pthread_create(i64* %t3, %union.pthread_attr_t* null, i8* (i8*)* @task_FR_Wheel, i8* null) #4
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
