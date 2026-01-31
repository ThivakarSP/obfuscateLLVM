; ModuleID = 'test\final_v2.bc'
source_filename = "test\\demo.c"
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

@secret = dso_local global ptr @"enc_??_C@_0BE@PDNMNBBD@MySecretPassword123?$AA@", align 8
@__local_stdio_printf_options._OptionsStorage = internal global i64 0, align 8
@"enc_??_C@_0BE@PDNMNBBD@MySecretPassword123?$AA@" = private global [20 x i8] c"\DE\EA\C0\F6\F0\E1\F6\E7\C3\F2\E0\E0\E4\FC\E1\F7\A2\A1\A0\93"
@"enc_??_C@_0CC@LOBLLDFH@Hello?5from?5LLVM?5Obfuscator?5Demo?$CB@" = private global [34 x i8] c"yT]]^\11WC^\\\11}}g|\11~SWDBRPE^C\11uT\\^\10;1"
@"enc_??_C@_0M@NFHBOPJB@Secret?3?5?$CFs?6?$AA@" = private global [12 x i8] c"\BB\8D\8B\9A\8D\9C\D2\C8\CD\9B\E2\E8"
@"enc_??_C@_0BC@PMABAFNI@add?$CI?$CFd?0?5?$CFd?$CJ?5?$DN?5?$CFd?6?$AA@" = private global [18 x i8] c"\E0\E5\E5\A9\A4\E5\AD\A1\A4\E5\A8\A1\BC\A1\A4\E5\8B\81"
@"enc_??_C@_0BH@HNOCPEFJ@multiply?$CI?$CFd?0?5?$CFd?$CJ?5?$DN?5?$CFd?6?$AA@" = private global [23 x i8] c"AY@XE\\@U\04\09H\00\0C\09H\05\0C\11\0C\09H&,"
@"enc_??_C@_0BF@EDOKIGJP@a?5is?5greater?5than?5b?6?$AA@" = private global [21 x i8] c"\DB\9A\D3\C9\9A\DD\C8\DF\DB\CE\DF\C8\9A\CE\D2\DB\D4\9A\D8\B0\BA"
@"enc_??_C@_0CB@IPFEONME@b?5is?5greater?5than?5or?5equal?5to?5a?6@" = private global [33 x i8] c"\F3\B1\F8\E2\B1\F6\E3\F4\F0\E5\F4\E3\B1\E5\F9\F0\FF\B1\FE\E3\B1\F4\E0\E4\F0\FD\B1\E5\FE\B1\F0\9B\91"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 0, ptr @decrypt_strings, ptr null }]

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
  %fn_ptr = alloca ptr, align 8
  store ptr @_vsprintf_l, ptr %fn_ptr, align 8
  %10 = load ptr, ptr %fn_ptr, align 8
  %11 = call i32 %10(ptr noundef %9, ptr noundef %8, ptr noundef null, ptr noundef %7)
  store i32 %11, ptr %5, align 4
  call void @llvm.va_end.p0(ptr %6)
  %12 = load i32, ptr %5, align 4
  ret i32 %12
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
  %fn_ptr = alloca ptr, align 8
  store ptr @_vsnprintf_l, ptr %fn_ptr, align 8
  %10 = load ptr, ptr %fn_ptr, align 8
  %11 = call i32 %10(ptr noundef %9, i64 noundef -1, ptr noundef %8, ptr noundef null, ptr noundef %7)
  ret i32 %11
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
  %fn_ptr = alloca ptr, align 8
  store ptr @_vsnprintf, ptr %fn_ptr, align 8
  %13 = load ptr, ptr %fn_ptr, align 8
  %14 = call i32 %13(ptr noundef %12, i64 noundef %11, ptr noundef %10, ptr noundef %9)
  store i32 %14, ptr %7, align 4
  call void @llvm.va_end.p0(ptr %8)
  %15 = load i32, ptr %7, align 4
  ret i32 %15
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
  %fn_ptr = alloca ptr, align 8
  store ptr @_vsnprintf_l, ptr %fn_ptr, align 8
  %13 = load ptr, ptr %fn_ptr, align 8
  %14 = call i32 %13(ptr noundef %12, i64 noundef %11, ptr noundef %10, ptr noundef null, ptr noundef %9)
  ret i32 %14
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @add(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %1, ptr %3, align 4
  store i32 %0, ptr %4, align 4
  %5 = load i32, ptr %4, align 4
  %6 = load i32, ptr %3, align 4
  %7 = add nsw i32 %5, %6
  ret i32 %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @multiply(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %1, ptr %3, align 4
  store i32 %0, ptr %4, align 4
  store i32 0, ptr %5, align 4
  store i32 0, ptr %6, align 4
  br label %7

7:                                                ; preds = %16, %2
  %8 = load i32, ptr %6, align 4
  %9 = load i32, ptr %3, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %19

11:                                               ; preds = %7
  %12 = load i32, ptr %4, align 4
  %13 = load i32, ptr %5, align 4
  %fn_ptr = alloca ptr, align 8
  store ptr @add, ptr %fn_ptr, align 8
  %14 = load ptr, ptr %fn_ptr, align 8
  %15 = call i32 %14(i32 noundef %13, i32 noundef %12)
  store i32 %15, ptr %5, align 4
  br label %16

16:                                               ; preds = %11
  %17 = load i32, ptr %6, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, ptr %6, align 4
  br label %7, !llvm.loop !5

19:                                               ; preds = %7
  %20 = load i32, ptr %5, align 4
  ret i32 %20
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  %fn_ptr = alloca ptr, align 8
  store ptr @printf, ptr %fn_ptr, align 8
  %4 = load ptr, ptr %fn_ptr, align 8
  %5 = call i32 (ptr, ...) %4(ptr noundef @"enc_??_C@_0CC@LOBLLDFH@Hello?5from?5LLVM?5Obfuscator?5Demo?$CB@")
  %6 = load ptr, ptr @secret, align 8
  %fn_ptr1 = alloca ptr, align 8
  store ptr @printf, ptr %fn_ptr1, align 8
  %7 = load ptr, ptr %fn_ptr1, align 8
  %8 = call i32 (ptr, ...) %7(ptr noundef @"enc_??_C@_0M@NFHBOPJB@Secret?3?5?$CFs?6?$AA@", ptr noundef %6)
  store i32 5, ptr %2, align 4
  store i32 3, ptr %3, align 4
  %9 = load i32, ptr %3, align 4
  %10 = load i32, ptr %2, align 4
  %fn_ptr2 = alloca ptr, align 8
  store ptr @add, ptr %fn_ptr2, align 8
  %11 = load ptr, ptr %fn_ptr2, align 8
  %12 = call i32 %11(i32 noundef %10, i32 noundef %9)
  %13 = load i32, ptr %3, align 4
  %14 = load i32, ptr %2, align 4
  %fn_ptr3 = alloca ptr, align 8
  store ptr @printf, ptr %fn_ptr3, align 8
  %15 = load ptr, ptr %fn_ptr3, align 8
  %16 = call i32 (ptr, ...) %15(ptr noundef @"enc_??_C@_0BC@PMABAFNI@add?$CI?$CFd?0?5?$CFd?$CJ?5?$DN?5?$CFd?6?$AA@", i32 noundef %14, i32 noundef %13, i32 noundef %12)
  %17 = load i32, ptr %3, align 4
  %18 = load i32, ptr %2, align 4
  %fn_ptr4 = alloca ptr, align 8
  store ptr @multiply, ptr %fn_ptr4, align 8
  %19 = load ptr, ptr %fn_ptr4, align 8
  %20 = call i32 %19(i32 noundef %18, i32 noundef %17)
  %21 = load i32, ptr %3, align 4
  %22 = load i32, ptr %2, align 4
  %fn_ptr5 = alloca ptr, align 8
  store ptr @printf, ptr %fn_ptr5, align 8
  %23 = load ptr, ptr %fn_ptr5, align 8
  %24 = call i32 (ptr, ...) %23(ptr noundef @"enc_??_C@_0BH@HNOCPEFJ@multiply?$CI?$CFd?0?5?$CFd?$CJ?5?$DN?5?$CFd?6?$AA@", i32 noundef %22, i32 noundef %21, i32 noundef %20)
  %25 = load i32, ptr %2, align 4
  %26 = load i32, ptr %3, align 4
  %27 = icmp sgt i32 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %0
  %fn_ptr6 = alloca ptr, align 8
  store ptr @printf, ptr %fn_ptr6, align 8
  %29 = load ptr, ptr %fn_ptr6, align 8
  %30 = call i32 (ptr, ...) %29(ptr noundef @"enc_??_C@_0BF@EDOKIGJP@a?5is?5greater?5than?5b?6?$AA@")
  br label %34

31:                                               ; preds = %0
  %fn_ptr7 = alloca ptr, align 8
  store ptr @printf, ptr %fn_ptr7, align 8
  %32 = load ptr, ptr %fn_ptr7, align 8
  %33 = call i32 (ptr, ...) %32(ptr noundef @"enc_??_C@_0CB@IPFEONME@b?5is?5greater?5than?5or?5equal?5to?5a?6@")
  br label %34

34:                                               ; preds = %31, %28
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
  %fn_ptr = alloca ptr, align 8
  store ptr @__acrt_iob_func, ptr %fn_ptr, align 8
  %7 = load ptr, ptr %fn_ptr, align 8
  %8 = call ptr %7(i32 noundef 1)
  %fn_ptr1 = alloca ptr, align 8
  store ptr @_vfprintf_l, ptr %fn_ptr1, align 8
  %9 = load ptr, ptr %fn_ptr1, align 8
  %10 = call i32 %9(ptr noundef %8, ptr noundef %6, ptr noundef null, ptr noundef %5)
  store i32 %10, ptr %3, align 4
  call void @llvm.va_end.p0(ptr %4)
  %11 = load i32, ptr %3, align 4
  ret i32 %11
}

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
  %fn_ptr = alloca ptr, align 8
  store ptr @_vsnprintf_l, ptr %fn_ptr, align 8
  %13 = load ptr, ptr %fn_ptr, align 8
  %14 = call i32 %13(ptr noundef %12, i64 noundef -1, ptr noundef %11, ptr noundef %10, ptr noundef %9)
  ret i32 %14
}

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
  %fn_ptr = alloca ptr, align 8
  store ptr @__local_stdio_printf_options, ptr %fn_ptr, align 8
  %17 = load ptr, ptr %fn_ptr, align 8
  %18 = call ptr %17()
  %19 = load i64, ptr %18, align 8
  %20 = or i64 %19, 1
  %fn_ptr1 = alloca ptr, align 8
  store ptr @__stdio_common_vsprintf, ptr %fn_ptr1, align 8
  %21 = load ptr, ptr %fn_ptr1, align 8
  %22 = call i32 %21(i64 noundef %20, ptr noundef %16, i64 noundef %15, ptr noundef %14, ptr noundef %13, ptr noundef %12)
  store i32 %22, ptr %11, align 4
  %23 = load i32, ptr %11, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %5
  br label %28

