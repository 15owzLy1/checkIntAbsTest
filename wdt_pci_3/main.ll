; ModuleID = 'main2.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.pthread_attr_t = type { i64, [48 x i8] }

@heartbeat = global i32 60, align 4
@nowayout = global i32 0, align 4
@wdtpci_write_buf = common global i8 0, align 1
@expect_close = common global i32 0, align 4
@count = common global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"main.c\00", align 1
@__PRETTY_FUNCTION__.closer1 = private unnamed_addr constant [22 x i8] c"void *closer1(void *)\00", align 1
@wdtpci_lock = common global i8 0, align 1
@wdt_dc_port = common global i8 0, align 1
@__PRETTY_FUNCTION__.closer2 = private unnamed_addr constant [22 x i8] c"void *closer2(void *)\00", align 1
@__PRETTY_FUNCTION__.closer3 = private unnamed_addr constant [22 x i8] c"void *closer3(void *)\00", align 1
@__PRETTY_FUNCTION__.closer4 = private unnamed_addr constant [22 x i8] c"void *closer4(void *)\00", align 1
@jiffies = common global i64 0, align 8
@dev_count = common global i32 0, align 4
@open_sem = common global i32 0, align 4
@io = common global i32 0, align 4
@irq = common global i32 0, align 4
@wd_heartbeat = common global i32 0, align 4
@cnt1 = common global i32 0, align 4
@cnt2 = common global i32 0, align 4
@cnt3 = common global i32 0, align 4
@cnt4 = common global i32 0, align 4
@cnt5 = common global i32 0, align 4
@cnt6 = common global i32 0, align 4
@cnt7 = common global i32 0, align 4
@cnt8 = common global i32 0, align 4
@buf = common global i32 0, align 4

; Function Attrs: nounwind uwtable
define i8* @closer1(i8* %unused) #0 {
  store i8 86, i8* @wdtpci_write_buf, align 1
  store i32 42, i32* @expect_close, align 4
  store i32 1, i32* @count, align 4
  %1 = load i32, i32* @count, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %3, label %13

; <label>:3                                       ; preds = %0
  %4 = load i32, i32* @nowayout, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %12, label %6

; <label>:6                                       ; preds = %3
  %7 = load i8, i8* @wdtpci_write_buf, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp ne i32 %8, 86
  br i1 %9, label %10, label %11

; <label>:10                                      ; preds = %6
  store i32 0, i32* @expect_close, align 4
  br label %11

; <label>:11                                      ; preds = %10, %6
  br label %12

; <label>:12                                      ; preds = %11, %3
  br label %13

; <label>:13                                      ; preds = %12, %0
  %14 = load i32, i32* @expect_close, align 4
  %15 = icmp ne i32 %14, 42
  br i1 %15, label %16, label %17

; <label>:16                                      ; preds = %13
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 969, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__PRETTY_FUNCTION__.closer1, i32 0, i32 0)) #4
  unreachable

; <label>:17                                      ; preds = %13
  br label %18

; <label>:18                                      ; preds = %17
  br label %19

; <label>:19                                      ; preds = %18
  br label %20

; <label>:20                                      ; preds = %23, %19
  %21 = load i8, i8* @wdtpci_lock, align 1
  %22 = trunc i8 %21 to i1
  br i1 %22, label %23, label %24

; <label>:23                                      ; preds = %20
  br label %20

; <label>:24                                      ; preds = %20
  br label %25

; <label>:25                                      ; preds = %24
  %26 = load i8, i8* @wdt_dc_port, align 1
  br label %27

; <label>:27                                      ; preds = %25
  br label %28

; <label>:28                                      ; preds = %27
  br label %29

; <label>:29                                      ; preds = %28
  store i8 0, i8* @wdtpci_lock, align 1
  br label %30

; <label>:30                                      ; preds = %29
  br label %31

; <label>:31                                      ; preds = %30
  br label %32

; <label>:32                                      ; preds = %31
  store i32 0, i32* @expect_close, align 4
  ret i8* null
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #1

; Function Attrs: nounwind uwtable
define i8* @closer2(i8* %unused) #0 {
  store i8 86, i8* @wdtpci_write_buf, align 1
  store i32 42, i32* @expect_close, align 4
  store i32 1, i32* @count, align 4
  %1 = load i32, i32* @count, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %3, label %13

