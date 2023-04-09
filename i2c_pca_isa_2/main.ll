; ModuleID = 'main2.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.pthread_attr_t = type { i64, [48 x i8] }

@irq = common global i32 0, align 4
@global_id = common global i32 0, align 4
@global_dev = common global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"main.c\00", align 1
@__PRETTY_FUNCTION__.req1 = private unnamed_addr constant [19 x i8] c"void *req1(void *)\00", align 1
@__PRETTY_FUNCTION__.req2 = private unnamed_addr constant [19 x i8] c"void *req2(void *)\00", align 1
@__PRETTY_FUNCTION__.req3 = private unnamed_addr constant [19 x i8] c"void *req3(void *)\00", align 1
@__PRETTY_FUNCTION__.req4 = private unnamed_addr constant [19 x i8] c"void *req4(void *)\00", align 1
@__PRETTY_FUNCTION__.req5 = private unnamed_addr constant [19 x i8] c"void *req5(void *)\00", align 1
@global_clock = common global i32 0, align 4
@cnt1 = common global i32 0, align 4
@cnt2 = common global i32 0, align 4
@cnt3 = common global i32 0, align 4
@cnt4 = common global i32 0, align 4
@cnt5 = common global i32 0, align 4
@cnt6 = common global i32 0, align 4

; Function Attrs: nounwind uwtable
define i8* @req1(i8* %unused) #0 {
  store i32 0, i32* @irq, align 4
  store i32 1, i32* @global_id, align 4
  store i32 1, i32* @global_dev, align 4
  %1 = load i32, i32* @global_dev, align 4
  %2 = icmp ne i32 %1, 1
  br i1 %2, label %3, label %4

; <label>:3                                       ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 277, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__PRETTY_FUNCTION__.req1, i32 0, i32 0)) #3
  unreachable

; <label>:4                                       ; preds = %0
  %5 = load i32, i32* @irq, align 4
  %6 = icmp sgt i32 %5, -1
  br i1 %6, label %7, label %12

; <label>:7                                       ; preds = %4
  %8 = load i32, i32* @global_id, align 4
  %9 = icmp ne i32 %8, 1
  br i1 %9, label %10, label %11

; <label>:10                                      ; preds = %7
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 277, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__PRETTY_FUNCTION__.req1, i32 0, i32 0)) #3
  unreachable

; <label>:11                                      ; preds = %7
  br label %12

; <label>:12                                      ; preds = %11, %4
  store i32 -1, i32* @global_id, align 4
  store i32 -1, i32* @global_dev, align 4
  ret i8* undef
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #1

; Function Attrs: nounwind uwtable
define i8* @req2(i8* %unused) #0 {
  store i32 0, i32* @irq, align 4
  store i32 2, i32* @global_id, align 4
  store i32 2, i32* @global_dev, align 4
  %1 = load i32, i32* @global_dev, align 4
  %2 = icmp ne i32 %1, 2
  br i1 %2, label %3, label %4

; <label>:3                                       ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 287, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__PRETTY_FUNCTION__.req2, i32 0, i32 0)) #3
  unreachable

; <label>:4                                       ; preds = %0
  %5 = load i32, i32* @irq, align 4
  %6 = icmp sgt i32 %5, -1
  br i1 %6, label %7, label %12

; <label>:7                                       ; preds = %4
  %8 = load i32, i32* @global_id, align 4
  %9 = icmp ne i32 %8, 2
  br i1 %9, label %10, label %11

; <label>:10                                      ; preds = %7
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 287, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__PRETTY_FUNCTION__.req2, i32 0, i32 0)) #3
  unreachable

; <label>:11                                      ; preds = %7
  br label %12

; <label>:12                                      ; preds = %11, %4
  store i32 -1, i32* @global_id, align 4
  store i32 -1, i32* @global_dev, align 4
  ret i8* undef
}

; Function Attrs: nounwind uwtable
define i8* @req3(i8* %unused) #0 {
  store i32 0, i32* @irq, align 4
  store i32 3, i32* @global_id, align 4
  store i32 3, i32* @global_dev, align 4
  %1 = load i32, i32* @global_dev, align 4
  %2 = icmp ne i32 %1, 3
  br i1 %2, label %3, label %4

; <label>:3                                       ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 297, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__PRETTY_FUNCTION__.req3, i32 0, i32 0)) #3
  unreachable

