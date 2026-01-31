; ModuleID = 'test\complex_test2.c'
source_filename = "test\\complex_test2.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc19.50.35723"

$sprintf = comdat any

$vsprintf = comdat any

$_snprintf = comdat any

$_vsnprintf = comdat any

$printf = comdat any

$_vsprintf_l = comdat any

$_vsnprintf_l = comdat any

$__local_stdio_printf_options = comdat any

$_vfprintf_l = comdat any

$"??_C@_0BI@FNCHAAD@sk?9secret?9api?9key?912345?$AA@" = comdat any

$"??_C@_0BE@GAPOGLCL@db_p?$EAssw0rd_secure?$CB?$AA@" = comdat any

$"??_C@_0CM@PBJCFIEG@?$DN?$DN?$DN?5Complex?5Program?5Test?5?$CINo?5Str@" = comdat any

$"??_C@_0BB@HFJOCGGA@?$FL1?$FN?5API?5Key?3?5?$CFs?6?$AA@" = comdat any

$"??_C@_0BG@KHOFODBN@?$FL1?$FN?5DB?5Password?3?5?$CFs?6?6?$AA@" = comdat any

$"??_C@_0BA@CGGDOOEJ@?$FL2?$FN?5Fibonacci?3?5?$AA@" = comdat any

$"??_C@_03JDANDILB@?$CFd?5?$AA@" = comdat any

$"??_C@_02PHMGELLB@?6?6?$AA@" = comdat any

$"??_C@_0N@MLDBPHNM@?$FL3?$FN?5Before?3?5?$AA@" = comdat any

$"??_C@_01EEMJAFIK@?6?$AA@" = comdat any

$"??_C@_0N@KPDGFLCJ@?$FL3?$FN?5After?3?5?5?$AA@" = comdat any

$"??_C@_0BK@HCGJOFBN@?$FL4?$FN?5Search?5?$CFd?3?5index?5?$CFd?6?6?$AA@" = comdat any

$"??_C@_0BC@MCJGFKJO@?$FL5?$FN?5Original?3?5?$CFs?6?$AA@" = comdat any

$"??_C@_0BD@PIELFFGC@?$FL5?$FN?5Reversed?3?5?$CFs?6?6?$AA@" = comdat any

$"??_C@_0BB@CBJOEOCO@?$FL6?$FN?510?$CB?5?$DN?5?$CFllu?6?6?$AA@" = comdat any

$"??_C@_0BE@NAAFIHDA@?$FL7?$FN?5Before?5XOR?3?5?$CFs?6?$AA@" = comdat any

$"??_C@_0BC@OFLDCLNC@?$FL7?$FN?5XOR?8d?5bytes?3?5?$AA@" = comdat any

$"??_C@_05BFHEBJNP@?$CF02X?5?$AA@" = comdat any

$"??_C@_0BE@PGAAFKID@?$FL7?$FN?5Decrypted?3?5?$CFs?6?6?$AA@" = comdat any

$"??_C@_0O@PMEDHIOL@?$DN?$DN?$DN?5Done?5?$DN?$DN?$DN?6?$AA@" = comdat any

