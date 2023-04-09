; ModuleID = 'main2.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.pthread_attr_t = type { i64, [48 x i8] }

@heartbeat = global i32 30, align 4
@nowayout = global i32 0, align 4
@tco_lock = common global i8 0, align 1
@tco_write_buf = common global i8 0, align 1
@tco_expect_close = common global i8 0, align 1
@tco1_rld = common global i8 0, align 1
@.str = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"main.c\00", align 1
@__PRETTY_FUNCTION__.closer1 = private unnamed_addr constant [22 x i8] c"void *closer1(void *)\00", align 1
@tco1_cnt_b4 = common global i8 0, align 1
@timer_alive = common global i64 0, align 8
@__PRETTY_FUNCTION__.closer2 = private unnamed_addr constant [22 x i8] c"void *closer2(void *)\00", align 1
@__PRETTY_FUNCTION__.closer3 = private unnamed_addr constant [22 x i8] c"void *closer3(void *)\00", align 1
@ACPIBASE = common global i32 0, align 4
@tco1_cnt_b0 = common global i8 0, align 1
@tco1_cnt_b1 = common global i8 0, align 1
@tco1_cnt_b2 = common global i8 0, align 1
@tco1_cnt_b3 = common global i8 0, align 1
@tco1_cnt_b5 = common global i8 0, align 1
@tco1_cnt_b6 = common global i8 0, align 1
@tco1_cnt_b7 = common global i8 0, align 1
@cnt1 = common global i32 0, align 4
@cnt2 = common global i32 0, align 4
@cnt3 = common global i32 0, align 4
@cnt4 = common global i32 0, align 4
@cnt5 = common global i32 0, align 4
@cnt6 = common global i32 0, align 4
@cnt7 = common global i32 0, align 4
@cnt8 = common global i32 0, align 4

; Function Attrs: nounwind uwtable
define zeroext i8 @seconds_to_ticks(i32 %seconds) #0 {
  %1 = mul nsw i32 %seconds, 10
  %2 = sdiv i32 %1, 6
  %3 = trunc i32 %2 to i8
  ret i8 %3
}

; Function Attrs: nounwind uwtable
define i32 @tco_timer_set_heartbeat(i32 %t) #0 {
  %1 = call zeroext i8 @seconds_to_ticks(i32 %t)
  %2 = zext i8 %1 to i32
  %3 = icmp sgt i32 %2, 63
  br i1 %3, label %7, label %4

; <label>:4                                       ; preds = %0
  %5 = zext i8 %1 to i32
  %6 = icmp slt i32 %5, 4
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %4, %0
  br label %31

; <label>:8                                       ; preds = %4
  br label %9

; <label>:9                                       ; preds = %8
  br label %10

; <label>:10                                      ; preds = %13, %9
  %11 = load i8, i8* @tco_lock, align 1
  %12 = trunc i8 %11 to i1
  br i1 %12, label %13, label %14

; <label>:13                                      ; preds = %10
  br label %10

; <label>:14                                      ; preds = %10
  br label %15

; <label>:15                                      ; preds = %14
  %16 = zext i8 0 to i32
  %17 = and i32 %16, 192
  %18 = trunc i32 %17 to i8
  %19 = zext i8 %1 to i32
  %20 = zext i8 %18 to i32
  %21 = or i32 %20, %19
  %22 = trunc i32 %21 to i8
  br label %23

; <label>:23                                      ; preds = %15
  store i8 0, i8* @tco_lock, align 1
  br label %24

; <label>:24                                      ; preds = %23
  %25 = zext i8 0 to i32
  %26 = and i32 %25, 63
  %27 = zext i8 %1 to i32
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %30

; <label>:29                                      ; preds = %24
  br label %31

; <label>:30                                      ; preds = %24
  store i32 %t, i32* @heartbeat, align 4
  br label %31

