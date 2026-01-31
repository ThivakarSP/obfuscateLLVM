; ModuleID = 'test\test_str.bc'
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
@"enc_??_C@_0BE@PDNMNBBD@MySecretPassword123?$AA@" = private global [20 x i8] c"\BB\8F\A5\93\95\84\93\82\A6\97\85\85\81\99\84\92\C7\C4\C5\F6"
@"enc_??_C@_0CC@LOBLLDFH@Hello?5from?5LLVM?5Obfuscator?5Demo?$CB@" = private global [34 x i8] c"Yt}}~1wc~|1]]G\\1^swdbrpe~c1Ut|~0\1B\11"
@"enc_??_C@_0M@NFHBOPJB@Secret?3?5?$CFs?6?$AA@" = private global [12 x i8] c"\CE\F8\FE\EF\F8\E9\A7\BD\B8\EE\97\9D"
@"enc_??_C@_0BC@PMABAFNI@add?$CI?$CFd?0?5?$CFd?$CJ?5?$DN?5?$CFd?6?$AA@" = private global [18 x i8] c"lii%(i!-(i$-0-(i\07\0D"
@"enc_??_C@_0BH@HNOCPEFJ@multiply?$CI?$CFd?0?5?$CFd?$CJ?5?$DN?5?$CFd?6?$AA@" = private global [23 x i8] c"\19\01\18\00\1D\04\18\0D\\Q\10XTQ\10]TITQ\10~t"
@"enc_??_C@_0BF@EDOKIGJP@a?5is?5greater?5than?5b?6?$AA@" = private global [21 x i8] c"'f/5f!4#'2#4f2.'(f$LF"
@"enc_??_C@_0CB@IPFEONME@b?5is?5greater?5than?5or?5equal?5to?5a?6@" = private global [33 x i8] c"O\0DD^\0DJ_HLYH_\0DYELC\0DB_\0DH\\XLA\0DYB\0DL'-"
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

7:                                                ; preds = %15, %2
  %8 = load i32, ptr %6, align 4
  %9 = load i32, ptr %3, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %18

11:                                               ; preds = %7
  %12 = load i32, ptr %4, align 4
  %13 = load i32, ptr %5, align 4
  %14 = call i32 @add(i32 noundef %13, i32 noundef %12)
  store i32 %14, ptr %5, align 4
  br label %15

15:                                               ; preds = %11
  %16 = load i32, ptr %6, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, ptr %6, align 4
  br label %7, !llvm.loop !5

18:                                               ; preds = %7
  %19 = load i32, ptr %5, align 4
  ret i32 %19
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  %4 = call i32 (ptr, ...) @printf(ptr noundef @"enc_??_C@_0CC@LOBLLDFH@Hello?5from?5LLVM?5Obfuscator?5Demo?$CB@")
  %5 = load ptr, ptr @secret, align 8
  %6 = call i32 (ptr, ...) @printf(ptr noundef @"enc_??_C@_0M@NFHBOPJB@Secret?3?5?$CFs?6?$AA@", ptr noundef %5)
  store i32 5, ptr %2, align 4
  store i32 3, ptr %3, align 4
  %7 = load i32, ptr %3, align 4
  %8 = load i32, ptr %2, align 4
  %9 = call i32 @add(i32 noundef %8, i32 noundef %7)
  %10 = load i32, ptr %3, align 4
  %11 = load i32, ptr %2, align 4
  %12 = call i32 (ptr, ...) @printf(ptr noundef @"enc_??_C@_0BC@PMABAFNI@add?$CI?$CFd?0?5?$CFd?$CJ?5?$DN?5?$CFd?6?$AA@", i32 noundef %11, i32 noundef %10, i32 noundef %9)
  %13 = load i32, ptr %3, align 4
  %14 = load i32, ptr %2, align 4
  %15 = call i32 @multiply(i32 noundef %14, i32 noundef %13)
  %16 = load i32, ptr %3, align 4
  %17 = load i32, ptr %2, align 4
  %18 = call i32 (ptr, ...) @printf(ptr noundef @"enc_??_C@_0BH@HNOCPEFJ@multiply?$CI?$CFd?0?5?$CFd?$CJ?5?$DN?5?$CFd?6?$AA@", i32 noundef %17, i32 noundef %16, i32 noundef %15)
  %19 = load i32, ptr %2, align 4
  %20 = load i32, ptr %3, align 4
  %21 = icmp sgt i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %0
  %23 = call i32 (ptr, ...) @printf(ptr noundef @"enc_??_C@_0BF@EDOKIGJP@a?5is?5greater?5than?5b?6?$AA@")
  br label %26

24:                                               ; preds = %0
  %25 = call i32 (ptr, ...) @printf(ptr noundef @"enc_??_C@_0CB@IPFEONME@b?5is?5greater?5than?5or?5equal?5to?5a?6@")
  br label %26

26:                                               ; preds = %24, %22
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
  %13 = call ptr @__local_stdio_printf_options()
  %14 = load i64, ptr %13, align 8
  %15 = call i32 @__stdio_common_vfprintf(i64 noundef %14, ptr noundef %12, ptr noundef %11, ptr noundef %10, ptr noundef %9)
  ret i32 %15
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
  %4 = xor i8 %3, -10
  store i8 %4, ptr %2, align 1
  %5 = add i32 %0, 1
  store i32 %5, ptr %i, align 4
  br label %loop_header

