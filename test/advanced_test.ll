; ModuleID = 'test\advanced_test.c'
source_filename = "test\\advanced_test.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc19.50.35723"

%struct.Employee = type { i32, [50 x i8], float, %struct.anon }
%struct.anon = type { i32, i32, i32 }
%struct.Node = type { i32, ptr }
%struct.TreeNode = type { i32, ptr, ptr }

$sprintf = comdat any

$vsprintf = comdat any

$_snprintf = comdat any

$_vsnprintf = comdat any

$printf = comdat any

$_vsprintf_l = comdat any

$_vsnprintf_l = comdat any

$__local_stdio_printf_options = comdat any

$_vfprintf_l = comdat any

$"??_C@_0CB@FAKBKIDM@ULTRA_SECRET_MASTER_KEY_2024?$CB?$EA?$CD$@" = comdat any

$"??_C@_0BB@LFHBGFIE@x9Km$vQ2pLn8?$EAwZr?$AA@" = comdat any

$"??_C@_0DB@HMJFFDJM@mongodb?3?1?1admin?3s3cr3t_p?$EAss?$EAloca@" = comdat any

$"??_C@_0P@NMLGEECL@?5?5LinkedList?3?5?$AA@" = comdat any

$"??_C@_06EEJLMPCJ@?$CFd?5?9?$DO?5?$AA@" = comdat any

$"??_C@_05NJDBAOFA@NULL?6?$AA@" = comdat any

$"??_C@_03JDANDILB@?$CFd?5?$AA@" = comdat any

$"??_C@_0DF@JHDILJJI@?5?5ID?3?5?$CFd?0?5Name?3?5?$CFs?0?5Salary?3?5$?$CF?42@" = comdat any

$"??_C@_0CK@LPOBDNNI@?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN@" = comdat any

$"??_C@_0CE@EJCPCMGE@?5?5?5ADVANCED?5OBFUSCATION?5TEST?5SUI@" = comdat any

$"??_C@_0CL@HCFIFDFB@?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN@" = comdat any

$"??_C@_0BF@NDEFKBJF@?$FL1?$FN?5SECRET?5STRINGS?3?6?$AA@" = comdat any

$"??_C@_0BC@GAPJCPBL@?5?5Master?5Key?3?5?$CFs?6?$AA@" = comdat any

$"??_C@_0M@MDELOOJP@?5?5Salt?3?5?$CFs?6?$AA@" = comdat any

$"??_C@_0BE@GOCLGMDE@?5?5Hash?5of?5key?3?5?$CFu?6?6?$AA@" = comdat any

$"??_C@_0BC@GJMCPKKP@?$FL2?$FN?5LINKED?5LIST?3?6?$AA@" = comdat any

$"??_C@_0BD@PHCHAAIK@?5?5Node?5count?3?5?$CFd?6?6?$AA@" = comdat any

$"??_C@_0BJ@JAICFDEF@?$FL3?$FN?5BINARY?5SEARCH?5TREE?3?6?$AA@" = comdat any

$"??_C@_0M@CBEMPBHE@?5?5Inorder?3?5?$AA@" = comdat any

$"??_C@_0BA@GDIIEICK@?6?5?5Height?3?5?$CFd?6?6?$AA@" = comdat any

$"??_C@_0BB@GHDGGBPP@?$FL4?$FN?5QUICK?5SORT?3?6?$AA@" = comdat any

$"??_C@_0L@BHIAHDGA@?5?5Before?3?5?$AA@" = comdat any

$"??_C@_0M@IJOCEAHH@?6?5?5After?3?5?5?$AA@" = comdat any

$"??_C@_02PHMGELLB@?6?6?$AA@" = comdat any

$"??_C@_0BB@KHAFDKNE@?$FL5?$FN?5MERGE?5SORT?3?6?$AA@" = comdat any

$"??_C@_0BI@GKNDJAPM@?$FL6?$FN?5FUNCTION?5POINTERS?3?6?$AA@" = comdat any

$"??_C@_03LDFMNCOE@Add?$AA@" = comdat any

$"??_C@_03CPCCDDB@Sub?$AA@" = comdat any

$"??_C@_03CMLHCOBD@Mul?$AA@" = comdat any

$"??_C@_03PEKOMBFG@Div?$AA@" = comdat any

$"??_C@_0BC@MJHGJAPJ@?5?5?$CFs?$CI20?0?55?$CJ?5?$DN?5?$CFd?6?$AA@" = comdat any

$"??_C@_01EEMJAFIK@?6?$AA@" = comdat any

$"??_C@_0BE@NDAKEAHP@?$FL7?$FN?5CAESAR?5CIPHER?3?6?$AA@" = comdat any

$"??_C@_0BB@JGHDNADA@?5?5Original?3?5?5?$CFs?6?$AA@" = comdat any

$"??_C@_0BB@KMPBCGDP@?5?5Encrypted?3?5?$CFs?6?$AA@" = comdat any

$"??_C@_0BC@DMLJADPO@?5?5Decrypted?3?5?$CFs?6?6?$AA@" = comdat any

$"??_C@_0BI@ILJINFJG@?$FL8?$FN?5MATRIX?5OPERATIONS?3?6?$AA@" = comdat any

$"??_C@_0CO@BNDNFDBA@?5?5A?5x?5B?5?$DN?5?$FL?$FL?$CFd?0?$CFd?0?$CFd?$FN?0?$FL?$CFd?0?$CFd?0?$CFd?$FN@" = comdat any

$"??_C@_0BA@DDFJBKMH@?5?5det?$CIA?$CJ?5?$DN?5?$CFd?6?6?$AA@" = comdat any

$"??_C@_0BH@MHIEGMJN@?$FL9?$FN?5EMPLOYEE?5RECORDS?3?6?$AA@" = comdat any

$"??_C@_0BJ@GNBPMGGG@?5?5?5?5Bonus?5?$CI10?$CF?$CF?$CJ?3?5$?$CF?42f?6?$AA@" = comdat any

$"??_C@_0CL@HICMOOPP@?6?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN@" = comdat any

$"??_C@_0CG@BMBDDBKI@?5?5?5ALL?5TESTS?5COMPLETED?5SUCCESSFU@" = comdat any

