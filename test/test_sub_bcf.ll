; ModuleID = 'test\test_sub_bcf.bc'
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

$"??_C@_0BE@PDNMNBBD@MySecretPassword123?$AA@" = comdat any

$"??_C@_0CC@LOBLLDFH@Hello?5from?5LLVM?5Obfuscator?5Demo?$CB@" = comdat any

$"??_C@_0M@NFHBOPJB@Secret?3?5?$CFs?6?$AA@" = comdat any

$"??_C@_0BC@PMABAFNI@add?$CI?$CFd?0?5?$CFd?$CJ?5?$DN?5?$CFd?6?$AA@" = comdat any

$"??_C@_0BH@HNOCPEFJ@multiply?$CI?$CFd?0?5?$CFd?$CJ?5?$DN?5?$CFd?6?$AA@" = comdat any

$"??_C@_0BF@EDOKIGJP@a?5is?5greater?5than?5b?6?$AA@" = comdat any

$"??_C@_0CB@IPFEONME@b?5is?5greater?5than?5or?5equal?5to?5a?6@" = comdat any

@"??_C@_0BE@PDNMNBBD@MySecretPassword123?$AA@" = linkonce_odr dso_local unnamed_addr constant [20 x i8] c"MySecretPassword123\00", comdat, align 1
@secret = dso_local global ptr @"??_C@_0BE@PDNMNBBD@MySecretPassword123?$AA@", align 8
@"??_C@_0CC@LOBLLDFH@Hello?5from?5LLVM?5Obfuscator?5Demo?$CB@" = linkonce_odr dso_local unnamed_addr constant [34 x i8] c"Hello from LLVM Obfuscator Demo!\0A\00", comdat, align 1
@"??_C@_0M@NFHBOPJB@Secret?3?5?$CFs?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [12 x i8] c"Secret: %s\0A\00", comdat, align 1
@"??_C@_0BC@PMABAFNI@add?$CI?$CFd?0?5?$CFd?$CJ?5?$DN?5?$CFd?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [18 x i8] c"add(%d, %d) = %d\0A\00", comdat, align 1
@"??_C@_0BH@HNOCPEFJ@multiply?$CI?$CFd?0?5?$CFd?$CJ?5?$DN?5?$CFd?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [23 x i8] c"multiply(%d, %d) = %d\0A\00", comdat, align 1
@"??_C@_0BF@EDOKIGJP@a?5is?5greater?5than?5b?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [21 x i8] c"a is greater than b\0A\00", comdat, align 1
@"??_C@_0CB@IPFEONME@b?5is?5greater?5than?5or?5equal?5to?5a?6@" = linkonce_odr dso_local unnamed_addr constant [33 x i8] c"b is greater than or equal to a\0A\00", comdat, align 1
@__local_stdio_printf_options._OptionsStorage = internal global i64 0, align 8
@opaque_x = private global i32 18
@opaque_x.1 = private global i32 69

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

7:                                                ; preds = %real_path1, %2
  %8 = load i32, ptr @opaque_x, align 4
  %9 = add i32 %8, 1
  %10 = mul i32 %8, %9
  %11 = srem i32 %10, 2
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %real_path, label %bogus_path

real_path:                                        ; preds = %bogus_path, %7
  %13 = load i32, ptr %6, align 4
  %14 = load i32, ptr %3, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %28

16:                                               ; preds = %real_path
  %17 = load i32, ptr %4, align 4
  %18 = load i32, ptr %5, align 4
  %19 = call i32 @add(i32 noundef %18, i32 noundef %17)
  store i32 %19, ptr %5, align 4
  br label %20

20:                                               ; preds = %16
  %21 = load i32, ptr @opaque_x.1, align 4
  %22 = add i32 %21, 1
  %23 = mul i32 %21, %22
  %24 = srem i32 %23, 2
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %real_path1, label %bogus_path2

real_path1:                                       ; preds = %bogus_path2, %20
  %26 = load i32, ptr %6, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, ptr %6, align 4
  br label %7, !llvm.loop !5

28:                                               ; preds = %real_path
  %29 = load i32, ptr %5, align 4
  ret i32 %29

bogus_path:                                       ; preds = %7
  br label %real_path

bogus_path2:                                      ; preds = %20
  br label %real_path1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  %4 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0CC@LOBLLDFH@Hello?5from?5LLVM?5Obfuscator?5Demo?$CB@")
  %5 = load ptr, ptr @secret, align 8
  %6 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0M@NFHBOPJB@Secret?3?5?$CFs?6?$AA@", ptr noundef %5)
  store i32 5, ptr %2, align 4
  store i32 3, ptr %3, align 4
  %7 = load i32, ptr %3, align 4
  %8 = load i32, ptr %2, align 4
  %9 = call i32 @add(i32 noundef %8, i32 noundef %7)
  %10 = load i32, ptr %3, align 4
  %11 = load i32, ptr %2, align 4
  %12 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0BC@PMABAFNI@add?$CI?$CFd?0?5?$CFd?$CJ?5?$DN?5?$CFd?6?$AA@", i32 noundef %11, i32 noundef %10, i32 noundef %9)
  %13 = load i32, ptr %3, align 4
  %14 = load i32, ptr %2, align 4
  %15 = call i32 @multiply(i32 noundef %14, i32 noundef %13)
  %16 = load i32, ptr %3, align 4
  %17 = load i32, ptr %2, align 4
  %18 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0BH@HNOCPEFJ@multiply?$CI?$CFd?0?5?$CFd?$CJ?5?$DN?5?$CFd?6?$AA@", i32 noundef %17, i32 noundef %16, i32 noundef %15)
  %19 = load i32, ptr %2, align 4
  %20 = load i32, ptr %3, align 4
  %21 = icmp sgt i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %0
  %23 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0BF@EDOKIGJP@a?5is?5greater?5than?5b?6?$AA@")
  br label %26

24:                                               ; preds = %0
  %25 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0CB@IPFEONME@b?5is?5greater?5than?5or?5equal?5to?5a?6@")
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
