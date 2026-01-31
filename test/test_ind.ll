; ModuleID = 'test\test_ind.bc'
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
  %5 = call i32 (ptr, ...) %4(ptr noundef @"??_C@_0CC@LOBLLDFH@Hello?5from?5LLVM?5Obfuscator?5Demo?$CB@")
  %6 = load ptr, ptr @secret, align 8
  %fn_ptr1 = alloca ptr, align 8
  store ptr @printf, ptr %fn_ptr1, align 8
  %7 = load ptr, ptr %fn_ptr1, align 8
  %8 = call i32 (ptr, ...) %7(ptr noundef @"??_C@_0M@NFHBOPJB@Secret?3?5?$CFs?6?$AA@", ptr noundef %6)
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
  %16 = call i32 (ptr, ...) %15(ptr noundef @"??_C@_0BC@PMABAFNI@add?$CI?$CFd?0?5?$CFd?$CJ?5?$DN?5?$CFd?6?$AA@", i32 noundef %14, i32 noundef %13, i32 noundef %12)
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
  %24 = call i32 (ptr, ...) %23(ptr noundef @"??_C@_0BH@HNOCPEFJ@multiply?$CI?$CFd?0?5?$CFd?$CJ?5?$DN?5?$CFd?6?$AA@", i32 noundef %22, i32 noundef %21, i32 noundef %20)
  %25 = load i32, ptr %2, align 4
  %26 = load i32, ptr %3, align 4
  %27 = icmp sgt i32 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %0
  %fn_ptr6 = alloca ptr, align 8
  store ptr @printf, ptr %fn_ptr6, align 8
  %29 = load ptr, ptr %fn_ptr6, align 8
  %30 = call i32 (ptr, ...) %29(ptr noundef @"??_C@_0BF@EDOKIGJP@a?5is?5greater?5than?5b?6?$AA@")
  br label %34

31:                                               ; preds = %0
  %fn_ptr7 = alloca ptr, align 8
  store ptr @printf, ptr %fn_ptr7, align 8
  %32 = load ptr, ptr %fn_ptr7, align 8
  %33 = call i32 (ptr, ...) %32(ptr noundef @"??_C@_0CB@IPFEONME@b?5is?5greater?5than?5or?5equal?5to?5a?6@")
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
