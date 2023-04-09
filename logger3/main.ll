; ModuleID = 'main2.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.pthread_attr_t = type { i64, [48 x i8] }

@__CPROVER_thread_priorities = constant [3 x i32] [i32 5, i32 2, i32 3], align 4
@.str = private unnamed_addr constant [20 x i8] c"c::task_communicate\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"c::task_measure1\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"c::task_measure2\00", align 1
@__CPROVER_threads = global [3 x i8*] [i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0)], align 16
@systemState = common global i32 0, align 4
@numberOfRecords = common global i32 0, align 4
@intervalCounter = common global i32 0, align 4
@tickCounter = common global i32 0, align 4
@startTime = common global i32 0, align 4
@interval = common global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"main.c\00", align 1
@__PRETTY_FUNCTION__.task_measure1 = private unnamed_addr constant [28 x i8] c"void *task_measure1(void *)\00", align 1
@records = common global i32 0, align 4
@__PRETTY_FUNCTION__.task_measure2 = private unnamed_addr constant [28 x i8] c"void *task_measure2(void *)\00", align 1
@__PRETTY_FUNCTION__.task_measure3 = private unnamed_addr constant [28 x i8] c"void *task_measure3(void *)\00", align 1
@cmd = common global i32 0, align 4
@rspStatus = common global i32 0, align 4
@decodingStatus = common global i32 0, align 4
@sendit = common global i32 0, align 4
@__PRETTY_FUNCTION__.task_communicate = private unnamed_addr constant [31 x i8] c"void *task_communicate(void *)\00", align 1
@msgBuffer = common global [64 x i32] zeroinitializer, align 16
@cnt1 = common global i32 0, align 4
@cnt2 = common global i32 0, align 4
@cnt3 = common global i32 0, align 4
@cnt4 = common global i32 0, align 4

; Function Attrs: nounwind uwtable
define void @stop() #0 {
  store i32 0, i32* @systemState, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @start(i32 %_startTime, i32 %_interval) #0 {
  %1 = load i32, i32* @numberOfRecords, align 4
  %2 = add nsw i32 %1, 1
  %3 = icmp sge i32 %2, 64
  br i1 %3, label %4, label %5

; <label>:4                                       ; preds = %0
  store i32 0, i32* @systemState, align 4
  br label %5

; <label>:5                                       ; preds = %4, %0
  store i32 0, i32* @intervalCounter, align 4
  store i32 0, i32* @tickCounter, align 4
  store i32 0, i32* @numberOfRecords, align 4
  store i32 %_startTime, i32* @startTime, align 4
  store i32 %_interval, i32* @interval, align 4
  store i32 1, i32* @systemState, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @task_measure1(i8* %unused) #0 {
  %1 = load i32, i32* @tickCounter, align 4
  %2 = load i32, i32* @interval, align 4
  %3 = load i32, i32* @tickCounter, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %6

; <label>:5                                       ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i32 83, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.task_measure1, i32 0, i32 0)) #3
  unreachable

; <label>:6                                       ; preds = %0
  %7 = load i32, i32* @intervalCounter, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* @intervalCounter, align 4
  store i32 1, i32* @records, align 4
  %9 = load i32, i32* @numberOfRecords, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* @numberOfRecords, align 4
  ret i8* undef
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #1

; Function Attrs: nounwind uwtable
define i8* @task_measure2(i8* %unused) #0 {
  store i32 0, i32* @tickCounter, align 4
  %1 = load i32, i32* @tickCounter, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %3, label %4

; <label>:3                                       ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i32 100, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.task_measure2, i32 0, i32 0)) #3
  unreachable

; <label>:4                                       ; preds = %0
  ret i8* undef
}

; Function Attrs: nounwind uwtable
define i8* @task_measure3(i8* %unused) #0 {
  store i32 0, i32* @tickCounter, align 4
  %1 = load i32, i32* @tickCounter, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %3, label %4

; <label>:3                                       ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i32 113, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.task_measure3, i32 0, i32 0)) #3
  unreachable

; <label>:4                                       ; preds = %0
  ret i8* undef
}

; Function Attrs: nounwind uwtable
define i8* @task_communicate(i8* %unused) #0 {
  %1 = call i32 @rand() #4
  %2 = srem i32 %1, 4
  %3 = add nsw i32 %2, 1
  store i32 %3, i32* @cmd, align 4
  %4 = call i32 @rand() #4
  %5 = srem i32 %4, 2
  %6 = add nsw i32 %5, 1
  store i32 %6, i32* @rspStatus, align 4
  store i32 0, i32* @decodingStatus, align 4
  %7 = load i32, i32* @cmd, align 4
  %8 = icmp eq i32 %7, 2
  br i1 %8, label %18, label %9