loop_exit:                                        ; preds = %loop_header
  %i4 = alloca i32, align 4
  store i32 0, ptr %i4, align 4
  br label %loop_header1

loop_header1:                                     ; preds = %loop_body2, %loop_exit
  %6 = load i32, ptr %i4, align 4
  %7 = icmp slt i32 %6, 34
  br i1 %7, label %loop_body2, label %loop_exit3

loop_body2:                                       ; preds = %loop_header1
  %8 = getelementptr inbounds i8, ptr @"enc_??_C@_0CC@LOBLLDFH@Hello?5from?5LLVM?5Obfuscator?5Demo?$CB@", i32 %6
  %9 = load i8, ptr %8, align 1
  %10 = xor i8 %9, 17
  store i8 %10, ptr %8, align 1
  %11 = add i32 %6, 1
  store i32 %11, ptr %i4, align 4
  br label %loop_header1

loop_exit3:                                       ; preds = %loop_header1
  %i8 = alloca i32, align 4
  store i32 0, ptr %i8, align 4
  br label %loop_header5

loop_header5:                                     ; preds = %loop_body6, %loop_exit3
  %12 = load i32, ptr %i8, align 4
  %13 = icmp slt i32 %12, 12
  br i1 %13, label %loop_body6, label %loop_exit7

loop_body6:                                       ; preds = %loop_header5
  %14 = getelementptr inbounds i8, ptr @"enc_??_C@_0M@NFHBOPJB@Secret?3?5?$CFs?6?$AA@", i32 %12
  %15 = load i8, ptr %14, align 1
  %16 = xor i8 %15, -99
  store i8 %16, ptr %14, align 1
  %17 = add i32 %12, 1
  store i32 %17, ptr %i8, align 4
  br label %loop_header5

loop_exit7:                                       ; preds = %loop_header5
  %i12 = alloca i32, align 4
  store i32 0, ptr %i12, align 4
  br label %loop_header9

loop_header9:                                     ; preds = %loop_body10, %loop_exit7
  %18 = load i32, ptr %i12, align 4
  %19 = icmp slt i32 %18, 18
  br i1 %19, label %loop_body10, label %loop_exit11

loop_body10:                                      ; preds = %loop_header9
  %20 = getelementptr inbounds i8, ptr @"enc_??_C@_0BC@PMABAFNI@add?$CI?$CFd?0?5?$CFd?$CJ?5?$DN?5?$CFd?6?$AA@", i32 %18
  %21 = load i8, ptr %20, align 1
  %22 = xor i8 %21, 13
  store i8 %22, ptr %20, align 1
  %23 = add i32 %18, 1
  store i32 %23, ptr %i12, align 4
  br label %loop_header9

loop_exit11:                                      ; preds = %loop_header9
  %i16 = alloca i32, align 4
  store i32 0, ptr %i16, align 4
  br label %loop_header13

loop_header13:                                    ; preds = %loop_body14, %loop_exit11
  %24 = load i32, ptr %i16, align 4
  %25 = icmp slt i32 %24, 23
  br i1 %25, label %loop_body14, label %loop_exit15

loop_body14:                                      ; preds = %loop_header13
  %26 = getelementptr inbounds i8, ptr @"enc_??_C@_0BH@HNOCPEFJ@multiply?$CI?$CFd?0?5?$CFd?$CJ?5?$DN?5?$CFd?6?$AA@", i32 %24
  %27 = load i8, ptr %26, align 1
  %28 = xor i8 %27, 116
  store i8 %28, ptr %26, align 1
  %29 = add i32 %24, 1
  store i32 %29, ptr %i16, align 4
  br label %loop_header13

loop_exit15:                                      ; preds = %loop_header13
  %i20 = alloca i32, align 4
  store i32 0, ptr %i20, align 4
  br label %loop_header17

loop_header17:                                    ; preds = %loop_body18, %loop_exit15
  %30 = load i32, ptr %i20, align 4
  %31 = icmp slt i32 %30, 21
  br i1 %31, label %loop_body18, label %loop_exit19

loop_body18:                                      ; preds = %loop_header17
  %32 = getelementptr inbounds i8, ptr @"enc_??_C@_0BF@EDOKIGJP@a?5is?5greater?5than?5b?6?$AA@", i32 %30
  %33 = load i8, ptr %32, align 1
  %34 = xor i8 %33, 70
  store i8 %34, ptr %32, align 1
  %35 = add i32 %30, 1
  store i32 %35, ptr %i20, align 4
  br label %loop_header17

loop_exit19:                                      ; preds = %loop_header17
  %i24 = alloca i32, align 4
  store i32 0, ptr %i24, align 4
  br label %loop_header21

loop_header21:                                    ; preds = %loop_body22, %loop_exit19
  %36 = load i32, ptr %i24, align 4
  %37 = icmp slt i32 %36, 33
  br i1 %37, label %loop_body22, label %loop_exit23

loop_body22:                                      ; preds = %loop_header21
  %38 = getelementptr inbounds i8, ptr @"enc_??_C@_0CB@IPFEONME@b?5is?5greater?5than?5or?5equal?5to?5a?6@", i32 %36
  %39 = load i8, ptr %38, align 1
  %40 = xor i8 %39, 45
  store i8 %40, ptr %38, align 1
  %41 = add i32 %36, 1
  store i32 %41, ptr %i24, align 4
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