; <label>:31                                      ; preds = %30, %29, %7
  %.0 = phi i32 [ -22, %7 ], [ -22, %29 ], [ 0, %30 ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i8* @closer1(i8* %unused) #0 {
  store i8 86, i8* @tco_write_buf, align 1
  br label %1

; <label>:1                                       ; preds = %0
  %2 = load i32, i32* @nowayout, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %10, label %4

; <label>:4                                       ; preds = %1
  store i8 0, i8* @tco_expect_close, align 1
  %5 = load i8, i8* @tco_write_buf, align 1
  %6 = sext i8 %5 to i32
  %7 = icmp eq i32 %6, 86
  br i1 %7, label %8, label %9

; <label>:8                                       ; preds = %4
  store i8 42, i8* @tco_expect_close, align 1
  br label %9

; <label>:9                                       ; preds = %8, %4
  br label %10

; <label>:10                                      ; preds = %9, %1
  br label %11

; <label>:11                                      ; preds = %10
  br label %12

; <label>:12                                      ; preds = %11
  store i8 1, i8* @tco1_rld, align 1
  br label %13

; <label>:13                                      ; preds = %12
  br label %14

; <label>:14                                      ; preds = %13
  br label %15

; <label>:15                                      ; preds = %14
  store i8 42, i8* @tco_expect_close, align 1
  br label %16

; <label>:16                                      ; preds = %15
  %17 = load i8, i8* @tco_expect_close, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 42
  br i1 %19, label %20, label %21

; <label>:20                                      ; preds = %16
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 721, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__PRETTY_FUNCTION__.closer1, i32 0, i32 0)) #4
  unreachable

; <label>:21                                      ; preds = %16
  br label %22

; <label>:22                                      ; preds = %21
  br label %23

; <label>:23                                      ; preds = %22
  br label %24

; <label>:24                                      ; preds = %27, %23
  %25 = load i8, i8* @tco_lock, align 1
  %26 = trunc i8 %25 to i1
  br i1 %26, label %27, label %28

; <label>:27                                      ; preds = %24
  br label %24

; <label>:28                                      ; preds = %24
  br label %29

; <label>:29                                      ; preds = %28
  store i8 1, i8* @tco1_cnt_b4, align 1
  br label %30

; <label>:30                                      ; preds = %29
  store i8 0, i8* @tco_lock, align 1
  br label %31

; <label>:31                                      ; preds = %30
  br label %32

; <label>:32                                      ; preds = %31
  br label %33

; <label>:33                                      ; preds = %32
  br label %34

; <label>:34                                      ; preds = %33
  store i64 0, i64* @timer_alive, align 8
  br label %35

; <label>:35                                      ; preds = %34
  store i8 0, i8* @tco_expect_close, align 1
  br label %36

; <label>:36                                      ; preds = %35
  ret i8* null
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #1

; Function Attrs: nounwind uwtable
define i8* @closer2(i8* %unused) #0 {
  store i8 86, i8* @tco_write_buf, align 1
  br label %1

; <label>:1                                       ; preds = %0
  %2 = load i32, i32* @nowayout, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %10, label %4

; <label>:4                                       ; preds = %1
  store i8 0, i8* @tco_expect_close, align 1
  %5 = load i8, i8* @tco_write_buf, align 1
  %6 = sext i8 %5 to i32
  %7 = icmp eq i32 %6, 86
  br i1 %7, label %8, label %9

; <label>:8                                       ; preds = %4
  store i8 42, i8* @tco_expect_close, align 1
  br label %9

; <label>:9                                       ; preds = %8, %4
  br label %10

; <label>:10                                      ; preds = %9, %1
  br label %11

; <label>:11                                      ; preds = %10
  br label %12

; <label>:12                                      ; preds = %11
  store i8 1, i8* @tco1_rld, align 1
  br label %13

; <label>:13                                      ; preds = %12
  br label %14

; <label>:14                                      ; preds = %13
  br label %15

; <label>:15                                      ; preds = %14
  store i8 42, i8* @tco_expect_close, align 1
  br label %16

; <label>:16                                      ; preds = %15
  %17 = load i8, i8* @tco_expect_close, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 42
  br i1 %19, label %20, label %21

; <label>:20                                      ; preds = %16
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 732, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__PRETTY_FUNCTION__.closer2, i32 0, i32 0)) #4
  unreachable

; <label>:21                                      ; preds = %16
  br label %22

; <label>:22                                      ; preds = %21
  br label %23

; <label>:23                                      ; preds = %22
  br label %24