; <label>:3                                       ; preds = %0
  %4 = load i32, i32* @nowayout, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %12, label %6

; <label>:6                                       ; preds = %3
  %7 = load i8, i8* @wdtpci_write_buf, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp ne i32 %8, 86
  br i1 %9, label %10, label %11

; <label>:10                                      ; preds = %6
  store i32 0, i32* @expect_close, align 4
  br label %11

; <label>:11                                      ; preds = %10, %6
  br label %12

; <label>:12                                      ; preds = %11, %3
  br label %13

; <label>:13                                      ; preds = %12, %0
  %14 = load i32, i32* @expect_close, align 4
  %15 = icmp ne i32 %14, 42
  br i1 %15, label %16, label %17

; <label>:16                                      ; preds = %13
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 1002, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__PRETTY_FUNCTION__.closer2, i32 0, i32 0)) #4
  unreachable

; <label>:17                                      ; preds = %13
  br label %18

; <label>:18                                      ; preds = %17
  br label %19

; <label>:19                                      ; preds = %18
  br label %20

; <label>:20                                      ; preds = %23, %19
  %21 = load i8, i8* @wdtpci_lock, align 1
  %22 = trunc i8 %21 to i1
  br i1 %22, label %23, label %24

; <label>:23                                      ; preds = %20
  br label %20

; <label>:24                                      ; preds = %20
  br label %25

; <label>:25                                      ; preds = %24
  %26 = load i8, i8* @wdt_dc_port, align 1
  br label %27

; <label>:27                                      ; preds = %25
  br label %28

; <label>:28                                      ; preds = %27
  br label %29

; <label>:29                                      ; preds = %28
  store i8 0, i8* @wdtpci_lock, align 1
  br label %30

; <label>:30                                      ; preds = %29
  br label %31

; <label>:31                                      ; preds = %30
  br label %32

; <label>:32                                      ; preds = %31
  store i32 0, i32* @expect_close, align 4
  ret i8* null
}

; Function Attrs: nounwind uwtable
define i8* @closer3(i8* %unused) #0 {
  store i8 86, i8* @wdtpci_write_buf, align 1
  store i32 42, i32* @expect_close, align 4
  store i32 1, i32* @count, align 4
  %1 = load i32, i32* @count, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %3, label %13

; <label>:3                                       ; preds = %0
  %4 = load i32, i32* @nowayout, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %12, label %6

; <label>:6                                       ; preds = %3
  %7 = load i8, i8* @wdtpci_write_buf, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp ne i32 %8, 86
  br i1 %9, label %10, label %11

; <label>:10                                      ; preds = %6
  store i32 0, i32* @expect_close, align 4
  br label %11

; <label>:11                                      ; preds = %10, %6
  br label %12

; <label>:12                                      ; preds = %11, %3
  br label %13

; <label>:13                                      ; preds = %12, %0
  %14 = load i32, i32* @expect_close, align 4
  %15 = icmp ne i32 %14, 42
  br i1 %15, label %16, label %17

; <label>:16                                      ; preds = %13
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 1036, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__PRETTY_FUNCTION__.closer3, i32 0, i32 0)) #4
  unreachable

; <label>:17                                      ; preds = %13
  br label %18

; <label>:18                                      ; preds = %17
  br label %19

; <label>:19                                      ; preds = %18
  br label %20

; <label>:20                                      ; preds = %23, %19
  %21 = load i8, i8* @wdtpci_lock, align 1
  %22 = trunc i8 %21 to i1
  br i1 %22, label %23, label %24

; <label>:23                                      ; preds = %20
  br label %20

; <label>:24                                      ; preds = %20
  br label %25

; <label>:25                                      ; preds = %24
  %26 = load i8, i8* @wdt_dc_port, align 1
  br label %27

; <label>:27                                      ; preds = %25
  br label %28

; <label>:28                                      ; preds = %27
  br label %29

; <label>:29                                      ; preds = %28
  store i8 0, i8* @wdtpci_lock, align 1
  br label %30

; <label>:30                                      ; preds = %29
  br label %31

; <label>:31                                      ; preds = %30
  br label %32

; <label>:32                                      ; preds = %31
  store i32 0, i32* @expect_close, align 4
  ret i8* null
}