; <label>:4                                       ; preds = %0
  %5 = load i32, i32* @irq, align 4
  %6 = icmp sgt i32 %5, -1
  br i1 %6, label %7, label %12

; <label>:7                                       ; preds = %4
  %8 = load i32, i32* @global_id, align 4
  %9 = icmp ne i32 %8, 3
  br i1 %9, label %10, label %11

; <label>:10                                      ; preds = %7
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 297, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__PRETTY_FUNCTION__.req3, i32 0, i32 0)) #3
  unreachable

; <label>:11                                      ; preds = %7
  br label %12

; <label>:12                                      ; preds = %11, %4
  store i32 -1, i32* @global_id, align 4
  store i32 -1, i32* @global_dev, align 4
  ret i8* undef
}

; Function Attrs: nounwind uwtable
define i8* @req4(i8* %unused) #0 {
  store i32 0, i32* @irq, align 4
  store i32 4, i32* @global_id, align 4
  store i32 4, i32* @global_dev, align 4
  %1 = load i32, i32* @global_dev, align 4
  %2 = icmp ne i32 %1, 4
  br i1 %2, label %3, label %4

; <label>:3                                       ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 307, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__PRETTY_FUNCTION__.req4, i32 0, i32 0)) #3
  unreachable

; <label>:4                                       ; preds = %0
  %5 = load i32, i32* @irq, align 4
  %6 = icmp sgt i32 %5, -1
  br i1 %6, label %7, label %12

; <label>:7                                       ; preds = %4
  %8 = load i32, i32* @global_id, align 4
  %9 = icmp ne i32 %8, 4
  br i1 %9, label %10, label %11

; <label>:10                                      ; preds = %7
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 307, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__PRETTY_FUNCTION__.req4, i32 0, i32 0)) #3
  unreachable

; <label>:11                                      ; preds = %7
  br label %12

; <label>:12                                      ; preds = %11, %4
  store i32 -1, i32* @global_id, align 4
  store i32 -1, i32* @global_dev, align 4
  ret i8* undef
}

; Function Attrs: nounwind uwtable
define i8* @req5(i8* %unused) #0 {
  store i32 0, i32* @irq, align 4
  store i32 5, i32* @global_id, align 4
  store i32 5, i32* @global_dev, align 4
  %1 = load i32, i32* @global_dev, align 4
  %2 = icmp ne i32 %1, 5
  br i1 %2, label %3, label %4

; <label>:3                                       ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 317, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__PRETTY_FUNCTION__.req5, i32 0, i32 0)) #3
  unreachable

; <label>:4                                       ; preds = %0
  %5 = load i32, i32* @irq, align 4
  %6 = icmp sgt i32 %5, -1
  br i1 %6, label %7, label %12

; <label>:7                                       ; preds = %4
  %8 = load i32, i32* @global_id, align 4
  %9 = icmp ne i32 %8, 5
  br i1 %9, label %10, label %11

; <label>:10                                      ; preds = %7
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 317, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__PRETTY_FUNCTION__.req5, i32 0, i32 0)) #3
  unreachable

; <label>:11                                      ; preds = %7
  br label %12

; <label>:12                                      ; preds = %11, %4
  store i32 -1, i32* @global_id, align 4
  store i32 -1, i32* @global_dev, align 4
  ret i8* undef
}

; Function Attrs: nounwind uwtable
define i8* @req6(i8* %unused) #0 {
  store i32 -1, i32* @irq, align 4
  ret i8* undef
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %t1 = alloca i64, align 8
  %t2 = alloca i64, align 8
  %1 = call i32 @pthread_create(i64* %t1, %union.pthread_attr_t* null, i8* (i8*)* @req1, i8* null) #4
  %2 = call i32 @pthread_create(i64* %t2, %union.pthread_attr_t* null, i8* (i8*)* @req2, i8* null) #4
  %3 = call i32 @pthread_create(i64* %t2, %union.pthread_attr_t* null, i8* (i8*)* @req3, i8* null) #4
  %4 = call i32 @pthread_create(i64* %t2, %union.pthread_attr_t* null, i8* (i8*)* @req4, i8* null) #4
  %5 = call i32 @pthread_create(i64* %t2, %union.pthread_attr_t* null, i8* (i8*)* @req5, i8* null) #4
  %6 = call i32 @pthread_create(i64* %t2, %union.pthread_attr_t* null, i8* (i8*)* @req6, i8* null) #4
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