; <label>:24                                      ; preds = %27, %23
  %25 = load i8, i8* @tco_lock, align 1
  %26 = trunc i8 %25 to i1
  br i1 %26, label %27, label %28

; <label>:27                                      ; preds = %24
  br label %24

; <label>:28                                      ; preds = %24
  br label %29

; <label>:29                                      ; preds = %28
  store i8 1, i8* @tco1_cnt_b4, align 1
  br label %30

; <label>:30                                      ; preds = %29
  store i8 0, i8* @tco_lock, align 1
  br label %31

; <label>:31                                      ; preds = %30
  br label %32

; <label>:32                                      ; preds = %31
  br label %33

; <label>:33                                      ; preds = %32
  br label %34

; <label>:34                                      ; preds = %33
  store i64 0, i64* @timer_alive, align 8
  br label %35

; <label>:35                                      ; preds = %34
  store i8 0, i8* @tco_expect_close, align 1
  br label %36

; <label>:36                                      ; preds = %35
  ret i8* null
}

; Function Attrs: nounwind uwtable
define i8* @closer3(i8* %unused) #0 {
  store i8 86, i8* @tco_write_buf, align 1
  br label %1

; <label>:1                                       ; preds = %0
  %2 = load i32, i32* @nowayout, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %10, label %4

; <label>:4                                       ; preds = %1
  store i8 0, i8* @tco_expect_close, align 1
  %5 = load i8, i8* @tco_write_buf, align 1
  %6 = sext i8 %5 to i32
  %7 = icmp eq i32 %6, 86
  br i1 %7, label %8, label %9

; <label>:8                                       ; preds = %4
  store i8 42, i8* @tco_expect_close, align 1
  br label %9

; <label>:9                                       ; preds = %8, %4
  br label %10

; <label>:10                                      ; preds = %9, %1
  br label %11

; <label>:11                                      ; preds = %10
  br label %12

; <label>:12                                      ; preds = %11
  store i8 1, i8* @tco1_rld, align 1
  br label %13

; <label>:13                                      ; preds = %12
  br label %14

; <label>:14                                      ; preds = %13
  br label %15

; <label>:15                                      ; preds = %14
  store i8 42, i8* @tco_expect_close, align 1
  br label %16

; <label>:16                                      ; preds = %15
  %17 = load i8, i8* @tco_expect_close, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 42
  br i1 %19, label %20, label %21

; <label>:20                                      ; preds = %16
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 743, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__PRETTY_FUNCTION__.closer3, i32 0, i32 0)) #4
  unreachable

; <label>:21                                      ; preds = %16
  br label %22

; <label>:22                                      ; preds = %21
  br label %23

; <label>:23                                      ; preds = %22
  br label %24

; <label>:24                                      ; preds = %27, %23
  %25 = load i8, i8* @tco_lock, align 1
  %26 = trunc i8 %25 to i1
  br i1 %26, label %27, label %28

; <label>:27                                      ; preds = %24
  br label %24

; <label>:28                                      ; preds = %24
  br label %29

; <label>:29                                      ; preds = %28
  store i8 1, i8* @tco1_cnt_b4, align 1
  br label %30

; <label>:30                                      ; preds = %29
  store i8 0, i8* @tco_lock, align 1
  br label %31

; <label>:31                                      ; preds = %30
  br label %32

; <label>:32                                      ; preds = %31
  br label %33

; <label>:33                                      ; preds = %32
  br label %34

; <label>:34                                      ; preds = %33
  store i64 0, i64* @timer_alive, align 8
  br label %35

; <label>:35                                      ; preds = %34
  store i8 0, i8* @tco_expect_close, align 1
  br label %36

; <label>:36                                      ; preds = %35
  ret i8* null
}

; Function Attrs: nounwind uwtable
define i8* @writer1(i8* %unused) #0 {
  br label %1

; <label>:1                                       ; preds = %0
  br label %2

; <label>:2                                       ; preds = %1
  br label %3

; <label>:3                                       ; preds = %2
  store i8 1, i8* @tco1_rld, align 1
  br label %4

; <label>:4                                       ; preds = %3
  br label %5

; <label>:5                                       ; preds = %4
  br label %6