@"??_C@_0BI@FNCHAAD@sk?9secret?9api?9key?912345?$AA@" = linkonce_odr dso_local unnamed_addr constant [24 x i8] c"sk-secret-api-key-12345\00", comdat, align 1
@API_KEY = dso_local global ptr @"??_C@_0BI@FNCHAAD@sk?9secret?9api?9key?912345?$AA@", align 8
@"??_C@_0BE@GAPOGLCL@db_p?$EAssw0rd_secure?$CB?$AA@" = linkonce_odr dso_local unnamed_addr constant [20 x i8] c"db_p@ssw0rd_secure!\00", comdat, align 1
@DATABASE_PASSWORD = dso_local global ptr @"??_C@_0BE@GAPOGLCL@db_p?$EAssw0rd_secure?$CB?$AA@", align 8
@"??_C@_0CM@PBJCFIEG@?$DN?$DN?$DN?5Complex?5Program?5Test?5?$CINo?5Str@" = linkonce_odr dso_local unnamed_addr constant [44 x i8] c"=== Complex Program Test (No Structs) ===\0A\0A\00", comdat, align 1
@"??_C@_0BB@HFJOCGGA@?$FL1?$FN?5API?5Key?3?5?$CFs?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [17 x i8] c"[1] API Key: %s\0A\00", comdat, align 1
@"??_C@_0BG@KHOFODBN@?$FL1?$FN?5DB?5Password?3?5?$CFs?6?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [22 x i8] c"[1] DB Password: %s\0A\0A\00", comdat, align 1
@"??_C@_0BA@CGGDOOEJ@?$FL2?$FN?5Fibonacci?3?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [16 x i8] c"[2] Fibonacci: \00", comdat, align 1
@"??_C@_03JDANDILB@?$CFd?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [4 x i8] c"%d \00", comdat, align 1
@"??_C@_02PHMGELLB@?6?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [3 x i8] c"\0A\0A\00", comdat, align 1
@__const.main.numbers = private unnamed_addr constant [7 x i32] [i32 64, i32 34, i32 25, i32 12, i32 22, i32 11, i32 90], align 16
@"??_C@_0N@MLDBPHNM@?$FL3?$FN?5Before?3?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [13 x i8] c"[3] Before: \00", comdat, align 1
@"??_C@_01EEMJAFIK@?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [2 x i8] c"\0A\00", comdat, align 1
@"??_C@_0N@KPDGFLCJ@?$FL3?$FN?5After?3?5?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [13 x i8] c"[3] After:  \00", comdat, align 1
@"??_C@_0BK@HCGJOFBN@?$FL4?$FN?5Search?5?$CFd?3?5index?5?$CFd?6?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [26 x i8] c"[4] Search %d: index %d\0A\0A\00", comdat, align 1
@__const.main.testStr = private unnamed_addr constant [12 x i8] c"Hello World\00", align 1
@"??_C@_0BC@MCJGFKJO@?$FL5?$FN?5Original?3?5?$CFs?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [18 x i8] c"[5] Original: %s\0A\00", comdat, align 1
@"??_C@_0BD@PIELFFGC@?$FL5?$FN?5Reversed?3?5?$CFs?6?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [19 x i8] c"[5] Reversed: %s\0A\0A\00", comdat, align 1
@"??_C@_0BB@CBJOEOCO@?$FL6?$FN?510?$CB?5?$DN?5?$CFllu?6?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [17 x i8] c"[6] 10! = %llu\0A\0A\00", comdat, align 1
@__const.main.secret = private unnamed_addr constant [10 x i8] c"TopSecret\00", align 1
@"??_C@_0BE@NAAFIHDA@?$FL7?$FN?5Before?5XOR?3?5?$CFs?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [20 x i8] c"[7] Before XOR: %s\0A\00", comdat, align 1
@"??_C@_0BC@OFLDCLNC@?$FL7?$FN?5XOR?8d?5bytes?3?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [18 x i8] c"[7] XOR'd bytes: \00", comdat, align 1
@"??_C@_05BFHEBJNP@?$CF02X?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"%02X \00", comdat, align 1
@"??_C@_0BE@PGAAFKID@?$FL7?$FN?5Decrypted?3?5?$CFs?6?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [20 x i8] c"[7] Decrypted: %s\0A\0A\00", comdat, align 1
@"??_C@_0O@PMEDHIOL@?$DN?$DN?$DN?5Done?5?$DN?$DN?$DN?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"=== Done ===\0A\00", comdat, align 1
@__local_stdio_printf_options._OptionsStorage = internal global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32 @sprintf(ptr noundef %0, ptr noundef %1, ...) #0 comdat {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.va_start.p0(ptr %6)
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %3, align 8
  %9 = load ptr, ptr %4, align 8
  %10 = call i32 @_vsprintf_l(ptr noundef %9, ptr noundef %8, ptr noundef null, ptr noundef %7)
  store i32 %10, ptr %5, align 4
  call void @llvm.va_end.p0(ptr %6)
  %11 = load i32, ptr %5, align 4
  ret i32 %11
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32 @vsprintf(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 comdat {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load ptr, ptr %6, align 8
  %10 = call i32 @_vsnprintf_l(ptr noundef %9, i64 noundef -1, ptr noundef %8, ptr noundef null, ptr noundef %7)
  ret i32 %10
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32 @_snprintf(ptr noundef %0, i64 noundef %1, ptr noundef %2, ...) #0 comdat {
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8
  store i64 %1, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  call void @llvm.va_start.p0(ptr %8)
  %9 = load ptr, ptr %8, align 8
  %10 = load ptr, ptr %4, align 8
  %11 = load i64, ptr %5, align 8
  %12 = load ptr, ptr %6, align 8
  %13 = call i32 @_vsnprintf(ptr noundef %12, i64 noundef %11, ptr noundef %10, ptr noundef %9)
  store i32 %13, ptr %7, align 4
  call void @llvm.va_end.p0(ptr %8)
  %14 = load i32, ptr %7, align 4
  ret i32 %14
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32 @_vsnprintf(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) #0 comdat {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  store ptr %3, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  store i64 %1, ptr %7, align 8
  store ptr %0, ptr %8, align 8
  %9 = load ptr, ptr %5, align 8
  %10 = load ptr, ptr %6, align 8
  %11 = load i64, ptr %7, align 8
  %12 = load ptr, ptr %8, align 8
  %13 = call i32 @_vsnprintf_l(ptr noundef %12, i64 noundef %11, ptr noundef %10, ptr noundef null, ptr noundef %9)
  ret i32 %13
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fibonacci(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  %4 = load i32, ptr %3, align 4
  %5 = icmp sle i32 %4, 1
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = load i32, ptr %3, align 4
  store i32 %7, ptr %2, align 4
  br label %16

8:                                                ; preds = %1
  %9 = load i32, ptr %3, align 4
  %10 = sub nsw i32 %9, 1
  %11 = call i32 @fibonacci(i32 noundef %10)
  %12 = load i32, ptr %3, align 4
  %13 = sub nsw i32 %12, 2
  %14 = call i32 @fibonacci(i32 noundef %13)
  %15 = add nsw i32 %11, %14
  store i32 %15, ptr %2, align 4
  br label %16

16:                                               ; preds = %8, %6
  %17 = load i32, ptr %2, align 4
  ret i32 %17
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bubbleSort(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %1, ptr %3, align 4
  store ptr %0, ptr %4, align 8
  store i32 0, ptr %5, align 4
  br label %8

8:                                                ; preds = %61, %2
  %9 = load i32, ptr %5, align 4
  %10 = load i32, ptr %3, align 4
  %11 = sub nsw i32 %10, 1
  %12 = icmp slt i32 %9, %11
  br i1 %12, label %13, label %64

13:                                               ; preds = %8
  store i32 0, ptr %6, align 4
  br label %14

14:                                               ; preds = %57, %13
  %15 = load i32, ptr %6, align 4
  %16 = load i32, ptr %3, align 4
  %17 = load i32, ptr %5, align 4
  %18 = sub nsw i32 %16, %17
  %19 = sub nsw i32 %18, 1
  %20 = icmp slt i32 %15, %19
  br i1 %20, label %21, label %60

21:                                               ; preds = %14
  %22 = load ptr, ptr %4, align 8
  %23 = load i32, ptr %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, ptr %22, i64 %24
  %26 = load i32, ptr %25, align 4
  %27 = load ptr, ptr %4, align 8
  %28 = load i32, ptr %6, align 4
  %29 = add nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, ptr %27, i64 %30
  %32 = load i32, ptr %31, align 4
  %33 = icmp sgt i32 %26, %32
  br i1 %33, label %34, label %56

34:                                               ; preds = %21
  %35 = load ptr, ptr %4, align 8
  %36 = load i32, ptr %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, ptr %35, i64 %37
  %39 = load i32, ptr %38, align 4
  store i32 %39, ptr %7, align 4
  %40 = load ptr, ptr %4, align 8
  %41 = load i32, ptr %6, align 4
  %42 = add nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, ptr %40, i64 %43
  %45 = load i32, ptr %44, align 4
  %46 = load ptr, ptr %4, align 8
  %47 = load i32, ptr %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, ptr %46, i64 %48
  store i32 %45, ptr %49, align 4
  %50 = load i32, ptr %7, align 4
  %51 = load ptr, ptr %4, align 8
  %52 = load i32, ptr %6, align 4
  %53 = add nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, ptr %51, i64 %54
  store i32 %50, ptr %55, align 4
  br label %56

56:                                               ; preds = %34, %21
  br label %57

57:                                               ; preds = %56
  %58 = load i32, ptr %6, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, ptr %6, align 4
  br label %14, !llvm.loop !8

60:                                               ; preds = %14
  br label %61

61:                                               ; preds = %60
  %62 = load i32, ptr %5, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, ptr %5, align 4
  br label %8, !llvm.loop !10

64:                                               ; preds = %8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @binarySearch(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  store i32 %3, ptr %6, align 4
  store i32 %2, ptr %7, align 4
  store i32 %1, ptr %8, align 4
  store ptr %0, ptr %9, align 8
  br label %11

11:                                               ; preds = %45, %4
  %12 = load i32, ptr %8, align 4
  %13 = load i32, ptr %7, align 4
  %14 = icmp sle i32 %12, %13
  br i1 %14, label %15, label %46

15:                                               ; preds = %11
  %16 = load i32, ptr %8, align 4
  %17 = load i32, ptr %7, align 4
  %18 = load i32, ptr %8, align 4
  %19 = sub nsw i32 %17, %18
  %20 = sdiv i32 %19, 2
  %21 = add nsw i32 %16, %20
  store i32 %21, ptr %10, align 4
  %22 = load ptr, ptr %9, align 8
  %23 = load i32, ptr %10, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, ptr %22, i64 %24
  %26 = load i32, ptr %25, align 4
  %27 = load i32, ptr %6, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %15
  %30 = load i32, ptr %10, align 4
  store i32 %30, ptr %5, align 4
  br label %47

31:                                               ; preds = %15
  %32 = load ptr, ptr %9, align 8
  %33 = load i32, ptr %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, ptr %32, i64 %34
  %36 = load i32, ptr %35, align 4
  %37 = load i32, ptr %6, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %31
  %40 = load i32, ptr %10, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, ptr %8, align 4
  br label %45

42:                                               ; preds = %31
  %43 = load i32, ptr %10, align 4
  %44 = sub nsw i32 %43, 1
  store i32 %44, ptr %7, align 4
  br label %45

45:                                               ; preds = %42, %39
  br label %11, !llvm.loop !11

46:                                               ; preds = %11
  store i32 -1, ptr %5, align 4
  br label %47

47:                                               ; preds = %46, %29
  %48 = load i32, ptr %5, align 4
  ret i32 %48
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reverseString(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  store ptr %0, ptr %2, align 8
  %6 = load ptr, ptr %2, align 8
  %7 = call i64 @strlen(ptr noundef %6) #5
  %8 = trunc i64 %7 to i32
  store i32 %8, ptr %3, align 4
  store i32 0, ptr %4, align 4
  br label %9

9:                                                ; preds = %40, %1
  %10 = load i32, ptr %4, align 4
  %11 = load i32, ptr %3, align 4
  %12 = sdiv i32 %11, 2
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %43

14:                                               ; preds = %9
  %15 = load ptr, ptr %2, align 8
  %16 = load i32, ptr %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, ptr %15, i64 %17
  %19 = load i8, ptr %18, align 1
  store i8 %19, ptr %5, align 1
  %20 = load ptr, ptr %2, align 8
  %21 = load i32, ptr %3, align 4
  %22 = sub nsw i32 %21, 1
  %23 = load i32, ptr %4, align 4
  %24 = sub nsw i32 %22, %23
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, ptr %20, i64 %25
  %27 = load i8, ptr %26, align 1
  %28 = load ptr, ptr %2, align 8
  %29 = load i32, ptr %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, ptr %28, i64 %30
  store i8 %27, ptr %31, align 1
  %32 = load i8, ptr %5, align 1
  %33 = load ptr, ptr %2, align 8
  %34 = load i32, ptr %3, align 4
  %35 = sub nsw i32 %34, 1
  %36 = load i32, ptr %4, align 4
  %37 = sub nsw i32 %35, %36
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, ptr %33, i64 %38
  store i8 %32, ptr %39, align 1
  br label %40

40:                                               ; preds = %14
  %41 = load i32, ptr %4, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, ptr %4, align 4
  br label %9, !llvm.loop !12

43:                                               ; preds = %9
  ret void
}

; Function Attrs: nounwind
declare dso_local i64 @strlen(ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @factorial(i32 noundef %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  %6 = load i32, ptr %3, align 4
  %7 = icmp sle i32 %6, 1
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i64 1, ptr %2, align 8
  br label %24

9:                                                ; preds = %1
  store i64 1, ptr %4, align 8
  store i32 2, ptr %5, align 4
  br label %10

10:                                               ; preds = %19, %9
  %11 = load i32, ptr %5, align 4
  %12 = load i32, ptr %3, align 4
  %13 = icmp sle i32 %11, %12
  br i1 %13, label %14, label %22

14:                                               ; preds = %10
  %15 = load i32, ptr %5, align 4
  %16 = sext i32 %15 to i64
  %17 = load i64, ptr %4, align 8
  %18 = mul i64 %17, %16
  store i64 %18, ptr %4, align 8
  br label %19

19:                                               ; preds = %14
  %20 = load i32, ptr %5, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, ptr %5, align 4
  br label %10, !llvm.loop !13

22:                                               ; preds = %10
  %23 = load i64, ptr %4, align 8
  store i64 %23, ptr %2, align 8
  br label %24

24:                                               ; preds = %22, %8
  %25 = load i64, ptr %2, align 8
  ret i64 %25
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xorEncrypt(ptr noundef %0, i32 noundef %1, i8 noundef %2) #0 {
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  store i8 %2, ptr %4, align 1
  store i32 %1, ptr %5, align 4
  store ptr %0, ptr %6, align 8
  store i32 0, ptr %7, align 4
  br label %8

8:                                                ; preds = %23, %3
  %9 = load i32, ptr %7, align 4
  %10 = load i32, ptr %5, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %26

12:                                               ; preds = %8
  %13 = load i8, ptr %4, align 1
  %14 = sext i8 %13 to i32
  %15 = load ptr, ptr %6, align 8
  %16 = load i32, ptr %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, ptr %15, i64 %17
  %19 = load i8, ptr %18, align 1
  %20 = sext i8 %19 to i32
  %21 = xor i32 %20, %14
  %22 = trunc i32 %21 to i8
  store i8 %22, ptr %18, align 1
  br label %23

23:                                               ; preds = %12
  %24 = load i32, ptr %7, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, ptr %7, align 4
  br label %8, !llvm.loop !14

26:                                               ; preds = %8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [7 x i32], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [12 x i8], align 1
  %10 = alloca [10 x i8], align 1
  %11 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  %12 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0CM@PBJCFIEG@?$DN?$DN?$DN?5Complex?5Program?5Test?5?$CINo?5Str@")
  %13 = load ptr, ptr @API_KEY, align 8
  %14 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0BB@HFJOCGGA@?$FL1?$FN?5API?5Key?3?5?$CFs?6?$AA@", ptr noundef %13)
  %15 = load ptr, ptr @DATABASE_PASSWORD, align 8
  %16 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0BG@KHOFODBN@?$FL1?$FN?5DB?5Password?3?5?$CFs?6?6?$AA@", ptr noundef %15)
  %17 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0BA@CGGDOOEJ@?$FL2?$FN?5Fibonacci?3?5?$AA@")
  store i32 0, ptr %2, align 4
  br label %18

18:                                               ; preds = %25, %0
  %19 = load i32, ptr %2, align 4
  %20 = icmp slt i32 %19, 10
  br i1 %20, label %21, label %28

21:                                               ; preds = %18
  %22 = load i32, ptr %2, align 4
  %23 = call i32 @fibonacci(i32 noundef %22)
  %24 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_03JDANDILB@?$CFd?5?$AA@", i32 noundef %23)
  br label %25

25:                                               ; preds = %21
  %26 = load i32, ptr %2, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, ptr %2, align 4
  br label %18, !llvm.loop !15

28:                                               ; preds = %18
  %29 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_02PHMGELLB@?6?6?$AA@")
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %3, ptr align 16 @__const.main.numbers, i64 28, i1 false)
  store i32 7, ptr %4, align 4
  %30 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0N@MLDBPHNM@?$FL3?$FN?5Before?3?5?$AA@")
  store i32 0, ptr %5, align 4
  br label %31

31:                                               ; preds = %41, %28
  %32 = load i32, ptr %5, align 4
  %33 = load i32, ptr %4, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %31
  %36 = load i32, ptr %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [7 x i32], ptr %3, i64 0, i64 %37
  %39 = load i32, ptr %38, align 4
  %40 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_03JDANDILB@?$CFd?5?$AA@", i32 noundef %39)
  br label %41

41:                                               ; preds = %35
  %42 = load i32, ptr %5, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, ptr %5, align 4
  br label %31, !llvm.loop !16

44:                                               ; preds = %31
  %45 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_01EEMJAFIK@?6?$AA@")
  %46 = load i32, ptr %4, align 4
  %47 = getelementptr inbounds [7 x i32], ptr %3, i64 0, i64 0
  call void @bubbleSort(ptr noundef %47, i32 noundef %46)
  %48 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0N@KPDGFLCJ@?$FL3?$FN?5After?3?5?5?$AA@")
  store i32 0, ptr %6, align 4
  br label %49

49:                                               ; preds = %59, %44
  %50 = load i32, ptr %6, align 4
  %51 = load i32, ptr %4, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %49
  %54 = load i32, ptr %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [7 x i32], ptr %3, i64 0, i64 %55
  %57 = load i32, ptr %56, align 4
  %58 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_03JDANDILB@?$CFd?5?$AA@", i32 noundef %57)
  br label %59

59:                                               ; preds = %53
  %60 = load i32, ptr %6, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, ptr %6, align 4
  br label %49, !llvm.loop !17

62:                                               ; preds = %49
  %63 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_02PHMGELLB@?6?6?$AA@")
  store i32 25, ptr %7, align 4
  %64 = load i32, ptr %7, align 4
  %65 = load i32, ptr %4, align 4
  %66 = sub nsw i32 %65, 1
  %67 = getelementptr inbounds [7 x i32], ptr %3, i64 0, i64 0
  %68 = call i32 @binarySearch(ptr noundef %67, i32 noundef 0, i32 noundef %66, i32 noundef %64)
  store i32 %68, ptr %8, align 4
  %69 = load i32, ptr %8, align 4
  %70 = load i32, ptr %7, align 4
  %71 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0BK@HCGJOFBN@?$FL4?$FN?5Search?5?$CFd?3?5index?5?$CFd?6?6?$AA@", i32 noundef %70, i32 noundef %69)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 1 @__const.main.testStr, i64 12, i1 false)
  %72 = getelementptr inbounds [12 x i8], ptr %9, i64 0, i64 0
  %73 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0BC@MCJGFKJO@?$FL5?$FN?5Original?3?5?$CFs?6?$AA@", ptr noundef %72)
  %74 = getelementptr inbounds [12 x i8], ptr %9, i64 0, i64 0
  call void @reverseString(ptr noundef %74)
  %75 = getelementptr inbounds [12 x i8], ptr %9, i64 0, i64 0
  %76 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0BD@PIELFFGC@?$FL5?$FN?5Reversed?3?5?$CFs?6?6?$AA@", ptr noundef %75)
  %77 = call i64 @factorial(i32 noundef 10)
  %78 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0BB@CBJOEOCO@?$FL6?$FN?510?$CB?5?$DN?5?$CFllu?6?6?$AA@", i64 noundef %77)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %10, ptr align 1 @__const.main.secret, i64 10, i1 false)
  %79 = getelementptr inbounds [10 x i8], ptr %10, i64 0, i64 0
  %80 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0BE@NAAFIHDA@?$FL7?$FN?5Before?5XOR?3?5?$CFs?6?$AA@", ptr noundef %79)
  %81 = getelementptr inbounds [10 x i8], ptr %10, i64 0, i64 0
  %82 = call i64 @strlen(ptr noundef %81) #5
  %83 = trunc i64 %82 to i32
  %84 = getelementptr inbounds [10 x i8], ptr %10, i64 0, i64 0
  call void @xorEncrypt(ptr noundef %84, i32 noundef %83, i8 noundef 66)
  %85 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0BC@OFLDCLNC@?$FL7?$FN?5XOR?8d?5bytes?3?5?$AA@")
  store i32 0, ptr %11, align 4
  br label %86

86:                                               ; preds = %96, %62
  %87 = load i32, ptr %11, align 4
  %88 = icmp slt i32 %87, 9
  br i1 %88, label %89, label %99

89:                                               ; preds = %86
  %90 = load i32, ptr %11, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [10 x i8], ptr %10, i64 0, i64 %91
  %93 = load i8, ptr %92, align 1
  %94 = zext i8 %93 to i32
  %95 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_05BFHEBJNP@?$CF02X?5?$AA@", i32 noundef %94)
  br label %96

96:                                               ; preds = %89
  %97 = load i32, ptr %11, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, ptr %11, align 4
  br label %86, !llvm.loop !18

99:                                               ; preds = %86
  %100 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_01EEMJAFIK@?6?$AA@")
  %101 = getelementptr inbounds [10 x i8], ptr %10, i64 0, i64 0
  %102 = call i64 @strlen(ptr noundef %101) #5
  %103 = trunc i64 %102 to i32
  %104 = getelementptr inbounds [10 x i8], ptr %10, i64 0, i64 0
  call void @xorEncrypt(ptr noundef %104, i32 noundef %103, i8 noundef 66)
  %105 = getelementptr inbounds [10 x i8], ptr %10, i64 0, i64 0
  %106 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0BE@PGAAFKID@?$FL7?$FN?5Decrypted?3?5?$CFs?6?6?$AA@", ptr noundef %105)
  %107 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@PMEDHIOL@?$DN?$DN?$DN?5Done?5?$DN?$DN?$DN?6?$AA@")
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32 @printf(ptr noundef %0, ...) #0 comdat {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.va_start.p0(ptr %4)
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %2, align 8
  %7 = call ptr @__acrt_iob_func(i32 noundef 1)
  %8 = call i32 @_vfprintf_l(ptr noundef %7, ptr noundef %6, ptr noundef null, ptr noundef %5)
  store i32 %8, ptr %3, align 4
  call void @llvm.va_end.p0(ptr %4)
  %9 = load i32, ptr %3, align 4
  ret i32 %9
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #3

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32 @_vsprintf_l(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 comdat {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %3, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store ptr %0, ptr %8, align 8
  %9 = load ptr, ptr %5, align 8
  %10 = load ptr, ptr %6, align 8
  %11 = load ptr, ptr %7, align 8
  %12 = load ptr, ptr %8, align 8
  %13 = call i32 @_vsnprintf_l(ptr noundef %12, i64 noundef -1, ptr noundef %11, ptr noundef %10, ptr noundef %9)
  ret i32 %13
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #3

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32 @_vsnprintf_l(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 comdat {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  store ptr %4, ptr %6, align 8
  store ptr %3, ptr %7, align 8
  store ptr %2, ptr %8, align 8
  store i64 %1, ptr %9, align 8
  store ptr %0, ptr %10, align 8
  %12 = load ptr, ptr %6, align 8
  %13 = load ptr, ptr %7, align 8
  %14 = load ptr, ptr %8, align 8
  %15 = load i64, ptr %9, align 8
  %16 = load ptr, ptr %10, align 8
  %17 = call ptr @__local_stdio_printf_options()
  %18 = load i64, ptr %17, align 8
  %19 = or i64 %18, 1
  %20 = call i32 @__stdio_common_vsprintf(i64 noundef %19, ptr noundef %16, i64 noundef %15, ptr noundef %14, ptr noundef %13, ptr noundef %12)
  store i32 %20, ptr %11, align 4
  %21 = load i32, ptr %11, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %5
  br label %26

24:                                               ; preds = %5
  %25 = load i32, ptr %11, align 4
  br label %26

26:                                               ; preds = %24, %23
  %27 = phi i32 [ -1, %23 ], [ %25, %24 ]
  ret i32 %27
}

declare dso_local i32 @__stdio_common_vsprintf(i64 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local ptr @__local_stdio_printf_options() #0 comdat {
  ret ptr @__local_stdio_printf_options._OptionsStorage
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32 @_vfprintf_l(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 comdat {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %3, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store ptr %0, ptr %8, align 8
  %9 = load ptr, ptr %5, align 8
  %10 = load ptr, ptr %6, align 8
  %11 = load ptr, ptr %7, align 8
  %12 = load ptr, ptr %8, align 8
  %13 = call ptr @__local_stdio_printf_options()
  %14 = load i64, ptr %13, align 8
  %15 = call i32 @__stdio_common_vfprintf(i64 noundef %14, ptr noundef %12, ptr noundef %11, ptr noundef %10, ptr noundef %9)
  ret i32 %15
}

declare dso_local ptr @__acrt_iob_func(i32 noundef) #4

declare dso_local i32 @__stdio_common_vfprintf(i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #4

attributes #0 = { noinline nounwind optnone uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 21.1.0", isOptimized: false, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "test\\complex_test2.c", directory: "C:\\Users\\snave\\Desktop\\Obfuscate_LLVM")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 2}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{i32 1, !"MaxTLSAlign", i32 65536}
!7 = !{!"clang version 21.1.0"}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = distinct !{!10, !9}
!11 = distinct !{!11, !9}
!12 = distinct !{!12, !9}
!13 = distinct !{!13, !9}
!14 = distinct !{!14, !9}
!15 = distinct !{!15, !9}
!16 = distinct !{!16, !9}
!17 = distinct !{!17, !9}
!18 = distinct !{!18, !9}