26:                                               ; preds = %5
  %27 = load i32, ptr %11, align 4
  br label %28

28:                                               ; preds = %26, %25
  %29 = phi i32 [ -1, %25 ], [ %27, %26 ]
  ret i32 %29
}

declare dso_local i32 @__stdio_common_vsprintf(i64 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) #1

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
  %fn_ptr = alloca ptr, align 8
  store ptr @__local_stdio_printf_options, ptr %fn_ptr, align 8
  %13 = load ptr, ptr %fn_ptr, align 8
  %14 = call ptr %13()
  %15 = load i64, ptr %14, align 8
  %fn_ptr1 = alloca ptr, align 8
  store ptr @__stdio_common_vfprintf, ptr %fn_ptr1, align 8
  %16 = load ptr, ptr %fn_ptr1, align 8
  %17 = call i32 %16(i64 noundef %15, ptr noundef %12, ptr noundef %11, ptr noundef %10, ptr noundef %9)
  ret i32 %17
}

declare dso_local ptr @__acrt_iob_func(i32 noundef) #1

declare dso_local i32 @__stdio_common_vfprintf(i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

define internal void @decrypt_strings() {
entry:
  %i = alloca i32, align 4
  store i32 0, ptr %i, align 4
  br label %loop_header

loop_header:                                      ; preds = %loop_body, %entry
  %0 = load i32, ptr %i, align 4
  %1 = icmp slt i32 %0, 20
  br i1 %1, label %loop_body, label %loop_exit

loop_body:                                        ; preds = %loop_header
  %2 = getelementptr inbounds i8, ptr @"enc_??_C@_0BE@PDNMNBBD@MySecretPassword123?$AA@", i32 %0
  %3 = load i8, ptr %2, align 1
  %4 = or i8 %3, -109
  %5 = and i8 %3, -109
  %6 = sub i8 %4, %5
  store i8 %6, ptr %2, align 1
  %7 = add i32 %0, 1
  store i32 %7, ptr %i, align 4
  br label %loop_header

loop_exit:                                        ; preds = %loop_header
  %i4 = alloca i32, align 4
  store i32 0, ptr %i4, align 4
  br label %loop_header1

loop_header1:                                     ; preds = %loop_body2, %loop_exit
  %8 = load i32, ptr %i4, align 4
  %9 = icmp slt i32 %8, 34
  br i1 %9, label %loop_body2, label %loop_exit3

loop_body2:                                       ; preds = %loop_header1
  %10 = getelementptr inbounds i8, ptr @"enc_??_C@_0CC@LOBLLDFH@Hello?5from?5LLVM?5Obfuscator?5Demo?$CB@", i32 %8
  %11 = load i8, ptr %10, align 1
  %12 = or i8 %11, 49
  %13 = and i8 %11, 49
  %14 = sub i8 %12, %13
  store i8 %14, ptr %10, align 1
  %15 = sub i32 %8, -1
  store i32 %15, ptr %i4, align 4
  br label %loop_header1

loop_exit3:                                       ; preds = %loop_header1
  %i8 = alloca i32, align 4
  store i32 0, ptr %i8, align 4
  br label %loop_header5

loop_header5:                                     ; preds = %loop_body6, %loop_exit3
  %16 = load i32, ptr %i8, align 4
  %17 = icmp slt i32 %16, 12
  br i1 %17, label %loop_body6, label %loop_exit7

loop_body6:                                       ; preds = %loop_header5
  %18 = getelementptr inbounds i8, ptr @"enc_??_C@_0M@NFHBOPJB@Secret?3?5?$CFs?6?$AA@", i32 %16
  %19 = load i8, ptr %18, align 1
  %20 = xor i8 %19, -24
  store i8 %20, ptr %18, align 1
  %21 = sub i32 %16, -1
  store i32 %21, ptr %i8, align 4
  br label %loop_header5

loop_exit7:                                       ; preds = %loop_header5
  %i12 = alloca i32, align 4
  store i32 0, ptr %i12, align 4
  br label %loop_header9

loop_header9:                                     ; preds = %loop_body10, %loop_exit7
  %22 = load i32, ptr %i12, align 4
  %23 = icmp slt i32 %22, 18
  br i1 %23, label %loop_body10, label %loop_exit11

loop_body10:                                      ; preds = %loop_header9
  %24 = getelementptr inbounds i8, ptr @"enc_??_C@_0BC@PMABAFNI@add?$CI?$CFd?0?5?$CFd?$CJ?5?$DN?5?$CFd?6?$AA@", i32 %22
  %25 = load i8, ptr %24, align 1
  %26 = xor i8 %25, -127
  store i8 %26, ptr %24, align 1
  %27 = add i32 %22, 1
  store i32 %27, ptr %i12, align 4
  br label %loop_header9

loop_exit11:                                      ; preds = %loop_header9
  %i16 = alloca i32, align 4
  store i32 0, ptr %i16, align 4
  br label %loop_header13

loop_header13:                                    ; preds = %loop_body14, %loop_exit11
  %28 = load i32, ptr %i16, align 4
  %29 = icmp slt i32 %28, 23
  br i1 %29, label %loop_body14, label %loop_exit15

loop_body14:                                      ; preds = %loop_header13
  %30 = getelementptr inbounds i8, ptr @"enc_??_C@_0BH@HNOCPEFJ@multiply?$CI?$CFd?0?5?$CFd?$CJ?5?$DN?5?$CFd?6?$AA@", i32 %28
  %31 = load i8, ptr %30, align 1
  %32 = or i8 %31, 44
  %33 = and i8 %31, 44
  %34 = sub i8 %32, %33
  store i8 %34, ptr %30, align 1
  %35 = sub i32 %28, -1
  store i32 %35, ptr %i16, align 4
  br label %loop_header13

loop_exit15:                                      ; preds = %loop_header13
  %i20 = alloca i32, align 4
  store i32 0, ptr %i20, align 4
  br label %loop_header17

loop_header17:                                    ; preds = %loop_body18, %loop_exit15
  %36 = load i32, ptr %i20, align 4
  %37 = icmp slt i32 %36, 21
  br i1 %37, label %loop_body18, label %loop_exit19

loop_body18:                                      ; preds = %loop_header17
  %38 = getelementptr inbounds i8, ptr @"enc_??_C@_0BF@EDOKIGJP@a?5is?5greater?5than?5b?6?$AA@", i32 %36
  %39 = load i8, ptr %38, align 1
  %40 = or i8 %39, -70
  %41 = and i8 %39, -70
  %42 = sub i8 %40, %41
  store i8 %42, ptr %38, align 1
  %43 = sub i32 %36, -1
  store i32 %43, ptr %i20, align 4
  br label %loop_header17

loop_exit19:                                      ; preds = %loop_header17
  %i24 = alloca i32, align 4
  store i32 0, ptr %i24, align 4
  br label %loop_header21

loop_header21:                                    ; preds = %loop_body22, %loop_exit19
  %44 = load i32, ptr %i24, align 4
  %45 = icmp slt i32 %44, 33
  br i1 %45, label %loop_body22, label %loop_exit23

loop_body22:                                      ; preds = %loop_header21
  %46 = getelementptr inbounds i8, ptr @"enc_??_C@_0CB@IPFEONME@b?5is?5greater?5than?5or?5equal?5to?5a?6@", i32 %44
  %47 = load i8, ptr %46, align 1
  %48 = or i8 %47, -111
  %49 = and i8 %47, -111
  %50 = sub i8 %48, %49
  store i8 %50, ptr %46, align 1
  %51 = sub i32 %44, -1
  store i32 %51, ptr %i24, align 4
  br label %loop_header21

loop_exit23:                                      ; preds = %loop_header21
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #2

attributes #0 = { noinline nounwind optnone uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 1, !"MaxTLSAlign", i32 65536}
!4 = !{!"clang version 18.1.8"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