; <label>:6                                       ; preds = %5
  ret i8* null
}

; Function Attrs: nounwind uwtable
define i8* @writer2(i8* %unused) #0 {
  br label %1

; <label>:1                                       ; preds = %0
  br label %2

; <label>:2                                       ; preds = %1
  br label %3

; <label>:3                                       ; preds = %2
  store i8 1, i8* @tco1_rld, align 1
  br label %4

; <label>:4                                       ; preds = %3
  br label %5

; <label>:5                                       ; preds = %4
  br label %6

; <label>:6                                       ; preds = %5
  ret i8* null
}

; Function Attrs: nounwind uwtable
define i8* @writer3(i8* %unused) #0 {
  br label %1

; <label>:1                                       ; preds = %0
  br label %2

; <label>:2                                       ; preds = %1
  br label %3

; <label>:3                                       ; preds = %2
  store i8 1, i8* @tco1_rld, align 1
  br label %4

; <label>:4                                       ; preds = %3
  br label %5

; <label>:5                                       ; preds = %4
  br label %6

; <label>:6                                       ; preds = %5
  ret i8* null
}

; Function Attrs: nounwind uwtable
define i8* @writer4(i8* %unused) #0 {
  br label %1

; <label>:1                                       ; preds = %0
  br label %2

; <label>:2                                       ; preds = %1
  br label %3

; <label>:3                                       ; preds = %2
  store i8 1, i8* @tco1_rld, align 1
  br label %4

; <label>:4                                       ; preds = %3
  br label %5

; <label>:5                                       ; preds = %4
  br label %6

; <label>:6                                       ; preds = %5
  br label %7

; <label>:7                                       ; preds = %6
  br label %8

; <label>:8                                       ; preds = %7
  br label %9

; <label>:9                                       ; preds = %8
  store i8 1, i8* @tco1_rld, align 1
  br label %10

; <label>:10                                      ; preds = %9
  br label %11

; <label>:11                                      ; preds = %10
  br label %12

; <label>:12                                      ; preds = %11
  ret i8* null
}

; Function Attrs: nounwind uwtable
define i8* @writer5(i8* %unused) #0 {
  br label %1

; <label>:1                                       ; preds = %0
  br label %2

; <label>:2                                       ; preds = %1
  br label %3

; <label>:3                                       ; preds = %2
  store i8 1, i8* @tco1_rld, align 1
  br label %4

; <label>:4                                       ; preds = %3
  br label %5

; <label>:5                                       ; preds = %4
  br label %6

; <label>:6                                       ; preds = %5
  ret i8* null
}

; Function Attrs: nounwind uwtable
define i8* @writer6(i8* %unused) #0 {
  br label %1

; <label>:1                                       ; preds = %0
  br label %2

; <label>:2                                       ; preds = %1
  br label %3

; <label>:3                                       ; preds = %2
  store i8 1, i8* @tco1_rld, align 1
  br label %4

; <label>:4                                       ; preds = %3
  br label %5

; <label>:5                                       ; preds = %4
  br label %6

; <label>:6                                       ; preds = %5
  ret i8* null
}

; Function Attrs: nounwind uwtable
define i8* @writer7(i8* %unused) #0 {
  br label %1

; <label>:1                                       ; preds = %0
  br label %2

; <label>:2                                       ; preds = %1
  br label %3

; <label>:3                                       ; preds = %2
  store i8 1, i8* @tco1_rld, align 1
  br label %4

; <label>:4                                       ; preds = %3
  br label %5

; <label>:5                                       ; preds = %4
  br label %6

; <label>:6                                       ; preds = %5
  ret i8* null
}

; Function Attrs: nounwind uwtable
define i8* @writer8(i8* %unused) #0 {
  br label %1

; <label>:1                                       ; preds = %0
  br label %2

; <label>:2                                       ; preds = %1
  br label %3

; <label>:3                                       ; preds = %2
  store i8 1, i8* @tco1_rld, align 1
  br label %4

; <label>:4                                       ; preds = %3
  br label %5

; <label>:5                                       ; preds = %4
  br label %6

; <label>:6                                       ; preds = %5
  ret i8* null
}