; Function Attrs: nounwind uwtable
define i8* @closer4(i8* %unused) #0 {
  store i8 86, i8* @wdtpci_write_buf, align 1
  store i32 42, i32* @expect_close, align 4
  store i32 1, i32* @count, align 4
  %1 = load i32, i32* @count, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %3, label %13

; <label>:3                                       ; preds = %0
  %4 = load i32, i32* @nowayout, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %12, label %6

; <label>:6                                       ; preds = %3
  %7 = load i8, i8* @wdtpci_write_buf, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp ne i32 %8, 86
  br i1 %9, label %10, label %11

; <label>:10                                      ; preds = %6
  store i32 0, i32* @expect_close, align 4
  br label %11

; <label>:11                                      ; preds = %10, %6
  br label %12

; <label>:12                                      ; preds = %11, %3
  br label %13

; <label>:13                                      ; preds = %12, %0
  %14 = load i32, i32* @expect_close, align 4
  %15 = icmp ne i32 %14, 42
  br i1 %15, label %16, label %17

; <label>:16                                      ; preds = %13
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 1069, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__PRETTY_FUNCTION__.closer4, i32 0, i32 0)) #4
  unreachable

; <label>:17                                      ; preds = %13
  br label %18

; <label>:18                                      ; preds = %17
  br label %19

; <label>:19                                      ; preds = %18
  br label %20

; <label>:20                                      ; preds = %23, %19
  %21 = load i8, i8* @wdtpci_lock, align 1
  %22 = trunc i8 %21 to i1
  br i1 %22, label %23, label %24

; <label>:23                                      ; preds = %20
  br label %20

; <label>:24                                      ; preds = %20
  br label %25

; <label>:25                                      ; preds = %24
  %26 = load i8, i8* @wdt_dc_port, align 1
  br label %27

; <label>:27                                      ; preds = %25
  br label %28

; <label>:28                                      ; preds = %27
  br label %29

; <label>:29                                      ; preds = %28
  store i8 0, i8* @wdtpci_lock, align 1
  br label %30

; <label>:30                                      ; preds = %29
  br label %31

; <label>:31                                      ; preds = %30
  br label %32

; <label>:32                                      ; preds = %31
  store i32 0, i32* @expect_close, align 4
  ret i8* null
}

; Function Attrs: nounwind uwtable
define i8* @writer1(i8* %unused) #0 {
  store i32 0, i32* @count, align 4
  store i32 0, i32* @expect_close, align 4
  %1 = load i32, i32* @count, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %3, label %13

; <label>:3                                       ; preds = %0
  %4 = load i32, i32* @nowayout, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %12, label %6

; <label>:6                                       ; preds = %3
  %7 = load i8, i8* @wdtpci_write_buf, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp ne i32 %8, 86
  br i1 %9, label %10, label %11

; <label>:10                                      ; preds = %6
  store i32 0, i32* @expect_close, align 4
  br label %11

; <label>:11                                      ; preds = %10, %6
  br label %12

; <label>:12                                      ; preds = %11, %3
  br label %13

; <label>:13                                      ; preds = %12, %0
  ret i8* null
}

; Function Attrs: nounwind uwtable
define i8* @writer2(i8* %unused) #0 {
  store i32 0, i32* @count, align 4
  store i32 0, i32* @expect_close, align 4
  %1 = load i32, i32* @count, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %3, label %13

; <label>:3                                       ; preds = %0
  %4 = load i32, i32* @nowayout, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %12, label %6

; <label>:6                                       ; preds = %3
  %7 = load i8, i8* @wdtpci_write_buf, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp ne i32 %8, 86
  br i1 %9, label %10, label %11

; <label>:10                                      ; preds = %6
  store i32 0, i32* @expect_close, align 4
  br label %11

; <label>:11                                      ; preds = %10, %6
  br label %12

; <label>:12                                      ; preds = %11, %3
  br label %13

; <label>:13                                      ; preds = %12, %0
  ret i8* null
}

; Function Attrs: nounwind uwtable
define i8* @writer3(i8* %unused) #0 {
  store i32 0, i32* @count, align 4
  store i32 0, i32* @expect_close, align 4
  %1 = load i32, i32* @count, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %3, label %13

; <label>:3                                       ; preds = %0
  %4 = load i32, i32* @nowayout, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %12, label %6

; <label>:6                                       ; preds = %3
  %7 = load i8, i8* @wdtpci_write_buf, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp ne i32 %8, 86
  br i1 %9, label %10, label %11