; <label>:9                                       ; preds = %0
  %10 = load i32, i32* @cmd, align 4
  %11 = icmp eq i32 %10, 3
  br i1 %11, label %18, label %12

; <label>:12                                      ; preds = %9
  %13 = load i32, i32* @cmd, align 4
  %14 = icmp eq i32 %13, 4
  br i1 %14, label %18, label %15

; <label>:15                                      ; preds = %12
  %16 = load i32, i32* @cmd, align 4
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %19

; <label>:18                                      ; preds = %15, %12, %9, %0
  store i32 1, i32* @decodingStatus, align 4
  br label %19

; <label>:19                                      ; preds = %18, %15
  %20 = load i32, i32* @rspStatus, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %58

; <label>:22                                      ; preds = %19
  %23 = load i32, i32* @cmd, align 4
  %24 = icmp eq i32 %23, 2
  br i1 %24, label %25, label %31

; <label>:25                                      ; preds = %22
  %26 = load i32, i32* @systemState, align 4
  %27 = icmp ne i32 %26, 1
  br i1 %27, label %28, label %29

; <label>:28                                      ; preds = %25
  store i32 0, i32* @rspStatus, align 4
  br label %30

; <label>:29                                      ; preds = %25
  store i32 0, i32* @systemState, align 4
  br label %30

; <label>:30                                      ; preds = %29, %28
  store i32 1, i32* @sendit, align 4
  br label %31

; <label>:31                                      ; preds = %30, %22
  %32 = load i32, i32* @cmd, align 4
  %33 = icmp eq i32 %32, 3
  br i1 %33, label %34, label %35

; <label>:34                                      ; preds = %31
  store i32 1, i32* @sendit, align 4
  br label %35

; <label>:35                                      ; preds = %34, %31
  %36 = load i32, i32* @cmd, align 4
  %37 = icmp eq i32 %36, 4
  br i1 %37, label %38, label %39

; <label>:38                                      ; preds = %35
  store i32 1, i32* @sendit, align 4
  br label %39

; <label>:39                                      ; preds = %38, %35
  %40 = load i32, i32* @cmd, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %57

; <label>:42                                      ; preds = %39
  %43 = load i32, i32* @systemState, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

; <label>:45                                      ; preds = %42
  store i32 0, i32* @rspStatus, align 4
  br label %56

; <label>:46                                      ; preds = %42
  %47 = load i32, i32* @numberOfRecords, align 4
  %48 = add nsw i32 %47, 1
  %49 = icmp sge i32 %48, 64
  br i1 %49, label %50, label %51

; <label>:50                                      ; preds = %46
  store i32 0, i32* @systemState, align 4
  br label %51

; <label>:51                                      ; preds = %50, %46
  store i32 0, i32* @intervalCounter, align 4
  store i32 0, i32* @tickCounter, align 4
  store i32 0, i32* @numberOfRecords, align 4
  store i32 1, i32* @startTime, align 4
  store i32 1, i32* @interval, align 4
  store i32 1, i32* @systemState, align 4
  %52 = load i32, i32* @numberOfRecords, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

; <label>:54                                      ; preds = %51
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i32 174, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__PRETTY_FUNCTION__.task_communicate, i32 0, i32 0)) #3
  unreachable

; <label>:55                                      ; preds = %51
  store i32 1, i32* @sendit, align 4
  br label %56

; <label>:56                                      ; preds = %55, %45
  br label %57

; <label>:57                                      ; preds = %56, %39
  br label %58

; <label>:58                                      ; preds = %57, %19
  ret i8* undef
}

; Function Attrs: nounwind
declare i32 @rand() #2

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %t1 = alloca i64, align 8
  %t2 = alloca i64, align 8
  store i32 0, i32* @systemState, align 4
  %1 = call i32 @pthread_create(i64* %t1, %union.pthread_attr_t* null, i8* (i8*)* @task_communicate, i8* null) #4
  %2 = call i32 @pthread_create(i64* %t2, %union.pthread_attr_t* null, i8* (i8*)* @task_measure1, i8* null) #4
  %3 = call i32 @pthread_create(i64* %t2, %union.pthread_attr_t* null, i8* (i8*)* @task_measure2, i8* null) #4
  %4 = call i32 @pthread_create(i64* %t2, %union.pthread_attr_t* null, i8* (i8*)* @task_measure3, i8* null) #4
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