; Function Attrs: nounwind uwtable
define i8* @writer9(i8* %unused) #0 {
  br label %1

; <label>:1                                       ; preds = %0
  br label %2

; <label>:2                                       ; preds = %1
  br label %3

; <label>:3                                       ; preds = %2
  store i8 1, i8* @tco1_rld, align 1
  br label %4

; <label>:4                                       ; preds = %3
  br label %5

; <label>:5                                       ; preds = %4
  br label %6

; <label>:6                                       ; preds = %5
  ret i8* null
}

; Function Attrs: nounwind uwtable
define i8* @writer10(i8* %unused) #0 {
  br label %1

; <label>:1                                       ; preds = %0
  br label %2

; <label>:2                                       ; preds = %1
  br label %3

; <label>:3                                       ; preds = %2
  store i8 1, i8* @tco1_rld, align 1
  br label %4

; <label>:4                                       ; preds = %3
  br label %5

; <label>:5                                       ; preds = %4
  br label %6

; <label>:6                                       ; preds = %5
  ret i8* null
}

; Function Attrs: nounwind uwtable
define i8* @writer11(i8* %unused) #0 {
  br label %1

; <label>:1                                       ; preds = %0
  br label %2

; <label>:2                                       ; preds = %1
  br label %3

; <label>:3                                       ; preds = %2
  store i8 1, i8* @tco1_rld, align 1
  br label %4

; <label>:4                                       ; preds = %3
  br label %5

; <label>:5                                       ; preds = %4
  br label %6

; <label>:6                                       ; preds = %5
  ret i8* null
}

; Function Attrs: nounwind uwtable
define i8* @writer12(i8* %unused) #0 {
  br label %1

; <label>:1                                       ; preds = %0
  br label %2

; <label>:2                                       ; preds = %1
  br label %3

; <label>:3                                       ; preds = %2
  store i8 1, i8* @tco1_rld, align 1
  br label %4

; <label>:4                                       ; preds = %3
  br label %5

; <label>:5                                       ; preds = %4
  br label %6

; <label>:6                                       ; preds = %5
  ret i8* null
}

; Function Attrs: nounwind uwtable
define i8* @writer13(i8* %unused) #0 {
  br label %1

; <label>:1                                       ; preds = %0
  br label %2

; <label>:2                                       ; preds = %1
  br label %3

; <label>:3                                       ; preds = %2
  store i8 1, i8* @tco1_rld, align 1
  br label %4

; <label>:4                                       ; preds = %3
  br label %5

; <label>:5                                       ; preds = %4
  br label %6

; <label>:6                                       ; preds = %5
  ret i8* null
}

; Function Attrs: nounwind uwtable
define i8* @writer14(i8* %unused) #0 {
  br label %1

; <label>:1                                       ; preds = %0
  br label %2

; <label>:2                                       ; preds = %1
  br label %3

; <label>:3                                       ; preds = %2
  store i8 1, i8* @tco1_rld, align 1
  br label %4

; <label>:4                                       ; preds = %3
  br label %5

; <label>:5                                       ; preds = %4
  br label %6

; <label>:6                                       ; preds = %5
  ret i8* null
}

; Function Attrs: nounwind uwtable
define i8* @writer15(i8* %unused) #0 {
  br label %1

; <label>:1                                       ; preds = %0
  br label %2

; <label>:2                                       ; preds = %1
  br label %3

; <label>:3                                       ; preds = %2
  store i8 1, i8* @tco1_rld, align 1
  br label %4

; <label>:4                                       ; preds = %3
  br label %5

; <label>:5                                       ; preds = %4
  br label %6

; <label>:6                                       ; preds = %5
  ret i8* null
}

; Function Attrs: nounwind uwtable
define i8* @writer16(i8* %unused) #0 {
  br label %1

; <label>:1                                       ; preds = %0
  br label %2

; <label>:2                                       ; preds = %1
  br label %3

; <label>:3                                       ; preds = %2
  store i8 1, i8* @tco1_rld, align 1
  br label %4

; <label>:4                                       ; preds = %3
  br label %5

; <label>:5                                       ; preds = %4
  br label %6

; <label>:6                                       ; preds = %5
  ret i8* null
}