@"??_C@_0CB@FAKBKIDM@ULTRA_SECRET_MASTER_KEY_2024?$CB?$EA?$CD$@" = linkonce_odr dso_local unnamed_addr constant [33 x i8] c"ULTRA_SECRET_MASTER_KEY_2024!@#$\00", comdat, align 1
@MASTER_KEY = dso_local global ptr @"??_C@_0CB@FAKBKIDM@ULTRA_SECRET_MASTER_KEY_2024?$CB?$EA?$CD$@", align 8
@"??_C@_0BB@LFHBGFIE@x9Km$vQ2pLn8?$EAwZr?$AA@" = linkonce_odr dso_local unnamed_addr constant [17 x i8] c"x9Km$vQ2pLn8@wZr\00", comdat, align 1
@ENCRYPTION_SALT = dso_local global ptr @"??_C@_0BB@LFHBGFIE@x9Km$vQ2pLn8?$EAwZr?$AA@", align 8
@"??_C@_0DB@HMJFFDJM@mongodb?3?1?1admin?3s3cr3t_p?$EAss?$EAloca@" = linkonce_odr dso_local unnamed_addr constant [49 x i8] c"mongodb://admin:s3cr3t_p@ss@localhost:27017/prod\00", comdat, align 1
@DB_CONNECTION = dso_local global ptr @"??_C@_0DB@HMJFFDJM@mongodb?3?1?1admin?3s3cr3t_p?$EAss?$EAloca@", align 8
@"??_C@_0P@NMLGEECL@?5?5LinkedList?3?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [15 x i8] c"  LinkedList: \00", comdat, align 1
@"??_C@_06EEJLMPCJ@?$CFd?5?9?$DO?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [7 x i8] c"%d -> \00", comdat, align 1
@"??_C@_05NJDBAOFA@NULL?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"NULL\0A\00", comdat, align 1
@"??_C@_03JDANDILB@?$CFd?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [4 x i8] c"%d \00", comdat, align 1
@"??_C@_0DF@JHDILJJI@?5?5ID?3?5?$CFd?0?5Name?3?5?$CFs?0?5Salary?3?5$?$CF?42@" = linkonce_odr dso_local unnamed_addr constant [53 x i8] c"  ID: %d, Name: %s, Salary: $%.2f, Joined: %d/%d/%d\0A\00", comdat, align 1
@"??_C@_0CK@LPOBDNNI@?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN@" = linkonce_odr dso_local unnamed_addr constant [42 x i8] c"========================================\0A\00", comdat, align 1
@"??_C@_0CE@EJCPCMGE@?5?5?5ADVANCED?5OBFUSCATION?5TEST?5SUI@" = linkonce_odr dso_local unnamed_addr constant [36 x i8] c"   ADVANCED OBFUSCATION TEST SUITE\0A\00", comdat, align 1
@"??_C@_0CL@HCFIFDFB@?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN@" = linkonce_odr dso_local unnamed_addr constant [43 x i8] c"========================================\0A\0A\00", comdat, align 1
@"??_C@_0BF@NDEFKBJF@?$FL1?$FN?5SECRET?5STRINGS?3?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [21 x i8] c"[1] SECRET STRINGS:\0A\00", comdat, align 1
@"??_C@_0BC@GAPJCPBL@?5?5Master?5Key?3?5?$CFs?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [18 x i8] c"  Master Key: %s\0A\00", comdat, align 1
@"??_C@_0M@MDELOOJP@?5?5Salt?3?5?$CFs?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [12 x i8] c"  Salt: %s\0A\00", comdat, align 1
@"??_C@_0BE@GOCLGMDE@?5?5Hash?5of?5key?3?5?$CFu?6?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [20 x i8] c"  Hash of key: %u\0A\0A\00", comdat, align 1
@"??_C@_0BC@GJMCPKKP@?$FL2?$FN?5LINKED?5LIST?3?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [18 x i8] c"[2] LINKED LIST:\0A\00", comdat, align 1
@"??_C@_0BD@PHCHAAIK@?5?5Node?5count?3?5?$CFd?6?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [19 x i8] c"  Node count: %d\0A\0A\00", comdat, align 1
@"??_C@_0BJ@JAICFDEF@?$FL3?$FN?5BINARY?5SEARCH?5TREE?3?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [25 x i8] c"[3] BINARY SEARCH TREE:\0A\00", comdat, align 1
@__const.main.treeVals = private unnamed_addr constant [7 x i32] [i32 50, i32 30, i32 70, i32 20, i32 40, i32 60, i32 80], align 16
@"??_C@_0M@CBEMPBHE@?5?5Inorder?3?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [12 x i8] c"  Inorder: \00", comdat, align 1
@"??_C@_0BA@GDIIEICK@?6?5?5Height?3?5?$CFd?6?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [16 x i8] c"\0A  Height: %d\0A\0A\00", comdat, align 1
@"??_C@_0BB@GHDGGBPP@?$FL4?$FN?5QUICK?5SORT?3?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [17 x i8] c"[4] QUICK SORT:\0A\00", comdat, align 1
@__const.main.arr1 = private unnamed_addr constant [7 x i32] [i32 64, i32 25, i32 12, i32 22, i32 11, i32 90, i32 45], align 16
@"??_C@_0L@BHIAHDGA@?5?5Before?3?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [11 x i8] c"  Before: \00", comdat, align 1
@"??_C@_0M@IJOCEAHH@?6?5?5After?3?5?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [12 x i8] c"\0A  After:  \00", comdat, align 1
@"??_C@_02PHMGELLB@?6?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [3 x i8] c"\0A\0A\00", comdat, align 1
@"??_C@_0BB@KHAFDKNE@?$FL5?$FN?5MERGE?5SORT?3?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [17 x i8] c"[5] MERGE SORT:\0A\00", comdat, align 1
@__const.main.arr2 = private unnamed_addr constant [7 x i32] [i32 38, i32 27, i32 43, i32 3, i32 9, i32 82, i32 10], align 16
@"??_C@_0BI@GKNDJAPM@?$FL6?$FN?5FUNCTION?5POINTERS?3?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [24 x i8] c"[6] FUNCTION POINTERS:\0A\00", comdat, align 1
@__const.main.ops = private unnamed_addr constant [4 x ptr] [ptr @add, ptr @subtract, ptr @multiply, ptr @divide], align 16
@"??_C@_03LDFMNCOE@Add?$AA@" = linkonce_odr dso_local unnamed_addr constant [4 x i8] c"Add\00", comdat, align 1
@"??_C@_03CPCCDDB@Sub?$AA@" = linkonce_odr dso_local unnamed_addr constant [4 x i8] c"Sub\00", comdat, align 1
@"??_C@_03CMLHCOBD@Mul?$AA@" = linkonce_odr dso_local unnamed_addr constant [4 x i8] c"Mul\00", comdat, align 1
@"??_C@_03PEKOMBFG@Div?$AA@" = linkonce_odr dso_local unnamed_addr constant [4 x i8] c"Div\00", comdat, align 1
@__const.main.names = private unnamed_addr constant [4 x ptr] [ptr @"??_C@_03LDFMNCOE@Add?$AA@", ptr @"??_C@_03CPCCDDB@Sub?$AA@", ptr @"??_C@_03CMLHCOBD@Mul?$AA@", ptr @"??_C@_03PEKOMBFG@Div?$AA@"], align 16
@"??_C@_0BC@MJHGJAPJ@?5?5?$CFs?$CI20?0?55?$CJ?5?$DN?5?$CFd?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [18 x i8] c"  %s(20, 5) = %d\0A\00", comdat, align 1
@"??_C@_01EEMJAFIK@?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [2 x i8] c"\0A\00", comdat, align 1
@"??_C@_0BE@NDAKEAHP@?$FL7?$FN?5CAESAR?5CIPHER?3?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [20 x i8] c"[7] CAESAR CIPHER:\0A\00", comdat, align 1
@__const.main.message = private unnamed_addr constant [15 x i8] c"Attack at dawn\00", align 1
@"??_C@_0BB@JGHDNADA@?5?5Original?3?5?5?$CFs?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [17 x i8] c"  Original:  %s\0A\00", comdat, align 1
@"??_C@_0BB@KMPBCGDP@?5?5Encrypted?3?5?$CFs?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [17 x i8] c"  Encrypted: %s\0A\00", comdat, align 1
@"??_C@_0BC@DMLJADPO@?5?5Decrypted?3?5?$CFs?6?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [18 x i8] c"  Decrypted: %s\0A\0A\00", comdat, align 1
@"??_C@_0BI@ILJINFJG@?$FL8?$FN?5MATRIX?5OPERATIONS?3?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [24 x i8] c"[8] MATRIX OPERATIONS:\0A\00", comdat, align 1
@__const.main.A = private unnamed_addr constant [3 x [3 x i32]] [[3 x i32] [i32 1, i32 2, i32 3], [3 x i32] [i32 4, i32 5, i32 6], [3 x i32] [i32 7, i32 8, i32 9]], align 16
@__const.main.B = private unnamed_addr constant [3 x [3 x i32]] [[3 x i32] [i32 9, i32 8, i32 7], [3 x i32] [i32 6, i32 5, i32 4], [3 x i32] [i32 3, i32 2, i32 1]], align 16
@"??_C@_0CO@BNDNFDBA@?5?5A?5x?5B?5?$DN?5?$FL?$FL?$CFd?0?$CFd?0?$CFd?$FN?0?$FL?$CFd?0?$CFd?0?$CFd?$FN@" = linkonce_odr dso_local unnamed_addr constant [46 x i8] c"  A x B = [[%d,%d,%d],[%d,%d,%d],[%d,%d,%d]]\0A\00", comdat, align 1
@"??_C@_0BA@DDFJBKMH@?5?5det?$CIA?$CJ?5?$DN?5?$CFd?6?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [16 x i8] c"  det(A) = %d\0A\0A\00", comdat, align 1
@"??_C@_0BH@MHIEGMJN@?$FL9?$FN?5EMPLOYEE?5RECORDS?3?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [23 x i8] c"[9] EMPLOYEE RECORDS:\0A\00", comdat, align 1
@__const.main.employees = private unnamed_addr constant [3 x %struct.Employee] [%struct.Employee { i32 101, [50 x i8] c"Alice Johnson\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 7.500000e+04, %struct.anon { i32 15, i32 3, i32 2020 } }, %struct.Employee { i32 102, [50 x i8] c"Bob Smith\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 8.250050e+04, %struct.anon { i32 1, i32 7, i32 2019 } }, %struct.Employee { i32 103, [50 x i8] c"Carol White\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 9.100000e+04, %struct.anon { i32 22, i32 11, i32 2018 } }], align 16
@"??_C@_0BJ@GNBPMGGG@?5?5?5?5Bonus?5?$CI10?$CF?$CF?$CJ?3?5$?$CF?42f?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [25 x i8] c"    Bonus (10%%): $%.2f\0A\00", comdat, align 1
@"??_C@_0CL@HICMOOPP@?6?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN@" = linkonce_odr dso_local unnamed_addr constant [43 x i8] c"\0A========================================\0A\00", comdat, align 1
@"??_C@_0CG@BMBDDBKI@?5?5?5ALL?5TESTS?5COMPLETED?5SUCCESSFU@" = linkonce_odr dso_local unnamed_addr constant [38 x i8] c"   ALL TESTS COMPLETED SUCCESSFULLY!\0A\00", comdat, align 1
@__local_stdio_printf_options._OptionsStorage = internal global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32 @sprintf(ptr noundef %0, ptr noundef %1, ...) #0 comdat {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.va_start(ptr %6)
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %3, align 8
  %9 = load ptr, ptr %4, align 8
  %10 = call i32 @_vsprintf_l(ptr noundef %9, ptr noundef %8, ptr noundef null, ptr noundef %7)
  store i32 %10, ptr %5, align 4
  call void @llvm.va_end(ptr %6)
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
  call void @llvm.va_start(ptr %8)
  %9 = load ptr, ptr %8, align 8
  %10 = load ptr, ptr %4, align 8
  %11 = load i64, ptr %5, align 8
  %12 = load ptr, ptr %6, align 8
  %13 = call i32 @_vsnprintf(ptr noundef %12, i64 noundef %11, ptr noundef %10, ptr noundef %9)
  store i32 %13, ptr %7, align 4
  call void @llvm.va_end(ptr %8)
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
define dso_local ptr @createNode(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  store i32 %0, ptr %2, align 4
  %4 = call noalias ptr @malloc(i64 noundef 16) #5
  store ptr %4, ptr %3, align 8
  %5 = load i32, ptr %2, align 4
  %6 = load ptr, ptr %3, align 8
  %7 = getelementptr inbounds %struct.Node, ptr %6, i32 0, i32 0
  store i32 %5, ptr %7, align 8
  %8 = load ptr, ptr %3, align 8
  %9 = getelementptr inbounds %struct.Node, ptr %8, i32 0, i32 1
  store ptr null, ptr %9, align 8
  %10 = load ptr, ptr %3, align 8
  ret ptr %10
}

; Function Attrs: allocsize(0)
declare dso_local noalias ptr @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @insertNode(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store i32 %1, ptr %3, align 4
  store ptr %0, ptr %4, align 8
  %7 = load i32, ptr %3, align 4
  %8 = call ptr @createNode(i32 noundef %7)
  store ptr %8, ptr %5, align 8
  %9 = load ptr, ptr %4, align 8
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load ptr, ptr %5, align 8
  %14 = load ptr, ptr %4, align 8
  store ptr %13, ptr %14, align 8
  br label %31

15:                                               ; preds = %2
  %16 = load ptr, ptr %4, align 8
  %17 = load ptr, ptr %16, align 8
  store ptr %17, ptr %6, align 8
  br label %18

18:                                               ; preds = %23, %15
  %19 = load ptr, ptr %6, align 8
  %20 = getelementptr inbounds %struct.Node, ptr %19, i32 0, i32 1
  %21 = load ptr, ptr %20, align 8
  %22 = icmp ne ptr %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load ptr, ptr %6, align 8
  %25 = getelementptr inbounds %struct.Node, ptr %24, i32 0, i32 1
  %26 = load ptr, ptr %25, align 8
  store ptr %26, ptr %6, align 8
  br label %18, !llvm.loop !5

27:                                               ; preds = %18
  %28 = load ptr, ptr %5, align 8
  %29 = load ptr, ptr %6, align 8
  %30 = getelementptr inbounds %struct.Node, ptr %29, i32 0, i32 1
  store ptr %28, ptr %30, align 8
  br label %31

31:                                               ; preds = %27, %12
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printList(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0P@NMLGEECL@?5?5LinkedList?3?5?$AA@")
  br label %4

4:                                                ; preds = %7, %1
  %5 = load ptr, ptr %2, align 8
  %6 = icmp ne ptr %5, null
  br i1 %6, label %7, label %15

7:                                                ; preds = %4
  %8 = load ptr, ptr %2, align 8
  %9 = getelementptr inbounds %struct.Node, ptr %8, i32 0, i32 0
  %10 = load i32, ptr %9, align 8
  %11 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_06EEJLMPCJ@?$CFd?5?9?$DO?5?$AA@", i32 noundef %10)
  %12 = load ptr, ptr %2, align 8
  %13 = getelementptr inbounds %struct.Node, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 8
  store ptr %14, ptr %2, align 8
  br label %4, !llvm.loop !7

15:                                               ; preds = %4
  %16 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_05NJDBAOFA@NULL?6?$AA@")
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32 @printf(ptr noundef %0, ...) #0 comdat {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.va_start(ptr %4)
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %2, align 8
  %7 = call ptr @__acrt_iob_func(i32 noundef 1)
  %8 = call i32 @_vfprintf_l(ptr noundef %7, ptr noundef %6, ptr noundef null, ptr noundef %5)
  store i32 %8, ptr %3, align 4
  call void @llvm.va_end(ptr %4)
  %9 = load i32, ptr %3, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @countNodes(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  store i32 0, ptr %3, align 4
  br label %4

4:                                                ; preds = %7, %1
  %5 = load ptr, ptr %2, align 8
  %6 = icmp ne ptr %5, null
  br i1 %6, label %7, label %13

7:                                                ; preds = %4
  %8 = load i32, ptr %3, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, ptr %3, align 4
  %10 = load ptr, ptr %2, align 8
  %11 = getelementptr inbounds %struct.Node, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8
  store ptr %12, ptr %2, align 8
  br label %4, !llvm.loop !8

13:                                               ; preds = %4
  %14 = load i32, ptr %3, align 4
  ret i32 %14
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @freeList(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  br label %4

4:                                                ; preds = %7, %1
  %5 = load ptr, ptr %2, align 8
  %6 = icmp ne ptr %5, null
  br i1 %6, label %7, label %13

7:                                                ; preds = %4
  %8 = load ptr, ptr %2, align 8
  store ptr %8, ptr %3, align 8
  %9 = load ptr, ptr %2, align 8
  %10 = getelementptr inbounds %struct.Node, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8
  store ptr %11, ptr %2, align 8
  %12 = load ptr, ptr %3, align 8
  call void @free(ptr noundef %12)
  br label %4, !llvm.loop !9

13:                                               ; preds = %4
  ret void
}

declare dso_local void @free(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @createTreeNode(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  store i32 %0, ptr %2, align 4
  %4 = call noalias ptr @malloc(i64 noundef 24) #5
  store ptr %4, ptr %3, align 8
  %5 = load i32, ptr %2, align 4
  %6 = load ptr, ptr %3, align 8
  %7 = getelementptr inbounds %struct.TreeNode, ptr %6, i32 0, i32 0
  store i32 %5, ptr %7, align 8
  %8 = load ptr, ptr %3, align 8
  %9 = getelementptr inbounds %struct.TreeNode, ptr %8, i32 0, i32 2
  store ptr null, ptr %9, align 8
  %10 = load ptr, ptr %3, align 8
  %11 = getelementptr inbounds %struct.TreeNode, ptr %10, i32 0, i32 1
  store ptr null, ptr %11, align 8
  %12 = load ptr, ptr %3, align 8
  ret ptr %12
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @insertBST(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  store i32 %1, ptr %4, align 4
  store ptr %0, ptr %5, align 8
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load i32, ptr %4, align 4
  %10 = call ptr @createTreeNode(i32 noundef %9)
  store ptr %10, ptr %3, align 8
  br label %35

11:                                               ; preds = %2
  %12 = load i32, ptr %4, align 4
  %13 = load ptr, ptr %5, align 8
  %14 = getelementptr inbounds %struct.TreeNode, ptr %13, i32 0, i32 0
  %15 = load i32, ptr %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %11
  %18 = load i32, ptr %4, align 4
  %19 = load ptr, ptr %5, align 8
  %20 = getelementptr inbounds %struct.TreeNode, ptr %19, i32 0, i32 1
  %21 = load ptr, ptr %20, align 8
  %22 = call ptr @insertBST(ptr noundef %21, i32 noundef %18)
  %23 = load ptr, ptr %5, align 8
  %24 = getelementptr inbounds %struct.TreeNode, ptr %23, i32 0, i32 1
  store ptr %22, ptr %24, align 8
  br label %33

25:                                               ; preds = %11
  %26 = load i32, ptr %4, align 4
  %27 = load ptr, ptr %5, align 8
  %28 = getelementptr inbounds %struct.TreeNode, ptr %27, i32 0, i32 2
  %29 = load ptr, ptr %28, align 8
  %30 = call ptr @insertBST(ptr noundef %29, i32 noundef %26)
  %31 = load ptr, ptr %5, align 8
  %32 = getelementptr inbounds %struct.TreeNode, ptr %31, i32 0, i32 2
  store ptr %30, ptr %32, align 8
  br label %33

33:                                               ; preds = %25, %17
  %34 = load ptr, ptr %5, align 8
  store ptr %34, ptr %3, align 8
  br label %35

35:                                               ; preds = %33, %8
  %36 = load ptr, ptr %3, align 8
  ret ptr %36
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @inorderTraversal(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp ne ptr %3, null
  br i1 %4, label %5, label %16

5:                                                ; preds = %1
  %6 = load ptr, ptr %2, align 8
  %7 = getelementptr inbounds %struct.TreeNode, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  call void @inorderTraversal(ptr noundef %8)
  %9 = load ptr, ptr %2, align 8
  %10 = getelementptr inbounds %struct.TreeNode, ptr %9, i32 0, i32 0
  %11 = load i32, ptr %10, align 8
  %12 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_03JDANDILB@?$CFd?5?$AA@", i32 noundef %11)
  %13 = load ptr, ptr %2, align 8
  %14 = getelementptr inbounds %struct.TreeNode, ptr %13, i32 0, i32 2
  %15 = load ptr, ptr %14, align 8
  call void @inorderTraversal(ptr noundef %15)
  br label %16

16:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @treeHeight(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 0, ptr %2, align 4
  br label %28

9:                                                ; preds = %1
  %10 = load ptr, ptr %3, align 8
  %11 = getelementptr inbounds %struct.TreeNode, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8
  %13 = call i32 @treeHeight(ptr noundef %12)
  store i32 %13, ptr %4, align 4
  %14 = load ptr, ptr %3, align 8
  %15 = getelementptr inbounds %struct.TreeNode, ptr %14, i32 0, i32 2
  %16 = load ptr, ptr %15, align 8
  %17 = call i32 @treeHeight(ptr noundef %16)
  store i32 %17, ptr %5, align 4
  %18 = load i32, ptr %4, align 4
  %19 = load i32, ptr %5, align 4
  %20 = icmp sgt i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %9
  %22 = load i32, ptr %4, align 4
  br label %25

23:                                               ; preds = %9
  %24 = load i32, ptr %5, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %22, %21 ], [ %24, %23 ]
  %27 = add nsw i32 %26, 1
  store i32 %27, ptr %2, align 4
  br label %28

28:                                               ; preds = %25, %8
  %29 = load i32, ptr %2, align 4
  ret i32 %29
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @freeTree(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp ne ptr %3, null
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = load ptr, ptr %2, align 8
  %7 = getelementptr inbounds %struct.TreeNode, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  call void @freeTree(ptr noundef %8)
  %9 = load ptr, ptr %2, align 8
  %10 = getelementptr inbounds %struct.TreeNode, ptr %9, i32 0, i32 2
  %11 = load ptr, ptr %10, align 8
  call void @freeTree(ptr noundef %11)
  %12 = load ptr, ptr %2, align 8
  call void @free(ptr noundef %12)
  br label %13

13:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @swap(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = load i32, ptr %6, align 4
  store i32 %7, ptr %5, align 4
  %8 = load ptr, ptr %3, align 8
  %9 = load i32, ptr %8, align 4
  %10 = load ptr, ptr %4, align 8
  store i32 %9, ptr %10, align 4
  %11 = load i32, ptr %5, align 4
  %12 = load ptr, ptr %3, align 8
  store i32 %11, ptr %12, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @partition(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %2, ptr %4, align 4
  store i32 %1, ptr %5, align 4
  store ptr %0, ptr %6, align 8
  %10 = load ptr, ptr %6, align 8
  %11 = load i32, ptr %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, ptr %10, i64 %12
  %14 = load i32, ptr %13, align 4
  store i32 %14, ptr %7, align 4
  %15 = load i32, ptr %5, align 4
  %16 = sub nsw i32 %15, 1
  store i32 %16, ptr %8, align 4
  %17 = load i32, ptr %5, align 4
  store i32 %17, ptr %9, align 4
  br label %18

18:                                               ; preds = %42, %3
  %19 = load i32, ptr %9, align 4
  %20 = load i32, ptr %4, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %45

22:                                               ; preds = %18
  %23 = load ptr, ptr %6, align 8
  %24 = load i32, ptr %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, ptr %23, i64 %25
  %27 = load i32, ptr %26, align 4
  %28 = load i32, ptr %7, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %22
  %31 = load i32, ptr %8, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, ptr %8, align 4
  %33 = load ptr, ptr %6, align 8
  %34 = load i32, ptr %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, ptr %33, i64 %35
  %37 = load ptr, ptr %6, align 8
  %38 = load i32, ptr %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, ptr %37, i64 %39
  call void @swap(ptr noundef %40, ptr noundef %36)
  br label %41

41:                                               ; preds = %30, %22
  br label %42

42:                                               ; preds = %41
  %43 = load i32, ptr %9, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, ptr %9, align 4
  br label %18, !llvm.loop !10

45:                                               ; preds = %18
  %46 = load ptr, ptr %6, align 8
  %47 = load i32, ptr %4, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, ptr %46, i64 %48
  %50 = load ptr, ptr %6, align 8
  %51 = load i32, ptr %8, align 4
  %52 = add nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, ptr %50, i64 %53
  call void @swap(ptr noundef %54, ptr noundef %49)
  %55 = load i32, ptr %8, align 4
  %56 = add nsw i32 %55, 1
  ret i32 %56
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @quickSort(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  store i32 %2, ptr %4, align 4
  store i32 %1, ptr %5, align 4
  store ptr %0, ptr %6, align 8
  %8 = load i32, ptr %5, align 4
  %9 = load i32, ptr %4, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %24

11:                                               ; preds = %3
  %12 = load i32, ptr %4, align 4
  %13 = load i32, ptr %5, align 4
  %14 = load ptr, ptr %6, align 8
  %15 = call i32 @partition(ptr noundef %14, i32 noundef %13, i32 noundef %12)
  store i32 %15, ptr %7, align 4
  %16 = load i32, ptr %7, align 4
  %17 = sub nsw i32 %16, 1
  %18 = load i32, ptr %5, align 4
  %19 = load ptr, ptr %6, align 8
  call void @quickSort(ptr noundef %19, i32 noundef %18, i32 noundef %17)
  %20 = load i32, ptr %4, align 4
  %21 = load i32, ptr %7, align 4
  %22 = add nsw i32 %21, 1
  %23 = load ptr, ptr %6, align 8
  call void @quickSort(ptr noundef %23, i32 noundef %22, i32 noundef %20)
  br label %24

24:                                               ; preds = %11, %3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @merge(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [50 x i32], align 16
  %12 = alloca [50 x i32], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %3, ptr %5, align 4
  store i32 %2, ptr %6, align 4
  store i32 %1, ptr %7, align 4
  store ptr %0, ptr %8, align 8
  %18 = load i32, ptr %6, align 4
  %19 = load i32, ptr %7, align 4
  %20 = sub nsw i32 %18, %19
  %21 = add nsw i32 %20, 1
  store i32 %21, ptr %9, align 4
  %22 = load i32, ptr %5, align 4
  %23 = load i32, ptr %6, align 4
  %24 = sub nsw i32 %22, %23
  store i32 %24, ptr %10, align 4
  store i32 0, ptr %13, align 4
  br label %25

25:                                               ; preds = %40, %4
  %26 = load i32, ptr %13, align 4
  %27 = load i32, ptr %9, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %43

29:                                               ; preds = %25
  %30 = load ptr, ptr %8, align 8
  %31 = load i32, ptr %7, align 4
  %32 = load i32, ptr %13, align 4
  %33 = add nsw i32 %31, %32
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, ptr %30, i64 %34
  %36 = load i32, ptr %35, align 4
  %37 = load i32, ptr %13, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [50 x i32], ptr %11, i64 0, i64 %38
  store i32 %36, ptr %39, align 4
  br label %40

40:                                               ; preds = %29
  %41 = load i32, ptr %13, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, ptr %13, align 4
  br label %25, !llvm.loop !11

43:                                               ; preds = %25
  store i32 0, ptr %14, align 4
  br label %44

44:                                               ; preds = %60, %43
  %45 = load i32, ptr %14, align 4
  %46 = load i32, ptr %10, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %63

48:                                               ; preds = %44
  %49 = load ptr, ptr %8, align 8
  %50 = load i32, ptr %6, align 4
  %51 = add nsw i32 %50, 1
  %52 = load i32, ptr %14, align 4
  %53 = add nsw i32 %51, %52
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, ptr %49, i64 %54
  %56 = load i32, ptr %55, align 4
  %57 = load i32, ptr %14, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [50 x i32], ptr %12, i64 0, i64 %58
  store i32 %56, ptr %59, align 4
  br label %60

60:                                               ; preds = %48
  %61 = load i32, ptr %14, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, ptr %14, align 4
  br label %44, !llvm.loop !12

63:                                               ; preds = %44
  store i32 0, ptr %15, align 4
  store i32 0, ptr %16, align 4
  %64 = load i32, ptr %7, align 4
  store i32 %64, ptr %17, align 4
  br label %65

65:                                               ; preds = %97, %63
  %66 = load i32, ptr %15, align 4
  %67 = load i32, ptr %9, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = load i32, ptr %16, align 4
  %71 = load i32, ptr %10, align 4
  %72 = icmp slt i32 %70, %71
  br label %73

73:                                               ; preds = %69, %65
  %74 = phi i1 [ false, %65 ], [ %72, %69 ]
  br i1 %74, label %75, label %104

75:                                               ; preds = %73
  %76 = load i32, ptr %15, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [50 x i32], ptr %11, i64 0, i64 %77
  %79 = load i32, ptr %78, align 4
  %80 = load i32, ptr %16, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [50 x i32], ptr %12, i64 0, i64 %81
  %83 = load i32, ptr %82, align 4
  %84 = icmp sle i32 %79, %83
  br i1 %84, label %85, label %91

85:                                               ; preds = %75
  %86 = load i32, ptr %15, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, ptr %15, align 4
  %88 = sext i32 %86 to i64
  %89 = getelementptr inbounds [50 x i32], ptr %11, i64 0, i64 %88
  %90 = load i32, ptr %89, align 4
  br label %97

91:                                               ; preds = %75
  %92 = load i32, ptr %16, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, ptr %16, align 4
  %94 = sext i32 %92 to i64
  %95 = getelementptr inbounds [50 x i32], ptr %12, i64 0, i64 %94
  %96 = load i32, ptr %95, align 4
  br label %97

97:                                               ; preds = %91, %85
  %98 = phi i32 [ %90, %85 ], [ %96, %91 ]
  %99 = load ptr, ptr %8, align 8
  %100 = load i32, ptr %17, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, ptr %17, align 4
  %102 = sext i32 %100 to i64
  %103 = getelementptr inbounds i32, ptr %99, i64 %102
  store i32 %98, ptr %103, align 4
  br label %65, !llvm.loop !13

104:                                              ; preds = %73
  br label %105

105:                                              ; preds = %109, %104
  %106 = load i32, ptr %15, align 4
  %107 = load i32, ptr %9, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %120

109:                                              ; preds = %105
  %110 = load i32, ptr %15, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, ptr %15, align 4
  %112 = sext i32 %110 to i64
  %113 = getelementptr inbounds [50 x i32], ptr %11, i64 0, i64 %112
  %114 = load i32, ptr %113, align 4
  %115 = load ptr, ptr %8, align 8
  %116 = load i32, ptr %17, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, ptr %17, align 4
  %118 = sext i32 %116 to i64
  %119 = getelementptr inbounds i32, ptr %115, i64 %118
  store i32 %114, ptr %119, align 4
  br label %105, !llvm.loop !14

120:                                              ; preds = %105
  br label %121

121:                                              ; preds = %125, %120
  %122 = load i32, ptr %16, align 4
  %123 = load i32, ptr %10, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %125, label %136

125:                                              ; preds = %121
  %126 = load i32, ptr %16, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, ptr %16, align 4
  %128 = sext i32 %126 to i64
  %129 = getelementptr inbounds [50 x i32], ptr %12, i64 0, i64 %128
  %130 = load i32, ptr %129, align 4
  %131 = load ptr, ptr %8, align 8
  %132 = load i32, ptr %17, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, ptr %17, align 4
  %134 = sext i32 %132 to i64
  %135 = getelementptr inbounds i32, ptr %131, i64 %134
  store i32 %130, ptr %135, align 4
  br label %121, !llvm.loop !15

136:                                              ; preds = %121
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mergeSort(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  store i32 %2, ptr %4, align 4
  store i32 %1, ptr %5, align 4
  store ptr %0, ptr %6, align 8
  %8 = load i32, ptr %5, align 4
  %9 = load i32, ptr %4, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %29

11:                                               ; preds = %3
  %12 = load i32, ptr %5, align 4
  %13 = load i32, ptr %4, align 4
  %14 = load i32, ptr %5, align 4
  %15 = sub nsw i32 %13, %14
  %16 = sdiv i32 %15, 2
  %17 = add nsw i32 %12, %16
  store i32 %17, ptr %7, align 4
  %18 = load i32, ptr %7, align 4
  %19 = load i32, ptr %5, align 4
  %20 = load ptr, ptr %6, align 8
  call void @mergeSort(ptr noundef %20, i32 noundef %19, i32 noundef %18)
  %21 = load i32, ptr %4, align 4
  %22 = load i32, ptr %7, align 4
  %23 = add nsw i32 %22, 1
  %24 = load ptr, ptr %6, align 8
  call void @mergeSort(ptr noundef %24, i32 noundef %23, i32 noundef %21)
  %25 = load i32, ptr %4, align 4
  %26 = load i32, ptr %7, align 4
  %27 = load i32, ptr %5, align 4
  %28 = load ptr, ptr %6, align 8
  call void @merge(ptr noundef %28, i32 noundef %27, i32 noundef %26, i32 noundef %25)
  br label %29

29:                                               ; preds = %11, %3
  ret void
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
define dso_local i32 @subtract(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %1, ptr %3, align 4
  store i32 %0, ptr %4, align 4
  %5 = load i32, ptr %4, align 4
  %6 = load i32, ptr %3, align 4
  %7 = sub nsw i32 %5, %6
  ret i32 %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @multiply(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %1, ptr %3, align 4
  store i32 %0, ptr %4, align 4
  %5 = load i32, ptr %4, align 4
  %6 = load i32, ptr %3, align 4
  %7 = mul nsw i32 %5, %6
  ret i32 %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @divide(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %1, ptr %3, align 4
  store i32 %0, ptr %4, align 4
  %5 = load i32, ptr %3, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = load i32, ptr %4, align 4
  %9 = load i32, ptr %3, align 4
  %10 = sdiv i32 %8, %9
  br label %12

11:                                               ; preds = %2
  br label %12

12:                                               ; preds = %11, %7
  %13 = phi i32 [ %10, %7 ], [ 0, %11 ]
  ret i32 %13
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @applyOperation(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  store i32 %2, ptr %4, align 4
  store i32 %1, ptr %5, align 4
  store ptr %0, ptr %6, align 8
  %7 = load ptr, ptr %6, align 8
  %8 = load i32, ptr %4, align 4
  %9 = load i32, ptr %5, align 4
  %10 = call i32 %7(i32 noundef %9, i32 noundef %8)
  ret i32 %10
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @caesarCipher(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  store i32 %1, ptr %3, align 4
  store ptr %0, ptr %4, align 8
  store i32 0, ptr %5, align 4
  br label %7

7:                                                ; preds = %64, %2
  %8 = load ptr, ptr %4, align 8
  %9 = load i32, ptr %5, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i8, ptr %8, i64 %10
  %12 = load i8, ptr %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %67

15:                                               ; preds = %7
  %16 = load ptr, ptr %4, align 8
  %17 = load i32, ptr %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, ptr %16, i64 %18
  %20 = load i8, ptr %19, align 1
  store i8 %20, ptr %6, align 1
  %21 = load i8, ptr %6, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp sge i32 %22, 65
  br i1 %23, label %24, label %41

24:                                               ; preds = %15
  %25 = load i8, ptr %6, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp sle i32 %26, 90
  br i1 %27, label %28, label %41

28:                                               ; preds = %24
  %29 = load i8, ptr %6, align 1
  %30 = sext i8 %29 to i32
  %31 = sub nsw i32 %30, 65
  %32 = load i32, ptr %3, align 4
  %33 = add nsw i32 %31, %32
  %34 = srem i32 %33, 26
  %35 = add nsw i32 %34, 65
  %36 = trunc i32 %35 to i8
  %37 = load ptr, ptr %4, align 8
  %38 = load i32, ptr %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, ptr %37, i64 %39
  store i8 %36, ptr %40, align 1
  br label %63

41:                                               ; preds = %24, %15
  %42 = load i8, ptr %6, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp sge i32 %43, 97
  br i1 %44, label %45, label %62

45:                                               ; preds = %41
  %46 = load i8, ptr %6, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp sle i32 %47, 122
  br i1 %48, label %49, label %62

49:                                               ; preds = %45
  %50 = load i8, ptr %6, align 1
  %51 = sext i8 %50 to i32
  %52 = sub nsw i32 %51, 97
  %53 = load i32, ptr %3, align 4
  %54 = add nsw i32 %52, %53
  %55 = srem i32 %54, 26
  %56 = add nsw i32 %55, 97
  %57 = trunc i32 %56 to i8
  %58 = load ptr, ptr %4, align 8
  %59 = load i32, ptr %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, ptr %58, i64 %60
  store i8 %57, ptr %61, align 1
  br label %62

62:                                               ; preds = %49, %45, %41
  br label %63

63:                                               ; preds = %62, %28
  br label %64

64:                                               ; preds = %63
  %65 = load i32, ptr %5, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, ptr %5, align 4
  br label %7, !llvm.loop !16

67:                                               ; preds = %7
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @simpleHash(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  store i32 5381, ptr %3, align 4
  br label %5

5:                                                ; preds = %11, %1
  %6 = load ptr, ptr %2, align 8
  %7 = getelementptr inbounds i8, ptr %6, i32 1
  store ptr %7, ptr %2, align 8
  %8 = load i8, ptr %6, align 1
  %9 = sext i8 %8 to i32
  store i32 %9, ptr %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %5
  %12 = load i32, ptr %3, align 4
  %13 = shl i32 %12, 5
  %14 = load i32, ptr %3, align 4
  %15 = add i32 %13, %14
  %16 = load i32, ptr %4, align 4
  %17 = add i32 %15, %16
  store i32 %17, ptr %3, align 4
  br label %5, !llvm.loop !17

18:                                               ; preds = %5
  %19 = load i32, ptr %3, align 4
  ret i32 %19
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @matrixMultiply(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store ptr %2, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  store i32 0, ptr %7, align 4
  br label %10

10:                                               ; preds = %63, %3
  %11 = load i32, ptr %7, align 4
  %12 = icmp slt i32 %11, 3
  br i1 %12, label %13, label %66

13:                                               ; preds = %10
  store i32 0, ptr %8, align 4
  br label %14

14:                                               ; preds = %59, %13
  %15 = load i32, ptr %8, align 4
  %16 = icmp slt i32 %15, 3
  br i1 %16, label %17, label %62

17:                                               ; preds = %14
  %18 = load ptr, ptr %4, align 8
  %19 = load i32, ptr %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [3 x i32], ptr %18, i64 %20
  %22 = load i32, ptr %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [3 x i32], ptr %21, i64 0, i64 %23
  store i32 0, ptr %24, align 4
  store i32 0, ptr %9, align 4
  br label %25

25:                                               ; preds = %55, %17
  %26 = load i32, ptr %9, align 4
  %27 = icmp slt i32 %26, 3
  br i1 %27, label %28, label %58

28:                                               ; preds = %25
  %29 = load ptr, ptr %6, align 8
  %30 = load i32, ptr %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [3 x i32], ptr %29, i64 %31
  %33 = load i32, ptr %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [3 x i32], ptr %32, i64 0, i64 %34
  %36 = load i32, ptr %35, align 4
  %37 = load ptr, ptr %5, align 8
  %38 = load i32, ptr %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [3 x i32], ptr %37, i64 %39
  %41 = load i32, ptr %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [3 x i32], ptr %40, i64 0, i64 %42
  %44 = load i32, ptr %43, align 4
  %45 = mul nsw i32 %36, %44
  %46 = load ptr, ptr %4, align 8
  %47 = load i32, ptr %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [3 x i32], ptr %46, i64 %48
  %50 = load i32, ptr %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [3 x i32], ptr %49, i64 0, i64 %51
  %53 = load i32, ptr %52, align 4
  %54 = add nsw i32 %53, %45
  store i32 %54, ptr %52, align 4
  br label %55

55:                                               ; preds = %28
  %56 = load i32, ptr %9, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, ptr %9, align 4
  br label %25, !llvm.loop !18

58:                                               ; preds = %25
  br label %59

59:                                               ; preds = %58
  %60 = load i32, ptr %8, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, ptr %8, align 4
  br label %14, !llvm.loop !19

62:                                               ; preds = %14
  br label %63

63:                                               ; preds = %62
  %64 = load i32, ptr %7, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, ptr %7, align 4
  br label %10, !llvm.loop !20

66:                                               ; preds = %10
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @matrixDeterminant(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds [3 x i32], ptr %3, i64 0
  %5 = getelementptr inbounds [3 x i32], ptr %4, i64 0, i64 0
  %6 = load i32, ptr %5, align 4
  %7 = load ptr, ptr %2, align 8
  %8 = getelementptr inbounds [3 x i32], ptr %7, i64 1
  %9 = getelementptr inbounds [3 x i32], ptr %8, i64 0, i64 1
  %10 = load i32, ptr %9, align 4
  %11 = load ptr, ptr %2, align 8
  %12 = getelementptr inbounds [3 x i32], ptr %11, i64 2
  %13 = getelementptr inbounds [3 x i32], ptr %12, i64 0, i64 2
  %14 = load i32, ptr %13, align 4
  %15 = mul nsw i32 %10, %14
  %16 = load ptr, ptr %2, align 8
  %17 = getelementptr inbounds [3 x i32], ptr %16, i64 1
  %18 = getelementptr inbounds [3 x i32], ptr %17, i64 0, i64 2
  %19 = load i32, ptr %18, align 4
  %20 = load ptr, ptr %2, align 8
  %21 = getelementptr inbounds [3 x i32], ptr %20, i64 2
  %22 = getelementptr inbounds [3 x i32], ptr %21, i64 0, i64 1
  %23 = load i32, ptr %22, align 4
  %24 = mul nsw i32 %19, %23
  %25 = sub nsw i32 %15, %24
  %26 = mul nsw i32 %6, %25
  %27 = load ptr, ptr %2, align 8
  %28 = getelementptr inbounds [3 x i32], ptr %27, i64 0
  %29 = getelementptr inbounds [3 x i32], ptr %28, i64 0, i64 1
  %30 = load i32, ptr %29, align 4
  %31 = load ptr, ptr %2, align 8
  %32 = getelementptr inbounds [3 x i32], ptr %31, i64 1
  %33 = getelementptr inbounds [3 x i32], ptr %32, i64 0, i64 0
  %34 = load i32, ptr %33, align 4
  %35 = load ptr, ptr %2, align 8
  %36 = getelementptr inbounds [3 x i32], ptr %35, i64 2
  %37 = getelementptr inbounds [3 x i32], ptr %36, i64 0, i64 2
  %38 = load i32, ptr %37, align 4
  %39 = mul nsw i32 %34, %38
  %40 = load ptr, ptr %2, align 8
  %41 = getelementptr inbounds [3 x i32], ptr %40, i64 1
  %42 = getelementptr inbounds [3 x i32], ptr %41, i64 0, i64 2
  %43 = load i32, ptr %42, align 4
  %44 = load ptr, ptr %2, align 8
  %45 = getelementptr inbounds [3 x i32], ptr %44, i64 2
  %46 = getelementptr inbounds [3 x i32], ptr %45, i64 0, i64 0
  %47 = load i32, ptr %46, align 4
  %48 = mul nsw i32 %43, %47
  %49 = sub nsw i32 %39, %48
  %50 = mul nsw i32 %30, %49
  %51 = sub nsw i32 %26, %50
  %52 = load ptr, ptr %2, align 8
  %53 = getelementptr inbounds [3 x i32], ptr %52, i64 0
  %54 = getelementptr inbounds [3 x i32], ptr %53, i64 0, i64 2
  %55 = load i32, ptr %54, align 4
  %56 = load ptr, ptr %2, align 8
  %57 = getelementptr inbounds [3 x i32], ptr %56, i64 1
  %58 = getelementptr inbounds [3 x i32], ptr %57, i64 0, i64 0
  %59 = load i32, ptr %58, align 4
  %60 = load ptr, ptr %2, align 8
  %61 = getelementptr inbounds [3 x i32], ptr %60, i64 2
  %62 = getelementptr inbounds [3 x i32], ptr %61, i64 0, i64 1
  %63 = load i32, ptr %62, align 4
  %64 = mul nsw i32 %59, %63
  %65 = load ptr, ptr %2, align 8
  %66 = getelementptr inbounds [3 x i32], ptr %65, i64 1
  %67 = getelementptr inbounds [3 x i32], ptr %66, i64 0, i64 1
  %68 = load i32, ptr %67, align 4
  %69 = load ptr, ptr %2, align 8
  %70 = getelementptr inbounds [3 x i32], ptr %69, i64 2
  %71 = getelementptr inbounds [3 x i32], ptr %70, i64 0, i64 0
  %72 = load i32, ptr %71, align 4
  %73 = mul nsw i32 %68, %72
  %74 = sub nsw i32 %64, %73
  %75 = mul nsw i32 %55, %74
  %76 = add nsw i32 %51, %75
  ret i32 %76
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printEmployee(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.Employee, ptr %3, i32 0, i32 3
  %5 = getelementptr inbounds %struct.anon, ptr %4, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = load ptr, ptr %2, align 8
  %8 = getelementptr inbounds %struct.Employee, ptr %7, i32 0, i32 3
  %9 = getelementptr inbounds %struct.anon, ptr %8, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = load ptr, ptr %2, align 8
  %12 = getelementptr inbounds %struct.Employee, ptr %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.anon, ptr %12, i32 0, i32 0
  %14 = load i32, ptr %13, align 4
  %15 = load ptr, ptr %2, align 8
  %16 = getelementptr inbounds %struct.Employee, ptr %15, i32 0, i32 2
  %17 = load float, ptr %16, align 4
  %18 = fpext float %17 to double
  %19 = load ptr, ptr %2, align 8
  %20 = getelementptr inbounds %struct.Employee, ptr %19, i32 0, i32 1
  %21 = getelementptr inbounds [50 x i8], ptr %20, i64 0, i64 0
  %22 = load ptr, ptr %2, align 8
  %23 = getelementptr inbounds %struct.Employee, ptr %22, i32 0, i32 0
  %24 = load i32, ptr %23, align 4
  %25 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0DF@JHDILJJI@?5?5ID?3?5?$CFd?0?5Name?3?5?$CFs?0?5Salary?3?5$?$CF?42@", i32 noundef %24, ptr noundef %21, double noundef %18, i32 noundef %14, i32 noundef %10, i32 noundef %6)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @calculateBonus(ptr noundef %0, float noundef %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca ptr, align 8
  store float %1, ptr %3, align 4
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.Employee, ptr %5, i32 0, i32 2
  %7 = load float, ptr %6, align 4
  %8 = load float, ptr %3, align 4
  %9 = fdiv float %8, 1.000000e+02
  %10 = fmul float %7, %9
  ret float %10
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca [7 x i32], align 16
  %6 = alloca i32, align 4
  %7 = alloca [7 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [7 x i32], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [4 x ptr], align 16
  %14 = alloca [4 x ptr], align 16
  %15 = alloca i32, align 4
  %16 = alloca [15 x i8], align 1
  %17 = alloca [3 x [3 x i32]], align 16
  %18 = alloca [3 x [3 x i32]], align 16
  %19 = alloca [3 x [3 x i32]], align 16
  %20 = alloca [3 x %struct.Employee], align 16
  %21 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  %22 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0CK@LPOBDNNI@?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN@")
  %23 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0CE@EJCPCMGE@?5?5?5ADVANCED?5OBFUSCATION?5TEST?5SUI@")
  %24 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0CL@HCFIFDFB@?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN@")
  %25 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0BF@NDEFKBJF@?$FL1?$FN?5SECRET?5STRINGS?3?6?$AA@")
  %26 = load ptr, ptr @MASTER_KEY, align 8
  %27 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0BC@GAPJCPBL@?5?5Master?5Key?3?5?$CFs?6?$AA@", ptr noundef %26)
  %28 = load ptr, ptr @ENCRYPTION_SALT, align 8
  %29 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0M@MDELOOJP@?5?5Salt?3?5?$CFs?6?$AA@", ptr noundef %28)
  %30 = load ptr, ptr @MASTER_KEY, align 8
  %31 = call i32 @simpleHash(ptr noundef %30)
  %32 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0BE@GOCLGMDE@?5?5Hash?5of?5key?3?5?$CFu?6?6?$AA@", i32 noundef %31)
  %33 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0BC@GJMCPKKP@?$FL2?$FN?5LINKED?5LIST?3?6?$AA@")
  store ptr null, ptr %2, align 8
  store i32 1, ptr %3, align 4
  br label %34

34:                                               ; preds = %40, %0
  %35 = load i32, ptr %3, align 4
  %36 = icmp sle i32 %35, 5
  br i1 %36, label %37, label %43

37:                                               ; preds = %34
  %38 = load i32, ptr %3, align 4
  %39 = mul nsw i32 %38, 10
  call void @insertNode(ptr noundef %2, i32 noundef %39)
  br label %40

40:                                               ; preds = %37
  %41 = load i32, ptr %3, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, ptr %3, align 4
  br label %34, !llvm.loop !21

43:                                               ; preds = %34
  %44 = load ptr, ptr %2, align 8
  call void @printList(ptr noundef %44)
  %45 = load ptr, ptr %2, align 8
  %46 = call i32 @countNodes(ptr noundef %45)
  %47 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0BD@PHCHAAIK@?5?5Node?5count?3?5?$CFd?6?6?$AA@", i32 noundef %46)
  %48 = load ptr, ptr %2, align 8
  call void @freeList(ptr noundef %48)
  %49 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0BJ@JAICFDEF@?$FL3?$FN?5BINARY?5SEARCH?5TREE?3?6?$AA@")
  store ptr null, ptr %4, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %5, ptr align 16 @__const.main.treeVals, i64 28, i1 false)
  store i32 0, ptr %6, align 4
  br label %50

50:                                               ; preds = %60, %43
  %51 = load i32, ptr %6, align 4
  %52 = icmp slt i32 %51, 7
  br i1 %52, label %53, label %63

53:                                               ; preds = %50
  %54 = load i32, ptr %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [7 x i32], ptr %5, i64 0, i64 %55
  %57 = load i32, ptr %56, align 4
  %58 = load ptr, ptr %4, align 8
  %59 = call ptr @insertBST(ptr noundef %58, i32 noundef %57)
  store ptr %59, ptr %4, align 8
  br label %60

60:                                               ; preds = %53
  %61 = load i32, ptr %6, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, ptr %6, align 4
  br label %50, !llvm.loop !22

63:                                               ; preds = %50
  %64 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0M@CBEMPBHE@?5?5Inorder?3?5?$AA@")
  %65 = load ptr, ptr %4, align 8
  call void @inorderTraversal(ptr noundef %65)
  %66 = load ptr, ptr %4, align 8
  %67 = call i32 @treeHeight(ptr noundef %66)
  %68 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0BA@GDIIEICK@?6?5?5Height?3?5?$CFd?6?6?$AA@", i32 noundef %67)
  %69 = load ptr, ptr %4, align 8
  call void @freeTree(ptr noundef %69)
  %70 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0BB@GHDGGBPP@?$FL4?$FN?5QUICK?5SORT?3?6?$AA@")
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %7, ptr align 16 @__const.main.arr1, i64 28, i1 false)
  %71 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0L@BHIAHDGA@?5?5Before?3?5?$AA@")
  store i32 0, ptr %8, align 4
  br label %72

72:                                               ; preds = %81, %63
  %73 = load i32, ptr %8, align 4
  %74 = icmp slt i32 %73, 7
  br i1 %74, label %75, label %84

75:                                               ; preds = %72
  %76 = load i32, ptr %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [7 x i32], ptr %7, i64 0, i64 %77
  %79 = load i32, ptr %78, align 4
  %80 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_03JDANDILB@?$CFd?5?$AA@", i32 noundef %79)
  br label %81

81:                                               ; preds = %75
  %82 = load i32, ptr %8, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, ptr %8, align 4
  br label %72, !llvm.loop !23

84:                                               ; preds = %72
  %85 = getelementptr inbounds [7 x i32], ptr %7, i64 0, i64 0
  call void @quickSort(ptr noundef %85, i32 noundef 0, i32 noundef 6)
  %86 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0M@IJOCEAHH@?6?5?5After?3?5?5?$AA@")
  store i32 0, ptr %9, align 4
  br label %87

87:                                               ; preds = %96, %84
  %88 = load i32, ptr %9, align 4
  %89 = icmp slt i32 %88, 7
  br i1 %89, label %90, label %99

90:                                               ; preds = %87
  %91 = load i32, ptr %9, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [7 x i32], ptr %7, i64 0, i64 %92
  %94 = load i32, ptr %93, align 4
  %95 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_03JDANDILB@?$CFd?5?$AA@", i32 noundef %94)
  br label %96

96:                                               ; preds = %90
  %97 = load i32, ptr %9, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, ptr %9, align 4
  br label %87, !llvm.loop !24

99:                                               ; preds = %87
  %100 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_02PHMGELLB@?6?6?$AA@")
  %101 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0BB@KHAFDKNE@?$FL5?$FN?5MERGE?5SORT?3?6?$AA@")
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %10, ptr align 16 @__const.main.arr2, i64 28, i1 false)
  %102 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0L@BHIAHDGA@?5?5Before?3?5?$AA@")
  store i32 0, ptr %11, align 4
  br label %103

103:                                              ; preds = %112, %99
  %104 = load i32, ptr %11, align 4
  %105 = icmp slt i32 %104, 7
  br i1 %105, label %106, label %115

106:                                              ; preds = %103
  %107 = load i32, ptr %11, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [7 x i32], ptr %10, i64 0, i64 %108
  %110 = load i32, ptr %109, align 4
  %111 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_03JDANDILB@?$CFd?5?$AA@", i32 noundef %110)
  br label %112

112:                                              ; preds = %106
  %113 = load i32, ptr %11, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, ptr %11, align 4
  br label %103, !llvm.loop !25

115:                                              ; preds = %103
  %116 = getelementptr inbounds [7 x i32], ptr %10, i64 0, i64 0
  call void @mergeSort(ptr noundef %116, i32 noundef 0, i32 noundef 6)
  %117 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0M@IJOCEAHH@?6?5?5After?3?5?5?$AA@")
  store i32 0, ptr %12, align 4
  br label %118

118:                                              ; preds = %127, %115
  %119 = load i32, ptr %12, align 4
  %120 = icmp slt i32 %119, 7
  br i1 %120, label %121, label %130

121:                                              ; preds = %118
  %122 = load i32, ptr %12, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [7 x i32], ptr %10, i64 0, i64 %123
  %125 = load i32, ptr %124, align 4
  %126 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_03JDANDILB@?$CFd?5?$AA@", i32 noundef %125)
  br label %127

127:                                              ; preds = %121
  %128 = load i32, ptr %12, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, ptr %12, align 4
  br label %118, !llvm.loop !26

130:                                              ; preds = %118
  %131 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_02PHMGELLB@?6?6?$AA@")
  %132 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0BI@GKNDJAPM@?$FL6?$FN?5FUNCTION?5POINTERS?3?6?$AA@")
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %13, ptr align 16 @__const.main.ops, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %14, ptr align 16 @__const.main.names, i64 32, i1 false)
  store i32 0, ptr %15, align 4
  br label %133

133:                                              ; preds = %147, %130
  %134 = load i32, ptr %15, align 4
  %135 = icmp slt i32 %134, 4
  br i1 %135, label %136, label %150

136:                                              ; preds = %133
  %137 = load i32, ptr %15, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [4 x ptr], ptr %13, i64 0, i64 %138
  %140 = load ptr, ptr %139, align 8
  %141 = call i32 @applyOperation(ptr noundef %140, i32 noundef 20, i32 noundef 5)
  %142 = load i32, ptr %15, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [4 x ptr], ptr %14, i64 0, i64 %143
  %145 = load ptr, ptr %144, align 8
  %146 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0BC@MJHGJAPJ@?5?5?$CFs?$CI20?0?55?$CJ?5?$DN?5?$CFd?6?$AA@", ptr noundef %145, i32 noundef %141)
  br label %147

147:                                              ; preds = %136
  %148 = load i32, ptr %15, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, ptr %15, align 4
  br label %133, !llvm.loop !27

150:                                              ; preds = %133
  %151 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_01EEMJAFIK@?6?$AA@")
  %152 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0BE@NDAKEAHP@?$FL7?$FN?5CAESAR?5CIPHER?3?6?$AA@")
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %16, ptr align 1 @__const.main.message, i64 15, i1 false)
  %153 = getelementptr inbounds [15 x i8], ptr %16, i64 0, i64 0
  %154 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0BB@JGHDNADA@?5?5Original?3?5?5?$CFs?6?$AA@", ptr noundef %153)
  %155 = getelementptr inbounds [15 x i8], ptr %16, i64 0, i64 0
  call void @caesarCipher(ptr noundef %155, i32 noundef 3)
  %156 = getelementptr inbounds [15 x i8], ptr %16, i64 0, i64 0
  %157 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0BB@KMPBCGDP@?5?5Encrypted?3?5?$CFs?6?$AA@", ptr noundef %156)
  %158 = getelementptr inbounds [15 x i8], ptr %16, i64 0, i64 0
  call void @caesarCipher(ptr noundef %158, i32 noundef 23)
  %159 = getelementptr inbounds [15 x i8], ptr %16, i64 0, i64 0
  %160 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0BC@DMLJADPO@?5?5Decrypted?3?5?$CFs?6?6?$AA@", ptr noundef %159)
  %161 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0BI@ILJINFJG@?$FL8?$FN?5MATRIX?5OPERATIONS?3?6?$AA@")
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %17, ptr align 16 @__const.main.A, i64 36, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %18, ptr align 16 @__const.main.B, i64 36, i1 false)
  %162 = getelementptr inbounds [3 x [3 x i32]], ptr %19, i64 0, i64 0
  %163 = getelementptr inbounds [3 x [3 x i32]], ptr %18, i64 0, i64 0
  %164 = getelementptr inbounds [3 x [3 x i32]], ptr %17, i64 0, i64 0
  call void @matrixMultiply(ptr noundef %164, ptr noundef %163, ptr noundef %162)
  %165 = getelementptr inbounds [3 x [3 x i32]], ptr %19, i64 0, i64 2
  %166 = getelementptr inbounds [3 x i32], ptr %165, i64 0, i64 2
  %167 = load i32, ptr %166, align 8
  %168 = getelementptr inbounds [3 x [3 x i32]], ptr %19, i64 0, i64 2
  %169 = getelementptr inbounds [3 x i32], ptr %168, i64 0, i64 1
  %170 = load i32, ptr %169, align 4
  %171 = getelementptr inbounds [3 x [3 x i32]], ptr %19, i64 0, i64 2
  %172 = getelementptr inbounds [3 x i32], ptr %171, i64 0, i64 0
  %173 = load i32, ptr %172, align 8
  %174 = getelementptr inbounds [3 x [3 x i32]], ptr %19, i64 0, i64 1
  %175 = getelementptr inbounds [3 x i32], ptr %174, i64 0, i64 2
  %176 = load i32, ptr %175, align 4
  %177 = getelementptr inbounds [3 x [3 x i32]], ptr %19, i64 0, i64 1
  %178 = getelementptr inbounds [3 x i32], ptr %177, i64 0, i64 1
  %179 = load i32, ptr %178, align 4
  %180 = getelementptr inbounds [3 x [3 x i32]], ptr %19, i64 0, i64 1
  %181 = getelementptr inbounds [3 x i32], ptr %180, i64 0, i64 0
  %182 = load i32, ptr %181, align 4
  %183 = getelementptr inbounds [3 x [3 x i32]], ptr %19, i64 0, i64 0
  %184 = getelementptr inbounds [3 x i32], ptr %183, i64 0, i64 2
  %185 = load i32, ptr %184, align 8
  %186 = getelementptr inbounds [3 x [3 x i32]], ptr %19, i64 0, i64 0
  %187 = getelementptr inbounds [3 x i32], ptr %186, i64 0, i64 1
  %188 = load i32, ptr %187, align 4
  %189 = getelementptr inbounds [3 x [3 x i32]], ptr %19, i64 0, i64 0
  %190 = getelementptr inbounds [3 x i32], ptr %189, i64 0, i64 0
  %191 = load i32, ptr %190, align 16
  %192 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0CO@BNDNFDBA@?5?5A?5x?5B?5?$DN?5?$FL?$FL?$CFd?0?$CFd?0?$CFd?$FN?0?$FL?$CFd?0?$CFd?0?$CFd?$FN@", i32 noundef %191, i32 noundef %188, i32 noundef %185, i32 noundef %182, i32 noundef %179, i32 noundef %176, i32 noundef %173, i32 noundef %170, i32 noundef %167)
  %193 = getelementptr inbounds [3 x [3 x i32]], ptr %17, i64 0, i64 0
  %194 = call i32 @matrixDeterminant(ptr noundef %193)
  %195 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0BA@DDFJBKMH@?5?5det?$CIA?$CJ?5?$DN?5?$CFd?6?6?$AA@", i32 noundef %194)
  %196 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0BH@MHIEGMJN@?$FL9?$FN?5EMPLOYEE?5RECORDS?3?6?$AA@")
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %20, ptr align 16 @__const.main.employees, i64 216, i1 false)
  store i32 0, ptr %21, align 4
  br label %197

197:                                              ; preds = %210, %150
  %198 = load i32, ptr %21, align 4
  %199 = icmp slt i32 %198, 3
  br i1 %199, label %200, label %213

200:                                              ; preds = %197
  %201 = load i32, ptr %21, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds [3 x %struct.Employee], ptr %20, i64 0, i64 %202
  call void @printEmployee(ptr noundef %203)
  %204 = load i32, ptr %21, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds [3 x %struct.Employee], ptr %20, i64 0, i64 %205
  %207 = call float @calculateBonus(ptr noundef %206, float noundef 1.000000e+01)
  %208 = fpext float %207 to double
  %209 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0BJ@GNBPMGGG@?5?5?5?5Bonus?5?$CI10?$CF?$CF?$CJ?3?5$?$CF?42f?6?$AA@", double noundef %208)
  br label %210

210:                                              ; preds = %200
  %211 = load i32, ptr %21, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, ptr %21, align 4
  br label %197, !llvm.loop !28

213:                                              ; preds = %197
  %214 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0CL@HICMOOPP@?6?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN@")
  %215 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0CG@BMBDDBKI@?5?5?5ALL?5TESTS?5COMPLETED?5SUCCESSFU@")
  %216 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0CK@LPOBDNNI@?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN?$DN@")
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #4

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
declare void @llvm.va_end(ptr) #4

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

declare dso_local i32 @__stdio_common_vsprintf(i64 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) #2

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

declare dso_local ptr @__acrt_iob_func(i32 noundef) #2

declare dso_local i32 @__stdio_common_vfprintf(i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn }
attributes #5 = { allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 1, !"MaxTLSAlign", i32 65536}
!4 = !{!"clang version 18.1.8"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !6}
!14 = distinct !{!14, !6}
!15 = distinct !{!15, !6}
!16 = distinct !{!16, !6}
!17 = distinct !{!17, !6}
!18 = distinct !{!18, !6}
!19 = distinct !{!19, !6}
!20 = distinct !{!20, !6}
!21 = distinct !{!21, !6}
!22 = distinct !{!22, !6}
!23 = distinct !{!23, !6}
!24 = distinct !{!24, !6}
!25 = distinct !{!25, !6}
!26 = distinct !{!26, !6}
!27 = distinct !{!27, !6}
!28 = distinct !{!28, !6}