; <label>:10                                      ; preds = %6
  store i32 0, i32* @expect_close, align 4
  br label %11

; <label>:11                                      ; preds = %10, %6
  br label %12

; <label>:12                                      ; preds = %11, %3
  br label %13

; <label>:13                                      ; preds = %12, %0
  ret i8* null
}

; Function Attrs: nounwind uwtable
define i8* @writer4(i8* %unused) #0 {
  store i32 0, i32* @count, align 4
  store i32 0, i32* @expect_close, align 4
  %1 = load i32, i32* @count, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %3, label %13

; <label>:3                                       ; preds = %0
  %4 = load i32, i32* @nowayout, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %12, label %6

; <label>:6                                       ; preds = %3
  %7 = load i8, i8* @wdtpci_write_buf, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp ne i32 %8, 86
  br i1 %9, label %10, label %11

; <label>:10                                      ; preds = %6
  store i32 0, i32* @expect_close, align 4
  br label %11

; <label>:11                                      ; preds = %10, %6
  br label %12

; <label>:12                                      ; preds = %11, %3
  br label %13

; <label>:13                                      ; preds = %12, %0
  ret i8* null
}

; Function Attrs: nounwind uwtable
define i8* @writer5(i8* %unused) #0 {
  br label %1

; <label>:1                                       ; preds = %0
  br label %2

; <label>:2                                       ; preds = %1
  ret i8* null
}

; Function Attrs: nounwind uwtable
define i8* @writer6(i8* %unused) #0 {
  br label %1

; <label>:1                                       ; preds = %0
  br label %2

; <label>:2                                       ; preds = %1
  ret i8* null
}

; Function Attrs: nounwind uwtable
define i8* @writer7(i8* %unused) #0 {
  br label %1

; <label>:1                                       ; preds = %0
  br label %2

; <label>:2                                       ; preds = %1
  ret i8* null
}

; Function Attrs: nounwind uwtable
define i8* @writer8(i8* %unused) #0 {
  br label %1

; <label>:1                                       ; preds = %0
  br label %2

; <label>:2                                       ; preds = %1
  ret i8* null
}

; Function Attrs: nounwind uwtable
define i8* @writer9(i8* %unused) #0 {
  br label %1

; <label>:1                                       ; preds = %0
  br label %2

; <label>:2                                       ; preds = %1
  ret i8* null
}

; Function Attrs: nounwind uwtable
define i8* @writer10(i8* %unused) #0 {
  br label %1

; <label>:1                                       ; preds = %0
  br label %2

; <label>:2                                       ; preds = %1
  ret i8* null
}

; Function Attrs: nounwind uwtable
define i8* @writer11(i8* %unused) #0 {
  br label %1

; <label>:1                                       ; preds = %0
  br label %2

; <label>:2                                       ; preds = %1
  ret i8* null
}

; Function Attrs: nounwind uwtable
define i8* @writer12(i8* %unused) #0 {
  br label %1

; <label>:1                                       ; preds = %0
  br label %2

; <label>:2                                       ; preds = %1
  ret i8* null
}

; Function Attrs: nounwind uwtable
define i8* @writer13(i8* %unused) #0 {
  br label %1

; <label>:1                                       ; preds = %0
  br label %2

; <label>:2                                       ; preds = %1
  ret i8* null
}

; Function Attrs: nounwind uwtable
define i8* @writer14(i8* %unused) #0 {
  br label %1

; <label>:1                                       ; preds = %0
  br label %2

; <label>:2                                       ; preds = %1
  ret i8* null
}

; Function Attrs: nounwind uwtable
define i8* @writer15(i8* %unused) #0 {
  br label %1

; <label>:1                                       ; preds = %0
  br label %2

; <label>:2                                       ; preds = %1
  ret i8* null
}

; Function Attrs: nounwind uwtable
define i8* @writer16(i8* %unused) #0 {
  br label %1

; <label>:1                                       ; preds = %0
  br label %2

; <label>:2                                       ; preds = %1
  ret i8* null
}

; Function Attrs: nounwind uwtable
define i8* @writer17(i8* %unused) #0 {
  br label %1

; <label>:1                                       ; preds = %0
  br label %2

; <label>:2                                       ; preds = %1
  ret i8* null
}

; Function Attrs: nounwind uwtable
define i8* @writer18(i8* %unused) #0 {
  br label %1