; Function Attrs: nounwind uwtable
define i8* @writer17(i8* %unused) #0 {
  br label %1

; <label>:1                                       ; preds = %0
  br label %2

; <label>:2                                       ; preds = %1
  br label %3

; <label>:3                                       ; preds = %2
  store i8 1, i8* @tco1_rld, align 1
  br label %4

; <label>:4                                       ; preds = %3
  br label %5

; <label>:5                                       ; preds = %4
  br label %6

; <label>:6                                       ; preds = %5
  ret i8* null
}

; Function Attrs: nounwind uwtable
define i8* @writer18(i8* %unused) #0 {
  br label %1

; <label>:1                                       ; preds = %0
  br label %2

; <label>:2                                       ; preds = %1
  br label %3

; <label>:3                                       ; preds = %2
  store i8 1, i8* @tco1_rld, align 1
  br label %4

; <label>:4                                       ; preds = %3
  br label %5

; <label>:5                                       ; preds = %4
  br label %6

; <label>:6                                       ; preds = %5
  ret i8* null
}

; Function Attrs: nounwind uwtable
define i8* @writer19(i8* %unused) #0 {
  br label %1

; <label>:1                                       ; preds = %0
  br label %2

; <label>:2                                       ; preds = %1
  br label %3

; <label>:3                                       ; preds = %2
  store i8 1, i8* @tco1_rld, align 1
  br label %4

; <label>:4                                       ; preds = %3
  br label %5

; <label>:5                                       ; preds = %4
  br label %6

; <label>:6                                       ; preds = %5
  ret i8* null
}

; Function Attrs: nounwind uwtable
define i8* @writer20(i8* %unused) #0 {
  br label %1

; <label>:1                                       ; preds = %0
  br label %2

; <label>:2                                       ; preds = %1
  br label %3

; <label>:3                                       ; preds = %2
  store i8 1, i8* @tco1_rld, align 1
  br label %4

; <label>:4                                       ; preds = %3
  br label %5

; <label>:5                                       ; preds = %4
  br label %6

; <label>:6                                       ; preds = %5
  ret i8* null
}

; Function Attrs: nounwind uwtable
define i8* @writer21(i8* %unused) #0 {
  br label %1

; <label>:1                                       ; preds = %0
  br label %2

; <label>:2                                       ; preds = %1
  br label %3

; <label>:3                                       ; preds = %2
  store i8 1, i8* @tco1_rld, align 1
  br label %4

; <label>:4                                       ; preds = %3
  br label %5

; <label>:5                                       ; preds = %4
  br label %6

; <label>:6                                       ; preds = %5
  ret i8* null
}

; Function Attrs: nounwind uwtable
define i8* @writer22(i8* %unused) #0 {
  br label %1

; <label>:1                                       ; preds = %0
  br label %2

; <label>:2                                       ; preds = %1
  br label %3

; <label>:3                                       ; preds = %2
  store i8 1, i8* @tco1_rld, align 1
  br label %4

; <label>:4                                       ; preds = %3
  br label %5

; <label>:5                                       ; preds = %4
  br label %6

; <label>:6                                       ; preds = %5
  ret i8* null
}

; Function Attrs: nounwind uwtable
define i8* @writer23(i8* %unused) #0 {
  br label %1

; <label>:1                                       ; preds = %0
  br label %2

; <label>:2                                       ; preds = %1
  br label %3

; <label>:3                                       ; preds = %2
  store i8 1, i8* @tco1_rld, align 1
  br label %4

; <label>:4                                       ; preds = %3
  br label %5

; <label>:5                                       ; preds = %4
  br label %6

; <label>:6                                       ; preds = %5
  ret i8* null
}

; Function Attrs: nounwind uwtable
define i8* @writer24(i8* %unused) #0 {
  br label %1

; <label>:1                                       ; preds = %0
  br label %2

; <label>:2                                       ; preds = %1
  br label %3

; <label>:3                                       ; preds = %2
  store i8 1, i8* @tco1_rld, align 1
  br label %4

; <label>:4                                       ; preds = %3
  br label %5

; <label>:5                                       ; preds = %4
  br label %6

; <label>:6                                       ; preds = %5
  ret i8* null
}

; Function Attrs: nounwind uwtable
define i8* @writer25(i8* %unused) #0 {
  br label %1

; <label>:1                                       ; preds = %0
  br label %2

; <label>:2                                       ; preds = %1
  br label %3

; <label>:3                                       ; preds = %2
  store i8 1, i8* @tco1_rld, align 1
  br label %4

; <label>:4                                       ; preds = %3
  br label %5

; <label>:5                                       ; preds = %4
  br label %6

; <label>:6                                       ; preds = %5
  ret i8* null
}

; Function Attrs: nounwind uwtable
define i8* @writer26(i8* %unused) #0 {
  br label %1

; <label>:1                                       ; preds = %0
  br label %2

; <label>:2                                       ; preds = %1
  br label %3

; <label>:3                                       ; preds = %2
  store i8 1, i8* @tco1_rld, align 1
  br label %4

; <label>:4                                       ; preds = %3
  br label %5

; <label>:5                                       ; preds = %4
  br label %6

; <label>:6                                       ; preds = %5
  ret i8* null
}

; Function Attrs: nounwind uwtable
define i8* @writer27(i8* %unused) #0 {
  br label %1

; <label>:1                                       ; preds = %0
  br label %2

; <label>:2                                       ; preds = %1
  br label %3

; <label>:3                                       ; preds = %2
  store i8 1, i8* @tco1_rld, align 1
  br label %4

; <label>:4                                       ; preds = %3
  br label %5

; <label>:5                                       ; preds = %4
  br label %6

; <label>:6                                       ; preds = %5
  ret i8* null
}

; Function Attrs: nounwind uwtable
define i8* @writer28(i8* %unused) #0 {
  br label %1

; <label>:1                                       ; preds = %0
  br label %2

; <label>:2                                       ; preds = %1
  br label %3

; <label>:3                                       ; preds = %2
  store i8 1, i8* @tco1_rld, align 1
  br label %4

; <label>:4                                       ; preds = %3
  br label %5

; <label>:5                                       ; preds = %4
  br label %6

; <label>:6                                       ; preds = %5
  ret i8* null
}

; Function Attrs: nounwind uwtable
define i8* @writer29(i8* %unused) #0 {
  br label %1

; <label>:1                                       ; preds = %0
  br label %2

; <label>:2                                       ; preds = %1
  br label %3

; <label>:3                                       ; preds = %2
  store i8 1, i8* @tco1_rld, align 1
  br label %4

; <label>:4                                       ; preds = %3
  br label %5

; <label>:5                                       ; preds = %4
  br label %6

; <label>:6                                       ; preds = %5
  ret i8* null
}

; Function Attrs: nounwind uwtable
define i8* @writer30(i8* %unused) #0 {
  br label %1

; <label>:1                                       ; preds = %0
  br label %2

; <label>:2                                       ; preds = %1
  br label %3

; <label>:3                                       ; preds = %2
  store i8 1, i8* @tco1_rld, align 1
  br label %4

; <label>:4                                       ; preds = %3
  br label %5

; <label>:5                                       ; preds = %4
  br label %6

; <label>:6                                       ; preds = %5
  ret i8* null
}

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
  %t1 = alloca i64, align 8
  %t2 = alloca i64, align 8
  store i8 0, i8* @tco_expect_close, align 1
  %1 = call i32 @pthread_create(i64* %t2, %union.pthread_attr_t* null, i8* (i8*)* @closer1, i8* null) #5
  %2 = call i32 @pthread_create(i64* %t2, %union.pthread_attr_t* null, i8* (i8*)* @closer2, i8* null) #5
  %3 = call i32 @pthread_create(i64* %t2, %union.pthread_attr_t* null, i8* (i8*)* @closer3, i8* null) #5
  %4 = call i32 @pthread_create(i64* %t1, %union.pthread_attr_t* null, i8* (i8*)* @writer1, i8* null) #5
  %5 = call i32 @pthread_create(i64* %t1, %union.pthread_attr_t* null, i8* (i8*)* @writer2, i8* null) #5
  %6 = call i32 @pthread_create(i64* %t1, %union.pthread_attr_t* null, i8* (i8*)* @writer3, i8* null) #5
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