; <label>:1                                       ; preds = %0
  br label %2

; <label>:2                                       ; preds = %1
  ret i8* null
}

; Function Attrs: nounwind uwtable
define i8* @writer19(i8* %unused) #0 {
  br label %1

; <label>:1                                       ; preds = %0
  br label %2

; <label>:2                                       ; preds = %1
  ret i8* null
}

; Function Attrs: nounwind uwtable
define i8* @writer20(i8* %unused) #0 {
  br label %1

; <label>:1                                       ; preds = %0
  br label %2

; <label>:2                                       ; preds = %1
  ret i8* null
}

; Function Attrs: nounwind uwtable
define i8* @writer21(i8* %unused) #0 {
  br label %1

; <label>:1                                       ; preds = %0
  br label %2

; <label>:2                                       ; preds = %1
  ret i8* null
}

; Function Attrs: nounwind uwtable
define i8* @writer22(i8* %unused) #0 {
  br label %1

; <label>:1                                       ; preds = %0
  br label %2

; <label>:2                                       ; preds = %1
  ret i8* null
}

; Function Attrs: nounwind uwtable
define i8* @writer23(i8* %unused) #0 {
  br label %1

; <label>:1                                       ; preds = %0
  br label %2

; <label>:2                                       ; preds = %1
  ret i8* null
}

; Function Attrs: nounwind uwtable
define i8* @writer24(i8* %unused) #0 {
  br label %1

; <label>:1                                       ; preds = %0
  br label %2

; <label>:2                                       ; preds = %1
  ret i8* null
}

; Function Attrs: nounwind uwtable
define i8* @writer25(i8* %unused) #0 {
  br label %1

; <label>:1                                       ; preds = %0
  br label %2

; <label>:2                                       ; preds = %1
  ret i8* null
}

; Function Attrs: nounwind uwtable
define i8* @writer26(i8* %unused) #0 {
  br label %1

; <label>:1                                       ; preds = %0
  br label %2

; <label>:2                                       ; preds = %1
  ret i8* null
}

; Function Attrs: nounwind uwtable
define i8* @writer27(i8* %unused) #0 {
  br label %1

; <label>:1                                       ; preds = %0
  br label %2

; <label>:2                                       ; preds = %1
  ret i8* null
}

; Function Attrs: nounwind uwtable
define i8* @writer28(i8* %unused) #0 {
  br label %1

; <label>:1                                       ; preds = %0
  br label %2

; <label>:2                                       ; preds = %1
  ret i8* null
}

; Function Attrs: nounwind uwtable
define i8* @writer29(i8* %unused) #0 {
  br label %1

; <label>:1                                       ; preds = %0
  br label %2

; <label>:2                                       ; preds = %1
  ret i8* null
}

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
  %t1 = alloca i64, align 8
  %1 = call i32 @pthread_create(i64* %t1, %union.pthread_attr_t* null, i8* (i8*)* @writer1, i8* null) #5
  %2 = call i32 @pthread_create(i64* %t1, %union.pthread_attr_t* null, i8* (i8*)* @writer2, i8* null) #5
  %3 = call i32 @pthread_create(i64* %t1, %union.pthread_attr_t* null, i8* (i8*)* @writer3, i8* null) #5
  %4 = call i32 @pthread_create(i64* %t1, %union.pthread_attr_t* null, i8* (i8*)* @writer4, i8* null) #5
  %5 = call i32 @pthread_create(i64* %t1, %union.pthread_attr_t* null, i8* (i8*)* @closer1, i8* null) #5
  %6 = call i32 @pthread_create(i64* %t1, %union.pthread_attr_t* null, i8* (i8*)* @closer2, i8* null) #5
  %7 = call i32 @pthread_create(i64* %t1, %union.pthread_attr_t* null, i8* (i8*)* @closer3, i8* null) #5
  %8 = call i32 @pthread_create(i64* %t1, %union.pthread_attr_t* null, i8* (i8*)* @closer4, i8* null) #5
  call void @pthread_exit(i8* null) #6
  unreachable
                                                  ; No predecessors!
  ret i32 0
}

; Function Attrs: nounwind
declare i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #2

; Function Attrs: noreturn
declare void @pthread_exit(i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind }
attributes #5 = { nounwind }
attributes #6 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.0 (tags/RELEASE_380/final)"}
