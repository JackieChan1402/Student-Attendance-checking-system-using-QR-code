; ModuleID = 'typemaps.armeabi-v7a.ll'
source_filename = "typemaps.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android21"

%struct.TypeMapJava = type {
	i32, ; uint32_t module_index
	i32, ; uint32_t type_token_id
	i32 ; uint32_t java_name_index
}

%struct.TypeMapModule = type {
	[16 x i8], ; uint8_t module_uuid[16]
	i32, ; uint32_t entry_count
	i32, ; uint32_t duplicate_count
	ptr, ; TypeMapModuleEntry map
	ptr, ; TypeMapModuleEntry duplicate_map
	ptr, ; char* assembly_name
	ptr, ; MonoImage image
	i32, ; uint32_t java_name_width
	ptr ; uint8_t java_map
}

%struct.TypeMapModuleEntry = type {
	i32, ; uint32_t type_token_id
	i32 ; uint32_t java_map_index
}

@map_module_count = dso_local local_unnamed_addr constant i32 44, align 4

@java_type_count = dso_local local_unnamed_addr constant i32 1248, align 4

; Managed modules map
@map_modules = dso_local local_unnamed_addr global [44 x %struct.TypeMapModule] [
	%struct.TypeMapModule {
		[16 x i8] c"\0B\FF\DAgL\E3\93N\A8\DC\BD#<\FC&\A3", ; module_uuid: 67daff0b-e34c-4e93-a8dc-bd233cfc26a3
		i32 77, ; uint32_t entry_count (0x4d)
		i32 29, ; uint32_t duplicate_count (0x1d)
		ptr @module0_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module0_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.0_assembly_name, ; assembly_name: Xamarin.Google.Android.Material
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 0
	%struct.TypeMapModule {
		[16 x i8] c"\0Cq\F3\12\E8-\9FM\81\05~g\12h\DE\CD", ; module_uuid: 12f3710c-2de8-4d9f-8105-7e671268decd
		i32 3, ; uint32_t entry_count (0x3)
		i32 2, ; uint32_t duplicate_count (0x2)
		ptr @module1_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module1_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.1_assembly_name, ; assembly_name: Xamarin.AndroidX.Lifecycle.LiveData.Core
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 1
	%struct.TypeMapModule {
		[16 x i8] c"\0C\BA\16\D9aH\D8J\B5\89\F2\88\FA\0D\16\FB", ; module_uuid: d916ba0c-4861-4ad8-b589-f288fa0d16fb
		i32 30, ; uint32_t entry_count (0x1e)
		i32 19, ; uint32_t duplicate_count (0x13)
		ptr @module2_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module2_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.2_assembly_name, ; assembly_name: Xamarin.Google.Crypto.Tink.Android
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 2
	%struct.TypeMapModule {
		[16 x i8] c"\12\82\A4s\A0\DD\E9K\AB\E2\027\10%\12=", ; module_uuid: 73a48212-dda0-4be9-abe2-02371025123d
		i32 7, ; uint32_t entry_count (0x7)
		i32 4, ; uint32_t duplicate_count (0x4)
		ptr @module3_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module3_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.3_assembly_name, ; assembly_name: Xamarin.AndroidX.ViewPager
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 3
	%struct.TypeMapModule {
		[16 x i8] c"\14J;j\B3#\83A\8Cc\B34\C1\1B\7F\A7", ; module_uuid: 6a3b4a14-23b3-4183-8c63-b334c11b7fa7
		i32 4, ; uint32_t entry_count (0x4)
		i32 4, ; uint32_t duplicate_count (0x4)
		ptr @module4_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module4_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.4_assembly_name, ; assembly_name: Xamarin.KotlinX.Coroutines.Core.Jvm
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 4
	%struct.TypeMapModule {
		[16 x i8] c"\17S\FEQ3 dM\90\B2\1AV\CC\BD\B5\8B", ; module_uuid: 51fe5317-2033-4d64-90b2-1a56ccbdb58b
		i32 9, ; uint32_t entry_count (0x9)
		i32 8, ; uint32_t duplicate_count (0x8)
		ptr @module5_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module5_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.5_assembly_name, ; assembly_name: Xamarin.Kotlin.StdLib
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 5
	%struct.TypeMapModule {
		[16 x i8] c"\19\87\D7a\09\16\F1N\B6\DEq\00\08wm\ED", ; module_uuid: 61d78719-1609-4ef1-b6de-710008776ded
		i32 2, ; uint32_t entry_count (0x2)
		i32 0, ; uint32_t duplicate_count (0x0)
		ptr @module6_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.6_assembly_name, ; assembly_name: CommunityToolkit.Maui
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 6
	%struct.TypeMapModule {
		[16 x i8] c"\19\FC1\84]tBK\B6\E3\84[\B8\B7\B3\0D", ; module_uuid: 8431fc19-745d-4b42-b6e3-845bb8b7b30d
		i32 1, ; uint32_t entry_count (0x1)
		i32 0, ; uint32_t duplicate_count (0x0)
		ptr @module7_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.7_assembly_name, ; assembly_name: ZXing.Net.MAUI
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 7
	%struct.TypeMapModule {
		[16 x i8] c"#;\D2\A7/\D1MC\9F\9EG\8F\F6\B0w\FF", ; module_uuid: a7d23b23-d12f-434d-9f9e-478ff6b077ff
		i32 5, ; uint32_t entry_count (0x5)
		i32 4, ; uint32_t duplicate_count (0x4)
		ptr @module8_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module8_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.8_assembly_name, ; assembly_name: Xamarin.AndroidX.Loader
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 8
	%struct.TypeMapModule {
		[16 x i8] c"$\E8m5\0B\DBNK\B3\C3 \96\DA\DC\19\99", ; module_uuid: 356de824-db0b-4b4e-b3c3-2096dadc1999
		i32 4, ; uint32_t entry_count (0x4)
		i32 1, ; uint32_t duplicate_count (0x1)
		ptr @module9_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module9_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.9_assembly_name, ; assembly_name: Xamarin.AndroidX.DrawerLayout
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 9
	%struct.TypeMapModule {
		[16 x i8] c"&\D36\925\C0`B\98\C8[\02\C5\F6\01\18", ; module_uuid: 9236d326-c035-4260-98c8-5b02c5f60118
		i32 1, ; uint32_t entry_count (0x1)
		i32 1, ; uint32_t duplicate_count (0x1)
		ptr @module10_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module10_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.10_assembly_name, ; assembly_name: Xamarin.AndroidX.CursorAdapter
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 10
	%struct.TypeMapModule {
		[16 x i8] c"2\5C\C8\E0\97[mJ\94w\D5\FDD\BA\18R", ; module_uuid: e0c85c32-5b97-4a6d-9477-d5fd44ba1852
		i32 12, ; uint32_t entry_count (0xc)
		i32 6, ; uint32_t duplicate_count (0x6)
		ptr @module11_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module11_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.11_assembly_name, ; assembly_name: Xamarin.AndroidX.Activity
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 11
	%struct.TypeMapModule {
		[16 x i8] c"2\E4\C0\A4&&\A3B\BA.\D7\FC\AC9\C3!", ; module_uuid: a4c0e432-2626-42a3-ba2e-d7fcac39c321
		i32 5, ; uint32_t entry_count (0x5)
		i32 3, ; uint32_t duplicate_count (0x3)
		ptr @module12_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module12_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.12_assembly_name, ; assembly_name: Xamarin.AndroidX.Lifecycle.Common
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 12
	%struct.TypeMapModule {
		[16 x i8] c"3\F4\1E`\ABJ\B8J\B4\D7\EC~\D5\8BJE", ; module_uuid: 601ef433-4aab-4ab8-b4d7-ec7ed58b4a45
		i32 56, ; uint32_t entry_count (0x38)
		i32 19, ; uint32_t duplicate_count (0x13)
		ptr @module13_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module13_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.13_assembly_name, ; assembly_name: Xamarin.AndroidX.AppCompat
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 13
	%struct.TypeMapModule {
		[16 x i8] c":_\B0\A6o~\E4C\B2O\FF\C7\86\DF\06\A7", ; module_uuid: a6b05f3a-7e6f-43e4-b24f-ffc786df06a7
		i32 1, ; uint32_t entry_count (0x1)
		i32 0, ; uint32_t duplicate_count (0x0)
		ptr @module14_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.14_assembly_name, ; assembly_name: Microsoft.Maui.Graphics
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 14
	%struct.TypeMapModule {
		[16 x i8] c">;\D4X4)7@\82X\F1\FC\92\E4*\95", ; module_uuid: 58d43b3e-2934-4037-8258-f1fc92e42a95
		i32 1, ; uint32_t entry_count (0x1)
		i32 0, ; uint32_t duplicate_count (0x0)
		ptr @module15_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.15_assembly_name, ; assembly_name: Xamarin.AndroidX.Camera.Lifecycle
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 15
	%struct.TypeMapModule {
		[16 x i8] c"A\D0#\D7l=\AEF\88\DC\D3\07\12\00\FC0", ; module_uuid: d723d041-3d6c-46ae-88dc-d3071200fc30
		i32 4, ; uint32_t entry_count (0x4)
		i32 0, ; uint32_t duplicate_count (0x0)
		ptr @module16_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.16_assembly_name, ; assembly_name: CommunityToolkit.Maui.Core
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 16
	%struct.TypeMapModule {
		[16 x i8] c"B&\07X\ABOzO\BA\A9\F6\00\C3\99r\10", ; module_uuid: 58072642-4fab-4f7a-baa9-f600c3997210
		i32 71, ; uint32_t entry_count (0x47)
		i32 24, ; uint32_t duplicate_count (0x18)
		ptr @module17_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module17_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.17_assembly_name, ; assembly_name: Xamarin.AndroidX.Core
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 17
	%struct.TypeMapModule {
		[16 x i8] c"E\A1\94\12\B7\A6\CA@\9C2z*\DEij\F9", ; module_uuid: 1294a145-a6b7-40ca-9c32-7a2ade696af9
		i32 514, ; uint32_t entry_count (0x202)
		i32 206, ; uint32_t duplicate_count (0xce)
		ptr @module18_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module18_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.18_assembly_name, ; assembly_name: Mono.Android
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 18
	%struct.TypeMapModule {
		[16 x i8] c"G(9\B461wM\A3\C8]9S\B1\E1A", ; module_uuid: b4392847-3136-4d77-a3c8-5d3953b1e141
		i32 3, ; uint32_t entry_count (0x3)
		i32 0, ; uint32_t duplicate_count (0x0)
		ptr @module19_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.19_assembly_name, ; assembly_name: Xamarin.AndroidX.Navigation.Fragment
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 19
	%struct.TypeMapModule {
		[16 x i8] c"Hd'r\06i\B9G\A6,\C5\C5\16\F0\A7\A8", ; module_uuid: 72276448-6906-47b9-a62c-c5c516f0a7a8
		i32 3, ; uint32_t entry_count (0x3)
		i32 1, ; uint32_t duplicate_count (0x1)
		ptr @module20_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module20_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.20_assembly_name, ; assembly_name: Xamarin.AndroidX.CoordinatorLayout
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 20
	%struct.TypeMapModule {
		[16 x i8] c"M\E8w'\A3t\1EI\B0=o\BDHwL?", ; module_uuid: 2777e84d-74a3-491e-b03d-6fbd48774c3f
		i32 7, ; uint32_t entry_count (0x7)
		i32 0, ; uint32_t duplicate_count (0x0)
		ptr @module21_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.21_assembly_name, ; assembly_name: Microsoft.Maui.Controls.Compatibility
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 21
	%struct.TypeMapModule {
		[16 x i8] c"S\5C\9F\13\FC\1C+K\8B<\01\84\0A\AEl\FD", ; module_uuid: 139f5c53-1cfc-4b2b-8b3c-01840aae6cfd
		i32 9, ; uint32_t entry_count (0x9)
		i32 5, ; uint32_t duplicate_count (0x5)
		ptr @module22_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module22_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.22_assembly_name, ; assembly_name: Xamarin.AndroidX.Lifecycle.ViewModel
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 22
	%struct.TypeMapModule {
		[16 x i8] c"W4\9E\D9\15\93~M\85x\EB\80\B3\F0\D8\A3", ; module_uuid: d99e3457-9315-4d7e-8578-eb80b3f0d8a3
		i32 1, ; uint32_t entry_count (0x1)
		i32 0, ; uint32_t duplicate_count (0x0)
		ptr @module23_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.23_assembly_name, ; assembly_name: Xamarin.AndroidX.CardView
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 23
	%struct.TypeMapModule {
		[16 x i8] c"]\9Bc\903\17t@\93\84\00\A9\1B\B5\AB\1B", ; module_uuid: 90639b5d-1733-4074-9384-00a91bb5ab1b
		i32 4, ; uint32_t entry_count (0x4)
		i32 0, ; uint32_t duplicate_count (0x0)
		ptr @module24_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.24_assembly_name, ; assembly_name: Microsoft.Maui.Essentials
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 24
	%struct.TypeMapModule {
		[16 x i8] c"f\A8\B9\C0\87\AA9L\8E}'\0D\12,\0D\95", ; module_uuid: c0b9a866-aa87-4c39-8e7d-270d122c0d95
		i32 106, ; uint32_t entry_count (0x6a)
		i32 0, ; uint32_t duplicate_count (0x0)
		ptr @module25_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.25_assembly_name, ; assembly_name: Microsoft.Maui.Controls
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 25
	%struct.TypeMapModule {
		[16 x i8] c"p\E1\7F\5CoGxI\8B\FF\A2\1DT}?2", ; module_uuid: 5c7fe170-476f-4978-8bff-a21d547d3f32
		i32 2, ; uint32_t entry_count (0x2)
		i32 0, ; uint32_t duplicate_count (0x0)
		ptr @module26_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.26_assembly_name, ; assembly_name: Mobile App
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 26
	%struct.TypeMapModule {
		[16 x i8] c"z\B5\F5\CB\04\88\E9H\93\A3\B5\B5\DFzJ\CB", ; module_uuid: cbf5b57a-8804-48e9-93a3-b5b5df7a4acb
		i32 17, ; uint32_t entry_count (0x11)
		i32 6, ; uint32_t duplicate_count (0x6)
		ptr @module27_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module27_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.27_assembly_name, ; assembly_name: Xamarin.AndroidX.Navigation.Common
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 27
	%struct.TypeMapModule {
		[16 x i8] c"\8CW@6F\959B\8F\C2\B0\EE\CA\AF\98x", ; module_uuid: 3640578c-9546-4239-8fc2-b0eecaaf9878
		i32 1, ; uint32_t entry_count (0x1)
		i32 1, ; uint32_t duplicate_count (0x1)
		ptr @module28_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module28_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.28_assembly_name, ; assembly_name: Xamarin.Google.Guava.ListenableFuture
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 28
	%struct.TypeMapModule {
		[16 x i8] c"\8E\A2\1E\13\19f!A\85u\80^m\88\D5\F6", ; module_uuid: 131ea28e-6619-4121-8575-805e6d88d5f6
		i32 1, ; uint32_t entry_count (0x1)
		i32 0, ; uint32_t duplicate_count (0x0)
		ptr @module29_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.29_assembly_name, ; assembly_name: Xamarin.AndroidX.Lifecycle.ViewModelSavedState
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 29
	%struct.TypeMapModule {
		[16 x i8] c"\8F\A4BE\BAqLE\B7\BE\83y\80\84;\1F", ; module_uuid: 4542a48f-71ba-454c-b7be-837980843b1f
		i32 19, ; uint32_t entry_count (0x13)
		i32 10, ; uint32_t duplicate_count (0xa)
		ptr @module30_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module30_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.30_assembly_name, ; assembly_name: Xamarin.AndroidX.Fragment
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 30
	%struct.TypeMapModule {
		[16 x i8] c"\92\C6\82\DE\84LgD\AD\1An@F\DE8\B2", ; module_uuid: de82c692-4c84-4467-ad1a-6e4046de38b2
		i32 1, ; uint32_t entry_count (0x1)
		i32 1, ; uint32_t duplicate_count (0x1)
		ptr @module31_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module31_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.31_assembly_name, ; assembly_name: Xamarin.AndroidX.CustomView
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 31
	%struct.TypeMapModule {
		[16 x i8] c"\9ESb\17\11z\F4F\B6A\89#\B5\14\05x", ; module_uuid: 1762539e-7a11-46f4-b641-8923b5140578
		i32 66, ; uint32_t entry_count (0x42)
		i32 3, ; uint32_t duplicate_count (0x3)
		ptr @module32_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module32_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.32_assembly_name, ; assembly_name: Microsoft.Maui
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 32
	%struct.TypeMapModule {
		[16 x i8] c"\B10\89\D1\97\E3\E0I\AE\E3\D6\5C\CF\05\22\CF", ; module_uuid: d18930b1-e397-49e0-aee3-d65ccf0522cf
		i32 4, ; uint32_t entry_count (0x4)
		i32 1, ; uint32_t duplicate_count (0x1)
		ptr @module33_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module33_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.33_assembly_name, ; assembly_name: Xamarin.AndroidX.Navigation.UI
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 33
	%struct.TypeMapModule {
		[16 x i8] c"\BE\AB\1B\0E\C9m\17N\BA\8E\CB\CFR\F9\00q", ; module_uuid: 0e1babbe-6dc9-4e17-ba8e-cbcf52f90071
		i32 6, ; uint32_t entry_count (0x6)
		i32 1, ; uint32_t duplicate_count (0x1)
		ptr @module34_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module34_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.34_assembly_name, ; assembly_name: Xamarin.AndroidX.Navigation.Runtime
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 34
	%struct.TypeMapModule {
		[16 x i8] c"\BF\04\A2\D7]0jL\95\CE\1Bx\C5\07`\AB", ; module_uuid: d7a204bf-305d-4c6a-95ce-1b78c50760ab
		i32 41, ; uint32_t entry_count (0x29)
		i32 21, ; uint32_t duplicate_count (0x15)
		ptr @module35_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module35_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.35_assembly_name, ; assembly_name: Xamarin.AndroidX.RecyclerView
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 35
	%struct.TypeMapModule {
		[16 x i8] c"\CF\A3,\1E\AE\08fD\9En\E65?X\85S", ; module_uuid: 1e2ca3cf-08ae-4466-9e6e-e6353f588553
		i32 2, ; uint32_t entry_count (0x2)
		i32 1, ; uint32_t duplicate_count (0x1)
		ptr @module36_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module36_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.36_assembly_name, ; assembly_name: Xamarin.AndroidX.SavedState
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 36
	%struct.TypeMapModule {
		[16 x i8] c"\D2;-b)\F3\E5C\94X\18\EE\E1\8D\07I", ; module_uuid: 622d3bd2-f329-43e5-9458-18eee18d0749
		i32 4, ; uint32_t entry_count (0x4)
		i32 2, ; uint32_t duplicate_count (0x2)
		ptr @module37_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module37_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.37_assembly_name, ; assembly_name: Xamarin.AndroidX.SwipeRefreshLayout
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 37
	%struct.TypeMapModule {
		[16 x i8] c"\D6,s\F9m\00)C\AB\0C]\E3\FA\F7\01\EE", ; module_uuid: f9732cd6-006d-4329-ab0c-5de3faf701ee
		i32 5, ; uint32_t entry_count (0x5)
		i32 3, ; uint32_t duplicate_count (0x3)
		ptr @module38_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module38_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.38_assembly_name, ; assembly_name: Xamarin.AndroidX.ViewPager2
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 38
	%struct.TypeMapModule {
		[16 x i8] c"\E2\1B\CD%\AC3\D0I\91Y\DAE~\7F\DA\E8", ; module_uuid: 25cd1be2-33ac-49d0-9159-da457e7fdae8
		i32 12, ; uint32_t entry_count (0xc)
		i32 7, ; uint32_t duplicate_count (0x7)
		ptr @module39_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module39_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.39_assembly_name, ; assembly_name: Xamarin.AndroidX.Camera.View
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 39
	%struct.TypeMapModule {
		[16 x i8] c"\E9\B1\F5\FE5]\B8G\90\0D\D3}\0A\8C\06\EB", ; module_uuid: fef5b1e9-5d35-47b8-900d-d37d0a8c06eb
		i32 6, ; uint32_t entry_count (0x6)
		i32 0, ; uint32_t duplicate_count (0x0)
		ptr @module40_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.40_assembly_name, ; assembly_name: Xamarin.AndroidX.Security.SecurityCrypto
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 40
	%struct.TypeMapModule {
		[16 x i8] c"\F0\9C\DB\87\B5\B2\9BC\A7~\F0\8A\85\93\B45", ; module_uuid: 87db9cf0-b2b5-439b-a77e-f08a8593b435
		i32 118, ; uint32_t entry_count (0x76)
		i32 67, ; uint32_t duplicate_count (0x43)
		ptr @module41_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module41_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.41_assembly_name, ; assembly_name: Xamarin.AndroidX.Camera.Core
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 41
	%struct.TypeMapModule {
		[16 x i8] c"\F1\89:\A8\0A\B9TD\87\D4\F3\AA\9E0Z\1E", ; module_uuid: a83a89f1-b90a-4454-87d4-f3aa9e305a1e
		i32 1, ; uint32_t entry_count (0x1)
		i32 0, ; uint32_t duplicate_count (0x0)
		ptr @module42_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.42_assembly_name, ; assembly_name: Xamarin.AndroidX.Collection
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 42
	%struct.TypeMapModule {
		[16 x i8] c"\F6\CE\C0\BDF\5CXL\86xOS\A1\C3-\C5", ; module_uuid: bdc0cef6-5c46-4c58-8678-4f53a1c32dc5
		i32 2, ; uint32_t entry_count (0x2)
		i32 0, ; uint32_t duplicate_count (0x0)
		ptr @module43_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.43_assembly_name, ; assembly_name: Xamarin.AndroidX.AppCompat.AppCompatResources
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	} ; 43
], align 4

; Java types name hashes
@map_java_hashes = dso_local local_unnamed_addr constant [1248 x i32] [
	i32 4689355, ; 0: 0x478dcb => android/animation/Animator$AnimatorListener
	i32 5024575, ; 1: 0x4cab3f => crc6452ffdc5b34af3a0f/MauiSwipeView
	i32 12341354, ; 2: 0xbc506a => java/lang/Object
	i32 12507823, ; 3: 0xbedaaf => java/lang/AutoCloseable
	i32 12855812, ; 4: 0xc42a04 => android/text/style/LineHeightSpan
	i32 14973177, ; 5: 0xe478f9 => androidx/recyclerview/widget/LinearLayoutManager
	i32 17702982, ; 6: 0x10e2046 => androidx/fragment/app/Fragment
	i32 19063424, ; 7: 0x122e280 => android/hardware/camera2/CameraDevice$StateCallback
	i32 29653966, ; 8: 0x1c47bce => android/widget/ListAdapter
	i32 32078366, ; 9: 0x1e97a1e => java/security/cert/Certificate
	i32 34115578, ; 10: 0x2088ffa => android/content/pm/PackageItemInfo
	i32 40630473, ; 11: 0x26bf8c9 => mono/androidx/appcompat/widget/SearchView_OnCloseListenerImplementor
	i32 47434699, ; 12: 0x2d3cbcb => mono/androidx/swiperefreshlayout/widget/SwipeRefreshLayout_OnRefreshListenerImplementor
	i32 48217455, ; 13: 0x2dfbd6f => android/provider/Settings$Global
	i32 53514399, ; 14: 0x330909f => com/google/crypto/tink/shaded/protobuf/MessageLite$Builder
	i32 66737995, ; 15: 0x3fa574b => com/google/android/material/behavior/SwipeDismissBehavior$OnDismissListener
	i32 68779952, ; 16: 0x4197fb0 => crc6452ffdc5b34af3a0f/ScopedFragment
	i32 69893395, ; 17: 0x42a7d13 => androidx/core/view/WindowInsetsCompat
	i32 71504973, ; 18: 0x443144d => androidx/camera/core/impl/utils/ExifData
	i32 74282880, ; 19: 0x46d7780 => android/view/ViewGroup
	i32 82537163, ; 20: 0x4eb6acb => android/hardware/camera2/CameraCaptureSession
	i32 83439307, ; 21: 0x4f92ecb => androidx/recyclerview/widget/RecyclerView$OnItemTouchListener
	i32 88042222, ; 22: 0x53f6aee => com/google/crypto/tink/shaded/protobuf/CodedInputStream
	i32 88472501, ; 23: 0x545fbb5 => com/google/android/material/shape/ShapeAppearanceModel$Builder
	i32 101184921, ; 24: 0x607f599 => mono/android/app/DatePickerDialog_OnDateSetListenerImplementor
	i32 102292193, ; 25: 0x618dae1 => androidx/appcompat/widget/DecorToolbar
	i32 107386019, ; 26: 0x66694a3 => androidx/navigation/NavigatorProvider
	i32 112975362, ; 27: 0x6bbde02 => androidx/camera/core/VideoCapture$Defaults
	i32 113187374, ; 28: 0x6bf1a2e => android/util/Size
	i32 115579508, ; 29: 0x6e39a74 => android/hardware/camera2/params/InputConfiguration
	i32 117045218, ; 30: 0x6f9f7e2 => android/graphics/BlurMaskFilter
	i32 118977103, ; 31: 0x717724f => android/util/DisplayMetrics
	i32 119600321, ; 32: 0x720f4c1 => com/google/android/material/shape/ShapeAppearanceModel$CornerSizeUnaryOperator
	i32 127856878, ; 33: 0x79ef0ee => androidx/fragment/app/strictmode/FragmentStrictMode$Policy
	i32 129006122, ; 34: 0x7b07a2a => android/graphics/PorterDuffXfermode
	i32 131666100, ; 35: 0x7d910b4 => crc6488302ad6e9e4df1a/ImageLoaderCallback
	i32 133089372, ; 36: 0x7eec85c => androidx/activity/OnBackPressedCallback
	i32 133363466, ; 37: 0x7f2f70a => androidx/camera/core/ImageProxy$PlaneProxy
	i32 137623074, ; 38: 0x833f622 => crc640ec207abc449b2ca/ShellSectionRenderer_ViewPagerPageChanged
	i32 138171443, ; 39: 0x83c5433 => javax/net/ssl/SSLSessionContext
	i32 139280357, ; 40: 0x84d3fe5 => android/view/KeyEvent
	i32 144028150, ; 41: 0x895b1f6 => android/text/style/SubscriptSpan
	i32 145888503, ; 42: 0x8b214f7 => java/util/List
	i32 148505617, ; 43: 0x8da0411 => android/text/GetChars
	i32 149638983, ; 44: 0x8eb4f47 => crc64338477404e88479c/MultiPageFragmentStateAdapter_1
	i32 150585013, ; 45: 0x8f9beb5 => androidx/activity/contextaware/OnContextAvailableListener
	i32 152208212, ; 46: 0x9128354 => androidx/camera/core/impl/CameraCaptureFailure
	i32 155922225, ; 47: 0x94b2f31 => android/util/Rational
	i32 157158473, ; 48: 0x95e0c49 => crc649ff77a65592e7d55/TabbedPageManager_Listeners
	i32 158254429, ; 49: 0x96ec55d => mono/androidx/fragment/app/FragmentManager_OnBackStackChangedListenerImplementor
	i32 159483247, ; 50: 0x981856f => androidx/activity/result/contract/ActivityResultContract
	i32 161253666, ; 51: 0x99c8922 => com/google/crypto/tink/shaded/protobuf/Internal$DoubleList
	i32 162995629, ; 52: 0x9b71dad => crc645d80431ce5f73f11/StartSnapHelper
	i32 166208029, ; 53: 0x9e8221d => java/text/DecimalFormat
	i32 166266226, ; 54: 0x9e90572 => mono/com/google/android/material/button/MaterialButton_OnCheckedChangeListenerImplementor
	i32 166929542, ; 55: 0x9f32486 => crc6452ffdc5b34af3a0f/ContainerView
	i32 176697843, ; 56: 0xa8831f3 => java/lang/IllegalArgumentException
	i32 178346187, ; 57: 0xaa158cb => android/window/OnBackInvokedCallback
	i32 183151336, ; 58: 0xaeaaae8 => android/view/OrientationEventListener
	i32 192862028, ; 59: 0xb7ed74c => com/google/android/material/button/MaterialButton$OnCheckedChangeListener
	i32 194118622, ; 60: 0xb9203de => crc649ff77a65592e7d55/TabbedPageManager_TempView
	i32 214761664, ; 61: 0xccd00c0 => crc64d6358e7bf64fbac4/SpeechToTextImplementation_SpeechRecognitionListener
	i32 223811268, ; 62: 0xd5716c4 => com/microsoft/maui/PlatformInterop
	i32 226420815, ; 63: 0xd7ee84f => androidx/navigation/NavDeepLink
	i32 227437355, ; 64: 0xd8e6b2b => com/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite
	i32 230260556, ; 65: 0xdb97f4c => crc64e1fb321c08285b90/ListViewRenderer
	i32 234509239, ; 66: 0xdfa53b7 => com/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior
	i32 234987347, ; 67: 0xe019f53 => androidx/lifecycle/MutableLiveData
	i32 239774229, ; 68: 0xe4aaa15 => com/google/android/material/snackbar/BaseTransientBottomBar
	i32 250064775, ; 69: 0xee7af87 => androidx/navigation/NavHostController
	i32 251666975, ; 70: 0xf00221f => android/widget/DatePicker
	i32 253705836, ; 71: 0xf1f3e6c => android/graphics/RadialGradient
	i32 257310750, ; 72: 0xf56401e => androidx/navigation/Navigator
	i32 262868253, ; 73: 0xfab0d1d => android/view/WindowInsets
	i32 269199815, ; 74: 0x100ba9c7 => javax/security/cert/X509Certificate
	i32 272471520, ; 75: 0x103d95e0 => crc64e1fb321c08285b90/ViewRenderer_2
	i32 275860237, ; 76: 0x10714b0d => com/google/android/material/appbar/AppBarLayout$LayoutParams
	i32 277940852, ; 77: 0x10910a74 => android/view/ViewGroup$OnHierarchyChangeListener
	i32 278110854, ; 78: 0x1093a286 => crc64e1fb321c08285b90/EntryCellView
	i32 279693177, ; 79: 0x10abc779 => android/content/SharedPreferences$Editor
	i32 281127175, ; 80: 0x10c1a907 => java/util/function/Function
	i32 286687917, ; 81: 0x111682ad => crc645d80431ce5f73f11/PositionalSmoothScroller
	i32 292930755, ; 82: 0x1175c4c3 => androidx/loader/content/Loader$OnLoadCompleteListener
	i32 293659125, ; 83: 0x1180e1f5 => crc6452ffdc5b34af3a0f/MauiShapeView
	i32 295832610, ; 84: 0x11a20c22 => crc640ec207abc449b2ca/ShellFlyoutTemplatedContentRenderer
	i32 298403376, ; 85: 0x11c94630 => mono/androidx/viewpager/widget/ViewPager_OnAdapterChangeListenerImplementor
	i32 299354407, ; 86: 0x11d7c927 => androidx/savedstate/SavedStateRegistry
	i32 301289632, ; 87: 0x11f550a0 => androidx/camera/core/ImageCapture
	i32 305321328, ; 88: 0x1232d570 => crc64e1fb321c08285b90/CellRenderer_RendererHolder
	i32 307048059, ; 89: 0x124d2e7b => android/view/MenuItem$OnActionExpandListener
	i32 315938418, ; 90: 0x12d4d672 => androidx/core/view/WindowCompat
	i32 317135051, ; 91: 0x12e718cb => android/animation/Animator
	i32 322049168, ; 92: 0x13321490 => com/google/crypto/tink/shaded/protobuf/Internal$FloatList
	i32 322113664, ; 93: 0x13331080 => androidx/camera/core/MeteringPointFactory
	i32 338804407, ; 94: 0x1431beb7 => com/google/android/material/appbar/CollapsingToolbarLayout
	i32 339144070, ; 95: 0x1436ed86 => androidx/security/crypto/MasterKey$KeyScheme
	i32 343514767, ; 96: 0x14799e8f => android/widget/AbsListView$OnScrollListener
	i32 358279401, ; 97: 0x155ae8e9 => android/text/style/CharacterStyle
	i32 360511355, ; 98: 0x157cf77b => androidx/appcompat/widget/AppCompatRadioButton
	i32 365824571, ; 99: 0x15ce0a3b => crc64159f3caeb1269279/MauiSemanticOrderView
	i32 366534601, ; 100: 0x15d8dfc9 => android/view/ViewGroup$LayoutParams
	i32 372768500, ; 101: 0x1637fef4 => crc6488302ad6e9e4df1a/ImageLoaderCallbackBase_1
	i32 390669342, ; 102: 0x1749241e => crc640ec207abc449b2ca/ShellFlyoutTemplatedContentRenderer_HeaderContainer
	i32 393371378, ; 103: 0x17725ef2 => mono/java/lang/RunnableImplementor
	i32 396570040, ; 104: 0x17a32db8 => androidx/lifecycle/LifecycleOwner
	i32 397210915, ; 105: 0x17acf523 => androidx/camera/core/impl/SurfaceConfig$ConfigSize
	i32 398599711, ; 106: 0x17c2261f => android/content/pm/ResolveInfo
	i32 399364059, ; 107: 0x17cdcfdb => android/animation/TimeInterpolator
	i32 412771173, ; 108: 0x189a6365 => java/lang/Long
	i32 416732807, ; 109: 0x18d6d687 => android/util/StateSet
	i32 417475351, ; 110: 0x18e22b17 => kotlin/sequences/Sequence
	i32 419359493, ; 111: 0x18feeb05 => java/util/Iterator
	i32 420482824, ; 112: 0x19100f08 => java/net/ConnectException
	i32 422935000, ; 113: 0x193579d8 => androidx/recyclerview/widget/RecyclerViewAccessibilityDelegate
	i32 424391913, ; 114: 0x194bb4e9 => java/lang/ClassLoader
	i32 425386803, ; 115: 0x195ae333 => mono/androidx/navigation/NavController_OnDestinationChangedListenerImplementor
	i32 427836927, ; 116: 0x198045ff => androidx/fragment/app/FragmentResultListener
	i32 434958167, ; 117: 0x19ecef57 => android/runtime/XmlReaderPullParser
	i32 436934201, ; 118: 0x1a0b1639 => android/content/DialogInterface$OnShowListener
	i32 437664463, ; 119: 0x1a163acf => android/app/UiModeManager
	i32 441688866, ; 120: 0x1a53a322 => androidx/fragment/app/FragmentFactory
	i32 441749763, ; 121: 0x1a549103 => androidx/appcompat/widget/ScrollingTabContainerView$VisibilityAnimListener
	i32 443229876, ; 122: 0x1a6b26b4 => androidx/camera/core/impl/Quirk
	i32 445582341, ; 123: 0x1a8f0c05 => androidx/recyclerview/widget/RecyclerView$AdapterDataObserver
	i32 449951175, ; 124: 0x1ad1b5c7 => androidx/recyclerview/widget/OrientationHelper
	i32 453311717, ; 125: 0x1b04fce5 => com/google/crypto/tink/shaded/protobuf/Internal$ProtobufList
	i32 458110862, ; 126: 0x1b4e378e => crc6452ffdc5b34af3a0f/MauiPicker
	i32 463378833, ; 127: 0x1b9e9991 => com/google/android/material/navigation/NavigationBarView$OnItemReselectedListener
	i32 464188442, ; 128: 0x1baaf41a => crc6452ffdc5b34af3a0f/MauiStepper
	i32 480538695, ; 129: 0x1ca47047 => androidx/core/content/LocusIdCompat
	i32 482725685, ; 130: 0x1cc5cf35 => androidx/camera/core/SurfaceRequest$TransformationInfo
	i32 484132915, ; 131: 0x1cdb4833 => androidx/recyclerview/widget/RecyclerView$LayoutManager
	i32 490619983, ; 132: 0x1d3e444f => java/util/concurrent/TimeUnit
	i32 490744162, ; 133: 0x1d402962 => crc645d80431ce5f73f11/NongreedySnapHelper
	i32 496581258, ; 134: 0x1d993a8a => crc64e1fb321c08285b90/ListViewRenderer_ListViewScrollDetector
	i32 498843540, ; 135: 0x1dbbbf94 => androidx/camera/core/impl/CameraDeviceSurfaceManager
	i32 501733478, ; 136: 0x1de7d866 => android/view/ViewGroup$MarginLayoutParams
	i32 512853114, ; 137: 0x1e91847a => crc64e1fb321c08285b90/FrameRenderer
	i32 516909593, ; 138: 0x1ecf6a19 => com/google/crypto/tink/shaded/protobuf/WireFormat$FieldType
	i32 517025718, ; 139: 0x1ed12fb6 => android/view/ViewParent
	i32 517456986, ; 140: 0x1ed7c45a => androidx/recyclerview/widget/RecyclerView$ViewHolder
	i32 517668398, ; 141: 0x1edafe2e => android/os/Parcel
	i32 521485973, ; 142: 0x1f153e95 => androidx/lifecycle/ViewModelProvider$Factory$Companion
	i32 523581214, ; 143: 0x1f35371e => android/app/SearchableInfo
	i32 531198748, ; 144: 0x1fa9731c => mono/android/runtime/OutputStreamAdapter
	i32 533127151, ; 145: 0x1fc6dfef => androidx/camera/core/impl/SessionConfig$SessionError
	i32 538106462, ; 146: 0x2012da5e => crc64ba438d8f48cf7e75/IntermediateActivity
	i32 553905247, ; 147: 0x2103ec5f => android/graphics/drawable/ColorDrawable
	i32 554264667, ; 148: 0x2109685b => java/util/function/UnaryOperator
	i32 554651769, ; 149: 0x210f5079 => android/opengl/Matrix
	i32 561760761, ; 150: 0x217bc9f9 => androidx/camera/core/Preview$Builder
	i32 568462196, ; 151: 0x21e20b74 => android/content/DialogInterface$OnDismissListener
	i32 571321220, ; 152: 0x220dab84 => android/widget/SectionIndexer
	i32 572026070, ; 153: 0x22186cd6 => mono/com/google/android/material/behavior/SwipeDismissBehavior_OnDismissListenerImplementor
	i32 572697099, ; 154: 0x2222aa0b => crc64e1fb321c08285b90/GroupedListViewAdapter
	i32 581097368, ; 155: 0x22a2d798 => java/nio/channels/FileChannel
	i32 582249547, ; 156: 0x22b46c4b => android/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener
	i32 582301329, ; 157: 0x22b53691 => crc6452ffdc5b34af3a0f/PlatformTouchGraphicsView
	i32 584201455, ; 158: 0x22d234ef => android/widget/Filter
	i32 584231583, ; 159: 0x22d2aa9f => java/lang/IllegalStateException
	i32 584387757, ; 160: 0x22d50cad => com/google/android/material/shape/MaterialShapeDrawable
	i32 585466394, ; 161: 0x22e5821a => androidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener
	i32 587182450, ; 162: 0x22ffb172 => androidx/activity/ComponentActivity
	i32 590702782, ; 163: 0x233568be => android/view/ViewTreeObserver
	i32 590874706, ; 164: 0x23380852 => crc645d80431ce5f73f11/StartSingleSnapHelper
	i32 591810476, ; 165: 0x23464fac => android/os/Bundle
	i32 594459050, ; 166: 0x236eb9aa => androidx/camera/view/video/OutputFileResults
	i32 596114381, ; 167: 0x2387fbcd => java/util/concurrent/Executors
	i32 596978812, ; 168: 0x23952c7c => crc64338477404e88479c/ColorChangeRevealDrawable
	i32 605551681, ; 169: 0x2417fc41 => crc64159f3caeb1269279/MauiPopup
	i32 607365982, ; 170: 0x2433ab5e => android/view/animation/LinearInterpolator
	i32 610256159, ; 171: 0x245fc51f => androidx/core/view/accessibility/AccessibilityViewCommand
	i32 616578009, ; 172: 0x24c03bd9 => mono/androidx/recyclerview/widget/RecyclerView_RecyclerListenerImplementor
	i32 617948154, ; 173: 0x24d523fa => androidx/appcompat/app/ActionBar$OnNavigationListener
	i32 619060219, ; 174: 0x24e61bfb => java/net/URL
	i32 621710704, ; 175: 0x250e8d70 => crc6452ffdc5b34af3a0f/MauiSearchView
	i32 621831351, ; 176: 0x251064b7 => crc64338477404e88479c/GenericMenuClickListener
	i32 624430410, ; 177: 0x25380d4a => android/view/View$DragShadowBuilder
	i32 625843168, ; 178: 0x254d9be0 => androidx/appcompat/app/AppCompatActivity
	i32 630387043, ; 179: 0x2592f163 => android/text/method/KeyListener
	i32 632089155, ; 180: 0x25acea43 => android/app/TimePickerDialog
	i32 636654293, ; 181: 0x25f292d5 => com/google/android/material/internal/ScrimInsetsFrameLayout
	i32 638514975, ; 182: 0x260ef71f => androidx/recyclerview/widget/RecyclerView$ViewCacheExtension
	i32 638717086, ; 183: 0x26120c9e => android/view/GestureDetector$OnGestureListener
	i32 644006025, ; 184: 0x2662c089 => androidx/fragment/app/FragmentContainer
	i32 645227752, ; 185: 0x267564e8 => androidx/loader/content/Loader
	i32 655473041, ; 186: 0x2711b991 => crc64fcf28c0e24b4cc31/SwitchHandler_CheckedChangeListener
	i32 655837073, ; 187: 0x27174791 => androidx/fragment/app/FragmentTransaction
	i32 657696663, ; 188: 0x2733a797 => androidx/core/app/SharedElementCallback$OnSharedElementsReadyListener
	i32 677480649, ; 189: 0x286188c9 => java/util/concurrent/atomic/AtomicReference
	i32 689512911, ; 190: 0x291921cf => androidx/appcompat/widget/Toolbar
	i32 689988683, ; 191: 0x2920644b => androidx/core/view/OnApplyWindowInsetsListener
	i32 690463847, ; 192: 0x2927a467 => com/google/crypto/tink/shaded/protobuf/MessageLiteOrBuilder
	i32 692920175, ; 193: 0x294d1f6f => java/util/ArrayList
	i32 693212793, ; 194: 0x29519679 => crc64a096dc44ad241142/PlatformTicker_DurationScaleListener
	i32 699575146, ; 195: 0x29b2ab6a => androidx/camera/core/ImageAnalysis$Analyzer
	i32 700971531, ; 196: 0x29c7fa0b => mono/androidx/core/widget/NestedScrollView_OnScrollChangeListenerImplementor
	i32 702158320, ; 197: 0x29da15f0 => android/graphics/drawable/GradientDrawable$Orientation
	i32 706307710, ; 198: 0x2a19667e => com/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback
	i32 711999670, ; 199: 0x2a7040b6 => crc645d80431ce5f73f11/ItemsViewAdapter_2
	i32 720890233, ; 200: 0x2af7e979 => androidx/camera/core/impl/SessionConfig$Builder
	i32 722182957, ; 201: 0x2b0ba32d => crc64338477404e88479c/ModalNavigationManager_ModalContainer_ModalFragment
	i32 723803885, ; 202: 0x2b245eed => crc645d80431ce5f73f11/CenterSnapHelper
	i32 736851491, ; 203: 0x2beb7623 => androidx/appcompat/widget/SearchView
	i32 740006971, ; 204: 0x2c1b9c3b => androidx/core/text/PrecomputedTextCompat
	i32 744068251, ; 205: 0x2c59949b => android/graphics/Paint$Join
	i32 745787198, ; 206: 0x2c73cf3e => android/text/style/SuperscriptSpan
	i32 762631195, ; 207: 0x2d74d41b => com/google/android/material/shape/ShapePathModel
	i32 763971624, ; 208: 0x2d894828 => com/microsoft/maui/PlatformFontSpan
	i32 772715691, ; 209: 0x2e0eb4ab => mono/com/google/android/material/checkbox/MaterialCheckBox_OnCheckedStateChangedListenerImplementor
	i32 780408360, ; 210: 0x2e841628 => java/lang/CharSequence
	i32 780987551, ; 211: 0x2e8cec9f => java/io/PrintWriter
	i32 786342354, ; 212: 0x2edea1d2 => android/graphics/drawable/PaintDrawable
	i32 787885952, ; 213: 0x2ef62f80 => mono/androidx/appcompat/widget/SearchView_OnQueryTextListenerImplementor
	i32 788727041, ; 214: 0x2f030501 => crc645d80431ce5f73f11/StructuredItemsViewAdapter_2
	i32 793918146, ; 215: 0x2f523ac2 => java/lang/Integer
	i32 798832452, ; 216: 0x2f9d3744 => androidx/core/view/WindowInsetsAnimationCompat$Callback
	i32 805498755, ; 217: 0x3002ef83 => android/os/IBinder$DeathRecipient
	i32 806800039, ; 218: 0x3016caa7 => java/lang/Thread
	i32 806884132, ; 219: 0x30181324 => java/text/DecimalFormatSymbols
	i32 810002833, ; 220: 0x3047a991 => android/animation/ValueAnimator$DurationScaleChangeListener
	i32 815012768, ; 221: 0x30941ba0 => androidx/core/internal/view/SupportMenuItem
	i32 823991243, ; 222: 0x311d1bcb => androidx/appcompat/graphics/drawable/DrawerArrowDrawable
	i32 829372919, ; 223: 0x316f39f7 => crc6452ffdc5b34af3a0f/NavigationRootManager_ElementBasedFragment
	i32 829690307, ; 224: 0x317411c3 => androidx/core/widget/CompoundButtonCompat
	i32 833526148, ; 225: 0x31ae9984 => crc648fc34c62be8fbbff/Snackbar_SnackbarCallback
	i32 837333619, ; 226: 0x31e8b273 => androidx/camera/core/impl/SessionConfig$ErrorListener
	i32 838682992, ; 227: 0x31fd4970 => java/lang/NullPointerException
	i32 843513459, ; 228: 0x3246fe73 => kotlin/jvm/internal/DefaultConstructorMarker
	i32 850852390, ; 229: 0x32b6fa26 => crc6452ffdc5b34af3a0f/LayoutViewGroup
	i32 853881756, ; 230: 0x32e5339c => androidx/camera/core/impl/CameraCaptureMetaData$AwbState
	i32 857458217, ; 231: 0x331bc629 => android/content/res/AssetManager
	i32 861765628, ; 232: 0x335d7ffc => com/google/android/material/navigation/NavigationBarItemView
	i32 864882745, ; 233: 0x338d1039 => android/graphics/Bitmap$Config
	i32 868122293, ; 234: 0x33be7eb5 => mono/android/app/TimePickerDialog_OnTimeSetListenerImplementor
	i32 876646173, ; 235: 0x34408f1d => javax/net/ssl/TrustManager
	i32 882925181, ; 236: 0x34a05e7d => androidx/camera/core/impl/CameraCaptureMetaData
	i32 885223365, ; 237: 0x34c36fc5 => android/content/ContentResolver
	i32 888462179, ; 238: 0x34f4db63 => androidx/camera/core/internal/TargetConfig$Builder
	i32 893363610, ; 239: 0x353fa59a => java/lang/Short
	i32 895273226, ; 240: 0x355cc90a => crc645d80431ce5f73f11/GridLayoutSpanSizeLookup
	i32 899551522, ; 241: 0x359e1122 => mono/androidx/core/view/ActionProvider_VisibilityListenerImplementor
	i32 904055029, ; 242: 0x35e2c8f5 => androidx/camera/core/impl/CameraCaptureMetaData$AfMode
	i32 905461172, ; 243: 0x35f83db4 => androidx/camera/view/video/OnVideoSavedCallback
	i32 906034180, ; 244: 0x3600fc04 => android/database/Cursor
	i32 907462104, ; 245: 0x3616c5d8 => androidx/navigation/ui/NavigationUI
	i32 919133536, ; 246: 0x36c8dd60 => crc64338477404e88479c/DragAndDropGestureHandler
	i32 919189247, ; 247: 0x36c9b6ff => mono/androidx/recyclerview/widget/RecyclerView_OnChildAttachStateChangeListenerImplementor
	i32 921150788, ; 248: 0x36e7a544 => androidx/camera/core/VideoCapture$OutputFileResults
	i32 923128980, ; 249: 0x3705d494 => androidx/camera/view/CameraController
	i32 924972967, ; 250: 0x3721f7a7 => androidx/core/app/ActivityCompat$PermissionCompatDelegate
	i32 925357775, ; 251: 0x3727d6cf => java/nio/ByteBuffer
	i32 928674904, ; 252: 0x375a7458 => android/graphics/BitmapFactory
	i32 935434236, ; 253: 0x37c197fc => androidx/viewpager/widget/ViewPager$PageTransformer
	i32 937831689, ; 254: 0x37e62d09 => androidx/core/view/ViewPropertyAnimatorCompat
	i32 937899202, ; 255: 0x37e734c2 => com/google/android/material/navigation/NavigationBarPresenter
	i32 942722178, ; 256: 0x3830cc82 => crc6452ffdc5b34af3a0f/MauiWebChromeClient
	i32 953071147, ; 257: 0x38ceb62b => androidx/camera/core/impl/CameraCaptureMetaData$AfState
	i32 953679746, ; 258: 0x38d7ff82 => androidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry
	i32 962536581, ; 259: 0x395f2485 => kotlinx/coroutines/flow/StateFlow
	i32 964779174, ; 260: 0x39815ca6 => android/text/TextUtils
	i32 967170543, ; 261: 0x39a5d9ef => android/text/TextPaint
	i32 973696562, ; 262: 0x3a096e32 => com/google/android/material/appbar/CollapsingToolbarLayout$StaticLayoutBuilderConfigurer
	i32 977860950, ; 263: 0x3a48f956 => androidx/appcompat/app/ActionBarDrawerToggle$Delegate
	i32 981409587, ; 264: 0x3a7f1f33 => crc64338477404e88479c/GradientStrokeDrawable
	i32 982326989, ; 265: 0x3a8d1ecd => android/widget/HorizontalScrollView
	i32 982631821, ; 266: 0x3a91c58d => androidx/lifecycle/LiveData
	i32 984605620, ; 267: 0x3aafe3b4 => android/graphics/PointF
	i32 984757927, ; 268: 0x3ab236a7 => androidx/appcompat/app/AlertDialog_IDialogInterfaceOnCancelListenerImplementor
	i32 986059584, ; 269: 0x3ac61340 => androidx/core/content/ContextCompat
	i32 988965965, ; 270: 0x3af26c4d => android/text/method/BaseKeyListener
	i32 996699600, ; 271: 0x3b686dd0 => java/io/FileDescriptor
	i32 996847286, ; 272: 0x3b6aaeb6 => androidx/lifecycle/Observer
	i32 1007618603, ; 273: 0x3c0f0a2b => android/location/Location
	i32 1013410179, ; 274: 0x3c676983 => com/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState
	i32 1016711248, ; 275: 0x3c99c850 => androidx/recyclerview/widget/ItemTouchHelper
	i32 1018791985, ; 276: 0x3cb98831 => android/widget/EditText
	i32 1020914866, ; 277: 0x3cd9ecb2 => androidx/drawerlayout/widget/DrawerLayout$LayoutParams
	i32 1026417919, ; 278: 0x3d2de4ff => android/view/WindowMetrics
	i32 1026507328, ; 279: 0x3d2f4240 => java/net/SocketAddress
	i32 1027401838, ; 280: 0x3d3ce86e => java/util/AbstractCollection
	i32 1030707578, ; 281: 0x3d6f597a => android/database/DataSetObserver
	i32 1035992969, ; 282: 0x3dbfff89 => android/content/res/Resources
	i32 1046468555, ; 283: 0x3e5fd7cb => microsoft/maui/platform/MauiNavHostFragment
	i32 1046511593, ; 284: 0x3e607fe9 => android/text/InputFilter$LengthFilter
	i32 1046940936, ; 285: 0x3e670d08 => androidx/fragment/app/FragmentContainerView
	i32 1048070238, ; 286: 0x3e78485e => android/view/GestureDetector$OnDoubleTapListener
	i32 1054689658, ; 287: 0x3edd497a => android/graphics/drawable/shapes/OvalShape
	i32 1055644286, ; 288: 0x3eebda7e => android/widget/AbsoluteLayout
	i32 1059653424, ; 289: 0x3f290730 => androidx/viewpager/widget/ViewPager
	i32 1068071799, ; 290: 0x3fa97b77 => crc640ec207abc449b2ca/CustomFrameLayout
	i32 1070459310, ; 291: 0x3fcde9ae => android/database/ContentObserver
	i32 1070496012, ; 292: 0x3fce790c => androidx/navigation/NavDeepLinkBuilder
	i32 1073696643, ; 293: 0x3fff4f83 => mono/android/animation/ValueAnimator_AnimatorUpdateListenerImplementor
	i32 1075342899, ; 294: 0x40186e33 => com/google/android/material/tabs/TabLayout$TabView
	i32 1077629184, ; 295: 0x403b5100 => java/util/function/Consumer
	i32 1082318343, ; 296: 0x4082de07 => androidx/recyclerview/widget/RecyclerView$ItemDecoration
	i32 1084013811, ; 297: 0x409cbcf3 => androidx/core/view/OnReceiveContentListener
	i32 1090772272, ; 298: 0x4103dd30 => androidx/navigation/NavController
	i32 1090939588, ; 299: 0x41066ac4 => javax/net/ssl/KeyManagerFactory
	i32 1092939402, ; 300: 0x4124ee8a => crc64e1fb321c08285b90/ListViewRenderer_Container
	i32 1100963717, ; 301: 0x419f5f85 => android/widget/TextView$OnEditorActionListener
	i32 1101713299, ; 302: 0x41aacf93 => mono/com/google/android/material/navigation/NavigationView_OnNavigationItemSelectedListenerImplementor
	i32 1101833833, ; 303: 0x41aca669 => mono/android/view/View_OnFocusChangeListenerImplementor
	i32 1102556300, ; 304: 0x41b7ac8c => android/provider/Settings$NameValueTable
	i32 1102620299, ; 305: 0x41b8a68b => android/text/Layout$Alignment
	i32 1103647071, ; 306: 0x41c8515f => androidx/camera/view/CameraController$OutputSize
	i32 1107181286, ; 307: 0x41fe3ee6 => androidx/appcompat/app/ActionBar$OnMenuVisibilityListener
	i32 1107287745, ; 308: 0x41ffdec1 => androidx/activity/result/ActivityResultLauncher
	i32 1108415989, ; 309: 0x421115f5 => android/widget/AdapterView$OnItemLongClickListener
	i32 1117343714, ; 310: 0x42994fe2 => androidx/drawerlayout/widget/DrawerLayout
	i32 1127862102, ; 311: 0x4339cf56 => androidx/navigation/ui/AppBarConfiguration
	i32 1134314180, ; 312: 0x439c42c4 => androidx/core/view/ViewPropertyAnimatorListener
	i32 1139396407, ; 313: 0x43e9cf37 => androidx/camera/core/impl/CaptureBundle
	i32 1139859576, ; 314: 0x43f0e078 => android/text/StaticLayout$Builder
	i32 1142011573, ; 315: 0x4411b6b5 => java/util/Enumeration
	i32 1145185992, ; 316: 0x444226c8 => crc640ec207abc449b2ca/ShellFragmentContainer
	i32 1146395494, ; 317: 0x44549b66 => android/widget/RadioButton
	i32 1148330824, ; 318: 0x44722348 => crc64338477404e88479c/PointerGestureHandler
	i32 1149267780, ; 319: 0x44806f44 => java/lang/Cloneable
	i32 1158703051, ; 320: 0x451067cb => com/google/android/material/snackbar/ContentViewCallback
	i32 1178417755, ; 321: 0x463d3a5b => com/google/android/material/bottomnavigation/BottomNavigationMenuView
	i32 1179280881, ; 322: 0x464a65f1 => crc64e1fb321c08285b90/TableViewRenderer
	i32 1180952486, ; 323: 0x4663e7a6 => crc64e1fb321c08285b90/ListViewRenderer_ListViewSwipeRefreshLayoutListener
	i32 1180998696, ; 324: 0x46649c28 => androidx/appcompat/widget/AppCompatAutoCompleteTextView
	i32 1183226258, ; 325: 0x46869992 => android/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo
	i32 1185273701, ; 326: 0x46a5d765 => android/view/SubMenu
	i32 1187677323, ; 327: 0x46ca848b => androidx/camera/core/internal/ThreadConfig$Builder
	i32 1194275052, ; 328: 0x472f30ec => androidx/core/view/accessibility/AccessibilityWindowInfoCompat
	i32 1194549417, ; 329: 0x473360a9 => crc640ec207abc449b2ca/ShellSearchView_ClipDrawableWrapper
	i32 1195821077, ; 330: 0x4746c815 => android/net/Network
	i32 1196063310, ; 331: 0x474a7a4e => java/lang/Appendable
	i32 1196093578, ; 332: 0x474af08a => android/provider/Settings$System
	i32 1198549944, ; 333: 0x47706bb8 => mono/com/google/android/material/tabs/TabLayout_BaseOnTabSelectedListenerImplementor
	i32 1201226558, ; 334: 0x4799433e => android/net/NetworkInfo
	i32 1202492029, ; 335: 0x47ac927d => android/text/style/StyleSpan
	i32 1205083900, ; 336: 0x47d41efc => android/animation/ValueAnimator
	i32 1212684324, ; 337: 0x48481824 => android/app/DatePickerDialog
	i32 1213250374, ; 338: 0x4850bb46 => android/graphics/Xfermode
	i32 1219897870, ; 339: 0x48b62a0e => crc640ec207abc449b2ca/ShellFlyoutRenderer
	i32 1221453854, ; 340: 0x48cde81e => crc640ec207abc449b2ca/ShellSearchViewAdapter_ObjectWrapper
	i32 1224298156, ; 341: 0x48f94eac => crc640a8d9a12ddbf2cf2/EnergySaverBroadcastReceiver
	i32 1227075600, ; 342: 0x4923b010 => javax/security/cert/Certificate
	i32 1250909264, ; 343: 0x4a8f5c50 => com/google/android/material/navigation/NavigationBarView$OnItemSelectedListener
	i32 1253784686, ; 344: 0x4abb3c6e => androidx/core/app/TaskStackBuilder
	i32 1258478866, ; 345: 0x4b02dd12 => androidx/appcompat/view/ActionMode$Callback
	i32 1265348827, ; 346: 0x4b6bb0db => androidx/coordinatorlayout/widget/CoordinatorLayout
	i32 1268624488, ; 347: 0x4b9dac68 => androidx/camera/core/impl/CamcorderProfileProxy
	i32 1270186925, ; 348: 0x4bb583ad => android/view/Window$Callback
	i32 1270561450, ; 349: 0x4bbb3aaa => java/net/SocketTimeoutException
	i32 1275619756, ; 350: 0x4c0869ac => androidx/navigation/ui/AppBarConfiguration$OnNavigateUpListener
	i32 1281062668, ; 351: 0x4c5b770c => android/widget/SeekBar$OnSeekBarChangeListener
	i32 1286921383, ; 352: 0x4cb4dca7 => android/widget/Filter$FilterResults
	i32 1288979257, ; 353: 0x4cd44339 => kotlin/jvm/functions/Function2
	i32 1289639087, ; 354: 0x4cde54af => crc6452ffdc5b34af3a0f/LocalizedDigitsKeyListener
	i32 1293030742, ; 355: 0x4d121556 => com/google/android/material/appbar/HeaderBehavior
	i32 1293700472, ; 356: 0x4d1c4d78 => android/graphics/PorterDuffColorFilter
	i32 1298454265, ; 357: 0x4d64d6f9 => java/lang/Throwable
	i32 1301907488, ; 358: 0x4d998820 => androidx/camera/core/impl/CaptureConfig$Builder
	i32 1301914322, ; 359: 0x4d99a2d2 => androidx/recyclerview/widget/RecyclerView$SmoothScroller
	i32 1304466969, ; 360: 0x4dc09619 => androidx/core/view/MenuProvider
	i32 1306150327, ; 361: 0x4dda45b7 => crc6488302ad6e9e4df1a/MauiApplication
	i32 1308517918, ; 362: 0x4dfe661e => crc64fcf28c0e24b4cc31/ButtonHandler_ButtonTouchListener
	i32 1314998831, ; 363: 0x4e614a2f => androidx/appcompat/app/AppCompatCallback
	i32 1318092535, ; 364: 0x4e907ef7 => android/widget/Filterable
	i32 1322605231, ; 365: 0x4ed55aaf => androidx/camera/core/impl/CameraCaptureCallback
	i32 1323697755, ; 366: 0x4ee6065b => javax/net/ssl/SSLContext
	i32 1326197406, ; 367: 0x4f0c2a9e => androidx/camera/view/PreviewView$ScaleType
	i32 1330071955, ; 368: 0x4f474993 => androidx/recyclerview/widget/RecyclerView$RecycledViewPool
	i32 1332253635, ; 369: 0x4f6893c3 => crc640ec207abc449b2ca/ScrollLayoutManager
	i32 1335098580, ; 370: 0x4f93fcd4 => java/util/Collection
	i32 1336254343, ; 371: 0x4fa59f87 => com/google/android/material/appbar/AppBarLayout$BaseBehavior$BaseDragCallback
	i32 1336879845, ; 372: 0x4faf2ae5 => androidx/core/os/LocaleListCompat
	i32 1340347874, ; 373: 0x4fe415e2 => android/graphics/Paint
	i32 1342107582, ; 374: 0x4ffeefbe => com/google/crypto/tink/shaded/protobuf/Internal$EnumLite
	i32 1343720411, ; 375: 0x50178bdb => java/util/concurrent/Callable
	i32 1345123498, ; 376: 0x502cf4aa => androidx/navigation/fragment/FragmentNavigator
	i32 1352385505, ; 377: 0x509bc3e1 => androidx/appcompat/view/menu/MenuPresenter
	i32 1353632159, ; 378: 0x50aec99f => crc64e1fb321c08285b90/ListViewRenderer_SwipeRefreshLayoutWithFixedNestedScrolling
	i32 1362595161, ; 379: 0x51378d59 => androidx/appcompat/widget/Toolbar$LayoutParams
	i32 1368421702, ; 380: 0x51907546 => java/lang/ClassCastException
	i32 1370891736, ; 381: 0x51b625d8 => android/graphics/PorterDuff$Mode
	i32 1373547703, ; 382: 0x51deacb7 => androidx/recyclerview/widget/RecyclerView$RecyclerListener
	i32 1373631042, ; 383: 0x51dff242 => javax/net/ssl/KeyManager
	i32 1374692843, ; 384: 0x51f025eb => androidx/core/util/Pair
	i32 1383547335, ; 385: 0x527741c7 => android/os/Message
	i32 1384844960, ; 386: 0x528b0ea0 => androidx/lifecycle/SavedStateHandle
	i32 1386757446, ; 387: 0x52a83d46 => android/content/ComponentName
	i32 1396578145, ; 388: 0x533e1761 => mono/androidx/core/view/ActionProvider_SubUiVisibilityListenerImplementor
	i32 1397281529, ; 389: 0x5348d2f9 => androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener
	i32 1397639547, ; 390: 0x534e497b => crc640ec207abc449b2ca/ContainerView
	i32 1415978247, ; 391: 0x54661d07 => android/content/pm/ApplicationInfo
	i32 1421189158, ; 392: 0x54b5a026 => androidx/recyclerview/widget/RecyclerView$LayoutParams
	i32 1425790689, ; 393: 0x54fbd6e1 => java/lang/SecurityException
	i32 1428048664, ; 394: 0x551e4b18 => java/net/HttpURLConnection
	i32 1429796945, ; 395: 0x5538f851 => android/graphics/RectF
	i32 1433059198, ; 396: 0x556abf7e => android/view/ViewManager
	i32 1436098349, ; 397: 0x55991f2d => crc645d80431ce5f73f11/RecyclerViewScrollListener_2
	i32 1438182722, ; 398: 0x55b8ed42 => androidx/appcompat/view/menu/MenuView
	i32 1438762315, ; 399: 0x55c1c54b => android/view/View$OnAttachStateChangeListener
	i32 1442348706, ; 400: 0x55f87ea2 => java/util/function/Predicate
	i32 1443275372, ; 401: 0x5606a26c => crc64ba438d8f48cf7e75/ActivityLifecycleContextListener
	i32 1447309214, ; 402: 0x56442f9e => android/widget/LinearLayout$LayoutParams
	i32 1448438974, ; 403: 0x56556cbe => android/view/animation/AccelerateInterpolator
	i32 1450448031, ; 404: 0x5674149f => crc6477f0d89a9cfd64b1/VisualElementTracker_AttachTracker
	i32 1452142283, ; 405: 0x568deecb => crc64338477404e88479c/TapAndPanGestureDetector
	i32 1453454006, ; 406: 0x56a1f2b6 => com/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy
	i32 1457311873, ; 407: 0x56dcd081 => mono/android/content/DialogInterface_OnCancelListenerImplementor
	i32 1457582199, ; 408: 0x56e0f077 => android/text/SpannableStringInternal
	i32 1459844378, ; 409: 0x5703751a => android/widget/ProgressBar
	i32 1464522999, ; 410: 0x574ad8f7 => crc640ec207abc449b2ca/ShellToolbarTracker
	i32 1468591223, ; 411: 0x5788ec77 => androidx/core/view/AccessibilityDelegateCompat
	i32 1472468295, ; 412: 0x57c41547 => androidx/core/app/ActivityCompat
	i32 1474225881, ; 413: 0x57dee6d9 => android/view/animation/AnimationUtils
	i32 1475682991, ; 414: 0x57f522af => java/util/HashMap
	i32 1476293262, ; 415: 0x57fe728e => javax/security/auth/Subject
	i32 1477567587, ; 416: 0x5811e463 => androidx/camera/core/Preview
	i32 1481014756, ; 417: 0x58467de4 => android/graphics/drawable/Animatable
	i32 1485707030, ; 418: 0x588e1716 => android/view/View$OnHoverListener
	i32 1489003548, ; 419: 0x58c0641c => crc6477f0d89a9cfd64b1/NativeViewWrapperRenderer
	i32 1489594546, ; 420: 0x58c968b2 => java/nio/channels/spi/AbstractInterruptibleChannel
	i32 1492815417, ; 421: 0x58fa8e39 => java/util/concurrent/Executor
	i32 1493086679, ; 422: 0x58feb1d7 => androidx/appcompat/view/menu/MenuPresenter$Callback
	i32 1495575583, ; 423: 0x5924ac1f => crc645d80431ce5f73f11/NongreedySnapHelper_InitialScrollListener
	i32 1497029436, ; 424: 0x593adb3c => androidx/appcompat/app/AlertDialog_IDialogInterfaceOnClickListenerImplementor
	i32 1502465356, ; 425: 0x598dcd4c => com/google/crypto/tink/shaded/protobuf/WireFormat$JavaType
	i32 1503081372, ; 426: 0x5997339c => androidx/core/view/WindowInsetsCompat$Type
	i32 1504655917, ; 427: 0x59af3a2d => androidx/camera/core/impl/CameraDeviceSurfaceManager$Provider
	i32 1506774891, ; 428: 0x59cf8f6b => android/widget/Button
	i32 1509992539, ; 429: 0x5a00a85b => androidx/core/text/PrecomputedTextCompat$Params
	i32 1510743238, ; 430: 0x5a0c1cc6 => crc6452ffdc5b34af3a0f/ViewFragment
	i32 1516739793, ; 431: 0x5a679cd1 => androidx/camera/core/impl/CameraControlInternal
	i32 1523447213, ; 432: 0x5acdf5ad => androidx/viewpager2/widget/ViewPager2$PageTransformer
	i32 1544613420, ; 433: 0x5c10ee2c => java/io/File
	i32 1548306256, ; 434: 0x5c494750 => android/view/WindowManager$LayoutParams
	i32 1553655567, ; 435: 0x5c9ae70f => android/graphics/LinearGradient
	i32 1565919336, ; 436: 0x5d560868 => androidx/lifecycle/viewmodel/CreationExtras$Key
	i32 1566083953, ; 437: 0x5d588b71 => java/util/Comparator
	i32 1571054057, ; 438: 0x5da461e9 => crc64b5e713d400f589b7/LinearGradientShaderFactory
	i32 1572959512, ; 439: 0x5dc17518 => android/widget/AutoCompleteTextView
	i32 1573833883, ; 440: 0x5dcecc9b => android/app/AlertDialog
	i32 1581882681, ; 441: 0x5e499d39 => mono/androidx/appcompat/widget/Toolbar_OnMenuItemClickListenerImplementor
	i32 1584672329, ; 442: 0x5e742e49 => android/view/Display
	i32 1586851388, ; 443: 0x5e956e3c => android/os/Handler
	i32 1592353641, ; 444: 0x5ee96369 => androidx/navigation/NavOptions
	i32 1594555135, ; 445: 0x5f0afaff => android/speech/RecognitionListener
	i32 1597153036, ; 446: 0x5f329f0c => com/google/android/material/snackbar/Snackbar
	i32 1608060795, ; 447: 0x5fd90f7b => crc6477f0d89a9cfd64b1/ViewRenderer_2
	i32 1612253825, ; 448: 0x60190a81 => androidx/appcompat/widget/AppCompatTextView
	i32 1614379351, ; 449: 0x60397957 => androidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat
	i32 1618766693, ; 450: 0x607c6b65 => com/google/android/material/appbar/AppBarLayout$BaseBehavior
	i32 1622360015, ; 451: 0x60b33fcf => android/webkit/CookieManager
	i32 1630811578, ; 452: 0x613435ba => com/microsoft/maui/ImageLoaderCallback
	i32 1636409781, ; 453: 0x6189a1b5 => androidx/core/content/PermissionChecker
	i32 1636428268, ; 454: 0x6189e9ec => androidx/navigation/NavViewModelStoreProvider
	i32 1637959351, ; 455: 0x61a146b7 => java/security/Principal
	i32 1644876130, ; 456: 0x620ad162 => android/graphics/Matrix
	i32 1645748849, ; 457: 0x62182271 => crc640ec207abc449b2ca/ShellFlyoutRecyclerAdapter_ElementViewHolder
	i32 1646348278, ; 458: 0x622147f6 => android/view/View
	i32 1648550614, ; 459: 0x6242e2d6 => androidx/camera/core/VideoCapture$OutputFileOptions
	i32 1649695927, ; 460: 0x62545cb7 => java/lang/RuntimeException
	i32 1654944946, ; 461: 0x62a474b2 => androidx/camera/core/FocusMeteringAction
	i32 1657134862, ; 462: 0x62c5df0e => java/lang/IndexOutOfBoundsException
	i32 1659243208, ; 463: 0x62e60ac8 => androidx/camera/core/impl/Observable$Observer
	i32 1661912031, ; 464: 0x630ec3df => android/view/View$OnTouchListener
	i32 1667397059, ; 465: 0x636275c3 => androidx/camera/core/SurfaceRequest
	i32 1672227968, ; 466: 0x63ac2c80 => crc645d80431ce5f73f11/TemplatedItemViewHolder
	i32 1674361655, ; 467: 0x63ccbb37 => androidx/security/crypto/MasterKey
	i32 1678351393, ; 468: 0x64099c21 => androidx/security/crypto/EncryptedSharedPreferences
	i32 1679970975, ; 469: 0x6422529f => android/view/accessibility/AccessibilityManager
	i32 1680835779, ; 470: 0x642f84c3 => java/lang/Byte
	i32 1681267672, ; 471: 0x64361bd8 => crc6452ffdc5b34af3a0f/MauiPickerBase
	i32 1687354114, ; 472: 0x6492fb02 => mono/android/view/View_OnAttachStateChangeListenerImplementor
	i32 1687579136, ; 473: 0x64966a00 => android/widget/CheckBox
	i32 1687871467, ; 474: 0x649adfeb => com/microsoft/maui/PlatformWrapperView
	i32 1692718583, ; 475: 0x64e4d5f7 => android/view/WindowInsets$Type
	i32 1694454608, ; 476: 0x64ff5350 => androidx/camera/core/impl/Config$Option
	i32 1695391719, ; 477: 0x650d9fe7 => android/widget/EdgeEffect
	i32 1698676726, ; 478: 0x653fbff6 => androidx/navigation/NavDestination$DeepLinkMatch
	i32 1699467861, ; 479: 0x654bd255 => android/widget/CompoundButton
	i32 1703121546, ; 480: 0x6583928a => com/google/crypto/tink/shaded/protobuf/ByteString
	i32 1704419470, ; 481: 0x6597608e => android/view/ContentInfo
	i32 1717322157, ; 482: 0x665c41ad => androidx/navigation/NavDirections
	i32 1718265030, ; 483: 0x666aa4c6 => java/lang/Character
	i32 1728017347, ; 484: 0x66ff73c3 => android/view/animation/Animation$AnimationListener
	i32 1728338198, ; 485: 0x67045916 => kotlin/coroutines/CoroutineContext$Key
	i32 1729659134, ; 486: 0x671880fe => android/view/MenuInflater
	i32 1733881762, ; 487: 0x6758efa2 => android/content/ClipData$Item
	i32 1735582558, ; 488: 0x6772e35e => java/util/ListIterator
	i32 1738779209, ; 489: 0x67a3aa49 => androidx/lifecycle/ViewModelStore
	i32 1740814247, ; 490: 0x67c2b7a7 => android/widget/FrameLayout
	i32 1740929322, ; 491: 0x67c4792a => android/os/IInterface
	i32 1744998235, ; 492: 0x68028f5b => androidx/camera/lifecycle/ProcessCameraProvider
	i32 1746572858, ; 493: 0x681a963a => android/app/Application$ActivityLifecycleCallbacks
	i32 1747431222, ; 494: 0x6827af36 => com/google/android/material/appbar/AppBarLayout$LiftOnScrollListener
	i32 1755073017, ; 495: 0x689c49f9 => androidx/camera/core/Preview$SurfaceProvider
	i32 1755285137, ; 496: 0x689f8691 => java/util/Random
	i32 1756541799, ; 497: 0x68b2b367 => androidx/core/view/ActionProvider$VisibilityListener
	i32 1756909581, ; 498: 0x68b8500d => android/text/Layout
	i32 1757019113, ; 499: 0x68b9fbe9 => android/graphics/drawable/shapes/RectShape
	i32 1757602278, ; 500: 0x68c2e1e6 => crc6452ffdc5b34af3a0f/MauiTimePicker
	i32 1758490869, ; 501: 0x68d070f5 => android/os/BaseBundle
	i32 1761245836, ; 502: 0x68fa7a8c => android/content/ClipData
	i32 1765383592, ; 503: 0x69399da8 => crc645d80431ce5f73f11/MauiRecyclerView_3
	i32 1772705556, ; 504: 0x69a95714 => android/graphics/Point
	i32 1775053709, ; 505: 0x69cd2b8d => crc64f728827fec74e9c3/Toolbar_Container
	i32 1775355160, ; 506: 0x69d1c518 => android/content/res/ColorStateList
	i32 1779059623, ; 507: 0x6a0a4ba7 => java/util/concurrent/atomic/AtomicBoolean
	i32 1780695190, ; 508: 0x6a234096 => androidx/core/view/WindowInsetsAnimationControlListenerCompat
	i32 1786479230, ; 509: 0x6a7b827e => java/util/TreeMap
	i32 1789983650, ; 510: 0x6ab0fba2 => com/google/crypto/tink/shaded/protobuf/ByteString$Output
	i32 1790236887, ; 511: 0x6ab4d8d7 => android/text/Spanned
	i32 1796407475, ; 512: 0x6b1300b3 => com/google/android/material/button/MaterialButton
	i32 1797062696, ; 513: 0x6b1d0028 => androidx/camera/core/impl/SurfaceConfig$ConfigType
	i32 1807220671, ; 514: 0x6bb7ffbf => android/view/View$OnClickListener
	i32 1820341885, ; 515: 0x6c80367d => androidx/camera/core/impl/ImageOutputConfig$Builder
	i32 1825825055, ; 516: 0x6cd3e11f => androidx/appcompat/widget/SearchView$OnCloseListener
	i32 1826061187, ; 517: 0x6cd77b83 => androidx/appcompat/view/menu/SubMenuBuilder
	i32 1829255461, ; 518: 0x6d083925 => crc64e1fb321c08285b90/SwitchCellView
	i32 1830766463, ; 519: 0x6d1f477f => android/graphics/drawable/ShapeDrawable
	i32 1833791080, ; 520: 0x6d4d6e68 => androidx/camera/core/impl/SessionConfig$OptionUnpacker
	i32 1835346313, ; 521: 0x6d652989 => androidx/navigation/NavAction
	i32 1837796023, ; 522: 0x6d8a8ab7 => crc64fcf28c0e24b4cc31/SliderHandler_SeekBarChangeListener
	i32 1846028421, ; 523: 0x6e082885 => crc6452ffdc5b34af3a0f/MauiPageControl
	i32 1849338590, ; 524: 0x6e3aaade => com/google/android/material/appbar/AppBarLayout$Behavior
	i32 1851730788, ; 525: 0x6e5f2b64 => java/lang/Runnable
	i32 1853655829, ; 526: 0x6e7c8b15 => com/google/android/material/badge/BadgeDrawable
	i32 1855124457, ; 527: 0x6e92f3e9 => androidx/appcompat/app/AlertDialog_IDialogInterfaceOnMultiChoiceClickListenerImplementor
	i32 1855628473, ; 528: 0x6e9aa4b9 => mono/android/text/TextWatcherImplementor
	i32 1859010077, ; 529: 0x6ece3e1d => android/widget/LinearLayout
	i32 1861269606, ; 530: 0x6ef0b866 => androidx/recyclerview/widget/RecyclerView$EdgeEffectFactory
	i32 1864726383, ; 531: 0x6f25776f => android/view/ViewConfiguration
	i32 1866304377, ; 532: 0x6f3d8b79 => android/view/SearchEvent
	i32 1868918630, ; 533: 0x6f656f66 => androidx/camera/core/impl/CameraThreadConfig
	i32 1871742431, ; 534: 0x6f9085df => android/graphics/drawable/Drawable$ConstantState
	i32 1884164402, ; 535: 0x704e1132 => crc64e1fb321c08285b90/BaseCellView
	i32 1884841200, ; 536: 0x705864f0 => android/os/PowerManager
	i32 1884960853, ; 537: 0x705a3855 => android/content/DialogInterface$OnMultiChoiceClickListener
	i32 1888258715, ; 538: 0x708c8a9b => kotlin/jvm/functions/Function1
	i32 1890166105, ; 539: 0x70a9a559 => androidx/appcompat/widget/Toolbar_NavigationOnClickEventDispatcher
	i32 1891973482, ; 540: 0x70c5396a => android/graphics/drawable/InsetDrawable
	i32 1893419537, ; 541: 0x70db4a11 => androidx/camera/core/impl/CameraCaptureMetaData$AeState
	i32 1893605975, ; 542: 0x70de2257 => androidx/fragment/app/FragmentActivity
	i32 1895944387, ; 543: 0x7101d0c3 => android/hardware/camera2/CameraDevice
	i32 1904678085, ; 544: 0x718714c5 => android/text/style/ForegroundColorSpan
	i32 1905107734, ; 545: 0x718da316 => androidx/lifecycle/ViewModelProvider
	i32 1910335970, ; 546: 0x71dd69e2 => crc6477f0d89a9cfd64b1/Platform_DefaultRenderer
	i32 1910754150, ; 547: 0x71e3cb66 => com/google/android/material/checkbox/MaterialCheckBox$OnErrorChangedListener
	i32 1912915638, ; 548: 0x7204c6b6 => crc6452ffdc5b34af3a0f/MauiDatePicker
	i32 1914135313, ; 549: 0x72176311 => crc6477f0d89a9cfd64b1/ViewRenderer
	i32 1923639542, ; 550: 0x72a868f6 => android/content/pm/ComponentInfo
	i32 1926992606, ; 551: 0x72db92de => androidx/lifecycle/Lifecycle$Event
	i32 1928676945, ; 552: 0x72f54651 => androidx/camera/core/impl/OptionsBundle
	i32 1942660151, ; 553: 0x73caa437 => androidx/camera/core/ExtendableBuilder
	i32 1943778051, ; 554: 0x73dbb303 => android/widget/AdapterView$OnItemSelectedListener
	i32 1944129628, ; 555: 0x73e1105c => java/io/OutputStream
	i32 1947615975, ; 556: 0x741642e7 => androidx/camera/core/impl/PreviewConfig
	i32 1960987726, ; 557: 0x74e24c4e => mono/android/content/DialogInterface_OnDismissListenerImplementor
	i32 1962126435, ; 558: 0x74f3ac63 => android/content/BroadcastReceiver
	i32 1964766837, ; 559: 0x751bf675 => androidx/camera/core/impl/UseCaseConfig
	i32 1965949473, ; 560: 0x752e0221 => androidx/fragment/app/FragmentManager
	i32 1967297202, ; 561: 0x754292b2 => androidx/navigation/NavArgument
	i32 1969410869, ; 562: 0x7562d335 => mono/com/google/android/material/appbar/AppBarLayout_LiftOnScrollListenerImplementor
	i32 1970237303, ; 563: 0x756f6f77 => crc6452ffdc5b34af3a0f/StepperHandlerHolder
	i32 1970513771, ; 564: 0x7573a76b => crc64338477404e88479c/DragAndDropGestureHandler_CustomLocalStateData
	i32 1970549289, ; 565: 0x75743229 => androidx/appcompat/app/AlertDialog$Builder
	i32 1972856963, ; 566: 0x75976883 => crc640ec207abc449b2ca/ShellPageContainer
	i32 1975733601, ; 567: 0x75c34d61 => androidx/viewpager2/adapter/FragmentStateAdapter
	i32 1976149055, ; 568: 0x75c9a43f => com/google/android/material/shape/EdgeTreatment
	i32 1976782935, ; 569: 0x75d35057 => com/google/android/material/bottomsheet/BottomSheetDialog
	i32 1981181196, ; 570: 0x76166d0c => androidx/camera/view/video/Metadata$Builder
	i32 1985132650, ; 571: 0x7652b86a => androidx/camera/core/impl/ImageCaptureConfig
	i32 1985929388, ; 572: 0x765ee0ac => android/app/Activity
	i32 1987841337, ; 573: 0x767c0d39 => java/lang/Boolean
	i32 1988452830, ; 574: 0x768561de => crc6452ffdc5b34af3a0f/MauiPageControl_TEditClickListener
	i32 1990610968, ; 575: 0x76a65018 => android/widget/AdapterView$OnItemClickListener
	i32 1998892954, ; 576: 0x7724af9a => androidx/camera/core/impl/CaptureProcessor
	i32 1999563224, ; 577: 0x772ee9d8 => android/graphics/drawable/GradientDrawable
	i32 2008064836, ; 578: 0x77b0a344 => android/content/Intent
	i32 2009011456, ; 579: 0x77bf1500 => com/google/android/material/elevation/ElevationOverlayProvider
	i32 2011207868, ; 580: 0x77e098bc => androidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat
	i32 2013969252, ; 581: 0x780abb64 => androidx/appcompat/widget/AppCompatImageView
	i32 2014726135, ; 582: 0x781647f7 => android/view/accessibility/AccessibilityRecord
	i32 2026156138, ; 583: 0x78c4b06a => androidx/camera/core/impl/CaptureStage
	i32 2026619833, ; 584: 0x78cbc3b9 => android/widget/FrameLayout$LayoutParams
	i32 2027782872, ; 585: 0x78dd82d8 => android/view/ContextThemeWrapper
	i32 2031450615, ; 586: 0x791579f7 => android/widget/AdapterView
	i32 2036556174, ; 587: 0x7963618e => android/content/DialogInterface
	i32 2039728241, ; 588: 0x7993c871 => android/widget/TimePicker
	i32 2042935261, ; 589: 0x79c4b7dd => android/text/style/BulletSpan
	i32 2043030513, ; 590: 0x79c62bf1 => android/os/Parcelable$Creator
	i32 2043331430, ; 591: 0x79cac366 => androidx/core/view/accessibility/AccessibilityNodeInfoCompat$TouchDelegateInfoCompat
	i32 2045330957, ; 592: 0x79e9460d => com/google/android/material/checkbox/MaterialCheckBox$OnCheckedStateChangedListener
	i32 2046574810, ; 593: 0x79fc40da => java/util/Locale
	i32 2047721020, ; 594: 0x7a0dbe3c => android/webkit/WebChromeClient$FileChooserParams
	i32 2050960997, ; 595: 0x7a3f2e65 => java/util/function/ToLongFunction
	i32 2053440974, ; 596: 0x7a6505ce => mono/androidx/viewpager/widget/ViewPager_OnPageChangeListenerImplementor
	i32 2054408678, ; 597: 0x7a73c9e6 => androidx/recyclerview/widget/RecyclerView$Recycler
	i32 2060932729, ; 598: 0x7ad75679 => androidx/camera/core/impl/ImageProxyBundle
	i32 2061721420, ; 599: 0x7ae35f4c => android/database/CharArrayBuffer
	i32 2061824620, ; 600: 0x7ae4f26c => androidx/camera/core/impl/utils/ExifData$WhiteBalanceMode
	i32 2063985753, ; 601: 0x7b05ec59 => android/view/animation/Animation
	i32 2064723667, ; 602: 0x7b112ed3 => android/widget/SpinnerAdapter
	i32 2066129802, ; 603: 0x7b26a38a => mono/com/google/android/material/appbar/AppBarLayout_OnOffsetChangedListenerImplementor
	i32 2067827442, ; 604: 0x7b408af2 => androidx/camera/core/internal/UseCaseEventConfig
	i32 2072634313, ; 605: 0x7b89e3c9 => crc64b5e713d400f589b7/MauiDrawable
	i32 2073337312, ; 606: 0x7b949de0 => android/app/AlertDialog$Builder
	i32 2076112998, ; 607: 0x7bbef866 => androidx/navigation/NavGraphNavigator
	i32 2079753938, ; 608: 0x7bf686d2 => android/content/IntentSender
	i32 2080685156, ; 609: 0x7c04bc64 => java/security/SecureRandom
	i32 2080858891, ; 610: 0x7c07630b => crc64fcf28c0e24b4cc31/SearchBarHandler_FocusChangeListener
	i32 2082283253, ; 611: 0x7c1d1ef5 => androidx/camera/core/Camera
	i32 2085042410, ; 612: 0x7c4738ea => androidx/camera/core/impl/ImageAnalysisConfig
	i32 2090823071, ; 613: 0x7c9f6d9f => android/os/Environment
	i32 2091052166, ; 614: 0x7ca2ec86 => androidx/fragment/app/FragmentManager$BackStackEntry
	i32 2096401987, ; 615: 0x7cf48e43 => android/widget/AbsSeekBar
	i32 2100944957, ; 616: 0x7d39e03d => android/graphics/Path
	i32 2102331822, ; 617: 0x7d4f09ae => androidx/camera/core/ImageCaptureException
	i32 2108039621, ; 618: 0x7da621c5 => com/google/android/material/snackbar/Snackbar_SnackbarActionClickImplementor
	i32 2113134466, ; 619: 0x7df3df82 => androidx/appcompat/widget/SearchView$OnQueryTextListener
	i32 2114237978, ; 620: 0x7e04b61a => android/content/res/Configuration
	i32 2122172224, ; 621: 0x7e7dc740 => kotlin/coroutines/Continuation
	i32 2123880745, ; 622: 0x7e97d929 => android/content/ContentValues
	i32 2128294650, ; 623: 0x7edb32fa => androidx/loader/app/LoaderManager
	i32 2130146345, ; 624: 0x7ef77429 => kotlinx/coroutines/flow/SharedFlow
	i32 2131480051, ; 625: 0x7f0bcdf3 => android/animation/AnimatorListenerAdapter
	i32 2136942723, ; 626: 0x7f5f2883 => crc64338477404e88479c/FragmentContainer
	i32 2137427903, ; 627: 0x7f668fbf => crc640a8d9a12ddbf2cf2/DeviceDisplayImplementation_Listener
	i32 2138307407, ; 628: 0x7f73fb4f => androidx/camera/core/impl/CameraInfoInternal
	i32 2139204439, ; 629: 0x7f81ab57 => android/util/Range
	i32 2140205691, ; 630: 0x7f90f27b => androidx/navigation/NavGraph
	i32 2142674759, ; 631: 0x7fb69f47 => com/google/android/material/appbar/AppBarLayout
	i32 2147225671, ; 632: 0x7ffc1047 => com/google/crypto/tink/shaded/protobuf/WireFormat
	i32 2149539229, ; 633: 0x801f5d9d => crc64e1fb321c08285b90/ConditionalFocusLayout
	i32 2154510399, ; 634: 0x806b383f => android/view/animation/AnimationSet
	i32 2154747413, ; 635: 0x806ed615 => com/google/android/material/tabs/TabLayout
	i32 2169824131, ; 636: 0x8154e383 => com/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite
	i32 2171523184, ; 637: 0x816ed070 => androidx/navigation/NavDestination
	i32 2172975139, ; 638: 0x8184f823 => androidx/camera/core/UseCaseGroup
	i32 2175059521, ; 639: 0x81a4c641 => com/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener
	i32 2177045276, ; 640: 0x81c3131c => androidx/lifecycle/Lifecycle
	i32 2183290666, ; 641: 0x82225f2a => mono/android/widget/CompoundButton_OnCheckedChangeListenerImplementor
	i32 2189043474, ; 642: 0x827a2712 => android/graphics/Paint$FontMetrics
	i32 2191855147, ; 643: 0x82a50e2b => androidx/lifecycle/Lifecycle$State
	i32 2192317535, ; 644: 0x82ac1c5f => androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior
	i32 2199771177, ; 645: 0x831dd829 => androidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener
	i32 2204262174, ; 646: 0x83625f1e => org/xmlpull/v1/XmlPullParser
	i32 2208460083, ; 647: 0x83a26d33 => mono/android/content/DialogInterface_OnShowListenerImplementor
	i32 2215661969, ; 648: 0x84105191 => crc645d80431ce5f73f11/TextViewHolder
	i32 2222580802, ; 649: 0x8479e442 => com/google/crypto/tink/shaded/protobuf/MessageLite
	i32 2223322365, ; 650: 0x848534fd => androidx/appcompat/widget/TooltipCompat
	i32 2227192067, ; 651: 0x84c04103 => androidx/fragment/app/FragmentOnAttachListener
	i32 2231172621, ; 652: 0x84fcfe0d => androidx/core/app/ActivityOptionsCompat
	i32 2233615225, ; 653: 0x85224379 => com/google/android/material/behavior/SwipeDismissBehavior
	i32 2235908794, ; 654: 0x854542ba => androidx/core/view/ActionProvider$SubUiVisibilityListener
	i32 2241800568, ; 655: 0x859f2978 => androidx/camera/core/ImageCapture$OutputFileResults
	i32 2241879133, ; 656: 0x85a05c5d => androidx/appcompat/widget/ScrollingTabContainerView
	i32 2246992727, ; 657: 0x85ee6357 => androidx/navigation/Navigator$Extras
	i32 2256819951, ; 658: 0x868456ef => crc6452ffdc5b34af3a0f/WrapperView
	i32 2266957298, ; 659: 0x871f05f2 => crc6452ffdc5b34af3a0f/MauiWebView
	i32 2267347248, ; 660: 0x8724f930 => androidx/recyclerview/widget/RecyclerView$OnFlingListener
	i32 2269094561, ; 661: 0x873fa2a1 => java/net/UnknownServiceException
	i32 2270923754, ; 662: 0x875b8bea => java/net/Proxy$Type
	i32 2275473001, ; 663: 0x87a0f669 => androidx/core/view/MenuItemCompat$OnActionExpandListener
	i32 2279866227, ; 664: 0x87e3ff73 => androidx/appcompat/widget/AppCompatImageButton
	i32 2284656609, ; 665: 0x882d17e1 => android/app/Application
	i32 2288751702, ; 666: 0x886b9456 => com/google/android/material/checkbox/MaterialCheckBox
	i32 2294676156, ; 667: 0x88c5fabc => android/view/accessibility/AccessibilityNodeInfo
	i32 2295274318, ; 668: 0x88cf1b4e => androidx/fragment/app/FragmentManager$OnBackStackChangedListener
	i32 2296411383, ; 669: 0x88e074f7 => android/content/IntentFilter
	i32 2296752502, ; 670: 0x88e5a976 => androidx/camera/core/impl/utils/ExifData$Builder
	i32 2306572387, ; 671: 0x897b8063 => androidx/camera/core/impl/CaptureConfig
	i32 2306886092, ; 672: 0x898049cc => com/google/crypto/tink/shaded/protobuf/Parser
	i32 2311244271, ; 673: 0x89c2c9ef => com/google/android/material/appbar/ViewOffsetBehavior
	i32 2313960057, ; 674: 0x89ec3a79 => crc64159f3caeb1269279/MauiDrawingView
	i32 2316440185, ; 675: 0x8a121279 => androidx/lifecycle/ViewModelStoreOwner
	i32 2320220715, ; 676: 0x8a4bc22b => crc64338477404e88479c/MauiViewPager
	i32 2325656078, ; 677: 0x8a9eb20e => androidx/camera/core/impl/Quirks
	i32 2325674508, ; 678: 0x8a9efa0c => java/lang/Iterable
	i32 2330207644, ; 679: 0x8ae4259c => androidx/activity/result/ActivityResultCallback
	i32 2331022545, ; 680: 0x8af094d1 => crc6452ffdc5b34af3a0f/BorderDrawable
	i32 2340946104, ; 681: 0x8b8800b8 => androidx/recyclerview/widget/PagerSnapHelper
	i32 2346390435, ; 682: 0x8bdb13a3 => android/content/pm/ActivityInfo
	i32 2347399792, ; 683: 0x8bea7a70 => android/net/ConnectivityManager
	i32 2350530900, ; 684: 0x8c1a4154 => androidx/recyclerview/widget/RecyclerView$OnScrollListener
	i32 2360386678, ; 685: 0x8cb0a476 => crc64338477404e88479c/InnerScaleListener
	i32 2363729366, ; 686: 0x8ce3a5d6 => java/lang/Enum
	i32 2367500547, ; 687: 0x8d1d3103 => android/widget/SearchView
	i32 2368081790, ; 688: 0x8d260f7e => androidx/camera/core/UseCase
	i32 2371350972, ; 689: 0x8d57f1bc => android/widget/Switch
	i32 2384342299, ; 690: 0x8e1e2d1b => androidx/camera/core/UseCase$EventCallback
	i32 2388882770, ; 691: 0x8e637552 => crc645d80431ce5f73f11/MauiCarouselRecyclerView_CarouselViewOnGlobalLayoutListener
	i32 2395748977, ; 692: 0x8ecc3a71 => android/view/View$OnLayoutChangeListener
	i32 2396624268, ; 693: 0x8ed9958c => androidx/swiperefreshlayout/widget/SwipeRefreshLayout
	i32 2399092329, ; 694: 0x8eff3e69 => androidx/recyclerview/widget/RecyclerView
	i32 2404057846, ; 695: 0x8f4b02f6 => android/app/PendingIntent
	i32 2405999645, ; 696: 0x8f68a41d => android/graphics/Shader
	i32 2409724717, ; 697: 0x8fa17b2d => android/util/TypedValue
	i32 2411404453, ; 698: 0x8fbb1ca5 => java/lang/UnsupportedOperationException
	i32 2420104680, ; 699: 0x903fdde8 => android/content/res/Resources$Theme
	i32 2427098608, ; 700: 0x90aa95f0 => mono/android/widget/TextView_OnEditorActionListenerImplementor
	i32 2428484497, ; 701: 0x90bfbb91 => java/util/LinkedHashSet
	i32 2429404267, ; 702: 0x90cdc46b => crc6452ffdc5b34af3a0f/WebViewExtensions_JavascriptResult
	i32 2431831584, ; 703: 0x90f2ce20 => com/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException
	i32 2436269619, ; 704: 0x91368633 => androidx/cursoradapter/widget/CursorAdapter
	i32 2439299394, ; 705: 0x9164c142 => crc640ec207abc449b2ca/ShellToolbarTracker_FlyoutIconDrawerDrawable
	i32 2442106723, ; 706: 0x918f9763 => androidx/core/view/WindowInsetsControllerCompat$OnControllableInsetsChangedListener
	i32 2443438835, ; 707: 0x91a3eaf3 => java/net/SocketException
	i32 2443738409, ; 708: 0x91a87d29 => android/graphics/PathEffect
	i32 2443787634, ; 709: 0x91a93d72 => androidx/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback
	i32 2444263543, ; 710: 0x91b08077 => crc64e1fb321c08285b90/EntryCellEditText
	i32 2449700811, ; 711: 0x920377cb => mono/com/google/android/material/navigation/NavigationBarView_OnItemReselectedListenerImplementor
	i32 2452264117, ; 712: 0x922a94b5 => java/io/RandomAccessFile
	i32 2455021577, ; 713: 0x9254a809 => android/view/WindowInsetsAnimationControlListener
	i32 2459634245, ; 714: 0x929b0a45 => com/google/android/material/appbar/AppBarLayout$ChildScrollEffect
	i32 2459753066, ; 715: 0x929cda6a => androidx/recyclerview/widget/ItemTouchUIUtil
	i32 2461273673, ; 716: 0x92b40e49 => org/xmlpull/v1/XmlPullParserException
	i32 2464444706, ; 717: 0x92e47122 => crc6452ffdc5b34af3a0f/SwipeViewPager
	i32 2467524923, ; 718: 0x9313713b => android/window/OnBackInvokedDispatcher
	i32 2472628627, ; 719: 0x93615193 => crc6452ffdc5b34af3a0f/ContentViewGroup
	i32 2476798898, ; 720: 0x93a0f3b2 => crc640ec207abc449b2ca/ShellSearchViewAdapter_CustomFilter
	i32 2476842332, ; 721: 0x93a19d5c => crc640ec207abc449b2ca/ShellFragmentStateAdapter
	i32 2479240162, ; 722: 0x93c633e2 => androidx/core/view/WindowInsetsAnimationControllerCompat
	i32 2481041228, ; 723: 0x93e1af4c => mono/androidx/fragment/app/FragmentOnAttachListenerImplementor
	i32 2484873381, ; 724: 0x941c28a5 => android/webkit/WebSettings
	i32 2493299211, ; 725: 0x949cba0b => android/text/StaticLayout
	i32 2507390128, ; 726: 0x9573bcb0 => crc640ec207abc449b2ca/ShellSearchView
	i32 2510920789, ; 727: 0x95a99c55 => com/google/android/material/appbar/HeaderScrollingViewBehavior
	i32 2531623798, ; 728: 0x96e58376 => androidx/core/content/res/ResourcesCompat
	i32 2532846927, ; 729: 0x96f82d4f => android/content/SharedPreferences$OnSharedPreferenceChangeListener
	i32 2535787853, ; 730: 0x97250d4d => crc6477f0d89a9cfd64b1/VisualElementRenderer_1
	i32 2541780716, ; 731: 0x97807eec => android/view/ContextMenu$ContextMenuInfo
	i32 2544043539, ; 732: 0x97a30613 => androidx/core/view/MenuItemCompat
	i32 2545072272, ; 733: 0x97b2b890 => androidx/camera/core/ResolutionInfo
	i32 2547729979, ; 734: 0x97db463b => com/microsoft/maui/PlatformContentViewGroup
	i32 2552281033, ; 735: 0x9820b7c9 => androidx/core/view/ScrollingView
	i32 2552860106, ; 736: 0x98298dca => java/util/AbstractMap
	i32 2557593866, ; 737: 0x9871c90a => mono/androidx/recyclerview/widget/RecyclerView_OnItemTouchListenerImplementor
	i32 2557714604, ; 738: 0x9873a0ac => com/google/android/material/tabs/TabLayout$OnTabSelectedListener
	i32 2558143838, ; 739: 0x987a2d5e => java/io/FileInputStream
	i32 2558429400, ; 740: 0x987e88d8 => crc6452ffdc5b34af3a0f/MauiAccessibilityDelegateCompat
	i32 2558637264, ; 741: 0x9881b4d0 => android/graphics/drawable/Icon
	i32 2565590497, ; 742: 0x98ebcde1 => android/app/DatePickerDialog$OnDateSetListener
	i32 2568582214, ; 743: 0x99197446 => androidx/appcompat/widget/AppCompatEditText
	i32 2569469627, ; 744: 0x9926febb => android/view/WindowInsetsController$OnControllableInsetsChangedListener
	i32 2571205532, ; 745: 0x99417b9c => androidx/camera/core/internal/UseCaseEventConfig$Builder
	i32 2571888579, ; 746: 0x994be7c3 => androidx/camera/core/impl/CaptureConfig$OptionUnpacker
	i32 2572163773, ; 747: 0x99501abd => androidx/camera/core/CameraControl
	i32 2573408866, ; 748: 0x99631a62 => crc6488302ad6e9e4df1a/MauiApplication_ActivityLifecycleCallbacks
	i32 2575009069, ; 749: 0x997b852d => androidx/camera/core/impl/SessionConfig
	i32 2578357124, ; 750: 0x99ae9b84 => android/widget/ImageView$ScaleType
	i32 2582561611, ; 751: 0x99eec34b => androidx/navigation/NavController$OnDestinationChangedListener
	i32 2583054407, ; 752: 0x99f64847 => mono/android/animation/AnimatorEventDispatcher
	i32 2585603720, ; 753: 0x9a1d2e88 => java/text/NumberFormat
	i32 2586771995, ; 754: 0x9a2f021b => android/content/DialogInterface$OnKeyListener
	i32 2589091086, ; 755: 0x9a52650e => androidx/camera/core/impl/CameraCaptureFailure$Reason
	i32 2594241228, ; 756: 0x9aa0facc => android/widget/BaseAdapter
	i32 2595043434, ; 757: 0x9aad386a => androidx/core/content/res/ResourcesCompat$FontCallback
	i32 2599222493, ; 758: 0x9aecfcdd => com/google/crypto/tink/shaded/protobuf/Internal$EnumLiteMap
	i32 2601403999, ; 759: 0x9b0e465f => androidx/navigation/NavDeepLinkRequest
	i32 2628279754, ; 760: 0x9ca85dca => android/content/DialogInterface$OnCancelListener
	i32 2637159311, ; 761: 0x9d2fdb8f => android/content/pm/PackageManager
	i32 2638483996, ; 762: 0x9d44121c => androidx/appcompat/app/AppCompatDelegate
	i32 2641760479, ; 763: 0x9d7610df => java/security/GeneralSecurityException
	i32 2641978177, ; 764: 0x9d796341 => com/google/android/material/navigation/NavigationView
	i32 2642404316, ; 765: 0x9d7fe3dc => android/content/pm/Signature
	i32 2645011211, ; 766: 0x9da7ab0b => androidx/core/widget/NestedScrollView
	i32 2645137969, ; 767: 0x9da99a31 => androidx/core/app/ComponentActivity$ExtraData
	i32 2647799060, ; 768: 0x9dd23514 => androidx/core/graphics/drawable/DrawableCompat
	i32 2649962372, ; 769: 0x9df33784 => androidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy
	i32 2650857109, ; 770: 0x9e00de95 => androidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat
	i32 2654672461, ; 771: 0x9e3b164d => java/io/InterruptedIOException
	i32 2661939407, ; 772: 0x9ea9f8cf => android/widget/ImageButton
	i32 2663321095, ; 773: 0x9ebf0e07 => mono/java/lang/Runnable
	i32 2663622747, ; 774: 0x9ec3a85b => android/os/ParcelFileDescriptor$AutoCloseOutputStream
	i32 2664928003, ; 775: 0x9ed79303 => javax/net/ssl/HostnameVerifier
	i32 2666436737, ; 776: 0x9eee9881 => com/google/crypto/tink/shaded/protobuf/GeneratedMessageLite
	i32 2669574217, ; 777: 0x9f1e7849 => crc6452ffdc5b34af3a0f/MauiAppCompatEditText
	i32 2675615863, ; 778: 0x9f7aa877 => android/webkit/WebViewClient
	i32 2680318496, ; 779: 0x9fc26a20 => mono/android/view/ViewGroup_OnHierarchyChangeListenerImplementor
	i32 2681209703, ; 780: 0x9fd00367 => android/widget/Adapter
	i32 2681937445, ; 781: 0x9fdb1e25 => androidx/appcompat/graphics/drawable/DrawableWrapperCompat
	i32 2681988174, ; 782: 0x9fdbe44e => android/view/MotionEvent
	i32 2687778660, ; 783: 0xa0343f64 => android/widget/TextView
	i32 2691166678, ; 784: 0xa067f1d6 => crc64b5e713d400f589b7/RadialGradientShaderFactory
	i32 2691392228, ; 785: 0xa06b62e4 => com/google/crypto/tink/shaded/protobuf/Internal$BooleanList
	i32 2691558259, ; 786: 0xa06deb73 => android/view/View$OnKeyListener
	i32 2695694849, ; 787: 0xa0ad0a01 => crc645d80431ce5f73f11/SingleSnapHelper
	i32 2699556053, ; 788: 0xa0e7f4d5 => android/webkit/WebResourceRequest
	i32 2701862962, ; 789: 0xa10b2832 => androidx/lifecycle/viewmodel/ViewModelInitializer
	i32 2702027833, ; 790: 0xa10dac39 => androidx/appcompat/widget/SwitchCompat
	i32 2708569837, ; 791: 0xa1717eed => android/graphics/drawable/ShapeDrawable$ShaderFactory
	i32 2713934735, ; 792: 0xa1c35b8f => androidx/camera/core/ImageReaderProxyProvider
	i32 2719519012, ; 793: 0xa2189124 => androidx/camera/core/ImageCapture$OnImageCapturedCallback
	i32 2721349606, ; 794: 0xa2347fe6 => crc64fcf28c0e24b4cc31/ButtonHandler_ButtonClickListener
	i32 2721599187, ; 795: 0xa2384ed3 => android/graphics/drawable/Drawable
	i32 2731618005, ; 796: 0xa2d12ed5 => android/view/View$MeasureSpec
	i32 2734960682, ; 797: 0xa304302a => androidx/core/widget/NestedScrollView$OnScrollChangeListener
	i32 2742936588, ; 798: 0xa37de40c => androidx/activity/result/ActivityResultRegistry
	i32 2748204015, ; 799: 0xa3ce43ef => crc64e1fb321c08285b90/TableViewModelRenderer
	i32 2755748727, ; 800: 0xa4416377 => android/text/Spannable
	i32 2762684487, ; 801: 0xa4ab3847 => java/lang/Float
	i32 2767414743, ; 802: 0xa4f365d7 => android/content/LocusId
	i32 2771894941, ; 803: 0xa537c29d => android/graphics/drawable/LayerDrawable
	i32 2782323556, ; 804: 0xa5d6e364 => androidx/appcompat/widget/SearchView$OnSuggestionListener
	i32 2789186058, ; 805: 0xa63f9a0a => androidx/navigation/NavInflater
	i32 2796816157, ; 806: 0xa6b4071d => android/text/format/DateFormat
	i32 2802808876, ; 807: 0xa70f782c => crc6452ffdc5b34af3a0f/MauiScrollView
	i32 2805412434, ; 808: 0xa7373252 => androidx/camera/core/impl/ImageReaderProxy
	i32 2805824438, ; 809: 0xa73d7bb6 => com/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke
	i32 2815615939, ; 810: 0xa7d2e3c3 => android/os/Build
	i32 2818171363, ; 811: 0xa7f9e1e3 => crc640ec207abc449b2ca/ShellFlyoutRecyclerAdapter_ShellLinearLayout
	i32 2820815306, ; 812: 0xa82239ca => crc6452ffdc5b34af3a0f/MauiBoxView
	i32 2824201895, ; 813: 0xa855e6a7 => androidx/appcompat/widget/AppCompatButton
	i32 2827876950, ; 814: 0xa88dfa56 => android/media/CamcorderProfile
	i32 2835378122, ; 815: 0xa9006fca => androidx/camera/core/impl/CameraCaptureResult
	i32 2837435745, ; 816: 0xa91fd561 => android/view/DragEvent
	i32 2842584019, ; 817: 0xa96e63d3 => crc645d80431ce5f73f11/ScrollHelper
	i32 2850153954, ; 818: 0xa9e1e5e2 => java/util/function/IntFunction
	i32 2852719702, ; 819: 0xaa090c56 => androidx/cardview/widget/CardView
	i32 2857003403, ; 820: 0xaa4a698b => com/google/android/material/shape/CornerTreatment
	i32 2857352824, ; 821: 0xaa4fbe78 => mono/android/view/View_OnKeyListenerImplementor
	i32 2858245469, ; 822: 0xaa5d5d5d => androidx/camera/core/VideoCapture$OnVideoSavedCallback
	i32 2859552638, ; 823: 0xaa714f7e => java/util/Spliterator
	i32 2859608678, ; 824: 0xaa722a66 => android/view/WindowInsetsAnimation$Bounds
	i32 2860681453, ; 825: 0xaa8288ed => crc640ec207abc449b2ca/ShellFlyoutLayout
	i32 2862889935, ; 826: 0xaaa43bcf => androidx/core/view/ActionProvider
	i32 2865855753, ; 827: 0xaad17d09 => androidx/recyclerview/widget/SnapHelper
	i32 2866910344, ; 828: 0xaae19488 => android/view/ActionMode
	i32 2873107855, ; 829: 0xab40258f => android/content/pm/PackageInfo
	i32 2874673969, ; 830: 0xab580b31 => java/lang/StackTraceElement
	i32 2875901595, ; 831: 0xab6ac69b => crc64338477404e88479c/ModalNavigationManager_ModalContainer
	i32 2895960761, ; 832: 0xac9cdab9 => java/io/FileOutputStream
	i32 2904565352, ; 833: 0xad202668 => android/view/WindowInsetsAnimationController
	i32 2905214894, ; 834: 0xad2a0fae => android/text/style/ParagraphStyle
	i32 2909563026, ; 835: 0xad6c6892 => androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo
	i32 2918613155, ; 836: 0xadf680a3 => android/content/DialogInterface$OnClickListener
	i32 2920592408, ; 837: 0xae14b418 => androidx/security/crypto/EncryptedSharedPreferences$PrefKeyEncryptionScheme
	i32 2922690929, ; 838: 0xae34b971 => android/graphics/BlendMode
	i32 2932874700, ; 839: 0xaed01dcc => android/view/InputEvent
	i32 2933762856, ; 840: 0xaeddab28 => android/util/AttributeSet
	i32 2936144439, ; 841: 0xaf020237 => crc6477f0d89a9cfd64b1/PlatformRenderer
	i32 2936553858, ; 842: 0xaf084182 => androidx/fragment/app/strictmode/Violation
	i32 2936969538, ; 843: 0xaf0e9942 => androidx/recyclerview/widget/LinearSmoothScroller
	i32 2942792700, ; 844: 0xaf6773fc => java/lang/Exception
	i32 2943609165, ; 845: 0xaf73e94d => crc645d80431ce5f73f11/MauiCarouselRecyclerView
	i32 2944806563, ; 846: 0xaf862ea3 => android/widget/ListView
	i32 2953623320, ; 847: 0xb00cb718 => android/view/WindowInsetsController
	i32 2954825236, ; 848: 0xb01f0e14 => androidx/appcompat/app/ActionBar
	i32 2963535666, ; 849: 0xb0a3f732 => androidx/viewpager/widget/ViewPager$OnAdapterChangeListener
	i32 2973761912, ; 850: 0xb1400178 => androidx/camera/view/PreviewView
	i32 2974982681, ; 851: 0xb152a219 => java/text/Format
	i32 2976214351, ; 852: 0xb1656d4f => android/content/pm/PackageManager$ResolveInfoFlags
	i32 2978746220, ; 853: 0xb18c0f6c => androidx/camera/core/ImageAnalysis$Defaults
	i32 2980510762, ; 854: 0xb1a6fc2a => mono/android/runtime/JavaArray
	i32 2980618755, ; 855: 0xb1a8a203 => androidx/camera/view/video/OutputFileOptions
	i32 2983720033, ; 856: 0xb1d7f461 => mono/android/TypeManager
	i32 2985454904, ; 857: 0xb1f26d38 => android/text/method/DigitsKeyListener
	i32 2991841681, ; 858: 0xb253e191 => crc645d80431ce5f73f11/SelectableViewHolder
	i32 2994721532, ; 859: 0xb27fd2fc => androidx/core/view/WindowInsetsAnimationCompat$BoundsCompat
	i32 2996973762, ; 860: 0xb2a230c2 => androidx/camera/core/Preview$Defaults
	i32 2999435385, ; 861: 0xb2c7c079 => androidx/core/view/ContentInfoCompat
	i32 3000612944, ; 862: 0xb2d9b850 => crc645d80431ce5f73f11/SizedItemContentView
	i32 3001046126, ; 863: 0xb2e0546e => crc6488302ad6e9e4df1a/ImageLoaderResultCallback
	i32 3001685181, ; 864: 0xb2ea14bd => crc645d80431ce5f73f11/SpacingItemDecoration
	i32 3002147562, ; 865: 0xb2f122ea => androidx/recyclerview/widget/RecyclerView$SmoothScroller$Action
	i32 3004346081, ; 866: 0xb312aee1 => androidx/camera/core/impl/CameraFactory$Provider
	i32 3009639411, ; 867: 0xb36373f3 => androidx/savedstate/SavedStateRegistry$SavedStateProvider
	i32 3010268951, ; 868: 0xb36d0f17 => androidx/camera/core/ImageCapture$OutputFileOptions
	i32 3011148753, ; 869: 0xb37a7bd1 => androidx/appcompat/app/ActionBar$LayoutParams
	i32 3011322120, ; 870: 0xb37d2108 => android/view/Surface
	i32 3012997896, ; 871: 0xb396b308 => androidx/camera/core/ImageProxy
	i32 3013845618, ; 872: 0xb3a3a272 => androidx/camera/core/impl/CameraConfig
	i32 3014306725, ; 873: 0xb3aaaba5 => crc64e1fb321c08285b90/CellAdapter
	i32 3014797707, ; 874: 0xb3b2298b => kotlin/Function
	i32 3021714559, ; 875: 0xb41bb47f => crc64e1fb321c08285b90/ViewCellRenderer_ViewCellContainer
	i32 3022088294, ; 876: 0xb4216866 => crc64338477404e88479c/ControlsAccessibilityDelegate
	i32 3023394421, ; 877: 0xb4355675 => android/text/SpannableString
	i32 3023632163, ; 878: 0xb438f723 => com/microsoft/maui/PlatformAppCompatTextView
	i32 3027993654, ; 879: 0xb47b8436 => crc645d80431ce5f73f11/DataChangeObserver
	i32 3032808825, ; 880: 0xb4c4fd79 => java/io/StringWriter
	i32 3039715158, ; 881: 0xb52e5f56 => android/speech/SpeechRecognizer
	i32 3048729604, ; 882: 0xb5b7ec04 => androidx/camera/core/impl/ConfigProvider
	i32 3052396687, ; 883: 0xb5efe08f => android/view/animation/DecelerateInterpolator
	i32 3052490091, ; 884: 0xb5f14d6b => com/google/android/material/shape/CornerSize
	i32 3053721729, ; 885: 0xb6041881 => crc6477b0797571f03227/FrameAnalyzer
	i32 3055966780, ; 886: 0xb6265a3c => androidx/core/view/WindowInsetsAnimationCompat
	i32 3072461607, ; 887: 0xb7220b27 => java/util/concurrent/Future
	i32 3074782437, ; 888: 0xb74574e5 => androidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnChildScrollUpCallback
	i32 3075597449, ; 889: 0xb751e489 => androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams
	i32 3075748881, ; 890: 0xb7543411 => androidx/camera/core/ImageCapture$OnImageSavedCallback
	i32 3078871784, ; 891: 0xb783dae8 => crc640ec207abc449b2ca/ShellFlyoutRecyclerAdapter
	i32 3082379345, ; 892: 0xb7b96051 => crc64e1fb321c08285b90/ListViewAdapter
	i32 3082841782, ; 893: 0xb7c06eb6 => android/util/Pair
	i32 3085278123, ; 894: 0xb7e59bab => com/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback
	i32 3086955035, ; 895: 0xb7ff321b => androidx/appcompat/app/ActionBarDrawerToggle
	i32 3087255038, ; 896: 0xb803c5fe => android/preference/PreferenceManager
	i32 3088957748, ; 897: 0xb81dc134 => androidx/camera/core/impl/CameraCaptureMetaData$FlashState
	i32 3098597018, ; 898: 0xb8b0d69a => android/webkit/WebResourceError
	i32 3105495572, ; 899: 0xb91a1a14 => crc640ec207abc449b2ca/ShellSearchViewAdapter
	i32 3106600980, ; 900: 0xb92af814 => androidx/viewpager2/widget/ViewPager2
	i32 3108395553, ; 901: 0xb9465a21 => crc645d80431ce5f73f11/CarouselViewAdapter_2
	i32 3116706335, ; 902: 0xb9c52a1f => android/view/View$AccessibilityDelegate
	i32 3117349163, ; 903: 0xb9cef92b => androidx/core/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat
	i32 3118190009, ; 904: 0xb9dbcdb9 => crc64338477404e88479c/InnerGestureListener
	i32 3120157766, ; 905: 0xb9f9d446 => crc6452ffdc5b34af3a0f/StackNavigationManager_Callbacks
	i32 3130207911, ; 906: 0xba932ea7 => androidx/camera/core/impl/Observable
	i32 3137349451, ; 907: 0xbb00274b => androidx/camera/core/ImageCapture$Defaults
	i32 3140882952, ; 908: 0xbb361208 => crc6452ffdc5b34af3a0f/MauiMaterialButton_MauiResizableDrawable
	i32 3141422855, ; 909: 0xbb3e4f07 => android/view/ScaleGestureDetector
	i32 3145188486, ; 910: 0xbb77c486 => crc645d80431ce5f73f11/ItemContentView
	i32 3147264387, ; 911: 0xbb977183 => crc645d80431ce5f73f11/CarouselViewOnScrollListener
	i32 3148065494, ; 912: 0xbba3aad6 => android/animation/ValueAnimator$AnimatorUpdateListener
	i32 3148917366, ; 913: 0xbbb0aa76 => androidx/camera/core/impl/SurfaceConfig
	i32 3150778034, ; 914: 0xbbcd0eb2 => mono/androidx/appcompat/widget/SearchView_OnSuggestionListenerImplementor
	i32 3151655458, ; 915: 0xbbda7222 => androidx/appcompat/view/menu/MenuItemImpl
	i32 3154115283, ; 916: 0xbbfffad3 => androidx/appcompat/view/menu/MenuBuilder$Callback
	i32 3157033217, ; 917: 0xbc2c8101 => androidx/camera/view/video/Metadata
	i32 3159658176, ; 918: 0xbc548ec0 => androidx/camera/core/ViewPort
	i32 3161706197, ; 919: 0xbc73ced5 => androidx/appcompat/content/res/AppCompatResources
	i32 3164525707, ; 920: 0xbc9ed48b => mono/androidx/drawerlayout/widget/DrawerLayout_DrawerListenerImplementor
	i32 3172158992, ; 921: 0xbd134e10 => androidx/camera/core/impl/TagBundle
	i32 3173193659, ; 922: 0xbd2317bb => android/content/pm/ShortcutInfo
	i32 3173395525, ; 923: 0xbd262c45 => android/os/IBinder
	i32 3173414241, ; 924: 0xbd267561 => android/graphics/Path$Direction
	i32 3178304415, ; 925: 0xbd71139f => android/view/inputmethod/InputMethodManager
	i32 3178870398, ; 926: 0xbd79b67e => com/microsoft/maui/PlatformLineHeightSpan
	i32 3180780677, ; 927: 0xbd96dc85 => java/util/Set
	i32 3180861164, ; 928: 0xbd9816ec => androidx/appcompat/widget/LinearLayoutCompat
	i32 3183271055, ; 929: 0xbdbcdc8f => android/view/ActionMode$Callback
	i32 3184939993, ; 930: 0xbdd653d9 => crc645d80431ce5f73f11/SimpleItemTouchHelperCallback
	i32 3185404740, ; 931: 0xbddd6b44 => androidx/navigation/NavigatorState
	i32 3189262385, ; 932: 0xbe184831 => android/graphics/MaskFilter
	i32 3189649675, ; 933: 0xbe1e310b => androidx/appcompat/widget/Toolbar$OnMenuItemClickListener
	i32 3193424560, ; 934: 0xbe57cab0 => android/text/style/ClickableSpan
	i32 3195156209, ; 935: 0xbe7236f1 => com/google/android/material/shape/ShapeAppearanceModel
	i32 3198837365, ; 936: 0xbeaa6275 => androidx/camera/core/impl/Identifier
	i32 3201749791, ; 937: 0xbed6d31f => android/content/ClipDescription
	i32 3203260291, ; 938: 0xbeeddf83 => android/widget/SeekBar
	i32 3203363508, ; 939: 0xbeef72b4 => android/view/KeyboardShortcutGroup
	i32 3203537983, ; 940: 0xbef21c3f => androidx/camera/core/impl/UseCaseConfig$Builder
	i32 3207746877, ; 941: 0xbf32553d => android/os/LocaleList
	i32 3212917006, ; 942: 0xbf81390e => com/google/crypto/tink/shaded/protobuf/Internal
	i32 3214744068, ; 943: 0xbf9d1a04 => android/view/WindowManager
	i32 3215873229, ; 944: 0xbfae54cd => androidx/camera/view/transform/OutputTransform
	i32 3217263227, ; 945: 0xbfc38a7b => androidx/security/crypto/MasterKey$Builder
	i32 3220226745, ; 946: 0xbff0c2b9 => androidx/navigation/NavType
	i32 3222907805, ; 947: 0xc019ab9d => androidx/recyclerview/widget/ItemTouchHelper$Callback
	i32 3224369971, ; 948: 0xc02ffb33 => kotlin/jvm/functions/Function0
	i32 3225005363, ; 949: 0xc039ad33 => androidx/recyclerview/widget/RecyclerView$LayoutManager$Properties
	i32 3232019960, ; 950: 0xc0a4b5f8 => androidx/camera/core/impl/CamcorderProfileProvider
	i32 3239678698, ; 951: 0xc11992ea => androidx/camera/core/ExposureState
	i32 3244743755, ; 952: 0xc166dc4b => crc640ec207abc449b2ca/ShellItemRenderer
	i32 3245114380, ; 953: 0xc16c840c => crc649cdc484de593cb7e/MainActivity
	i32 3245363190, ; 954: 0xc1704ff6 => android/text/style/AbsoluteSizeSpan
	i32 3247040539, ; 955: 0xc189e81b => crc64fcf28c0e24b4cc31/ToolbarHandler_ProcessBackClick
	i32 3247577876, ; 956: 0xc1921b14 => androidx/camera/core/MeteringPoint
	i32 3249054538, ; 957: 0xc1a8a34a => kotlinx/coroutines/flow/Flow
	i32 3255647836, ; 958: 0xc20d3e5c => com/google/android/material/navigation/NavigationBarMenuView
	i32 3262645996, ; 959: 0xc27806ec => android/graphics/BlurMaskFilter$Blur
	i32 3271087717, ; 960: 0xc2f8d665 => mono/android/view/View_OnLayoutChangeListenerImplementor
	i32 3281925794, ; 961: 0xc39e36a2 => android/view/MenuItem
	i32 3284824588, ; 962: 0xc3ca720c => java/util/RandomAccess
	i32 3287471889, ; 963: 0xc3f2d711 => androidx/activity/FullyDrawnReporter
	i32 3287761034, ; 964: 0xc3f7408a => crc645d80431ce5f73f11/EdgeSnapHelper
	i32 3290291610, ; 965: 0xc41ddd9a => android/view/ViewPropertyAnimator
	i32 3293983102, ; 966: 0xc456317e => android/graphics/Shader$TileMode
	i32 3295248092, ; 967: 0xc4697edc => androidx/camera/core/impl/CameraInternal
	i32 3299656254, ; 968: 0xc4acc23e => androidx/core/view/ScaleGestureDetectorCompat
	i32 3300906352, ; 969: 0xc4bfd570 => javax/net/ssl/SSLSession
	i32 3303217566, ; 970: 0xc4e3199e => androidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat
	i32 3304711809, ; 971: 0xc4f9e681 => androidx/navigation/NavBackStackEntry
	i32 3310985667, ; 972: 0xc559a1c3 => com/google/crypto/tink/shaded/protobuf/LazyFieldLite
	i32 3312352925, ; 973: 0xc56e7e9d => com/google/android/material/navigation/NavigationView$OnNavigationItemSelectedListener
	i32 3315706055, ; 974: 0xc5a1a8c7 => androidx/camera/core/impl/MutableConfig
	i32 3319735188, ; 975: 0xc5df2394 => java/net/Proxy
	i32 3320874052, ; 976: 0xc5f08444 => androidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener
	i32 3339677784, ; 977: 0xc70f7058 => androidx/core/util/Predicate
	i32 3341177627, ; 978: 0xc726531b => androidx/fragment/app/strictmode/FragmentStrictMode
	i32 3342764773, ; 979: 0xc73e8ae5 => androidx/recyclerview/widget/LinearSnapHelper
	i32 3343889639, ; 980: 0xc74fb4e7 => crc64e1fb321c08285b90/ViewCellRenderer_ViewCellContainer_TapGestureListener
	i32 3347458241, ; 981: 0xc78628c1 => android/graphics/Insets
	i32 3356789353, ; 982: 0xc8148a69 => android/graphics/DashPathEffect
	i32 3359636116, ; 983: 0xc83ffa94 => crc645d80431ce5f73f11/ReorderableItemsViewAdapter_2
	i32 3368559470, ; 984: 0xc8c8236e => android/graphics/drawable/shapes/Shape
	i32 3369471981, ; 985: 0xc8d60fed => android/os/ParcelFileDescriptor
	i32 3370156716, ; 986: 0xc8e082ac => crc6488302ad6e9e4df1a/MauiAppCompatActivity
	i32 3371638157, ; 987: 0xc8f71d8d => androidx/core/graphics/Insets
	i32 3378651213, ; 988: 0xc962204d => java/util/AbstractSet
	i32 3378932770, ; 989: 0xc9666c22 => androidx/core/util/Consumer
	i32 3379688415, ; 990: 0xc971f3df => android/text/Editable
	i32 3386571948, ; 991: 0xc9dafcac => androidx/camera/core/impl/UseCaseConfigFactory
	i32 3386853318, ; 992: 0xc9df47c6 => androidx/core/content/pm/PackageInfoCompat
	i32 3388763936, ; 993: 0xc9fc6f20 => android/view/View$OnFocusChangeListener
	i32 3393023511, ; 994: 0xca3d6e17 => androidx/camera/core/internal/TargetConfig
	i32 3393296817, ; 995: 0xca4199b1 => android/media/Image
	i32 3401332284, ; 996: 0xcabc363c => android/view/ScaleGestureDetector$SimpleOnScaleGestureListener
	i32 3405024372, ; 997: 0xcaf48c74 => androidx/camera/core/impl/ImageInfoProcessor
	i32 3409419575, ; 998: 0xcb379d37 => javax/net/ssl/HttpsURLConnection
	i32 3410676737, ; 999: 0xcb4acc01 => androidx/lifecycle/viewmodel/CreationExtras
	i32 3417008668, ; 1000: 0xcbab6a1c => android/view/View$OnScrollChangeListener
	i32 3418815490, ; 1001: 0xcbc6fc02 => java/util/concurrent/ExecutorService
	i32 3421524015, ; 1002: 0xcbf0502f => com/google/android/material/tabs/TabLayout$Tab
	i32 3423467887, ; 1003: 0xcc0df96f => java/lang/Number
	i32 3430868172, ; 1004: 0xcc7ee4cc => android/content/SharedPreferences
	i32 3443033301, ; 1005: 0xcd3884d5 => mono/androidx/appcompat/app/ActionBar_OnMenuVisibilityListenerImplementor
	i32 3444590796, ; 1006: 0xcd5048cc => androidx/camera/core/CameraSelector
	i32 3445728975, ; 1007: 0xcd61a6cf => androidx/camera/core/impl/Config$OptionMatcher
	i32 3450433556, ; 1008: 0xcda97014 => com/google/android/material/snackbar/BaseTransientBottomBar$Behavior
	i32 3452178114, ; 1009: 0xcdc40ec2 => com/microsoft/maui/BuildConfig
	i32 3455823519, ; 1010: 0xcdfbae9f => android/view/accessibility/AccessibilityWindowInfo
	i32 3477788796, ; 1011: 0xcf4ad87c => androidx/camera/core/VideoCapture
	i32 3481169142, ; 1012: 0xcf7e6cf6 => androidx/viewpager2/widget/ViewPager2$OnPageChangeCallback
	i32 3482500154, ; 1013: 0xcf92bc3a => crc645d80431ce5f73f11/GroupableItemsViewAdapter_2
	i32 3491622242, ; 1014: 0xd01ded62 => androidx/appcompat/app/AppCompatDialog
	i32 3497630135, ; 1015: 0xd07999b7 => android/graphics/Paint$FontMetricsInt
	i32 3498379094, ; 1016: 0xd0850756 => crc645d80431ce5f73f11/EndSnapHelper
	i32 3499520136, ; 1017: 0xd0967088 => crc645d80431ce5f73f11/EndSingleSnapHelper
	i32 3502701795, ; 1018: 0xd0c6fce3 => mono/android/view/View_OnScrollChangeListenerImplementor
	i32 3504008444, ; 1019: 0xd0daecfc => com/google/android/material/bottomnavigation/BottomNavigationItemView
	i32 3505158732, ; 1020: 0xd0ec7a4c => com/google/crypto/tink/shaded/protobuf/Internal$LongList
	i32 3506970184, ; 1021: 0xd1081e48 => com/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$GeneratedExtension
	i32 3515974447, ; 1022: 0xd191832f => java/util/function/IntConsumer
	i32 3519931621, ; 1023: 0xd1cde4e5 => java/net/URLConnection
	i32 3521416662, ; 1024: 0xd1e48dd6 => androidx/core/view/ViewCompat
	i32 3532650525, ; 1025: 0xd28ff81d => android/text/style/WrapTogetherSpan
	i32 3537398366, ; 1026: 0xd2d86a5e => android/graphics/Paint$Cap
	i32 3541988144, ; 1027: 0xd31e7330 => com/google/android/material/tabs/TabLayoutMediator
	i32 3546452765, ; 1028: 0xd362931d => android/text/TextDirectionHeuristic
	i32 3549151004, ; 1029: 0xd38bbf1c => android/provider/Settings
	i32 3551598929, ; 1030: 0xd3b11951 => crc645d80431ce5f73f11/SimpleViewHolder
	i32 3557984104, ; 1031: 0xd4128768 => android/util/SizeF
	i32 3560870582, ; 1032: 0xd43e92b6 => androidx/core/view/ViewPropertyAnimatorUpdateListener
	i32 3565522170, ; 1033: 0xd4858cfa => androidx/camera/view/video/OutputFileOptions$Builder
	i32 3571274152, ; 1034: 0xd4dd51a8 => androidx/appcompat/view/menu/MenuBuilder
	i32 3572718161, ; 1035: 0xd4f35a51 => com/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener
	i32 3576242387, ; 1036: 0xd52920d3 => android/runtime/JavaProxyThrowable
	i32 3585334063, ; 1037: 0xd5b3db2f => android/hardware/camera2/CameraCaptureSession$StateCallback
	i32 3586408147, ; 1038: 0xd5c43ed3 => crc640ec207abc449b2ca/ShellItemRendererBase
	i32 3590909812, ; 1039: 0xd608ef74 => com/google/common/util/concurrent/ListenableFuture
	i32 3593389910, ; 1040: 0xd62ec756 => androidx/camera/core/impl/UseCaseConfigFactory$Provider
	i32 3597654493, ; 1041: 0xd66fd9dd => android/widget/AbsListView
	i32 3602087815, ; 1042: 0xd6b37f87 => crc645d80431ce5f73f11/EmptyViewAdapter
	i32 3607928265, ; 1043: 0xd70c9dc9 => androidx/camera/core/UseCase$StateChangeCallback
	i32 3607985239, ; 1044: 0xd70d7c57 => androidx/recyclerview/widget/RecyclerView$State
	i32 3609809655, ; 1045: 0xd72952f7 => android/os/CancellationSignal
	i32 3612341153, ; 1046: 0xd74ff3a1 => androidx/navigation/fragment/FragmentNavigator$Destination
	i32 3614244735, ; 1047: 0xd76cff7f => androidx/appcompat/app/ActionBar$Tab
	i32 3617639613, ; 1048: 0xd7a0ccbd => androidx/camera/core/SurfaceRequest$TransformationInfoListener
	i32 3620077265, ; 1049: 0xd7c5fed1 => java/util/function/ToIntFunction
	i32 3620937142, ; 1050: 0xd7d31db6 => androidx/appcompat/app/ActionBar$TabListener
	i32 3634270919, ; 1051: 0xd89e92c7 => android/graphics/drawable/AnimationDrawable
	i32 3635632389, ; 1052: 0xd8b35905 => androidx/camera/core/impl/VideoCaptureConfig
	i32 3639027368, ; 1053: 0xd8e726a8 => kotlinx/coroutines/flow/FlowCollector
	i32 3651658816, ; 1054: 0xd9a7e440 => crc64e1fb321c08285b90/ViewCellRenderer_ViewCellContainer_LongPressGestureListener
	i32 3659407947, ; 1055: 0xda1e224b => java/nio/ByteOrder
	i32 3661246018, ; 1056: 0xda3a2e42 => crc64e1fb321c08285b90/ViewRenderer
	i32 3665774669, ; 1057: 0xda7f484d => android/view/LayoutInflater
	i32 3666243682, ; 1058: 0xda867062 => java/lang/String
	i32 3666999915, ; 1059: 0xda91fa6b => androidx/recyclerview/widget/RecyclerView$Adapter
	i32 3667759352, ; 1060: 0xda9d90f8 => com/google/android/material/snackbar/Snackbar$Callback
	i32 3667804956, ; 1061: 0xda9e431c => androidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup
	i32 3669061717, ; 1062: 0xdab17055 => java/net/InetSocketAddress
	i32 3673444347, ; 1063: 0xdaf44ffb => android/view/accessibility/AccessibilityEvent
	i32 3675961650, ; 1064: 0xdb1ab932 => crc643f2b18b2570eaa5a/PlatformGraphicsView
	i32 3680247283, ; 1065: 0xdb5c1df3 => androidx/activity/ComponentDialog
	i32 3683323802, ; 1066: 0xdb8b0f9a => mono/android/runtime/JavaObject
	i32 3684070586, ; 1067: 0xdb9674ba => android/view/ActionProvider
	i32 3684718480, ; 1068: 0xdba05790 => androidx/camera/view/PreviewView$ImplementationMode
	i32 3689014550, ; 1069: 0xdbe1e516 => androidx/lifecycle/ViewModel
	i32 3694635824, ; 1070: 0xdc37ab30 => mono/androidx/activity/contextaware/OnContextAvailableListenerImplementor
	i32 3696413808, ; 1071: 0xdc52cc70 => androidx/camera/core/ImageInfo
	i32 3698769169, ; 1072: 0xdc76bd11 => android/text/SpannableStringBuilder
	i32 3701331277, ; 1073: 0xdc9dd54d => android/graphics/Paint$Style
	i32 3702230909, ; 1074: 0xdcab8f7d => java/lang/Double
	i32 3711529970, ; 1075: 0xdd3973f2 => android/text/style/MetricAffectingSpan
	i32 3715861037, ; 1076: 0xdd7b8a2d => android/os/Build$VERSION
	i32 3718505313, ; 1077: 0xdda3e361 => androidx/camera/core/ImageCapture$Metadata
	i32 3721088312, ; 1078: 0xddcb4d38 => android/text/NoCopySpan
	i32 3722843854, ; 1079: 0xdde616ce => javax/net/SocketFactory
	i32 3722942310, ; 1080: 0xdde79766 => android/text/method/NumberKeyListener
	i32 3725503474, ; 1081: 0xde0eabf2 => androidx/camera/core/impl/ReadableConfig
	i32 3725604931, ; 1082: 0xde103843 => crc640ec207abc449b2ca/ShellSectionRenderer
	i32 3726680736, ; 1083: 0xde20a2a0 => java/net/ProtocolException
	i32 3738171500, ; 1084: 0xdecff86c => android/webkit/WebChromeClient
	i32 3746688749, ; 1085: 0xdf51eeed => androidx/camera/core/impl/Config
	i32 3753320089, ; 1086: 0xdfb71e99 => android/text/style/TypefaceSpan
	i32 3759929762, ; 1087: 0xe01bf9a2 => android/graphics/Bitmap
	i32 3760420180, ; 1088: 0xe0237554 => androidx/drawerlayout/widget/DrawerLayout$DrawerListener
	i32 3762098798, ; 1089: 0xe03d126e => androidx/activity/OnBackPressedDispatcher
	i32 3763368318, ; 1090: 0xe050717e => androidx/camera/core/ImageAnalysis
	i32 3763853270, ; 1091: 0xe057d7d6 => android/view/Window
	i32 3775242275, ; 1092: 0xe105a023 => androidx/core/view/WindowInsetsControllerCompat
	i32 3784926020, ; 1093: 0xe1996344 => androidx/customview/widget/Openable
	i32 3798389735, ; 1094: 0xe266d3e7 => com/google/crypto/tink/shaded/protobuf/CodedOutputStream
	i32 3811192762, ; 1095: 0xe32a2fba => android/content/res/TypedArray
	i32 3816127912, ; 1096: 0xe3757da8 => androidx/camera/core/impl/CameraFactory
	i32 3823421666, ; 1097: 0xe3e4c8e2 => android/net/Uri
	i32 3826577394, ; 1098: 0xe414eff2 => android/graphics/drawable/DrawableWrapper
	i32 3828089420, ; 1099: 0xe42c024c => crc640ec207abc449b2ca/RecyclerViewContainer
	i32 3828108282, ; 1100: 0xe42c4bfa => android/widget/TextView$BufferType
	i32 3843901295, ; 1101: 0xe51d476f => mono/com/google/android/material/navigation/NavigationBarView_OnItemSelectedListenerImplementor
	i32 3844217531, ; 1102: 0xe5221abb => android/graphics/Path$FillType
	i32 3850251058, ; 1103: 0xe57e2b32 => androidx/navigation/fragment/NavHostFragment
	i32 3855323559, ; 1104: 0xe5cb91a7 => androidx/appcompat/view/ActionMode
	i32 3859315228, ; 1105: 0xe6087a1c => androidx/viewpager2/adapter/FragmentViewHolder
	i32 3865571169, ; 1106: 0xe667ef61 => android/content/res/XmlResourceParser
	i32 3867610942, ; 1107: 0xe6870f3e => crc6452ffdc5b34af3a0f/AccessibilityDelegateCompatWrapper
	i32 3871025574, ; 1108: 0xe6bb29a6 => androidx/camera/core/impl/Config$OptionPriority
	i32 3872328841, ; 1109: 0xe6cf0c89 => android/view/animation/BaseInterpolator
	i32 3872548923, ; 1110: 0xe6d2683b => com/google/android/material/navigation/NavigationBarView
	i32 3872825215, ; 1111: 0xe6d69f7f => android/graphics/ColorFilter
	i32 3882570516, ; 1112: 0xe76b5314 => java/lang/Class
	i32 3884080736, ; 1113: 0xe7825e60 => android/webkit/WebView
	i32 3884639814, ; 1114: 0xe78ae646 => android/text/Html
	i32 3888053904, ; 1115: 0xe7befe90 => com/google/android/material/appbar/MaterialToolbar
	i32 3895425567, ; 1116: 0xe82f7a1f => androidx/core/app/SharedElementCallback
	i32 3896288302, ; 1117: 0xe83ca42e => android/widget/ImageView
	i32 3900328001, ; 1118: 0xe87a4841 => android/graphics/Typeface
	i32 3900581163, ; 1119: 0xe87e252b => java/io/InputStream
	i32 3901837667, ; 1120: 0xe8915163 => android/text/InputFilter
	i32 3906036904, ; 1121: 0xe8d164a8 => android/webkit/ValueCallback
	i32 3908062719, ; 1122: 0xe8f04dff => crc645d80431ce5f73f11/SelectableItemsViewAdapter_2
	i32 3912451735, ; 1123: 0xe9334697 => java/security/KeyStore
	i32 3914339241, ; 1124: 0xe95013a9 => kotlin/coroutines/CoroutineContext
	i32 3919758710, ; 1125: 0xe9a2c576 => android/view/ContextMenu
	i32 3920921908, ; 1126: 0xe9b48534 => android/net/NetworkCapabilities
	i32 3921119625, ; 1127: 0xe9b78989 => com/google/crypto/tink/shaded/protobuf/ExtensionLite
	i32 3922115040, ; 1128: 0xe9c6b9e0 => com/google/android/material/bottomsheet/BottomSheetBehavior
	i32 3922373341, ; 1129: 0xe9caaadd => androidx/fragment/app/Fragment$SavedState
	i32 3922608828, ; 1130: 0xe9ce42bc => android/text/method/MetaKeyKeyListener
	i32 3926239517, ; 1131: 0xea05a91d => android/app/TimePickerDialog$OnTimeSetListener
	i32 3931120197, ; 1132: 0xea502245 => mono/android/content/DialogInterface_OnClickListenerImplementor
	i32 3933245259, ; 1133: 0xea708f4b => android/graphics/Rect
	i32 3938250520, ; 1134: 0xeabcef18 => androidx/appcompat/widget/AppCompatCheckBox
	i32 3942801793, ; 1135: 0xeb026181 => android/graphics/Region
	i32 3943749965, ; 1136: 0xeb10d94d => android/content/pm/ShortcutManager
	i32 3944057747, ; 1137: 0xeb158b93 => crc64338477404e88479c/GenericAnimatorListener
	i32 3948746266, ; 1138: 0xeb5d161a => crc6452ffdc5b34af3a0f/NavigationViewFragment
	i32 3951994042, ; 1139: 0xeb8ea4ba => androidx/collection/SparseArrayCompat
	i32 3955034079, ; 1140: 0xebbd07df => android/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener
	i32 3960468864, ; 1141: 0xec0ff580 => androidx/appcompat/widget/TintTypedArray
	i32 3960999444, ; 1142: 0xec180e14 => android/widget/Toast
	i32 3969645507, ; 1143: 0xec9bfbc3 => androidx/core/widget/TextViewCompat
	i32 3969984744, ; 1144: 0xeca128e8 => mono/android/runtime/InputStreamAdapter
	i32 3972486565, ; 1145: 0xecc755a5 => android/graphics/BitmapShader
	i32 3975001277, ; 1146: 0xecedb4bd => javax/net/ssl/SSLSocketFactory
	i32 3975543734, ; 1147: 0xecf5fbb6 => android/security/keystore/KeyGenParameterSpec
	i32 3981049919, ; 1148: 0xed4a003f => crc640fd0ddb16fe433d4/TouchBehavior_AccessibilityListener
	i32 3984631894, ; 1149: 0xed80a856 => crc645d80431ce5f73f11/CarouselSpacingItemDecoration
	i32 3993327007, ; 1150: 0xee05559f => android/content/ContextWrapper
	i32 3994031332, ; 1151: 0xee1014e4 => androidx/camera/core/CameraXConfig
	i32 3995406185, ; 1152: 0xee250f69 => android/graphics/Canvas
	i32 4003249249, ; 1153: 0xee9cbc61 => androidx/camera/core/impl/UseCaseConfigFactory$CaptureType
	i32 4011808769, ; 1154: 0xef1f5801 => com/google/android/material/imageview/ShapeableImageView
	i32 4017528531, ; 1155: 0xef769ed3 => crc6452ffdc5b34af3a0f/StepperHandlerManager_StepperListener
	i32 4020308495, ; 1156: 0xefa10a0f => java/lang/Error
	i32 4020645668, ; 1157: 0xefa62f24 => android/graphics/drawable/DrawableContainer
	i32 4023386888, ; 1158: 0xefd00308 => android/graphics/drawable/StateListDrawable
	i32 4025067947, ; 1159: 0xefe9a9ab => android/webkit/MimeTypeMap
	i32 4026034127, ; 1160: 0xeff867cf => androidx/core/view/PointerIconCompat
	i32 4026153166, ; 1161: 0xeffa38ce => androidx/core/view/DragAndDropPermissionsCompat
	i32 4029606005, ; 1162: 0xf02ee875 => android/widget/FilterQueryProvider
	i32 4030673356, ; 1163: 0xf03f31cc => android/app/Dialog
	i32 4030975555, ; 1164: 0xf043ce43 => android/view/animation/Interpolator
	i32 4034484106, ; 1165: 0xf079578a => crc6452ffdc5b34af3a0f/MauiMaterialButton
	i32 4035763391, ; 1166: 0xf08cdcbf => android/view/View$OnDragListener
	i32 4038042141, ; 1167: 0xf0afa21d => android/text/style/UnderlineSpan
	i32 4040218938, ; 1168: 0xf0d0d93a => android/graphics/drawable/RippleDrawable
	i32 4042628807, ; 1169: 0xf0f59ec7 => androidx/recyclerview/widget/GridLayoutManager
	i32 4045677067, ; 1170: 0xf124220b => crc64f728827fec74e9c3/TapWindowTracker_GestureListener
	i32 4051772911, ; 1171: 0xf18125ef => android/content/Context
	i32 4058436930, ; 1172: 0xf1e6d542 => android/view/GestureDetector
	i32 4059487448, ; 1173: 0xf1f6dcd8 => androidx/security/crypto/EncryptedSharedPreferences$PrefValueEncryptionScheme
	i32 4060380528, ; 1174: 0xf2047d70 => android/view/WindowInsetsAnimation
	i32 4063030113, ; 1175: 0xf22ceb61 => crc64e1fb321c08285b90/TextCellRenderer_TextCellView
	i32 4066255456, ; 1176: 0xf25e2260 => android/util/SparseArray
	i32 4066716669, ; 1177: 0xf2652bfd => com/google/android/material/shape/ShapePath
	i32 4082364806, ; 1178: 0xf353f186 => crc649cdc484de593cb7e/MainApplication
	i32 4082636076, ; 1179: 0xf358152c => androidx/fragment/app/FragmentHostCallback
	i32 4087518402, ; 1180: 0xf3a294c2 => mono/android/view/View_OnTouchListenerImplementor
	i32 4088038176, ; 1181: 0xf3aa8320 => java/io/Reader
	i32 4089459037, ; 1182: 0xf3c0315d => java/nio/Buffer
	i32 4094719362, ; 1183: 0xf4107582 => androidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments
	i32 4096216012, ; 1184: 0xf4274bcc => crc6452ffdc5b34af3a0f/MauiHorizontalScrollView
	i32 4098107575, ; 1185: 0xf44428b7 => mono/android/view/View_OnClickListenerImplementor
	i32 4099031450, ; 1186: 0xf452419a => androidx/core/view/DisplayCutoutCompat
	i32 4101363546, ; 1187: 0xf475d75a => java/io/Writer
	i32 4101882262, ; 1188: 0xf47dc196 => androidx/viewpager/widget/PagerAdapter
	i32 4103358926, ; 1189: 0xf49449ce => crc64338477404e88479c/ToolbarExtensions_ToolbarTitleIconImageView
	i32 4104288849, ; 1190: 0xf4a27a51 => android/text/TextUtils$TruncateAt
	i32 4112982215, ; 1191: 0xf52720c7 => androidx/loader/content/Loader$OnLoadCanceledListener
	i32 4115120460, ; 1192: 0xf547c14c => crc6452ffdc5b34af3a0f/MauiSwipeRefreshLayout
	i32 4116628111, ; 1193: 0xf55ec28f => androidx/lifecycle/LifecycleObserver
	i32 4118683314, ; 1194: 0xf57e1eb2 => androidx/navigation/ui/AppBarConfiguration$Builder
	i32 4118831524, ; 1195: 0xf58061a4 => androidx/viewpager/widget/ViewPager$OnPageChangeListener
	i32 4118878202, ; 1196: 0xf58117fa => android/os/Looper
	i32 4124337559, ; 1197: 0xf5d46597 => mono/androidx/camera/core/impl/SessionConfig_ErrorListenerImplementor
	i32 4127266501, ; 1198: 0xf60116c5 => mono/android/widget/AdapterView_OnItemClickListenerImplementor
	i32 4128216147, ; 1199: 0xf60f9453 => crc64e1fb321c08285b90/VisualElementRenderer_1
	i32 4129306385, ; 1200: 0xf6203711 => com/google/android/material/internal/StaticLayoutBuilderConfigurer
	i32 4134800831, ; 1201: 0xf6740dbf => mono/com/google/android/material/checkbox/MaterialCheckBox_OnErrorChangedListenerImplementor
	i32 4137330413, ; 1202: 0xf69aa6ed => android/content/pm/ShortcutInfo$Builder
	i32 4138958204, ; 1203: 0xf6b37d7c => androidx/loader/app/LoaderManager$LoaderCallbacks
	i32 4139590853, ; 1204: 0xf6bd24c5 => androidx/camera/core/impl/ImageInputConfig
	i32 4142301000, ; 1205: 0xf6e67f48 => androidx/appcompat/widget/LinearLayoutCompat$LayoutParams
	i32 4143999052, ; 1206: 0xf700684c => crc6452ffdc5b34af3a0f/MauiWebViewClient
	i32 4148577720, ; 1207: 0xf74645b8 => androidx/core/app/ComponentActivity
	i32 4148593869, ; 1208: 0xf74684cd => javax/net/ssl/TrustManagerFactory
	i32 4157808693, ; 1209: 0xf7d32035 => java/io/IOException
	i32 4166165970, ; 1210: 0xf852a5d2 => android/text/TextWatcher
	i32 4167305683, ; 1211: 0xf86409d3 => androidx/activity/result/contract/ActivityResultContract$SynchronousResult
	i32 4176584157, ; 1212: 0xf8f19ddd => androidx/camera/core/ImageAnalysis$Builder
	i32 4180441522, ; 1213: 0xf92c79b2 => androidx/appcompat/app/AlertDialog
	i32 4184365991, ; 1214: 0xf9685ba7 => crc640ec207abc449b2ca/ShellContentFragment
	i32 4189251675, ; 1215: 0xf9b2e85b => com/google/crypto/tink/shaded/protobuf/Internal$IntList
	i32 4195364970, ; 1216: 0xfa10306a => android/graphics/Region$Op
	i32 4200099307, ; 1217: 0xfa586deb => crc6452ffdc5b34af3a0f/FragmentManagerExtensions_CallBacks
	i32 4203502565, ; 1218: 0xfa8c5be5 => android/graphics/Bitmap$CompressFormat
	i32 4209385953, ; 1219: 0xfae621e1 => com/google/android/material/bottomnavigation/BottomNavigationView
	i32 4210334537, ; 1220: 0xfaf49b49 => com/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemReselectedListener
	i32 4211567724, ; 1221: 0xfb076c6c => android/view/ScaleGestureDetector$OnScaleGestureListener
	i32 4219996554, ; 1222: 0xfb88098a => androidx/recyclerview/widget/RecyclerView$ItemAnimator
	i32 4223518113, ; 1223: 0xfbbdc5a1 => android/text/style/StrikethroughSpan
	i32 4224328081, ; 1224: 0xfbca2191 => mono/androidx/core/view/WindowInsetsControllerCompat_OnControllableInsetsChangedListenerImplementor
	i32 4232707919, ; 1225: 0xfc49ff4f => java/util/HashSet
	i32 4236355936, ; 1226: 0xfc81a960 => android/view/ViewTreeObserver$OnGlobalLayoutListener
	i32 4236724582, ; 1227: 0xfc874966 => android/os/Parcelable
	i32 4237386260, ; 1228: 0xfc916214 => android/view/MenuItem$OnMenuItemClickListener
	i32 4248811056, ; 1229: 0xfd3fb630 => android/view/Menu
	i32 4250389251, ; 1230: 0xfd57cb03 => android/text/style/BackgroundColorSpan
	i32 4251164121, ; 1231: 0xfd639dd9 => androidx/camera/core/impl/DeferrableSurface
	i32 4257868140, ; 1232: 0xfdc9e96c => crc6452ffdc5b34af3a0f/MauiTextView
	i32 4260947221, ; 1233: 0xfdf8e515 => java/util/function/ToDoubleFunction
	i32 4264619310, ; 1234: 0xfe30ed2e => androidx/camera/core/CameraInfo
	i32 4268216374, ; 1235: 0xfe67d036 => androidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks
	i32 4268957784, ; 1236: 0xfe732058 => java/nio/charset/Charset
	i32 4271127433, ; 1237: 0xfe943b89 => android/graphics/PorterDuff
	i32 4271698061, ; 1238: 0xfe9cf08d => com/google/crypto/tink/shaded/protobuf/AbstractMessageLite
	i32 4272821305, ; 1239: 0xfeae1439 => androidx/lifecycle/ViewModelProvider$Factory
	i32 4274067371, ; 1240: 0xfec117ab => androidx/core/view/accessibility/AccessibilityNodeInfoCompat
	i32 4275615380, ; 1241: 0xfed8b694 => crc64338477404e88479c/GenericGlobalLayoutListener
	i32 4277523103, ; 1242: 0xfef5d29f => java/io/Closeable
	i32 4278949669, ; 1243: 0xff0b9725 => android/widget/CompoundButton$OnCheckedChangeListener
	i32 4282423861, ; 1244: 0xff409a35 => com/microsoft/maui/MauiViewGroup
	i32 4285233142, ; 1245: 0xff6b77f6 => androidx/core/view/accessibility/AccessibilityNodeProviderCompat
	i32 4290775940, ; 1246: 0xffc00b84 => com/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener
	i32 4293770789 ; 1247: 0xffedbe25 => com/google/crypto/tink/shaded/protobuf/ByteOutput
], align 4

@module0_managed_to_java = internal dso_local constant [77 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554499, ; uint32_t type_token_id (0x2000043)
		i32 820; uint32_t java_map_index (0x334)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554500, ; uint32_t type_token_id (0x2000044)
		i32 568; uint32_t java_map_index (0x238)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554501, ; uint32_t type_token_id (0x2000045)
		i32 884; uint32_t java_map_index (0x374)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554503, ; uint32_t type_token_id (0x2000047)
		i32 160; uint32_t java_map_index (0xa0)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554504, ; uint32_t type_token_id (0x2000048)
		i32 274; uint32_t java_map_index (0x112)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554505, ; uint32_t type_token_id (0x2000049)
		i32 935; uint32_t java_map_index (0x3a7)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554506, ; uint32_t type_token_id (0x200004a)
		i32 23; uint32_t java_map_index (0x17)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554507, ; uint32_t type_token_id (0x200004b)
		i32 32; uint32_t java_map_index (0x20)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554509, ; uint32_t type_token_id (0x200004d)
		i32 1177; uint32_t java_map_index (0x499)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33554510, ; uint32_t type_token_id (0x200004e)
		i32 207; uint32_t java_map_index (0xcf)
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 33554511, ; uint32_t type_token_id (0x200004f)
		i32 1154; uint32_t java_map_index (0x482)
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 33554512, ; uint32_t type_token_id (0x2000050)
		i32 579; uint32_t java_map_index (0x243)
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 33554513, ; uint32_t type_token_id (0x2000051)
		i32 666; uint32_t java_map_index (0x29a)
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 33554514, ; uint32_t type_token_id (0x2000052)
		i32 592; uint32_t java_map_index (0x250)
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 33554517, ; uint32_t type_token_id (0x2000055)
		i32 209; uint32_t java_map_index (0xd1)
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 33554518, ; uint32_t type_token_id (0x2000056)
		i32 547; uint32_t java_map_index (0x223)
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 33554521, ; uint32_t type_token_id (0x2000059)
		i32 1201; uint32_t java_map_index (0x4b1)
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 33554526, ; uint32_t type_token_id (0x200005e)
		i32 512; uint32_t java_map_index (0x200)
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 33554527, ; uint32_t type_token_id (0x200005f)
		i32 59; uint32_t java_map_index (0x3b)
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 33554530, ; uint32_t type_token_id (0x2000062)
		i32 54; uint32_t java_map_index (0x36)
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 33554533, ; uint32_t type_token_id (0x2000065)
		i32 1128; uint32_t java_map_index (0x468)
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 33554534, ; uint32_t type_token_id (0x2000066)
		i32 894; uint32_t java_map_index (0x37e)
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 33554536, ; uint32_t type_token_id (0x2000068)
		i32 569; uint32_t java_map_index (0x239)
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 33554537, ; uint32_t type_token_id (0x2000069)
		i32 653; uint32_t java_map_index (0x28d)
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 33554538, ; uint32_t type_token_id (0x200006a)
		i32 15; uint32_t java_map_index (0xf)
	}, ; 24
	%struct.TypeMapModuleEntry {
		i32 33554542, ; uint32_t type_token_id (0x200006e)
		i32 153; uint32_t java_map_index (0x99)
	}, ; 25
	%struct.TypeMapModuleEntry {
		i32 33554543, ; uint32_t type_token_id (0x200006f)
		i32 526; uint32_t java_map_index (0x20e)
	}, ; 26
	%struct.TypeMapModuleEntry {
		i32 33554544, ; uint32_t type_token_id (0x2000070)
		i32 1110; uint32_t java_map_index (0x456)
	}, ; 27
	%struct.TypeMapModuleEntry {
		i32 33554547, ; uint32_t type_token_id (0x2000073)
		i32 127; uint32_t java_map_index (0x7f)
	}, ; 28
	%struct.TypeMapModuleEntry {
		i32 33554549, ; uint32_t type_token_id (0x2000075)
		i32 711; uint32_t java_map_index (0x2c7)
	}, ; 29
	%struct.TypeMapModuleEntry {
		i32 33554550, ; uint32_t type_token_id (0x2000076)
		i32 343; uint32_t java_map_index (0x157)
	}, ; 30
	%struct.TypeMapModuleEntry {
		i32 33554552, ; uint32_t type_token_id (0x2000078)
		i32 1101; uint32_t java_map_index (0x44d)
	}, ; 31
	%struct.TypeMapModuleEntry {
		i32 33554557, ; uint32_t type_token_id (0x200007d)
		i32 232; uint32_t java_map_index (0xe8)
	}, ; 32
	%struct.TypeMapModuleEntry {
		i32 33554559, ; uint32_t type_token_id (0x200007f)
		i32 958; uint32_t java_map_index (0x3be)
	}, ; 33
	%struct.TypeMapModuleEntry {
		i32 33554561, ; uint32_t type_token_id (0x2000081)
		i32 255; uint32_t java_map_index (0xff)
	}, ; 34
	%struct.TypeMapModuleEntry {
		i32 33554563, ; uint32_t type_token_id (0x2000083)
		i32 764; uint32_t java_map_index (0x2fc)
	}, ; 35
	%struct.TypeMapModuleEntry {
		i32 33554564, ; uint32_t type_token_id (0x2000084)
		i32 973; uint32_t java_map_index (0x3cd)
	}, ; 36
	%struct.TypeMapModuleEntry {
		i32 33554567, ; uint32_t type_token_id (0x2000087)
		i32 302; uint32_t java_map_index (0x12e)
	}, ; 37
	%struct.TypeMapModuleEntry {
		i32 33554570, ; uint32_t type_token_id (0x200008a)
		i32 635; uint32_t java_map_index (0x27b)
	}, ; 38
	%struct.TypeMapModuleEntry {
		i32 33554571, ; uint32_t type_token_id (0x200008b)
		i32 294; uint32_t java_map_index (0x126)
	}, ; 39
	%struct.TypeMapModuleEntry {
		i32 33554572, ; uint32_t type_token_id (0x200008c)
		i32 639; uint32_t java_map_index (0x27f)
	}, ; 40
	%struct.TypeMapModuleEntry {
		i32 33554577, ; uint32_t type_token_id (0x2000091)
		i32 333; uint32_t java_map_index (0x14d)
	}, ; 41
	%struct.TypeMapModuleEntry {
		i32 33554578, ; uint32_t type_token_id (0x2000092)
		i32 738; uint32_t java_map_index (0x2e2)
	}, ; 42
	%struct.TypeMapModuleEntry {
		i32 33554580, ; uint32_t type_token_id (0x2000094)
		i32 1002; uint32_t java_map_index (0x3ea)
	}, ; 43
	%struct.TypeMapModuleEntry {
		i32 33554587, ; uint32_t type_token_id (0x200009b)
		i32 1027; uint32_t java_map_index (0x403)
	}, ; 44
	%struct.TypeMapModuleEntry {
		i32 33554588, ; uint32_t type_token_id (0x200009c)
		i32 406; uint32_t java_map_index (0x196)
	}, ; 45
	%struct.TypeMapModuleEntry {
		i32 33554590, ; uint32_t type_token_id (0x200009e)
		i32 446; uint32_t java_map_index (0x1be)
	}, ; 46
	%struct.TypeMapModuleEntry {
		i32 33554591, ; uint32_t type_token_id (0x200009f)
		i32 618; uint32_t java_map_index (0x26a)
	}, ; 47
	%struct.TypeMapModuleEntry {
		i32 33554592, ; uint32_t type_token_id (0x20000a0)
		i32 1060; uint32_t java_map_index (0x424)
	}, ; 48
	%struct.TypeMapModuleEntry {
		i32 33554593, ; uint32_t type_token_id (0x20000a1)
		i32 68; uint32_t java_map_index (0x44)
	}, ; 49
	%struct.TypeMapModuleEntry {
		i32 33554594, ; uint32_t type_token_id (0x20000a2)
		i32 198; uint32_t java_map_index (0xc6)
	}, ; 50
	%struct.TypeMapModuleEntry {
		i32 33554596, ; uint32_t type_token_id (0x20000a4)
		i32 1008; uint32_t java_map_index (0x3f0)
	}, ; 51
	%struct.TypeMapModuleEntry {
		i32 33554598, ; uint32_t type_token_id (0x20000a6)
		i32 320; uint32_t java_map_index (0x140)
	}, ; 52
	%struct.TypeMapModuleEntry {
		i32 33554600, ; uint32_t type_token_id (0x20000a8)
		i32 1200; uint32_t java_map_index (0x4b0)
	}, ; 53
	%struct.TypeMapModuleEntry {
		i32 33554602, ; uint32_t type_token_id (0x20000aa)
		i32 181; uint32_t java_map_index (0xb5)
	}, ; 54
	%struct.TypeMapModuleEntry {
		i32 33554603, ; uint32_t type_token_id (0x20000ab)
		i32 1019; uint32_t java_map_index (0x3fb)
	}, ; 55
	%struct.TypeMapModuleEntry {
		i32 33554604, ; uint32_t type_token_id (0x20000ac)
		i32 321; uint32_t java_map_index (0x141)
	}, ; 56
	%struct.TypeMapModuleEntry {
		i32 33554605, ; uint32_t type_token_id (0x20000ad)
		i32 1219; uint32_t java_map_index (0x4c3)
	}, ; 57
	%struct.TypeMapModuleEntry {
		i32 33554606, ; uint32_t type_token_id (0x20000ae)
		i32 1220; uint32_t java_map_index (0x4c4)
	}, ; 58
	%struct.TypeMapModuleEntry {
		i32 33554608, ; uint32_t type_token_id (0x20000b0)
		i32 1246; uint32_t java_map_index (0x4de)
	}, ; 59
	%struct.TypeMapModuleEntry {
		i32 33554610, ; uint32_t type_token_id (0x20000b2)
		i32 94; uint32_t java_map_index (0x5e)
	}, ; 60
	%struct.TypeMapModuleEntry {
		i32 33554611, ; uint32_t type_token_id (0x20000b3)
		i32 262; uint32_t java_map_index (0x106)
	}, ; 61
	%struct.TypeMapModuleEntry {
		i32 33554613, ; uint32_t type_token_id (0x20000b5)
		i32 631; uint32_t java_map_index (0x277)
	}, ; 62
	%struct.TypeMapModuleEntry {
		i32 33554614, ; uint32_t type_token_id (0x20000b6)
		i32 450; uint32_t java_map_index (0x1c2)
	}, ; 63
	%struct.TypeMapModuleEntry {
		i32 33554615, ; uint32_t type_token_id (0x20000b7)
		i32 371; uint32_t java_map_index (0x173)
	}, ; 64
	%struct.TypeMapModuleEntry {
		i32 33554617, ; uint32_t type_token_id (0x20000b9)
		i32 524; uint32_t java_map_index (0x20c)
	}, ; 65
	%struct.TypeMapModuleEntry {
		i32 33554618, ; uint32_t type_token_id (0x20000ba)
		i32 714; uint32_t java_map_index (0x2ca)
	}, ; 66
	%struct.TypeMapModuleEntry {
		i32 33554620, ; uint32_t type_token_id (0x20000bc)
		i32 76; uint32_t java_map_index (0x4c)
	}, ; 67
	%struct.TypeMapModuleEntry {
		i32 33554621, ; uint32_t type_token_id (0x20000bd)
		i32 494; uint32_t java_map_index (0x1ee)
	}, ; 68
	%struct.TypeMapModuleEntry {
		i32 33554624, ; uint32_t type_token_id (0x20000c0)
		i32 562; uint32_t java_map_index (0x232)
	}, ; 69
	%struct.TypeMapModuleEntry {
		i32 33554625, ; uint32_t type_token_id (0x20000c1)
		i32 1035; uint32_t java_map_index (0x40b)
	}, ; 70
	%struct.TypeMapModuleEntry {
		i32 33554628, ; uint32_t type_token_id (0x20000c4)
		i32 603; uint32_t java_map_index (0x25b)
	}, ; 71
	%struct.TypeMapModuleEntry {
		i32 33554629, ; uint32_t type_token_id (0x20000c5)
		i32 66; uint32_t java_map_index (0x42)
	}, ; 72
	%struct.TypeMapModuleEntry {
		i32 33554634, ; uint32_t type_token_id (0x20000ca)
		i32 355; uint32_t java_map_index (0x163)
	}, ; 73
	%struct.TypeMapModuleEntry {
		i32 33554636, ; uint32_t type_token_id (0x20000cc)
		i32 727; uint32_t java_map_index (0x2d7)
	}, ; 74
	%struct.TypeMapModuleEntry {
		i32 33554638, ; uint32_t type_token_id (0x20000ce)
		i32 1115; uint32_t java_map_index (0x45b)
	}, ; 75
	%struct.TypeMapModuleEntry {
		i32 33554639, ; uint32_t type_token_id (0x20000cf)
		i32 673; uint32_t java_map_index (0x2a1)
	} ; 76
], align 4

@module0_managed_to_java_duplicates = internal dso_local constant [29 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554502, ; uint32_t type_token_id (0x2000046)
		i32 884; uint32_t java_map_index (0x374)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554508, ; uint32_t type_token_id (0x200004c)
		i32 32; uint32_t java_map_index (0x20)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554515, ; uint32_t type_token_id (0x2000053)
		i32 592; uint32_t java_map_index (0x250)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554519, ; uint32_t type_token_id (0x2000057)
		i32 547; uint32_t java_map_index (0x223)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554528, ; uint32_t type_token_id (0x2000060)
		i32 59; uint32_t java_map_index (0x3b)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554535, ; uint32_t type_token_id (0x2000067)
		i32 894; uint32_t java_map_index (0x37e)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554539, ; uint32_t type_token_id (0x200006b)
		i32 15; uint32_t java_map_index (0xf)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554548, ; uint32_t type_token_id (0x2000074)
		i32 127; uint32_t java_map_index (0x7f)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554551, ; uint32_t type_token_id (0x2000077)
		i32 343; uint32_t java_map_index (0x157)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33554558, ; uint32_t type_token_id (0x200007e)
		i32 232; uint32_t java_map_index (0xe8)
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 33554560, ; uint32_t type_token_id (0x2000080)
		i32 958; uint32_t java_map_index (0x3be)
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 33554562, ; uint32_t type_token_id (0x2000082)
		i32 1110; uint32_t java_map_index (0x456)
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 33554565, ; uint32_t type_token_id (0x2000085)
		i32 973; uint32_t java_map_index (0x3cd)
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 33554573, ; uint32_t type_token_id (0x200008d)
		i32 639; uint32_t java_map_index (0x27f)
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 33554579, ; uint32_t type_token_id (0x2000093)
		i32 738; uint32_t java_map_index (0x2e2)
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 33554589, ; uint32_t type_token_id (0x200009d)
		i32 406; uint32_t java_map_index (0x196)
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 33554595, ; uint32_t type_token_id (0x20000a3)
		i32 198; uint32_t java_map_index (0xc6)
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 33554597, ; uint32_t type_token_id (0x20000a5)
		i32 68; uint32_t java_map_index (0x44)
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 33554599, ; uint32_t type_token_id (0x20000a7)
		i32 320; uint32_t java_map_index (0x140)
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 33554601, ; uint32_t type_token_id (0x20000a9)
		i32 1200; uint32_t java_map_index (0x4b0)
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 33554607, ; uint32_t type_token_id (0x20000af)
		i32 1220; uint32_t java_map_index (0x4c4)
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 33554609, ; uint32_t type_token_id (0x20000b1)
		i32 1246; uint32_t java_map_index (0x4de)
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 33554612, ; uint32_t type_token_id (0x20000b4)
		i32 262; uint32_t java_map_index (0x106)
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 33554616, ; uint32_t type_token_id (0x20000b8)
		i32 371; uint32_t java_map_index (0x173)
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 33554619, ; uint32_t type_token_id (0x20000bb)
		i32 714; uint32_t java_map_index (0x2ca)
	}, ; 24
	%struct.TypeMapModuleEntry {
		i32 33554622, ; uint32_t type_token_id (0x20000be)
		i32 494; uint32_t java_map_index (0x1ee)
	}, ; 25
	%struct.TypeMapModuleEntry {
		i32 33554626, ; uint32_t type_token_id (0x20000c2)
		i32 1035; uint32_t java_map_index (0x40b)
	}, ; 26
	%struct.TypeMapModuleEntry {
		i32 33554635, ; uint32_t type_token_id (0x20000cb)
		i32 355; uint32_t java_map_index (0x163)
	}, ; 27
	%struct.TypeMapModuleEntry {
		i32 33554637, ; uint32_t type_token_id (0x20000cd)
		i32 727; uint32_t java_map_index (0x2d7)
	} ; 28
], align 4

@module1_managed_to_java = internal dso_local constant [3 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554439, ; uint32_t type_token_id (0x2000007)
		i32 272; uint32_t java_map_index (0x110)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554441, ; uint32_t type_token_id (0x2000009)
		i32 266; uint32_t java_map_index (0x10a)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554443, ; uint32_t type_token_id (0x200000b)
		i32 67; uint32_t java_map_index (0x43)
	} ; 2
], align 4

@module1_managed_to_java_duplicates = internal dso_local constant [2 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554440, ; uint32_t type_token_id (0x2000008)
		i32 272; uint32_t java_map_index (0x110)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554442, ; uint32_t type_token_id (0x200000a)
		i32 266; uint32_t java_map_index (0x10a)
	} ; 1
], align 4

@module2_managed_to_java = internal dso_local constant [30 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554485, ; uint32_t type_token_id (0x2000035)
		i32 942; uint32_t java_map_index (0x3ae)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554486, ; uint32_t type_token_id (0x2000036)
		i32 785; uint32_t java_map_index (0x311)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554488, ; uint32_t type_token_id (0x2000038)
		i32 51; uint32_t java_map_index (0x33)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554490, ; uint32_t type_token_id (0x200003a)
		i32 374; uint32_t java_map_index (0x176)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554492, ; uint32_t type_token_id (0x200003c)
		i32 758; uint32_t java_map_index (0x2f6)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554494, ; uint32_t type_token_id (0x200003e)
		i32 92; uint32_t java_map_index (0x5c)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554496, ; uint32_t type_token_id (0x2000040)
		i32 1215; uint32_t java_map_index (0x4bf)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554498, ; uint32_t type_token_id (0x2000042)
		i32 1020; uint32_t java_map_index (0x3fc)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554500, ; uint32_t type_token_id (0x2000044)
		i32 125; uint32_t java_map_index (0x7d)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33554502, ; uint32_t type_token_id (0x2000046)
		i32 1238; uint32_t java_map_index (0x4d6)
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 33554504, ; uint32_t type_token_id (0x2000048)
		i32 1247; uint32_t java_map_index (0x4df)
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 33554506, ; uint32_t type_token_id (0x200004a)
		i32 480; uint32_t java_map_index (0x1e0)
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 33554507, ; uint32_t type_token_id (0x200004b)
		i32 510; uint32_t java_map_index (0x1fe)
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 33554509, ; uint32_t type_token_id (0x200004d)
		i32 22; uint32_t java_map_index (0x16)
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 33554511, ; uint32_t type_token_id (0x200004f)
		i32 1094; uint32_t java_map_index (0x446)
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 33554513, ; uint32_t type_token_id (0x2000051)
		i32 1127; uint32_t java_map_index (0x467)
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 33554515, ; uint32_t type_token_id (0x2000053)
		i32 636; uint32_t java_map_index (0x27c)
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 33554516, ; uint32_t type_token_id (0x2000054)
		i32 776; uint32_t java_map_index (0x308)
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 33554517, ; uint32_t type_token_id (0x2000055)
		i32 1021; uint32_t java_map_index (0x3fd)
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 33554518, ; uint32_t type_token_id (0x2000056)
		i32 809; uint32_t java_map_index (0x329)
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 33554520, ; uint32_t type_token_id (0x2000058)
		i32 14; uint32_t java_map_index (0xe)
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 33554522, ; uint32_t type_token_id (0x200005a)
		i32 649; uint32_t java_map_index (0x289)
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 33554524, ; uint32_t type_token_id (0x200005c)
		i32 192; uint32_t java_map_index (0xc0)
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 33554526, ; uint32_t type_token_id (0x200005e)
		i32 703; uint32_t java_map_index (0x2bf)
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 33554527, ; uint32_t type_token_id (0x200005f)
		i32 672; uint32_t java_map_index (0x2a0)
	}, ; 24
	%struct.TypeMapModuleEntry {
		i32 33554529, ; uint32_t type_token_id (0x2000061)
		i32 972; uint32_t java_map_index (0x3cc)
	}, ; 25
	%struct.TypeMapModuleEntry {
		i32 33554530, ; uint32_t type_token_id (0x2000062)
		i32 64; uint32_t java_map_index (0x40)
	}, ; 26
	%struct.TypeMapModuleEntry {
		i32 33554531, ; uint32_t type_token_id (0x2000063)
		i32 632; uint32_t java_map_index (0x278)
	}, ; 27
	%struct.TypeMapModuleEntry {
		i32 33554532, ; uint32_t type_token_id (0x2000064)
		i32 138; uint32_t java_map_index (0x8a)
	}, ; 28
	%struct.TypeMapModuleEntry {
		i32 33554533, ; uint32_t type_token_id (0x2000065)
		i32 425; uint32_t java_map_index (0x1a9)
	} ; 29
], align 4

@module2_managed_to_java_duplicates = internal dso_local constant [19 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554487, ; uint32_t type_token_id (0x2000037)
		i32 785; uint32_t java_map_index (0x311)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554489, ; uint32_t type_token_id (0x2000039)
		i32 51; uint32_t java_map_index (0x33)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554491, ; uint32_t type_token_id (0x200003b)
		i32 374; uint32_t java_map_index (0x176)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554493, ; uint32_t type_token_id (0x200003d)
		i32 758; uint32_t java_map_index (0x2f6)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554495, ; uint32_t type_token_id (0x200003f)
		i32 92; uint32_t java_map_index (0x5c)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554497, ; uint32_t type_token_id (0x2000041)
		i32 1215; uint32_t java_map_index (0x4bf)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554499, ; uint32_t type_token_id (0x2000043)
		i32 1020; uint32_t java_map_index (0x3fc)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554501, ; uint32_t type_token_id (0x2000045)
		i32 125; uint32_t java_map_index (0x7d)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554503, ; uint32_t type_token_id (0x2000047)
		i32 1238; uint32_t java_map_index (0x4d6)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33554505, ; uint32_t type_token_id (0x2000049)
		i32 1247; uint32_t java_map_index (0x4df)
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 33554508, ; uint32_t type_token_id (0x200004c)
		i32 480; uint32_t java_map_index (0x1e0)
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 33554510, ; uint32_t type_token_id (0x200004e)
		i32 22; uint32_t java_map_index (0x16)
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 33554512, ; uint32_t type_token_id (0x2000050)
		i32 1094; uint32_t java_map_index (0x446)
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 33554514, ; uint32_t type_token_id (0x2000052)
		i32 1127; uint32_t java_map_index (0x467)
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 33554519, ; uint32_t type_token_id (0x2000057)
		i32 776; uint32_t java_map_index (0x308)
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 33554521, ; uint32_t type_token_id (0x2000059)
		i32 14; uint32_t java_map_index (0xe)
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 33554523, ; uint32_t type_token_id (0x200005b)
		i32 649; uint32_t java_map_index (0x289)
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 33554525, ; uint32_t type_token_id (0x200005d)
		i32 192; uint32_t java_map_index (0xc0)
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 33554528, ; uint32_t type_token_id (0x2000060)
		i32 672; uint32_t java_map_index (0x2a0)
	} ; 18
], align 4

@module3_managed_to_java = internal dso_local constant [7 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554459, ; uint32_t type_token_id (0x200001b)
		i32 1188; uint32_t java_map_index (0x4a4)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554461, ; uint32_t type_token_id (0x200001d)
		i32 289; uint32_t java_map_index (0x121)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554462, ; uint32_t type_token_id (0x200001e)
		i32 849; uint32_t java_map_index (0x351)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554465, ; uint32_t type_token_id (0x2000021)
		i32 85; uint32_t java_map_index (0x55)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554466, ; uint32_t type_token_id (0x2000022)
		i32 1195; uint32_t java_map_index (0x4ab)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554471, ; uint32_t type_token_id (0x2000027)
		i32 596; uint32_t java_map_index (0x254)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554472, ; uint32_t type_token_id (0x2000028)
		i32 253; uint32_t java_map_index (0xfd)
	} ; 6
], align 4

@module3_managed_to_java_duplicates = internal dso_local constant [4 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554460, ; uint32_t type_token_id (0x200001c)
		i32 1188; uint32_t java_map_index (0x4a4)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554463, ; uint32_t type_token_id (0x200001f)
		i32 849; uint32_t java_map_index (0x351)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554467, ; uint32_t type_token_id (0x2000023)
		i32 1195; uint32_t java_map_index (0x4ab)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554473, ; uint32_t type_token_id (0x2000029)
		i32 253; uint32_t java_map_index (0xfd)
	} ; 3
], align 4

@module4_managed_to_java = internal dso_local constant [4 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554436, ; uint32_t type_token_id (0x2000004)
		i32 957; uint32_t java_map_index (0x3bd)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554438, ; uint32_t type_token_id (0x2000006)
		i32 1053; uint32_t java_map_index (0x41d)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554440, ; uint32_t type_token_id (0x2000008)
		i32 624; uint32_t java_map_index (0x270)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554442, ; uint32_t type_token_id (0x200000a)
		i32 259; uint32_t java_map_index (0x103)
	} ; 3
], align 4

@module4_managed_to_java_duplicates = internal dso_local constant [4 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554437, ; uint32_t type_token_id (0x2000005)
		i32 957; uint32_t java_map_index (0x3bd)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554439, ; uint32_t type_token_id (0x2000007)
		i32 1053; uint32_t java_map_index (0x41d)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554441, ; uint32_t type_token_id (0x2000009)
		i32 624; uint32_t java_map_index (0x270)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554443, ; uint32_t type_token_id (0x200000b)
		i32 259; uint32_t java_map_index (0x103)
	} ; 3
], align 4

@module5_managed_to_java = internal dso_local constant [9 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554438, ; uint32_t type_token_id (0x2000006)
		i32 874; uint32_t java_map_index (0x36a)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554440, ; uint32_t type_token_id (0x2000008)
		i32 110; uint32_t java_map_index (0x6e)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554442, ; uint32_t type_token_id (0x200000a)
		i32 228; uint32_t java_map_index (0xe4)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554443, ; uint32_t type_token_id (0x200000b)
		i32 948; uint32_t java_map_index (0x3b4)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554445, ; uint32_t type_token_id (0x200000d)
		i32 538; uint32_t java_map_index (0x21a)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554447, ; uint32_t type_token_id (0x200000f)
		i32 353; uint32_t java_map_index (0x161)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554449, ; uint32_t type_token_id (0x2000011)
		i32 621; uint32_t java_map_index (0x26d)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554451, ; uint32_t type_token_id (0x2000013)
		i32 485; uint32_t java_map_index (0x1e5)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554453, ; uint32_t type_token_id (0x2000015)
		i32 1124; uint32_t java_map_index (0x464)
	} ; 8
], align 4

@module5_managed_to_java_duplicates = internal dso_local constant [8 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554439, ; uint32_t type_token_id (0x2000007)
		i32 874; uint32_t java_map_index (0x36a)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554441, ; uint32_t type_token_id (0x2000009)
		i32 110; uint32_t java_map_index (0x6e)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554444, ; uint32_t type_token_id (0x200000c)
		i32 948; uint32_t java_map_index (0x3b4)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554446, ; uint32_t type_token_id (0x200000e)
		i32 538; uint32_t java_map_index (0x21a)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554448, ; uint32_t type_token_id (0x2000010)
		i32 353; uint32_t java_map_index (0x161)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554450, ; uint32_t type_token_id (0x2000012)
		i32 621; uint32_t java_map_index (0x26d)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554452, ; uint32_t type_token_id (0x2000014)
		i32 485; uint32_t java_map_index (0x1e5)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554454, ; uint32_t type_token_id (0x2000016)
		i32 1124; uint32_t java_map_index (0x464)
	} ; 7
], align 4

@module6_managed_to_java = internal dso_local constant [2 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554663, ; uint32_t type_token_id (0x20000e7)
		i32 1148; uint32_t java_map_index (0x47c)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554692, ; uint32_t type_token_id (0x2000104)
		i32 225; uint32_t java_map_index (0xe1)
	} ; 1
], align 4

@module7_managed_to_java = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554469, ; uint32_t type_token_id (0x2000025)
		i32 885; uint32_t java_map_index (0x375)
	} ; 0
], align 4

@module8_managed_to_java = internal dso_local constant [5 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554447, ; uint32_t type_token_id (0x200000f)
		i32 185; uint32_t java_map_index (0xb9)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554448, ; uint32_t type_token_id (0x2000010)
		i32 1191; uint32_t java_map_index (0x4a7)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554450, ; uint32_t type_token_id (0x2000012)
		i32 82; uint32_t java_map_index (0x52)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554452, ; uint32_t type_token_id (0x2000014)
		i32 623; uint32_t java_map_index (0x26f)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554453, ; uint32_t type_token_id (0x2000015)
		i32 1203; uint32_t java_map_index (0x4b3)
	} ; 4
], align 4

@module8_managed_to_java_duplicates = internal dso_local constant [4 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554449, ; uint32_t type_token_id (0x2000011)
		i32 1191; uint32_t java_map_index (0x4a7)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554451, ; uint32_t type_token_id (0x2000013)
		i32 82; uint32_t java_map_index (0x52)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554454, ; uint32_t type_token_id (0x2000016)
		i32 1203; uint32_t java_map_index (0x4b3)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554455, ; uint32_t type_token_id (0x2000017)
		i32 623; uint32_t java_map_index (0x26f)
	} ; 3
], align 4

@module9_managed_to_java = internal dso_local constant [4 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554454, ; uint32_t type_token_id (0x2000016)
		i32 310; uint32_t java_map_index (0x136)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554455, ; uint32_t type_token_id (0x2000017)
		i32 1088; uint32_t java_map_index (0x440)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554461, ; uint32_t type_token_id (0x200001d)
		i32 920; uint32_t java_map_index (0x398)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554462, ; uint32_t type_token_id (0x200001e)
		i32 277; uint32_t java_map_index (0x115)
	} ; 3
], align 4

@module9_managed_to_java_duplicates = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554456, ; uint32_t type_token_id (0x2000018)
		i32 1088; uint32_t java_map_index (0x440)
	} ; 0
], align 4

@module10_managed_to_java = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554445, ; uint32_t type_token_id (0x200000d)
		i32 704; uint32_t java_map_index (0x2c0)
	} ; 0
], align 4

@module10_managed_to_java_duplicates = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554446, ; uint32_t type_token_id (0x200000e)
		i32 704; uint32_t java_map_index (0x2c0)
	} ; 0
], align 4

@module11_managed_to_java = internal dso_local constant [12 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554441, ; uint32_t type_token_id (0x2000009)
		i32 162; uint32_t java_map_index (0xa2)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554444, ; uint32_t type_token_id (0x200000c)
		i32 1065; uint32_t java_map_index (0x429)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554445, ; uint32_t type_token_id (0x200000d)
		i32 963; uint32_t java_map_index (0x3c3)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554446, ; uint32_t type_token_id (0x200000e)
		i32 36; uint32_t java_map_index (0x24)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554448, ; uint32_t type_token_id (0x2000010)
		i32 1089; uint32_t java_map_index (0x441)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554449, ; uint32_t type_token_id (0x2000011)
		i32 45; uint32_t java_map_index (0x2d)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554452, ; uint32_t type_token_id (0x2000014)
		i32 1070; uint32_t java_map_index (0x42e)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554453, ; uint32_t type_token_id (0x2000015)
		i32 308; uint32_t java_map_index (0x134)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554455, ; uint32_t type_token_id (0x2000017)
		i32 798; uint32_t java_map_index (0x31e)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33554457, ; uint32_t type_token_id (0x2000019)
		i32 679; uint32_t java_map_index (0x2a7)
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 33554460, ; uint32_t type_token_id (0x200001c)
		i32 50; uint32_t java_map_index (0x32)
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 33554461, ; uint32_t type_token_id (0x200001d)
		i32 1211; uint32_t java_map_index (0x4bb)
	} ; 11
], align 4

@module11_managed_to_java_duplicates = internal dso_local constant [6 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554447, ; uint32_t type_token_id (0x200000f)
		i32 36; uint32_t java_map_index (0x24)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554450, ; uint32_t type_token_id (0x2000012)
		i32 45; uint32_t java_map_index (0x2d)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554454, ; uint32_t type_token_id (0x2000016)
		i32 308; uint32_t java_map_index (0x134)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554456, ; uint32_t type_token_id (0x2000018)
		i32 798; uint32_t java_map_index (0x31e)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554458, ; uint32_t type_token_id (0x200001a)
		i32 679; uint32_t java_map_index (0x2a7)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554462, ; uint32_t type_token_id (0x200001e)
		i32 50; uint32_t java_map_index (0x32)
	} ; 5
], align 4

@module12_managed_to_java = internal dso_local constant [5 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554436, ; uint32_t type_token_id (0x2000004)
		i32 640; uint32_t java_map_index (0x280)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554437, ; uint32_t type_token_id (0x2000005)
		i32 551; uint32_t java_map_index (0x227)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554438, ; uint32_t type_token_id (0x2000006)
		i32 643; uint32_t java_map_index (0x283)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554439, ; uint32_t type_token_id (0x2000007)
		i32 1193; uint32_t java_map_index (0x4a9)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554441, ; uint32_t type_token_id (0x2000009)
		i32 104; uint32_t java_map_index (0x68)
	} ; 4
], align 4

@module12_managed_to_java_duplicates = internal dso_local constant [3 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554440, ; uint32_t type_token_id (0x2000008)
		i32 1193; uint32_t java_map_index (0x4a9)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554442, ; uint32_t type_token_id (0x200000a)
		i32 104; uint32_t java_map_index (0x68)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554443, ; uint32_t type_token_id (0x200000b)
		i32 640; uint32_t java_map_index (0x280)
	} ; 2
], align 4

@module13_managed_to_java = internal dso_local constant [56 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554490, ; uint32_t type_token_id (0x200003a)
		i32 222; uint32_t java_map_index (0xde)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554491, ; uint32_t type_token_id (0x200003b)
		i32 1213; uint32_t java_map_index (0x4bd)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554492, ; uint32_t type_token_id (0x200003c)
		i32 565; uint32_t java_map_index (0x235)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554493, ; uint32_t type_token_id (0x200003d)
		i32 424; uint32_t java_map_index (0x1a8)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554494, ; uint32_t type_token_id (0x200003e)
		i32 268; uint32_t java_map_index (0x10c)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554495, ; uint32_t type_token_id (0x200003f)
		i32 527; uint32_t java_map_index (0x20f)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554496, ; uint32_t type_token_id (0x2000040)
		i32 848; uint32_t java_map_index (0x350)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554497, ; uint32_t type_token_id (0x2000041)
		i32 869; uint32_t java_map_index (0x365)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554498, ; uint32_t type_token_id (0x2000042)
		i32 307; uint32_t java_map_index (0x133)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33554501, ; uint32_t type_token_id (0x2000045)
		i32 1005; uint32_t java_map_index (0x3ed)
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 33554502, ; uint32_t type_token_id (0x2000046)
		i32 173; uint32_t java_map_index (0xad)
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 33554504, ; uint32_t type_token_id (0x2000048)
		i32 1047; uint32_t java_map_index (0x417)
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 33554506, ; uint32_t type_token_id (0x200004a)
		i32 1050; uint32_t java_map_index (0x41a)
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 33554511, ; uint32_t type_token_id (0x200004f)
		i32 895; uint32_t java_map_index (0x37f)
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 33554512, ; uint32_t type_token_id (0x2000050)
		i32 263; uint32_t java_map_index (0x107)
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 33554514, ; uint32_t type_token_id (0x2000052)
		i32 178; uint32_t java_map_index (0xb2)
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 33554515, ; uint32_t type_token_id (0x2000053)
		i32 762; uint32_t java_map_index (0x2fa)
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 33554517, ; uint32_t type_token_id (0x2000055)
		i32 1014; uint32_t java_map_index (0x3f6)
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 33554518, ; uint32_t type_token_id (0x2000056)
		i32 363; uint32_t java_map_index (0x16b)
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 33554520, ; uint32_t type_token_id (0x2000058)
		i32 190; uint32_t java_map_index (0xbe)
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 33554521, ; uint32_t type_token_id (0x2000059)
		i32 539; uint32_t java_map_index (0x21b)
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 33554523, ; uint32_t type_token_id (0x200005b)
		i32 379; uint32_t java_map_index (0x17b)
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 33554524, ; uint32_t type_token_id (0x200005c)
		i32 933; uint32_t java_map_index (0x3a5)
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 33554527, ; uint32_t type_token_id (0x200005f)
		i32 441; uint32_t java_map_index (0x1b9)
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 33554530, ; uint32_t type_token_id (0x2000062)
		i32 324; uint32_t java_map_index (0x144)
	}, ; 24
	%struct.TypeMapModuleEntry {
		i32 33554531, ; uint32_t type_token_id (0x2000063)
		i32 813; uint32_t java_map_index (0x32d)
	}, ; 25
	%struct.TypeMapModuleEntry {
		i32 33554532, ; uint32_t type_token_id (0x2000064)
		i32 1134; uint32_t java_map_index (0x46e)
	}, ; 26
	%struct.TypeMapModuleEntry {
		i32 33554533, ; uint32_t type_token_id (0x2000065)
		i32 743; uint32_t java_map_index (0x2e7)
	}, ; 27
	%struct.TypeMapModuleEntry {
		i32 33554534, ; uint32_t type_token_id (0x2000066)
		i32 664; uint32_t java_map_index (0x298)
	}, ; 28
	%struct.TypeMapModuleEntry {
		i32 33554535, ; uint32_t type_token_id (0x2000067)
		i32 581; uint32_t java_map_index (0x245)
	}, ; 29
	%struct.TypeMapModuleEntry {
		i32 33554536, ; uint32_t type_token_id (0x2000068)
		i32 98; uint32_t java_map_index (0x62)
	}, ; 30
	%struct.TypeMapModuleEntry {
		i32 33554537, ; uint32_t type_token_id (0x2000069)
		i32 448; uint32_t java_map_index (0x1c0)
	}, ; 31
	%struct.TypeMapModuleEntry {
		i32 33554538, ; uint32_t type_token_id (0x200006a)
		i32 25; uint32_t java_map_index (0x19)
	}, ; 32
	%struct.TypeMapModuleEntry {
		i32 33554540, ; uint32_t type_token_id (0x200006c)
		i32 928; uint32_t java_map_index (0x3a0)
	}, ; 33
	%struct.TypeMapModuleEntry {
		i32 33554541, ; uint32_t type_token_id (0x200006d)
		i32 1205; uint32_t java_map_index (0x4b5)
	}, ; 34
	%struct.TypeMapModuleEntry {
		i32 33554542, ; uint32_t type_token_id (0x200006e)
		i32 656; uint32_t java_map_index (0x290)
	}, ; 35
	%struct.TypeMapModuleEntry {
		i32 33554543, ; uint32_t type_token_id (0x200006f)
		i32 121; uint32_t java_map_index (0x79)
	}, ; 36
	%struct.TypeMapModuleEntry {
		i32 33554544, ; uint32_t type_token_id (0x2000070)
		i32 203; uint32_t java_map_index (0xcb)
	}, ; 37
	%struct.TypeMapModuleEntry {
		i32 33554545, ; uint32_t type_token_id (0x2000071)
		i32 516; uint32_t java_map_index (0x204)
	}, ; 38
	%struct.TypeMapModuleEntry {
		i32 33554548, ; uint32_t type_token_id (0x2000074)
		i32 11; uint32_t java_map_index (0xb)
	}, ; 39
	%struct.TypeMapModuleEntry {
		i32 33554549, ; uint32_t type_token_id (0x2000075)
		i32 619; uint32_t java_map_index (0x26b)
	}, ; 40
	%struct.TypeMapModuleEntry {
		i32 33554553, ; uint32_t type_token_id (0x2000079)
		i32 213; uint32_t java_map_index (0xd5)
	}, ; 41
	%struct.TypeMapModuleEntry {
		i32 33554554, ; uint32_t type_token_id (0x200007a)
		i32 804; uint32_t java_map_index (0x324)
	}, ; 42
	%struct.TypeMapModuleEntry {
		i32 33554558, ; uint32_t type_token_id (0x200007e)
		i32 914; uint32_t java_map_index (0x392)
	}, ; 43
	%struct.TypeMapModuleEntry {
		i32 33554569, ; uint32_t type_token_id (0x2000089)
		i32 790; uint32_t java_map_index (0x316)
	}, ; 44
	%struct.TypeMapModuleEntry {
		i32 33554570, ; uint32_t type_token_id (0x200008a)
		i32 1141; uint32_t java_map_index (0x475)
	}, ; 45
	%struct.TypeMapModuleEntry {
		i32 33554571, ; uint32_t type_token_id (0x200008b)
		i32 650; uint32_t java_map_index (0x28a)
	}, ; 46
	%struct.TypeMapModuleEntry {
		i32 33554572, ; uint32_t type_token_id (0x200008c)
		i32 1104; uint32_t java_map_index (0x450)
	}, ; 47
	%struct.TypeMapModuleEntry {
		i32 33554573, ; uint32_t type_token_id (0x200008d)
		i32 345; uint32_t java_map_index (0x159)
	}, ; 48
	%struct.TypeMapModuleEntry {
		i32 33554576, ; uint32_t type_token_id (0x2000090)
		i32 1034; uint32_t java_map_index (0x40a)
	}, ; 49
	%struct.TypeMapModuleEntry {
		i32 33554577, ; uint32_t type_token_id (0x2000091)
		i32 916; uint32_t java_map_index (0x394)
	}, ; 50
	%struct.TypeMapModuleEntry {
		i32 33554579, ; uint32_t type_token_id (0x2000093)
		i32 422; uint32_t java_map_index (0x1a6)
	}, ; 51
	%struct.TypeMapModuleEntry {
		i32 33554581, ; uint32_t type_token_id (0x2000095)
		i32 377; uint32_t java_map_index (0x179)
	}, ; 52
	%struct.TypeMapModuleEntry {
		i32 33554583, ; uint32_t type_token_id (0x2000097)
		i32 398; uint32_t java_map_index (0x18e)
	}, ; 53
	%struct.TypeMapModuleEntry {
		i32 33554585, ; uint32_t type_token_id (0x2000099)
		i32 915; uint32_t java_map_index (0x393)
	}, ; 54
	%struct.TypeMapModuleEntry {
		i32 33554586, ; uint32_t type_token_id (0x200009a)
		i32 517; uint32_t java_map_index (0x205)
	} ; 55
], align 4

@module13_managed_to_java_duplicates = internal dso_local constant [19 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554499, ; uint32_t type_token_id (0x2000043)
		i32 307; uint32_t java_map_index (0x133)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554503, ; uint32_t type_token_id (0x2000047)
		i32 173; uint32_t java_map_index (0xad)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554505, ; uint32_t type_token_id (0x2000049)
		i32 1047; uint32_t java_map_index (0x417)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554507, ; uint32_t type_token_id (0x200004b)
		i32 1050; uint32_t java_map_index (0x41a)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554510, ; uint32_t type_token_id (0x200004e)
		i32 848; uint32_t java_map_index (0x350)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554513, ; uint32_t type_token_id (0x2000051)
		i32 263; uint32_t java_map_index (0x107)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554516, ; uint32_t type_token_id (0x2000054)
		i32 762; uint32_t java_map_index (0x2fa)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554519, ; uint32_t type_token_id (0x2000057)
		i32 363; uint32_t java_map_index (0x16b)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554525, ; uint32_t type_token_id (0x200005d)
		i32 933; uint32_t java_map_index (0x3a5)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33554539, ; uint32_t type_token_id (0x200006b)
		i32 25; uint32_t java_map_index (0x19)
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 33554546, ; uint32_t type_token_id (0x2000072)
		i32 516; uint32_t java_map_index (0x204)
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 33554550, ; uint32_t type_token_id (0x2000076)
		i32 619; uint32_t java_map_index (0x26b)
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 33554555, ; uint32_t type_token_id (0x200007b)
		i32 804; uint32_t java_map_index (0x324)
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 33554574, ; uint32_t type_token_id (0x200008e)
		i32 345; uint32_t java_map_index (0x159)
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 33554575, ; uint32_t type_token_id (0x200008f)
		i32 1104; uint32_t java_map_index (0x450)
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 33554578, ; uint32_t type_token_id (0x2000092)
		i32 916; uint32_t java_map_index (0x394)
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 33554580, ; uint32_t type_token_id (0x2000094)
		i32 422; uint32_t java_map_index (0x1a6)
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 33554582, ; uint32_t type_token_id (0x2000096)
		i32 377; uint32_t java_map_index (0x179)
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 33554584, ; uint32_t type_token_id (0x2000098)
		i32 398; uint32_t java_map_index (0x18e)
	} ; 18
], align 4

@module14_managed_to_java = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554552, ; uint32_t type_token_id (0x2000078)
		i32 1064; uint32_t java_map_index (0x428)
	} ; 0
], align 4

@module15_managed_to_java = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554434, ; uint32_t type_token_id (0x2000002)
		i32 492; uint32_t java_map_index (0x1ec)
	} ; 0
], align 4

@module16_managed_to_java = internal dso_local constant [4 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554511, ; uint32_t type_token_id (0x200004f)
		i32 674; uint32_t java_map_index (0x2a2)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554513, ; uint32_t type_token_id (0x2000051)
		i32 169; uint32_t java_map_index (0xa9)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554515, ; uint32_t type_token_id (0x2000053)
		i32 99; uint32_t java_map_index (0x63)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554534, ; uint32_t type_token_id (0x2000066)
		i32 61; uint32_t java_map_index (0x3d)
	} ; 3
], align 4

@module17_managed_to_java = internal dso_local constant [71 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554488, ; uint32_t type_token_id (0x2000038)
		i32 989; uint32_t java_map_index (0x3dd)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554490, ; uint32_t type_token_id (0x200003a)
		i32 977; uint32_t java_map_index (0x3d1)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554492, ; uint32_t type_token_id (0x200003c)
		i32 384; uint32_t java_map_index (0x180)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554493, ; uint32_t type_token_id (0x200003d)
		i32 372; uint32_t java_map_index (0x174)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554494, ; uint32_t type_token_id (0x200003e)
		i32 221; uint32_t java_map_index (0xdd)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554496, ; uint32_t type_token_id (0x2000040)
		i32 987; uint32_t java_map_index (0x3db)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554497, ; uint32_t type_token_id (0x2000041)
		i32 768; uint32_t java_map_index (0x300)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554498, ; uint32_t type_token_id (0x2000042)
		i32 269; uint32_t java_map_index (0x10d)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554499, ; uint32_t type_token_id (0x2000043)
		i32 129; uint32_t java_map_index (0x81)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33554500, ; uint32_t type_token_id (0x2000044)
		i32 453; uint32_t java_map_index (0x1c5)
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 33554501, ; uint32_t type_token_id (0x2000045)
		i32 728; uint32_t java_map_index (0x2d8)
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 33554502, ; uint32_t type_token_id (0x2000046)
		i32 757; uint32_t java_map_index (0x2f5)
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 33554504, ; uint32_t type_token_id (0x2000048)
		i32 992; uint32_t java_map_index (0x3e0)
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 33554505, ; uint32_t type_token_id (0x2000049)
		i32 412; uint32_t java_map_index (0x19c)
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 33554506, ; uint32_t type_token_id (0x200004a)
		i32 250; uint32_t java_map_index (0xfa)
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 33554508, ; uint32_t type_token_id (0x200004c)
		i32 652; uint32_t java_map_index (0x28c)
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 33554509, ; uint32_t type_token_id (0x200004d)
		i32 1207; uint32_t java_map_index (0x4b7)
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 33554510, ; uint32_t type_token_id (0x200004e)
		i32 767; uint32_t java_map_index (0x2ff)
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 33554511, ; uint32_t type_token_id (0x200004f)
		i32 1116; uint32_t java_map_index (0x45c)
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 33554512, ; uint32_t type_token_id (0x2000050)
		i32 188; uint32_t java_map_index (0xbc)
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 33554515, ; uint32_t type_token_id (0x2000053)
		i32 344; uint32_t java_map_index (0x158)
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 33554516, ; uint32_t type_token_id (0x2000054)
		i32 766; uint32_t java_map_index (0x2fe)
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 33554517, ; uint32_t type_token_id (0x2000055)
		i32 797; uint32_t java_map_index (0x31d)
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 33554520, ; uint32_t type_token_id (0x2000058)
		i32 196; uint32_t java_map_index (0xc4)
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 33554523, ; uint32_t type_token_id (0x200005b)
		i32 224; uint32_t java_map_index (0xe0)
	}, ; 24
	%struct.TypeMapModuleEntry {
		i32 33554524, ; uint32_t type_token_id (0x200005c)
		i32 1143; uint32_t java_map_index (0x477)
	}, ; 25
	%struct.TypeMapModuleEntry {
		i32 33554525, ; uint32_t type_token_id (0x200005d)
		i32 411; uint32_t java_map_index (0x19b)
	}, ; 26
	%struct.TypeMapModuleEntry {
		i32 33554526, ; uint32_t type_token_id (0x200005e)
		i32 826; uint32_t java_map_index (0x33a)
	}, ; 27
	%struct.TypeMapModuleEntry {
		i32 33554527, ; uint32_t type_token_id (0x200005f)
		i32 654; uint32_t java_map_index (0x28e)
	}, ; 28
	%struct.TypeMapModuleEntry {
		i32 33554530, ; uint32_t type_token_id (0x2000062)
		i32 388; uint32_t java_map_index (0x184)
	}, ; 29
	%struct.TypeMapModuleEntry {
		i32 33554531, ; uint32_t type_token_id (0x2000063)
		i32 497; uint32_t java_map_index (0x1f1)
	}, ; 30
	%struct.TypeMapModuleEntry {
		i32 33554534, ; uint32_t type_token_id (0x2000066)
		i32 241; uint32_t java_map_index (0xf1)
	}, ; 31
	%struct.TypeMapModuleEntry {
		i32 33554540, ; uint32_t type_token_id (0x200006c)
		i32 861; uint32_t java_map_index (0x35d)
	}, ; 32
	%struct.TypeMapModuleEntry {
		i32 33554541, ; uint32_t type_token_id (0x200006d)
		i32 1186; uint32_t java_map_index (0x4a2)
	}, ; 33
	%struct.TypeMapModuleEntry {
		i32 33554542, ; uint32_t type_token_id (0x200006e)
		i32 1161; uint32_t java_map_index (0x489)
	}, ; 34
	%struct.TypeMapModuleEntry {
		i32 33554543, ; uint32_t type_token_id (0x200006f)
		i32 360; uint32_t java_map_index (0x168)
	}, ; 35
	%struct.TypeMapModuleEntry {
		i32 33554545, ; uint32_t type_token_id (0x2000071)
		i32 191; uint32_t java_map_index (0xbf)
	}, ; 36
	%struct.TypeMapModuleEntry {
		i32 33554547, ; uint32_t type_token_id (0x2000073)
		i32 297; uint32_t java_map_index (0x129)
	}, ; 37
	%struct.TypeMapModuleEntry {
		i32 33554549, ; uint32_t type_token_id (0x2000075)
		i32 735; uint32_t java_map_index (0x2df)
	}, ; 38
	%struct.TypeMapModuleEntry {
		i32 33554551, ; uint32_t type_token_id (0x2000077)
		i32 312; uint32_t java_map_index (0x138)
	}, ; 39
	%struct.TypeMapModuleEntry {
		i32 33554553, ; uint32_t type_token_id (0x2000079)
		i32 1032; uint32_t java_map_index (0x408)
	}, ; 40
	%struct.TypeMapModuleEntry {
		i32 33554555, ; uint32_t type_token_id (0x200007b)
		i32 508; uint32_t java_map_index (0x1fc)
	}, ; 41
	%struct.TypeMapModuleEntry {
		i32 33554557, ; uint32_t type_token_id (0x200007d)
		i32 732; uint32_t java_map_index (0x2dc)
	}, ; 42
	%struct.TypeMapModuleEntry {
		i32 33554558, ; uint32_t type_token_id (0x200007e)
		i32 663; uint32_t java_map_index (0x297)
	}, ; 43
	%struct.TypeMapModuleEntry {
		i32 33554560, ; uint32_t type_token_id (0x2000080)
		i32 1160; uint32_t java_map_index (0x488)
	}, ; 44
	%struct.TypeMapModuleEntry {
		i32 33554561, ; uint32_t type_token_id (0x2000081)
		i32 968; uint32_t java_map_index (0x3c8)
	}, ; 45
	%struct.TypeMapModuleEntry {
		i32 33554562, ; uint32_t type_token_id (0x2000082)
		i32 1024; uint32_t java_map_index (0x400)
	}, ; 46
	%struct.TypeMapModuleEntry {
		i32 33554563, ; uint32_t type_token_id (0x2000083)
		i32 580; uint32_t java_map_index (0x244)
	}, ; 47
	%struct.TypeMapModuleEntry {
		i32 33554565, ; uint32_t type_token_id (0x2000085)
		i32 254; uint32_t java_map_index (0xfe)
	}, ; 48
	%struct.TypeMapModuleEntry {
		i32 33554566, ; uint32_t type_token_id (0x2000086)
		i32 90; uint32_t java_map_index (0x5a)
	}, ; 49
	%struct.TypeMapModuleEntry {
		i32 33554567, ; uint32_t type_token_id (0x2000087)
		i32 886; uint32_t java_map_index (0x376)
	}, ; 50
	%struct.TypeMapModuleEntry {
		i32 33554568, ; uint32_t type_token_id (0x2000088)
		i32 859; uint32_t java_map_index (0x35b)
	}, ; 51
	%struct.TypeMapModuleEntry {
		i32 33554569, ; uint32_t type_token_id (0x2000089)
		i32 216; uint32_t java_map_index (0xd8)
	}, ; 52
	%struct.TypeMapModuleEntry {
		i32 33554571, ; uint32_t type_token_id (0x200008b)
		i32 722; uint32_t java_map_index (0x2d2)
	}, ; 53
	%struct.TypeMapModuleEntry {
		i32 33554572, ; uint32_t type_token_id (0x200008c)
		i32 17; uint32_t java_map_index (0x11)
	}, ; 54
	%struct.TypeMapModuleEntry {
		i32 33554573, ; uint32_t type_token_id (0x200008d)
		i32 426; uint32_t java_map_index (0x1aa)
	}, ; 55
	%struct.TypeMapModuleEntry {
		i32 33554574, ; uint32_t type_token_id (0x200008e)
		i32 1092; uint32_t java_map_index (0x444)
	}, ; 56
	%struct.TypeMapModuleEntry {
		i32 33554575, ; uint32_t type_token_id (0x200008f)
		i32 706; uint32_t java_map_index (0x2c2)
	}, ; 57
	%struct.TypeMapModuleEntry {
		i32 33554578, ; uint32_t type_token_id (0x2000092)
		i32 1224; uint32_t java_map_index (0x4c8)
	}, ; 58
	%struct.TypeMapModuleEntry {
		i32 33554581, ; uint32_t type_token_id (0x2000095)
		i32 1240; uint32_t java_map_index (0x4d8)
	}, ; 59
	%struct.TypeMapModuleEntry {
		i32 33554582, ; uint32_t type_token_id (0x2000096)
		i32 970; uint32_t java_map_index (0x3ca)
	}, ; 60
	%struct.TypeMapModuleEntry {
		i32 33554583, ; uint32_t type_token_id (0x2000097)
		i32 770; uint32_t java_map_index (0x302)
	}, ; 61
	%struct.TypeMapModuleEntry {
		i32 33554584, ; uint32_t type_token_id (0x2000098)
		i32 449; uint32_t java_map_index (0x1c1)
	}, ; 62
	%struct.TypeMapModuleEntry {
		i32 33554585, ; uint32_t type_token_id (0x2000099)
		i32 903; uint32_t java_map_index (0x387)
	}, ; 63
	%struct.TypeMapModuleEntry {
		i32 33554586, ; uint32_t type_token_id (0x200009a)
		i32 591; uint32_t java_map_index (0x24f)
	}, ; 64
	%struct.TypeMapModuleEntry {
		i32 33554587, ; uint32_t type_token_id (0x200009b)
		i32 1245; uint32_t java_map_index (0x4dd)
	}, ; 65
	%struct.TypeMapModuleEntry {
		i32 33554588, ; uint32_t type_token_id (0x200009c)
		i32 328; uint32_t java_map_index (0x148)
	}, ; 66
	%struct.TypeMapModuleEntry {
		i32 33554589, ; uint32_t type_token_id (0x200009d)
		i32 1183; uint32_t java_map_index (0x49f)
	}, ; 67
	%struct.TypeMapModuleEntry {
		i32 33554591, ; uint32_t type_token_id (0x200009f)
		i32 171; uint32_t java_map_index (0xab)
	}, ; 68
	%struct.TypeMapModuleEntry {
		i32 33554593, ; uint32_t type_token_id (0x20000a1)
		i32 204; uint32_t java_map_index (0xcc)
	}, ; 69
	%struct.TypeMapModuleEntry {
		i32 33554594, ; uint32_t type_token_id (0x20000a2)
		i32 429; uint32_t java_map_index (0x1ad)
	} ; 70
], align 4

@module17_managed_to_java_duplicates = internal dso_local constant [24 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554489, ; uint32_t type_token_id (0x2000039)
		i32 989; uint32_t java_map_index (0x3dd)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554491, ; uint32_t type_token_id (0x200003b)
		i32 977; uint32_t java_map_index (0x3d1)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554495, ; uint32_t type_token_id (0x200003f)
		i32 221; uint32_t java_map_index (0xdd)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554503, ; uint32_t type_token_id (0x2000047)
		i32 757; uint32_t java_map_index (0x2f5)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554507, ; uint32_t type_token_id (0x200004b)
		i32 250; uint32_t java_map_index (0xfa)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554513, ; uint32_t type_token_id (0x2000051)
		i32 188; uint32_t java_map_index (0xbc)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554514, ; uint32_t type_token_id (0x2000052)
		i32 1116; uint32_t java_map_index (0x45c)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554518, ; uint32_t type_token_id (0x2000056)
		i32 797; uint32_t java_map_index (0x31d)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554528, ; uint32_t type_token_id (0x2000060)
		i32 654; uint32_t java_map_index (0x28e)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33554532, ; uint32_t type_token_id (0x2000064)
		i32 497; uint32_t java_map_index (0x1f1)
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 33554539, ; uint32_t type_token_id (0x200006b)
		i32 826; uint32_t java_map_index (0x33a)
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 33554544, ; uint32_t type_token_id (0x2000070)
		i32 360; uint32_t java_map_index (0x168)
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 33554546, ; uint32_t type_token_id (0x2000072)
		i32 191; uint32_t java_map_index (0xbf)
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 33554548, ; uint32_t type_token_id (0x2000074)
		i32 297; uint32_t java_map_index (0x129)
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 33554550, ; uint32_t type_token_id (0x2000076)
		i32 735; uint32_t java_map_index (0x2df)
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 33554552, ; uint32_t type_token_id (0x2000078)
		i32 312; uint32_t java_map_index (0x138)
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 33554554, ; uint32_t type_token_id (0x200007a)
		i32 1032; uint32_t java_map_index (0x408)
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 33554556, ; uint32_t type_token_id (0x200007c)
		i32 508; uint32_t java_map_index (0x1fc)
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 33554559, ; uint32_t type_token_id (0x200007f)
		i32 663; uint32_t java_map_index (0x297)
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 33554564, ; uint32_t type_token_id (0x2000084)
		i32 580; uint32_t java_map_index (0x244)
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 33554570, ; uint32_t type_token_id (0x200008a)
		i32 216; uint32_t java_map_index (0xd8)
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 33554576, ; uint32_t type_token_id (0x2000090)
		i32 706; uint32_t java_map_index (0x2c2)
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 33554590, ; uint32_t type_token_id (0x200009e)
		i32 1183; uint32_t java_map_index (0x49f)
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 33554592, ; uint32_t type_token_id (0x20000a0)
		i32 171; uint32_t java_map_index (0xab)
	} ; 23
], align 4

@module18_managed_to_java = internal dso_local constant [514 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554600, ; uint32_t type_token_id (0x20000a8)
		i32 646; uint32_t java_map_index (0x286)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554602, ; uint32_t type_token_id (0x20000aa)
		i32 716; uint32_t java_map_index (0x2cc)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554604, ; uint32_t type_token_id (0x20000ac)
		i32 342; uint32_t java_map_index (0x156)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554606, ; uint32_t type_token_id (0x20000ae)
		i32 74; uint32_t java_map_index (0x4a)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554608, ; uint32_t type_token_id (0x20000b0)
		i32 415; uint32_t java_map_index (0x19f)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554609, ; uint32_t type_token_id (0x20000b1)
		i32 1079; uint32_t java_map_index (0x437)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554611, ; uint32_t type_token_id (0x20000b3)
		i32 998; uint32_t java_map_index (0x3e6)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554613, ; uint32_t type_token_id (0x20000b5)
		i32 775; uint32_t java_map_index (0x307)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554615, ; uint32_t type_token_id (0x20000b7)
		i32 383; uint32_t java_map_index (0x17f)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33554617, ; uint32_t type_token_id (0x20000b9)
		i32 969; uint32_t java_map_index (0x3c9)
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 33554619, ; uint32_t type_token_id (0x20000bb)
		i32 39; uint32_t java_map_index (0x27)
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 33554621, ; uint32_t type_token_id (0x20000bd)
		i32 235; uint32_t java_map_index (0xeb)
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 33554623, ; uint32_t type_token_id (0x20000bf)
		i32 299; uint32_t java_map_index (0x12b)
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 33554624, ; uint32_t type_token_id (0x20000c0)
		i32 366; uint32_t java_map_index (0x16e)
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 33554625, ; uint32_t type_token_id (0x20000c1)
		i32 1146; uint32_t java_map_index (0x47a)
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 33554627, ; uint32_t type_token_id (0x20000c3)
		i32 1208; uint32_t java_map_index (0x4b8)
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 33554628, ; uint32_t type_token_id (0x20000c4)
		i32 57; uint32_t java_map_index (0x39)
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 33554630, ; uint32_t type_token_id (0x20000c6)
		i32 718; uint32_t java_map_index (0x2ce)
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 33554632, ; uint32_t type_token_id (0x20000c8)
		i32 1041; uint32_t java_map_index (0x411)
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 33554633, ; uint32_t type_token_id (0x20000c9)
		i32 96; uint32_t java_map_index (0x60)
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 33554637, ; uint32_t type_token_id (0x20000cd)
		i32 288; uint32_t java_map_index (0x120)
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 33554638, ; uint32_t type_token_id (0x20000ce)
		i32 615; uint32_t java_map_index (0x267)
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 33554640, ; uint32_t type_token_id (0x20000d0)
		i32 586; uint32_t java_map_index (0x24a)
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 33554641, ; uint32_t type_token_id (0x20000d1)
		i32 575; uint32_t java_map_index (0x23f)
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 33554644, ; uint32_t type_token_id (0x20000d4)
		i32 1198; uint32_t java_map_index (0x4ae)
	}, ; 24
	%struct.TypeMapModuleEntry {
		i32 33554645, ; uint32_t type_token_id (0x20000d5)
		i32 309; uint32_t java_map_index (0x135)
	}, ; 25
	%struct.TypeMapModuleEntry {
		i32 33554647, ; uint32_t type_token_id (0x20000d7)
		i32 554; uint32_t java_map_index (0x22a)
	}, ; 26
	%struct.TypeMapModuleEntry {
		i32 33554650, ; uint32_t type_token_id (0x20000da)
		i32 439; uint32_t java_map_index (0x1b7)
	}, ; 27
	%struct.TypeMapModuleEntry {
		i32 33554654, ; uint32_t type_token_id (0x20000de)
		i32 756; uint32_t java_map_index (0x2f4)
	}, ; 28
	%struct.TypeMapModuleEntry {
		i32 33554656, ; uint32_t type_token_id (0x20000e0)
		i32 428; uint32_t java_map_index (0x1ac)
	}, ; 29
	%struct.TypeMapModuleEntry {
		i32 33554657, ; uint32_t type_token_id (0x20000e1)
		i32 473; uint32_t java_map_index (0x1d9)
	}, ; 30
	%struct.TypeMapModuleEntry {
		i32 33554658, ; uint32_t type_token_id (0x20000e2)
		i32 479; uint32_t java_map_index (0x1df)
	}, ; 31
	%struct.TypeMapModuleEntry {
		i32 33554659, ; uint32_t type_token_id (0x20000e3)
		i32 1243; uint32_t java_map_index (0x4db)
	}, ; 32
	%struct.TypeMapModuleEntry {
		i32 33554662, ; uint32_t type_token_id (0x20000e6)
		i32 641; uint32_t java_map_index (0x281)
	}, ; 33
	%struct.TypeMapModuleEntry {
		i32 33554667, ; uint32_t type_token_id (0x20000eb)
		i32 70; uint32_t java_map_index (0x46)
	}, ; 34
	%struct.TypeMapModuleEntry {
		i32 33554668, ; uint32_t type_token_id (0x20000ec)
		i32 477; uint32_t java_map_index (0x1dd)
	}, ; 35
	%struct.TypeMapModuleEntry {
		i32 33554669, ; uint32_t type_token_id (0x20000ed)
		i32 276; uint32_t java_map_index (0x114)
	}, ; 36
	%struct.TypeMapModuleEntry {
		i32 33554670, ; uint32_t type_token_id (0x20000ee)
		i32 158; uint32_t java_map_index (0x9e)
	}, ; 37
	%struct.TypeMapModuleEntry {
		i32 33554671, ; uint32_t type_token_id (0x20000ef)
		i32 352; uint32_t java_map_index (0x160)
	}, ; 38
	%struct.TypeMapModuleEntry {
		i32 33554673, ; uint32_t type_token_id (0x20000f1)
		i32 490; uint32_t java_map_index (0x1ea)
	}, ; 39
	%struct.TypeMapModuleEntry {
		i32 33554674, ; uint32_t type_token_id (0x20000f2)
		i32 584; uint32_t java_map_index (0x248)
	}, ; 40
	%struct.TypeMapModuleEntry {
		i32 33554675, ; uint32_t type_token_id (0x20000f3)
		i32 265; uint32_t java_map_index (0x109)
	}, ; 41
	%struct.TypeMapModuleEntry {
		i32 33554676, ; uint32_t type_token_id (0x20000f4)
		i32 780; uint32_t java_map_index (0x30c)
	}, ; 42
	%struct.TypeMapModuleEntry {
		i32 33554678, ; uint32_t type_token_id (0x20000f6)
		i32 364; uint32_t java_map_index (0x16c)
	}, ; 43
	%struct.TypeMapModuleEntry {
		i32 33554680, ; uint32_t type_token_id (0x20000f8)
		i32 1162; uint32_t java_map_index (0x48a)
	}, ; 44
	%struct.TypeMapModuleEntry {
		i32 33554682, ; uint32_t type_token_id (0x20000fa)
		i32 8; uint32_t java_map_index (0x8)
	}, ; 45
	%struct.TypeMapModuleEntry {
		i32 33554684, ; uint32_t type_token_id (0x20000fc)
		i32 772; uint32_t java_map_index (0x304)
	}, ; 46
	%struct.TypeMapModuleEntry {
		i32 33554685, ; uint32_t type_token_id (0x20000fd)
		i32 1117; uint32_t java_map_index (0x45d)
	}, ; 47
	%struct.TypeMapModuleEntry {
		i32 33554686, ; uint32_t type_token_id (0x20000fe)
		i32 750; uint32_t java_map_index (0x2ee)
	}, ; 48
	%struct.TypeMapModuleEntry {
		i32 33554687, ; uint32_t type_token_id (0x20000ff)
		i32 152; uint32_t java_map_index (0x98)
	}, ; 49
	%struct.TypeMapModuleEntry {
		i32 33554689, ; uint32_t type_token_id (0x2000101)
		i32 602; uint32_t java_map_index (0x25a)
	}, ; 50
	%struct.TypeMapModuleEntry {
		i32 33554691, ; uint32_t type_token_id (0x2000103)
		i32 529; uint32_t java_map_index (0x211)
	}, ; 51
	%struct.TypeMapModuleEntry {
		i32 33554692, ; uint32_t type_token_id (0x2000104)
		i32 402; uint32_t java_map_index (0x192)
	}, ; 52
	%struct.TypeMapModuleEntry {
		i32 33554693, ; uint32_t type_token_id (0x2000105)
		i32 846; uint32_t java_map_index (0x34e)
	}, ; 53
	%struct.TypeMapModuleEntry {
		i32 33554694, ; uint32_t type_token_id (0x2000106)
		i32 409; uint32_t java_map_index (0x199)
	}, ; 54
	%struct.TypeMapModuleEntry {
		i32 33554695, ; uint32_t type_token_id (0x2000107)
		i32 317; uint32_t java_map_index (0x13d)
	}, ; 55
	%struct.TypeMapModuleEntry {
		i32 33554696, ; uint32_t type_token_id (0x2000108)
		i32 687; uint32_t java_map_index (0x2af)
	}, ; 56
	%struct.TypeMapModuleEntry {
		i32 33554697, ; uint32_t type_token_id (0x2000109)
		i32 938; uint32_t java_map_index (0x3aa)
	}, ; 57
	%struct.TypeMapModuleEntry {
		i32 33554698, ; uint32_t type_token_id (0x200010a)
		i32 351; uint32_t java_map_index (0x15f)
	}, ; 58
	%struct.TypeMapModuleEntry {
		i32 33554700, ; uint32_t type_token_id (0x200010c)
		i32 689; uint32_t java_map_index (0x2b1)
	}, ; 59
	%struct.TypeMapModuleEntry {
		i32 33554701, ; uint32_t type_token_id (0x200010d)
		i32 783; uint32_t java_map_index (0x30f)
	}, ; 60
	%struct.TypeMapModuleEntry {
		i32 33554702, ; uint32_t type_token_id (0x200010e)
		i32 1100; uint32_t java_map_index (0x44c)
	}, ; 61
	%struct.TypeMapModuleEntry {
		i32 33554703, ; uint32_t type_token_id (0x200010f)
		i32 301; uint32_t java_map_index (0x12d)
	}, ; 62
	%struct.TypeMapModuleEntry {
		i32 33554706, ; uint32_t type_token_id (0x2000112)
		i32 700; uint32_t java_map_index (0x2bc)
	}, ; 63
	%struct.TypeMapModuleEntry {
		i32 33554710, ; uint32_t type_token_id (0x2000116)
		i32 588; uint32_t java_map_index (0x24c)
	}, ; 64
	%struct.TypeMapModuleEntry {
		i32 33554711, ; uint32_t type_token_id (0x2000117)
		i32 1142; uint32_t java_map_index (0x476)
	}, ; 65
	%struct.TypeMapModuleEntry {
		i32 33554718, ; uint32_t type_token_id (0x200011e)
		i32 451; uint32_t java_map_index (0x1c3)
	}, ; 66
	%struct.TypeMapModuleEntry {
		i32 33554720, ; uint32_t type_token_id (0x2000120)
		i32 1121; uint32_t java_map_index (0x461)
	}, ; 67
	%struct.TypeMapModuleEntry {
		i32 33554722, ; uint32_t type_token_id (0x2000122)
		i32 788; uint32_t java_map_index (0x314)
	}, ; 68
	%struct.TypeMapModuleEntry {
		i32 33554724, ; uint32_t type_token_id (0x2000124)
		i32 1159; uint32_t java_map_index (0x487)
	}, ; 69
	%struct.TypeMapModuleEntry {
		i32 33554725, ; uint32_t type_token_id (0x2000125)
		i32 1084; uint32_t java_map_index (0x43c)
	}, ; 70
	%struct.TypeMapModuleEntry {
		i32 33554726, ; uint32_t type_token_id (0x2000126)
		i32 594; uint32_t java_map_index (0x252)
	}, ; 71
	%struct.TypeMapModuleEntry {
		i32 33554728, ; uint32_t type_token_id (0x2000128)
		i32 898; uint32_t java_map_index (0x382)
	}, ; 72
	%struct.TypeMapModuleEntry {
		i32 33554730, ; uint32_t type_token_id (0x200012a)
		i32 724; uint32_t java_map_index (0x2d4)
	}, ; 73
	%struct.TypeMapModuleEntry {
		i32 33554732, ; uint32_t type_token_id (0x200012c)
		i32 1113; uint32_t java_map_index (0x459)
	}, ; 74
	%struct.TypeMapModuleEntry {
		i32 33554733, ; uint32_t type_token_id (0x200012d)
		i32 778; uint32_t java_map_index (0x30a)
	}, ; 75
	%struct.TypeMapModuleEntry {
		i32 33554736, ; uint32_t type_token_id (0x2000130)
		i32 31; uint32_t java_map_index (0x1f)
	}, ; 76
	%struct.TypeMapModuleEntry {
		i32 33554737, ; uint32_t type_token_id (0x2000131)
		i32 840; uint32_t java_map_index (0x348)
	}, ; 77
	%struct.TypeMapModuleEntry {
		i32 33554739, ; uint32_t type_token_id (0x2000133)
		i32 893; uint32_t java_map_index (0x37d)
	}, ; 78
	%struct.TypeMapModuleEntry {
		i32 33554740, ; uint32_t type_token_id (0x2000134)
		i32 629; uint32_t java_map_index (0x275)
	}, ; 79
	%struct.TypeMapModuleEntry {
		i32 33554741, ; uint32_t type_token_id (0x2000135)
		i32 47; uint32_t java_map_index (0x2f)
	}, ; 80
	%struct.TypeMapModuleEntry {
		i32 33554742, ; uint32_t type_token_id (0x2000136)
		i32 28; uint32_t java_map_index (0x1c)
	}, ; 81
	%struct.TypeMapModuleEntry {
		i32 33554743, ; uint32_t type_token_id (0x2000137)
		i32 1031; uint32_t java_map_index (0x407)
	}, ; 82
	%struct.TypeMapModuleEntry {
		i32 33554744, ; uint32_t type_token_id (0x2000138)
		i32 1176; uint32_t java_map_index (0x498)
	}, ; 83
	%struct.TypeMapModuleEntry {
		i32 33554745, ; uint32_t type_token_id (0x2000139)
		i32 109; uint32_t java_map_index (0x6d)
	}, ; 84
	%struct.TypeMapModuleEntry {
		i32 33554746, ; uint32_t type_token_id (0x200013a)
		i32 697; uint32_t java_map_index (0x2b9)
	}, ; 85
	%struct.TypeMapModuleEntry {
		i32 33554749, ; uint32_t type_token_id (0x200013d)
		i32 1114; uint32_t java_map_index (0x45a)
	}, ; 86
	%struct.TypeMapModuleEntry {
		i32 33554750, ; uint32_t type_token_id (0x200013e)
		i32 990; uint32_t java_map_index (0x3de)
	}, ; 87
	%struct.TypeMapModuleEntry {
		i32 33554753, ; uint32_t type_token_id (0x2000141)
		i32 43; uint32_t java_map_index (0x2b)
	}, ; 88
	%struct.TypeMapModuleEntry {
		i32 33554756, ; uint32_t type_token_id (0x2000144)
		i32 284; uint32_t java_map_index (0x11c)
	}, ; 89
	%struct.TypeMapModuleEntry {
		i32 33554757, ; uint32_t type_token_id (0x2000145)
		i32 1120; uint32_t java_map_index (0x460)
	}, ; 90
	%struct.TypeMapModuleEntry {
		i32 33554759, ; uint32_t type_token_id (0x2000147)
		i32 1078; uint32_t java_map_index (0x436)
	}, ; 91
	%struct.TypeMapModuleEntry {
		i32 33554761, ; uint32_t type_token_id (0x2000149)
		i32 800; uint32_t java_map_index (0x320)
	}, ; 92
	%struct.TypeMapModuleEntry {
		i32 33554764, ; uint32_t type_token_id (0x200014c)
		i32 511; uint32_t java_map_index (0x1ff)
	}, ; 93
	%struct.TypeMapModuleEntry {
		i32 33554767, ; uint32_t type_token_id (0x200014f)
		i32 1028; uint32_t java_map_index (0x404)
	}, ; 94
	%struct.TypeMapModuleEntry {
		i32 33554769, ; uint32_t type_token_id (0x2000151)
		i32 1210; uint32_t java_map_index (0x4ba)
	}, ; 95
	%struct.TypeMapModuleEntry {
		i32 33554771, ; uint32_t type_token_id (0x2000153)
		i32 498; uint32_t java_map_index (0x1f2)
	}, ; 96
	%struct.TypeMapModuleEntry {
		i32 33554772, ; uint32_t type_token_id (0x2000154)
		i32 305; uint32_t java_map_index (0x131)
	}, ; 97
	%struct.TypeMapModuleEntry {
		i32 33554774, ; uint32_t type_token_id (0x2000156)
		i32 877; uint32_t java_map_index (0x36d)
	}, ; 98
	%struct.TypeMapModuleEntry {
		i32 33554776, ; uint32_t type_token_id (0x2000158)
		i32 1072; uint32_t java_map_index (0x430)
	}, ; 99
	%struct.TypeMapModuleEntry {
		i32 33554778, ; uint32_t type_token_id (0x200015a)
		i32 408; uint32_t java_map_index (0x198)
	}, ; 100
	%struct.TypeMapModuleEntry {
		i32 33554780, ; uint32_t type_token_id (0x200015c)
		i32 725; uint32_t java_map_index (0x2d5)
	}, ; 101
	%struct.TypeMapModuleEntry {
		i32 33554781, ; uint32_t type_token_id (0x200015d)
		i32 314; uint32_t java_map_index (0x13a)
	}, ; 102
	%struct.TypeMapModuleEntry {
		i32 33554782, ; uint32_t type_token_id (0x200015e)
		i32 261; uint32_t java_map_index (0x105)
	}, ; 103
	%struct.TypeMapModuleEntry {
		i32 33554783, ; uint32_t type_token_id (0x200015f)
		i32 260; uint32_t java_map_index (0x104)
	}, ; 104
	%struct.TypeMapModuleEntry {
		i32 33554784, ; uint32_t type_token_id (0x2000160)
		i32 1190; uint32_t java_map_index (0x4a6)
	}, ; 105
	%struct.TypeMapModuleEntry {
		i32 33554790, ; uint32_t type_token_id (0x2000166)
		i32 528; uint32_t java_map_index (0x210)
	}, ; 106
	%struct.TypeMapModuleEntry {
		i32 33554791, ; uint32_t type_token_id (0x2000167)
		i32 954; uint32_t java_map_index (0x3ba)
	}, ; 107
	%struct.TypeMapModuleEntry {
		i32 33554792, ; uint32_t type_token_id (0x2000168)
		i32 1230; uint32_t java_map_index (0x4ce)
	}, ; 108
	%struct.TypeMapModuleEntry {
		i32 33554793, ; uint32_t type_token_id (0x2000169)
		i32 589; uint32_t java_map_index (0x24d)
	}, ; 109
	%struct.TypeMapModuleEntry {
		i32 33554794, ; uint32_t type_token_id (0x200016a)
		i32 97; uint32_t java_map_index (0x61)
	}, ; 110
	%struct.TypeMapModuleEntry {
		i32 33554796, ; uint32_t type_token_id (0x200016c)
		i32 934; uint32_t java_map_index (0x3a6)
	}, ; 111
	%struct.TypeMapModuleEntry {
		i32 33554798, ; uint32_t type_token_id (0x200016e)
		i32 544; uint32_t java_map_index (0x220)
	}, ; 112
	%struct.TypeMapModuleEntry {
		i32 33554799, ; uint32_t type_token_id (0x200016f)
		i32 4; uint32_t java_map_index (0x4)
	}, ; 113
	%struct.TypeMapModuleEntry {
		i32 33554801, ; uint32_t type_token_id (0x2000171)
		i32 834; uint32_t java_map_index (0x342)
	}, ; 114
	%struct.TypeMapModuleEntry {
		i32 33554803, ; uint32_t type_token_id (0x2000173)
		i32 1025; uint32_t java_map_index (0x401)
	}, ; 115
	%struct.TypeMapModuleEntry {
		i32 33554805, ; uint32_t type_token_id (0x2000175)
		i32 1075; uint32_t java_map_index (0x433)
	}, ; 116
	%struct.TypeMapModuleEntry {
		i32 33554807, ; uint32_t type_token_id (0x2000177)
		i32 1223; uint32_t java_map_index (0x4c7)
	}, ; 117
	%struct.TypeMapModuleEntry {
		i32 33554808, ; uint32_t type_token_id (0x2000178)
		i32 335; uint32_t java_map_index (0x14f)
	}, ; 118
	%struct.TypeMapModuleEntry {
		i32 33554809, ; uint32_t type_token_id (0x2000179)
		i32 41; uint32_t java_map_index (0x29)
	}, ; 119
	%struct.TypeMapModuleEntry {
		i32 33554810, ; uint32_t type_token_id (0x200017a)
		i32 206; uint32_t java_map_index (0xce)
	}, ; 120
	%struct.TypeMapModuleEntry {
		i32 33554811, ; uint32_t type_token_id (0x200017b)
		i32 1086; uint32_t java_map_index (0x43e)
	}, ; 121
	%struct.TypeMapModuleEntry {
		i32 33554812, ; uint32_t type_token_id (0x200017c)
		i32 1167; uint32_t java_map_index (0x48f)
	}, ; 122
	%struct.TypeMapModuleEntry {
		i32 33554813, ; uint32_t type_token_id (0x200017d)
		i32 270; uint32_t java_map_index (0x10e)
	}, ; 123
	%struct.TypeMapModuleEntry {
		i32 33554815, ; uint32_t type_token_id (0x200017f)
		i32 857; uint32_t java_map_index (0x359)
	}, ; 124
	%struct.TypeMapModuleEntry {
		i32 33554816, ; uint32_t type_token_id (0x2000180)
		i32 179; uint32_t java_map_index (0xb3)
	}, ; 125
	%struct.TypeMapModuleEntry {
		i32 33554818, ; uint32_t type_token_id (0x2000182)
		i32 1130; uint32_t java_map_index (0x46a)
	}, ; 126
	%struct.TypeMapModuleEntry {
		i32 33554820, ; uint32_t type_token_id (0x2000184)
		i32 1080; uint32_t java_map_index (0x438)
	}, ; 127
	%struct.TypeMapModuleEntry {
		i32 33554822, ; uint32_t type_token_id (0x2000186)
		i32 806; uint32_t java_map_index (0x326)
	}, ; 128
	%struct.TypeMapModuleEntry {
		i32 33554823, ; uint32_t type_token_id (0x2000187)
		i32 445; uint32_t java_map_index (0x1bd)
	}, ; 129
	%struct.TypeMapModuleEntry {
		i32 33554825, ; uint32_t type_token_id (0x2000189)
		i32 881; uint32_t java_map_index (0x371)
	}, ; 130
	%struct.TypeMapModuleEntry {
		i32 33554827, ; uint32_t type_token_id (0x200018b)
		i32 1147; uint32_t java_map_index (0x47b)
	}, ; 131
	%struct.TypeMapModuleEntry {
		i32 33554828, ; uint32_t type_token_id (0x200018c)
		i32 1029; uint32_t java_map_index (0x405)
	}, ; 132
	%struct.TypeMapModuleEntry {
		i32 33554829, ; uint32_t type_token_id (0x200018d)
		i32 13; uint32_t java_map_index (0xd)
	}, ; 133
	%struct.TypeMapModuleEntry {
		i32 33554830, ; uint32_t type_token_id (0x200018e)
		i32 304; uint32_t java_map_index (0x130)
	}, ; 134
	%struct.TypeMapModuleEntry {
		i32 33554831, ; uint32_t type_token_id (0x200018f)
		i32 332; uint32_t java_map_index (0x14c)
	}, ; 135
	%struct.TypeMapModuleEntry {
		i32 33554832, ; uint32_t type_token_id (0x2000190)
		i32 896; uint32_t java_map_index (0x380)
	}, ; 136
	%struct.TypeMapModuleEntry {
		i32 33554833, ; uint32_t type_token_id (0x2000191)
		i32 501; uint32_t java_map_index (0x1f5)
	}, ; 137
	%struct.TypeMapModuleEntry {
		i32 33554834, ; uint32_t type_token_id (0x2000192)
		i32 810; uint32_t java_map_index (0x32a)
	}, ; 138
	%struct.TypeMapModuleEntry {
		i32 33554835, ; uint32_t type_token_id (0x2000193)
		i32 1076; uint32_t java_map_index (0x434)
	}, ; 139
	%struct.TypeMapModuleEntry {
		i32 33554836, ; uint32_t type_token_id (0x2000194)
		i32 165; uint32_t java_map_index (0xa5)
	}, ; 140
	%struct.TypeMapModuleEntry {
		i32 33554837, ; uint32_t type_token_id (0x2000195)
		i32 1045; uint32_t java_map_index (0x415)
	}, ; 141
	%struct.TypeMapModuleEntry {
		i32 33554838, ; uint32_t type_token_id (0x2000196)
		i32 613; uint32_t java_map_index (0x265)
	}, ; 142
	%struct.TypeMapModuleEntry {
		i32 33554839, ; uint32_t type_token_id (0x2000197)
		i32 443; uint32_t java_map_index (0x1bb)
	}, ; 143
	%struct.TypeMapModuleEntry {
		i32 33554840, ; uint32_t type_token_id (0x2000198)
		i32 217; uint32_t java_map_index (0xd9)
	}, ; 144
	%struct.TypeMapModuleEntry {
		i32 33554842, ; uint32_t type_token_id (0x200019a)
		i32 923; uint32_t java_map_index (0x39b)
	}, ; 145
	%struct.TypeMapModuleEntry {
		i32 33554844, ; uint32_t type_token_id (0x200019c)
		i32 491; uint32_t java_map_index (0x1eb)
	}, ; 146
	%struct.TypeMapModuleEntry {
		i32 33554846, ; uint32_t type_token_id (0x200019e)
		i32 590; uint32_t java_map_index (0x24e)
	}, ; 147
	%struct.TypeMapModuleEntry {
		i32 33554848, ; uint32_t type_token_id (0x20001a0)
		i32 1227; uint32_t java_map_index (0x4cb)
	}, ; 148
	%struct.TypeMapModuleEntry {
		i32 33554850, ; uint32_t type_token_id (0x20001a2)
		i32 941; uint32_t java_map_index (0x3ad)
	}, ; 149
	%struct.TypeMapModuleEntry {
		i32 33554851, ; uint32_t type_token_id (0x20001a3)
		i32 1196; uint32_t java_map_index (0x4ac)
	}, ; 150
	%struct.TypeMapModuleEntry {
		i32 33554852, ; uint32_t type_token_id (0x20001a4)
		i32 385; uint32_t java_map_index (0x181)
	}, ; 151
	%struct.TypeMapModuleEntry {
		i32 33554853, ; uint32_t type_token_id (0x20001a5)
		i32 141; uint32_t java_map_index (0x8d)
	}, ; 152
	%struct.TypeMapModuleEntry {
		i32 33554854, ; uint32_t type_token_id (0x20001a6)
		i32 985; uint32_t java_map_index (0x3d9)
	}, ; 153
	%struct.TypeMapModuleEntry {
		i32 33554855, ; uint32_t type_token_id (0x20001a7)
		i32 774; uint32_t java_map_index (0x306)
	}, ; 154
	%struct.TypeMapModuleEntry {
		i32 33554856, ; uint32_t type_token_id (0x20001a8)
		i32 536; uint32_t java_map_index (0x218)
	}, ; 155
	%struct.TypeMapModuleEntry {
		i32 33554860, ; uint32_t type_token_id (0x20001ac)
		i32 149; uint32_t java_map_index (0x95)
	}, ; 156
	%struct.TypeMapModuleEntry {
		i32 33554861, ; uint32_t type_token_id (0x20001ad)
		i32 683; uint32_t java_map_index (0x2ab)
	}, ; 157
	%struct.TypeMapModuleEntry {
		i32 33554862, ; uint32_t type_token_id (0x20001ae)
		i32 330; uint32_t java_map_index (0x14a)
	}, ; 158
	%struct.TypeMapModuleEntry {
		i32 33554863, ; uint32_t type_token_id (0x20001af)
		i32 1126; uint32_t java_map_index (0x466)
	}, ; 159
	%struct.TypeMapModuleEntry {
		i32 33554864, ; uint32_t type_token_id (0x20001b0)
		i32 334; uint32_t java_map_index (0x14e)
	}, ; 160
	%struct.TypeMapModuleEntry {
		i32 33554865, ; uint32_t type_token_id (0x20001b1)
		i32 1097; uint32_t java_map_index (0x449)
	}, ; 161
	%struct.TypeMapModuleEntry {
		i32 33554868, ; uint32_t type_token_id (0x20001b4)
		i32 814; uint32_t java_map_index (0x32e)
	}, ; 162
	%struct.TypeMapModuleEntry {
		i32 33554869, ; uint32_t type_token_id (0x20001b5)
		i32 995; uint32_t java_map_index (0x3e3)
	}, ; 163
	%struct.TypeMapModuleEntry {
		i32 33554871, ; uint32_t type_token_id (0x20001b7)
		i32 273; uint32_t java_map_index (0x111)
	}, ; 164
	%struct.TypeMapModuleEntry {
		i32 33554872, ; uint32_t type_token_id (0x20001b8)
		i32 20; uint32_t java_map_index (0x14)
	}, ; 165
	%struct.TypeMapModuleEntry {
		i32 33554873, ; uint32_t type_token_id (0x20001b9)
		i32 1037; uint32_t java_map_index (0x40d)
	}, ; 166
	%struct.TypeMapModuleEntry {
		i32 33554876, ; uint32_t type_token_id (0x20001bc)
		i32 543; uint32_t java_map_index (0x21f)
	}, ; 167
	%struct.TypeMapModuleEntry {
		i32 33554877, ; uint32_t type_token_id (0x20001bd)
		i32 7; uint32_t java_map_index (0x7)
	}, ; 168
	%struct.TypeMapModuleEntry {
		i32 33554880, ; uint32_t type_token_id (0x20001c0)
		i32 29; uint32_t java_map_index (0x1d)
	}, ; 169
	%struct.TypeMapModuleEntry {
		i32 33554881, ; uint32_t type_token_id (0x20001c1)
		i32 599; uint32_t java_map_index (0x257)
	}, ; 170
	%struct.TypeMapModuleEntry {
		i32 33554882, ; uint32_t type_token_id (0x20001c2)
		i32 291; uint32_t java_map_index (0x123)
	}, ; 171
	%struct.TypeMapModuleEntry {
		i32 33554884, ; uint32_t type_token_id (0x20001c4)
		i32 281; uint32_t java_map_index (0x119)
	}, ; 172
	%struct.TypeMapModuleEntry {
		i32 33554886, ; uint32_t type_token_id (0x20001c6)
		i32 244; uint32_t java_map_index (0xf4)
	}, ; 173
	%struct.TypeMapModuleEntry {
		i32 33554889, ; uint32_t type_token_id (0x20001c9)
		i32 91; uint32_t java_map_index (0x5b)
	}, ; 174
	%struct.TypeMapModuleEntry {
		i32 33554890, ; uint32_t type_token_id (0x20001ca)
		i32 0; uint32_t java_map_index (0x0)
	}, ; 175
	%struct.TypeMapModuleEntry {
		i32 33554893, ; uint32_t type_token_id (0x20001cd)
		i32 625; uint32_t java_map_index (0x271)
	}, ; 176
	%struct.TypeMapModuleEntry {
		i32 33554895, ; uint32_t type_token_id (0x20001cf)
		i32 107; uint32_t java_map_index (0x6b)
	}, ; 177
	%struct.TypeMapModuleEntry {
		i32 33554897, ; uint32_t type_token_id (0x20001d1)
		i32 336; uint32_t java_map_index (0x150)
	}, ; 178
	%struct.TypeMapModuleEntry {
		i32 33554898, ; uint32_t type_token_id (0x20001d2)
		i32 912; uint32_t java_map_index (0x390)
	}, ; 179
	%struct.TypeMapModuleEntry {
		i32 33554901, ; uint32_t type_token_id (0x20001d5)
		i32 293; uint32_t java_map_index (0x125)
	}, ; 180
	%struct.TypeMapModuleEntry {
		i32 33554902, ; uint32_t type_token_id (0x20001d6)
		i32 220; uint32_t java_map_index (0xdc)
	}, ; 181
	%struct.TypeMapModuleEntry {
		i32 33554907, ; uint32_t type_token_id (0x20001db)
		i32 752; uint32_t java_map_index (0x2f0)
	}, ; 182
	%struct.TypeMapModuleEntry {
		i32 33554910, ; uint32_t type_token_id (0x20001de)
		i32 572; uint32_t java_map_index (0x23c)
	}, ; 183
	%struct.TypeMapModuleEntry {
		i32 33554911, ; uint32_t type_token_id (0x20001df)
		i32 440; uint32_t java_map_index (0x1b8)
	}, ; 184
	%struct.TypeMapModuleEntry {
		i32 33554912, ; uint32_t type_token_id (0x20001e0)
		i32 606; uint32_t java_map_index (0x25e)
	}, ; 185
	%struct.TypeMapModuleEntry {
		i32 33554913, ; uint32_t type_token_id (0x20001e1)
		i32 665; uint32_t java_map_index (0x299)
	}, ; 186
	%struct.TypeMapModuleEntry {
		i32 33554914, ; uint32_t type_token_id (0x20001e2)
		i32 493; uint32_t java_map_index (0x1ed)
	}, ; 187
	%struct.TypeMapModuleEntry {
		i32 33554916, ; uint32_t type_token_id (0x20001e4)
		i32 337; uint32_t java_map_index (0x151)
	}, ; 188
	%struct.TypeMapModuleEntry {
		i32 33554917, ; uint32_t type_token_id (0x20001e5)
		i32 742; uint32_t java_map_index (0x2e6)
	}, ; 189
	%struct.TypeMapModuleEntry {
		i32 33554920, ; uint32_t type_token_id (0x20001e8)
		i32 24; uint32_t java_map_index (0x18)
	}, ; 190
	%struct.TypeMapModuleEntry {
		i32 33554921, ; uint32_t type_token_id (0x20001e9)
		i32 1163; uint32_t java_map_index (0x48b)
	}, ; 191
	%struct.TypeMapModuleEntry {
		i32 33554929, ; uint32_t type_token_id (0x20001f1)
		i32 695; uint32_t java_map_index (0x2b7)
	}, ; 192
	%struct.TypeMapModuleEntry {
		i32 33554930, ; uint32_t type_token_id (0x20001f2)
		i32 143; uint32_t java_map_index (0x8f)
	}, ; 193
	%struct.TypeMapModuleEntry {
		i32 33554931, ; uint32_t type_token_id (0x20001f3)
		i32 180; uint32_t java_map_index (0xb4)
	}, ; 194
	%struct.TypeMapModuleEntry {
		i32 33554932, ; uint32_t type_token_id (0x20001f4)
		i32 1131; uint32_t java_map_index (0x46b)
	}, ; 195
	%struct.TypeMapModuleEntry {
		i32 33554935, ; uint32_t type_token_id (0x20001f7)
		i32 234; uint32_t java_map_index (0xea)
	}, ; 196
	%struct.TypeMapModuleEntry {
		i32 33554936, ; uint32_t type_token_id (0x20001f8)
		i32 119; uint32_t java_map_index (0x77)
	}, ; 197
	%struct.TypeMapModuleEntry {
		i32 33554941, ; uint32_t type_token_id (0x20001fd)
		i32 434; uint32_t java_map_index (0x1b2)
	}, ; 198
	%struct.TypeMapModuleEntry {
		i32 33554942, ; uint32_t type_token_id (0x20001fe)
		i32 828; uint32_t java_map_index (0x33c)
	}, ; 199
	%struct.TypeMapModuleEntry {
		i32 33554943, ; uint32_t type_token_id (0x20001ff)
		i32 929; uint32_t java_map_index (0x3a1)
	}, ; 200
	%struct.TypeMapModuleEntry {
		i32 33554946, ; uint32_t type_token_id (0x2000202)
		i32 1067; uint32_t java_map_index (0x42b)
	}, ; 201
	%struct.TypeMapModuleEntry {
		i32 33554948, ; uint32_t type_token_id (0x2000204)
		i32 481; uint32_t java_map_index (0x1e1)
	}, ; 202
	%struct.TypeMapModuleEntry {
		i32 33554949, ; uint32_t type_token_id (0x2000205)
		i32 585; uint32_t java_map_index (0x249)
	}, ; 203
	%struct.TypeMapModuleEntry {
		i32 33554950, ; uint32_t type_token_id (0x2000206)
		i32 442; uint32_t java_map_index (0x1ba)
	}, ; 204
	%struct.TypeMapModuleEntry {
		i32 33554951, ; uint32_t type_token_id (0x2000207)
		i32 816; uint32_t java_map_index (0x330)
	}, ; 205
	%struct.TypeMapModuleEntry {
		i32 33554952, ; uint32_t type_token_id (0x2000208)
		i32 1172; uint32_t java_map_index (0x494)
	}, ; 206
	%struct.TypeMapModuleEntry {
		i32 33554953, ; uint32_t type_token_id (0x2000209)
		i32 286; uint32_t java_map_index (0x11e)
	}, ; 207
	%struct.TypeMapModuleEntry {
		i32 33554955, ; uint32_t type_token_id (0x200020b)
		i32 183; uint32_t java_map_index (0xb7)
	}, ; 208
	%struct.TypeMapModuleEntry {
		i32 33554957, ; uint32_t type_token_id (0x200020d)
		i32 731; uint32_t java_map_index (0x2db)
	}, ; 209
	%struct.TypeMapModuleEntry {
		i32 33554959, ; uint32_t type_token_id (0x200020f)
		i32 1125; uint32_t java_map_index (0x465)
	}, ; 210
	%struct.TypeMapModuleEntry {
		i32 33554961, ; uint32_t type_token_id (0x2000211)
		i32 1229; uint32_t java_map_index (0x4cd)
	}, ; 211
	%struct.TypeMapModuleEntry {
		i32 33554964, ; uint32_t type_token_id (0x2000214)
		i32 89; uint32_t java_map_index (0x59)
	}, ; 212
	%struct.TypeMapModuleEntry {
		i32 33554966, ; uint32_t type_token_id (0x2000216)
		i32 1228; uint32_t java_map_index (0x4cc)
	}, ; 213
	%struct.TypeMapModuleEntry {
		i32 33554968, ; uint32_t type_token_id (0x2000218)
		i32 961; uint32_t java_map_index (0x3c1)
	}, ; 214
	%struct.TypeMapModuleEntry {
		i32 33554971, ; uint32_t type_token_id (0x200021b)
		i32 839; uint32_t java_map_index (0x347)
	}, ; 215
	%struct.TypeMapModuleEntry {
		i32 33554973, ; uint32_t type_token_id (0x200021d)
		i32 326; uint32_t java_map_index (0x146)
	}, ; 216
	%struct.TypeMapModuleEntry {
		i32 33554975, ; uint32_t type_token_id (0x200021f)
		i32 396; uint32_t java_map_index (0x18c)
	}, ; 217
	%struct.TypeMapModuleEntry {
		i32 33554977, ; uint32_t type_token_id (0x2000221)
		i32 139; uint32_t java_map_index (0x8b)
	}, ; 218
	%struct.TypeMapModuleEntry {
		i32 33554979, ; uint32_t type_token_id (0x2000223)
		i32 833; uint32_t java_map_index (0x341)
	}, ; 219
	%struct.TypeMapModuleEntry {
		i32 33554981, ; uint32_t type_token_id (0x2000225)
		i32 713; uint32_t java_map_index (0x2c9)
	}, ; 220
	%struct.TypeMapModuleEntry {
		i32 33554983, ; uint32_t type_token_id (0x2000227)
		i32 847; uint32_t java_map_index (0x34f)
	}, ; 221
	%struct.TypeMapModuleEntry {
		i32 33554984, ; uint32_t type_token_id (0x2000228)
		i32 744; uint32_t java_map_index (0x2e8)
	}, ; 222
	%struct.TypeMapModuleEntry {
		i32 33554987, ; uint32_t type_token_id (0x200022b)
		i32 943; uint32_t java_map_index (0x3af)
	}, ; 223
	%struct.TypeMapModuleEntry {
		i32 33554989, ; uint32_t type_token_id (0x200022d)
		i32 939; uint32_t java_map_index (0x3ab)
	}, ; 224
	%struct.TypeMapModuleEntry {
		i32 33554990, ; uint32_t type_token_id (0x200022e)
		i32 40; uint32_t java_map_index (0x28)
	}, ; 225
	%struct.TypeMapModuleEntry {
		i32 33554991, ; uint32_t type_token_id (0x200022f)
		i32 1057; uint32_t java_map_index (0x421)
	}, ; 226
	%struct.TypeMapModuleEntry {
		i32 33554993, ; uint32_t type_token_id (0x2000231)
		i32 486; uint32_t java_map_index (0x1e6)
	}, ; 227
	%struct.TypeMapModuleEntry {
		i32 33554994, ; uint32_t type_token_id (0x2000232)
		i32 782; uint32_t java_map_index (0x30e)
	}, ; 228
	%struct.TypeMapModuleEntry {
		i32 33554995, ; uint32_t type_token_id (0x2000233)
		i32 58; uint32_t java_map_index (0x3a)
	}, ; 229
	%struct.TypeMapModuleEntry {
		i32 33554997, ; uint32_t type_token_id (0x2000235)
		i32 909; uint32_t java_map_index (0x38d)
	}, ; 230
	%struct.TypeMapModuleEntry {
		i32 33554998, ; uint32_t type_token_id (0x2000236)
		i32 1221; uint32_t java_map_index (0x4c5)
	}, ; 231
	%struct.TypeMapModuleEntry {
		i32 33555000, ; uint32_t type_token_id (0x2000238)
		i32 996; uint32_t java_map_index (0x3e4)
	}, ; 232
	%struct.TypeMapModuleEntry {
		i32 33555001, ; uint32_t type_token_id (0x2000239)
		i32 532; uint32_t java_map_index (0x214)
	}, ; 233
	%struct.TypeMapModuleEntry {
		i32 33555002, ; uint32_t type_token_id (0x200023a)
		i32 870; uint32_t java_map_index (0x366)
	}, ; 234
	%struct.TypeMapModuleEntry {
		i32 33555003, ; uint32_t type_token_id (0x200023b)
		i32 458; uint32_t java_map_index (0x1ca)
	}, ; 235
	%struct.TypeMapModuleEntry {
		i32 33555004, ; uint32_t type_token_id (0x200023c)
		i32 902; uint32_t java_map_index (0x386)
	}, ; 236
	%struct.TypeMapModuleEntry {
		i32 33555005, ; uint32_t type_token_id (0x200023d)
		i32 177; uint32_t java_map_index (0xb1)
	}, ; 237
	%struct.TypeMapModuleEntry {
		i32 33555006, ; uint32_t type_token_id (0x200023e)
		i32 796; uint32_t java_map_index (0x31c)
	}, ; 238
	%struct.TypeMapModuleEntry {
		i32 33555007, ; uint32_t type_token_id (0x200023f)
		i32 399; uint32_t java_map_index (0x18f)
	}, ; 239
	%struct.TypeMapModuleEntry {
		i32 33555011, ; uint32_t type_token_id (0x2000243)
		i32 472; uint32_t java_map_index (0x1d8)
	}, ; 240
	%struct.TypeMapModuleEntry {
		i32 33555012, ; uint32_t type_token_id (0x2000244)
		i32 514; uint32_t java_map_index (0x202)
	}, ; 241
	%struct.TypeMapModuleEntry {
		i32 33555014, ; uint32_t type_token_id (0x2000246)
		i32 1185; uint32_t java_map_index (0x4a1)
	}, ; 242
	%struct.TypeMapModuleEntry {
		i32 33555015, ; uint32_t type_token_id (0x2000247)
		i32 1166; uint32_t java_map_index (0x48e)
	}, ; 243
	%struct.TypeMapModuleEntry {
		i32 33555017, ; uint32_t type_token_id (0x2000249)
		i32 993; uint32_t java_map_index (0x3e1)
	}, ; 244
	%struct.TypeMapModuleEntry {
		i32 33555020, ; uint32_t type_token_id (0x200024c)
		i32 303; uint32_t java_map_index (0x12f)
	}, ; 245
	%struct.TypeMapModuleEntry {
		i32 33555021, ; uint32_t type_token_id (0x200024d)
		i32 418; uint32_t java_map_index (0x1a2)
	}, ; 246
	%struct.TypeMapModuleEntry {
		i32 33555023, ; uint32_t type_token_id (0x200024f)
		i32 786; uint32_t java_map_index (0x312)
	}, ; 247
	%struct.TypeMapModuleEntry {
		i32 33555026, ; uint32_t type_token_id (0x2000252)
		i32 821; uint32_t java_map_index (0x335)
	}, ; 248
	%struct.TypeMapModuleEntry {
		i32 33555027, ; uint32_t type_token_id (0x2000253)
		i32 692; uint32_t java_map_index (0x2b4)
	}, ; 249
	%struct.TypeMapModuleEntry {
		i32 33555030, ; uint32_t type_token_id (0x2000256)
		i32 960; uint32_t java_map_index (0x3c0)
	}, ; 250
	%struct.TypeMapModuleEntry {
		i32 33555031, ; uint32_t type_token_id (0x2000257)
		i32 1000; uint32_t java_map_index (0x3e8)
	}, ; 251
	%struct.TypeMapModuleEntry {
		i32 33555034, ; uint32_t type_token_id (0x200025a)
		i32 1018; uint32_t java_map_index (0x3fa)
	}, ; 252
	%struct.TypeMapModuleEntry {
		i32 33555035, ; uint32_t type_token_id (0x200025b)
		i32 464; uint32_t java_map_index (0x1d0)
	}, ; 253
	%struct.TypeMapModuleEntry {
		i32 33555038, ; uint32_t type_token_id (0x200025e)
		i32 1180; uint32_t java_map_index (0x49c)
	}, ; 254
	%struct.TypeMapModuleEntry {
		i32 33555056, ; uint32_t type_token_id (0x2000270)
		i32 531; uint32_t java_map_index (0x213)
	}, ; 255
	%struct.TypeMapModuleEntry {
		i32 33555057, ; uint32_t type_token_id (0x2000271)
		i32 19; uint32_t java_map_index (0x13)
	}, ; 256
	%struct.TypeMapModuleEntry {
		i32 33555058, ; uint32_t type_token_id (0x2000272)
		i32 100; uint32_t java_map_index (0x64)
	}, ; 257
	%struct.TypeMapModuleEntry {
		i32 33555059, ; uint32_t type_token_id (0x2000273)
		i32 136; uint32_t java_map_index (0x88)
	}, ; 258
	%struct.TypeMapModuleEntry {
		i32 33555060, ; uint32_t type_token_id (0x2000274)
		i32 77; uint32_t java_map_index (0x4d)
	}, ; 259
	%struct.TypeMapModuleEntry {
		i32 33555064, ; uint32_t type_token_id (0x2000278)
		i32 779; uint32_t java_map_index (0x30b)
	}, ; 260
	%struct.TypeMapModuleEntry {
		i32 33555069, ; uint32_t type_token_id (0x200027d)
		i32 965; uint32_t java_map_index (0x3c5)
	}, ; 261
	%struct.TypeMapModuleEntry {
		i32 33555070, ; uint32_t type_token_id (0x200027e)
		i32 163; uint32_t java_map_index (0xa3)
	}, ; 262
	%struct.TypeMapModuleEntry {
		i32 33555071, ; uint32_t type_token_id (0x200027f)
		i32 1226; uint32_t java_map_index (0x4ca)
	}, ; 263
	%struct.TypeMapModuleEntry {
		i32 33555073, ; uint32_t type_token_id (0x2000281)
		i32 1091; uint32_t java_map_index (0x443)
	}, ; 264
	%struct.TypeMapModuleEntry {
		i32 33555074, ; uint32_t type_token_id (0x2000282)
		i32 348; uint32_t java_map_index (0x15c)
	}, ; 265
	%struct.TypeMapModuleEntry {
		i32 33555077, ; uint32_t type_token_id (0x2000285)
		i32 73; uint32_t java_map_index (0x49)
	}, ; 266
	%struct.TypeMapModuleEntry {
		i32 33555078, ; uint32_t type_token_id (0x2000286)
		i32 475; uint32_t java_map_index (0x1db)
	}, ; 267
	%struct.TypeMapModuleEntry {
		i32 33555079, ; uint32_t type_token_id (0x2000287)
		i32 1174; uint32_t java_map_index (0x496)
	}, ; 268
	%struct.TypeMapModuleEntry {
		i32 33555080, ; uint32_t type_token_id (0x2000288)
		i32 824; uint32_t java_map_index (0x338)
	}, ; 269
	%struct.TypeMapModuleEntry {
		i32 33555081, ; uint32_t type_token_id (0x2000289)
		i32 278; uint32_t java_map_index (0x116)
	}, ; 270
	%struct.TypeMapModuleEntry {
		i32 33555111, ; uint32_t type_token_id (0x20002a7)
		i32 925; uint32_t java_map_index (0x39d)
	}, ; 271
	%struct.TypeMapModuleEntry {
		i32 33555115, ; uint32_t type_token_id (0x20002ab)
		i32 403; uint32_t java_map_index (0x193)
	}, ; 272
	%struct.TypeMapModuleEntry {
		i32 33555116, ; uint32_t type_token_id (0x20002ac)
		i32 601; uint32_t java_map_index (0x259)
	}, ; 273
	%struct.TypeMapModuleEntry {
		i32 33555117, ; uint32_t type_token_id (0x20002ad)
		i32 484; uint32_t java_map_index (0x1e4)
	}, ; 274
	%struct.TypeMapModuleEntry {
		i32 33555120, ; uint32_t type_token_id (0x20002b0)
		i32 634; uint32_t java_map_index (0x27a)
	}, ; 275
	%struct.TypeMapModuleEntry {
		i32 33555121, ; uint32_t type_token_id (0x20002b1)
		i32 413; uint32_t java_map_index (0x19d)
	}, ; 276
	%struct.TypeMapModuleEntry {
		i32 33555122, ; uint32_t type_token_id (0x20002b2)
		i32 1109; uint32_t java_map_index (0x455)
	}, ; 277
	%struct.TypeMapModuleEntry {
		i32 33555124, ; uint32_t type_token_id (0x20002b4)
		i32 883; uint32_t java_map_index (0x373)
	}, ; 278
	%struct.TypeMapModuleEntry {
		i32 33555125, ; uint32_t type_token_id (0x20002b5)
		i32 1164; uint32_t java_map_index (0x48c)
	}, ; 279
	%struct.TypeMapModuleEntry {
		i32 33555127, ; uint32_t type_token_id (0x20002b7)
		i32 170; uint32_t java_map_index (0xaa)
	}, ; 280
	%struct.TypeMapModuleEntry {
		i32 33555128, ; uint32_t type_token_id (0x20002b8)
		i32 1063; uint32_t java_map_index (0x427)
	}, ; 281
	%struct.TypeMapModuleEntry {
		i32 33555129, ; uint32_t type_token_id (0x20002b9)
		i32 469; uint32_t java_map_index (0x1d5)
	}, ; 282
	%struct.TypeMapModuleEntry {
		i32 33555130, ; uint32_t type_token_id (0x20002ba)
		i32 156; uint32_t java_map_index (0x9c)
	}, ; 283
	%struct.TypeMapModuleEntry {
		i32 33555132, ; uint32_t type_token_id (0x20002bc)
		i32 1140; uint32_t java_map_index (0x474)
	}, ; 284
	%struct.TypeMapModuleEntry {
		i32 33555134, ; uint32_t type_token_id (0x20002be)
		i32 667; uint32_t java_map_index (0x29b)
	}, ; 285
	%struct.TypeMapModuleEntry {
		i32 33555135, ; uint32_t type_token_id (0x20002bf)
		i32 325; uint32_t java_map_index (0x145)
	}, ; 286
	%struct.TypeMapModuleEntry {
		i32 33555136, ; uint32_t type_token_id (0x20002c0)
		i32 582; uint32_t java_map_index (0x246)
	}, ; 287
	%struct.TypeMapModuleEntry {
		i32 33555137, ; uint32_t type_token_id (0x20002c1)
		i32 1010; uint32_t java_map_index (0x3f2)
	}, ; 288
	%struct.TypeMapModuleEntry {
		i32 33555162, ; uint32_t type_token_id (0x20002da)
		i32 1144; uint32_t java_map_index (0x478)
	}, ; 289
	%struct.TypeMapModuleEntry {
		i32 33555165, ; uint32_t type_token_id (0x20002dd)
		i32 854; uint32_t java_map_index (0x356)
	}, ; 290
	%struct.TypeMapModuleEntry {
		i32 33555167, ; uint32_t type_token_id (0x20002df)
		i32 370; uint32_t java_map_index (0x172)
	}, ; 291
	%struct.TypeMapModuleEntry {
		i32 33555169, ; uint32_t type_token_id (0x20002e1)
		i32 414; uint32_t java_map_index (0x19e)
	}, ; 292
	%struct.TypeMapModuleEntry {
		i32 33555178, ; uint32_t type_token_id (0x20002ea)
		i32 193; uint32_t java_map_index (0xc1)
	}, ; 293
	%struct.TypeMapModuleEntry {
		i32 33555180, ; uint32_t type_token_id (0x20002ec)
		i32 1066; uint32_t java_map_index (0x42a)
	}, ; 294
	%struct.TypeMapModuleEntry {
		i32 33555181, ; uint32_t type_token_id (0x20002ed)
		i32 1036; uint32_t java_map_index (0x40c)
	}, ; 295
	%struct.TypeMapModuleEntry {
		i32 33555182, ; uint32_t type_token_id (0x20002ee)
		i32 1225; uint32_t java_map_index (0x4c9)
	}, ; 296
	%struct.TypeMapModuleEntry {
		i32 33555194, ; uint32_t type_token_id (0x20002fa)
		i32 144; uint32_t java_map_index (0x90)
	}, ; 297
	%struct.TypeMapModuleEntry {
		i32 33555206, ; uint32_t type_token_id (0x2000306)
		i32 117; uint32_t java_map_index (0x75)
	}, ; 298
	%struct.TypeMapModuleEntry {
		i32 33555207, ; uint32_t type_token_id (0x2000307)
		i32 1087; uint32_t java_map_index (0x43f)
	}, ; 299
	%struct.TypeMapModuleEntry {
		i32 33555208, ; uint32_t type_token_id (0x2000308)
		i32 1218; uint32_t java_map_index (0x4c2)
	}, ; 300
	%struct.TypeMapModuleEntry {
		i32 33555209, ; uint32_t type_token_id (0x2000309)
		i32 233; uint32_t java_map_index (0xe9)
	}, ; 301
	%struct.TypeMapModuleEntry {
		i32 33555211, ; uint32_t type_token_id (0x200030b)
		i32 252; uint32_t java_map_index (0xfc)
	}, ; 302
	%struct.TypeMapModuleEntry {
		i32 33555212, ; uint32_t type_token_id (0x200030c)
		i32 1145; uint32_t java_map_index (0x479)
	}, ; 303
	%struct.TypeMapModuleEntry {
		i32 33555213, ; uint32_t type_token_id (0x200030d)
		i32 838; uint32_t java_map_index (0x346)
	}, ; 304
	%struct.TypeMapModuleEntry {
		i32 33555214, ; uint32_t type_token_id (0x200030e)
		i32 30; uint32_t java_map_index (0x1e)
	}, ; 305
	%struct.TypeMapModuleEntry {
		i32 33555215, ; uint32_t type_token_id (0x200030f)
		i32 959; uint32_t java_map_index (0x3bf)
	}, ; 306
	%struct.TypeMapModuleEntry {
		i32 33555216, ; uint32_t type_token_id (0x2000310)
		i32 1152; uint32_t java_map_index (0x480)
	}, ; 307
	%struct.TypeMapModuleEntry {
		i32 33555217, ; uint32_t type_token_id (0x2000311)
		i32 1111; uint32_t java_map_index (0x457)
	}, ; 308
	%struct.TypeMapModuleEntry {
		i32 33555218, ; uint32_t type_token_id (0x2000312)
		i32 982; uint32_t java_map_index (0x3d6)
	}, ; 309
	%struct.TypeMapModuleEntry {
		i32 33555219, ; uint32_t type_token_id (0x2000313)
		i32 981; uint32_t java_map_index (0x3d5)
	}, ; 310
	%struct.TypeMapModuleEntry {
		i32 33555220, ; uint32_t type_token_id (0x2000314)
		i32 435; uint32_t java_map_index (0x1b3)
	}, ; 311
	%struct.TypeMapModuleEntry {
		i32 33555221, ; uint32_t type_token_id (0x2000315)
		i32 932; uint32_t java_map_index (0x3a4)
	}, ; 312
	%struct.TypeMapModuleEntry {
		i32 33555222, ; uint32_t type_token_id (0x2000316)
		i32 456; uint32_t java_map_index (0x1c8)
	}, ; 313
	%struct.TypeMapModuleEntry {
		i32 33555223, ; uint32_t type_token_id (0x2000317)
		i32 373; uint32_t java_map_index (0x175)
	}, ; 314
	%struct.TypeMapModuleEntry {
		i32 33555224, ; uint32_t type_token_id (0x2000318)
		i32 1026; uint32_t java_map_index (0x402)
	}, ; 315
	%struct.TypeMapModuleEntry {
		i32 33555225, ; uint32_t type_token_id (0x2000319)
		i32 642; uint32_t java_map_index (0x282)
	}, ; 316
	%struct.TypeMapModuleEntry {
		i32 33555226, ; uint32_t type_token_id (0x200031a)
		i32 1015; uint32_t java_map_index (0x3f7)
	}, ; 317
	%struct.TypeMapModuleEntry {
		i32 33555227, ; uint32_t type_token_id (0x200031b)
		i32 205; uint32_t java_map_index (0xcd)
	}, ; 318
	%struct.TypeMapModuleEntry {
		i32 33555228, ; uint32_t type_token_id (0x200031c)
		i32 1073; uint32_t java_map_index (0x431)
	}, ; 319
	%struct.TypeMapModuleEntry {
		i32 33555229, ; uint32_t type_token_id (0x200031d)
		i32 616; uint32_t java_map_index (0x268)
	}, ; 320
	%struct.TypeMapModuleEntry {
		i32 33555230, ; uint32_t type_token_id (0x200031e)
		i32 924; uint32_t java_map_index (0x39c)
	}, ; 321
	%struct.TypeMapModuleEntry {
		i32 33555231, ; uint32_t type_token_id (0x200031f)
		i32 1102; uint32_t java_map_index (0x44e)
	}, ; 322
	%struct.TypeMapModuleEntry {
		i32 33555232, ; uint32_t type_token_id (0x2000320)
		i32 708; uint32_t java_map_index (0x2c4)
	}, ; 323
	%struct.TypeMapModuleEntry {
		i32 33555233, ; uint32_t type_token_id (0x2000321)
		i32 504; uint32_t java_map_index (0x1f8)
	}, ; 324
	%struct.TypeMapModuleEntry {
		i32 33555234, ; uint32_t type_token_id (0x2000322)
		i32 267; uint32_t java_map_index (0x10b)
	}, ; 325
	%struct.TypeMapModuleEntry {
		i32 33555235, ; uint32_t type_token_id (0x2000323)
		i32 1237; uint32_t java_map_index (0x4d5)
	}, ; 326
	%struct.TypeMapModuleEntry {
		i32 33555236, ; uint32_t type_token_id (0x2000324)
		i32 381; uint32_t java_map_index (0x17d)
	}, ; 327
	%struct.TypeMapModuleEntry {
		i32 33555237, ; uint32_t type_token_id (0x2000325)
		i32 356; uint32_t java_map_index (0x164)
	}, ; 328
	%struct.TypeMapModuleEntry {
		i32 33555238, ; uint32_t type_token_id (0x2000326)
		i32 34; uint32_t java_map_index (0x22)
	}, ; 329
	%struct.TypeMapModuleEntry {
		i32 33555239, ; uint32_t type_token_id (0x2000327)
		i32 71; uint32_t java_map_index (0x47)
	}, ; 330
	%struct.TypeMapModuleEntry {
		i32 33555240, ; uint32_t type_token_id (0x2000328)
		i32 1133; uint32_t java_map_index (0x46d)
	}, ; 331
	%struct.TypeMapModuleEntry {
		i32 33555241, ; uint32_t type_token_id (0x2000329)
		i32 395; uint32_t java_map_index (0x18b)
	}, ; 332
	%struct.TypeMapModuleEntry {
		i32 33555242, ; uint32_t type_token_id (0x200032a)
		i32 1135; uint32_t java_map_index (0x46f)
	}, ; 333
	%struct.TypeMapModuleEntry {
		i32 33555243, ; uint32_t type_token_id (0x200032b)
		i32 1216; uint32_t java_map_index (0x4c0)
	}, ; 334
	%struct.TypeMapModuleEntry {
		i32 33555244, ; uint32_t type_token_id (0x200032c)
		i32 696; uint32_t java_map_index (0x2b8)
	}, ; 335
	%struct.TypeMapModuleEntry {
		i32 33555245, ; uint32_t type_token_id (0x200032d)
		i32 966; uint32_t java_map_index (0x3c6)
	}, ; 336
	%struct.TypeMapModuleEntry {
		i32 33555246, ; uint32_t type_token_id (0x200032e)
		i32 1118; uint32_t java_map_index (0x45e)
	}, ; 337
	%struct.TypeMapModuleEntry {
		i32 33555247, ; uint32_t type_token_id (0x200032f)
		i32 338; uint32_t java_map_index (0x152)
	}, ; 338
	%struct.TypeMapModuleEntry {
		i32 33555252, ; uint32_t type_token_id (0x2000334)
		i32 1051; uint32_t java_map_index (0x41b)
	}, ; 339
	%struct.TypeMapModuleEntry {
		i32 33555253, ; uint32_t type_token_id (0x2000335)
		i32 147; uint32_t java_map_index (0x93)
	}, ; 340
	%struct.TypeMapModuleEntry {
		i32 33555254, ; uint32_t type_token_id (0x2000336)
		i32 795; uint32_t java_map_index (0x31b)
	}, ; 341
	%struct.TypeMapModuleEntry {
		i32 33555255, ; uint32_t type_token_id (0x2000337)
		i32 534; uint32_t java_map_index (0x216)
	}, ; 342
	%struct.TypeMapModuleEntry {
		i32 33555258, ; uint32_t type_token_id (0x200033a)
		i32 1157; uint32_t java_map_index (0x485)
	}, ; 343
	%struct.TypeMapModuleEntry {
		i32 33555259, ; uint32_t type_token_id (0x200033b)
		i32 1098; uint32_t java_map_index (0x44a)
	}, ; 344
	%struct.TypeMapModuleEntry {
		i32 33555261, ; uint32_t type_token_id (0x200033d)
		i32 577; uint32_t java_map_index (0x241)
	}, ; 345
	%struct.TypeMapModuleEntry {
		i32 33555262, ; uint32_t type_token_id (0x200033e)
		i32 197; uint32_t java_map_index (0xc5)
	}, ; 346
	%struct.TypeMapModuleEntry {
		i32 33555263, ; uint32_t type_token_id (0x200033f)
		i32 417; uint32_t java_map_index (0x1a1)
	}, ; 347
	%struct.TypeMapModuleEntry {
		i32 33555265, ; uint32_t type_token_id (0x2000341)
		i32 741; uint32_t java_map_index (0x2e5)
	}, ; 348
	%struct.TypeMapModuleEntry {
		i32 33555266, ; uint32_t type_token_id (0x2000342)
		i32 540; uint32_t java_map_index (0x21c)
	}, ; 349
	%struct.TypeMapModuleEntry {
		i32 33555267, ; uint32_t type_token_id (0x2000343)
		i32 803; uint32_t java_map_index (0x323)
	}, ; 350
	%struct.TypeMapModuleEntry {
		i32 33555268, ; uint32_t type_token_id (0x2000344)
		i32 212; uint32_t java_map_index (0xd4)
	}, ; 351
	%struct.TypeMapModuleEntry {
		i32 33555269, ; uint32_t type_token_id (0x2000345)
		i32 1168; uint32_t java_map_index (0x490)
	}, ; 352
	%struct.TypeMapModuleEntry {
		i32 33555270, ; uint32_t type_token_id (0x2000346)
		i32 519; uint32_t java_map_index (0x207)
	}, ; 353
	%struct.TypeMapModuleEntry {
		i32 33555271, ; uint32_t type_token_id (0x2000347)
		i32 791; uint32_t java_map_index (0x317)
	}, ; 354
	%struct.TypeMapModuleEntry {
		i32 33555273, ; uint32_t type_token_id (0x2000349)
		i32 1158; uint32_t java_map_index (0x486)
	}, ; 355
	%struct.TypeMapModuleEntry {
		i32 33555276, ; uint32_t type_token_id (0x200034c)
		i32 287; uint32_t java_map_index (0x11f)
	}, ; 356
	%struct.TypeMapModuleEntry {
		i32 33555277, ; uint32_t type_token_id (0x200034d)
		i32 499; uint32_t java_map_index (0x1f3)
	}, ; 357
	%struct.TypeMapModuleEntry {
		i32 33555278, ; uint32_t type_token_id (0x200034e)
		i32 984; uint32_t java_map_index (0x3d8)
	}, ; 358
	%struct.TypeMapModuleEntry {
		i32 33555281, ; uint32_t type_token_id (0x2000351)
		i32 558; uint32_t java_map_index (0x22e)
	}, ; 359
	%struct.TypeMapModuleEntry {
		i32 33555283, ; uint32_t type_token_id (0x2000353)
		i32 502; uint32_t java_map_index (0x1f6)
	}, ; 360
	%struct.TypeMapModuleEntry {
		i32 33555284, ; uint32_t type_token_id (0x2000354)
		i32 487; uint32_t java_map_index (0x1e7)
	}, ; 361
	%struct.TypeMapModuleEntry {
		i32 33555285, ; uint32_t type_token_id (0x2000355)
		i32 937; uint32_t java_map_index (0x3a9)
	}, ; 362
	%struct.TypeMapModuleEntry {
		i32 33555286, ; uint32_t type_token_id (0x2000356)
		i32 387; uint32_t java_map_index (0x183)
	}, ; 363
	%struct.TypeMapModuleEntry {
		i32 33555287, ; uint32_t type_token_id (0x2000357)
		i32 237; uint32_t java_map_index (0xed)
	}, ; 364
	%struct.TypeMapModuleEntry {
		i32 33555289, ; uint32_t type_token_id (0x2000359)
		i32 622; uint32_t java_map_index (0x26e)
	}, ; 365
	%struct.TypeMapModuleEntry {
		i32 33555290, ; uint32_t type_token_id (0x200035a)
		i32 1171; uint32_t java_map_index (0x493)
	}, ; 366
	%struct.TypeMapModuleEntry {
		i32 33555292, ; uint32_t type_token_id (0x200035c)
		i32 1150; uint32_t java_map_index (0x47e)
	}, ; 367
	%struct.TypeMapModuleEntry {
		i32 33555293, ; uint32_t type_token_id (0x200035d)
		i32 760; uint32_t java_map_index (0x2f8)
	}, ; 368
	%struct.TypeMapModuleEntry {
		i32 33555295, ; uint32_t type_token_id (0x200035f)
		i32 407; uint32_t java_map_index (0x197)
	}, ; 369
	%struct.TypeMapModuleEntry {
		i32 33555296, ; uint32_t type_token_id (0x2000360)
		i32 836; uint32_t java_map_index (0x344)
	}, ; 370
	%struct.TypeMapModuleEntry {
		i32 33555299, ; uint32_t type_token_id (0x2000363)
		i32 1132; uint32_t java_map_index (0x46c)
	}, ; 371
	%struct.TypeMapModuleEntry {
		i32 33555300, ; uint32_t type_token_id (0x2000364)
		i32 151; uint32_t java_map_index (0x97)
	}, ; 372
	%struct.TypeMapModuleEntry {
		i32 33555302, ; uint32_t type_token_id (0x2000366)
		i32 557; uint32_t java_map_index (0x22d)
	}, ; 373
	%struct.TypeMapModuleEntry {
		i32 33555303, ; uint32_t type_token_id (0x2000367)
		i32 754; uint32_t java_map_index (0x2f2)
	}, ; 374
	%struct.TypeMapModuleEntry {
		i32 33555305, ; uint32_t type_token_id (0x2000369)
		i32 537; uint32_t java_map_index (0x219)
	}, ; 375
	%struct.TypeMapModuleEntry {
		i32 33555308, ; uint32_t type_token_id (0x200036c)
		i32 118; uint32_t java_map_index (0x76)
	}, ; 376
	%struct.TypeMapModuleEntry {
		i32 33555310, ; uint32_t type_token_id (0x200036e)
		i32 647; uint32_t java_map_index (0x287)
	}, ; 377
	%struct.TypeMapModuleEntry {
		i32 33555311, ; uint32_t type_token_id (0x200036f)
		i32 587; uint32_t java_map_index (0x24b)
	}, ; 378
	%struct.TypeMapModuleEntry {
		i32 33555313, ; uint32_t type_token_id (0x2000371)
		i32 578; uint32_t java_map_index (0x242)
	}, ; 379
	%struct.TypeMapModuleEntry {
		i32 33555314, ; uint32_t type_token_id (0x2000372)
		i32 669; uint32_t java_map_index (0x29d)
	}, ; 380
	%struct.TypeMapModuleEntry {
		i32 33555315, ; uint32_t type_token_id (0x2000373)
		i32 608; uint32_t java_map_index (0x260)
	}, ; 381
	%struct.TypeMapModuleEntry {
		i32 33555316, ; uint32_t type_token_id (0x2000374)
		i32 79; uint32_t java_map_index (0x4f)
	}, ; 382
	%struct.TypeMapModuleEntry {
		i32 33555318, ; uint32_t type_token_id (0x2000376)
		i32 729; uint32_t java_map_index (0x2d9)
	}, ; 383
	%struct.TypeMapModuleEntry {
		i32 33555320, ; uint32_t type_token_id (0x2000378)
		i32 1004; uint32_t java_map_index (0x3ec)
	}, ; 384
	%struct.TypeMapModuleEntry {
		i32 33555322, ; uint32_t type_token_id (0x200037a)
		i32 802; uint32_t java_map_index (0x322)
	}, ; 385
	%struct.TypeMapModuleEntry {
		i32 33555327, ; uint32_t type_token_id (0x200037f)
		i32 231; uint32_t java_map_index (0xe7)
	}, ; 386
	%struct.TypeMapModuleEntry {
		i32 33555328, ; uint32_t type_token_id (0x2000380)
		i32 506; uint32_t java_map_index (0x1fa)
	}, ; 387
	%struct.TypeMapModuleEntry {
		i32 33555329, ; uint32_t type_token_id (0x2000381)
		i32 620; uint32_t java_map_index (0x26c)
	}, ; 388
	%struct.TypeMapModuleEntry {
		i32 33555330, ; uint32_t type_token_id (0x2000382)
		i32 1106; uint32_t java_map_index (0x452)
	}, ; 389
	%struct.TypeMapModuleEntry {
		i32 33555332, ; uint32_t type_token_id (0x2000384)
		i32 282; uint32_t java_map_index (0x11a)
	}, ; 390
	%struct.TypeMapModuleEntry {
		i32 33555333, ; uint32_t type_token_id (0x2000385)
		i32 699; uint32_t java_map_index (0x2bb)
	}, ; 391
	%struct.TypeMapModuleEntry {
		i32 33555334, ; uint32_t type_token_id (0x2000386)
		i32 1095; uint32_t java_map_index (0x447)
	}, ; 392
	%struct.TypeMapModuleEntry {
		i32 33555337, ; uint32_t type_token_id (0x2000389)
		i32 761; uint32_t java_map_index (0x2f9)
	}, ; 393
	%struct.TypeMapModuleEntry {
		i32 33555338, ; uint32_t type_token_id (0x200038a)
		i32 852; uint32_t java_map_index (0x354)
	}, ; 394
	%struct.TypeMapModuleEntry {
		i32 33555339, ; uint32_t type_token_id (0x200038b)
		i32 682; uint32_t java_map_index (0x2aa)
	}, ; 395
	%struct.TypeMapModuleEntry {
		i32 33555340, ; uint32_t type_token_id (0x200038c)
		i32 391; uint32_t java_map_index (0x187)
	}, ; 396
	%struct.TypeMapModuleEntry {
		i32 33555341, ; uint32_t type_token_id (0x200038d)
		i32 550; uint32_t java_map_index (0x226)
	}, ; 397
	%struct.TypeMapModuleEntry {
		i32 33555342, ; uint32_t type_token_id (0x200038e)
		i32 829; uint32_t java_map_index (0x33d)
	}, ; 398
	%struct.TypeMapModuleEntry {
		i32 33555343, ; uint32_t type_token_id (0x200038f)
		i32 10; uint32_t java_map_index (0xa)
	}, ; 399
	%struct.TypeMapModuleEntry {
		i32 33555345, ; uint32_t type_token_id (0x2000391)
		i32 106; uint32_t java_map_index (0x6a)
	}, ; 400
	%struct.TypeMapModuleEntry {
		i32 33555346, ; uint32_t type_token_id (0x2000392)
		i32 922; uint32_t java_map_index (0x39a)
	}, ; 401
	%struct.TypeMapModuleEntry {
		i32 33555347, ; uint32_t type_token_id (0x2000393)
		i32 1202; uint32_t java_map_index (0x4b2)
	}, ; 402
	%struct.TypeMapModuleEntry {
		i32 33555348, ; uint32_t type_token_id (0x2000394)
		i32 1136; uint32_t java_map_index (0x470)
	}, ; 403
	%struct.TypeMapModuleEntry {
		i32 33555349, ; uint32_t type_token_id (0x2000395)
		i32 765; uint32_t java_map_index (0x2fd)
	}, ; 404
	%struct.TypeMapModuleEntry {
		i32 33555355, ; uint32_t type_token_id (0x200039b)
		i32 280; uint32_t java_map_index (0x118)
	}, ; 405
	%struct.TypeMapModuleEntry {
		i32 33555357, ; uint32_t type_token_id (0x200039d)
		i32 736; uint32_t java_map_index (0x2e0)
	}, ; 406
	%struct.TypeMapModuleEntry {
		i32 33555359, ; uint32_t type_token_id (0x200039f)
		i32 988; uint32_t java_map_index (0x3dc)
	}, ; 407
	%struct.TypeMapModuleEntry {
		i32 33555364, ; uint32_t type_token_id (0x20003a4)
		i32 437; uint32_t java_map_index (0x1b5)
	}, ; 408
	%struct.TypeMapModuleEntry {
		i32 33555366, ; uint32_t type_token_id (0x20003a6)
		i32 315; uint32_t java_map_index (0x13b)
	}, ; 409
	%struct.TypeMapModuleEntry {
		i32 33555368, ; uint32_t type_token_id (0x20003a8)
		i32 111; uint32_t java_map_index (0x6f)
	}, ; 410
	%struct.TypeMapModuleEntry {
		i32 33555370, ; uint32_t type_token_id (0x20003aa)
		i32 42; uint32_t java_map_index (0x2a)
	}, ; 411
	%struct.TypeMapModuleEntry {
		i32 33555372, ; uint32_t type_token_id (0x20003ac)
		i32 488; uint32_t java_map_index (0x1e8)
	}, ; 412
	%struct.TypeMapModuleEntry {
		i32 33555374, ; uint32_t type_token_id (0x20003ae)
		i32 962; uint32_t java_map_index (0x3c2)
	}, ; 413
	%struct.TypeMapModuleEntry {
		i32 33555376, ; uint32_t type_token_id (0x20003b0)
		i32 927; uint32_t java_map_index (0x39f)
	}, ; 414
	%struct.TypeMapModuleEntry {
		i32 33555378, ; uint32_t type_token_id (0x20003b2)
		i32 823; uint32_t java_map_index (0x337)
	}, ; 415
	%struct.TypeMapModuleEntry {
		i32 33555380, ; uint32_t type_token_id (0x20003b4)
		i32 701; uint32_t java_map_index (0x2bd)
	}, ; 416
	%struct.TypeMapModuleEntry {
		i32 33555381, ; uint32_t type_token_id (0x20003b5)
		i32 593; uint32_t java_map_index (0x251)
	}, ; 417
	%struct.TypeMapModuleEntry {
		i32 33555382, ; uint32_t type_token_id (0x20003b6)
		i32 496; uint32_t java_map_index (0x1f0)
	}, ; 418
	%struct.TypeMapModuleEntry {
		i32 33555383, ; uint32_t type_token_id (0x20003b7)
		i32 509; uint32_t java_map_index (0x1fd)
	}, ; 419
	%struct.TypeMapModuleEntry {
		i32 33555385, ; uint32_t type_token_id (0x20003b9)
		i32 295; uint32_t java_map_index (0x127)
	}, ; 420
	%struct.TypeMapModuleEntry {
		i32 33555387, ; uint32_t type_token_id (0x20003bb)
		i32 80; uint32_t java_map_index (0x50)
	}, ; 421
	%struct.TypeMapModuleEntry {
		i32 33555389, ; uint32_t type_token_id (0x20003bd)
		i32 1022; uint32_t java_map_index (0x3fe)
	}, ; 422
	%struct.TypeMapModuleEntry {
		i32 33555391, ; uint32_t type_token_id (0x20003bf)
		i32 818; uint32_t java_map_index (0x332)
	}, ; 423
	%struct.TypeMapModuleEntry {
		i32 33555393, ; uint32_t type_token_id (0x20003c1)
		i32 400; uint32_t java_map_index (0x190)
	}, ; 424
	%struct.TypeMapModuleEntry {
		i32 33555395, ; uint32_t type_token_id (0x20003c3)
		i32 1233; uint32_t java_map_index (0x4d1)
	}, ; 425
	%struct.TypeMapModuleEntry {
		i32 33555397, ; uint32_t type_token_id (0x20003c5)
		i32 1049; uint32_t java_map_index (0x419)
	}, ; 426
	%struct.TypeMapModuleEntry {
		i32 33555399, ; uint32_t type_token_id (0x20003c7)
		i32 595; uint32_t java_map_index (0x253)
	}, ; 427
	%struct.TypeMapModuleEntry {
		i32 33555401, ; uint32_t type_token_id (0x20003c9)
		i32 148; uint32_t java_map_index (0x94)
	}, ; 428
	%struct.TypeMapModuleEntry {
		i32 33555403, ; uint32_t type_token_id (0x20003cb)
		i32 167; uint32_t java_map_index (0xa7)
	}, ; 429
	%struct.TypeMapModuleEntry {
		i32 33555404, ; uint32_t type_token_id (0x20003cc)
		i32 375; uint32_t java_map_index (0x177)
	}, ; 430
	%struct.TypeMapModuleEntry {
		i32 33555406, ; uint32_t type_token_id (0x20003ce)
		i32 421; uint32_t java_map_index (0x1a5)
	}, ; 431
	%struct.TypeMapModuleEntry {
		i32 33555408, ; uint32_t type_token_id (0x20003d0)
		i32 1001; uint32_t java_map_index (0x3e9)
	}, ; 432
	%struct.TypeMapModuleEntry {
		i32 33555410, ; uint32_t type_token_id (0x20003d2)
		i32 887; uint32_t java_map_index (0x377)
	}, ; 433
	%struct.TypeMapModuleEntry {
		i32 33555412, ; uint32_t type_token_id (0x20003d4)
		i32 132; uint32_t java_map_index (0x84)
	}, ; 434
	%struct.TypeMapModuleEntry {
		i32 33555413, ; uint32_t type_token_id (0x20003d5)
		i32 507; uint32_t java_map_index (0x1fb)
	}, ; 435
	%struct.TypeMapModuleEntry {
		i32 33555414, ; uint32_t type_token_id (0x20003d6)
		i32 189; uint32_t java_map_index (0xbd)
	}, ; 436
	%struct.TypeMapModuleEntry {
		i32 33555415, ; uint32_t type_token_id (0x20003d7)
		i32 53; uint32_t java_map_index (0x35)
	}, ; 437
	%struct.TypeMapModuleEntry {
		i32 33555416, ; uint32_t type_token_id (0x20003d8)
		i32 219; uint32_t java_map_index (0xdb)
	}, ; 438
	%struct.TypeMapModuleEntry {
		i32 33555417, ; uint32_t type_token_id (0x20003d9)
		i32 753; uint32_t java_map_index (0x2f1)
	}, ; 439
	%struct.TypeMapModuleEntry {
		i32 33555419, ; uint32_t type_token_id (0x20003db)
		i32 851; uint32_t java_map_index (0x353)
	}, ; 440
	%struct.TypeMapModuleEntry {
		i32 33555421, ; uint32_t type_token_id (0x20003dd)
		i32 763; uint32_t java_map_index (0x2fb)
	}, ; 441
	%struct.TypeMapModuleEntry {
		i32 33555422, ; uint32_t type_token_id (0x20003de)
		i32 455; uint32_t java_map_index (0x1c7)
	}, ; 442
	%struct.TypeMapModuleEntry {
		i32 33555424, ; uint32_t type_token_id (0x20003e0)
		i32 1123; uint32_t java_map_index (0x463)
	}, ; 443
	%struct.TypeMapModuleEntry {
		i32 33555425, ; uint32_t type_token_id (0x20003e1)
		i32 609; uint32_t java_map_index (0x261)
	}, ; 444
	%struct.TypeMapModuleEntry {
		i32 33555426, ; uint32_t type_token_id (0x20003e2)
		i32 9; uint32_t java_map_index (0x9)
	}, ; 445
	%struct.TypeMapModuleEntry {
		i32 33555428, ; uint32_t type_token_id (0x20003e4)
		i32 1182; uint32_t java_map_index (0x49e)
	}, ; 446
	%struct.TypeMapModuleEntry {
		i32 33555430, ; uint32_t type_token_id (0x20003e6)
		i32 251; uint32_t java_map_index (0xfb)
	}, ; 447
	%struct.TypeMapModuleEntry {
		i32 33555432, ; uint32_t type_token_id (0x20003e8)
		i32 1055; uint32_t java_map_index (0x41f)
	}, ; 448
	%struct.TypeMapModuleEntry {
		i32 33555433, ; uint32_t type_token_id (0x20003e9)
		i32 1236; uint32_t java_map_index (0x4d4)
	}, ; 449
	%struct.TypeMapModuleEntry {
		i32 33555435, ; uint32_t type_token_id (0x20003eb)
		i32 155; uint32_t java_map_index (0x9b)
	}, ; 450
	%struct.TypeMapModuleEntry {
		i32 33555438, ; uint32_t type_token_id (0x20003ee)
		i32 420; uint32_t java_map_index (0x1a4)
	}, ; 451
	%struct.TypeMapModuleEntry {
		i32 33555440, ; uint32_t type_token_id (0x20003f0)
		i32 112; uint32_t java_map_index (0x70)
	}, ; 452
	%struct.TypeMapModuleEntry {
		i32 33555441, ; uint32_t type_token_id (0x20003f1)
		i32 394; uint32_t java_map_index (0x18a)
	}, ; 453
	%struct.TypeMapModuleEntry {
		i32 33555443, ; uint32_t type_token_id (0x20003f3)
		i32 1062; uint32_t java_map_index (0x426)
	}, ; 454
	%struct.TypeMapModuleEntry {
		i32 33555444, ; uint32_t type_token_id (0x20003f4)
		i32 1083; uint32_t java_map_index (0x43b)
	}, ; 455
	%struct.TypeMapModuleEntry {
		i32 33555445, ; uint32_t type_token_id (0x20003f5)
		i32 975; uint32_t java_map_index (0x3cf)
	}, ; 456
	%struct.TypeMapModuleEntry {
		i32 33555446, ; uint32_t type_token_id (0x20003f6)
		i32 662; uint32_t java_map_index (0x296)
	}, ; 457
	%struct.TypeMapModuleEntry {
		i32 33555447, ; uint32_t type_token_id (0x20003f7)
		i32 279; uint32_t java_map_index (0x117)
	}, ; 458
	%struct.TypeMapModuleEntry {
		i32 33555449, ; uint32_t type_token_id (0x20003f9)
		i32 707; uint32_t java_map_index (0x2c3)
	}, ; 459
	%struct.TypeMapModuleEntry {
		i32 33555450, ; uint32_t type_token_id (0x20003fa)
		i32 349; uint32_t java_map_index (0x15d)
	}, ; 460
	%struct.TypeMapModuleEntry {
		i32 33555451, ; uint32_t type_token_id (0x20003fb)
		i32 661; uint32_t java_map_index (0x295)
	}, ; 461
	%struct.TypeMapModuleEntry {
		i32 33555452, ; uint32_t type_token_id (0x20003fc)
		i32 174; uint32_t java_map_index (0xae)
	}, ; 462
	%struct.TypeMapModuleEntry {
		i32 33555453, ; uint32_t type_token_id (0x20003fd)
		i32 1023; uint32_t java_map_index (0x3ff)
	}, ; 463
	%struct.TypeMapModuleEntry {
		i32 33555456, ; uint32_t type_token_id (0x2000400)
		i32 433; uint32_t java_map_index (0x1b1)
	}, ; 464
	%struct.TypeMapModuleEntry {
		i32 33555457, ; uint32_t type_token_id (0x2000401)
		i32 271; uint32_t java_map_index (0x10f)
	}, ; 465
	%struct.TypeMapModuleEntry {
		i32 33555458, ; uint32_t type_token_id (0x2000402)
		i32 739; uint32_t java_map_index (0x2e3)
	}, ; 466
	%struct.TypeMapModuleEntry {
		i32 33555459, ; uint32_t type_token_id (0x2000403)
		i32 832; uint32_t java_map_index (0x340)
	}, ; 467
	%struct.TypeMapModuleEntry {
		i32 33555460, ; uint32_t type_token_id (0x2000404)
		i32 1242; uint32_t java_map_index (0x4da)
	}, ; 468
	%struct.TypeMapModuleEntry {
		i32 33555462, ; uint32_t type_token_id (0x2000406)
		i32 1119; uint32_t java_map_index (0x45f)
	}, ; 469
	%struct.TypeMapModuleEntry {
		i32 33555464, ; uint32_t type_token_id (0x2000408)
		i32 771; uint32_t java_map_index (0x303)
	}, ; 470
	%struct.TypeMapModuleEntry {
		i32 33555465, ; uint32_t type_token_id (0x2000409)
		i32 1209; uint32_t java_map_index (0x4b9)
	}, ; 471
	%struct.TypeMapModuleEntry {
		i32 33555466, ; uint32_t type_token_id (0x200040a)
		i32 555; uint32_t java_map_index (0x22b)
	}, ; 472
	%struct.TypeMapModuleEntry {
		i32 33555469, ; uint32_t type_token_id (0x200040d)
		i32 211; uint32_t java_map_index (0xd3)
	}, ; 473
	%struct.TypeMapModuleEntry {
		i32 33555470, ; uint32_t type_token_id (0x200040e)
		i32 712; uint32_t java_map_index (0x2c8)
	}, ; 474
	%struct.TypeMapModuleEntry {
		i32 33555471, ; uint32_t type_token_id (0x200040f)
		i32 1181; uint32_t java_map_index (0x49d)
	}, ; 475
	%struct.TypeMapModuleEntry {
		i32 33555473, ; uint32_t type_token_id (0x2000411)
		i32 880; uint32_t java_map_index (0x370)
	}, ; 476
	%struct.TypeMapModuleEntry {
		i32 33555474, ; uint32_t type_token_id (0x2000412)
		i32 1187; uint32_t java_map_index (0x4a3)
	}, ; 477
	%struct.TypeMapModuleEntry {
		i32 33555476, ; uint32_t type_token_id (0x2000414)
		i32 573; uint32_t java_map_index (0x23d)
	}, ; 478
	%struct.TypeMapModuleEntry {
		i32 33555477, ; uint32_t type_token_id (0x2000415)
		i32 470; uint32_t java_map_index (0x1d6)
	}, ; 479
	%struct.TypeMapModuleEntry {
		i32 33555478, ; uint32_t type_token_id (0x2000416)
		i32 483; uint32_t java_map_index (0x1e3)
	}, ; 480
	%struct.TypeMapModuleEntry {
		i32 33555479, ; uint32_t type_token_id (0x2000417)
		i32 1112; uint32_t java_map_index (0x458)
	}, ; 481
	%struct.TypeMapModuleEntry {
		i32 33555480, ; uint32_t type_token_id (0x2000418)
		i32 380; uint32_t java_map_index (0x17c)
	}, ; 482
	%struct.TypeMapModuleEntry {
		i32 33555481, ; uint32_t type_token_id (0x2000419)
		i32 114; uint32_t java_map_index (0x72)
	}, ; 483
	%struct.TypeMapModuleEntry {
		i32 33555483, ; uint32_t type_token_id (0x200041b)
		i32 1074; uint32_t java_map_index (0x432)
	}, ; 484
	%struct.TypeMapModuleEntry {
		i32 33555484, ; uint32_t type_token_id (0x200041c)
		i32 686; uint32_t java_map_index (0x2ae)
	}, ; 485
	%struct.TypeMapModuleEntry {
		i32 33555486, ; uint32_t type_token_id (0x200041e)
		i32 1156; uint32_t java_map_index (0x484)
	}, ; 486
	%struct.TypeMapModuleEntry {
		i32 33555487, ; uint32_t type_token_id (0x200041f)
		i32 844; uint32_t java_map_index (0x34c)
	}, ; 487
	%struct.TypeMapModuleEntry {
		i32 33555488, ; uint32_t type_token_id (0x2000420)
		i32 801; uint32_t java_map_index (0x321)
	}, ; 488
	%struct.TypeMapModuleEntry {
		i32 33555489, ; uint32_t type_token_id (0x2000421)
		i32 331; uint32_t java_map_index (0x14b)
	}, ; 489
	%struct.TypeMapModuleEntry {
		i32 33555491, ; uint32_t type_token_id (0x2000423)
		i32 3; uint32_t java_map_index (0x3)
	}, ; 490
	%struct.TypeMapModuleEntry {
		i32 33555493, ; uint32_t type_token_id (0x2000425)
		i32 210; uint32_t java_map_index (0xd2)
	}, ; 491
	%struct.TypeMapModuleEntry {
		i32 33555496, ; uint32_t type_token_id (0x2000428)
		i32 319; uint32_t java_map_index (0x13f)
	}, ; 492
	%struct.TypeMapModuleEntry {
		i32 33555498, ; uint32_t type_token_id (0x200042a)
		i32 678; uint32_t java_map_index (0x2a6)
	}, ; 493
	%struct.TypeMapModuleEntry {
		i32 33555500, ; uint32_t type_token_id (0x200042c)
		i32 56; uint32_t java_map_index (0x38)
	}, ; 494
	%struct.TypeMapModuleEntry {
		i32 33555501, ; uint32_t type_token_id (0x200042d)
		i32 159; uint32_t java_map_index (0x9f)
	}, ; 495
	%struct.TypeMapModuleEntry {
		i32 33555502, ; uint32_t type_token_id (0x200042e)
		i32 462; uint32_t java_map_index (0x1ce)
	}, ; 496
	%struct.TypeMapModuleEntry {
		i32 33555503, ; uint32_t type_token_id (0x200042f)
		i32 215; uint32_t java_map_index (0xd7)
	}, ; 497
	%struct.TypeMapModuleEntry {
		i32 33555504, ; uint32_t type_token_id (0x2000430)
		i32 525; uint32_t java_map_index (0x20d)
	}, ; 498
	%struct.TypeMapModuleEntry {
		i32 33555506, ; uint32_t type_token_id (0x2000432)
		i32 108; uint32_t java_map_index (0x6c)
	}, ; 499
	%struct.TypeMapModuleEntry {
		i32 33555507, ; uint32_t type_token_id (0x2000433)
		i32 227; uint32_t java_map_index (0xe3)
	}, ; 500
	%struct.TypeMapModuleEntry {
		i32 33555508, ; uint32_t type_token_id (0x2000434)
		i32 1003; uint32_t java_map_index (0x3eb)
	}, ; 501
	%struct.TypeMapModuleEntry {
		i32 33555510, ; uint32_t type_token_id (0x2000436)
		i32 2; uint32_t java_map_index (0x2)
	}, ; 502
	%struct.TypeMapModuleEntry {
		i32 33555511, ; uint32_t type_token_id (0x2000437)
		i32 460; uint32_t java_map_index (0x1cc)
	}, ; 503
	%struct.TypeMapModuleEntry {
		i32 33555512, ; uint32_t type_token_id (0x2000438)
		i32 393; uint32_t java_map_index (0x189)
	}, ; 504
	%struct.TypeMapModuleEntry {
		i32 33555513, ; uint32_t type_token_id (0x2000439)
		i32 239; uint32_t java_map_index (0xef)
	}, ; 505
	%struct.TypeMapModuleEntry {
		i32 33555514, ; uint32_t type_token_id (0x200043a)
		i32 830; uint32_t java_map_index (0x33e)
	}, ; 506
	%struct.TypeMapModuleEntry {
		i32 33555515, ; uint32_t type_token_id (0x200043b)
		i32 1058; uint32_t java_map_index (0x422)
	}, ; 507
	%struct.TypeMapModuleEntry {
		i32 33555517, ; uint32_t type_token_id (0x200043d)
		i32 218; uint32_t java_map_index (0xda)
	}, ; 508
	%struct.TypeMapModuleEntry {
		i32 33555518, ; uint32_t type_token_id (0x200043e)
		i32 103; uint32_t java_map_index (0x67)
	}, ; 509
	%struct.TypeMapModuleEntry {
		i32 33555519, ; uint32_t type_token_id (0x200043f)
		i32 357; uint32_t java_map_index (0x165)
	}, ; 510
	%struct.TypeMapModuleEntry {
		i32 33555520, ; uint32_t type_token_id (0x2000440)
		i32 698; uint32_t java_map_index (0x2ba)
	}, ; 511
	%struct.TypeMapModuleEntry {
		i32 33555521, ; uint32_t type_token_id (0x2000441)
		i32 773; uint32_t java_map_index (0x305)
	}, ; 512
	%struct.TypeMapModuleEntry {
		i32 33555536, ; uint32_t type_token_id (0x2000450)
		i32 856; uint32_t java_map_index (0x358)
	} ; 513
], align 4

@module18_managed_to_java_duplicates = internal dso_local constant [206 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554601, ; uint32_t type_token_id (0x20000a9)
		i32 646; uint32_t java_map_index (0x286)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554605, ; uint32_t type_token_id (0x20000ad)
		i32 342; uint32_t java_map_index (0x156)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554607, ; uint32_t type_token_id (0x20000af)
		i32 74; uint32_t java_map_index (0x4a)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554610, ; uint32_t type_token_id (0x20000b2)
		i32 1079; uint32_t java_map_index (0x437)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554612, ; uint32_t type_token_id (0x20000b4)
		i32 998; uint32_t java_map_index (0x3e6)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554614, ; uint32_t type_token_id (0x20000b6)
		i32 775; uint32_t java_map_index (0x307)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554616, ; uint32_t type_token_id (0x20000b8)
		i32 383; uint32_t java_map_index (0x17f)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554618, ; uint32_t type_token_id (0x20000ba)
		i32 969; uint32_t java_map_index (0x3c9)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554620, ; uint32_t type_token_id (0x20000bc)
		i32 39; uint32_t java_map_index (0x27)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33554622, ; uint32_t type_token_id (0x20000be)
		i32 235; uint32_t java_map_index (0xeb)
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 33554626, ; uint32_t type_token_id (0x20000c2)
		i32 1146; uint32_t java_map_index (0x47a)
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 33554629, ; uint32_t type_token_id (0x20000c5)
		i32 57; uint32_t java_map_index (0x39)
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 33554631, ; uint32_t type_token_id (0x20000c7)
		i32 718; uint32_t java_map_index (0x2ce)
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 33554634, ; uint32_t type_token_id (0x20000ca)
		i32 96; uint32_t java_map_index (0x60)
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 33554636, ; uint32_t type_token_id (0x20000cc)
		i32 1041; uint32_t java_map_index (0x411)
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 33554639, ; uint32_t type_token_id (0x20000cf)
		i32 615; uint32_t java_map_index (0x267)
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 33554642, ; uint32_t type_token_id (0x20000d2)
		i32 575; uint32_t java_map_index (0x23f)
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 33554646, ; uint32_t type_token_id (0x20000d6)
		i32 309; uint32_t java_map_index (0x135)
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 33554648, ; uint32_t type_token_id (0x20000d8)
		i32 554; uint32_t java_map_index (0x22a)
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 33554649, ; uint32_t type_token_id (0x20000d9)
		i32 586; uint32_t java_map_index (0x24a)
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 33554655, ; uint32_t type_token_id (0x20000df)
		i32 756; uint32_t java_map_index (0x2f4)
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 33554660, ; uint32_t type_token_id (0x20000e4)
		i32 1243; uint32_t java_map_index (0x4db)
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 33554666, ; uint32_t type_token_id (0x20000ea)
		i32 479; uint32_t java_map_index (0x1df)
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 33554672, ; uint32_t type_token_id (0x20000f0)
		i32 158; uint32_t java_map_index (0x9e)
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 33554677, ; uint32_t type_token_id (0x20000f5)
		i32 780; uint32_t java_map_index (0x30c)
	}, ; 24
	%struct.TypeMapModuleEntry {
		i32 33554679, ; uint32_t type_token_id (0x20000f7)
		i32 364; uint32_t java_map_index (0x16c)
	}, ; 25
	%struct.TypeMapModuleEntry {
		i32 33554681, ; uint32_t type_token_id (0x20000f9)
		i32 1162; uint32_t java_map_index (0x48a)
	}, ; 26
	%struct.TypeMapModuleEntry {
		i32 33554683, ; uint32_t type_token_id (0x20000fb)
		i32 8; uint32_t java_map_index (0x8)
	}, ; 27
	%struct.TypeMapModuleEntry {
		i32 33554688, ; uint32_t type_token_id (0x2000100)
		i32 152; uint32_t java_map_index (0x98)
	}, ; 28
	%struct.TypeMapModuleEntry {
		i32 33554690, ; uint32_t type_token_id (0x2000102)
		i32 602; uint32_t java_map_index (0x25a)
	}, ; 29
	%struct.TypeMapModuleEntry {
		i32 33554699, ; uint32_t type_token_id (0x200010b)
		i32 351; uint32_t java_map_index (0x15f)
	}, ; 30
	%struct.TypeMapModuleEntry {
		i32 33554704, ; uint32_t type_token_id (0x2000110)
		i32 301; uint32_t java_map_index (0x12d)
	}, ; 31
	%struct.TypeMapModuleEntry {
		i32 33554716, ; uint32_t type_token_id (0x200011c)
		i32 586; uint32_t java_map_index (0x24a)
	}, ; 32
	%struct.TypeMapModuleEntry {
		i32 33554717, ; uint32_t type_token_id (0x200011d)
		i32 756; uint32_t java_map_index (0x2f4)
	}, ; 33
	%struct.TypeMapModuleEntry {
		i32 33554719, ; uint32_t type_token_id (0x200011f)
		i32 451; uint32_t java_map_index (0x1c3)
	}, ; 34
	%struct.TypeMapModuleEntry {
		i32 33554721, ; uint32_t type_token_id (0x2000121)
		i32 1121; uint32_t java_map_index (0x461)
	}, ; 35
	%struct.TypeMapModuleEntry {
		i32 33554723, ; uint32_t type_token_id (0x2000123)
		i32 788; uint32_t java_map_index (0x314)
	}, ; 36
	%struct.TypeMapModuleEntry {
		i32 33554727, ; uint32_t type_token_id (0x2000127)
		i32 594; uint32_t java_map_index (0x252)
	}, ; 37
	%struct.TypeMapModuleEntry {
		i32 33554729, ; uint32_t type_token_id (0x2000129)
		i32 898; uint32_t java_map_index (0x382)
	}, ; 38
	%struct.TypeMapModuleEntry {
		i32 33554731, ; uint32_t type_token_id (0x200012b)
		i32 724; uint32_t java_map_index (0x2d4)
	}, ; 39
	%struct.TypeMapModuleEntry {
		i32 33554738, ; uint32_t type_token_id (0x2000132)
		i32 840; uint32_t java_map_index (0x348)
	}, ; 40
	%struct.TypeMapModuleEntry {
		i32 33554751, ; uint32_t type_token_id (0x200013f)
		i32 990; uint32_t java_map_index (0x3de)
	}, ; 41
	%struct.TypeMapModuleEntry {
		i32 33554754, ; uint32_t type_token_id (0x2000142)
		i32 43; uint32_t java_map_index (0x2b)
	}, ; 42
	%struct.TypeMapModuleEntry {
		i32 33554758, ; uint32_t type_token_id (0x2000146)
		i32 1120; uint32_t java_map_index (0x460)
	}, ; 43
	%struct.TypeMapModuleEntry {
		i32 33554760, ; uint32_t type_token_id (0x2000148)
		i32 1078; uint32_t java_map_index (0x436)
	}, ; 44
	%struct.TypeMapModuleEntry {
		i32 33554762, ; uint32_t type_token_id (0x200014a)
		i32 800; uint32_t java_map_index (0x320)
	}, ; 45
	%struct.TypeMapModuleEntry {
		i32 33554765, ; uint32_t type_token_id (0x200014d)
		i32 511; uint32_t java_map_index (0x1ff)
	}, ; 46
	%struct.TypeMapModuleEntry {
		i32 33554768, ; uint32_t type_token_id (0x2000150)
		i32 1028; uint32_t java_map_index (0x404)
	}, ; 47
	%struct.TypeMapModuleEntry {
		i32 33554770, ; uint32_t type_token_id (0x2000152)
		i32 1210; uint32_t java_map_index (0x4ba)
	}, ; 48
	%struct.TypeMapModuleEntry {
		i32 33554773, ; uint32_t type_token_id (0x2000155)
		i32 498; uint32_t java_map_index (0x1f2)
	}, ; 49
	%struct.TypeMapModuleEntry {
		i32 33554779, ; uint32_t type_token_id (0x200015b)
		i32 408; uint32_t java_map_index (0x198)
	}, ; 50
	%struct.TypeMapModuleEntry {
		i32 33554795, ; uint32_t type_token_id (0x200016b)
		i32 97; uint32_t java_map_index (0x61)
	}, ; 51
	%struct.TypeMapModuleEntry {
		i32 33554797, ; uint32_t type_token_id (0x200016d)
		i32 934; uint32_t java_map_index (0x3a6)
	}, ; 52
	%struct.TypeMapModuleEntry {
		i32 33554800, ; uint32_t type_token_id (0x2000170)
		i32 4; uint32_t java_map_index (0x4)
	}, ; 53
	%struct.TypeMapModuleEntry {
		i32 33554802, ; uint32_t type_token_id (0x2000172)
		i32 834; uint32_t java_map_index (0x342)
	}, ; 54
	%struct.TypeMapModuleEntry {
		i32 33554804, ; uint32_t type_token_id (0x2000174)
		i32 1025; uint32_t java_map_index (0x401)
	}, ; 55
	%struct.TypeMapModuleEntry {
		i32 33554806, ; uint32_t type_token_id (0x2000176)
		i32 1075; uint32_t java_map_index (0x433)
	}, ; 56
	%struct.TypeMapModuleEntry {
		i32 33554814, ; uint32_t type_token_id (0x200017e)
		i32 270; uint32_t java_map_index (0x10e)
	}, ; 57
	%struct.TypeMapModuleEntry {
		i32 33554817, ; uint32_t type_token_id (0x2000181)
		i32 179; uint32_t java_map_index (0xb3)
	}, ; 58
	%struct.TypeMapModuleEntry {
		i32 33554819, ; uint32_t type_token_id (0x2000183)
		i32 1130; uint32_t java_map_index (0x46a)
	}, ; 59
	%struct.TypeMapModuleEntry {
		i32 33554821, ; uint32_t type_token_id (0x2000185)
		i32 1080; uint32_t java_map_index (0x438)
	}, ; 60
	%struct.TypeMapModuleEntry {
		i32 33554824, ; uint32_t type_token_id (0x2000188)
		i32 445; uint32_t java_map_index (0x1bd)
	}, ; 61
	%struct.TypeMapModuleEntry {
		i32 33554841, ; uint32_t type_token_id (0x2000199)
		i32 217; uint32_t java_map_index (0xd9)
	}, ; 62
	%struct.TypeMapModuleEntry {
		i32 33554843, ; uint32_t type_token_id (0x200019b)
		i32 923; uint32_t java_map_index (0x39b)
	}, ; 63
	%struct.TypeMapModuleEntry {
		i32 33554845, ; uint32_t type_token_id (0x200019d)
		i32 491; uint32_t java_map_index (0x1eb)
	}, ; 64
	%struct.TypeMapModuleEntry {
		i32 33554847, ; uint32_t type_token_id (0x200019f)
		i32 590; uint32_t java_map_index (0x24e)
	}, ; 65
	%struct.TypeMapModuleEntry {
		i32 33554849, ; uint32_t type_token_id (0x20001a1)
		i32 1227; uint32_t java_map_index (0x4cb)
	}, ; 66
	%struct.TypeMapModuleEntry {
		i32 33554866, ; uint32_t type_token_id (0x20001b2)
		i32 1097; uint32_t java_map_index (0x449)
	}, ; 67
	%struct.TypeMapModuleEntry {
		i32 33554870, ; uint32_t type_token_id (0x20001b6)
		i32 995; uint32_t java_map_index (0x3e3)
	}, ; 68
	%struct.TypeMapModuleEntry {
		i32 33554874, ; uint32_t type_token_id (0x20001ba)
		i32 1037; uint32_t java_map_index (0x40d)
	}, ; 69
	%struct.TypeMapModuleEntry {
		i32 33554875, ; uint32_t type_token_id (0x20001bb)
		i32 20; uint32_t java_map_index (0x14)
	}, ; 70
	%struct.TypeMapModuleEntry {
		i32 33554878, ; uint32_t type_token_id (0x20001be)
		i32 7; uint32_t java_map_index (0x7)
	}, ; 71
	%struct.TypeMapModuleEntry {
		i32 33554879, ; uint32_t type_token_id (0x20001bf)
		i32 543; uint32_t java_map_index (0x21f)
	}, ; 72
	%struct.TypeMapModuleEntry {
		i32 33554883, ; uint32_t type_token_id (0x20001c3)
		i32 291; uint32_t java_map_index (0x123)
	}, ; 73
	%struct.TypeMapModuleEntry {
		i32 33554885, ; uint32_t type_token_id (0x20001c5)
		i32 281; uint32_t java_map_index (0x119)
	}, ; 74
	%struct.TypeMapModuleEntry {
		i32 33554887, ; uint32_t type_token_id (0x20001c7)
		i32 244; uint32_t java_map_index (0xf4)
	}, ; 75
	%struct.TypeMapModuleEntry {
		i32 33554891, ; uint32_t type_token_id (0x20001cb)
		i32 0; uint32_t java_map_index (0x0)
	}, ; 76
	%struct.TypeMapModuleEntry {
		i32 33554892, ; uint32_t type_token_id (0x20001cc)
		i32 91; uint32_t java_map_index (0x5b)
	}, ; 77
	%struct.TypeMapModuleEntry {
		i32 33554894, ; uint32_t type_token_id (0x20001ce)
		i32 625; uint32_t java_map_index (0x271)
	}, ; 78
	%struct.TypeMapModuleEntry {
		i32 33554896, ; uint32_t type_token_id (0x20001d0)
		i32 107; uint32_t java_map_index (0x6b)
	}, ; 79
	%struct.TypeMapModuleEntry {
		i32 33554899, ; uint32_t type_token_id (0x20001d3)
		i32 912; uint32_t java_map_index (0x390)
	}, ; 80
	%struct.TypeMapModuleEntry {
		i32 33554903, ; uint32_t type_token_id (0x20001d7)
		i32 220; uint32_t java_map_index (0xdc)
	}, ; 81
	%struct.TypeMapModuleEntry {
		i32 33554915, ; uint32_t type_token_id (0x20001e3)
		i32 493; uint32_t java_map_index (0x1ed)
	}, ; 82
	%struct.TypeMapModuleEntry {
		i32 33554918, ; uint32_t type_token_id (0x20001e6)
		i32 742; uint32_t java_map_index (0x2e6)
	}, ; 83
	%struct.TypeMapModuleEntry {
		i32 33554933, ; uint32_t type_token_id (0x20001f5)
		i32 1131; uint32_t java_map_index (0x46b)
	}, ; 84
	%struct.TypeMapModuleEntry {
		i32 33554944, ; uint32_t type_token_id (0x2000200)
		i32 929; uint32_t java_map_index (0x3a1)
	}, ; 85
	%struct.TypeMapModuleEntry {
		i32 33554945, ; uint32_t type_token_id (0x2000201)
		i32 828; uint32_t java_map_index (0x33c)
	}, ; 86
	%struct.TypeMapModuleEntry {
		i32 33554947, ; uint32_t type_token_id (0x2000203)
		i32 1067; uint32_t java_map_index (0x42b)
	}, ; 87
	%struct.TypeMapModuleEntry {
		i32 33554954, ; uint32_t type_token_id (0x200020a)
		i32 286; uint32_t java_map_index (0x11e)
	}, ; 88
	%struct.TypeMapModuleEntry {
		i32 33554956, ; uint32_t type_token_id (0x200020c)
		i32 183; uint32_t java_map_index (0xb7)
	}, ; 89
	%struct.TypeMapModuleEntry {
		i32 33554958, ; uint32_t type_token_id (0x200020e)
		i32 731; uint32_t java_map_index (0x2db)
	}, ; 90
	%struct.TypeMapModuleEntry {
		i32 33554960, ; uint32_t type_token_id (0x2000210)
		i32 1125; uint32_t java_map_index (0x465)
	}, ; 91
	%struct.TypeMapModuleEntry {
		i32 33554963, ; uint32_t type_token_id (0x2000213)
		i32 1229; uint32_t java_map_index (0x4cd)
	}, ; 92
	%struct.TypeMapModuleEntry {
		i32 33554965, ; uint32_t type_token_id (0x2000215)
		i32 89; uint32_t java_map_index (0x59)
	}, ; 93
	%struct.TypeMapModuleEntry {
		i32 33554967, ; uint32_t type_token_id (0x2000217)
		i32 1228; uint32_t java_map_index (0x4cc)
	}, ; 94
	%struct.TypeMapModuleEntry {
		i32 33554970, ; uint32_t type_token_id (0x200021a)
		i32 961; uint32_t java_map_index (0x3c1)
	}, ; 95
	%struct.TypeMapModuleEntry {
		i32 33554972, ; uint32_t type_token_id (0x200021c)
		i32 839; uint32_t java_map_index (0x347)
	}, ; 96
	%struct.TypeMapModuleEntry {
		i32 33554974, ; uint32_t type_token_id (0x200021e)
		i32 326; uint32_t java_map_index (0x146)
	}, ; 97
	%struct.TypeMapModuleEntry {
		i32 33554976, ; uint32_t type_token_id (0x2000220)
		i32 396; uint32_t java_map_index (0x18c)
	}, ; 98
	%struct.TypeMapModuleEntry {
		i32 33554978, ; uint32_t type_token_id (0x2000222)
		i32 139; uint32_t java_map_index (0x8b)
	}, ; 99
	%struct.TypeMapModuleEntry {
		i32 33554980, ; uint32_t type_token_id (0x2000224)
		i32 833; uint32_t java_map_index (0x341)
	}, ; 100
	%struct.TypeMapModuleEntry {
		i32 33554982, ; uint32_t type_token_id (0x2000226)
		i32 713; uint32_t java_map_index (0x2c9)
	}, ; 101
	%struct.TypeMapModuleEntry {
		i32 33554985, ; uint32_t type_token_id (0x2000229)
		i32 744; uint32_t java_map_index (0x2e8)
	}, ; 102
	%struct.TypeMapModuleEntry {
		i32 33554986, ; uint32_t type_token_id (0x200022a)
		i32 847; uint32_t java_map_index (0x34f)
	}, ; 103
	%struct.TypeMapModuleEntry {
		i32 33554988, ; uint32_t type_token_id (0x200022c)
		i32 943; uint32_t java_map_index (0x3af)
	}, ; 104
	%struct.TypeMapModuleEntry {
		i32 33554992, ; uint32_t type_token_id (0x2000230)
		i32 1057; uint32_t java_map_index (0x421)
	}, ; 105
	%struct.TypeMapModuleEntry {
		i32 33554996, ; uint32_t type_token_id (0x2000234)
		i32 58; uint32_t java_map_index (0x3a)
	}, ; 106
	%struct.TypeMapModuleEntry {
		i32 33554999, ; uint32_t type_token_id (0x2000237)
		i32 1221; uint32_t java_map_index (0x4c5)
	}, ; 107
	%struct.TypeMapModuleEntry {
		i32 33555008, ; uint32_t type_token_id (0x2000240)
		i32 399; uint32_t java_map_index (0x18f)
	}, ; 108
	%struct.TypeMapModuleEntry {
		i32 33555013, ; uint32_t type_token_id (0x2000245)
		i32 514; uint32_t java_map_index (0x202)
	}, ; 109
	%struct.TypeMapModuleEntry {
		i32 33555016, ; uint32_t type_token_id (0x2000248)
		i32 1166; uint32_t java_map_index (0x48e)
	}, ; 110
	%struct.TypeMapModuleEntry {
		i32 33555018, ; uint32_t type_token_id (0x200024a)
		i32 993; uint32_t java_map_index (0x3e1)
	}, ; 111
	%struct.TypeMapModuleEntry {
		i32 33555022, ; uint32_t type_token_id (0x200024e)
		i32 418; uint32_t java_map_index (0x1a2)
	}, ; 112
	%struct.TypeMapModuleEntry {
		i32 33555024, ; uint32_t type_token_id (0x2000250)
		i32 786; uint32_t java_map_index (0x312)
	}, ; 113
	%struct.TypeMapModuleEntry {
		i32 33555028, ; uint32_t type_token_id (0x2000254)
		i32 692; uint32_t java_map_index (0x2b4)
	}, ; 114
	%struct.TypeMapModuleEntry {
		i32 33555032, ; uint32_t type_token_id (0x2000258)
		i32 1000; uint32_t java_map_index (0x3e8)
	}, ; 115
	%struct.TypeMapModuleEntry {
		i32 33555036, ; uint32_t type_token_id (0x200025c)
		i32 464; uint32_t java_map_index (0x1d0)
	}, ; 116
	%struct.TypeMapModuleEntry {
		i32 33555061, ; uint32_t type_token_id (0x2000275)
		i32 77; uint32_t java_map_index (0x4d)
	}, ; 117
	%struct.TypeMapModuleEntry {
		i32 33555068, ; uint32_t type_token_id (0x200027c)
		i32 19; uint32_t java_map_index (0x13)
	}, ; 118
	%struct.TypeMapModuleEntry {
		i32 33555072, ; uint32_t type_token_id (0x2000280)
		i32 1226; uint32_t java_map_index (0x4ca)
	}, ; 119
	%struct.TypeMapModuleEntry {
		i32 33555075, ; uint32_t type_token_id (0x2000283)
		i32 348; uint32_t java_map_index (0x15c)
	}, ; 120
	%struct.TypeMapModuleEntry {
		i32 33555076, ; uint32_t type_token_id (0x2000284)
		i32 1091; uint32_t java_map_index (0x443)
	}, ; 121
	%struct.TypeMapModuleEntry {
		i32 33555118, ; uint32_t type_token_id (0x20002ae)
		i32 484; uint32_t java_map_index (0x1e4)
	}, ; 122
	%struct.TypeMapModuleEntry {
		i32 33555119, ; uint32_t type_token_id (0x20002af)
		i32 601; uint32_t java_map_index (0x259)
	}, ; 123
	%struct.TypeMapModuleEntry {
		i32 33555123, ; uint32_t type_token_id (0x20002b3)
		i32 1109; uint32_t java_map_index (0x455)
	}, ; 124
	%struct.TypeMapModuleEntry {
		i32 33555126, ; uint32_t type_token_id (0x20002b6)
		i32 1164; uint32_t java_map_index (0x48c)
	}, ; 125
	%struct.TypeMapModuleEntry {
		i32 33555131, ; uint32_t type_token_id (0x20002bb)
		i32 156; uint32_t java_map_index (0x9c)
	}, ; 126
	%struct.TypeMapModuleEntry {
		i32 33555133, ; uint32_t type_token_id (0x20002bd)
		i32 1140; uint32_t java_map_index (0x474)
	}, ; 127
	%struct.TypeMapModuleEntry {
		i32 33555168, ; uint32_t type_token_id (0x20002e0)
		i32 370; uint32_t java_map_index (0x172)
	}, ; 128
	%struct.TypeMapModuleEntry {
		i32 33555174, ; uint32_t type_token_id (0x20002e6)
		i32 414; uint32_t java_map_index (0x19e)
	}, ; 129
	%struct.TypeMapModuleEntry {
		i32 33555179, ; uint32_t type_token_id (0x20002eb)
		i32 193; uint32_t java_map_index (0xc1)
	}, ; 130
	%struct.TypeMapModuleEntry {
		i32 33555183, ; uint32_t type_token_id (0x20002ef)
		i32 1225; uint32_t java_map_index (0x4c9)
	}, ; 131
	%struct.TypeMapModuleEntry {
		i32 33555256, ; uint32_t type_token_id (0x2000338)
		i32 534; uint32_t java_map_index (0x216)
	}, ; 132
	%struct.TypeMapModuleEntry {
		i32 33555257, ; uint32_t type_token_id (0x2000339)
		i32 795; uint32_t java_map_index (0x31b)
	}, ; 133
	%struct.TypeMapModuleEntry {
		i32 33555260, ; uint32_t type_token_id (0x200033c)
		i32 1098; uint32_t java_map_index (0x44a)
	}, ; 134
	%struct.TypeMapModuleEntry {
		i32 33555264, ; uint32_t type_token_id (0x2000340)
		i32 417; uint32_t java_map_index (0x1a1)
	}, ; 135
	%struct.TypeMapModuleEntry {
		i32 33555272, ; uint32_t type_token_id (0x2000348)
		i32 791; uint32_t java_map_index (0x317)
	}, ; 136
	%struct.TypeMapModuleEntry {
		i32 33555279, ; uint32_t type_token_id (0x200034f)
		i32 984; uint32_t java_map_index (0x3d8)
	}, ; 137
	%struct.TypeMapModuleEntry {
		i32 33555282, ; uint32_t type_token_id (0x2000352)
		i32 558; uint32_t java_map_index (0x22e)
	}, ; 138
	%struct.TypeMapModuleEntry {
		i32 33555288, ; uint32_t type_token_id (0x2000358)
		i32 237; uint32_t java_map_index (0xed)
	}, ; 139
	%struct.TypeMapModuleEntry {
		i32 33555291, ; uint32_t type_token_id (0x200035b)
		i32 1171; uint32_t java_map_index (0x493)
	}, ; 140
	%struct.TypeMapModuleEntry {
		i32 33555294, ; uint32_t type_token_id (0x200035e)
		i32 760; uint32_t java_map_index (0x2f8)
	}, ; 141
	%struct.TypeMapModuleEntry {
		i32 33555297, ; uint32_t type_token_id (0x2000361)
		i32 836; uint32_t java_map_index (0x344)
	}, ; 142
	%struct.TypeMapModuleEntry {
		i32 33555301, ; uint32_t type_token_id (0x2000365)
		i32 151; uint32_t java_map_index (0x97)
	}, ; 143
	%struct.TypeMapModuleEntry {
		i32 33555304, ; uint32_t type_token_id (0x2000368)
		i32 754; uint32_t java_map_index (0x2f2)
	}, ; 144
	%struct.TypeMapModuleEntry {
		i32 33555306, ; uint32_t type_token_id (0x200036a)
		i32 537; uint32_t java_map_index (0x219)
	}, ; 145
	%struct.TypeMapModuleEntry {
		i32 33555309, ; uint32_t type_token_id (0x200036d)
		i32 118; uint32_t java_map_index (0x76)
	}, ; 146
	%struct.TypeMapModuleEntry {
		i32 33555312, ; uint32_t type_token_id (0x2000370)
		i32 587; uint32_t java_map_index (0x24b)
	}, ; 147
	%struct.TypeMapModuleEntry {
		i32 33555317, ; uint32_t type_token_id (0x2000375)
		i32 79; uint32_t java_map_index (0x4f)
	}, ; 148
	%struct.TypeMapModuleEntry {
		i32 33555319, ; uint32_t type_token_id (0x2000377)
		i32 729; uint32_t java_map_index (0x2d9)
	}, ; 149
	%struct.TypeMapModuleEntry {
		i32 33555321, ; uint32_t type_token_id (0x2000379)
		i32 1004; uint32_t java_map_index (0x3ec)
	}, ; 150
	%struct.TypeMapModuleEntry {
		i32 33555331, ; uint32_t type_token_id (0x2000383)
		i32 1106; uint32_t java_map_index (0x452)
	}, ; 151
	%struct.TypeMapModuleEntry {
		i32 33555344, ; uint32_t type_token_id (0x2000390)
		i32 761; uint32_t java_map_index (0x2f9)
	}, ; 152
	%struct.TypeMapModuleEntry {
		i32 33555356, ; uint32_t type_token_id (0x200039c)
		i32 280; uint32_t java_map_index (0x118)
	}, ; 153
	%struct.TypeMapModuleEntry {
		i32 33555358, ; uint32_t type_token_id (0x200039e)
		i32 736; uint32_t java_map_index (0x2e0)
	}, ; 154
	%struct.TypeMapModuleEntry {
		i32 33555360, ; uint32_t type_token_id (0x20003a0)
		i32 988; uint32_t java_map_index (0x3dc)
	}, ; 155
	%struct.TypeMapModuleEntry {
		i32 33555361, ; uint32_t type_token_id (0x20003a1)
		i32 1225; uint32_t java_map_index (0x4c9)
	}, ; 156
	%struct.TypeMapModuleEntry {
		i32 33555362, ; uint32_t type_token_id (0x20003a2)
		i32 370; uint32_t java_map_index (0x172)
	}, ; 157
	%struct.TypeMapModuleEntry {
		i32 33555363, ; uint32_t type_token_id (0x20003a3)
		i32 370; uint32_t java_map_index (0x172)
	}, ; 158
	%struct.TypeMapModuleEntry {
		i32 33555365, ; uint32_t type_token_id (0x20003a5)
		i32 437; uint32_t java_map_index (0x1b5)
	}, ; 159
	%struct.TypeMapModuleEntry {
		i32 33555367, ; uint32_t type_token_id (0x20003a7)
		i32 315; uint32_t java_map_index (0x13b)
	}, ; 160
	%struct.TypeMapModuleEntry {
		i32 33555369, ; uint32_t type_token_id (0x20003a9)
		i32 111; uint32_t java_map_index (0x6f)
	}, ; 161
	%struct.TypeMapModuleEntry {
		i32 33555371, ; uint32_t type_token_id (0x20003ab)
		i32 42; uint32_t java_map_index (0x2a)
	}, ; 162
	%struct.TypeMapModuleEntry {
		i32 33555373, ; uint32_t type_token_id (0x20003ad)
		i32 488; uint32_t java_map_index (0x1e8)
	}, ; 163
	%struct.TypeMapModuleEntry {
		i32 33555375, ; uint32_t type_token_id (0x20003af)
		i32 962; uint32_t java_map_index (0x3c2)
	}, ; 164
	%struct.TypeMapModuleEntry {
		i32 33555377, ; uint32_t type_token_id (0x20003b1)
		i32 927; uint32_t java_map_index (0x39f)
	}, ; 165
	%struct.TypeMapModuleEntry {
		i32 33555379, ; uint32_t type_token_id (0x20003b3)
		i32 823; uint32_t java_map_index (0x337)
	}, ; 166
	%struct.TypeMapModuleEntry {
		i32 33555386, ; uint32_t type_token_id (0x20003ba)
		i32 295; uint32_t java_map_index (0x127)
	}, ; 167
	%struct.TypeMapModuleEntry {
		i32 33555388, ; uint32_t type_token_id (0x20003bc)
		i32 80; uint32_t java_map_index (0x50)
	}, ; 168
	%struct.TypeMapModuleEntry {
		i32 33555390, ; uint32_t type_token_id (0x20003be)
		i32 1022; uint32_t java_map_index (0x3fe)
	}, ; 169
	%struct.TypeMapModuleEntry {
		i32 33555392, ; uint32_t type_token_id (0x20003c0)
		i32 818; uint32_t java_map_index (0x332)
	}, ; 170
	%struct.TypeMapModuleEntry {
		i32 33555394, ; uint32_t type_token_id (0x20003c2)
		i32 400; uint32_t java_map_index (0x190)
	}, ; 171
	%struct.TypeMapModuleEntry {
		i32 33555396, ; uint32_t type_token_id (0x20003c4)
		i32 1233; uint32_t java_map_index (0x4d1)
	}, ; 172
	%struct.TypeMapModuleEntry {
		i32 33555398, ; uint32_t type_token_id (0x20003c6)
		i32 1049; uint32_t java_map_index (0x419)
	}, ; 173
	%struct.TypeMapModuleEntry {
		i32 33555400, ; uint32_t type_token_id (0x20003c8)
		i32 595; uint32_t java_map_index (0x253)
	}, ; 174
	%struct.TypeMapModuleEntry {
		i32 33555402, ; uint32_t type_token_id (0x20003ca)
		i32 148; uint32_t java_map_index (0x94)
	}, ; 175
	%struct.TypeMapModuleEntry {
		i32 33555405, ; uint32_t type_token_id (0x20003cd)
		i32 375; uint32_t java_map_index (0x177)
	}, ; 176
	%struct.TypeMapModuleEntry {
		i32 33555407, ; uint32_t type_token_id (0x20003cf)
		i32 421; uint32_t java_map_index (0x1a5)
	}, ; 177
	%struct.TypeMapModuleEntry {
		i32 33555409, ; uint32_t type_token_id (0x20003d1)
		i32 1001; uint32_t java_map_index (0x3e9)
	}, ; 178
	%struct.TypeMapModuleEntry {
		i32 33555411, ; uint32_t type_token_id (0x20003d3)
		i32 887; uint32_t java_map_index (0x377)
	}, ; 179
	%struct.TypeMapModuleEntry {
		i32 33555418, ; uint32_t type_token_id (0x20003da)
		i32 753; uint32_t java_map_index (0x2f1)
	}, ; 180
	%struct.TypeMapModuleEntry {
		i32 33555420, ; uint32_t type_token_id (0x20003dc)
		i32 851; uint32_t java_map_index (0x353)
	}, ; 181
	%struct.TypeMapModuleEntry {
		i32 33555423, ; uint32_t type_token_id (0x20003df)
		i32 455; uint32_t java_map_index (0x1c7)
	}, ; 182
	%struct.TypeMapModuleEntry {
		i32 33555427, ; uint32_t type_token_id (0x20003e3)
		i32 9; uint32_t java_map_index (0x9)
	}, ; 183
	%struct.TypeMapModuleEntry {
		i32 33555429, ; uint32_t type_token_id (0x20003e5)
		i32 1182; uint32_t java_map_index (0x49e)
	}, ; 184
	%struct.TypeMapModuleEntry {
		i32 33555431, ; uint32_t type_token_id (0x20003e7)
		i32 251; uint32_t java_map_index (0xfb)
	}, ; 185
	%struct.TypeMapModuleEntry {
		i32 33555434, ; uint32_t type_token_id (0x20003ea)
		i32 1236; uint32_t java_map_index (0x4d4)
	}, ; 186
	%struct.TypeMapModuleEntry {
		i32 33555437, ; uint32_t type_token_id (0x20003ed)
		i32 155; uint32_t java_map_index (0x9b)
	}, ; 187
	%struct.TypeMapModuleEntry {
		i32 33555439, ; uint32_t type_token_id (0x20003ef)
		i32 420; uint32_t java_map_index (0x1a4)
	}, ; 188
	%struct.TypeMapModuleEntry {
		i32 33555442, ; uint32_t type_token_id (0x20003f2)
		i32 394; uint32_t java_map_index (0x18a)
	}, ; 189
	%struct.TypeMapModuleEntry {
		i32 33555448, ; uint32_t type_token_id (0x20003f8)
		i32 279; uint32_t java_map_index (0x117)
	}, ; 190
	%struct.TypeMapModuleEntry {
		i32 33555454, ; uint32_t type_token_id (0x20003fe)
		i32 1023; uint32_t java_map_index (0x3ff)
	}, ; 191
	%struct.TypeMapModuleEntry {
		i32 33555461, ; uint32_t type_token_id (0x2000405)
		i32 1242; uint32_t java_map_index (0x4da)
	}, ; 192
	%struct.TypeMapModuleEntry {
		i32 33555463, ; uint32_t type_token_id (0x2000407)
		i32 1119; uint32_t java_map_index (0x45f)
	}, ; 193
	%struct.TypeMapModuleEntry {
		i32 33555468, ; uint32_t type_token_id (0x200040c)
		i32 555; uint32_t java_map_index (0x22b)
	}, ; 194
	%struct.TypeMapModuleEntry {
		i32 33555472, ; uint32_t type_token_id (0x2000410)
		i32 1181; uint32_t java_map_index (0x49d)
	}, ; 195
	%struct.TypeMapModuleEntry {
		i32 33555475, ; uint32_t type_token_id (0x2000413)
		i32 1187; uint32_t java_map_index (0x4a3)
	}, ; 196
	%struct.TypeMapModuleEntry {
		i32 33555482, ; uint32_t type_token_id (0x200041a)
		i32 114; uint32_t java_map_index (0x72)
	}, ; 197
	%struct.TypeMapModuleEntry {
		i32 33555485, ; uint32_t type_token_id (0x200041d)
		i32 686; uint32_t java_map_index (0x2ae)
	}, ; 198
	%struct.TypeMapModuleEntry {
		i32 33555490, ; uint32_t type_token_id (0x2000422)
		i32 331; uint32_t java_map_index (0x14b)
	}, ; 199
	%struct.TypeMapModuleEntry {
		i32 33555492, ; uint32_t type_token_id (0x2000424)
		i32 3; uint32_t java_map_index (0x3)
	}, ; 200
	%struct.TypeMapModuleEntry {
		i32 33555494, ; uint32_t type_token_id (0x2000426)
		i32 210; uint32_t java_map_index (0xd2)
	}, ; 201
	%struct.TypeMapModuleEntry {
		i32 33555497, ; uint32_t type_token_id (0x2000429)
		i32 319; uint32_t java_map_index (0x13f)
	}, ; 202
	%struct.TypeMapModuleEntry {
		i32 33555499, ; uint32_t type_token_id (0x200042b)
		i32 678; uint32_t java_map_index (0x2a6)
	}, ; 203
	%struct.TypeMapModuleEntry {
		i32 33555505, ; uint32_t type_token_id (0x2000431)
		i32 525; uint32_t java_map_index (0x20d)
	}, ; 204
	%struct.TypeMapModuleEntry {
		i32 33555509, ; uint32_t type_token_id (0x2000435)
		i32 1003; uint32_t java_map_index (0x3eb)
	} ; 205
], align 4

@module19_managed_to_java = internal dso_local constant [3 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554438, ; uint32_t type_token_id (0x2000006)
		i32 376; uint32_t java_map_index (0x178)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554439, ; uint32_t type_token_id (0x2000007)
		i32 1046; uint32_t java_map_index (0x416)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554440, ; uint32_t type_token_id (0x2000008)
		i32 1103; uint32_t java_map_index (0x44f)
	} ; 2
], align 4

@module20_managed_to_java = internal dso_local constant [3 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554471, ; uint32_t type_token_id (0x2000027)
		i32 346; uint32_t java_map_index (0x15a)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554472, ; uint32_t type_token_id (0x2000028)
		i32 644; uint32_t java_map_index (0x284)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554474, ; uint32_t type_token_id (0x200002a)
		i32 889; uint32_t java_map_index (0x379)
	} ; 2
], align 4

@module20_managed_to_java_duplicates = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554473, ; uint32_t type_token_id (0x2000029)
		i32 644; uint32_t java_map_index (0x284)
	} ; 0
], align 4

@module21_managed_to_java = internal dso_local constant [7 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554440, ; uint32_t type_token_id (0x2000008)
		i32 546; uint32_t java_map_index (0x222)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554457, ; uint32_t type_token_id (0x2000019)
		i32 419; uint32_t java_map_index (0x1a3)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554460, ; uint32_t type_token_id (0x200001c)
		i32 841; uint32_t java_map_index (0x349)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554467, ; uint32_t type_token_id (0x2000023)
		i32 549; uint32_t java_map_index (0x225)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554468, ; uint32_t type_token_id (0x2000024)
		i32 447; uint32_t java_map_index (0x1bf)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554470, ; uint32_t type_token_id (0x2000026)
		i32 730; uint32_t java_map_index (0x2da)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554473, ; uint32_t type_token_id (0x2000029)
		i32 404; uint32_t java_map_index (0x194)
	} ; 6
], align 4

@module22_managed_to_java = internal dso_local constant [9 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554439, ; uint32_t type_token_id (0x2000007)
		i32 675; uint32_t java_map_index (0x2a3)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554441, ; uint32_t type_token_id (0x2000009)
		i32 1069; uint32_t java_map_index (0x42d)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554443, ; uint32_t type_token_id (0x200000b)
		i32 545; uint32_t java_map_index (0x221)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554444, ; uint32_t type_token_id (0x200000c)
		i32 142; uint32_t java_map_index (0x8e)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554445, ; uint32_t type_token_id (0x200000d)
		i32 1239; uint32_t java_map_index (0x4d7)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554447, ; uint32_t type_token_id (0x200000f)
		i32 489; uint32_t java_map_index (0x1e9)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554448, ; uint32_t type_token_id (0x2000010)
		i32 999; uint32_t java_map_index (0x3e7)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554449, ; uint32_t type_token_id (0x2000011)
		i32 436; uint32_t java_map_index (0x1b4)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554452, ; uint32_t type_token_id (0x2000014)
		i32 789; uint32_t java_map_index (0x315)
	} ; 8
], align 4

@module22_managed_to_java_duplicates = internal dso_local constant [5 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554440, ; uint32_t type_token_id (0x2000008)
		i32 675; uint32_t java_map_index (0x2a3)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554442, ; uint32_t type_token_id (0x200000a)
		i32 1069; uint32_t java_map_index (0x42d)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554446, ; uint32_t type_token_id (0x200000e)
		i32 1239; uint32_t java_map_index (0x4d7)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554450, ; uint32_t type_token_id (0x2000012)
		i32 436; uint32_t java_map_index (0x1b4)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554451, ; uint32_t type_token_id (0x2000013)
		i32 999; uint32_t java_map_index (0x3e7)
	} ; 4
], align 4

@module23_managed_to_java = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554443, ; uint32_t type_token_id (0x200000b)
		i32 819; uint32_t java_map_index (0x333)
	} ; 0
], align 4

@module24_managed_to_java = internal dso_local constant [4 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554497, ; uint32_t type_token_id (0x2000041)
		i32 401; uint32_t java_map_index (0x191)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554498, ; uint32_t type_token_id (0x2000042)
		i32 146; uint32_t java_map_index (0x92)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554510, ; uint32_t type_token_id (0x200004e)
		i32 627; uint32_t java_map_index (0x273)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554520, ; uint32_t type_token_id (0x2000058)
		i32 341; uint32_t java_map_index (0x155)
	} ; 3
], align 4

@module25_managed_to_java = internal dso_local constant [106 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33555204, ; uint32_t type_token_id (0x2000304)
		i32 168; uint32_t java_map_index (0xa8)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33555205, ; uint32_t type_token_id (0x2000305)
		i32 876; uint32_t java_map_index (0x36c)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33555206, ; uint32_t type_token_id (0x2000306)
		i32 246; uint32_t java_map_index (0xf6)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33555223, ; uint32_t type_token_id (0x2000317)
		i32 626; uint32_t java_map_index (0x272)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33555224, ; uint32_t type_token_id (0x2000318)
		i32 1137; uint32_t java_map_index (0x471)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33555225, ; uint32_t type_token_id (0x2000319)
		i32 1241; uint32_t java_map_index (0x4d9)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33555226, ; uint32_t type_token_id (0x200031a)
		i32 176; uint32_t java_map_index (0xb0)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33555227, ; uint32_t type_token_id (0x200031b)
		i32 264; uint32_t java_map_index (0x108)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33555230, ; uint32_t type_token_id (0x200031e)
		i32 904; uint32_t java_map_index (0x388)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33555231, ; uint32_t type_token_id (0x200031f)
		i32 685; uint32_t java_map_index (0x2ad)
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 33555233, ; uint32_t type_token_id (0x2000321)
		i32 676; uint32_t java_map_index (0x2a4)
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 33555234, ; uint32_t type_token_id (0x2000322)
		i32 44; uint32_t java_map_index (0x2c)
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 33555237, ; uint32_t type_token_id (0x2000325)
		i32 318; uint32_t java_map_index (0x13e)
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 33555240, ; uint32_t type_token_id (0x2000328)
		i32 405; uint32_t java_map_index (0x195)
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 33555254, ; uint32_t type_token_id (0x2000336)
		i32 390; uint32_t java_map_index (0x186)
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 33555255, ; uint32_t type_token_id (0x2000337)
		i32 290; uint32_t java_map_index (0x122)
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 33555269, ; uint32_t type_token_id (0x2000345)
		i32 1214; uint32_t java_map_index (0x4be)
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 33555271, ; uint32_t type_token_id (0x2000347)
		i32 825; uint32_t java_map_index (0x339)
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 33555272, ; uint32_t type_token_id (0x2000348)
		i32 891; uint32_t java_map_index (0x37b)
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 33555273, ; uint32_t type_token_id (0x2000349)
		i32 339; uint32_t java_map_index (0x153)
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 33555274, ; uint32_t type_token_id (0x200034a)
		i32 84; uint32_t java_map_index (0x54)
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 33555275, ; uint32_t type_token_id (0x200034b)
		i32 1099; uint32_t java_map_index (0x44b)
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 33555276, ; uint32_t type_token_id (0x200034c)
		i32 369; uint32_t java_map_index (0x171)
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 33555277, ; uint32_t type_token_id (0x200034d)
		i32 316; uint32_t java_map_index (0x13c)
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 33555278, ; uint32_t type_token_id (0x200034e)
		i32 721; uint32_t java_map_index (0x2d1)
	}, ; 24
	%struct.TypeMapModuleEntry {
		i32 33555279, ; uint32_t type_token_id (0x200034f)
		i32 952; uint32_t java_map_index (0x3b8)
	}, ; 25
	%struct.TypeMapModuleEntry {
		i32 33555280, ; uint32_t type_token_id (0x2000350)
		i32 1038; uint32_t java_map_index (0x40e)
	}, ; 26
	%struct.TypeMapModuleEntry {
		i32 33555281, ; uint32_t type_token_id (0x2000351)
		i32 566; uint32_t java_map_index (0x236)
	}, ; 27
	%struct.TypeMapModuleEntry {
		i32 33555282, ; uint32_t type_token_id (0x2000352)
		i32 726; uint32_t java_map_index (0x2d6)
	}, ; 28
	%struct.TypeMapModuleEntry {
		i32 33555283, ; uint32_t type_token_id (0x2000353)
		i32 899; uint32_t java_map_index (0x383)
	}, ; 29
	%struct.TypeMapModuleEntry {
		i32 33555284, ; uint32_t type_token_id (0x2000354)
		i32 1082; uint32_t java_map_index (0x43a)
	}, ; 30
	%struct.TypeMapModuleEntry {
		i32 33555287, ; uint32_t type_token_id (0x2000357)
		i32 410; uint32_t java_map_index (0x19a)
	}, ; 31
	%struct.TypeMapModuleEntry {
		i32 33555297, ; uint32_t type_token_id (0x2000361)
		i32 901; uint32_t java_map_index (0x385)
	}, ; 32
	%struct.TypeMapModuleEntry {
		i32 33555298, ; uint32_t type_token_id (0x2000362)
		i32 1042; uint32_t java_map_index (0x412)
	}, ; 33
	%struct.TypeMapModuleEntry {
		i32 33555299, ; uint32_t type_token_id (0x2000363)
		i32 1013; uint32_t java_map_index (0x3f5)
	}, ; 34
	%struct.TypeMapModuleEntry {
		i32 33555300, ; uint32_t type_token_id (0x2000364)
		i32 199; uint32_t java_map_index (0xc7)
	}, ; 35
	%struct.TypeMapModuleEntry {
		i32 33555301, ; uint32_t type_token_id (0x2000365)
		i32 983; uint32_t java_map_index (0x3d7)
	}, ; 36
	%struct.TypeMapModuleEntry {
		i32 33555302, ; uint32_t type_token_id (0x2000366)
		i32 1122; uint32_t java_map_index (0x462)
	}, ; 37
	%struct.TypeMapModuleEntry {
		i32 33555303, ; uint32_t type_token_id (0x2000367)
		i32 214; uint32_t java_map_index (0xd6)
	}, ; 38
	%struct.TypeMapModuleEntry {
		i32 33555304, ; uint32_t type_token_id (0x2000368)
		i32 1149; uint32_t java_map_index (0x47d)
	}, ; 39
	%struct.TypeMapModuleEntry {
		i32 33555306, ; uint32_t type_token_id (0x200036a)
		i32 911; uint32_t java_map_index (0x38f)
	}, ; 40
	%struct.TypeMapModuleEntry {
		i32 33555307, ; uint32_t type_token_id (0x200036b)
		i32 879; uint32_t java_map_index (0x36f)
	}, ; 41
	%struct.TypeMapModuleEntry {
		i32 33555308, ; uint32_t type_token_id (0x200036c)
		i32 240; uint32_t java_map_index (0xf0)
	}, ; 42
	%struct.TypeMapModuleEntry {
		i32 33555312, ; uint32_t type_token_id (0x2000370)
		i32 910; uint32_t java_map_index (0x38e)
	}, ; 43
	%struct.TypeMapModuleEntry {
		i32 33555324, ; uint32_t type_token_id (0x200037c)
		i32 845; uint32_t java_map_index (0x34d)
	}, ; 44
	%struct.TypeMapModuleEntry {
		i32 33555325, ; uint32_t type_token_id (0x200037d)
		i32 503; uint32_t java_map_index (0x1f7)
	}, ; 45
	%struct.TypeMapModuleEntry {
		i32 33555326, ; uint32_t type_token_id (0x200037e)
		i32 81; uint32_t java_map_index (0x51)
	}, ; 46
	%struct.TypeMapModuleEntry {
		i32 33555328, ; uint32_t type_token_id (0x2000380)
		i32 397; uint32_t java_map_index (0x18d)
	}, ; 47
	%struct.TypeMapModuleEntry {
		i32 33555329, ; uint32_t type_token_id (0x2000381)
		i32 817; uint32_t java_map_index (0x331)
	}, ; 48
	%struct.TypeMapModuleEntry {
		i32 33555330, ; uint32_t type_token_id (0x2000382)
		i32 858; uint32_t java_map_index (0x35a)
	}, ; 49
	%struct.TypeMapModuleEntry {
		i32 33555331, ; uint32_t type_token_id (0x2000383)
		i32 930; uint32_t java_map_index (0x3a2)
	}, ; 50
	%struct.TypeMapModuleEntry {
		i32 33555332, ; uint32_t type_token_id (0x2000384)
		i32 1030; uint32_t java_map_index (0x406)
	}, ; 51
	%struct.TypeMapModuleEntry {
		i32 33555333, ; uint32_t type_token_id (0x2000385)
		i32 862; uint32_t java_map_index (0x35e)
	}, ; 52
	%struct.TypeMapModuleEntry {
		i32 33555334, ; uint32_t type_token_id (0x2000386)
		i32 202; uint32_t java_map_index (0xca)
	}, ; 53
	%struct.TypeMapModuleEntry {
		i32 33555335, ; uint32_t type_token_id (0x2000387)
		i32 964; uint32_t java_map_index (0x3c4)
	}, ; 54
	%struct.TypeMapModuleEntry {
		i32 33555336, ; uint32_t type_token_id (0x2000388)
		i32 1017; uint32_t java_map_index (0x3f9)
	}, ; 55
	%struct.TypeMapModuleEntry {
		i32 33555337, ; uint32_t type_token_id (0x2000389)
		i32 1016; uint32_t java_map_index (0x3f8)
	}, ; 56
	%struct.TypeMapModuleEntry {
		i32 33555338, ; uint32_t type_token_id (0x200038a)
		i32 133; uint32_t java_map_index (0x85)
	}, ; 57
	%struct.TypeMapModuleEntry {
		i32 33555339, ; uint32_t type_token_id (0x200038b)
		i32 787; uint32_t java_map_index (0x313)
	}, ; 58
	%struct.TypeMapModuleEntry {
		i32 33555341, ; uint32_t type_token_id (0x200038d)
		i32 164; uint32_t java_map_index (0xa4)
	}, ; 59
	%struct.TypeMapModuleEntry {
		i32 33555342, ; uint32_t type_token_id (0x200038e)
		i32 52; uint32_t java_map_index (0x34)
	}, ; 60
	%struct.TypeMapModuleEntry {
		i32 33555343, ; uint32_t type_token_id (0x200038f)
		i32 864; uint32_t java_map_index (0x360)
	}, ; 61
	%struct.TypeMapModuleEntry {
		i32 33555344, ; uint32_t type_token_id (0x2000390)
		i32 466; uint32_t java_map_index (0x1d2)
	}, ; 62
	%struct.TypeMapModuleEntry {
		i32 33555346, ; uint32_t type_token_id (0x2000392)
		i32 648; uint32_t java_map_index (0x288)
	}, ; 63
	%struct.TypeMapModuleEntry {
		i32 33555354, ; uint32_t type_token_id (0x200039a)
		i32 137; uint32_t java_map_index (0x89)
	}, ; 64
	%struct.TypeMapModuleEntry {
		i32 33555355, ; uint32_t type_token_id (0x200039b)
		i32 1056; uint32_t java_map_index (0x420)
	}, ; 65
	%struct.TypeMapModuleEntry {
		i32 33555356, ; uint32_t type_token_id (0x200039c)
		i32 75; uint32_t java_map_index (0x4b)
	}, ; 66
	%struct.TypeMapModuleEntry {
		i32 33555357, ; uint32_t type_token_id (0x200039d)
		i32 1199; uint32_t java_map_index (0x4af)
	}, ; 67
	%struct.TypeMapModuleEntry {
		i32 33555358, ; uint32_t type_token_id (0x200039e)
		i32 535; uint32_t java_map_index (0x217)
	}, ; 68
	%struct.TypeMapModuleEntry {
		i32 33555359, ; uint32_t type_token_id (0x200039f)
		i32 873; uint32_t java_map_index (0x369)
	}, ; 69
	%struct.TypeMapModuleEntry {
		i32 33555362, ; uint32_t type_token_id (0x20003a2)
		i32 633; uint32_t java_map_index (0x279)
	}, ; 70
	%struct.TypeMapModuleEntry {
		i32 33555363, ; uint32_t type_token_id (0x20003a3)
		i32 710; uint32_t java_map_index (0x2c6)
	}, ; 71
	%struct.TypeMapModuleEntry {
		i32 33555365, ; uint32_t type_token_id (0x20003a5)
		i32 78; uint32_t java_map_index (0x4e)
	}, ; 72
	%struct.TypeMapModuleEntry {
		i32 33555366, ; uint32_t type_token_id (0x20003a6)
		i32 154; uint32_t java_map_index (0x9a)
	}, ; 73
	%struct.TypeMapModuleEntry {
		i32 33555368, ; uint32_t type_token_id (0x20003a8)
		i32 892; uint32_t java_map_index (0x37c)
	}, ; 74
	%struct.TypeMapModuleEntry {
		i32 33555369, ; uint32_t type_token_id (0x20003a9)
		i32 65; uint32_t java_map_index (0x41)
	}, ; 75
	%struct.TypeMapModuleEntry {
		i32 33555371, ; uint32_t type_token_id (0x20003ab)
		i32 518; uint32_t java_map_index (0x206)
	}, ; 76
	%struct.TypeMapModuleEntry {
		i32 33555375, ; uint32_t type_token_id (0x20003af)
		i32 799; uint32_t java_map_index (0x31f)
	}, ; 77
	%struct.TypeMapModuleEntry {
		i32 33555376, ; uint32_t type_token_id (0x20003b0)
		i32 322; uint32_t java_map_index (0x142)
	}, ; 78
	%struct.TypeMapModuleEntry {
		i32 33555531, ; uint32_t type_token_id (0x200044b)
		i32 1170; uint32_t java_map_index (0x492)
	}, ; 79
	%struct.TypeMapModuleEntry {
		i32 33555707, ; uint32_t type_token_id (0x20004fb)
		i32 505; uint32_t java_map_index (0x1f9)
	}, ; 80
	%struct.TypeMapModuleEntry {
		i32 33555786, ; uint32_t type_token_id (0x200054a)
		i32 564; uint32_t java_map_index (0x234)
	}, ; 81
	%struct.TypeMapModuleEntry {
		i32 33555792, ; uint32_t type_token_id (0x2000550)
		i32 1189; uint32_t java_map_index (0x4a5)
	}, ; 82
	%struct.TypeMapModuleEntry {
		i32 33555803, ; uint32_t type_token_id (0x200055b)
		i32 831; uint32_t java_map_index (0x33f)
	}, ; 83
	%struct.TypeMapModuleEntry {
		i32 33555813, ; uint32_t type_token_id (0x2000565)
		i32 811; uint32_t java_map_index (0x32b)
	}, ; 84
	%struct.TypeMapModuleEntry {
		i32 33555815, ; uint32_t type_token_id (0x2000567)
		i32 457; uint32_t java_map_index (0x1c9)
	}, ; 85
	%struct.TypeMapModuleEntry {
		i32 33555816, ; uint32_t type_token_id (0x2000568)
		i32 102; uint32_t java_map_index (0x66)
	}, ; 86
	%struct.TypeMapModuleEntry {
		i32 33555823, ; uint32_t type_token_id (0x200056f)
		i32 329; uint32_t java_map_index (0x149)
	}, ; 87
	%struct.TypeMapModuleEntry {
		i32 33555826, ; uint32_t type_token_id (0x2000572)
		i32 720; uint32_t java_map_index (0x2d0)
	}, ; 88
	%struct.TypeMapModuleEntry {
		i32 33555827, ; uint32_t type_token_id (0x2000573)
		i32 340; uint32_t java_map_index (0x154)
	}, ; 89
	%struct.TypeMapModuleEntry {
		i32 33555828, ; uint32_t type_token_id (0x2000574)
		i32 38; uint32_t java_map_index (0x26)
	}, ; 90
	%struct.TypeMapModuleEntry {
		i32 33555831, ; uint32_t type_token_id (0x2000577)
		i32 705; uint32_t java_map_index (0x2c1)
	}, ; 91
	%struct.TypeMapModuleEntry {
		i32 33555835, ; uint32_t type_token_id (0x200057b)
		i32 60; uint32_t java_map_index (0x3c)
	}, ; 92
	%struct.TypeMapModuleEntry {
		i32 33555836, ; uint32_t type_token_id (0x200057c)
		i32 48; uint32_t java_map_index (0x30)
	}, ; 93
	%struct.TypeMapModuleEntry {
		i32 33555845, ; uint32_t type_token_id (0x2000585)
		i32 691; uint32_t java_map_index (0x2b3)
	}, ; 94
	%struct.TypeMapModuleEntry {
		i32 33555848, ; uint32_t type_token_id (0x2000588)
		i32 423; uint32_t java_map_index (0x1a7)
	}, ; 95
	%struct.TypeMapModuleEntry {
		i32 33555851, ; uint32_t type_token_id (0x200058b)
		i32 88; uint32_t java_map_index (0x58)
	}, ; 96
	%struct.TypeMapModuleEntry {
		i32 33555856, ; uint32_t type_token_id (0x2000590)
		i32 300; uint32_t java_map_index (0x12c)
	}, ; 97
	%struct.TypeMapModuleEntry {
		i32 33555857, ; uint32_t type_token_id (0x2000591)
		i32 378; uint32_t java_map_index (0x17a)
	}, ; 98
	%struct.TypeMapModuleEntry {
		i32 33555858, ; uint32_t type_token_id (0x2000592)
		i32 323; uint32_t java_map_index (0x143)
	}, ; 99
	%struct.TypeMapModuleEntry {
		i32 33555859, ; uint32_t type_token_id (0x2000593)
		i32 134; uint32_t java_map_index (0x86)
	}, ; 100
	%struct.TypeMapModuleEntry {
		i32 33555861, ; uint32_t type_token_id (0x2000595)
		i32 1175; uint32_t java_map_index (0x497)
	}, ; 101
	%struct.TypeMapModuleEntry {
		i32 33555862, ; uint32_t type_token_id (0x2000596)
		i32 875; uint32_t java_map_index (0x36b)
	}, ; 102
	%struct.TypeMapModuleEntry {
		i32 33555955, ; uint32_t type_token_id (0x20005f3)
		i32 201; uint32_t java_map_index (0xc9)
	}, ; 103
	%struct.TypeMapModuleEntry {
		i32 33555957, ; uint32_t type_token_id (0x20005f5)
		i32 980; uint32_t java_map_index (0x3d4)
	}, ; 104
	%struct.TypeMapModuleEntry {
		i32 33555958, ; uint32_t type_token_id (0x20005f6)
		i32 1054; uint32_t java_map_index (0x41e)
	} ; 105
], align 4

@module26_managed_to_java = internal dso_local constant [2 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554511, ; uint32_t type_token_id (0x200004f)
		i32 953; uint32_t java_map_index (0x3b9)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554512, ; uint32_t type_token_id (0x2000050)
		i32 1178; uint32_t java_map_index (0x49a)
	} ; 1
], align 4

@module27_managed_to_java = internal dso_local constant [17 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554445, ; uint32_t type_token_id (0x200000d)
		i32 482; uint32_t java_map_index (0x1e2)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554447, ; uint32_t type_token_id (0x200000f)
		i32 454; uint32_t java_map_index (0x1c6)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554449, ; uint32_t type_token_id (0x2000011)
		i32 521; uint32_t java_map_index (0x209)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554450, ; uint32_t type_token_id (0x2000012)
		i32 561; uint32_t java_map_index (0x231)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554451, ; uint32_t type_token_id (0x2000013)
		i32 971; uint32_t java_map_index (0x3cb)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554452, ; uint32_t type_token_id (0x2000014)
		i32 63; uint32_t java_map_index (0x3f)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554453, ; uint32_t type_token_id (0x2000015)
		i32 759; uint32_t java_map_index (0x2f7)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554454, ; uint32_t type_token_id (0x2000016)
		i32 637; uint32_t java_map_index (0x27d)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554455, ; uint32_t type_token_id (0x2000017)
		i32 478; uint32_t java_map_index (0x1de)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33554456, ; uint32_t type_token_id (0x2000018)
		i32 630; uint32_t java_map_index (0x276)
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 33554457, ; uint32_t type_token_id (0x2000019)
		i32 607; uint32_t java_map_index (0x25f)
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 33554458, ; uint32_t type_token_id (0x200001a)
		i32 72; uint32_t java_map_index (0x48)
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 33554459, ; uint32_t type_token_id (0x200001b)
		i32 657; uint32_t java_map_index (0x291)
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 33554462, ; uint32_t type_token_id (0x200001e)
		i32 26; uint32_t java_map_index (0x1a)
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 33554463, ; uint32_t type_token_id (0x200001f)
		i32 931; uint32_t java_map_index (0x3a3)
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 33554465, ; uint32_t type_token_id (0x2000021)
		i32 444; uint32_t java_map_index (0x1bc)
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 33554466, ; uint32_t type_token_id (0x2000022)
		i32 946; uint32_t java_map_index (0x3b2)
	} ; 16
], align 4

@module27_managed_to_java_duplicates = internal dso_local constant [6 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554446, ; uint32_t type_token_id (0x200000e)
		i32 482; uint32_t java_map_index (0x1e2)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554448, ; uint32_t type_token_id (0x2000010)
		i32 454; uint32_t java_map_index (0x1c6)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554460, ; uint32_t type_token_id (0x200001c)
		i32 657; uint32_t java_map_index (0x291)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554461, ; uint32_t type_token_id (0x200001d)
		i32 72; uint32_t java_map_index (0x48)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554464, ; uint32_t type_token_id (0x2000020)
		i32 931; uint32_t java_map_index (0x3a3)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554467, ; uint32_t type_token_id (0x2000023)
		i32 946; uint32_t java_map_index (0x3b2)
	} ; 5
], align 4

@module28_managed_to_java = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554439, ; uint32_t type_token_id (0x2000007)
		i32 1039; uint32_t java_map_index (0x40f)
	} ; 0
], align 4

@module28_managed_to_java_duplicates = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554440, ; uint32_t type_token_id (0x2000008)
		i32 1039; uint32_t java_map_index (0x40f)
	} ; 0
], align 4

@module29_managed_to_java = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554434, ; uint32_t type_token_id (0x2000002)
		i32 386; uint32_t java_map_index (0x182)
	} ; 0
], align 4

@module30_managed_to_java = internal dso_local constant [19 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554466, ; uint32_t type_token_id (0x2000022)
		i32 542; uint32_t java_map_index (0x21e)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554467, ; uint32_t type_token_id (0x2000023)
		i32 6; uint32_t java_map_index (0x6)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554468, ; uint32_t type_token_id (0x2000024)
		i32 1129; uint32_t java_map_index (0x469)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554469, ; uint32_t type_token_id (0x2000025)
		i32 184; uint32_t java_map_index (0xb8)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554471, ; uint32_t type_token_id (0x2000027)
		i32 285; uint32_t java_map_index (0x11d)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554472, ; uint32_t type_token_id (0x2000028)
		i32 120; uint32_t java_map_index (0x78)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554473, ; uint32_t type_token_id (0x2000029)
		i32 1179; uint32_t java_map_index (0x49b)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554475, ; uint32_t type_token_id (0x200002b)
		i32 560; uint32_t java_map_index (0x230)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554476, ; uint32_t type_token_id (0x200002c)
		i32 614; uint32_t java_map_index (0x266)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33554478, ; uint32_t type_token_id (0x200002e)
		i32 1235; uint32_t java_map_index (0x4d3)
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 33554480, ; uint32_t type_token_id (0x2000030)
		i32 668; uint32_t java_map_index (0x29c)
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 33554484, ; uint32_t type_token_id (0x2000034)
		i32 49; uint32_t java_map_index (0x31)
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 33554494, ; uint32_t type_token_id (0x200003e)
		i32 187; uint32_t java_map_index (0xbb)
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 33554496, ; uint32_t type_token_id (0x2000040)
		i32 651; uint32_t java_map_index (0x28b)
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 33554499, ; uint32_t type_token_id (0x2000043)
		i32 723; uint32_t java_map_index (0x2d3)
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 33554500, ; uint32_t type_token_id (0x2000044)
		i32 116; uint32_t java_map_index (0x74)
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 33554502, ; uint32_t type_token_id (0x2000046)
		i32 978; uint32_t java_map_index (0x3d2)
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 33554503, ; uint32_t type_token_id (0x2000047)
		i32 33; uint32_t java_map_index (0x21)
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 33554504, ; uint32_t type_token_id (0x2000048)
		i32 842; uint32_t java_map_index (0x34a)
	} ; 18
], align 4

@module30_managed_to_java_duplicates = internal dso_local constant [10 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554470, ; uint32_t type_token_id (0x2000026)
		i32 184; uint32_t java_map_index (0xb8)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554474, ; uint32_t type_token_id (0x200002a)
		i32 1179; uint32_t java_map_index (0x49b)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554477, ; uint32_t type_token_id (0x200002d)
		i32 614; uint32_t java_map_index (0x266)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554479, ; uint32_t type_token_id (0x200002f)
		i32 1235; uint32_t java_map_index (0x4d3)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554481, ; uint32_t type_token_id (0x2000031)
		i32 668; uint32_t java_map_index (0x29c)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554493, ; uint32_t type_token_id (0x200003d)
		i32 560; uint32_t java_map_index (0x230)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554495, ; uint32_t type_token_id (0x200003f)
		i32 187; uint32_t java_map_index (0xbb)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554497, ; uint32_t type_token_id (0x2000041)
		i32 651; uint32_t java_map_index (0x28b)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554501, ; uint32_t type_token_id (0x2000045)
		i32 116; uint32_t java_map_index (0x74)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33554505, ; uint32_t type_token_id (0x2000049)
		i32 842; uint32_t java_map_index (0x34a)
	} ; 9
], align 4

@module31_managed_to_java = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554436, ; uint32_t type_token_id (0x2000004)
		i32 1093; uint32_t java_map_index (0x445)
	} ; 0
], align 4

@module31_managed_to_java_duplicates = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554437, ; uint32_t type_token_id (0x2000005)
		i32 1093; uint32_t java_map_index (0x445)
	} ; 0
], align 4

@module32_managed_to_java = internal dso_local constant [66 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554581, ; uint32_t type_token_id (0x2000095)
		i32 863; uint32_t java_map_index (0x35f)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554582, ; uint32_t type_token_id (0x2000096)
		i32 35; uint32_t java_map_index (0x23)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554583, ; uint32_t type_token_id (0x2000097)
		i32 101; uint32_t java_map_index (0x65)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554609, ; uint32_t type_token_id (0x20000b1)
		i32 986; uint32_t java_map_index (0x3da)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554610, ; uint32_t type_token_id (0x20000b2)
		i32 361; uint32_t java_map_index (0x169)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554698, ; uint32_t type_token_id (0x200010a)
		i32 1009; uint32_t java_map_index (0x3f1)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554699, ; uint32_t type_token_id (0x200010b)
		i32 452; uint32_t java_map_index (0x1c4)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554701, ; uint32_t type_token_id (0x200010d)
		i32 1244; uint32_t java_map_index (0x4dc)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554702, ; uint32_t type_token_id (0x200010e)
		i32 878; uint32_t java_map_index (0x36e)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33554703, ; uint32_t type_token_id (0x200010f)
		i32 734; uint32_t java_map_index (0x2de)
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 33554705, ; uint32_t type_token_id (0x2000111)
		i32 208; uint32_t java_map_index (0xd0)
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 33554706, ; uint32_t type_token_id (0x2000112)
		i32 62; uint32_t java_map_index (0x3e)
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 33554707, ; uint32_t type_token_id (0x2000113)
		i32 926; uint32_t java_map_index (0x39e)
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 33554708, ; uint32_t type_token_id (0x2000114)
		i32 474; uint32_t java_map_index (0x1da)
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 33554713, ; uint32_t type_token_id (0x2000119)
		i32 1107; uint32_t java_map_index (0x453)
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 33554720, ; uint32_t type_token_id (0x2000120)
		i32 680; uint32_t java_map_index (0x2a8)
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 33554725, ; uint32_t type_token_id (0x2000125)
		i32 55; uint32_t java_map_index (0x37)
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 33554726, ; uint32_t type_token_id (0x2000126)
		i32 719; uint32_t java_map_index (0x2cf)
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 33554743, ; uint32_t type_token_id (0x2000137)
		i32 229; uint32_t java_map_index (0xe5)
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 33554745, ; uint32_t type_token_id (0x2000139)
		i32 354; uint32_t java_map_index (0x162)
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 33554746, ; uint32_t type_token_id (0x200013a)
		i32 740; uint32_t java_map_index (0x2e4)
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 33554747, ; uint32_t type_token_id (0x200013b)
		i32 777; uint32_t java_map_index (0x309)
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 33554748, ; uint32_t type_token_id (0x200013c)
		i32 812; uint32_t java_map_index (0x32c)
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 33554750, ; uint32_t type_token_id (0x200013e)
		i32 548; uint32_t java_map_index (0x224)
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 33554751, ; uint32_t type_token_id (0x200013f)
		i32 1165; uint32_t java_map_index (0x48d)
	}, ; 24
	%struct.TypeMapModuleEntry {
		i32 33554752, ; uint32_t type_token_id (0x2000140)
		i32 523; uint32_t java_map_index (0x20b)
	}, ; 25
	%struct.TypeMapModuleEntry {
		i32 33554753, ; uint32_t type_token_id (0x2000141)
		i32 126; uint32_t java_map_index (0x7e)
	}, ; 26
	%struct.TypeMapModuleEntry {
		i32 33554754, ; uint32_t type_token_id (0x2000142)
		i32 471; uint32_t java_map_index (0x1d7)
	}, ; 27
	%struct.TypeMapModuleEntry {
		i32 33554756, ; uint32_t type_token_id (0x2000144)
		i32 807; uint32_t java_map_index (0x327)
	}, ; 28
	%struct.TypeMapModuleEntry {
		i32 33554757, ; uint32_t type_token_id (0x2000145)
		i32 1184; uint32_t java_map_index (0x4a0)
	}, ; 29
	%struct.TypeMapModuleEntry {
		i32 33554759, ; uint32_t type_token_id (0x2000147)
		i32 175; uint32_t java_map_index (0xaf)
	}, ; 30
	%struct.TypeMapModuleEntry {
		i32 33554760, ; uint32_t type_token_id (0x2000148)
		i32 83; uint32_t java_map_index (0x53)
	}, ; 31
	%struct.TypeMapModuleEntry {
		i32 33554761, ; uint32_t type_token_id (0x2000149)
		i32 128; uint32_t java_map_index (0x80)
	}, ; 32
	%struct.TypeMapModuleEntry {
		i32 33554762, ; uint32_t type_token_id (0x200014a)
		i32 1192; uint32_t java_map_index (0x4a8)
	}, ; 33
	%struct.TypeMapModuleEntry {
		i32 33554763, ; uint32_t type_token_id (0x200014b)
		i32 1; uint32_t java_map_index (0x1)
	}, ; 34
	%struct.TypeMapModuleEntry {
		i32 33554764, ; uint32_t type_token_id (0x200014c)
		i32 1232; uint32_t java_map_index (0x4d0)
	}, ; 35
	%struct.TypeMapModuleEntry {
		i32 33554766, ; uint32_t type_token_id (0x200014e)
		i32 500; uint32_t java_map_index (0x1f4)
	}, ; 36
	%struct.TypeMapModuleEntry {
		i32 33554767, ; uint32_t type_token_id (0x200014f)
		i32 256; uint32_t java_map_index (0x100)
	}, ; 37
	%struct.TypeMapModuleEntry {
		i32 33554768, ; uint32_t type_token_id (0x2000150)
		i32 659; uint32_t java_map_index (0x293)
	}, ; 38
	%struct.TypeMapModuleEntry {
		i32 33554769, ; uint32_t type_token_id (0x2000151)
		i32 1206; uint32_t java_map_index (0x4b6)
	}, ; 39
	%struct.TypeMapModuleEntry {
		i32 33554772, ; uint32_t type_token_id (0x2000154)
		i32 283; uint32_t java_map_index (0x11b)
	}, ; 40
	%struct.TypeMapModuleEntry {
		i32 33554774, ; uint32_t type_token_id (0x2000156)
		i32 1138; uint32_t java_map_index (0x472)
	}, ; 41
	%struct.TypeMapModuleEntry {
		i32 33554775, ; uint32_t type_token_id (0x2000157)
		i32 16; uint32_t java_map_index (0x10)
	}, ; 42
	%struct.TypeMapModuleEntry {
		i32 33554777, ; uint32_t type_token_id (0x2000159)
		i32 430; uint32_t java_map_index (0x1ae)
	}, ; 43
	%struct.TypeMapModuleEntry {
		i32 33554780, ; uint32_t type_token_id (0x200015c)
		i32 157; uint32_t java_map_index (0x9d)
	}, ; 44
	%struct.TypeMapModuleEntry {
		i32 33554792, ; uint32_t type_token_id (0x2000168)
		i32 563; uint32_t java_map_index (0x233)
	}, ; 45
	%struct.TypeMapModuleEntry {
		i32 33554795, ; uint32_t type_token_id (0x200016b)
		i32 717; uint32_t java_map_index (0x2cd)
	}, ; 46
	%struct.TypeMapModuleEntry {
		i32 33554807, ; uint32_t type_token_id (0x2000177)
		i32 658; uint32_t java_map_index (0x292)
	}, ; 47
	%struct.TypeMapModuleEntry {
		i32 33554981, ; uint32_t type_token_id (0x2000225)
		i32 438; uint32_t java_map_index (0x1b6)
	}, ; 48
	%struct.TypeMapModuleEntry {
		i32 33554982, ; uint32_t type_token_id (0x2000226)
		i32 784; uint32_t java_map_index (0x310)
	}, ; 49
	%struct.TypeMapModuleEntry {
		i32 33554988, ; uint32_t type_token_id (0x200022c)
		i32 605; uint32_t java_map_index (0x25d)
	}, ; 50
	%struct.TypeMapModuleEntry {
		i32 33555059, ; uint32_t type_token_id (0x2000273)
		i32 748; uint32_t java_map_index (0x2ec)
	}, ; 51
	%struct.TypeMapModuleEntry {
		i32 33555101, ; uint32_t type_token_id (0x200029d)
		i32 1217; uint32_t java_map_index (0x4c1)
	}, ; 52
	%struct.TypeMapModuleEntry {
		i32 33555106, ; uint32_t type_token_id (0x20002a2)
		i32 908; uint32_t java_map_index (0x38c)
	}, ; 53
	%struct.TypeMapModuleEntry {
		i32 33555107, ; uint32_t type_token_id (0x20002a3)
		i32 574; uint32_t java_map_index (0x23e)
	}, ; 54
	%struct.TypeMapModuleEntry {
		i32 33555113, ; uint32_t type_token_id (0x20002a9)
		i32 223; uint32_t java_map_index (0xdf)
	}, ; 55
	%struct.TypeMapModuleEntry {
		i32 33555115, ; uint32_t type_token_id (0x20002ab)
		i32 905; uint32_t java_map_index (0x389)
	}, ; 56
	%struct.TypeMapModuleEntry {
		i32 33555120, ; uint32_t type_token_id (0x20002b0)
		i32 1155; uint32_t java_map_index (0x483)
	}, ; 57
	%struct.TypeMapModuleEntry {
		i32 33555131, ; uint32_t type_token_id (0x20002bb)
		i32 702; uint32_t java_map_index (0x2be)
	}, ; 58
	%struct.TypeMapModuleEntry {
		i32 33555202, ; uint32_t type_token_id (0x2000302)
		i32 794; uint32_t java_map_index (0x31a)
	}, ; 59
	%struct.TypeMapModuleEntry {
		i32 33555203, ; uint32_t type_token_id (0x2000303)
		i32 362; uint32_t java_map_index (0x16a)
	}, ; 60
	%struct.TypeMapModuleEntry {
		i32 33555212, ; uint32_t type_token_id (0x200030c)
		i32 610; uint32_t java_map_index (0x262)
	}, ; 61
	%struct.TypeMapModuleEntry {
		i32 33555213, ; uint32_t type_token_id (0x200030d)
		i32 522; uint32_t java_map_index (0x20a)
	}, ; 62
	%struct.TypeMapModuleEntry {
		i32 33555215, ; uint32_t type_token_id (0x200030f)
		i32 186; uint32_t java_map_index (0xba)
	}, ; 63
	%struct.TypeMapModuleEntry {
		i32 33555216, ; uint32_t type_token_id (0x2000310)
		i32 955; uint32_t java_map_index (0x3bb)
	}, ; 64
	%struct.TypeMapModuleEntry {
		i32 33555234, ; uint32_t type_token_id (0x2000322)
		i32 194; uint32_t java_map_index (0xc2)
	} ; 65
], align 4

@module32_managed_to_java_duplicates = internal dso_local constant [3 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554700, ; uint32_t type_token_id (0x200010c)
		i32 452; uint32_t java_map_index (0x1c4)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554704, ; uint32_t type_token_id (0x2000110)
		i32 734; uint32_t java_map_index (0x2de)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554709, ; uint32_t type_token_id (0x2000115)
		i32 474; uint32_t java_map_index (0x1da)
	} ; 2
], align 4

@module33_managed_to_java = internal dso_local constant [4 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554435, ; uint32_t type_token_id (0x2000003)
		i32 311; uint32_t java_map_index (0x137)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554436, ; uint32_t type_token_id (0x2000004)
		i32 1194; uint32_t java_map_index (0x4aa)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554437, ; uint32_t type_token_id (0x2000005)
		i32 350; uint32_t java_map_index (0x15e)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554439, ; uint32_t type_token_id (0x2000007)
		i32 245; uint32_t java_map_index (0xf5)
	} ; 3
], align 4

@module33_managed_to_java_duplicates = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554438, ; uint32_t type_token_id (0x2000006)
		i32 350; uint32_t java_map_index (0x15e)
	} ; 0
], align 4

@module34_managed_to_java = internal dso_local constant [6 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554448, ; uint32_t type_token_id (0x2000010)
		i32 298; uint32_t java_map_index (0x12a)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554449, ; uint32_t type_token_id (0x2000011)
		i32 751; uint32_t java_map_index (0x2ef)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554452, ; uint32_t type_token_id (0x2000014)
		i32 115; uint32_t java_map_index (0x73)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554455, ; uint32_t type_token_id (0x2000017)
		i32 292; uint32_t java_map_index (0x124)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554456, ; uint32_t type_token_id (0x2000018)
		i32 69; uint32_t java_map_index (0x45)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554457, ; uint32_t type_token_id (0x2000019)
		i32 805; uint32_t java_map_index (0x325)
	} ; 5
], align 4

@module34_managed_to_java_duplicates = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554450, ; uint32_t type_token_id (0x2000012)
		i32 751; uint32_t java_map_index (0x2ef)
	} ; 0
], align 4

@module35_managed_to_java = internal dso_local constant [41 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554507, ; uint32_t type_token_id (0x200004b)
		i32 1169; uint32_t java_map_index (0x491)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554508, ; uint32_t type_token_id (0x200004c)
		i32 1061; uint32_t java_map_index (0x425)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554510, ; uint32_t type_token_id (0x200004e)
		i32 715; uint32_t java_map_index (0x2cb)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554512, ; uint32_t type_token_id (0x2000050)
		i32 275; uint32_t java_map_index (0x113)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554513, ; uint32_t type_token_id (0x2000051)
		i32 947; uint32_t java_map_index (0x3b3)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554515, ; uint32_t type_token_id (0x2000053)
		i32 5; uint32_t java_map_index (0x5)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554516, ; uint32_t type_token_id (0x2000054)
		i32 843; uint32_t java_map_index (0x34b)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554517, ; uint32_t type_token_id (0x2000055)
		i32 979; uint32_t java_map_index (0x3d3)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554518, ; uint32_t type_token_id (0x2000056)
		i32 124; uint32_t java_map_index (0x7c)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33554520, ; uint32_t type_token_id (0x2000058)
		i32 681; uint32_t java_map_index (0x2a9)
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 33554521, ; uint32_t type_token_id (0x2000059)
		i32 694; uint32_t java_map_index (0x2b6)
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 33554522, ; uint32_t type_token_id (0x200005a)
		i32 1059; uint32_t java_map_index (0x423)
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 33554523, ; uint32_t type_token_id (0x200005b)
		i32 769; uint32_t java_map_index (0x301)
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 33554525, ; uint32_t type_token_id (0x200005d)
		i32 123; uint32_t java_map_index (0x7b)
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 33554527, ; uint32_t type_token_id (0x200005f)
		i32 709; uint32_t java_map_index (0x2c5)
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 33554529, ; uint32_t type_token_id (0x2000061)
		i32 530; uint32_t java_map_index (0x212)
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 33554530, ; uint32_t type_token_id (0x2000062)
		i32 1222; uint32_t java_map_index (0x4c6)
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 33554531, ; uint32_t type_token_id (0x2000063)
		i32 389; uint32_t java_map_index (0x185)
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 33554533, ; uint32_t type_token_id (0x2000065)
		i32 835; uint32_t java_map_index (0x343)
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 33554535, ; uint32_t type_token_id (0x2000067)
		i32 296; uint32_t java_map_index (0x128)
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 33554537, ; uint32_t type_token_id (0x2000069)
		i32 131; uint32_t java_map_index (0x83)
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 33554538, ; uint32_t type_token_id (0x200006a)
		i32 258; uint32_t java_map_index (0x102)
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 33554540, ; uint32_t type_token_id (0x200006c)
		i32 949; uint32_t java_map_index (0x3b5)
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 33554542, ; uint32_t type_token_id (0x200006e)
		i32 392; uint32_t java_map_index (0x188)
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 33554543, ; uint32_t type_token_id (0x200006f)
		i32 976; uint32_t java_map_index (0x3d0)
	}, ; 24
	%struct.TypeMapModuleEntry {
		i32 33554547, ; uint32_t type_token_id (0x2000073)
		i32 247; uint32_t java_map_index (0xf7)
	}, ; 25
	%struct.TypeMapModuleEntry {
		i32 33554548, ; uint32_t type_token_id (0x2000074)
		i32 660; uint32_t java_map_index (0x294)
	}, ; 26
	%struct.TypeMapModuleEntry {
		i32 33554550, ; uint32_t type_token_id (0x2000076)
		i32 21; uint32_t java_map_index (0x15)
	}, ; 27
	%struct.TypeMapModuleEntry {
		i32 33554555, ; uint32_t type_token_id (0x200007b)
		i32 737; uint32_t java_map_index (0x2e1)
	}, ; 28
	%struct.TypeMapModuleEntry {
		i32 33554556, ; uint32_t type_token_id (0x200007c)
		i32 684; uint32_t java_map_index (0x2ac)
	}, ; 29
	%struct.TypeMapModuleEntry {
		i32 33554558, ; uint32_t type_token_id (0x200007e)
		i32 368; uint32_t java_map_index (0x170)
	}, ; 30
	%struct.TypeMapModuleEntry {
		i32 33554559, ; uint32_t type_token_id (0x200007f)
		i32 597; uint32_t java_map_index (0x255)
	}, ; 31
	%struct.TypeMapModuleEntry {
		i32 33554560, ; uint32_t type_token_id (0x2000080)
		i32 382; uint32_t java_map_index (0x17e)
	}, ; 32
	%struct.TypeMapModuleEntry {
		i32 33554563, ; uint32_t type_token_id (0x2000083)
		i32 172; uint32_t java_map_index (0xac)
	}, ; 33
	%struct.TypeMapModuleEntry {
		i32 33554564, ; uint32_t type_token_id (0x2000084)
		i32 359; uint32_t java_map_index (0x167)
	}, ; 34
	%struct.TypeMapModuleEntry {
		i32 33554565, ; uint32_t type_token_id (0x2000085)
		i32 865; uint32_t java_map_index (0x361)
	}, ; 35
	%struct.TypeMapModuleEntry {
		i32 33554567, ; uint32_t type_token_id (0x2000087)
		i32 1044; uint32_t java_map_index (0x414)
	}, ; 36
	%struct.TypeMapModuleEntry {
		i32 33554568, ; uint32_t type_token_id (0x2000088)
		i32 182; uint32_t java_map_index (0xb6)
	}, ; 37
	%struct.TypeMapModuleEntry {
		i32 33554570, ; uint32_t type_token_id (0x200008a)
		i32 140; uint32_t java_map_index (0x8c)
	}, ; 38
	%struct.TypeMapModuleEntry {
		i32 33554584, ; uint32_t type_token_id (0x2000098)
		i32 113; uint32_t java_map_index (0x71)
	}, ; 39
	%struct.TypeMapModuleEntry {
		i32 33554585, ; uint32_t type_token_id (0x2000099)
		i32 827; uint32_t java_map_index (0x33b)
	} ; 40
], align 4

@module35_managed_to_java_duplicates = internal dso_local constant [21 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554509, ; uint32_t type_token_id (0x200004d)
		i32 1061; uint32_t java_map_index (0x425)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554511, ; uint32_t type_token_id (0x200004f)
		i32 715; uint32_t java_map_index (0x2cb)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554514, ; uint32_t type_token_id (0x2000052)
		i32 947; uint32_t java_map_index (0x3b3)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554519, ; uint32_t type_token_id (0x2000057)
		i32 124; uint32_t java_map_index (0x7c)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554524, ; uint32_t type_token_id (0x200005c)
		i32 1059; uint32_t java_map_index (0x423)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554526, ; uint32_t type_token_id (0x200005e)
		i32 123; uint32_t java_map_index (0x7b)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554528, ; uint32_t type_token_id (0x2000060)
		i32 709; uint32_t java_map_index (0x2c5)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554532, ; uint32_t type_token_id (0x2000064)
		i32 389; uint32_t java_map_index (0x185)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554534, ; uint32_t type_token_id (0x2000066)
		i32 1222; uint32_t java_map_index (0x4c6)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33554536, ; uint32_t type_token_id (0x2000068)
		i32 296; uint32_t java_map_index (0x128)
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 33554539, ; uint32_t type_token_id (0x200006b)
		i32 258; uint32_t java_map_index (0x102)
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 33554541, ; uint32_t type_token_id (0x200006d)
		i32 131; uint32_t java_map_index (0x83)
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 33554544, ; uint32_t type_token_id (0x2000070)
		i32 976; uint32_t java_map_index (0x3d0)
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 33554549, ; uint32_t type_token_id (0x2000075)
		i32 660; uint32_t java_map_index (0x294)
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 33554551, ; uint32_t type_token_id (0x2000077)
		i32 21; uint32_t java_map_index (0x15)
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 33554557, ; uint32_t type_token_id (0x200007d)
		i32 684; uint32_t java_map_index (0x2ac)
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 33554561, ; uint32_t type_token_id (0x2000081)
		i32 382; uint32_t java_map_index (0x17e)
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 33554566, ; uint32_t type_token_id (0x2000086)
		i32 359; uint32_t java_map_index (0x167)
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 33554569, ; uint32_t type_token_id (0x2000089)
		i32 182; uint32_t java_map_index (0xb6)
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 33554571, ; uint32_t type_token_id (0x200008b)
		i32 140; uint32_t java_map_index (0x8c)
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 33554586, ; uint32_t type_token_id (0x200009a)
		i32 827; uint32_t java_map_index (0x33b)
	} ; 20
], align 4

@module36_managed_to_java = internal dso_local constant [2 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554435, ; uint32_t type_token_id (0x2000003)
		i32 86; uint32_t java_map_index (0x56)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554436, ; uint32_t type_token_id (0x2000004)
		i32 867; uint32_t java_map_index (0x363)
	} ; 1
], align 4

@module36_managed_to_java_duplicates = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554437, ; uint32_t type_token_id (0x2000005)
		i32 867; uint32_t java_map_index (0x363)
	} ; 0
], align 4

@module37_managed_to_java = internal dso_local constant [4 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554456, ; uint32_t type_token_id (0x2000018)
		i32 693; uint32_t java_map_index (0x2b5)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554457, ; uint32_t type_token_id (0x2000019)
		i32 888; uint32_t java_map_index (0x378)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554459, ; uint32_t type_token_id (0x200001b)
		i32 161; uint32_t java_map_index (0xa1)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554461, ; uint32_t type_token_id (0x200001d)
		i32 12; uint32_t java_map_index (0xc)
	} ; 3
], align 4

@module37_managed_to_java_duplicates = internal dso_local constant [2 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554458, ; uint32_t type_token_id (0x200001a)
		i32 888; uint32_t java_map_index (0x378)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554460, ; uint32_t type_token_id (0x200001c)
		i32 161; uint32_t java_map_index (0xa1)
	} ; 1
], align 4

@module38_managed_to_java = internal dso_local constant [5 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554440, ; uint32_t type_token_id (0x2000008)
		i32 900; uint32_t java_map_index (0x384)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554441, ; uint32_t type_token_id (0x2000009)
		i32 1012; uint32_t java_map_index (0x3f4)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554443, ; uint32_t type_token_id (0x200000b)
		i32 432; uint32_t java_map_index (0x1b0)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554445, ; uint32_t type_token_id (0x200000d)
		i32 567; uint32_t java_map_index (0x237)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554447, ; uint32_t type_token_id (0x200000f)
		i32 1105; uint32_t java_map_index (0x451)
	} ; 4
], align 4

@module38_managed_to_java_duplicates = internal dso_local constant [3 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554442, ; uint32_t type_token_id (0x200000a)
		i32 1012; uint32_t java_map_index (0x3f4)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554444, ; uint32_t type_token_id (0x200000c)
		i32 432; uint32_t java_map_index (0x1b0)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554446, ; uint32_t type_token_id (0x200000e)
		i32 567; uint32_t java_map_index (0x237)
	} ; 2
], align 4

@module39_managed_to_java = internal dso_local constant [12 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554448, ; uint32_t type_token_id (0x2000010)
		i32 249; uint32_t java_map_index (0xf9)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554449, ; uint32_t type_token_id (0x2000011)
		i32 306; uint32_t java_map_index (0x132)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554451, ; uint32_t type_token_id (0x2000013)
		i32 850; uint32_t java_map_index (0x352)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554452, ; uint32_t type_token_id (0x2000014)
		i32 1068; uint32_t java_map_index (0x42c)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554453, ; uint32_t type_token_id (0x2000015)
		i32 367; uint32_t java_map_index (0x16f)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554454, ; uint32_t type_token_id (0x2000016)
		i32 243; uint32_t java_map_index (0xf3)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554456, ; uint32_t type_token_id (0x2000018)
		i32 917; uint32_t java_map_index (0x395)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554457, ; uint32_t type_token_id (0x2000019)
		i32 570; uint32_t java_map_index (0x23a)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554460, ; uint32_t type_token_id (0x200001c)
		i32 855; uint32_t java_map_index (0x357)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33554461, ; uint32_t type_token_id (0x200001d)
		i32 1033; uint32_t java_map_index (0x409)
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 33554464, ; uint32_t type_token_id (0x2000020)
		i32 166; uint32_t java_map_index (0xa6)
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 33554466, ; uint32_t type_token_id (0x2000022)
		i32 944; uint32_t java_map_index (0x3b0)
	} ; 11
], align 4

@module39_managed_to_java_duplicates = internal dso_local constant [7 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554450, ; uint32_t type_token_id (0x2000012)
		i32 249; uint32_t java_map_index (0xf9)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554455, ; uint32_t type_token_id (0x2000017)
		i32 243; uint32_t java_map_index (0xf3)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554458, ; uint32_t type_token_id (0x200001a)
		i32 570; uint32_t java_map_index (0x23a)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554459, ; uint32_t type_token_id (0x200001b)
		i32 917; uint32_t java_map_index (0x395)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554462, ; uint32_t type_token_id (0x200001e)
		i32 1033; uint32_t java_map_index (0x409)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554463, ; uint32_t type_token_id (0x200001f)
		i32 855; uint32_t java_map_index (0x357)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554465, ; uint32_t type_token_id (0x2000021)
		i32 166; uint32_t java_map_index (0xa6)
	} ; 6
], align 4

@module40_managed_to_java = internal dso_local constant [6 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554434, ; uint32_t type_token_id (0x2000002)
		i32 468; uint32_t java_map_index (0x1d4)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554435, ; uint32_t type_token_id (0x2000003)
		i32 837; uint32_t java_map_index (0x345)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554436, ; uint32_t type_token_id (0x2000004)
		i32 1173; uint32_t java_map_index (0x495)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554437, ; uint32_t type_token_id (0x2000005)
		i32 467; uint32_t java_map_index (0x1d3)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554438, ; uint32_t type_token_id (0x2000006)
		i32 945; uint32_t java_map_index (0x3b1)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554439, ; uint32_t type_token_id (0x2000007)
		i32 95; uint32_t java_map_index (0x5f)
	} ; 5
], align 4

@module41_managed_to_java = internal dso_local constant [118 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554464, ; uint32_t type_token_id (0x2000020)
		i32 1090; uint32_t java_map_index (0x442)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554465, ; uint32_t type_token_id (0x2000021)
		i32 1212; uint32_t java_map_index (0x4bc)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554466, ; uint32_t type_token_id (0x2000022)
		i32 195; uint32_t java_map_index (0xc3)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554468, ; uint32_t type_token_id (0x2000024)
		i32 853; uint32_t java_map_index (0x355)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554469, ; uint32_t type_token_id (0x2000025)
		i32 87; uint32_t java_map_index (0x57)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554470, ; uint32_t type_token_id (0x2000026)
		i32 907; uint32_t java_map_index (0x38b)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554471, ; uint32_t type_token_id (0x2000027)
		i32 1077; uint32_t java_map_index (0x435)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554472, ; uint32_t type_token_id (0x2000028)
		i32 793; uint32_t java_map_index (0x319)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554474, ; uint32_t type_token_id (0x200002a)
		i32 890; uint32_t java_map_index (0x37a)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33554476, ; uint32_t type_token_id (0x200002c)
		i32 868; uint32_t java_map_index (0x364)
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 33554477, ; uint32_t type_token_id (0x200002d)
		i32 655; uint32_t java_map_index (0x28f)
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 33554478, ; uint32_t type_token_id (0x200002e)
		i32 416; uint32_t java_map_index (0x1a0)
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 33554479, ; uint32_t type_token_id (0x200002f)
		i32 150; uint32_t java_map_index (0x96)
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 33554480, ; uint32_t type_token_id (0x2000030)
		i32 860; uint32_t java_map_index (0x35c)
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 33554481, ; uint32_t type_token_id (0x2000031)
		i32 495; uint32_t java_map_index (0x1ef)
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 33554483, ; uint32_t type_token_id (0x2000033)
		i32 1011; uint32_t java_map_index (0x3f3)
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 33554484, ; uint32_t type_token_id (0x2000034)
		i32 27; uint32_t java_map_index (0x1b)
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 33554485, ; uint32_t type_token_id (0x2000035)
		i32 822; uint32_t java_map_index (0x336)
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 33554487, ; uint32_t type_token_id (0x2000037)
		i32 459; uint32_t java_map_index (0x1cb)
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 33554488, ; uint32_t type_token_id (0x2000038)
		i32 248; uint32_t java_map_index (0xf8)
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 33554489, ; uint32_t type_token_id (0x2000039)
		i32 1006; uint32_t java_map_index (0x3ee)
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 33554490, ; uint32_t type_token_id (0x200003a)
		i32 1151; uint32_t java_map_index (0x47f)
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 33554491, ; uint32_t type_token_id (0x200003b)
		i32 461; uint32_t java_map_index (0x1cd)
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 33554492, ; uint32_t type_token_id (0x200003c)
		i32 611; uint32_t java_map_index (0x263)
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 33554494, ; uint32_t type_token_id (0x200003e)
		i32 747; uint32_t java_map_index (0x2eb)
	}, ; 24
	%struct.TypeMapModuleEntry {
		i32 33554496, ; uint32_t type_token_id (0x2000040)
		i32 1234; uint32_t java_map_index (0x4d2)
	}, ; 25
	%struct.TypeMapModuleEntry {
		i32 33554498, ; uint32_t type_token_id (0x2000042)
		i32 951; uint32_t java_map_index (0x3b7)
	}, ; 26
	%struct.TypeMapModuleEntry {
		i32 33554500, ; uint32_t type_token_id (0x2000044)
		i32 553; uint32_t java_map_index (0x229)
	}, ; 27
	%struct.TypeMapModuleEntry {
		i32 33554502, ; uint32_t type_token_id (0x2000046)
		i32 1071; uint32_t java_map_index (0x42f)
	}, ; 28
	%struct.TypeMapModuleEntry {
		i32 33554504, ; uint32_t type_token_id (0x2000048)
		i32 37; uint32_t java_map_index (0x25)
	}, ; 29
	%struct.TypeMapModuleEntry {
		i32 33554506, ; uint32_t type_token_id (0x200004a)
		i32 871; uint32_t java_map_index (0x367)
	}, ; 30
	%struct.TypeMapModuleEntry {
		i32 33554508, ; uint32_t type_token_id (0x200004c)
		i32 792; uint32_t java_map_index (0x318)
	}, ; 31
	%struct.TypeMapModuleEntry {
		i32 33554510, ; uint32_t type_token_id (0x200004e)
		i32 617; uint32_t java_map_index (0x269)
	}, ; 32
	%struct.TypeMapModuleEntry {
		i32 33554511, ; uint32_t type_token_id (0x200004f)
		i32 956; uint32_t java_map_index (0x3bc)
	}, ; 33
	%struct.TypeMapModuleEntry {
		i32 33554512, ; uint32_t type_token_id (0x2000050)
		i32 93; uint32_t java_map_index (0x5d)
	}, ; 34
	%struct.TypeMapModuleEntry {
		i32 33554514, ; uint32_t type_token_id (0x2000052)
		i32 733; uint32_t java_map_index (0x2dd)
	}, ; 35
	%struct.TypeMapModuleEntry {
		i32 33554516, ; uint32_t type_token_id (0x2000054)
		i32 465; uint32_t java_map_index (0x1d1)
	}, ; 36
	%struct.TypeMapModuleEntry {
		i32 33554517, ; uint32_t type_token_id (0x2000055)
		i32 130; uint32_t java_map_index (0x82)
	}, ; 37
	%struct.TypeMapModuleEntry {
		i32 33554519, ; uint32_t type_token_id (0x2000057)
		i32 1048; uint32_t java_map_index (0x418)
	}, ; 38
	%struct.TypeMapModuleEntry {
		i32 33554521, ; uint32_t type_token_id (0x2000059)
		i32 688; uint32_t java_map_index (0x2b0)
	}, ; 39
	%struct.TypeMapModuleEntry {
		i32 33554522, ; uint32_t type_token_id (0x200005a)
		i32 690; uint32_t java_map_index (0x2b2)
	}, ; 40
	%struct.TypeMapModuleEntry {
		i32 33554524, ; uint32_t type_token_id (0x200005c)
		i32 1043; uint32_t java_map_index (0x413)
	}, ; 41
	%struct.TypeMapModuleEntry {
		i32 33554527, ; uint32_t type_token_id (0x200005f)
		i32 638; uint32_t java_map_index (0x27e)
	}, ; 42
	%struct.TypeMapModuleEntry {
		i32 33554528, ; uint32_t type_token_id (0x2000060)
		i32 918; uint32_t java_map_index (0x396)
	}, ; 43
	%struct.TypeMapModuleEntry {
		i32 33554529, ; uint32_t type_token_id (0x2000061)
		i32 238; uint32_t java_map_index (0xee)
	}, ; 44
	%struct.TypeMapModuleEntry {
		i32 33554531, ; uint32_t type_token_id (0x2000063)
		i32 994; uint32_t java_map_index (0x3e2)
	}, ; 45
	%struct.TypeMapModuleEntry {
		i32 33554533, ; uint32_t type_token_id (0x2000065)
		i32 327; uint32_t java_map_index (0x147)
	}, ; 46
	%struct.TypeMapModuleEntry {
		i32 33554535, ; uint32_t type_token_id (0x2000067)
		i32 745; uint32_t java_map_index (0x2e9)
	}, ; 47
	%struct.TypeMapModuleEntry {
		i32 33554537, ; uint32_t type_token_id (0x2000069)
		i32 604; uint32_t java_map_index (0x25c)
	}, ; 48
	%struct.TypeMapModuleEntry {
		i32 33554539, ; uint32_t type_token_id (0x200006b)
		i32 347; uint32_t java_map_index (0x15b)
	}, ; 49
	%struct.TypeMapModuleEntry {
		i32 33554541, ; uint32_t type_token_id (0x200006d)
		i32 365; uint32_t java_map_index (0x16d)
	}, ; 50
	%struct.TypeMapModuleEntry {
		i32 33554543, ; uint32_t type_token_id (0x200006f)
		i32 46; uint32_t java_map_index (0x2e)
	}, ; 51
	%struct.TypeMapModuleEntry {
		i32 33554544, ; uint32_t type_token_id (0x2000070)
		i32 755; uint32_t java_map_index (0x2f3)
	}, ; 52
	%struct.TypeMapModuleEntry {
		i32 33554545, ; uint32_t type_token_id (0x2000071)
		i32 236; uint32_t java_map_index (0xec)
	}, ; 53
	%struct.TypeMapModuleEntry {
		i32 33554546, ; uint32_t type_token_id (0x2000072)
		i32 541; uint32_t java_map_index (0x21d)
	}, ; 54
	%struct.TypeMapModuleEntry {
		i32 33554547, ; uint32_t type_token_id (0x2000073)
		i32 242; uint32_t java_map_index (0xf2)
	}, ; 55
	%struct.TypeMapModuleEntry {
		i32 33554548, ; uint32_t type_token_id (0x2000074)
		i32 257; uint32_t java_map_index (0x101)
	}, ; 56
	%struct.TypeMapModuleEntry {
		i32 33554549, ; uint32_t type_token_id (0x2000075)
		i32 230; uint32_t java_map_index (0xe6)
	}, ; 57
	%struct.TypeMapModuleEntry {
		i32 33554550, ; uint32_t type_token_id (0x2000076)
		i32 897; uint32_t java_map_index (0x381)
	}, ; 58
	%struct.TypeMapModuleEntry {
		i32 33554551, ; uint32_t type_token_id (0x2000077)
		i32 533; uint32_t java_map_index (0x215)
	}, ; 59
	%struct.TypeMapModuleEntry {
		i32 33554553, ; uint32_t type_token_id (0x2000079)
		i32 671; uint32_t java_map_index (0x29f)
	}, ; 60
	%struct.TypeMapModuleEntry {
		i32 33554554, ; uint32_t type_token_id (0x200007a)
		i32 358; uint32_t java_map_index (0x166)
	}, ; 61
	%struct.TypeMapModuleEntry {
		i32 33554555, ; uint32_t type_token_id (0x200007b)
		i32 746; uint32_t java_map_index (0x2ea)
	}, ; 62
	%struct.TypeMapModuleEntry {
		i32 33554557, ; uint32_t type_token_id (0x200007d)
		i32 1231; uint32_t java_map_index (0x4cf)
	}, ; 63
	%struct.TypeMapModuleEntry {
		i32 33554559, ; uint32_t type_token_id (0x200007f)
		i32 950; uint32_t java_map_index (0x3b6)
	}, ; 64
	%struct.TypeMapModuleEntry {
		i32 33554561, ; uint32_t type_token_id (0x2000081)
		i32 815; uint32_t java_map_index (0x32f)
	}, ; 65
	%struct.TypeMapModuleEntry {
		i32 33554563, ; uint32_t type_token_id (0x2000083)
		i32 872; uint32_t java_map_index (0x368)
	}, ; 66
	%struct.TypeMapModuleEntry {
		i32 33554565, ; uint32_t type_token_id (0x2000085)
		i32 431; uint32_t java_map_index (0x1af)
	}, ; 67
	%struct.TypeMapModuleEntry {
		i32 33554567, ; uint32_t type_token_id (0x2000087)
		i32 427; uint32_t java_map_index (0x1ab)
	}, ; 68
	%struct.TypeMapModuleEntry {
		i32 33554569, ; uint32_t type_token_id (0x2000089)
		i32 135; uint32_t java_map_index (0x87)
	}, ; 69
	%struct.TypeMapModuleEntry {
		i32 33554571, ; uint32_t type_token_id (0x200008b)
		i32 866; uint32_t java_map_index (0x362)
	}, ; 70
	%struct.TypeMapModuleEntry {
		i32 33554573, ; uint32_t type_token_id (0x200008d)
		i32 1096; uint32_t java_map_index (0x448)
	}, ; 71
	%struct.TypeMapModuleEntry {
		i32 33554575, ; uint32_t type_token_id (0x200008f)
		i32 628; uint32_t java_map_index (0x274)
	}, ; 72
	%struct.TypeMapModuleEntry {
		i32 33554577, ; uint32_t type_token_id (0x2000091)
		i32 967; uint32_t java_map_index (0x3c7)
	}, ; 73
	%struct.TypeMapModuleEntry {
		i32 33554579, ; uint32_t type_token_id (0x2000093)
		i32 313; uint32_t java_map_index (0x139)
	}, ; 74
	%struct.TypeMapModuleEntry {
		i32 33554581, ; uint32_t type_token_id (0x2000095)
		i32 576; uint32_t java_map_index (0x240)
	}, ; 75
	%struct.TypeMapModuleEntry {
		i32 33554583, ; uint32_t type_token_id (0x2000097)
		i32 583; uint32_t java_map_index (0x247)
	}, ; 76
	%struct.TypeMapModuleEntry {
		i32 33554585, ; uint32_t type_token_id (0x2000099)
		i32 476; uint32_t java_map_index (0x1dc)
	}, ; 77
	%struct.TypeMapModuleEntry {
		i32 33554587, ; uint32_t type_token_id (0x200009b)
		i32 1007; uint32_t java_map_index (0x3ef)
	}, ; 78
	%struct.TypeMapModuleEntry {
		i32 33554589, ; uint32_t type_token_id (0x200009d)
		i32 1108; uint32_t java_map_index (0x454)
	}, ; 79
	%struct.TypeMapModuleEntry {
		i32 33554590, ; uint32_t type_token_id (0x200009e)
		i32 1085; uint32_t java_map_index (0x43d)
	}, ; 80
	%struct.TypeMapModuleEntry {
		i32 33554592, ; uint32_t type_token_id (0x20000a0)
		i32 882; uint32_t java_map_index (0x372)
	}, ; 81
	%struct.TypeMapModuleEntry {
		i32 33554594, ; uint32_t type_token_id (0x20000a2)
		i32 936; uint32_t java_map_index (0x3a8)
	}, ; 82
	%struct.TypeMapModuleEntry {
		i32 33554596, ; uint32_t type_token_id (0x20000a4)
		i32 997; uint32_t java_map_index (0x3e5)
	}, ; 83
	%struct.TypeMapModuleEntry {
		i32 33554598, ; uint32_t type_token_id (0x20000a6)
		i32 1204; uint32_t java_map_index (0x4b4)
	}, ; 84
	%struct.TypeMapModuleEntry {
		i32 33554600, ; uint32_t type_token_id (0x20000a8)
		i32 515; uint32_t java_map_index (0x203)
	}, ; 85
	%struct.TypeMapModuleEntry {
		i32 33554602, ; uint32_t type_token_id (0x20000aa)
		i32 598; uint32_t java_map_index (0x256)
	}, ; 86
	%struct.TypeMapModuleEntry {
		i32 33554604, ; uint32_t type_token_id (0x20000ac)
		i32 645; uint32_t java_map_index (0x285)
	}, ; 87
	%struct.TypeMapModuleEntry {
		i32 33554606, ; uint32_t type_token_id (0x20000ae)
		i32 808; uint32_t java_map_index (0x328)
	}, ; 88
	%struct.TypeMapModuleEntry {
		i32 33554608, ; uint32_t type_token_id (0x20000b0)
		i32 612; uint32_t java_map_index (0x264)
	}, ; 89
	%struct.TypeMapModuleEntry {
		i32 33554609, ; uint32_t type_token_id (0x20000b1)
		i32 571; uint32_t java_map_index (0x23b)
	}, ; 90
	%struct.TypeMapModuleEntry {
		i32 33554610, ; uint32_t type_token_id (0x20000b2)
		i32 974; uint32_t java_map_index (0x3ce)
	}, ; 91
	%struct.TypeMapModuleEntry {
		i32 33554612, ; uint32_t type_token_id (0x20000b4)
		i32 463; uint32_t java_map_index (0x1cf)
	}, ; 92
	%struct.TypeMapModuleEntry {
		i32 33554614, ; uint32_t type_token_id (0x20000b6)
		i32 906; uint32_t java_map_index (0x38a)
	}, ; 93
	%struct.TypeMapModuleEntry {
		i32 33554616, ; uint32_t type_token_id (0x20000b8)
		i32 122; uint32_t java_map_index (0x7a)
	}, ; 94
	%struct.TypeMapModuleEntry {
		i32 33554618, ; uint32_t type_token_id (0x20000ba)
		i32 1081; uint32_t java_map_index (0x439)
	}, ; 95
	%struct.TypeMapModuleEntry {
		i32 33554620, ; uint32_t type_token_id (0x20000bc)
		i32 940; uint32_t java_map_index (0x3ac)
	}, ; 96
	%struct.TypeMapModuleEntry {
		i32 33554622, ; uint32_t type_token_id (0x20000be)
		i32 559; uint32_t java_map_index (0x22f)
	}, ; 97
	%struct.TypeMapModuleEntry {
		i32 33554624, ; uint32_t type_token_id (0x20000c0)
		i32 1153; uint32_t java_map_index (0x481)
	}, ; 98
	%struct.TypeMapModuleEntry {
		i32 33554625, ; uint32_t type_token_id (0x20000c1)
		i32 1040; uint32_t java_map_index (0x410)
	}, ; 99
	%struct.TypeMapModuleEntry {
		i32 33554627, ; uint32_t type_token_id (0x20000c3)
		i32 991; uint32_t java_map_index (0x3df)
	}, ; 100
	%struct.TypeMapModuleEntry {
		i32 33554629, ; uint32_t type_token_id (0x20000c5)
		i32 552; uint32_t java_map_index (0x228)
	}, ; 101
	%struct.TypeMapModuleEntry {
		i32 33554630, ; uint32_t type_token_id (0x20000c6)
		i32 556; uint32_t java_map_index (0x22c)
	}, ; 102
	%struct.TypeMapModuleEntry {
		i32 33554631, ; uint32_t type_token_id (0x20000c7)
		i32 677; uint32_t java_map_index (0x2a5)
	}, ; 103
	%struct.TypeMapModuleEntry {
		i32 33554632, ; uint32_t type_token_id (0x20000c8)
		i32 749; uint32_t java_map_index (0x2ed)
	}, ; 104
	%struct.TypeMapModuleEntry {
		i32 33554633, ; uint32_t type_token_id (0x20000c9)
		i32 200; uint32_t java_map_index (0xc8)
	}, ; 105
	%struct.TypeMapModuleEntry {
		i32 33554637, ; uint32_t type_token_id (0x20000cd)
		i32 226; uint32_t java_map_index (0xe2)
	}, ; 106
	%struct.TypeMapModuleEntry {
		i32 33554640, ; uint32_t type_token_id (0x20000d0)
		i32 1197; uint32_t java_map_index (0x4ad)
	}, ; 107
	%struct.TypeMapModuleEntry {
		i32 33554641, ; uint32_t type_token_id (0x20000d1)
		i32 520; uint32_t java_map_index (0x208)
	}, ; 108
	%struct.TypeMapModuleEntry {
		i32 33554643, ; uint32_t type_token_id (0x20000d3)
		i32 145; uint32_t java_map_index (0x91)
	}, ; 109
	%struct.TypeMapModuleEntry {
		i32 33554644, ; uint32_t type_token_id (0x20000d4)
		i32 913; uint32_t java_map_index (0x391)
	}, ; 110
	%struct.TypeMapModuleEntry {
		i32 33554645, ; uint32_t type_token_id (0x20000d5)
		i32 105; uint32_t java_map_index (0x69)
	}, ; 111
	%struct.TypeMapModuleEntry {
		i32 33554646, ; uint32_t type_token_id (0x20000d6)
		i32 513; uint32_t java_map_index (0x201)
	}, ; 112
	%struct.TypeMapModuleEntry {
		i32 33554648, ; uint32_t type_token_id (0x20000d8)
		i32 921; uint32_t java_map_index (0x399)
	}, ; 113
	%struct.TypeMapModuleEntry {
		i32 33554649, ; uint32_t type_token_id (0x20000d9)
		i32 1052; uint32_t java_map_index (0x41c)
	}, ; 114
	%struct.TypeMapModuleEntry {
		i32 33554650, ; uint32_t type_token_id (0x20000da)
		i32 18; uint32_t java_map_index (0x12)
	}, ; 115
	%struct.TypeMapModuleEntry {
		i32 33554651, ; uint32_t type_token_id (0x20000db)
		i32 670; uint32_t java_map_index (0x29e)
	}, ; 116
	%struct.TypeMapModuleEntry {
		i32 33554652, ; uint32_t type_token_id (0x20000dc)
		i32 600; uint32_t java_map_index (0x258)
	} ; 117
], align 4

@module41_managed_to_java_duplicates = internal dso_local constant [67 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554467, ; uint32_t type_token_id (0x2000023)
		i32 195; uint32_t java_map_index (0xc3)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554473, ; uint32_t type_token_id (0x2000029)
		i32 793; uint32_t java_map_index (0x319)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554475, ; uint32_t type_token_id (0x200002b)
		i32 890; uint32_t java_map_index (0x37a)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554482, ; uint32_t type_token_id (0x2000032)
		i32 495; uint32_t java_map_index (0x1ef)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554486, ; uint32_t type_token_id (0x2000036)
		i32 822; uint32_t java_map_index (0x336)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554493, ; uint32_t type_token_id (0x200003d)
		i32 611; uint32_t java_map_index (0x263)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554495, ; uint32_t type_token_id (0x200003f)
		i32 747; uint32_t java_map_index (0x2eb)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554497, ; uint32_t type_token_id (0x2000041)
		i32 1234; uint32_t java_map_index (0x4d2)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554499, ; uint32_t type_token_id (0x2000043)
		i32 951; uint32_t java_map_index (0x3b7)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33554501, ; uint32_t type_token_id (0x2000045)
		i32 553; uint32_t java_map_index (0x229)
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 33554503, ; uint32_t type_token_id (0x2000047)
		i32 1071; uint32_t java_map_index (0x42f)
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 33554505, ; uint32_t type_token_id (0x2000049)
		i32 37; uint32_t java_map_index (0x25)
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 33554507, ; uint32_t type_token_id (0x200004b)
		i32 871; uint32_t java_map_index (0x367)
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 33554509, ; uint32_t type_token_id (0x200004d)
		i32 792; uint32_t java_map_index (0x318)
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 33554513, ; uint32_t type_token_id (0x2000051)
		i32 93; uint32_t java_map_index (0x5d)
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 33554515, ; uint32_t type_token_id (0x2000053)
		i32 733; uint32_t java_map_index (0x2dd)
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 33554518, ; uint32_t type_token_id (0x2000056)
		i32 130; uint32_t java_map_index (0x82)
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 33554520, ; uint32_t type_token_id (0x2000058)
		i32 1048; uint32_t java_map_index (0x418)
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 33554523, ; uint32_t type_token_id (0x200005b)
		i32 690; uint32_t java_map_index (0x2b2)
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 33554525, ; uint32_t type_token_id (0x200005d)
		i32 1043; uint32_t java_map_index (0x413)
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 33554526, ; uint32_t type_token_id (0x200005e)
		i32 688; uint32_t java_map_index (0x2b0)
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 33554530, ; uint32_t type_token_id (0x2000062)
		i32 238; uint32_t java_map_index (0xee)
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 33554532, ; uint32_t type_token_id (0x2000064)
		i32 994; uint32_t java_map_index (0x3e2)
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 33554534, ; uint32_t type_token_id (0x2000066)
		i32 327; uint32_t java_map_index (0x147)
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 33554536, ; uint32_t type_token_id (0x2000068)
		i32 745; uint32_t java_map_index (0x2e9)
	}, ; 24
	%struct.TypeMapModuleEntry {
		i32 33554538, ; uint32_t type_token_id (0x200006a)
		i32 604; uint32_t java_map_index (0x25c)
	}, ; 25
	%struct.TypeMapModuleEntry {
		i32 33554540, ; uint32_t type_token_id (0x200006c)
		i32 347; uint32_t java_map_index (0x15b)
	}, ; 26
	%struct.TypeMapModuleEntry {
		i32 33554542, ; uint32_t type_token_id (0x200006e)
		i32 365; uint32_t java_map_index (0x16d)
	}, ; 27
	%struct.TypeMapModuleEntry {
		i32 33554552, ; uint32_t type_token_id (0x2000078)
		i32 533; uint32_t java_map_index (0x215)
	}, ; 28
	%struct.TypeMapModuleEntry {
		i32 33554556, ; uint32_t type_token_id (0x200007c)
		i32 746; uint32_t java_map_index (0x2ea)
	}, ; 29
	%struct.TypeMapModuleEntry {
		i32 33554558, ; uint32_t type_token_id (0x200007e)
		i32 1231; uint32_t java_map_index (0x4cf)
	}, ; 30
	%struct.TypeMapModuleEntry {
		i32 33554560, ; uint32_t type_token_id (0x2000080)
		i32 950; uint32_t java_map_index (0x3b6)
	}, ; 31
	%struct.TypeMapModuleEntry {
		i32 33554562, ; uint32_t type_token_id (0x2000082)
		i32 815; uint32_t java_map_index (0x32f)
	}, ; 32
	%struct.TypeMapModuleEntry {
		i32 33554564, ; uint32_t type_token_id (0x2000084)
		i32 872; uint32_t java_map_index (0x368)
	}, ; 33
	%struct.TypeMapModuleEntry {
		i32 33554566, ; uint32_t type_token_id (0x2000086)
		i32 431; uint32_t java_map_index (0x1af)
	}, ; 34
	%struct.TypeMapModuleEntry {
		i32 33554568, ; uint32_t type_token_id (0x2000088)
		i32 427; uint32_t java_map_index (0x1ab)
	}, ; 35
	%struct.TypeMapModuleEntry {
		i32 33554570, ; uint32_t type_token_id (0x200008a)
		i32 135; uint32_t java_map_index (0x87)
	}, ; 36
	%struct.TypeMapModuleEntry {
		i32 33554572, ; uint32_t type_token_id (0x200008c)
		i32 866; uint32_t java_map_index (0x362)
	}, ; 37
	%struct.TypeMapModuleEntry {
		i32 33554574, ; uint32_t type_token_id (0x200008e)
		i32 1096; uint32_t java_map_index (0x448)
	}, ; 38
	%struct.TypeMapModuleEntry {
		i32 33554576, ; uint32_t type_token_id (0x2000090)
		i32 628; uint32_t java_map_index (0x274)
	}, ; 39
	%struct.TypeMapModuleEntry {
		i32 33554578, ; uint32_t type_token_id (0x2000092)
		i32 967; uint32_t java_map_index (0x3c7)
	}, ; 40
	%struct.TypeMapModuleEntry {
		i32 33554580, ; uint32_t type_token_id (0x2000094)
		i32 313; uint32_t java_map_index (0x139)
	}, ; 41
	%struct.TypeMapModuleEntry {
		i32 33554582, ; uint32_t type_token_id (0x2000096)
		i32 576; uint32_t java_map_index (0x240)
	}, ; 42
	%struct.TypeMapModuleEntry {
		i32 33554584, ; uint32_t type_token_id (0x2000098)
		i32 583; uint32_t java_map_index (0x247)
	}, ; 43
	%struct.TypeMapModuleEntry {
		i32 33554586, ; uint32_t type_token_id (0x200009a)
		i32 476; uint32_t java_map_index (0x1dc)
	}, ; 44
	%struct.TypeMapModuleEntry {
		i32 33554588, ; uint32_t type_token_id (0x200009c)
		i32 1007; uint32_t java_map_index (0x3ef)
	}, ; 45
	%struct.TypeMapModuleEntry {
		i32 33554591, ; uint32_t type_token_id (0x200009f)
		i32 1085; uint32_t java_map_index (0x43d)
	}, ; 46
	%struct.TypeMapModuleEntry {
		i32 33554593, ; uint32_t type_token_id (0x20000a1)
		i32 882; uint32_t java_map_index (0x372)
	}, ; 47
	%struct.TypeMapModuleEntry {
		i32 33554595, ; uint32_t type_token_id (0x20000a3)
		i32 936; uint32_t java_map_index (0x3a8)
	}, ; 48
	%struct.TypeMapModuleEntry {
		i32 33554597, ; uint32_t type_token_id (0x20000a5)
		i32 997; uint32_t java_map_index (0x3e5)
	}, ; 49
	%struct.TypeMapModuleEntry {
		i32 33554599, ; uint32_t type_token_id (0x20000a7)
		i32 1204; uint32_t java_map_index (0x4b4)
	}, ; 50
	%struct.TypeMapModuleEntry {
		i32 33554601, ; uint32_t type_token_id (0x20000a9)
		i32 515; uint32_t java_map_index (0x203)
	}, ; 51
	%struct.TypeMapModuleEntry {
		i32 33554603, ; uint32_t type_token_id (0x20000ab)
		i32 598; uint32_t java_map_index (0x256)
	}, ; 52
	%struct.TypeMapModuleEntry {
		i32 33554605, ; uint32_t type_token_id (0x20000ad)
		i32 645; uint32_t java_map_index (0x285)
	}, ; 53
	%struct.TypeMapModuleEntry {
		i32 33554607, ; uint32_t type_token_id (0x20000af)
		i32 808; uint32_t java_map_index (0x328)
	}, ; 54
	%struct.TypeMapModuleEntry {
		i32 33554611, ; uint32_t type_token_id (0x20000b3)
		i32 974; uint32_t java_map_index (0x3ce)
	}, ; 55
	%struct.TypeMapModuleEntry {
		i32 33554613, ; uint32_t type_token_id (0x20000b5)
		i32 463; uint32_t java_map_index (0x1cf)
	}, ; 56
	%struct.TypeMapModuleEntry {
		i32 33554615, ; uint32_t type_token_id (0x20000b7)
		i32 906; uint32_t java_map_index (0x38a)
	}, ; 57
	%struct.TypeMapModuleEntry {
		i32 33554617, ; uint32_t type_token_id (0x20000b9)
		i32 122; uint32_t java_map_index (0x7a)
	}, ; 58
	%struct.TypeMapModuleEntry {
		i32 33554619, ; uint32_t type_token_id (0x20000bb)
		i32 1081; uint32_t java_map_index (0x439)
	}, ; 59
	%struct.TypeMapModuleEntry {
		i32 33554621, ; uint32_t type_token_id (0x20000bd)
		i32 940; uint32_t java_map_index (0x3ac)
	}, ; 60
	%struct.TypeMapModuleEntry {
		i32 33554623, ; uint32_t type_token_id (0x20000bf)
		i32 559; uint32_t java_map_index (0x22f)
	}, ; 61
	%struct.TypeMapModuleEntry {
		i32 33554626, ; uint32_t type_token_id (0x20000c2)
		i32 1040; uint32_t java_map_index (0x410)
	}, ; 62
	%struct.TypeMapModuleEntry {
		i32 33554628, ; uint32_t type_token_id (0x20000c4)
		i32 991; uint32_t java_map_index (0x3df)
	}, ; 63
	%struct.TypeMapModuleEntry {
		i32 33554638, ; uint32_t type_token_id (0x20000ce)
		i32 226; uint32_t java_map_index (0xe2)
	}, ; 64
	%struct.TypeMapModuleEntry {
		i32 33554642, ; uint32_t type_token_id (0x20000d2)
		i32 520; uint32_t java_map_index (0x208)
	}, ; 65
	%struct.TypeMapModuleEntry {
		i32 33554647, ; uint32_t type_token_id (0x20000d7)
		i32 913; uint32_t java_map_index (0x391)
	} ; 66
], align 4

@module42_managed_to_java = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554450, ; uint32_t type_token_id (0x2000012)
		i32 1139; uint32_t java_map_index (0x473)
	} ; 0
], align 4

@module43_managed_to_java = internal dso_local constant [2 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554440, ; uint32_t type_token_id (0x2000008)
		i32 781; uint32_t java_map_index (0x30d)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554441, ; uint32_t type_token_id (0x2000009)
		i32 919; uint32_t java_map_index (0x397)
	} ; 1
], align 4

; Java to managed map
@map_java = dso_local local_unnamed_addr constant [1248 x %struct.TypeMapJava] [
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 468; uint32_t java_name_index (0x1d4)
	}, ; 0
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 33554763, ; uint32_t type_token_id (0x200014b)
		i32 1019; uint32_t java_name_index (0x3fb)
	}, ; 1
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555510, ; uint32_t type_token_id (0x2000436)
		i32 795; uint32_t java_name_index (0x31b)
	}, ; 2
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 783; uint32_t java_name_index (0x30f)
	}, ; 3
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 406; uint32_t java_name_index (0x196)
	}, ; 4
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33554515, ; uint32_t type_token_id (0x2000053)
		i32 1062; uint32_t java_name_index (0x426)
	}, ; 5
	%struct.TypeMapJava {
		i32 30, ; uint32_t module_index (0x1e)
		i32 33554467, ; uint32_t type_token_id (0x2000023)
		i32 962; uint32_t java_name_index (0x3c2)
	}, ; 6
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554877, ; uint32_t type_token_id (0x20001bd)
		i32 461; uint32_t java_name_index (0x1cd)
	}, ; 7
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 338; uint32_t java_name_index (0x152)
	}, ; 8
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555426, ; uint32_t type_token_id (0x20003e2)
		i32 738; uint32_t java_name_index (0x2e2)
	}, ; 9
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555343, ; uint32_t type_token_id (0x200038f)
		i32 692; uint32_t java_name_index (0x2b4)
	}, ; 10
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33554548, ; uint32_t type_token_id (0x2000074)
		i32 199; uint32_t java_name_index (0xc7)
	}, ; 11
	%struct.TypeMapJava {
		i32 37, ; uint32_t module_index (0x25)
		i32 33554461, ; uint32_t type_token_id (0x200001d)
		i32 1103; uint32_t java_name_index (0x44f)
	}, ; 12
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554829, ; uint32_t type_token_id (0x200018d)
		i32 426; uint32_t java_name_index (0x1aa)
	}, ; 13
	%struct.TypeMapJava {
		i32 2, ; uint32_t module_index (0x2)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 100; uint32_t java_name_index (0x64)
	}, ; 14
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 24; uint32_t java_name_index (0x18)
	}, ; 15
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 33554775, ; uint32_t type_token_id (0x2000157)
		i32 1028; uint32_t java_name_index (0x404)
	}, ; 16
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554572, ; uint32_t type_token_id (0x200008c)
		i32 276; uint32_t java_name_index (0x114)
	}, ; 17
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 33554650, ; uint32_t type_token_id (0x20000da)
		i32 1242; uint32_t java_name_index (0x4da)
	}, ; 18
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555057, ; uint32_t type_token_id (0x2000271)
		i32 549; uint32_t java_name_index (0x225)
	}, ; 19
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554872, ; uint32_t type_token_id (0x20001b8)
		i32 458; uint32_t java_name_index (0x1ca)
	}, ; 20
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1084; uint32_t java_name_index (0x43c)
	}, ; 21
	%struct.TypeMapJava {
		i32 2, ; uint32_t module_index (0x2)
		i32 33554509, ; uint32_t type_token_id (0x200004d)
		i32 93; uint32_t java_name_index (0x5d)
	}, ; 22
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554506, ; uint32_t type_token_id (0x200004a)
		i32 6; uint32_t java_name_index (0x6)
	}, ; 23
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554920, ; uint32_t type_token_id (0x20001e8)
		i32 483; uint32_t java_name_index (0x1e3)
	}, ; 24
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 192; uint32_t java_name_index (0xc0)
	}, ; 25
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 33554462, ; uint32_t type_token_id (0x200001e)
		i32 955; uint32_t java_name_index (0x3bb)
	}, ; 26
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 33554484, ; uint32_t type_token_id (0x2000034)
		i32 1143; uint32_t java_name_index (0x477)
	}, ; 27
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554742, ; uint32_t type_token_id (0x2000136)
		i32 374; uint32_t java_name_index (0x176)
	}, ; 28
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554880, ; uint32_t type_token_id (0x20001c0)
		i32 462; uint32_t java_name_index (0x1ce)
	}, ; 29
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555214, ; uint32_t type_token_id (0x200030e)
		i32 598; uint32_t java_name_index (0x256)
	}, ; 30
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554736, ; uint32_t type_token_id (0x2000130)
		i32 369; uint32_t java_name_index (0x171)
	}, ; 31
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 7; uint32_t java_name_index (0x7)
	}, ; 32
	%struct.TypeMapJava {
		i32 30, ; uint32_t module_index (0x1e)
		i32 33554503, ; uint32_t type_token_id (0x2000047)
		i32 978; uint32_t java_name_index (0x3d2)
	}, ; 33
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555238, ; uint32_t type_token_id (0x2000326)
		i32 622; uint32_t java_name_index (0x26e)
	}, ; 34
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 33554582, ; uint32_t type_token_id (0x2000096)
		i32 982; uint32_t java_name_index (0x3d6)
	}, ; 35
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index (0xb)
		i32 33554446, ; uint32_t type_token_id (0x200000e)
		i32 146; uint32_t java_name_index (0x92)
	}, ; 36
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1156; uint32_t java_name_index (0x484)
	}, ; 37
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555828, ; uint32_t type_token_id (0x2000574)
		i32 877; uint32_t java_name_index (0x36d)
	}, ; 38
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 303; uint32_t java_name_index (0x12f)
	}, ; 39
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554990, ; uint32_t type_token_id (0x200022e)
		i32 518; uint32_t java_name_index (0x206)
	}, ; 40
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554809, ; uint32_t type_token_id (0x2000179)
		i32 412; uint32_t java_name_index (0x19c)
	}, ; 41
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 704; uint32_t java_name_index (0x2c0)
	}, ; 42
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 381; uint32_t java_name_index (0x17d)
	}, ; 43
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 849; uint32_t java_name_index (0x351)
	}, ; 44
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index (0xb)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 148; uint32_t java_name_index (0x94)
	}, ; 45
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 33554543, ; uint32_t type_token_id (0x200006f)
		i32 1178; uint32_t java_name_index (0x49a)
	}, ; 46
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554741, ; uint32_t type_token_id (0x2000135)
		i32 373; uint32_t java_name_index (0x175)
	}, ; 47
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555836, ; uint32_t type_token_id (0x200057c)
		i32 881; uint32_t java_name_index (0x371)
	}, ; 48
	%struct.TypeMapJava {
		i32 30, ; uint32_t module_index (0x1e)
		i32 33554484, ; uint32_t type_token_id (0x2000034)
		i32 972; uint32_t java_name_index (0x3cc)
	}, ; 49
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index (0xb)
		i32 33554460, ; uint32_t type_token_id (0x200001c)
		i32 153; uint32_t java_name_index (0x99)
	}, ; 50
	%struct.TypeMapJava {
		i32 2, ; uint32_t module_index (0x2)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 82; uint32_t java_name_index (0x52)
	}, ; 51
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555342, ; uint32_t type_token_id (0x200038e)
		i32 912; uint32_t java_name_index (0x390)
	}, ; 52
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555415, ; uint32_t type_token_id (0x20003d7)
		i32 730; uint32_t java_name_index (0x2da)
	}, ; 53
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554530, ; uint32_t type_token_id (0x2000062)
		i32 19; uint32_t java_name_index (0x13)
	}, ; 54
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 33554725, ; uint32_t type_token_id (0x2000125)
		i32 998; uint32_t java_name_index (0x3e6)
	}, ; 55
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555500, ; uint32_t type_token_id (0x200042c)
		i32 787; uint32_t java_name_index (0x313)
	}, ; 56
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 309; uint32_t java_name_index (0x135)
	}, ; 57
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554995, ; uint32_t type_token_id (0x2000233)
		i32 522; uint32_t java_name_index (0x20a)
	}, ; 58
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 18; uint32_t java_name_index (0x12)
	}, ; 59
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555835, ; uint32_t type_token_id (0x200057b)
		i32 880; uint32_t java_name_index (0x370)
	}, ; 60
	%struct.TypeMapJava {
		i32 16, ; uint32_t module_index (0x10)
		i32 33554534, ; uint32_t type_token_id (0x2000066)
		i32 218; uint32_t java_name_index (0xda)
	}, ; 61
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 33554706, ; uint32_t type_token_id (0x2000112)
		i32 993; uint32_t java_name_index (0x3e1)
	}, ; 62
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 33554452, ; uint32_t type_token_id (0x2000014)
		i32 947; uint32_t java_name_index (0x3b3)
	}, ; 63
	%struct.TypeMapJava {
		i32 2, ; uint32_t module_index (0x2)
		i32 33554530, ; uint32_t type_token_id (0x2000062)
		i32 106; uint32_t java_name_index (0x6a)
	}, ; 64
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555369, ; uint32_t type_token_id (0x20003a9)
		i32 928; uint32_t java_name_index (0x3a0)
	}, ; 65
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554629, ; uint32_t type_token_id (0x20000c5)
		i32 72; uint32_t java_name_index (0x48)
	}, ; 66
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index (0x1)
		i32 33554443, ; uint32_t type_token_id (0x200000b)
		i32 79; uint32_t java_name_index (0x4f)
	}, ; 67
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554593, ; uint32_t type_token_id (0x20000a1)
		i32 49; uint32_t java_name_index (0x31)
	}, ; 68
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33554456, ; uint32_t type_token_id (0x2000018)
		i32 1055; uint32_t java_name_index (0x41f)
	}, ; 69
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554667, ; uint32_t type_token_id (0x20000eb)
		i32 327; uint32_t java_name_index (0x147)
	}, ; 70
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555239, ; uint32_t type_token_id (0x2000327)
		i32 623; uint32_t java_name_index (0x26f)
	}, ; 71
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 33554458, ; uint32_t type_token_id (0x200001a)
		i32 953; uint32_t java_name_index (0x3b9)
	}, ; 72
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555077, ; uint32_t type_token_id (0x2000285)
		i32 559; uint32_t java_name_index (0x22f)
	}, ; 73
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554606, ; uint32_t type_token_id (0x20000ae)
		i32 296; uint32_t java_name_index (0x128)
	}, ; 74
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 918; uint32_t java_name_index (0x396)
	}, ; 75
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554620, ; uint32_t type_token_id (0x20000bc)
		i32 67; uint32_t java_name_index (0x43)
	}, ; 76
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 552; uint32_t java_name_index (0x228)
	}, ; 77
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555365, ; uint32_t type_token_id (0x20003a5)
		i32 925; uint32_t java_name_index (0x39d)
	}, ; 78
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 675; uint32_t java_name_index (0x2a3)
	}, ; 79
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 714; uint32_t java_name_index (0x2ca)
	}, ; 80
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555326, ; uint32_t type_token_id (0x200037e)
		i32 897; uint32_t java_name_index (0x381)
	}, ; 81
	%struct.TypeMapJava {
		i32 8, ; uint32_t module_index (0x8)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 135; uint32_t java_name_index (0x87)
	}, ; 82
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 33554760, ; uint32_t type_token_id (0x2000148)
		i32 1016; uint32_t java_name_index (0x3f8)
	}, ; 83
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555274, ; uint32_t type_token_id (0x200034a)
		i32 862; uint32_t java_name_index (0x35e)
	}, ; 84
	%struct.TypeMapJava {
		i32 3, ; uint32_t module_index (0x3)
		i32 33554465, ; uint32_t type_token_id (0x2000021)
		i32 113; uint32_t java_name_index (0x71)
	}, ; 85
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index (0x24)
		i32 33554435, ; uint32_t type_token_id (0x2000003)
		i32 1098; uint32_t java_name_index (0x44a)
	}, ; 86
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 33554469, ; uint32_t type_token_id (0x2000025)
		i32 1131; uint32_t java_name_index (0x46b)
	}, ; 87
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555851, ; uint32_t type_token_id (0x200058b)
		i32 922; uint32_t java_name_index (0x39a)
	}, ; 88
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 505; uint32_t java_name_index (0x1f9)
	}, ; 89
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554566, ; uint32_t type_token_id (0x2000086)
		i32 271; uint32_t java_name_index (0x10f)
	}, ; 90
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554889, ; uint32_t type_token_id (0x20001c9)
		i32 467; uint32_t java_name_index (0x1d3)
	}, ; 91
	%struct.TypeMapJava {
		i32 2, ; uint32_t module_index (0x2)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 85; uint32_t java_name_index (0x55)
	}, ; 92
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 33554512, ; uint32_t type_token_id (0x2000050)
		i32 1161; uint32_t java_name_index (0x489)
	}, ; 93
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554610, ; uint32_t type_token_id (0x20000b2)
		i32 60; uint32_t java_name_index (0x3c)
	}, ; 94
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index (0x28)
		i32 33554439, ; uint32_t type_token_id (0x2000007)
		i32 1126; uint32_t java_name_index (0x466)
	}, ; 95
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 312; uint32_t java_name_index (0x138)
	}, ; 96
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554794, ; uint32_t type_token_id (0x200016a)
		i32 403; uint32_t java_name_index (0x193)
	}, ; 97
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33554536, ; uint32_t type_token_id (0x2000068)
		i32 190; uint32_t java_name_index (0xbe)
	}, ; 98
	%struct.TypeMapJava {
		i32 16, ; uint32_t module_index (0x10)
		i32 33554515, ; uint32_t type_token_id (0x2000053)
		i32 221; uint32_t java_name_index (0xdd)
	}, ; 99
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555058, ; uint32_t type_token_id (0x2000272)
		i32 550; uint32_t java_name_index (0x226)
	}, ; 100
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 983; uint32_t java_name_index (0x3d7)
	}, ; 101
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555816, ; uint32_t type_token_id (0x2000568)
		i32 863; uint32_t java_name_index (0x35f)
	}, ; 102
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555518, ; uint32_t type_token_id (0x200043e)
		i32 802; uint32_t java_name_index (0x322)
	}, ; 103
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index (0xc)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 159; uint32_t java_name_index (0x9f)
	}, ; 104
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 33554645, ; uint32_t type_token_id (0x20000d5)
		i32 1238; uint32_t java_name_index (0x4d6)
	}, ; 105
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555345, ; uint32_t type_token_id (0x2000391)
		i32 693; uint32_t java_name_index (0x2b5)
	}, ; 106
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 470; uint32_t java_name_index (0x1d6)
	}, ; 107
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555506, ; uint32_t type_token_id (0x2000432)
		i32 792; uint32_t java_name_index (0x318)
	}, ; 108
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554745, ; uint32_t type_token_id (0x2000139)
		i32 377; uint32_t java_name_index (0x179)
	}, ; 109
	%struct.TypeMapJava {
		i32 5, ; uint32_t module_index (0x5)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 122; uint32_t java_name_index (0x7a)
	}, ; 110
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 703; uint32_t java_name_index (0x2bf)
	}, ; 111
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555440, ; uint32_t type_token_id (0x20003f0)
		i32 745; uint32_t java_name_index (0x2e9)
	}, ; 112
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33554584, ; uint32_t type_token_id (0x2000098)
		i32 1096; uint32_t java_name_index (0x448)
	}, ; 113
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555481, ; uint32_t type_token_id (0x2000419)
		i32 776; uint32_t java_name_index (0x308)
	}, ; 114
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33554452, ; uint32_t type_token_id (0x2000014)
		i32 1053; uint32_t java_name_index (0x41d)
	}, ; 115
	%struct.TypeMapJava {
		i32 30, ; uint32_t module_index (0x1e)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 976; uint32_t java_name_index (0x3d0)
	}, ; 116
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555206, ; uint32_t type_token_id (0x2000306)
		i32 591; uint32_t java_name_index (0x24f)
	}, ; 117
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 669; uint32_t java_name_index (0x29d)
	}, ; 118
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554936, ; uint32_t type_token_id (0x20001f8)
		i32 490; uint32_t java_name_index (0x1ea)
	}, ; 119
	%struct.TypeMapJava {
		i32 30, ; uint32_t module_index (0x1e)
		i32 33554472, ; uint32_t type_token_id (0x2000028)
		i32 966; uint32_t java_name_index (0x3c6)
	}, ; 120
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33554543, ; uint32_t type_token_id (0x200006f)
		i32 196; uint32_t java_name_index (0xc4)
	}, ; 121
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1221; uint32_t java_name_index (0x4c5)
	}, ; 122
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33554525, ; uint32_t type_token_id (0x200005d)
		i32 1070; uint32_t java_name_index (0x42e)
	}, ; 123
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33554518, ; uint32_t type_token_id (0x2000056)
		i32 1065; uint32_t java_name_index (0x429)
	}, ; 124
	%struct.TypeMapJava {
		i32 2, ; uint32_t module_index (0x2)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 88; uint32_t java_name_index (0x58)
	}, ; 125
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 33554753, ; uint32_t type_token_id (0x2000141)
		i32 1011; uint32_t java_name_index (0x3f3)
	}, ; 126
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 28; uint32_t java_name_index (0x1c)
	}, ; 127
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 33554761, ; uint32_t type_token_id (0x2000149)
		i32 1017; uint32_t java_name_index (0x3f9)
	}, ; 128
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554499, ; uint32_t type_token_id (0x2000043)
		i32 230; uint32_t java_name_index (0xe6)
	}, ; 129
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 33554517, ; uint32_t type_token_id (0x2000055)
		i32 1164; uint32_t java_name_index (0x48c)
	}, ; 130
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33554537, ; uint32_t type_token_id (0x2000069)
		i32 1077; uint32_t java_name_index (0x435)
	}, ; 131
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555412, ; uint32_t type_token_id (0x20003d4)
		i32 727; uint32_t java_name_index (0x2d7)
	}, ; 132
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555338, ; uint32_t type_token_id (0x200038a)
		i32 908; uint32_t java_name_index (0x38c)
	}, ; 133
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555859, ; uint32_t type_token_id (0x2000593)
		i32 932; uint32_t java_name_index (0x3a4)
	}, ; 134
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1196; uint32_t java_name_index (0x4ac)
	}, ; 135
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555059, ; uint32_t type_token_id (0x2000273)
		i32 551; uint32_t java_name_index (0x227)
	}, ; 136
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555354, ; uint32_t type_token_id (0x200039a)
		i32 916; uint32_t java_name_index (0x394)
	}, ; 137
	%struct.TypeMapJava {
		i32 2, ; uint32_t module_index (0x2)
		i32 33554532, ; uint32_t type_token_id (0x2000064)
		i32 108; uint32_t java_name_index (0x6c)
	}, ; 138
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 511; uint32_t java_name_index (0x1ff)
	}, ; 139
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33554570, ; uint32_t type_token_id (0x200008a)
		i32 1095; uint32_t java_name_index (0x447)
	}, ; 140
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554853, ; uint32_t type_token_id (0x20001a5)
		i32 445; uint32_t java_name_index (0x1bd)
	}, ; 141
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554444, ; uint32_t type_token_id (0x200000c)
		i32 823; uint32_t java_name_index (0x337)
	}, ; 142
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554930, ; uint32_t type_token_id (0x20001f2)
		i32 486; uint32_t java_name_index (0x1e6)
	}, ; 143
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555194, ; uint32_t type_token_id (0x20002fa)
		i32 590; uint32_t java_name_index (0x24e)
	}, ; 144
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 33554643, ; uint32_t type_token_id (0x20000d3)
		i32 1236; uint32_t java_name_index (0x4d4)
	}, ; 145
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 33554498, ; uint32_t type_token_id (0x2000042)
		i32 831; uint32_t java_name_index (0x33f)
	}, ; 146
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555253, ; uint32_t type_token_id (0x2000335)
		i32 633; uint32_t java_name_index (0x279)
	}, ; 147
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 721; uint32_t java_name_index (0x2d1)
	}, ; 148
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554860, ; uint32_t type_token_id (0x20001ac)
		i32 449; uint32_t java_name_index (0x1c1)
	}, ; 149
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 33554479, ; uint32_t type_token_id (0x200002f)
		i32 1139; uint32_t java_name_index (0x473)
	}, ; 150
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 665; uint32_t java_name_index (0x299)
	}, ; 151
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 342; uint32_t java_name_index (0x156)
	}, ; 152
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554542, ; uint32_t type_token_id (0x200006e)
		i32 25; uint32_t java_name_index (0x19)
	}, ; 153
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555366, ; uint32_t type_token_id (0x20003a6)
		i32 926; uint32_t java_name_index (0x39e)
	}, ; 154
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555435, ; uint32_t type_token_id (0x20003eb)
		i32 743; uint32_t java_name_index (0x2e7)
	}, ; 155
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 576; uint32_t java_name_index (0x240)
	}, ; 156
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 33554780, ; uint32_t type_token_id (0x200015c)
		i32 1031; uint32_t java_name_index (0x407)
	}, ; 157
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554670, ; uint32_t type_token_id (0x20000ee)
		i32 330; uint32_t java_name_index (0x14a)
	}, ; 158
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555501, ; uint32_t type_token_id (0x200042d)
		i32 788; uint32_t java_name_index (0x314)
	}, ; 159
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554503, ; uint32_t type_token_id (0x2000047)
		i32 3; uint32_t java_name_index (0x3)
	}, ; 160
	%struct.TypeMapJava {
		i32 37, ; uint32_t module_index (0x25)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1102; uint32_t java_name_index (0x44e)
	}, ; 161
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index (0xb)
		i32 33554441, ; uint32_t type_token_id (0x2000009)
		i32 143; uint32_t java_name_index (0x8f)
	}, ; 162
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555070, ; uint32_t type_token_id (0x200027e)
		i32 555; uint32_t java_name_index (0x22b)
	}, ; 163
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555341, ; uint32_t type_token_id (0x200038d)
		i32 911; uint32_t java_name_index (0x38f)
	}, ; 164
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554836, ; uint32_t type_token_id (0x2000194)
		i32 433; uint32_t java_name_index (0x1b1)
	}, ; 165
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index (0x27)
		i32 33554464, ; uint32_t type_token_id (0x2000020)
		i32 1119; uint32_t java_name_index (0x45f)
	}, ; 166
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555403, ; uint32_t type_token_id (0x20003cb)
		i32 722; uint32_t java_name_index (0x2d2)
	}, ; 167
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555204, ; uint32_t type_token_id (0x2000304)
		i32 836; uint32_t java_name_index (0x344)
	}, ; 168
	%struct.TypeMapJava {
		i32 16, ; uint32_t module_index (0x10)
		i32 33554513, ; uint32_t type_token_id (0x2000051)
		i32 220; uint32_t java_name_index (0xdc)
	}, ; 169
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555127, ; uint32_t type_token_id (0x20002b7)
		i32 573; uint32_t java_name_index (0x23d)
	}, ; 170
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 290; uint32_t java_name_index (0x122)
	}, ; 171
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33554563, ; uint32_t type_token_id (0x2000083)
		i32 1090; uint32_t java_name_index (0x442)
	}, ; 172
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 170; uint32_t java_name_index (0xaa)
	}, ; 173
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555452, ; uint32_t type_token_id (0x20003fc)
		i32 755; uint32_t java_name_index (0x2f3)
	}, ; 174
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 33554759, ; uint32_t type_token_id (0x2000147)
		i32 1015; uint32_t java_name_index (0x3f7)
	}, ; 175
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555226, ; uint32_t type_token_id (0x200031a)
		i32 844; uint32_t java_name_index (0x34c)
	}, ; 176
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555005, ; uint32_t type_token_id (0x200023d)
		i32 530; uint32_t java_name_index (0x212)
	}, ; 177
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33554514, ; uint32_t type_token_id (0x2000052)
		i32 175; uint32_t java_name_index (0xaf)
	}, ; 178
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 418; uint32_t java_name_index (0x1a2)
	}, ; 179
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554931, ; uint32_t type_token_id (0x20001f3)
		i32 487; uint32_t java_name_index (0x1e7)
	}, ; 180
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554602, ; uint32_t type_token_id (0x20000aa)
		i32 54; uint32_t java_name_index (0x36)
	}, ; 181
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33554568, ; uint32_t type_token_id (0x2000088)
		i32 1094; uint32_t java_name_index (0x446)
	}, ; 182
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 501; uint32_t java_name_index (0x1f5)
	}, ; 183
	%struct.TypeMapJava {
		i32 30, ; uint32_t module_index (0x1e)
		i32 33554469, ; uint32_t type_token_id (0x2000025)
		i32 964; uint32_t java_name_index (0x3c4)
	}, ; 184
	%struct.TypeMapJava {
		i32 8, ; uint32_t module_index (0x8)
		i32 33554447, ; uint32_t type_token_id (0x200000f)
		i32 133; uint32_t java_name_index (0x85)
	}, ; 185
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 33555215, ; uint32_t type_token_id (0x200030f)
		i32 1041; uint32_t java_name_index (0x411)
	}, ; 186
	%struct.TypeMapJava {
		i32 30, ; uint32_t module_index (0x1e)
		i32 33554494, ; uint32_t type_token_id (0x200003e)
		i32 973; uint32_t java_name_index (0x3cd)
	}, ; 187
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 241; uint32_t java_name_index (0xf1)
	}, ; 188
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555414, ; uint32_t type_token_id (0x20003d6)
		i32 729; uint32_t java_name_index (0x2d9)
	}, ; 189
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33554520, ; uint32_t type_token_id (0x2000058)
		i32 179; uint32_t java_name_index (0xb3)
	}, ; 190
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 258; uint32_t java_name_index (0x102)
	}, ; 191
	%struct.TypeMapJava {
		i32 2, ; uint32_t module_index (0x2)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 102; uint32_t java_name_index (0x66)
	}, ; 192
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555178, ; uint32_t type_token_id (0x20002ea)
		i32 586; uint32_t java_name_index (0x24a)
	}, ; 193
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 33555234, ; uint32_t type_token_id (0x2000322)
		i32 1046; uint32_t java_name_index (0x416)
	}, ; 194
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1129; uint32_t java_name_index (0x469)
	}, ; 195
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554520, ; uint32_t type_token_id (0x2000058)
		i32 245; uint32_t java_name_index (0xf5)
	}, ; 196
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555262, ; uint32_t type_token_id (0x200033e)
		i32 639; uint32_t java_name_index (0x27f)
	}, ; 197
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554594, ; uint32_t type_token_id (0x20000a2)
		i32 50; uint32_t java_name_index (0x32)
	}, ; 198
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 885; uint32_t java_name_index (0x375)
	}, ; 199
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 33554633, ; uint32_t type_token_id (0x20000c9)
		i32 1232; uint32_t java_name_index (0x4d0)
	}, ; 200
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555955, ; uint32_t type_token_id (0x20005f3)
		i32 853; uint32_t java_name_index (0x355)
	}, ; 201
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555334, ; uint32_t type_token_id (0x2000386)
		i32 904; uint32_t java_name_index (0x388)
	}, ; 202
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33554544, ; uint32_t type_token_id (0x2000070)
		i32 197; uint32_t java_name_index (0xc5)
	}, ; 203
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554593, ; uint32_t type_token_id (0x20000a1)
		i32 291; uint32_t java_name_index (0x123)
	}, ; 204
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555227, ; uint32_t type_token_id (0x200031b)
		i32 611; uint32_t java_name_index (0x263)
	}, ; 205
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554810, ; uint32_t type_token_id (0x200017a)
		i32 413; uint32_t java_name_index (0x19d)
	}, ; 206
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554510, ; uint32_t type_token_id (0x200004e)
		i32 9; uint32_t java_name_index (0x9)
	}, ; 207
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 33554705, ; uint32_t type_token_id (0x2000111)
		i32 992; uint32_t java_name_index (0x3e0)
	}, ; 208
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554517, ; uint32_t type_token_id (0x2000055)
		i32 14; uint32_t java_name_index (0xe)
	}, ; 209
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 784; uint32_t java_name_index (0x310)
	}, ; 210
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555469, ; uint32_t type_token_id (0x200040d)
		i32 766; uint32_t java_name_index (0x2fe)
	}, ; 211
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555268, ; uint32_t type_token_id (0x2000344)
		i32 644; uint32_t java_name_index (0x284)
	}, ; 212
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33554553, ; uint32_t type_token_id (0x2000079)
		i32 201; uint32_t java_name_index (0xc9)
	}, ; 213
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 888; uint32_t java_name_index (0x378)
	}, ; 214
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555503, ; uint32_t type_token_id (0x200042f)
		i32 790; uint32_t java_name_index (0x316)
	}, ; 215
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554569, ; uint32_t type_token_id (0x2000089)
		i32 274; uint32_t java_name_index (0x112)
	}, ; 216
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 437; uint32_t java_name_index (0x1b5)
	}, ; 217
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555517, ; uint32_t type_token_id (0x200043d)
		i32 801; uint32_t java_name_index (0x321)
	}, ; 218
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555416, ; uint32_t type_token_id (0x20003d8)
		i32 731; uint32_t java_name_index (0x2db)
	}, ; 219
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 474; uint32_t java_name_index (0x1da)
	}, ; 220
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 226; uint32_t java_name_index (0xe2)
	}, ; 221
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33554490, ; uint32_t type_token_id (0x200003a)
		i32 160; uint32_t java_name_index (0xa0)
	}, ; 222
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 33555113, ; uint32_t type_token_id (0x20002a9)
		i32 1026; uint32_t java_name_index (0x402)
	}, ; 223
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554523, ; uint32_t type_token_id (0x200005b)
		i32 246; uint32_t java_name_index (0xf6)
	}, ; 224
	%struct.TypeMapJava {
		i32 6, ; uint32_t module_index (0x6)
		i32 33554692, ; uint32_t type_token_id (0x2000104)
		i32 131; uint32_t java_name_index (0x83)
	}, ; 225
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1233; uint32_t java_name_index (0x4d1)
	}, ; 226
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555507, ; uint32_t type_token_id (0x2000433)
		i32 793; uint32_t java_name_index (0x319)
	}, ; 227
	%struct.TypeMapJava {
		i32 5, ; uint32_t module_index (0x5)
		i32 33554442, ; uint32_t type_token_id (0x200000a)
		i32 123; uint32_t java_name_index (0x7b)
	}, ; 228
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 33554743, ; uint32_t type_token_id (0x2000137)
		i32 1001; uint32_t java_name_index (0x3e9)
	}, ; 229
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 33554549, ; uint32_t type_token_id (0x2000075)
		i32 1184; uint32_t java_name_index (0x4a0)
	}, ; 230
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555327, ; uint32_t type_token_id (0x200037f)
		i32 679; uint32_t java_name_index (0x2a7)
	}, ; 231
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554557, ; uint32_t type_token_id (0x200007d)
		i32 32; uint32_t java_name_index (0x20)
	}, ; 232
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555209, ; uint32_t type_token_id (0x2000309)
		i32 594; uint32_t java_name_index (0x252)
	}, ; 233
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554935, ; uint32_t type_token_id (0x20001f7)
		i32 489; uint32_t java_name_index (0x1e9)
	}, ; 234
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 304; uint32_t java_name_index (0x130)
	}, ; 235
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 33554545, ; uint32_t type_token_id (0x2000071)
		i32 1180; uint32_t java_name_index (0x49c)
	}, ; 236
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555287, ; uint32_t type_token_id (0x2000357)
		i32 657; uint32_t java_name_index (0x291)
	}, ; 237
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1171; uint32_t java_name_index (0x493)
	}, ; 238
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555513, ; uint32_t type_token_id (0x2000439)
		i32 798; uint32_t java_name_index (0x31e)
	}, ; 239
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555308, ; uint32_t type_token_id (0x200036c)
		i32 892; uint32_t java_name_index (0x37c)
	}, ; 240
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554534, ; uint32_t type_token_id (0x2000066)
		i32 253; uint32_t java_name_index (0xfd)
	}, ; 241
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 33554547, ; uint32_t type_token_id (0x2000073)
		i32 1182; uint32_t java_name_index (0x49e)
	}, ; 242
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index (0x27)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1114; uint32_t java_name_index (0x45a)
	}, ; 243
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 466; uint32_t java_name_index (0x1d2)
	}, ; 244
	%struct.TypeMapJava {
		i32 33, ; uint32_t module_index (0x21)
		i32 33554439, ; uint32_t type_token_id (0x2000007)
		i32 1050; uint32_t java_name_index (0x41a)
	}, ; 245
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555206, ; uint32_t type_token_id (0x2000306)
		i32 838; uint32_t java_name_index (0x346)
	}, ; 246
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33554547, ; uint32_t type_token_id (0x2000073)
		i32 1082; uint32_t java_name_index (0x43a)
	}, ; 247
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 33554488, ; uint32_t type_token_id (0x2000038)
		i32 1146; uint32_t java_name_index (0x47a)
	}, ; 248
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index (0x27)
		i32 33554448, ; uint32_t type_token_id (0x2000010)
		i32 1109; uint32_t java_name_index (0x455)
	}, ; 249
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 236; uint32_t java_name_index (0xec)
	}, ; 250
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555430, ; uint32_t type_token_id (0x20003e6)
		i32 740; uint32_t java_name_index (0x2e4)
	}, ; 251
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555211, ; uint32_t type_token_id (0x200030b)
		i32 595; uint32_t java_name_index (0x253)
	}, ; 252
	%struct.TypeMapJava {
		i32 3, ; uint32_t module_index (0x3)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 116; uint32_t java_name_index (0x74)
	}, ; 253
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554565, ; uint32_t type_token_id (0x2000085)
		i32 270; uint32_t java_name_index (0x10e)
	}, ; 254
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554561, ; uint32_t type_token_id (0x2000081)
		i32 34; uint32_t java_name_index (0x22)
	}, ; 255
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 33554767, ; uint32_t type_token_id (0x200014f)
		i32 1022; uint32_t java_name_index (0x3fe)
	}, ; 256
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 33554548, ; uint32_t type_token_id (0x2000074)
		i32 1183; uint32_t java_name_index (0x49f)
	}, ; 257
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1078; uint32_t java_name_index (0x436)
	}, ; 258
	%struct.TypeMapJava {
		i32 4, ; uint32_t module_index (0x4)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 120; uint32_t java_name_index (0x78)
	}, ; 259
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554783, ; uint32_t type_token_id (0x200015f)
		i32 397; uint32_t java_name_index (0x18d)
	}, ; 260
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554782, ; uint32_t type_token_id (0x200015e)
		i32 396; uint32_t java_name_index (0x18c)
	}, ; 261
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 61; uint32_t java_name_index (0x3d)
	}, ; 262
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 174; uint32_t java_name_index (0xae)
	}, ; 263
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555227, ; uint32_t type_token_id (0x200031b)
		i32 845; uint32_t java_name_index (0x34d)
	}, ; 264
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554675, ; uint32_t type_token_id (0x20000f3)
		i32 334; uint32_t java_name_index (0x14e)
	}, ; 265
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index (0x1)
		i32 33554441, ; uint32_t type_token_id (0x2000009)
		i32 78; uint32_t java_name_index (0x4e)
	}, ; 266
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555234, ; uint32_t type_token_id (0x2000322)
		i32 618; uint32_t java_name_index (0x26a)
	}, ; 267
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33554494, ; uint32_t type_token_id (0x200003e)
		i32 164; uint32_t java_name_index (0xa4)
	}, ; 268
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554498, ; uint32_t type_token_id (0x2000042)
		i32 229; uint32_t java_name_index (0xe5)
	}, ; 269
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554813, ; uint32_t type_token_id (0x200017d)
		i32 416; uint32_t java_name_index (0x1a0)
	}, ; 270
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555457, ; uint32_t type_token_id (0x2000401)
		i32 758; uint32_t java_name_index (0x2f6)
	}, ; 271
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index (0x1)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 77; uint32_t java_name_index (0x4d)
	}, ; 272
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554871, ; uint32_t type_token_id (0x20001b7)
		i32 457; uint32_t java_name_index (0x1c9)
	}, ; 273
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554504, ; uint32_t type_token_id (0x2000048)
		i32 4; uint32_t java_name_index (0x4)
	}, ; 274
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33554512, ; uint32_t type_token_id (0x2000050)
		i32 1060; uint32_t java_name_index (0x424)
	}, ; 275
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554669, ; uint32_t type_token_id (0x20000ed)
		i32 329; uint32_t java_name_index (0x149)
	}, ; 276
	%struct.TypeMapJava {
		i32 9, ; uint32_t module_index (0x9)
		i32 33554462, ; uint32_t type_token_id (0x200001e)
		i32 141; uint32_t java_name_index (0x8d)
	}, ; 277
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555081, ; uint32_t type_token_id (0x2000289)
		i32 563; uint32_t java_name_index (0x233)
	}, ; 278
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555447, ; uint32_t type_token_id (0x20003f7)
		i32 751; uint32_t java_name_index (0x2ef)
	}, ; 279
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555355, ; uint32_t type_token_id (0x200039b)
		i32 698; uint32_t java_name_index (0x2ba)
	}, ; 280
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554884, ; uint32_t type_token_id (0x20001c4)
		i32 465; uint32_t java_name_index (0x1d1)
	}, ; 281
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555332, ; uint32_t type_token_id (0x2000384)
		i32 683; uint32_t java_name_index (0x2ab)
	}, ; 282
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 33554772, ; uint32_t type_token_id (0x2000154)
		i32 1025; uint32_t java_name_index (0x401)
	}, ; 283
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554756, ; uint32_t type_token_id (0x2000144)
		i32 382; uint32_t java_name_index (0x17e)
	}, ; 284
	%struct.TypeMapJava {
		i32 30, ; uint32_t module_index (0x1e)
		i32 33554471, ; uint32_t type_token_id (0x2000027)
		i32 965; uint32_t java_name_index (0x3c5)
	}, ; 285
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 500; uint32_t java_name_index (0x1f4)
	}, ; 286
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555276, ; uint32_t type_token_id (0x200034c)
		i32 649; uint32_t java_name_index (0x289)
	}, ; 287
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554637, ; uint32_t type_token_id (0x20000cd)
		i32 313; uint32_t java_name_index (0x139)
	}, ; 288
	%struct.TypeMapJava {
		i32 3, ; uint32_t module_index (0x3)
		i32 33554461, ; uint32_t type_token_id (0x200001d)
		i32 111; uint32_t java_name_index (0x6f)
	}, ; 289
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555255, ; uint32_t type_token_id (0x2000337)
		i32 855; uint32_t java_name_index (0x357)
	}, ; 290
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554882, ; uint32_t type_token_id (0x20001c2)
		i32 464; uint32_t java_name_index (0x1d0)
	}, ; 291
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33554455, ; uint32_t type_token_id (0x2000017)
		i32 1054; uint32_t java_name_index (0x41e)
	}, ; 292
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554901, ; uint32_t type_token_id (0x20001d5)
		i32 473; uint32_t java_name_index (0x1d9)
	}, ; 293
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554571, ; uint32_t type_token_id (0x200008b)
		i32 39; uint32_t java_name_index (0x27)
	}, ; 294
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 713; uint32_t java_name_index (0x2c9)
	}, ; 295
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33554535, ; uint32_t type_token_id (0x2000067)
		i32 1076; uint32_t java_name_index (0x434)
	}, ; 296
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 259; uint32_t java_name_index (0x103)
	}, ; 297
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33554448, ; uint32_t type_token_id (0x2000010)
		i32 1051; uint32_t java_name_index (0x41b)
	}, ; 298
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554623, ; uint32_t type_token_id (0x20000bf)
		i32 305; uint32_t java_name_index (0x131)
	}, ; 299
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555856, ; uint32_t type_token_id (0x2000590)
		i32 929; uint32_t java_name_index (0x3a1)
	}, ; 300
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 355; uint32_t java_name_index (0x163)
	}, ; 301
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554567, ; uint32_t type_token_id (0x2000087)
		i32 37; uint32_t java_name_index (0x25)
	}, ; 302
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555020, ; uint32_t type_token_id (0x200024c)
		i32 538; uint32_t java_name_index (0x21a)
	}, ; 303
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554830, ; uint32_t type_token_id (0x200018e)
		i32 427; uint32_t java_name_index (0x1ab)
	}, ; 304
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554772, ; uint32_t type_token_id (0x2000154)
		i32 390; uint32_t java_name_index (0x186)
	}, ; 305
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index (0x27)
		i32 33554449, ; uint32_t type_token_id (0x2000011)
		i32 1110; uint32_t java_name_index (0x456)
	}, ; 306
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 168; uint32_t java_name_index (0xa8)
	}, ; 307
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index (0xb)
		i32 33554453, ; uint32_t type_token_id (0x2000015)
		i32 150; uint32_t java_name_index (0x96)
	}, ; 308
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 318; uint32_t java_name_index (0x13e)
	}, ; 309
	%struct.TypeMapJava {
		i32 9, ; uint32_t module_index (0x9)
		i32 33554454, ; uint32_t type_token_id (0x2000016)
		i32 138; uint32_t java_name_index (0x8a)
	}, ; 310
	%struct.TypeMapJava {
		i32 33, ; uint32_t module_index (0x21)
		i32 33554435, ; uint32_t type_token_id (0x2000003)
		i32 1047; uint32_t java_name_index (0x417)
	}, ; 311
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 261; uint32_t java_name_index (0x105)
	}, ; 312
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1201; uint32_t java_name_index (0x4b1)
	}, ; 313
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554781, ; uint32_t type_token_id (0x200015d)
		i32 395; uint32_t java_name_index (0x18b)
	}, ; 314
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 702; uint32_t java_name_index (0x2be)
	}, ; 315
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555277, ; uint32_t type_token_id (0x200034d)
		i32 866; uint32_t java_name_index (0x362)
	}, ; 316
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554695, ; uint32_t type_token_id (0x2000107)
		i32 348; uint32_t java_name_index (0x15c)
	}, ; 317
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555237, ; uint32_t type_token_id (0x2000325)
		i32 850; uint32_t java_name_index (0x352)
	}, ; 318
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 785; uint32_t java_name_index (0x311)
	}, ; 319
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 52; uint32_t java_name_index (0x34)
	}, ; 320
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554604, ; uint32_t type_token_id (0x20000ac)
		i32 56; uint32_t java_name_index (0x38)
	}, ; 321
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555376, ; uint32_t type_token_id (0x20003b0)
		i32 939; uint32_t java_name_index (0x3ab)
	}, ; 322
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555858, ; uint32_t type_token_id (0x2000592)
		i32 931; uint32_t java_name_index (0x3a3)
	}, ; 323
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33554530, ; uint32_t type_token_id (0x2000062)
		i32 184; uint32_t java_name_index (0xb8)
	}, ; 324
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555135, ; uint32_t type_token_id (0x20002bf)
		i32 579; uint32_t java_name_index (0x243)
	}, ; 325
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 509; uint32_t java_name_index (0x1fd)
	}, ; 326
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1173; uint32_t java_name_index (0x495)
	}, ; 327
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554588, ; uint32_t type_token_id (0x200009c)
		i32 288; uint32_t java_name_index (0x120)
	}, ; 328
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555823, ; uint32_t type_token_id (0x200056f)
		i32 872; uint32_t java_name_index (0x368)
	}, ; 329
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554862, ; uint32_t type_token_id (0x20001ae)
		i32 451; uint32_t java_name_index (0x1c3)
	}, ; 330
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 782; uint32_t java_name_index (0x30e)
	}, ; 331
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554831, ; uint32_t type_token_id (0x200018f)
		i32 428; uint32_t java_name_index (0x1ac)
	}, ; 332
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554577, ; uint32_t type_token_id (0x2000091)
		i32 41; uint32_t java_name_index (0x29)
	}, ; 333
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554864, ; uint32_t type_token_id (0x20001b0)
		i32 453; uint32_t java_name_index (0x1c5)
	}, ; 334
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554808, ; uint32_t type_token_id (0x2000178)
		i32 411; uint32_t java_name_index (0x19b)
	}, ; 335
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554897, ; uint32_t type_token_id (0x20001d1)
		i32 471; uint32_t java_name_index (0x1d7)
	}, ; 336
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554916, ; uint32_t type_token_id (0x20001e4)
		i32 481; uint32_t java_name_index (0x1e1)
	}, ; 337
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555247, ; uint32_t type_token_id (0x200032f)
		i32 631; uint32_t java_name_index (0x277)
	}, ; 338
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555273, ; uint32_t type_token_id (0x2000349)
		i32 861; uint32_t java_name_index (0x35d)
	}, ; 339
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555827, ; uint32_t type_token_id (0x2000573)
		i32 875; uint32_t java_name_index (0x36b)
	}, ; 340
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 33554520, ; uint32_t type_token_id (0x2000058)
		i32 833; uint32_t java_name_index (0x341)
	}, ; 341
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554604, ; uint32_t type_token_id (0x20000ac)
		i32 295; uint32_t java_name_index (0x127)
	}, ; 342
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 30; uint32_t java_name_index (0x1e)
	}, ; 343
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554515, ; uint32_t type_token_id (0x2000053)
		i32 242; uint32_t java_name_index (0xf2)
	}, ; 344
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 208; uint32_t java_name_index (0xd0)
	}, ; 345
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index (0x14)
		i32 33554471, ; uint32_t type_token_id (0x2000027)
		i32 810; uint32_t java_name_index (0x32a)
	}, ; 346
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 33554539, ; uint32_t type_token_id (0x200006b)
		i32 1176; uint32_t java_name_index (0x498)
	}, ; 347
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 558; uint32_t java_name_index (0x22e)
	}, ; 348
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555450, ; uint32_t type_token_id (0x20003fa)
		i32 753; uint32_t java_name_index (0x2f1)
	}, ; 349
	%struct.TypeMapJava {
		i32 33, ; uint32_t module_index (0x21)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1049; uint32_t java_name_index (0x419)
	}, ; 350
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 351; uint32_t java_name_index (0x15f)
	}, ; 351
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554671, ; uint32_t type_token_id (0x20000ef)
		i32 331; uint32_t java_name_index (0x14b)
	}, ; 352
	%struct.TypeMapJava {
		i32 5, ; uint32_t module_index (0x5)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 126; uint32_t java_name_index (0x7e)
	}, ; 353
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 33554745, ; uint32_t type_token_id (0x2000139)
		i32 1002; uint32_t java_name_index (0x3ea)
	}, ; 354
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554634, ; uint32_t type_token_id (0x20000ca)
		i32 73; uint32_t java_name_index (0x49)
	}, ; 355
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555237, ; uint32_t type_token_id (0x2000325)
		i32 621; uint32_t java_name_index (0x26d)
	}, ; 356
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555519, ; uint32_t type_token_id (0x200043f)
		i32 803; uint32_t java_name_index (0x323)
	}, ; 357
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 33554554, ; uint32_t type_token_id (0x200007a)
		i32 1188; uint32_t java_name_index (0x4a4)
	}, ; 358
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33554564, ; uint32_t type_token_id (0x2000084)
		i32 1091; uint32_t java_name_index (0x443)
	}, ; 359
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 257; uint32_t java_name_index (0x101)
	}, ; 360
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 33554610, ; uint32_t type_token_id (0x20000b2)
		i32 985; uint32_t java_name_index (0x3d9)
	}, ; 361
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 33555203, ; uint32_t type_token_id (0x2000303)
		i32 1038; uint32_t java_name_index (0x40e)
	}, ; 362
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 178; uint32_t java_name_index (0xb2)
	}, ; 363
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 336; uint32_t java_name_index (0x150)
	}, ; 364
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 33554541, ; uint32_t type_token_id (0x200006d)
		i32 1177; uint32_t java_name_index (0x499)
	}, ; 365
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554624, ; uint32_t type_token_id (0x20000c0)
		i32 306; uint32_t java_name_index (0x132)
	}, ; 366
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index (0x27)
		i32 33554453, ; uint32_t type_token_id (0x2000015)
		i32 1113; uint32_t java_name_index (0x459)
	}, ; 367
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33554558, ; uint32_t type_token_id (0x200007e)
		i32 1087; uint32_t java_name_index (0x43f)
	}, ; 368
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555276, ; uint32_t type_token_id (0x200034c)
		i32 865; uint32_t java_name_index (0x361)
	}, ; 369
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555167, ; uint32_t type_token_id (0x20002df)
		i32 584; uint32_t java_name_index (0x248)
	}, ; 370
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554615, ; uint32_t type_token_id (0x20000b7)
		i32 64; uint32_t java_name_index (0x40)
	}, ; 371
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554493, ; uint32_t type_token_id (0x200003d)
		i32 225; uint32_t java_name_index (0xe1)
	}, ; 372
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555223, ; uint32_t type_token_id (0x2000317)
		i32 607; uint32_t java_name_index (0x25f)
	}, ; 373
	%struct.TypeMapJava {
		i32 2, ; uint32_t module_index (0x2)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 83; uint32_t java_name_index (0x53)
	}, ; 374
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 723; uint32_t java_name_index (0x2d3)
	}, ; 375
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554438, ; uint32_t type_token_id (0x2000006)
		i32 807; uint32_t java_name_index (0x327)
	}, ; 376
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 212; uint32_t java_name_index (0xd4)
	}, ; 377
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555857, ; uint32_t type_token_id (0x2000591)
		i32 930; uint32_t java_name_index (0x3a2)
	}, ; 378
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33554523, ; uint32_t type_token_id (0x200005b)
		i32 181; uint32_t java_name_index (0xb5)
	}, ; 379
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555480, ; uint32_t type_token_id (0x2000418)
		i32 775; uint32_t java_name_index (0x307)
	}, ; 380
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555236, ; uint32_t type_token_id (0x2000324)
		i32 620; uint32_t java_name_index (0x26c)
	}, ; 381
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1089; uint32_t java_name_index (0x441)
	}, ; 382
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 301; uint32_t java_name_index (0x12d)
	}, ; 383
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554492, ; uint32_t type_token_id (0x200003c)
		i32 224; uint32_t java_name_index (0xe0)
	}, ; 384
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554852, ; uint32_t type_token_id (0x20001a4)
		i32 444; uint32_t java_name_index (0x1bc)
	}, ; 385
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554434, ; uint32_t type_token_id (0x2000002)
		i32 960; uint32_t java_name_index (0x3c0)
	}, ; 386
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555286, ; uint32_t type_token_id (0x2000356)
		i32 656; uint32_t java_name_index (0x290)
	}, ; 387
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554530, ; uint32_t type_token_id (0x2000062)
		i32 251; uint32_t java_name_index (0xfb)
	}, ; 388
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1074; uint32_t java_name_index (0x432)
	}, ; 389
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555254, ; uint32_t type_token_id (0x2000336)
		i32 854; uint32_t java_name_index (0x356)
	}, ; 390
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555340, ; uint32_t type_token_id (0x200038c)
		i32 689; uint32_t java_name_index (0x2b1)
	}, ; 391
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33554542, ; uint32_t type_token_id (0x200006e)
		i32 1080; uint32_t java_name_index (0x438)
	}, ; 392
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555512, ; uint32_t type_token_id (0x2000438)
		i32 797; uint32_t java_name_index (0x31d)
	}, ; 393
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555441, ; uint32_t type_token_id (0x20003f1)
		i32 746; uint32_t java_name_index (0x2ea)
	}, ; 394
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555241, ; uint32_t type_token_id (0x2000329)
		i32 625; uint32_t java_name_index (0x271)
	}, ; 395
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 510; uint32_t java_name_index (0x1fe)
	}, ; 396
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 898; uint32_t java_name_index (0x382)
	}, ; 397
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 213; uint32_t java_name_index (0xd5)
	}, ; 398
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 532; uint32_t java_name_index (0x214)
	}, ; 399
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 717; uint32_t java_name_index (0x2cd)
	}, ; 400
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 33554497, ; uint32_t type_token_id (0x2000041)
		i32 830; uint32_t java_name_index (0x33e)
	}, ; 401
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554692, ; uint32_t type_token_id (0x2000104)
		i32 345; uint32_t java_name_index (0x159)
	}, ; 402
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555115, ; uint32_t type_token_id (0x20002ab)
		i32 565; uint32_t java_name_index (0x235)
	}, ; 403
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554473, ; uint32_t type_token_id (0x2000029)
		i32 819; uint32_t java_name_index (0x333)
	}, ; 404
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555240, ; uint32_t type_token_id (0x2000328)
		i32 851; uint32_t java_name_index (0x353)
	}, ; 405
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 45; uint32_t java_name_index (0x2d)
	}, ; 406
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555295, ; uint32_t type_token_id (0x200035f)
		i32 662; uint32_t java_name_index (0x296)
	}, ; 407
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554778, ; uint32_t type_token_id (0x200015a)
		i32 393; uint32_t java_name_index (0x189)
	}, ; 408
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554694, ; uint32_t type_token_id (0x2000106)
		i32 347; uint32_t java_name_index (0x15b)
	}, ; 409
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555287, ; uint32_t type_token_id (0x2000357)
		i32 878; uint32_t java_name_index (0x36e)
	}, ; 410
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554525, ; uint32_t type_token_id (0x200005d)
		i32 248; uint32_t java_name_index (0xf8)
	}, ; 411
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554505, ; uint32_t type_token_id (0x2000049)
		i32 235; uint32_t java_name_index (0xeb)
	}, ; 412
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555121, ; uint32_t type_token_id (0x20002b1)
		i32 569; uint32_t java_name_index (0x239)
	}, ; 413
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555169, ; uint32_t type_token_id (0x20002e1)
		i32 585; uint32_t java_name_index (0x249)
	}, ; 414
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554608, ; uint32_t type_token_id (0x20000b0)
		i32 297; uint32_t java_name_index (0x129)
	}, ; 415
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 33554478, ; uint32_t type_token_id (0x200002e)
		i32 1138; uint32_t java_name_index (0x472)
	}, ; 416
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 640; uint32_t java_name_index (0x280)
	}, ; 417
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 539; uint32_t java_name_index (0x21b)
	}, ; 418
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554457, ; uint32_t type_token_id (0x2000019)
		i32 814; uint32_t java_name_index (0x32e)
	}, ; 419
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555438, ; uint32_t type_token_id (0x20003ee)
		i32 744; uint32_t java_name_index (0x2e8)
	}, ; 420
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 724; uint32_t java_name_index (0x2d4)
	}, ; 421
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 211; uint32_t java_name_index (0xd3)
	}, ; 422
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555848, ; uint32_t type_token_id (0x2000588)
		i32 909; uint32_t java_name_index (0x38d)
	}, ; 423
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33554493, ; uint32_t type_token_id (0x200003d)
		i32 163; uint32_t java_name_index (0xa3)
	}, ; 424
	%struct.TypeMapJava {
		i32 2, ; uint32_t module_index (0x2)
		i32 33554533, ; uint32_t type_token_id (0x2000065)
		i32 109; uint32_t java_name_index (0x6d)
	}, ; 425
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554573, ; uint32_t type_token_id (0x200008d)
		i32 277; uint32_t java_name_index (0x115)
	}, ; 426
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1195; uint32_t java_name_index (0x4ab)
	}, ; 427
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554656, ; uint32_t type_token_id (0x20000e0)
		i32 322; uint32_t java_name_index (0x142)
	}, ; 428
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554594, ; uint32_t type_token_id (0x20000a2)
		i32 292; uint32_t java_name_index (0x124)
	}, ; 429
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 33554777, ; uint32_t type_token_id (0x2000159)
		i32 1030; uint32_t java_name_index (0x406)
	}, ; 430
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1194; uint32_t java_name_index (0x4aa)
	}, ; 431
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index (0x26)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1106; uint32_t java_name_index (0x452)
	}, ; 432
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555456, ; uint32_t type_token_id (0x2000400)
		i32 757; uint32_t java_name_index (0x2f5)
	}, ; 433
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554941, ; uint32_t type_token_id (0x20001fd)
		i32 491; uint32_t java_name_index (0x1eb)
	}, ; 434
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555220, ; uint32_t type_token_id (0x2000314)
		i32 604; uint32_t java_name_index (0x25c)
	}, ; 435
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 827; uint32_t java_name_index (0x33b)
	}, ; 436
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 701; uint32_t java_name_index (0x2bd)
	}, ; 437
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 33554981, ; uint32_t type_token_id (0x2000225)
		i32 1043; uint32_t java_name_index (0x413)
	}, ; 438
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554650, ; uint32_t type_token_id (0x20000da)
		i32 320; uint32_t java_name_index (0x140)
	}, ; 439
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554911, ; uint32_t type_token_id (0x20001df)
		i32 477; uint32_t java_name_index (0x1dd)
	}, ; 440
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33554527, ; uint32_t type_token_id (0x200005f)
		i32 183; uint32_t java_name_index (0xb7)
	}, ; 441
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554950, ; uint32_t type_token_id (0x2000206)
		i32 497; uint32_t java_name_index (0x1f1)
	}, ; 442
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554839, ; uint32_t type_token_id (0x2000197)
		i32 436; uint32_t java_name_index (0x1b4)
	}, ; 443
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 33554465, ; uint32_t type_token_id (0x2000021)
		i32 957; uint32_t java_name_index (0x3bd)
	}, ; 444
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 422; uint32_t java_name_index (0x1a6)
	}, ; 445
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554590, ; uint32_t type_token_id (0x200009e)
		i32 46; uint32_t java_name_index (0x2e)
	}, ; 446
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 817; uint32_t java_name_index (0x331)
	}, ; 447
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33554537, ; uint32_t type_token_id (0x2000069)
		i32 191; uint32_t java_name_index (0xbf)
	}, ; 448
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554584, ; uint32_t type_token_id (0x2000098)
		i32 284; uint32_t java_name_index (0x11c)
	}, ; 449
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554614, ; uint32_t type_token_id (0x20000b6)
		i32 63; uint32_t java_name_index (0x3f)
	}, ; 450
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554718, ; uint32_t type_token_id (0x200011e)
		i32 359; uint32_t java_name_index (0x167)
	}, ; 451
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 988; uint32_t java_name_index (0x3dc)
	}, ; 452
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554500, ; uint32_t type_token_id (0x2000044)
		i32 231; uint32_t java_name_index (0xe7)
	}, ; 453
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 943; uint32_t java_name_index (0x3af)
	}, ; 454
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 735; uint32_t java_name_index (0x2df)
	}, ; 455
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555222, ; uint32_t type_token_id (0x2000316)
		i32 606; uint32_t java_name_index (0x25e)
	}, ; 456
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555815, ; uint32_t type_token_id (0x2000567)
		i32 860; uint32_t java_name_index (0x35c)
	}, ; 457
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555003, ; uint32_t type_token_id (0x200023b)
		i32 528; uint32_t java_name_index (0x210)
	}, ; 458
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 33554487, ; uint32_t type_token_id (0x2000037)
		i32 1145; uint32_t java_name_index (0x479)
	}, ; 459
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555511, ; uint32_t type_token_id (0x2000437)
		i32 796; uint32_t java_name_index (0x31c)
	}, ; 460
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 33554491, ; uint32_t type_token_id (0x200003b)
		i32 1149; uint32_t java_name_index (0x47d)
	}, ; 461
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555502, ; uint32_t type_token_id (0x200042e)
		i32 789; uint32_t java_name_index (0x315)
	}, ; 462
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1219; uint32_t java_name_index (0x4c3)
	}, ; 463
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 546; uint32_t java_name_index (0x222)
	}, ; 464
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 33554516, ; uint32_t type_token_id (0x2000054)
		i32 1163; uint32_t java_name_index (0x48b)
	}, ; 465
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555344, ; uint32_t type_token_id (0x2000390)
		i32 914; uint32_t java_name_index (0x392)
	}, ; 466
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index (0x28)
		i32 33554437, ; uint32_t type_token_id (0x2000005)
		i32 1124; uint32_t java_name_index (0x464)
	}, ; 467
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index (0x28)
		i32 33554434, ; uint32_t type_token_id (0x2000002)
		i32 1121; uint32_t java_name_index (0x461)
	}, ; 468
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555129, ; uint32_t type_token_id (0x20002b9)
		i32 575; uint32_t java_name_index (0x23f)
	}, ; 469
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555477, ; uint32_t type_token_id (0x2000415)
		i32 772; uint32_t java_name_index (0x304)
	}, ; 470
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 33554754, ; uint32_t type_token_id (0x2000142)
		i32 1012; uint32_t java_name_index (0x3f4)
	}, ; 471
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555011, ; uint32_t type_token_id (0x2000243)
		i32 533; uint32_t java_name_index (0x215)
	}, ; 472
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554657, ; uint32_t type_token_id (0x20000e1)
		i32 323; uint32_t java_name_index (0x143)
	}, ; 473
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 33554708, ; uint32_t type_token_id (0x2000114)
		i32 995; uint32_t java_name_index (0x3e3)
	}, ; 474
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555078, ; uint32_t type_token_id (0x2000286)
		i32 560; uint32_t java_name_index (0x230)
	}, ; 475
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 33554585, ; uint32_t type_token_id (0x2000099)
		i32 1204; uint32_t java_name_index (0x4b4)
	}, ; 476
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554668, ; uint32_t type_token_id (0x20000ec)
		i32 328; uint32_t java_name_index (0x148)
	}, ; 477
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 33554455, ; uint32_t type_token_id (0x2000017)
		i32 950; uint32_t java_name_index (0x3b6)
	}, ; 478
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554658, ; uint32_t type_token_id (0x20000e2)
		i32 324; uint32_t java_name_index (0x144)
	}, ; 479
	%struct.TypeMapJava {
		i32 2, ; uint32_t module_index (0x2)
		i32 33554506, ; uint32_t type_token_id (0x200004a)
		i32 91; uint32_t java_name_index (0x5b)
	}, ; 480
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554948, ; uint32_t type_token_id (0x2000204)
		i32 495; uint32_t java_name_index (0x1ef)
	}, ; 481
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 942; uint32_t java_name_index (0x3ae)
	}, ; 482
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555478, ; uint32_t type_token_id (0x2000416)
		i32 773; uint32_t java_name_index (0x305)
	}, ; 483
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 567; uint32_t java_name_index (0x237)
	}, ; 484
	%struct.TypeMapJava {
		i32 5, ; uint32_t module_index (0x5)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 128; uint32_t java_name_index (0x80)
	}, ; 485
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554993, ; uint32_t type_token_id (0x2000231)
		i32 520; uint32_t java_name_index (0x208)
	}, ; 486
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555284, ; uint32_t type_token_id (0x2000354)
		i32 654; uint32_t java_name_index (0x28e)
	}, ; 487
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 705; uint32_t java_name_index (0x2c1)
	}, ; 488
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554447, ; uint32_t type_token_id (0x200000f)
		i32 825; uint32_t java_name_index (0x339)
	}, ; 489
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554673, ; uint32_t type_token_id (0x20000f1)
		i32 332; uint32_t java_name_index (0x14c)
	}, ; 490
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 439; uint32_t java_name_index (0x1b7)
	}, ; 491
	%struct.TypeMapJava {
		i32 15, ; uint32_t module_index (0xf)
		i32 33554434, ; uint32_t type_token_id (0x2000002)
		i32 217; uint32_t java_name_index (0xd9)
	}, ; 492
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 480; uint32_t java_name_index (0x1e0)
	}, ; 493
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 68; uint32_t java_name_index (0x44)
	}, ; 494
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1141; uint32_t java_name_index (0x475)
	}, ; 495
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555382, ; uint32_t type_token_id (0x20003b6)
		i32 711; uint32_t java_name_index (0x2c7)
	}, ; 496
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 252; uint32_t java_name_index (0xfc)
	}, ; 497
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554771, ; uint32_t type_token_id (0x2000153)
		i32 389; uint32_t java_name_index (0x185)
	}, ; 498
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555277, ; uint32_t type_token_id (0x200034d)
		i32 650; uint32_t java_name_index (0x28a)
	}, ; 499
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 33554766, ; uint32_t type_token_id (0x200014e)
		i32 1021; uint32_t java_name_index (0x3fd)
	}, ; 500
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554833, ; uint32_t type_token_id (0x2000191)
		i32 430; uint32_t java_name_index (0x1ae)
	}, ; 501
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555283, ; uint32_t type_token_id (0x2000353)
		i32 653; uint32_t java_name_index (0x28d)
	}, ; 502
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 896; uint32_t java_name_index (0x380)
	}, ; 503
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555233, ; uint32_t type_token_id (0x2000321)
		i32 617; uint32_t java_name_index (0x269)
	}, ; 504
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555707, ; uint32_t type_token_id (0x20004fb)
		i32 835; uint32_t java_name_index (0x343)
	}, ; 505
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555328, ; uint32_t type_token_id (0x2000380)
		i32 680; uint32_t java_name_index (0x2a8)
	}, ; 506
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555413, ; uint32_t type_token_id (0x20003d5)
		i32 728; uint32_t java_name_index (0x2d8)
	}, ; 507
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 263; uint32_t java_name_index (0x107)
	}, ; 508
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555383, ; uint32_t type_token_id (0x20003b7)
		i32 712; uint32_t java_name_index (0x2c8)
	}, ; 509
	%struct.TypeMapJava {
		i32 2, ; uint32_t module_index (0x2)
		i32 33554507, ; uint32_t type_token_id (0x200004b)
		i32 92; uint32_t java_name_index (0x5c)
	}, ; 510
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 386; uint32_t java_name_index (0x182)
	}, ; 511
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554526, ; uint32_t type_token_id (0x200005e)
		i32 17; uint32_t java_name_index (0x11)
	}, ; 512
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 33554646, ; uint32_t type_token_id (0x20000d6)
		i32 1239; uint32_t java_name_index (0x4d7)
	}, ; 513
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 534; uint32_t java_name_index (0x216)
	}, ; 514
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1212; uint32_t java_name_index (0x4bc)
	}, ; 515
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 198; uint32_t java_name_index (0xc6)
	}, ; 516
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33554586, ; uint32_t type_token_id (0x200009a)
		i32 215; uint32_t java_name_index (0xd7)
	}, ; 517
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555371, ; uint32_t type_token_id (0x20003ab)
		i32 933; uint32_t java_name_index (0x3a5)
	}, ; 518
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555270, ; uint32_t type_token_id (0x2000346)
		i32 646; uint32_t java_name_index (0x286)
	}, ; 519
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1235; uint32_t java_name_index (0x4d3)
	}, ; 520
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 33554449, ; uint32_t type_token_id (0x2000011)
		i32 944; uint32_t java_name_index (0x3b0)
	}, ; 521
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 33555213, ; uint32_t type_token_id (0x200030d)
		i32 1040; uint32_t java_name_index (0x410)
	}, ; 522
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 33554752, ; uint32_t type_token_id (0x2000140)
		i32 1009; uint32_t java_name_index (0x3f1)
	}, ; 523
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554617, ; uint32_t type_token_id (0x20000b9)
		i32 65; uint32_t java_name_index (0x41)
	}, ; 524
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 791; uint32_t java_name_index (0x317)
	}, ; 525
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554543, ; uint32_t type_token_id (0x200006f)
		i32 26; uint32_t java_name_index (0x1a)
	}, ; 526
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33554495, ; uint32_t type_token_id (0x200003f)
		i32 165; uint32_t java_name_index (0xa5)
	}, ; 527
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554790, ; uint32_t type_token_id (0x2000166)
		i32 399; uint32_t java_name_index (0x18f)
	}, ; 528
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554691, ; uint32_t type_token_id (0x2000103)
		i32 344; uint32_t java_name_index (0x158)
	}, ; 529
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33554529, ; uint32_t type_token_id (0x2000061)
		i32 1072; uint32_t java_name_index (0x430)
	}, ; 530
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555056, ; uint32_t type_token_id (0x2000270)
		i32 548; uint32_t java_name_index (0x224)
	}, ; 531
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555001, ; uint32_t type_token_id (0x2000239)
		i32 526; uint32_t java_name_index (0x20e)
	}, ; 532
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 33554551, ; uint32_t type_token_id (0x2000077)
		i32 1186; uint32_t java_name_index (0x4a2)
	}, ; 533
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555255, ; uint32_t type_token_id (0x2000337)
		i32 635; uint32_t java_name_index (0x27b)
	}, ; 534
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555358, ; uint32_t type_token_id (0x200039e)
		i32 920; uint32_t java_name_index (0x398)
	}, ; 535
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554856, ; uint32_t type_token_id (0x20001a8)
		i32 448; uint32_t java_name_index (0x1c0)
	}, ; 536
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 668; uint32_t java_name_index (0x29c)
	}, ; 537
	%struct.TypeMapJava {
		i32 5, ; uint32_t module_index (0x5)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 125; uint32_t java_name_index (0x7d)
	}, ; 538
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33554521, ; uint32_t type_token_id (0x2000059)
		i32 180; uint32_t java_name_index (0xb4)
	}, ; 539
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555266, ; uint32_t type_token_id (0x2000342)
		i32 642; uint32_t java_name_index (0x282)
	}, ; 540
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 33554546, ; uint32_t type_token_id (0x2000072)
		i32 1181; uint32_t java_name_index (0x49d)
	}, ; 541
	%struct.TypeMapJava {
		i32 30, ; uint32_t module_index (0x1e)
		i32 33554466, ; uint32_t type_token_id (0x2000022)
		i32 961; uint32_t java_name_index (0x3c1)
	}, ; 542
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554876, ; uint32_t type_token_id (0x20001bc)
		i32 460; uint32_t java_name_index (0x1cc)
	}, ; 543
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554798, ; uint32_t type_token_id (0x200016e)
		i32 405; uint32_t java_name_index (0x195)
	}, ; 544
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554443, ; uint32_t type_token_id (0x200000b)
		i32 822; uint32_t java_name_index (0x336)
	}, ; 545
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554440, ; uint32_t type_token_id (0x2000008)
		i32 813; uint32_t java_name_index (0x32d)
	}, ; 546
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 15; uint32_t java_name_index (0xf)
	}, ; 547
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 33554750, ; uint32_t type_token_id (0x200013e)
		i32 1006; uint32_t java_name_index (0x3ee)
	}, ; 548
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554467, ; uint32_t type_token_id (0x2000023)
		i32 816; uint32_t java_name_index (0x330)
	}, ; 549
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555341, ; uint32_t type_token_id (0x200038d)
		i32 690; uint32_t java_name_index (0x2b2)
	}, ; 550
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index (0xc)
		i32 33554437, ; uint32_t type_token_id (0x2000005)
		i32 156; uint32_t java_name_index (0x9c)
	}, ; 551
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 33554629, ; uint32_t type_token_id (0x20000c5)
		i32 1228; uint32_t java_name_index (0x4cc)
	}, ; 552
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1154; uint32_t java_name_index (0x482)
	}, ; 553
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 319; uint32_t java_name_index (0x13f)
	}, ; 554
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555466, ; uint32_t type_token_id (0x200040a)
		i32 765; uint32_t java_name_index (0x2fd)
	}, ; 555
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 33554630, ; uint32_t type_token_id (0x20000c6)
		i32 1229; uint32_t java_name_index (0x4cd)
	}, ; 556
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555302, ; uint32_t type_token_id (0x2000366)
		i32 666; uint32_t java_name_index (0x29a)
	}, ; 557
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555281, ; uint32_t type_token_id (0x2000351)
		i32 652; uint32_t java_name_index (0x28c)
	}, ; 558
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1224; uint32_t java_name_index (0x4c8)
	}, ; 559
	%struct.TypeMapJava {
		i32 30, ; uint32_t module_index (0x1e)
		i32 33554475, ; uint32_t type_token_id (0x200002b)
		i32 968; uint32_t java_name_index (0x3c8)
	}, ; 560
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 33554450, ; uint32_t type_token_id (0x2000012)
		i32 945; uint32_t java_name_index (0x3b1)
	}, ; 561
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554624, ; uint32_t type_token_id (0x20000c0)
		i32 69; uint32_t java_name_index (0x45)
	}, ; 562
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 33554792, ; uint32_t type_token_id (0x2000168)
		i32 1032; uint32_t java_name_index (0x408)
	}, ; 563
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555786, ; uint32_t type_token_id (0x200054a)
		i32 839; uint32_t java_name_index (0x347)
	}, ; 564
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33554492, ; uint32_t type_token_id (0x200003c)
		i32 162; uint32_t java_name_index (0xa2)
	}, ; 565
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555281, ; uint32_t type_token_id (0x2000351)
		i32 870; uint32_t java_name_index (0x366)
	}, ; 566
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index (0x26)
		i32 33554445, ; uint32_t type_token_id (0x200000d)
		i32 1107; uint32_t java_name_index (0x453)
	}, ; 567
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554500, ; uint32_t type_token_id (0x2000044)
		i32 1; uint32_t java_name_index (0x1)
	}, ; 568
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554536, ; uint32_t type_token_id (0x2000068)
		i32 22; uint32_t java_name_index (0x16)
	}, ; 569
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index (0x27)
		i32 33554457, ; uint32_t type_token_id (0x2000019)
		i32 1116; uint32_t java_name_index (0x45c)
	}, ; 570
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 33554609, ; uint32_t type_token_id (0x20000b1)
		i32 1217; uint32_t java_name_index (0x4c1)
	}, ; 571
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554910, ; uint32_t type_token_id (0x20001de)
		i32 476; uint32_t java_name_index (0x1dc)
	}, ; 572
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555476, ; uint32_t type_token_id (0x2000414)
		i32 771; uint32_t java_name_index (0x303)
	}, ; 573
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 33555107, ; uint32_t type_token_id (0x20002a3)
		i32 1010; uint32_t java_name_index (0x3f2)
	}, ; 574
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 316; uint32_t java_name_index (0x13c)
	}, ; 575
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1202; uint32_t java_name_index (0x4b2)
	}, ; 576
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555261, ; uint32_t type_token_id (0x200033d)
		i32 638; uint32_t java_name_index (0x27e)
	}, ; 577
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555313, ; uint32_t type_token_id (0x2000371)
		i32 672; uint32_t java_name_index (0x2a0)
	}, ; 578
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554512, ; uint32_t type_token_id (0x2000050)
		i32 11; uint32_t java_name_index (0xb)
	}, ; 579
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 269; uint32_t java_name_index (0x10d)
	}, ; 580
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33554535, ; uint32_t type_token_id (0x2000067)
		i32 189; uint32_t java_name_index (0xbd)
	}, ; 581
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555136, ; uint32_t type_token_id (0x20002c0)
		i32 580; uint32_t java_name_index (0x244)
	}, ; 582
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1203; uint32_t java_name_index (0x4b3)
	}, ; 583
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554674, ; uint32_t type_token_id (0x20000f2)
		i32 333; uint32_t java_name_index (0x14d)
	}, ; 584
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554949, ; uint32_t type_token_id (0x2000205)
		i32 496; uint32_t java_name_index (0x1f0)
	}, ; 585
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554640, ; uint32_t type_token_id (0x20000d0)
		i32 315; uint32_t java_name_index (0x13b)
	}, ; 586
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 671; uint32_t java_name_index (0x29f)
	}, ; 587
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554710, ; uint32_t type_token_id (0x2000116)
		i32 357; uint32_t java_name_index (0x165)
	}, ; 588
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554793, ; uint32_t type_token_id (0x2000169)
		i32 402; uint32_t java_name_index (0x192)
	}, ; 589
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 440; uint32_t java_name_index (0x1b8)
	}, ; 590
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554586, ; uint32_t type_token_id (0x200009a)
		i32 286; uint32_t java_name_index (0x11e)
	}, ; 591
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 13; uint32_t java_name_index (0xd)
	}, ; 592
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555381, ; uint32_t type_token_id (0x20003b5)
		i32 710; uint32_t java_name_index (0x2c6)
	}, ; 593
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554726, ; uint32_t type_token_id (0x2000126)
		i32 364; uint32_t java_name_index (0x16c)
	}, ; 594
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 720; uint32_t java_name_index (0x2d0)
	}, ; 595
	%struct.TypeMapJava {
		i32 3, ; uint32_t module_index (0x3)
		i32 33554471, ; uint32_t type_token_id (0x2000027)
		i32 115; uint32_t java_name_index (0x73)
	}, ; 596
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33554559, ; uint32_t type_token_id (0x200007f)
		i32 1088; uint32_t java_name_index (0x440)
	}, ; 597
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1213; uint32_t java_name_index (0x4bd)
	}, ; 598
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554881, ; uint32_t type_token_id (0x20001c1)
		i32 463; uint32_t java_name_index (0x1cf)
	}, ; 599
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 33554652, ; uint32_t type_token_id (0x20000dc)
		i32 1244; uint32_t java_name_index (0x4dc)
	}, ; 600
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555116, ; uint32_t type_token_id (0x20002ac)
		i32 566; uint32_t java_name_index (0x236)
	}, ; 601
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 343; uint32_t java_name_index (0x157)
	}, ; 602
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554628, ; uint32_t type_token_id (0x20000c4)
		i32 71; uint32_t java_name_index (0x47)
	}, ; 603
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1175; uint32_t java_name_index (0x497)
	}, ; 604
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 33554988, ; uint32_t type_token_id (0x200022c)
		i32 1045; uint32_t java_name_index (0x415)
	}, ; 605
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554912, ; uint32_t type_token_id (0x20001e0)
		i32 478; uint32_t java_name_index (0x1de)
	}, ; 606
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 33554457, ; uint32_t type_token_id (0x2000019)
		i32 952; uint32_t java_name_index (0x3b8)
	}, ; 607
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555315, ; uint32_t type_token_id (0x2000373)
		i32 674; uint32_t java_name_index (0x2a2)
	}, ; 608
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555425, ; uint32_t type_token_id (0x20003e1)
		i32 737; uint32_t java_name_index (0x2e1)
	}, ; 609
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 33555212, ; uint32_t type_token_id (0x200030c)
		i32 1039; uint32_t java_name_index (0x40f)
	}, ; 610
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1150; uint32_t java_name_index (0x47e)
	}, ; 611
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 33554608, ; uint32_t type_token_id (0x20000b0)
		i32 1216; uint32_t java_name_index (0x4c0)
	}, ; 612
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554838, ; uint32_t type_token_id (0x2000196)
		i32 435; uint32_t java_name_index (0x1b3)
	}, ; 613
	%struct.TypeMapJava {
		i32 30, ; uint32_t module_index (0x1e)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 969; uint32_t java_name_index (0x3c9)
	}, ; 614
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554638, ; uint32_t type_token_id (0x20000ce)
		i32 314; uint32_t java_name_index (0x13a)
	}, ; 615
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555229, ; uint32_t type_token_id (0x200031d)
		i32 613; uint32_t java_name_index (0x265)
	}, ; 616
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 33554510, ; uint32_t type_token_id (0x200004e)
		i32 1159; uint32_t java_name_index (0x487)
	}, ; 617
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554591, ; uint32_t type_token_id (0x200009f)
		i32 47; uint32_t java_name_index (0x2f)
	}, ; 618
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 200; uint32_t java_name_index (0xc8)
	}, ; 619
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555329, ; uint32_t type_token_id (0x2000381)
		i32 681; uint32_t java_name_index (0x2a9)
	}, ; 620
	%struct.TypeMapJava {
		i32 5, ; uint32_t module_index (0x5)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 127; uint32_t java_name_index (0x7f)
	}, ; 621
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555289, ; uint32_t type_token_id (0x2000359)
		i32 658; uint32_t java_name_index (0x292)
	}, ; 622
	%struct.TypeMapJava {
		i32 8, ; uint32_t module_index (0x8)
		i32 33554452, ; uint32_t type_token_id (0x2000014)
		i32 136; uint32_t java_name_index (0x88)
	}, ; 623
	%struct.TypeMapJava {
		i32 4, ; uint32_t module_index (0x4)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 119; uint32_t java_name_index (0x77)
	}, ; 624
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554893, ; uint32_t type_token_id (0x20001cd)
		i32 469; uint32_t java_name_index (0x1d5)
	}, ; 625
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555223, ; uint32_t type_token_id (0x2000317)
		i32 841; uint32_t java_name_index (0x349)
	}, ; 626
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 33554510, ; uint32_t type_token_id (0x200004e)
		i32 832; uint32_t java_name_index (0x340)
	}, ; 627
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1199; uint32_t java_name_index (0x4af)
	}, ; 628
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554740, ; uint32_t type_token_id (0x2000134)
		i32 372; uint32_t java_name_index (0x174)
	}, ; 629
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 33554456, ; uint32_t type_token_id (0x2000018)
		i32 951; uint32_t java_name_index (0x3b7)
	}, ; 630
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554613, ; uint32_t type_token_id (0x20000b5)
		i32 62; uint32_t java_name_index (0x3e)
	}, ; 631
	%struct.TypeMapJava {
		i32 2, ; uint32_t module_index (0x2)
		i32 33554531, ; uint32_t type_token_id (0x2000063)
		i32 107; uint32_t java_name_index (0x6b)
	}, ; 632
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555362, ; uint32_t type_token_id (0x20003a2)
		i32 923; uint32_t java_name_index (0x39b)
	}, ; 633
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555120, ; uint32_t type_token_id (0x20002b0)
		i32 568; uint32_t java_name_index (0x238)
	}, ; 634
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554570, ; uint32_t type_token_id (0x200008a)
		i32 38; uint32_t java_name_index (0x26)
	}, ; 635
	%struct.TypeMapJava {
		i32 2, ; uint32_t module_index (0x2)
		i32 33554515, ; uint32_t type_token_id (0x2000053)
		i32 96; uint32_t java_name_index (0x60)
	}, ; 636
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 33554454, ; uint32_t type_token_id (0x2000016)
		i32 949; uint32_t java_name_index (0x3b5)
	}, ; 637
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 33554527, ; uint32_t type_token_id (0x200005f)
		i32 1169; uint32_t java_name_index (0x491)
	}, ; 638
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 40; uint32_t java_name_index (0x28)
	}, ; 639
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index (0xc)
		i32 33554436, ; uint32_t type_token_id (0x2000004)
		i32 155; uint32_t java_name_index (0x9b)
	}, ; 640
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554662, ; uint32_t type_token_id (0x20000e6)
		i32 326; uint32_t java_name_index (0x146)
	}, ; 641
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555225, ; uint32_t type_token_id (0x2000319)
		i32 609; uint32_t java_name_index (0x261)
	}, ; 642
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index (0xc)
		i32 33554438, ; uint32_t type_token_id (0x2000006)
		i32 157; uint32_t java_name_index (0x9d)
	}, ; 643
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index (0x14)
		i32 33554472, ; uint32_t type_token_id (0x2000028)
		i32 811; uint32_t java_name_index (0x32b)
	}, ; 644
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1214; uint32_t java_name_index (0x4be)
	}, ; 645
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 293; uint32_t java_name_index (0x125)
	}, ; 646
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555310, ; uint32_t type_token_id (0x200036e)
		i32 670; uint32_t java_name_index (0x29e)
	}, ; 647
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555346, ; uint32_t type_token_id (0x2000392)
		i32 915; uint32_t java_name_index (0x393)
	}, ; 648
	%struct.TypeMapJava {
		i32 2, ; uint32_t module_index (0x2)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 101; uint32_t java_name_index (0x65)
	}, ; 649
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33554571, ; uint32_t type_token_id (0x200008b)
		i32 206; uint32_t java_name_index (0xce)
	}, ; 650
	%struct.TypeMapJava {
		i32 30, ; uint32_t module_index (0x1e)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 974; uint32_t java_name_index (0x3ce)
	}, ; 651
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554508, ; uint32_t type_token_id (0x200004c)
		i32 237; uint32_t java_name_index (0xed)
	}, ; 652
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554537, ; uint32_t type_token_id (0x2000069)
		i32 23; uint32_t java_name_index (0x17)
	}, ; 653
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 250; uint32_t java_name_index (0xfa)
	}, ; 654
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 33554477, ; uint32_t type_token_id (0x200002d)
		i32 1137; uint32_t java_name_index (0x471)
	}, ; 655
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33554542, ; uint32_t type_token_id (0x200006e)
		i32 195; uint32_t java_name_index (0xc3)
	}, ; 656
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 954; uint32_t java_name_index (0x3ba)
	}, ; 657
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 33554807, ; uint32_t type_token_id (0x2000177)
		i32 1036; uint32_t java_name_index (0x40c)
	}, ; 658
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 33554768, ; uint32_t type_token_id (0x2000150)
		i32 1023; uint32_t java_name_index (0x3ff)
	}, ; 659
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33554548, ; uint32_t type_token_id (0x2000074)
		i32 1083; uint32_t java_name_index (0x43b)
	}, ; 660
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555451, ; uint32_t type_token_id (0x20003fb)
		i32 754; uint32_t java_name_index (0x2f2)
	}, ; 661
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555446, ; uint32_t type_token_id (0x20003f6)
		i32 750; uint32_t java_name_index (0x2ee)
	}, ; 662
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 265; uint32_t java_name_index (0x109)
	}, ; 663
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33554534, ; uint32_t type_token_id (0x2000066)
		i32 188; uint32_t java_name_index (0xbc)
	}, ; 664
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554913, ; uint32_t type_token_id (0x20001e1)
		i32 479; uint32_t java_name_index (0x1df)
	}, ; 665
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554513, ; uint32_t type_token_id (0x2000051)
		i32 12; uint32_t java_name_index (0xc)
	}, ; 666
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555134, ; uint32_t type_token_id (0x20002be)
		i32 578; uint32_t java_name_index (0x242)
	}, ; 667
	%struct.TypeMapJava {
		i32 30, ; uint32_t module_index (0x1e)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 971; uint32_t java_name_index (0x3cb)
	}, ; 668
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555314, ; uint32_t type_token_id (0x2000372)
		i32 673; uint32_t java_name_index (0x2a1)
	}, ; 669
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 33554651, ; uint32_t type_token_id (0x20000db)
		i32 1243; uint32_t java_name_index (0x4db)
	}, ; 670
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 33554553, ; uint32_t type_token_id (0x2000079)
		i32 1187; uint32_t java_name_index (0x4a3)
	}, ; 671
	%struct.TypeMapJava {
		i32 2, ; uint32_t module_index (0x2)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 104; uint32_t java_name_index (0x68)
	}, ; 672
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554639, ; uint32_t type_token_id (0x20000cf)
		i32 76; uint32_t java_name_index (0x4c)
	}, ; 673
	%struct.TypeMapJava {
		i32 16, ; uint32_t module_index (0x10)
		i32 33554511, ; uint32_t type_token_id (0x200004f)
		i32 219; uint32_t java_name_index (0xdb)
	}, ; 674
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 820; uint32_t java_name_index (0x334)
	}, ; 675
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555233, ; uint32_t type_token_id (0x2000321)
		i32 848; uint32_t java_name_index (0x350)
	}, ; 676
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 33554631, ; uint32_t type_token_id (0x20000c7)
		i32 1230; uint32_t java_name_index (0x4ce)
	}, ; 677
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 786; uint32_t java_name_index (0x312)
	}, ; 678
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index (0xb)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 152; uint32_t java_name_index (0x98)
	}, ; 679
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 33554720, ; uint32_t type_token_id (0x2000120)
		i32 997; uint32_t java_name_index (0x3e5)
	}, ; 680
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33554520, ; uint32_t type_token_id (0x2000058)
		i32 1066; uint32_t java_name_index (0x42a)
	}, ; 681
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555339, ; uint32_t type_token_id (0x200038b)
		i32 688; uint32_t java_name_index (0x2b0)
	}, ; 682
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554861, ; uint32_t type_token_id (0x20001ad)
		i32 450; uint32_t java_name_index (0x1c2)
	}, ; 683
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33554556, ; uint32_t type_token_id (0x200007c)
		i32 1086; uint32_t java_name_index (0x43e)
	}, ; 684
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555231, ; uint32_t type_token_id (0x200031f)
		i32 847; uint32_t java_name_index (0x34f)
	}, ; 685
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555484, ; uint32_t type_token_id (0x200041c)
		i32 778; uint32_t java_name_index (0x30a)
	}, ; 686
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554696, ; uint32_t type_token_id (0x2000108)
		i32 349; uint32_t java_name_index (0x15d)
	}, ; 687
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 33554521, ; uint32_t type_token_id (0x2000059)
		i32 1166; uint32_t java_name_index (0x48e)
	}, ; 688
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554700, ; uint32_t type_token_id (0x200010c)
		i32 352; uint32_t java_name_index (0x160)
	}, ; 689
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1167; uint32_t java_name_index (0x48f)
	}, ; 690
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555845, ; uint32_t type_token_id (0x2000585)
		i32 895; uint32_t java_name_index (0x37f)
	}, ; 691
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 542; uint32_t java_name_index (0x21e)
	}, ; 692
	%struct.TypeMapJava {
		i32 37, ; uint32_t module_index (0x25)
		i32 33554456, ; uint32_t type_token_id (0x2000018)
		i32 1100; uint32_t java_name_index (0x44c)
	}, ; 693
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33554521, ; uint32_t type_token_id (0x2000059)
		i32 1067; uint32_t java_name_index (0x42b)
	}, ; 694
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554929, ; uint32_t type_token_id (0x20001f1)
		i32 485; uint32_t java_name_index (0x1e5)
	}, ; 695
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555244, ; uint32_t type_token_id (0x200032c)
		i32 628; uint32_t java_name_index (0x274)
	}, ; 696
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554746, ; uint32_t type_token_id (0x200013a)
		i32 378; uint32_t java_name_index (0x17a)
	}, ; 697
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555520, ; uint32_t type_token_id (0x2000440)
		i32 804; uint32_t java_name_index (0x324)
	}, ; 698
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555333, ; uint32_t type_token_id (0x2000385)
		i32 684; uint32_t java_name_index (0x2ac)
	}, ; 699
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554706, ; uint32_t type_token_id (0x2000112)
		i32 356; uint32_t java_name_index (0x164)
	}, ; 700
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555380, ; uint32_t type_token_id (0x20003b4)
		i32 709; uint32_t java_name_index (0x2c5)
	}, ; 701
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 33555131, ; uint32_t type_token_id (0x20002bb)
		i32 1035; uint32_t java_name_index (0x40b)
	}, ; 702
	%struct.TypeMapJava {
		i32 2, ; uint32_t module_index (0x2)
		i32 33554526, ; uint32_t type_token_id (0x200005e)
		i32 103; uint32_t java_name_index (0x67)
	}, ; 703
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 33554445, ; uint32_t type_token_id (0x200000d)
		i32 142; uint32_t java_name_index (0x8e)
	}, ; 704
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555831, ; uint32_t type_token_id (0x2000577)
		i32 879; uint32_t java_name_index (0x36f)
	}, ; 705
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 279; uint32_t java_name_index (0x117)
	}, ; 706
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555449, ; uint32_t type_token_id (0x20003f9)
		i32 752; uint32_t java_name_index (0x2f0)
	}, ; 707
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555232, ; uint32_t type_token_id (0x2000320)
		i32 616; uint32_t java_name_index (0x268)
	}, ; 708
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1071; uint32_t java_name_index (0x42f)
	}, ; 709
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555363, ; uint32_t type_token_id (0x20003a3)
		i32 924; uint32_t java_name_index (0x39c)
	}, ; 710
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554549, ; uint32_t type_token_id (0x2000075)
		i32 29; uint32_t java_name_index (0x1d)
	}, ; 711
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555470, ; uint32_t type_token_id (0x200040e)
		i32 767; uint32_t java_name_index (0x2ff)
	}, ; 712
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 513; uint32_t java_name_index (0x201)
	}, ; 713
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554618, ; uint32_t type_token_id (0x20000ba)
		i32 66; uint32_t java_name_index (0x42)
	}, ; 714
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1059; uint32_t java_name_index (0x423)
	}, ; 715
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554602, ; uint32_t type_token_id (0x20000aa)
		i32 294; uint32_t java_name_index (0x126)
	}, ; 716
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 33554795, ; uint32_t type_token_id (0x200016b)
		i32 1034; uint32_t java_name_index (0x40a)
	}, ; 717
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 310; uint32_t java_name_index (0x136)
	}, ; 718
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 33554726, ; uint32_t type_token_id (0x2000126)
		i32 999; uint32_t java_name_index (0x3e7)
	}, ; 719
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555826, ; uint32_t type_token_id (0x2000572)
		i32 874; uint32_t java_name_index (0x36a)
	}, ; 720
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555278, ; uint32_t type_token_id (0x200034e)
		i32 867; uint32_t java_name_index (0x363)
	}, ; 721
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554571, ; uint32_t type_token_id (0x200008b)
		i32 275; uint32_t java_name_index (0x113)
	}, ; 722
	%struct.TypeMapJava {
		i32 30, ; uint32_t module_index (0x1e)
		i32 33554499, ; uint32_t type_token_id (0x2000043)
		i32 975; uint32_t java_name_index (0x3cf)
	}, ; 723
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554730, ; uint32_t type_token_id (0x200012a)
		i32 366; uint32_t java_name_index (0x16e)
	}, ; 724
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554780, ; uint32_t type_token_id (0x200015c)
		i32 394; uint32_t java_name_index (0x18a)
	}, ; 725
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555282, ; uint32_t type_token_id (0x2000352)
		i32 871; uint32_t java_name_index (0x367)
	}, ; 726
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554636, ; uint32_t type_token_id (0x20000cc)
		i32 74; uint32_t java_name_index (0x4a)
	}, ; 727
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554501, ; uint32_t type_token_id (0x2000045)
		i32 232; uint32_t java_name_index (0xe8)
	}, ; 728
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 676; uint32_t java_name_index (0x2a4)
	}, ; 729
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 818; uint32_t java_name_index (0x332)
	}, ; 730
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 502; uint32_t java_name_index (0x1f6)
	}, ; 731
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554557, ; uint32_t type_token_id (0x200007d)
		i32 264; uint32_t java_name_index (0x108)
	}, ; 732
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 33554514, ; uint32_t type_token_id (0x2000052)
		i32 1162; uint32_t java_name_index (0x48a)
	}, ; 733
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 33554703, ; uint32_t type_token_id (0x200010f)
		i32 991; uint32_t java_name_index (0x3df)
	}, ; 734
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 260; uint32_t java_name_index (0x104)
	}, ; 735
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555357, ; uint32_t type_token_id (0x200039d)
		i32 699; uint32_t java_name_index (0x2bb)
	}, ; 736
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33554555, ; uint32_t type_token_id (0x200007b)
		i32 1085; uint32_t java_name_index (0x43d)
	}, ; 737
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 42; uint32_t java_name_index (0x2a)
	}, ; 738
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555458, ; uint32_t type_token_id (0x2000402)
		i32 759; uint32_t java_name_index (0x2f7)
	}, ; 739
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 33554746, ; uint32_t type_token_id (0x200013a)
		i32 1003; uint32_t java_name_index (0x3eb)
	}, ; 740
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555265, ; uint32_t type_token_id (0x2000341)
		i32 641; uint32_t java_name_index (0x281)
	}, ; 741
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 482; uint32_t java_name_index (0x1e2)
	}, ; 742
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33554533, ; uint32_t type_token_id (0x2000065)
		i32 187; uint32_t java_name_index (0xbb)
	}, ; 743
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 515; uint32_t java_name_index (0x203)
	}, ; 744
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1174; uint32_t java_name_index (0x496)
	}, ; 745
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1189; uint32_t java_name_index (0x4a5)
	}, ; 746
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1151; uint32_t java_name_index (0x47f)
	}, ; 747
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 33555059, ; uint32_t type_token_id (0x2000273)
		i32 986; uint32_t java_name_index (0x3da)
	}, ; 748
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 33554632, ; uint32_t type_token_id (0x20000c8)
		i32 1231; uint32_t java_name_index (0x4cf)
	}, ; 749
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554686, ; uint32_t type_token_id (0x20000fe)
		i32 341; uint32_t java_name_index (0x155)
	}, ; 750
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1052; uint32_t java_name_index (0x41c)
	}, ; 751
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554907, ; uint32_t type_token_id (0x20001db)
		i32 475; uint32_t java_name_index (0x1db)
	}, ; 752
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555417, ; uint32_t type_token_id (0x20003d9)
		i32 732; uint32_t java_name_index (0x2dc)
	}, ; 753
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 667; uint32_t java_name_index (0x29b)
	}, ; 754
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 33554544, ; uint32_t type_token_id (0x2000070)
		i32 1179; uint32_t java_name_index (0x49b)
	}, ; 755
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554654, ; uint32_t type_token_id (0x20000de)
		i32 321; uint32_t java_name_index (0x141)
	}, ; 756
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554502, ; uint32_t type_token_id (0x2000046)
		i32 233; uint32_t java_name_index (0xe9)
	}, ; 757
	%struct.TypeMapJava {
		i32 2, ; uint32_t module_index (0x2)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 84; uint32_t java_name_index (0x54)
	}, ; 758
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 33554453, ; uint32_t type_token_id (0x2000015)
		i32 948; uint32_t java_name_index (0x3b4)
	}, ; 759
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 661; uint32_t java_name_index (0x295)
	}, ; 760
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555337, ; uint32_t type_token_id (0x2000389)
		i32 686; uint32_t java_name_index (0x2ae)
	}, ; 761
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33554515, ; uint32_t type_token_id (0x2000053)
		i32 176; uint32_t java_name_index (0xb0)
	}, ; 762
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555421, ; uint32_t type_token_id (0x20003dd)
		i32 734; uint32_t java_name_index (0x2de)
	}, ; 763
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554563, ; uint32_t type_token_id (0x2000083)
		i32 35; uint32_t java_name_index (0x23)
	}, ; 764
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555349, ; uint32_t type_token_id (0x2000395)
		i32 697; uint32_t java_name_index (0x2b9)
	}, ; 765
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554516, ; uint32_t type_token_id (0x2000054)
		i32 243; uint32_t java_name_index (0xf3)
	}, ; 766
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554510, ; uint32_t type_token_id (0x200004e)
		i32 239; uint32_t java_name_index (0xef)
	}, ; 767
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554497, ; uint32_t type_token_id (0x2000041)
		i32 228; uint32_t java_name_index (0xe4)
	}, ; 768
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33554523, ; uint32_t type_token_id (0x200005b)
		i32 1069; uint32_t java_name_index (0x42d)
	}, ; 769
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554583, ; uint32_t type_token_id (0x2000097)
		i32 283; uint32_t java_name_index (0x11b)
	}, ; 770
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555464, ; uint32_t type_token_id (0x2000408)
		i32 763; uint32_t java_name_index (0x2fb)
	}, ; 771
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554684, ; uint32_t type_token_id (0x20000fc)
		i32 339; uint32_t java_name_index (0x153)
	}, ; 772
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555521, ; uint32_t type_token_id (0x2000441)
		i32 805; uint32_t java_name_index (0x325)
	}, ; 773
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554855, ; uint32_t type_token_id (0x20001a7)
		i32 447; uint32_t java_name_index (0x1bf)
	}, ; 774
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 300; uint32_t java_name_index (0x12c)
	}, ; 775
	%struct.TypeMapJava {
		i32 2, ; uint32_t module_index (0x2)
		i32 33554516, ; uint32_t type_token_id (0x2000054)
		i32 97; uint32_t java_name_index (0x61)
	}, ; 776
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 33554747, ; uint32_t type_token_id (0x200013b)
		i32 1004; uint32_t java_name_index (0x3ec)
	}, ; 777
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554733, ; uint32_t type_token_id (0x200012d)
		i32 368; uint32_t java_name_index (0x170)
	}, ; 778
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555064, ; uint32_t type_token_id (0x2000278)
		i32 553; uint32_t java_name_index (0x229)
	}, ; 779
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 335; uint32_t java_name_index (0x14f)
	}, ; 780
	%struct.TypeMapJava {
		i32 43, ; uint32_t module_index (0x2b)
		i32 33554440, ; uint32_t type_token_id (0x2000008)
		i32 1246; uint32_t java_name_index (0x4de)
	}, ; 781
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554994, ; uint32_t type_token_id (0x2000232)
		i32 521; uint32_t java_name_index (0x209)
	}, ; 782
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554701, ; uint32_t type_token_id (0x200010d)
		i32 353; uint32_t java_name_index (0x161)
	}, ; 783
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 33554982, ; uint32_t type_token_id (0x2000226)
		i32 1044; uint32_t java_name_index (0x414)
	}, ; 784
	%struct.TypeMapJava {
		i32 2, ; uint32_t module_index (0x2)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 81; uint32_t java_name_index (0x51)
	}, ; 785
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 540; uint32_t java_name_index (0x21c)
	}, ; 786
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555339, ; uint32_t type_token_id (0x200038b)
		i32 910; uint32_t java_name_index (0x38e)
	}, ; 787
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 361; uint32_t java_name_index (0x169)
	}, ; 788
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554452, ; uint32_t type_token_id (0x2000014)
		i32 828; uint32_t java_name_index (0x33c)
	}, ; 789
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33554569, ; uint32_t type_token_id (0x2000089)
		i32 204; uint32_t java_name_index (0xcc)
	}, ; 790
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555271, ; uint32_t type_token_id (0x2000347)
		i32 647; uint32_t java_name_index (0x287)
	}, ; 791
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1158; uint32_t java_name_index (0x486)
	}, ; 792
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 33554472, ; uint32_t type_token_id (0x2000028)
		i32 1134; uint32_t java_name_index (0x46e)
	}, ; 793
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 33555202, ; uint32_t type_token_id (0x2000302)
		i32 1037; uint32_t java_name_index (0x40d)
	}, ; 794
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555254, ; uint32_t type_token_id (0x2000336)
		i32 634; uint32_t java_name_index (0x27a)
	}, ; 795
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555006, ; uint32_t type_token_id (0x200023e)
		i32 531; uint32_t java_name_index (0x213)
	}, ; 796
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 244; uint32_t java_name_index (0xf4)
	}, ; 797
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index (0xb)
		i32 33554455, ; uint32_t type_token_id (0x2000017)
		i32 151; uint32_t java_name_index (0x97)
	}, ; 798
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555375, ; uint32_t type_token_id (0x20003af)
		i32 938; uint32_t java_name_index (0x3aa)
	}, ; 799
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 385; uint32_t java_name_index (0x181)
	}, ; 800
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555488, ; uint32_t type_token_id (0x2000420)
		i32 781; uint32_t java_name_index (0x30d)
	}, ; 801
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555322, ; uint32_t type_token_id (0x200037a)
		i32 678; uint32_t java_name_index (0x2a6)
	}, ; 802
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555267, ; uint32_t type_token_id (0x2000343)
		i32 643; uint32_t java_name_index (0x283)
	}, ; 803
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 202; uint32_t java_name_index (0xca)
	}, ; 804
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33554457, ; uint32_t type_token_id (0x2000019)
		i32 1056; uint32_t java_name_index (0x420)
	}, ; 805
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554822, ; uint32_t type_token_id (0x2000186)
		i32 421; uint32_t java_name_index (0x1a5)
	}, ; 806
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 33554756, ; uint32_t type_token_id (0x2000144)
		i32 1013; uint32_t java_name_index (0x3f5)
	}, ; 807
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1215; uint32_t java_name_index (0x4bf)
	}, ; 808
	%struct.TypeMapJava {
		i32 2, ; uint32_t module_index (0x2)
		i32 33554518, ; uint32_t type_token_id (0x2000056)
		i32 99; uint32_t java_name_index (0x63)
	}, ; 809
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554834, ; uint32_t type_token_id (0x2000192)
		i32 431; uint32_t java_name_index (0x1af)
	}, ; 810
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555813, ; uint32_t type_token_id (0x2000565)
		i32 859; uint32_t java_name_index (0x35b)
	}, ; 811
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 33554748, ; uint32_t type_token_id (0x200013c)
		i32 1005; uint32_t java_name_index (0x3ed)
	}, ; 812
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33554531, ; uint32_t type_token_id (0x2000063)
		i32 185; uint32_t java_name_index (0xb9)
	}, ; 813
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554868, ; uint32_t type_token_id (0x20001b4)
		i32 455; uint32_t java_name_index (0x1c7)
	}, ; 814
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1192; uint32_t java_name_index (0x4a8)
	}, ; 815
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554951, ; uint32_t type_token_id (0x2000207)
		i32 498; uint32_t java_name_index (0x1f2)
	}, ; 816
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555329, ; uint32_t type_token_id (0x2000381)
		i32 899; uint32_t java_name_index (0x383)
	}, ; 817
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 716; uint32_t java_name_index (0x2cc)
	}, ; 818
	%struct.TypeMapJava {
		i32 23, ; uint32_t module_index (0x17)
		i32 33554443, ; uint32_t type_token_id (0x200000b)
		i32 829; uint32_t java_name_index (0x33d)
	}, ; 819
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554499, ; uint32_t type_token_id (0x2000043)
		i32 0; uint32_t java_name_index (0x0)
	}, ; 820
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555026, ; uint32_t type_token_id (0x2000252)
		i32 541; uint32_t java_name_index (0x21d)
	}, ; 821
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1144; uint32_t java_name_index (0x478)
	}, ; 822
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 708; uint32_t java_name_index (0x2c4)
	}, ; 823
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555080, ; uint32_t type_token_id (0x2000288)
		i32 562; uint32_t java_name_index (0x232)
	}, ; 824
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555271, ; uint32_t type_token_id (0x2000347)
		i32 857; uint32_t java_name_index (0x359)
	}, ; 825
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554526, ; uint32_t type_token_id (0x200005e)
		i32 249; uint32_t java_name_index (0xf9)
	}, ; 826
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33554585, ; uint32_t type_token_id (0x2000099)
		i32 1097; uint32_t java_name_index (0x449)
	}, ; 827
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554942, ; uint32_t type_token_id (0x20001fe)
		i32 492; uint32_t java_name_index (0x1ec)
	}, ; 828
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555342, ; uint32_t type_token_id (0x200038e)
		i32 691; uint32_t java_name_index (0x2b3)
	}, ; 829
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555514, ; uint32_t type_token_id (0x200043a)
		i32 799; uint32_t java_name_index (0x31f)
	}, ; 830
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555803, ; uint32_t type_token_id (0x200055b)
		i32 852; uint32_t java_name_index (0x354)
	}, ; 831
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555459, ; uint32_t type_token_id (0x2000403)
		i32 760; uint32_t java_name_index (0x2f8)
	}, ; 832
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 512; uint32_t java_name_index (0x200)
	}, ; 833
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 407; uint32_t java_name_index (0x197)
	}, ; 834
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33554533, ; uint32_t type_token_id (0x2000065)
		i32 1075; uint32_t java_name_index (0x433)
	}, ; 835
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 663; uint32_t java_name_index (0x297)
	}, ; 836
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index (0x28)
		i32 33554435, ; uint32_t type_token_id (0x2000003)
		i32 1122; uint32_t java_name_index (0x462)
	}, ; 837
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555213, ; uint32_t type_token_id (0x200030d)
		i32 597; uint32_t java_name_index (0x255)
	}, ; 838
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554971, ; uint32_t type_token_id (0x200021b)
		i32 508; uint32_t java_name_index (0x1fc)
	}, ; 839
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 370; uint32_t java_name_index (0x172)
	}, ; 840
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554460, ; uint32_t type_token_id (0x200001c)
		i32 815; uint32_t java_name_index (0x32f)
	}, ; 841
	%struct.TypeMapJava {
		i32 30, ; uint32_t module_index (0x1e)
		i32 33554504, ; uint32_t type_token_id (0x2000048)
		i32 979; uint32_t java_name_index (0x3d3)
	}, ; 842
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33554516, ; uint32_t type_token_id (0x2000054)
		i32 1063; uint32_t java_name_index (0x427)
	}, ; 843
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555487, ; uint32_t type_token_id (0x200041f)
		i32 780; uint32_t java_name_index (0x30c)
	}, ; 844
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555324, ; uint32_t type_token_id (0x200037c)
		i32 894; uint32_t java_name_index (0x37e)
	}, ; 845
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554693, ; uint32_t type_token_id (0x2000105)
		i32 346; uint32_t java_name_index (0x15a)
	}, ; 846
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 514; uint32_t java_name_index (0x202)
	}, ; 847
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33554496, ; uint32_t type_token_id (0x2000040)
		i32 166; uint32_t java_name_index (0xa6)
	}, ; 848
	%struct.TypeMapJava {
		i32 3, ; uint32_t module_index (0x3)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 112; uint32_t java_name_index (0x70)
	}, ; 849
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index (0x27)
		i32 33554451, ; uint32_t type_token_id (0x2000013)
		i32 1111; uint32_t java_name_index (0x457)
	}, ; 850
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555419, ; uint32_t type_token_id (0x20003db)
		i32 733; uint32_t java_name_index (0x2dd)
	}, ; 851
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555338, ; uint32_t type_token_id (0x200038a)
		i32 687; uint32_t java_name_index (0x2af)
	}, ; 852
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 33554468, ; uint32_t type_token_id (0x2000024)
		i32 1130; uint32_t java_name_index (0x46a)
	}, ; 853
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 583; uint32_t java_name_index (0x247)
	}, ; 854
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index (0x27)
		i32 33554460, ; uint32_t type_token_id (0x200001c)
		i32 1117; uint32_t java_name_index (0x45d)
	}, ; 855
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555536, ; uint32_t type_token_id (0x2000450)
		i32 806; uint32_t java_name_index (0x326)
	}, ; 856
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554815, ; uint32_t type_token_id (0x200017f)
		i32 417; uint32_t java_name_index (0x1a1)
	}, ; 857
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555330, ; uint32_t type_token_id (0x2000382)
		i32 900; uint32_t java_name_index (0x384)
	}, ; 858
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554568, ; uint32_t type_token_id (0x2000088)
		i32 273; uint32_t java_name_index (0x111)
	}, ; 859
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 33554480, ; uint32_t type_token_id (0x2000030)
		i32 1140; uint32_t java_name_index (0x474)
	}, ; 860
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554540, ; uint32_t type_token_id (0x200006c)
		i32 254; uint32_t java_name_index (0xfe)
	}, ; 861
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555333, ; uint32_t type_token_id (0x2000385)
		i32 903; uint32_t java_name_index (0x387)
	}, ; 862
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 33554581, ; uint32_t type_token_id (0x2000095)
		i32 981; uint32_t java_name_index (0x3d5)
	}, ; 863
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555343, ; uint32_t type_token_id (0x200038f)
		i32 913; uint32_t java_name_index (0x391)
	}, ; 864
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33554565, ; uint32_t type_token_id (0x2000085)
		i32 1092; uint32_t java_name_index (0x444)
	}, ; 865
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1197; uint32_t java_name_index (0x4ad)
	}, ; 866
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index (0x24)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1099; uint32_t java_name_index (0x44b)
	}, ; 867
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 33554476, ; uint32_t type_token_id (0x200002c)
		i32 1136; uint32_t java_name_index (0x470)
	}, ; 868
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33554497, ; uint32_t type_token_id (0x2000041)
		i32 167; uint32_t java_name_index (0xa7)
	}, ; 869
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555002, ; uint32_t type_token_id (0x200023a)
		i32 527; uint32_t java_name_index (0x20f)
	}, ; 870
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1157; uint32_t java_name_index (0x485)
	}, ; 871
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1193; uint32_t java_name_index (0x4a9)
	}, ; 872
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555359, ; uint32_t type_token_id (0x200039f)
		i32 921; uint32_t java_name_index (0x399)
	}, ; 873
	%struct.TypeMapJava {
		i32 5, ; uint32_t module_index (0x5)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 121; uint32_t java_name_index (0x79)
	}, ; 874
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555862, ; uint32_t type_token_id (0x2000596)
		i32 935; uint32_t java_name_index (0x3a7)
	}, ; 875
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555205, ; uint32_t type_token_id (0x2000305)
		i32 837; uint32_t java_name_index (0x345)
	}, ; 876
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554774, ; uint32_t type_token_id (0x2000156)
		i32 391; uint32_t java_name_index (0x187)
	}, ; 877
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 33554702, ; uint32_t type_token_id (0x200010e)
		i32 990; uint32_t java_name_index (0x3de)
	}, ; 878
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555307, ; uint32_t type_token_id (0x200036b)
		i32 891; uint32_t java_name_index (0x37b)
	}, ; 879
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555473, ; uint32_t type_token_id (0x2000411)
		i32 769; uint32_t java_name_index (0x301)
	}, ; 880
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554825, ; uint32_t type_token_id (0x2000189)
		i32 423; uint32_t java_name_index (0x1a7)
	}, ; 881
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1208; uint32_t java_name_index (0x4b8)
	}, ; 882
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555124, ; uint32_t type_token_id (0x20002b4)
		i32 571; uint32_t java_name_index (0x23b)
	}, ; 883
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 2; uint32_t java_name_index (0x2)
	}, ; 884
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554469, ; uint32_t type_token_id (0x2000025)
		i32 132; uint32_t java_name_index (0x84)
	}, ; 885
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554567, ; uint32_t type_token_id (0x2000087)
		i32 272; uint32_t java_name_index (0x110)
	}, ; 886
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 726; uint32_t java_name_index (0x2d6)
	}, ; 887
	%struct.TypeMapJava {
		i32 37, ; uint32_t module_index (0x25)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1101; uint32_t java_name_index (0x44d)
	}, ; 888
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index (0x14)
		i32 33554474, ; uint32_t type_token_id (0x200002a)
		i32 812; uint32_t java_name_index (0x32c)
	}, ; 889
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1135; uint32_t java_name_index (0x46f)
	}, ; 890
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555272, ; uint32_t type_token_id (0x2000348)
		i32 858; uint32_t java_name_index (0x35a)
	}, ; 891
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555368, ; uint32_t type_token_id (0x20003a8)
		i32 927; uint32_t java_name_index (0x39f)
	}, ; 892
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554739, ; uint32_t type_token_id (0x2000133)
		i32 371; uint32_t java_name_index (0x173)
	}, ; 893
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554534, ; uint32_t type_token_id (0x2000066)
		i32 21; uint32_t java_name_index (0x15)
	}, ; 894
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33554511, ; uint32_t type_token_id (0x200004f)
		i32 173; uint32_t java_name_index (0xad)
	}, ; 895
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554832, ; uint32_t type_token_id (0x2000190)
		i32 429; uint32_t java_name_index (0x1ad)
	}, ; 896
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 33554550, ; uint32_t type_token_id (0x2000076)
		i32 1185; uint32_t java_name_index (0x4a1)
	}, ; 897
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554728, ; uint32_t type_token_id (0x2000128)
		i32 365; uint32_t java_name_index (0x16d)
	}, ; 898
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555283, ; uint32_t type_token_id (0x2000353)
		i32 873; uint32_t java_name_index (0x369)
	}, ; 899
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index (0x26)
		i32 33554440, ; uint32_t type_token_id (0x2000008)
		i32 1104; uint32_t java_name_index (0x450)
	}, ; 900
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 882; uint32_t java_name_index (0x372)
	}, ; 901
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555004, ; uint32_t type_token_id (0x200023c)
		i32 529; uint32_t java_name_index (0x211)
	}, ; 902
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554585, ; uint32_t type_token_id (0x2000099)
		i32 285; uint32_t java_name_index (0x11d)
	}, ; 903
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555230, ; uint32_t type_token_id (0x200031e)
		i32 846; uint32_t java_name_index (0x34e)
	}, ; 904
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 33555115, ; uint32_t type_token_id (0x20002ab)
		i32 1029; uint32_t java_name_index (0x405)
	}, ; 905
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1220; uint32_t java_name_index (0x4c4)
	}, ; 906
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 33554470, ; uint32_t type_token_id (0x2000026)
		i32 1132; uint32_t java_name_index (0x46c)
	}, ; 907
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 33555106, ; uint32_t type_token_id (0x20002a2)
		i32 1008; uint32_t java_name_index (0x3f0)
	}, ; 908
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554997, ; uint32_t type_token_id (0x2000235)
		i32 523; uint32_t java_name_index (0x20b)
	}, ; 909
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555312, ; uint32_t type_token_id (0x2000370)
		i32 893; uint32_t java_name_index (0x37d)
	}, ; 910
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555306, ; uint32_t type_token_id (0x200036a)
		i32 890; uint32_t java_name_index (0x37a)
	}, ; 911
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 472; uint32_t java_name_index (0x1d8)
	}, ; 912
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 33554644, ; uint32_t type_token_id (0x20000d4)
		i32 1237; uint32_t java_name_index (0x4d5)
	}, ; 913
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33554558, ; uint32_t type_token_id (0x200007e)
		i32 203; uint32_t java_name_index (0xcb)
	}, ; 914
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33554585, ; uint32_t type_token_id (0x2000099)
		i32 214; uint32_t java_name_index (0xd6)
	}, ; 915
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 210; uint32_t java_name_index (0xd2)
	}, ; 916
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index (0x27)
		i32 33554456, ; uint32_t type_token_id (0x2000018)
		i32 1115; uint32_t java_name_index (0x45b)
	}, ; 917
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 33554528, ; uint32_t type_token_id (0x2000060)
		i32 1170; uint32_t java_name_index (0x492)
	}, ; 918
	%struct.TypeMapJava {
		i32 43, ; uint32_t module_index (0x2b)
		i32 33554441, ; uint32_t type_token_id (0x2000009)
		i32 1247; uint32_t java_name_index (0x4df)
	}, ; 919
	%struct.TypeMapJava {
		i32 9, ; uint32_t module_index (0x9)
		i32 33554461, ; uint32_t type_token_id (0x200001d)
		i32 140; uint32_t java_name_index (0x8c)
	}, ; 920
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 33554648, ; uint32_t type_token_id (0x20000d8)
		i32 1240; uint32_t java_name_index (0x4d8)
	}, ; 921
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555346, ; uint32_t type_token_id (0x2000392)
		i32 694; uint32_t java_name_index (0x2b6)
	}, ; 922
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 438; uint32_t java_name_index (0x1b6)
	}, ; 923
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555230, ; uint32_t type_token_id (0x200031e)
		i32 614; uint32_t java_name_index (0x266)
	}, ; 924
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555111, ; uint32_t type_token_id (0x20002a7)
		i32 564; uint32_t java_name_index (0x234)
	}, ; 925
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 33554707, ; uint32_t type_token_id (0x2000113)
		i32 994; uint32_t java_name_index (0x3e2)
	}, ; 926
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 707; uint32_t java_name_index (0x2c3)
	}, ; 927
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33554540, ; uint32_t type_token_id (0x200006c)
		i32 193; uint32_t java_name_index (0xc1)
	}, ; 928
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 493; uint32_t java_name_index (0x1ed)
	}, ; 929
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555331, ; uint32_t type_token_id (0x2000383)
		i32 901; uint32_t java_name_index (0x385)
	}, ; 930
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 33554463, ; uint32_t type_token_id (0x200001f)
		i32 956; uint32_t java_name_index (0x3bc)
	}, ; 931
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555221, ; uint32_t type_token_id (0x2000315)
		i32 605; uint32_t java_name_index (0x25d)
	}, ; 932
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 182; uint32_t java_name_index (0xb6)
	}, ; 933
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554796, ; uint32_t type_token_id (0x200016c)
		i32 404; uint32_t java_name_index (0x194)
	}, ; 934
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554505, ; uint32_t type_token_id (0x2000049)
		i32 5; uint32_t java_name_index (0x5)
	}, ; 935
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 33554594, ; uint32_t type_token_id (0x20000a2)
		i32 1209; uint32_t java_name_index (0x4b9)
	}, ; 936
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555285, ; uint32_t type_token_id (0x2000355)
		i32 655; uint32_t java_name_index (0x28f)
	}, ; 937
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554697, ; uint32_t type_token_id (0x2000109)
		i32 350; uint32_t java_name_index (0x15e)
	}, ; 938
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554989, ; uint32_t type_token_id (0x200022d)
		i32 517; uint32_t java_name_index (0x205)
	}, ; 939
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1223; uint32_t java_name_index (0x4c7)
	}, ; 940
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554850, ; uint32_t type_token_id (0x20001a2)
		i32 442; uint32_t java_name_index (0x1ba)
	}, ; 941
	%struct.TypeMapJava {
		i32 2, ; uint32_t module_index (0x2)
		i32 33554485, ; uint32_t type_token_id (0x2000035)
		i32 80; uint32_t java_name_index (0x50)
	}, ; 942
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 516; uint32_t java_name_index (0x204)
	}, ; 943
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index (0x27)
		i32 33554466, ; uint32_t type_token_id (0x2000022)
		i32 1120; uint32_t java_name_index (0x460)
	}, ; 944
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index (0x28)
		i32 33554438, ; uint32_t type_token_id (0x2000006)
		i32 1125; uint32_t java_name_index (0x465)
	}, ; 945
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 33554466, ; uint32_t type_token_id (0x2000022)
		i32 958; uint32_t java_name_index (0x3be)
	}, ; 946
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33554513, ; uint32_t type_token_id (0x2000051)
		i32 1061; uint32_t java_name_index (0x425)
	}, ; 947
	%struct.TypeMapJava {
		i32 5, ; uint32_t module_index (0x5)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 124; uint32_t java_name_index (0x7c)
	}, ; 948
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33554540, ; uint32_t type_token_id (0x200006c)
		i32 1079; uint32_t java_name_index (0x437)
	}, ; 949
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1191; uint32_t java_name_index (0x4a7)
	}, ; 950
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1153; uint32_t java_name_index (0x481)
	}, ; 951
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555279, ; uint32_t type_token_id (0x200034f)
		i32 868; uint32_t java_name_index (0x364)
	}, ; 952
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index (0x1a)
		i32 33554511, ; uint32_t type_token_id (0x200004f)
		i32 940; uint32_t java_name_index (0x3ac)
	}, ; 953
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554791, ; uint32_t type_token_id (0x2000167)
		i32 400; uint32_t java_name_index (0x190)
	}, ; 954
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 33555216, ; uint32_t type_token_id (0x2000310)
		i32 1042; uint32_t java_name_index (0x412)
	}, ; 955
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 33554511, ; uint32_t type_token_id (0x200004f)
		i32 1160; uint32_t java_name_index (0x488)
	}, ; 956
	%struct.TypeMapJava {
		i32 4, ; uint32_t module_index (0x4)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 117; uint32_t java_name_index (0x75)
	}, ; 957
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554559, ; uint32_t type_token_id (0x200007f)
		i32 33; uint32_t java_name_index (0x21)
	}, ; 958
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555215, ; uint32_t type_token_id (0x200030f)
		i32 599; uint32_t java_name_index (0x257)
	}, ; 959
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555030, ; uint32_t type_token_id (0x2000256)
		i32 543; uint32_t java_name_index (0x21f)
	}, ; 960
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 507; uint32_t java_name_index (0x1fb)
	}, ; 961
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 706; uint32_t java_name_index (0x2c2)
	}, ; 962
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index (0xb)
		i32 33554445, ; uint32_t type_token_id (0x200000d)
		i32 145; uint32_t java_name_index (0x91)
	}, ; 963
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555335, ; uint32_t type_token_id (0x2000387)
		i32 905; uint32_t java_name_index (0x389)
	}, ; 964
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555069, ; uint32_t type_token_id (0x200027d)
		i32 554; uint32_t java_name_index (0x22a)
	}, ; 965
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555245, ; uint32_t type_token_id (0x200032d)
		i32 629; uint32_t java_name_index (0x275)
	}, ; 966
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1200; uint32_t java_name_index (0x4b0)
	}, ; 967
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554561, ; uint32_t type_token_id (0x2000081)
		i32 267; uint32_t java_name_index (0x10b)
	}, ; 968
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 302; uint32_t java_name_index (0x12e)
	}, ; 969
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554582, ; uint32_t type_token_id (0x2000096)
		i32 282; uint32_t java_name_index (0x11a)
	}, ; 970
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 33554451, ; uint32_t type_token_id (0x2000013)
		i32 946; uint32_t java_name_index (0x3b2)
	}, ; 971
	%struct.TypeMapJava {
		i32 2, ; uint32_t module_index (0x2)
		i32 33554529, ; uint32_t type_token_id (0x2000061)
		i32 105; uint32_t java_name_index (0x69)
	}, ; 972
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 36; uint32_t java_name_index (0x24)
	}, ; 973
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1218; uint32_t java_name_index (0x4c2)
	}, ; 974
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555445, ; uint32_t type_token_id (0x20003f5)
		i32 749; uint32_t java_name_index (0x2ed)
	}, ; 975
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1081; uint32_t java_name_index (0x439)
	}, ; 976
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 223; uint32_t java_name_index (0xdf)
	}, ; 977
	%struct.TypeMapJava {
		i32 30, ; uint32_t module_index (0x1e)
		i32 33554502, ; uint32_t type_token_id (0x2000046)
		i32 977; uint32_t java_name_index (0x3d1)
	}, ; 978
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33554517, ; uint32_t type_token_id (0x2000055)
		i32 1064; uint32_t java_name_index (0x428)
	}, ; 979
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555957, ; uint32_t type_token_id (0x20005f5)
		i32 936; uint32_t java_name_index (0x3a8)
	}, ; 980
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555219, ; uint32_t type_token_id (0x2000313)
		i32 603; uint32_t java_name_index (0x25b)
	}, ; 981
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555218, ; uint32_t type_token_id (0x2000312)
		i32 602; uint32_t java_name_index (0x25a)
	}, ; 982
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 886; uint32_t java_name_index (0x376)
	}, ; 983
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555278, ; uint32_t type_token_id (0x200034e)
		i32 651; uint32_t java_name_index (0x28b)
	}, ; 984
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554854, ; uint32_t type_token_id (0x20001a6)
		i32 446; uint32_t java_name_index (0x1be)
	}, ; 985
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 33554609, ; uint32_t type_token_id (0x20000b1)
		i32 984; uint32_t java_name_index (0x3d8)
	}, ; 986
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554496, ; uint32_t type_token_id (0x2000040)
		i32 227; uint32_t java_name_index (0xe3)
	}, ; 987
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555359, ; uint32_t type_token_id (0x200039f)
		i32 700; uint32_t java_name_index (0x2bc)
	}, ; 988
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 222; uint32_t java_name_index (0xde)
	}, ; 989
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 380; uint32_t java_name_index (0x17c)
	}, ; 990
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1227; uint32_t java_name_index (0x4cb)
	}, ; 991
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554504, ; uint32_t type_token_id (0x2000048)
		i32 234; uint32_t java_name_index (0xea)
	}, ; 992
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 537; uint32_t java_name_index (0x219)
	}, ; 993
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1172; uint32_t java_name_index (0x494)
	}, ; 994
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554869, ; uint32_t type_token_id (0x20001b5)
		i32 456; uint32_t java_name_index (0x1c8)
	}, ; 995
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555000, ; uint32_t type_token_id (0x2000238)
		i32 525; uint32_t java_name_index (0x20d)
	}, ; 996
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1210; uint32_t java_name_index (0x4ba)
	}, ; 997
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554611, ; uint32_t type_token_id (0x20000b3)
		i32 299; uint32_t java_name_index (0x12b)
	}, ; 998
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554448, ; uint32_t type_token_id (0x2000010)
		i32 826; uint32_t java_name_index (0x33a)
	}, ; 999
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 544; uint32_t java_name_index (0x220)
	}, ; 1000
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 725; uint32_t java_name_index (0x2d5)
	}, ; 1001
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554580, ; uint32_t type_token_id (0x2000094)
		i32 43; uint32_t java_name_index (0x2b)
	}, ; 1002
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555508, ; uint32_t type_token_id (0x2000434)
		i32 794; uint32_t java_name_index (0x31a)
	}, ; 1003
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 677; uint32_t java_name_index (0x2a5)
	}, ; 1004
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33554501, ; uint32_t type_token_id (0x2000045)
		i32 169; uint32_t java_name_index (0xa9)
	}, ; 1005
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 33554489, ; uint32_t type_token_id (0x2000039)
		i32 1147; uint32_t java_name_index (0x47b)
	}, ; 1006
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1205; uint32_t java_name_index (0x4b5)
	}, ; 1007
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554596, ; uint32_t type_token_id (0x20000a4)
		i32 51; uint32_t java_name_index (0x33)
	}, ; 1008
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 33554698, ; uint32_t type_token_id (0x200010a)
		i32 987; uint32_t java_name_index (0x3db)
	}, ; 1009
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555137, ; uint32_t type_token_id (0x20002c1)
		i32 581; uint32_t java_name_index (0x245)
	}, ; 1010
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 33554483, ; uint32_t type_token_id (0x2000033)
		i32 1142; uint32_t java_name_index (0x476)
	}, ; 1011
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index (0x26)
		i32 33554441, ; uint32_t type_token_id (0x2000009)
		i32 1105; uint32_t java_name_index (0x451)
	}, ; 1012
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 884; uint32_t java_name_index (0x374)
	}, ; 1013
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33554517, ; uint32_t type_token_id (0x2000055)
		i32 177; uint32_t java_name_index (0xb1)
	}, ; 1014
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555226, ; uint32_t type_token_id (0x200031a)
		i32 610; uint32_t java_name_index (0x262)
	}, ; 1015
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555337, ; uint32_t type_token_id (0x2000389)
		i32 907; uint32_t java_name_index (0x38b)
	}, ; 1016
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555336, ; uint32_t type_token_id (0x2000388)
		i32 906; uint32_t java_name_index (0x38a)
	}, ; 1017
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555034, ; uint32_t type_token_id (0x200025a)
		i32 545; uint32_t java_name_index (0x221)
	}, ; 1018
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554603, ; uint32_t type_token_id (0x20000ab)
		i32 55; uint32_t java_name_index (0x37)
	}, ; 1019
	%struct.TypeMapJava {
		i32 2, ; uint32_t module_index (0x2)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 87; uint32_t java_name_index (0x57)
	}, ; 1020
	%struct.TypeMapJava {
		i32 2, ; uint32_t module_index (0x2)
		i32 33554517, ; uint32_t type_token_id (0x2000055)
		i32 98; uint32_t java_name_index (0x62)
	}, ; 1021
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 715; uint32_t java_name_index (0x2cb)
	}, ; 1022
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555453, ; uint32_t type_token_id (0x20003fd)
		i32 756; uint32_t java_name_index (0x2f4)
	}, ; 1023
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554562, ; uint32_t type_token_id (0x2000082)
		i32 268; uint32_t java_name_index (0x10c)
	}, ; 1024
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 408; uint32_t java_name_index (0x198)
	}, ; 1025
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555224, ; uint32_t type_token_id (0x2000318)
		i32 608; uint32_t java_name_index (0x260)
	}, ; 1026
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554587, ; uint32_t type_token_id (0x200009b)
		i32 44; uint32_t java_name_index (0x2c)
	}, ; 1027
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 387; uint32_t java_name_index (0x183)
	}, ; 1028
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554828, ; uint32_t type_token_id (0x200018c)
		i32 425; uint32_t java_name_index (0x1a9)
	}, ; 1029
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555332, ; uint32_t type_token_id (0x2000384)
		i32 902; uint32_t java_name_index (0x386)
	}, ; 1030
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554743, ; uint32_t type_token_id (0x2000137)
		i32 375; uint32_t java_name_index (0x177)
	}, ; 1031
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 262; uint32_t java_name_index (0x106)
	}, ; 1032
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index (0x27)
		i32 33554461, ; uint32_t type_token_id (0x200001d)
		i32 1118; uint32_t java_name_index (0x45e)
	}, ; 1033
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33554576, ; uint32_t type_token_id (0x2000090)
		i32 209; uint32_t java_name_index (0xd1)
	}, ; 1034
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 70; uint32_t java_name_index (0x46)
	}, ; 1035
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555181, ; uint32_t type_token_id (0x20002ed)
		i32 588; uint32_t java_name_index (0x24c)
	}, ; 1036
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554873, ; uint32_t type_token_id (0x20001b9)
		i32 459; uint32_t java_name_index (0x1cb)
	}, ; 1037
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555280, ; uint32_t type_token_id (0x2000350)
		i32 869; uint32_t java_name_index (0x365)
	}, ; 1038
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index (0x1c)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 959; uint32_t java_name_index (0x3bf)
	}, ; 1039
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1226; uint32_t java_name_index (0x4ca)
	}, ; 1040
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554632, ; uint32_t type_token_id (0x20000c8)
		i32 311; uint32_t java_name_index (0x137)
	}, ; 1041
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555298, ; uint32_t type_token_id (0x2000362)
		i32 883; uint32_t java_name_index (0x373)
	}, ; 1042
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1168; uint32_t java_name_index (0x490)
	}, ; 1043
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33554567, ; uint32_t type_token_id (0x2000087)
		i32 1093; uint32_t java_name_index (0x445)
	}, ; 1044
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554837, ; uint32_t type_token_id (0x2000195)
		i32 434; uint32_t java_name_index (0x1b2)
	}, ; 1045
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554439, ; uint32_t type_token_id (0x2000007)
		i32 808; uint32_t java_name_index (0x328)
	}, ; 1046
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33554504, ; uint32_t type_token_id (0x2000048)
		i32 171; uint32_t java_name_index (0xab)
	}, ; 1047
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1165; uint32_t java_name_index (0x48d)
	}, ; 1048
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 719; uint32_t java_name_index (0x2cf)
	}, ; 1049
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 172; uint32_t java_name_index (0xac)
	}, ; 1050
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555252, ; uint32_t type_token_id (0x2000334)
		i32 632; uint32_t java_name_index (0x278)
	}, ; 1051
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 33554649, ; uint32_t type_token_id (0x20000d9)
		i32 1241; uint32_t java_name_index (0x4d9)
	}, ; 1052
	%struct.TypeMapJava {
		i32 4, ; uint32_t module_index (0x4)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 118; uint32_t java_name_index (0x76)
	}, ; 1053
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555958, ; uint32_t type_token_id (0x20005f6)
		i32 937; uint32_t java_name_index (0x3a9)
	}, ; 1054
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555432, ; uint32_t type_token_id (0x20003e8)
		i32 741; uint32_t java_name_index (0x2e5)
	}, ; 1055
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555355, ; uint32_t type_token_id (0x200039b)
		i32 917; uint32_t java_name_index (0x395)
	}, ; 1056
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554991, ; uint32_t type_token_id (0x200022f)
		i32 519; uint32_t java_name_index (0x207)
	}, ; 1057
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555515, ; uint32_t type_token_id (0x200043b)
		i32 800; uint32_t java_name_index (0x320)
	}, ; 1058
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33554522, ; uint32_t type_token_id (0x200005a)
		i32 1068; uint32_t java_name_index (0x42c)
	}, ; 1059
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554592, ; uint32_t type_token_id (0x20000a0)
		i32 48; uint32_t java_name_index (0x30)
	}, ; 1060
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33554508, ; uint32_t type_token_id (0x200004c)
		i32 1058; uint32_t java_name_index (0x422)
	}, ; 1061
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555443, ; uint32_t type_token_id (0x20003f3)
		i32 747; uint32_t java_name_index (0x2eb)
	}, ; 1062
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555128, ; uint32_t type_token_id (0x20002b8)
		i32 574; uint32_t java_name_index (0x23e)
	}, ; 1063
	%struct.TypeMapJava {
		i32 14, ; uint32_t module_index (0xe)
		i32 33554552, ; uint32_t type_token_id (0x2000078)
		i32 216; uint32_t java_name_index (0xd8)
	}, ; 1064
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index (0xb)
		i32 33554444, ; uint32_t type_token_id (0x200000c)
		i32 144; uint32_t java_name_index (0x90)
	}, ; 1065
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555180, ; uint32_t type_token_id (0x20002ec)
		i32 587; uint32_t java_name_index (0x24b)
	}, ; 1066
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554946, ; uint32_t type_token_id (0x2000202)
		i32 494; uint32_t java_name_index (0x1ee)
	}, ; 1067
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index (0x27)
		i32 33554452, ; uint32_t type_token_id (0x2000014)
		i32 1112; uint32_t java_name_index (0x458)
	}, ; 1068
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554441, ; uint32_t type_token_id (0x2000009)
		i32 821; uint32_t java_name_index (0x335)
	}, ; 1069
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index (0xb)
		i32 33554452, ; uint32_t type_token_id (0x2000014)
		i32 149; uint32_t java_name_index (0x95)
	}, ; 1070
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1155; uint32_t java_name_index (0x483)
	}, ; 1071
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554776, ; uint32_t type_token_id (0x2000158)
		i32 392; uint32_t java_name_index (0x188)
	}, ; 1072
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555228, ; uint32_t type_token_id (0x200031c)
		i32 612; uint32_t java_name_index (0x264)
	}, ; 1073
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555483, ; uint32_t type_token_id (0x200041b)
		i32 777; uint32_t java_name_index (0x309)
	}, ; 1074
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554805, ; uint32_t type_token_id (0x2000175)
		i32 409; uint32_t java_name_index (0x199)
	}, ; 1075
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554835, ; uint32_t type_token_id (0x2000193)
		i32 432; uint32_t java_name_index (0x1b0)
	}, ; 1076
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 33554471, ; uint32_t type_token_id (0x2000027)
		i32 1133; uint32_t java_name_index (0x46d)
	}, ; 1077
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 384; uint32_t java_name_index (0x180)
	}, ; 1078
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554609, ; uint32_t type_token_id (0x20000b1)
		i32 298; uint32_t java_name_index (0x12a)
	}, ; 1079
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554820, ; uint32_t type_token_id (0x2000184)
		i32 420; uint32_t java_name_index (0x1a4)
	}, ; 1080
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1222; uint32_t java_name_index (0x4c6)
	}, ; 1081
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555284, ; uint32_t type_token_id (0x2000354)
		i32 876; uint32_t java_name_index (0x36c)
	}, ; 1082
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555444, ; uint32_t type_token_id (0x20003f4)
		i32 748; uint32_t java_name_index (0x2ec)
	}, ; 1083
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554725, ; uint32_t type_token_id (0x2000125)
		i32 363; uint32_t java_name_index (0x16b)
	}, ; 1084
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1207; uint32_t java_name_index (0x4b7)
	}, ; 1085
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554811, ; uint32_t type_token_id (0x200017b)
		i32 414; uint32_t java_name_index (0x19e)
	}, ; 1086
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555207, ; uint32_t type_token_id (0x2000307)
		i32 592; uint32_t java_name_index (0x250)
	}, ; 1087
	%struct.TypeMapJava {
		i32 9, ; uint32_t module_index (0x9)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 139; uint32_t java_name_index (0x8b)
	}, ; 1088
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index (0xb)
		i32 33554448, ; uint32_t type_token_id (0x2000010)
		i32 147; uint32_t java_name_index (0x93)
	}, ; 1089
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 33554464, ; uint32_t type_token_id (0x2000020)
		i32 1127; uint32_t java_name_index (0x467)
	}, ; 1090
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555073, ; uint32_t type_token_id (0x2000281)
		i32 557; uint32_t java_name_index (0x22d)
	}, ; 1091
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554574, ; uint32_t type_token_id (0x200008e)
		i32 278; uint32_t java_name_index (0x116)
	}, ; 1092
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index (0x1f)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 980; uint32_t java_name_index (0x3d4)
	}, ; 1093
	%struct.TypeMapJava {
		i32 2, ; uint32_t module_index (0x2)
		i32 33554511, ; uint32_t type_token_id (0x200004f)
		i32 94; uint32_t java_name_index (0x5e)
	}, ; 1094
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555334, ; uint32_t type_token_id (0x2000386)
		i32 685; uint32_t java_name_index (0x2ad)
	}, ; 1095
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1198; uint32_t java_name_index (0x4ae)
	}, ; 1096
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554865, ; uint32_t type_token_id (0x20001b1)
		i32 454; uint32_t java_name_index (0x1c6)
	}, ; 1097
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555259, ; uint32_t type_token_id (0x200033b)
		i32 637; uint32_t java_name_index (0x27d)
	}, ; 1098
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555275, ; uint32_t type_token_id (0x200034b)
		i32 864; uint32_t java_name_index (0x360)
	}, ; 1099
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554702, ; uint32_t type_token_id (0x200010e)
		i32 354; uint32_t java_name_index (0x162)
	}, ; 1100
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554552, ; uint32_t type_token_id (0x2000078)
		i32 31; uint32_t java_name_index (0x1f)
	}, ; 1101
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555231, ; uint32_t type_token_id (0x200031f)
		i32 615; uint32_t java_name_index (0x267)
	}, ; 1102
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554440, ; uint32_t type_token_id (0x2000008)
		i32 809; uint32_t java_name_index (0x329)
	}, ; 1103
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33554572, ; uint32_t type_token_id (0x200008c)
		i32 207; uint32_t java_name_index (0xcf)
	}, ; 1104
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index (0x26)
		i32 33554447, ; uint32_t type_token_id (0x200000f)
		i32 1108; uint32_t java_name_index (0x454)
	}, ; 1105
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 682; uint32_t java_name_index (0x2aa)
	}, ; 1106
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 33554713, ; uint32_t type_token_id (0x2000119)
		i32 996; uint32_t java_name_index (0x3e4)
	}, ; 1107
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 33554589, ; uint32_t type_token_id (0x200009d)
		i32 1206; uint32_t java_name_index (0x4b6)
	}, ; 1108
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555122, ; uint32_t type_token_id (0x20002b2)
		i32 570; uint32_t java_name_index (0x23a)
	}, ; 1109
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554544, ; uint32_t type_token_id (0x2000070)
		i32 27; uint32_t java_name_index (0x1b)
	}, ; 1110
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555217, ; uint32_t type_token_id (0x2000311)
		i32 601; uint32_t java_name_index (0x259)
	}, ; 1111
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555479, ; uint32_t type_token_id (0x2000417)
		i32 774; uint32_t java_name_index (0x306)
	}, ; 1112
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554732, ; uint32_t type_token_id (0x200012c)
		i32 367; uint32_t java_name_index (0x16f)
	}, ; 1113
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554749, ; uint32_t type_token_id (0x200013d)
		i32 379; uint32_t java_name_index (0x17b)
	}, ; 1114
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554638, ; uint32_t type_token_id (0x20000ce)
		i32 75; uint32_t java_name_index (0x4b)
	}, ; 1115
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554511, ; uint32_t type_token_id (0x200004f)
		i32 240; uint32_t java_name_index (0xf0)
	}, ; 1116
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554685, ; uint32_t type_token_id (0x20000fd)
		i32 340; uint32_t java_name_index (0x154)
	}, ; 1117
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555246, ; uint32_t type_token_id (0x200032e)
		i32 630; uint32_t java_name_index (0x276)
	}, ; 1118
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555462, ; uint32_t type_token_id (0x2000406)
		i32 762; uint32_t java_name_index (0x2fa)
	}, ; 1119
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 383; uint32_t java_name_index (0x17f)
	}, ; 1120
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 360; uint32_t java_name_index (0x168)
	}, ; 1121
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 887; uint32_t java_name_index (0x377)
	}, ; 1122
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555424, ; uint32_t type_token_id (0x20003e0)
		i32 736; uint32_t java_name_index (0x2e0)
	}, ; 1123
	%struct.TypeMapJava {
		i32 5, ; uint32_t module_index (0x5)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 129; uint32_t java_name_index (0x81)
	}, ; 1124
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 503; uint32_t java_name_index (0x1f7)
	}, ; 1125
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554863, ; uint32_t type_token_id (0x20001af)
		i32 452; uint32_t java_name_index (0x1c4)
	}, ; 1126
	%struct.TypeMapJava {
		i32 2, ; uint32_t module_index (0x2)
		i32 33554513, ; uint32_t type_token_id (0x2000051)
		i32 95; uint32_t java_name_index (0x5f)
	}, ; 1127
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554533, ; uint32_t type_token_id (0x2000065)
		i32 20; uint32_t java_name_index (0x14)
	}, ; 1128
	%struct.TypeMapJava {
		i32 30, ; uint32_t module_index (0x1e)
		i32 33554468, ; uint32_t type_token_id (0x2000024)
		i32 963; uint32_t java_name_index (0x3c3)
	}, ; 1129
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554818, ; uint32_t type_token_id (0x2000182)
		i32 419; uint32_t java_name_index (0x1a3)
	}, ; 1130
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 488; uint32_t java_name_index (0x1e8)
	}, ; 1131
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555299, ; uint32_t type_token_id (0x2000363)
		i32 664; uint32_t java_name_index (0x298)
	}, ; 1132
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555240, ; uint32_t type_token_id (0x2000328)
		i32 624; uint32_t java_name_index (0x270)
	}, ; 1133
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33554532, ; uint32_t type_token_id (0x2000064)
		i32 186; uint32_t java_name_index (0xba)
	}, ; 1134
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555242, ; uint32_t type_token_id (0x200032a)
		i32 626; uint32_t java_name_index (0x272)
	}, ; 1135
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555348, ; uint32_t type_token_id (0x2000394)
		i32 696; uint32_t java_name_index (0x2b8)
	}, ; 1136
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555224, ; uint32_t type_token_id (0x2000318)
		i32 842; uint32_t java_name_index (0x34a)
	}, ; 1137
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 33554774, ; uint32_t type_token_id (0x2000156)
		i32 1027; uint32_t java_name_index (0x403)
	}, ; 1138
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index (0x2a)
		i32 33554450, ; uint32_t type_token_id (0x2000012)
		i32 1245; uint32_t java_name_index (0x4dd)
	}, ; 1139
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 577; uint32_t java_name_index (0x241)
	}, ; 1140
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33554570, ; uint32_t type_token_id (0x200008a)
		i32 205; uint32_t java_name_index (0xcd)
	}, ; 1141
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554711, ; uint32_t type_token_id (0x2000117)
		i32 358; uint32_t java_name_index (0x166)
	}, ; 1142
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554524, ; uint32_t type_token_id (0x200005c)
		i32 247; uint32_t java_name_index (0xf7)
	}, ; 1143
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555162, ; uint32_t type_token_id (0x20002da)
		i32 582; uint32_t java_name_index (0x246)
	}, ; 1144
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555212, ; uint32_t type_token_id (0x200030c)
		i32 596; uint32_t java_name_index (0x254)
	}, ; 1145
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554625, ; uint32_t type_token_id (0x20000c1)
		i32 307; uint32_t java_name_index (0x133)
	}, ; 1146
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554827, ; uint32_t type_token_id (0x200018b)
		i32 424; uint32_t java_name_index (0x1a8)
	}, ; 1147
	%struct.TypeMapJava {
		i32 6, ; uint32_t module_index (0x6)
		i32 33554663, ; uint32_t type_token_id (0x20000e7)
		i32 130; uint32_t java_name_index (0x82)
	}, ; 1148
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555304, ; uint32_t type_token_id (0x2000368)
		i32 889; uint32_t java_name_index (0x379)
	}, ; 1149
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555292, ; uint32_t type_token_id (0x200035c)
		i32 660; uint32_t java_name_index (0x294)
	}, ; 1150
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 33554490, ; uint32_t type_token_id (0x200003a)
		i32 1148; uint32_t java_name_index (0x47c)
	}, ; 1151
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555216, ; uint32_t type_token_id (0x2000310)
		i32 600; uint32_t java_name_index (0x258)
	}, ; 1152
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 33554624, ; uint32_t type_token_id (0x20000c0)
		i32 1225; uint32_t java_name_index (0x4c9)
	}, ; 1153
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554511, ; uint32_t type_token_id (0x200004f)
		i32 10; uint32_t java_name_index (0xa)
	}, ; 1154
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 33555120, ; uint32_t type_token_id (0x20002b0)
		i32 1033; uint32_t java_name_index (0x409)
	}, ; 1155
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555486, ; uint32_t type_token_id (0x200041e)
		i32 779; uint32_t java_name_index (0x30b)
	}, ; 1156
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555258, ; uint32_t type_token_id (0x200033a)
		i32 636; uint32_t java_name_index (0x27c)
	}, ; 1157
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555273, ; uint32_t type_token_id (0x2000349)
		i32 648; uint32_t java_name_index (0x288)
	}, ; 1158
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554724, ; uint32_t type_token_id (0x2000124)
		i32 362; uint32_t java_name_index (0x16a)
	}, ; 1159
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554560, ; uint32_t type_token_id (0x2000080)
		i32 266; uint32_t java_name_index (0x10a)
	}, ; 1160
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554542, ; uint32_t type_token_id (0x200006e)
		i32 256; uint32_t java_name_index (0x100)
	}, ; 1161
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 337; uint32_t java_name_index (0x151)
	}, ; 1162
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554921, ; uint32_t type_token_id (0x20001e9)
		i32 484; uint32_t java_name_index (0x1e4)
	}, ; 1163
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 572; uint32_t java_name_index (0x23c)
	}, ; 1164
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 33554751, ; uint32_t type_token_id (0x200013f)
		i32 1007; uint32_t java_name_index (0x3ef)
	}, ; 1165
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 536; uint32_t java_name_index (0x218)
	}, ; 1166
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554812, ; uint32_t type_token_id (0x200017c)
		i32 415; uint32_t java_name_index (0x19f)
	}, ; 1167
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555269, ; uint32_t type_token_id (0x2000345)
		i32 645; uint32_t java_name_index (0x285)
	}, ; 1168
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33554507, ; uint32_t type_token_id (0x200004b)
		i32 1057; uint32_t java_name_index (0x421)
	}, ; 1169
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555531, ; uint32_t type_token_id (0x200044b)
		i32 834; uint32_t java_name_index (0x342)
	}, ; 1170
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555290, ; uint32_t type_token_id (0x200035a)
		i32 659; uint32_t java_name_index (0x293)
	}, ; 1171
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554952, ; uint32_t type_token_id (0x2000208)
		i32 499; uint32_t java_name_index (0x1f3)
	}, ; 1172
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index (0x28)
		i32 33554436, ; uint32_t type_token_id (0x2000004)
		i32 1123; uint32_t java_name_index (0x463)
	}, ; 1173
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555079, ; uint32_t type_token_id (0x2000287)
		i32 561; uint32_t java_name_index (0x231)
	}, ; 1174
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555861, ; uint32_t type_token_id (0x2000595)
		i32 934; uint32_t java_name_index (0x3a6)
	}, ; 1175
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554744, ; uint32_t type_token_id (0x2000138)
		i32 376; uint32_t java_name_index (0x178)
	}, ; 1176
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554509, ; uint32_t type_token_id (0x200004d)
		i32 8; uint32_t java_name_index (0x8)
	}, ; 1177
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index (0x1a)
		i32 33554512, ; uint32_t type_token_id (0x2000050)
		i32 941; uint32_t java_name_index (0x3ad)
	}, ; 1178
	%struct.TypeMapJava {
		i32 30, ; uint32_t module_index (0x1e)
		i32 33554473, ; uint32_t type_token_id (0x2000029)
		i32 967; uint32_t java_name_index (0x3c7)
	}, ; 1179
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555038, ; uint32_t type_token_id (0x200025e)
		i32 547; uint32_t java_name_index (0x223)
	}, ; 1180
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555471, ; uint32_t type_token_id (0x200040f)
		i32 768; uint32_t java_name_index (0x300)
	}, ; 1181
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555428, ; uint32_t type_token_id (0x20003e4)
		i32 739; uint32_t java_name_index (0x2e3)
	}, ; 1182
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554589, ; uint32_t type_token_id (0x200009d)
		i32 289; uint32_t java_name_index (0x121)
	}, ; 1183
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 33554757, ; uint32_t type_token_id (0x2000145)
		i32 1014; uint32_t java_name_index (0x3f6)
	}, ; 1184
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555014, ; uint32_t type_token_id (0x2000246)
		i32 535; uint32_t java_name_index (0x217)
	}, ; 1185
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554541, ; uint32_t type_token_id (0x200006d)
		i32 255; uint32_t java_name_index (0xff)
	}, ; 1186
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555474, ; uint32_t type_token_id (0x2000412)
		i32 770; uint32_t java_name_index (0x302)
	}, ; 1187
	%struct.TypeMapJava {
		i32 3, ; uint32_t module_index (0x3)
		i32 33554459, ; uint32_t type_token_id (0x200001b)
		i32 110; uint32_t java_name_index (0x6e)
	}, ; 1188
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555792, ; uint32_t type_token_id (0x2000550)
		i32 840; uint32_t java_name_index (0x348)
	}, ; 1189
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554784, ; uint32_t type_token_id (0x2000160)
		i32 398; uint32_t java_name_index (0x18e)
	}, ; 1190
	%struct.TypeMapJava {
		i32 8, ; uint32_t module_index (0x8)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 134; uint32_t java_name_index (0x86)
	}, ; 1191
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 33554762, ; uint32_t type_token_id (0x200014a)
		i32 1018; uint32_t java_name_index (0x3fa)
	}, ; 1192
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index (0xc)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 158; uint32_t java_name_index (0x9e)
	}, ; 1193
	%struct.TypeMapJava {
		i32 33, ; uint32_t module_index (0x21)
		i32 33554436, ; uint32_t type_token_id (0x2000004)
		i32 1048; uint32_t java_name_index (0x418)
	}, ; 1194
	%struct.TypeMapJava {
		i32 3, ; uint32_t module_index (0x3)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 114; uint32_t java_name_index (0x72)
	}, ; 1195
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554851, ; uint32_t type_token_id (0x20001a3)
		i32 443; uint32_t java_name_index (0x1bb)
	}, ; 1196
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 33554640, ; uint32_t type_token_id (0x20000d0)
		i32 1234; uint32_t java_name_index (0x4d2)
	}, ; 1197
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554644, ; uint32_t type_token_id (0x20000d4)
		i32 317; uint32_t java_name_index (0x13d)
	}, ; 1198
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 919; uint32_t java_name_index (0x397)
	}, ; 1199
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 53; uint32_t java_name_index (0x35)
	}, ; 1200
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554521, ; uint32_t type_token_id (0x2000059)
		i32 16; uint32_t java_name_index (0x10)
	}, ; 1201
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555347, ; uint32_t type_token_id (0x2000393)
		i32 695; uint32_t java_name_index (0x2b7)
	}, ; 1202
	%struct.TypeMapJava {
		i32 8, ; uint32_t module_index (0x8)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 137; uint32_t java_name_index (0x89)
	}, ; 1203
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1211; uint32_t java_name_index (0x4bb)
	}, ; 1204
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33554541, ; uint32_t type_token_id (0x200006d)
		i32 194; uint32_t java_name_index (0xc2)
	}, ; 1205
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 33554769, ; uint32_t type_token_id (0x2000151)
		i32 1024; uint32_t java_name_index (0x400)
	}, ; 1206
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554509, ; uint32_t type_token_id (0x200004d)
		i32 238; uint32_t java_name_index (0xee)
	}, ; 1207
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554627, ; uint32_t type_token_id (0x20000c3)
		i32 308; uint32_t java_name_index (0x134)
	}, ; 1208
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555465, ; uint32_t type_token_id (0x2000409)
		i32 764; uint32_t java_name_index (0x2fc)
	}, ; 1209
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 388; uint32_t java_name_index (0x184)
	}, ; 1210
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index (0xb)
		i32 33554461, ; uint32_t type_token_id (0x200001d)
		i32 154; uint32_t java_name_index (0x9a)
	}, ; 1211
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 33554465, ; uint32_t type_token_id (0x2000021)
		i32 1128; uint32_t java_name_index (0x468)
	}, ; 1212
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33554491, ; uint32_t type_token_id (0x200003b)
		i32 161; uint32_t java_name_index (0xa1)
	}, ; 1213
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555269, ; uint32_t type_token_id (0x2000345)
		i32 856; uint32_t java_name_index (0x358)
	}, ; 1214
	%struct.TypeMapJava {
		i32 2, ; uint32_t module_index (0x2)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 86; uint32_t java_name_index (0x56)
	}, ; 1215
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555243, ; uint32_t type_token_id (0x200032b)
		i32 627; uint32_t java_name_index (0x273)
	}, ; 1216
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 33555101, ; uint32_t type_token_id (0x200029d)
		i32 1000; uint32_t java_name_index (0x3e8)
	}, ; 1217
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555208, ; uint32_t type_token_id (0x2000308)
		i32 593; uint32_t java_name_index (0x251)
	}, ; 1218
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554605, ; uint32_t type_token_id (0x20000ad)
		i32 57; uint32_t java_name_index (0x39)
	}, ; 1219
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 58; uint32_t java_name_index (0x3a)
	}, ; 1220
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 524; uint32_t java_name_index (0x20c)
	}, ; 1221
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33554530, ; uint32_t type_token_id (0x2000062)
		i32 1073; uint32_t java_name_index (0x431)
	}, ; 1222
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554807, ; uint32_t type_token_id (0x2000177)
		i32 410; uint32_t java_name_index (0x19a)
	}, ; 1223
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554578, ; uint32_t type_token_id (0x2000092)
		i32 280; uint32_t java_name_index (0x118)
	}, ; 1224
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555182, ; uint32_t type_token_id (0x20002ee)
		i32 589; uint32_t java_name_index (0x24d)
	}, ; 1225
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 556; uint32_t java_name_index (0x22c)
	}, ; 1226
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 441; uint32_t java_name_index (0x1b9)
	}, ; 1227
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 506; uint32_t java_name_index (0x1fa)
	}, ; 1228
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 504; uint32_t java_name_index (0x1f8)
	}, ; 1229
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554792, ; uint32_t type_token_id (0x2000168)
		i32 401; uint32_t java_name_index (0x191)
	}, ; 1230
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 33554557, ; uint32_t type_token_id (0x200007d)
		i32 1190; uint32_t java_name_index (0x4a6)
	}, ; 1231
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 33554764, ; uint32_t type_token_id (0x200014c)
		i32 1020; uint32_t java_name_index (0x3fc)
	}, ; 1232
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 718; uint32_t java_name_index (0x2ce)
	}, ; 1233
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index (0x29)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1152; uint32_t java_name_index (0x480)
	}, ; 1234
	%struct.TypeMapJava {
		i32 30, ; uint32_t module_index (0x1e)
		i32 33554478, ; uint32_t type_token_id (0x200002e)
		i32 970; uint32_t java_name_index (0x3ca)
	}, ; 1235
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555433, ; uint32_t type_token_id (0x20003e9)
		i32 742; uint32_t java_name_index (0x2e6)
	}, ; 1236
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33555235, ; uint32_t type_token_id (0x2000323)
		i32 619; uint32_t java_name_index (0x26b)
	}, ; 1237
	%struct.TypeMapJava {
		i32 2, ; uint32_t module_index (0x2)
		i32 33554502, ; uint32_t type_token_id (0x2000046)
		i32 89; uint32_t java_name_index (0x59)
	}, ; 1238
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 824; uint32_t java_name_index (0x338)
	}, ; 1239
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554581, ; uint32_t type_token_id (0x2000095)
		i32 281; uint32_t java_name_index (0x119)
	}, ; 1240
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 33555225, ; uint32_t type_token_id (0x2000319)
		i32 843; uint32_t java_name_index (0x34b)
	}, ; 1241
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 761; uint32_t java_name_index (0x2f9)
	}, ; 1242
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 325; uint32_t java_name_index (0x145)
	}, ; 1243
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 33554701, ; uint32_t type_token_id (0x200010d)
		i32 989; uint32_t java_name_index (0x3dd)
	}, ; 1244
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554587, ; uint32_t type_token_id (0x200009b)
		i32 287; uint32_t java_name_index (0x11f)
	}, ; 1245
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 59; uint32_t java_name_index (0x3b)
	}, ; 1246
	%struct.TypeMapJava {
		i32 2, ; uint32_t module_index (0x2)
		i32 33554504, ; uint32_t type_token_id (0x2000048)
		i32 90; uint32_t java_name_index (0x5a)
	} ; 1247
], align 4

; Java type names
@java_type_names = dso_local local_unnamed_addr constant [1248 x ptr] [
	ptr @.str.0, ; 0
	ptr @.str.1, ; 1
	ptr @.str.2, ; 2
	ptr @.str.3, ; 3
	ptr @.str.4, ; 4
	ptr @.str.5, ; 5
	ptr @.str.6, ; 6
	ptr @.str.7, ; 7
	ptr @.str.8, ; 8
	ptr @.str.9, ; 9
	ptr @.str.10, ; 10
	ptr @.str.11, ; 11
	ptr @.str.12, ; 12
	ptr @.str.13, ; 13
	ptr @.str.14, ; 14
	ptr @.str.15, ; 15
	ptr @.str.16, ; 16
	ptr @.str.17, ; 17
	ptr @.str.18, ; 18
	ptr @.str.19, ; 19
	ptr @.str.20, ; 20
	ptr @.str.21, ; 21
	ptr @.str.22, ; 22
	ptr @.str.23, ; 23
	ptr @.str.24, ; 24
	ptr @.str.25, ; 25
	ptr @.str.26, ; 26
	ptr @.str.27, ; 27
	ptr @.str.28, ; 28
	ptr @.str.29, ; 29
	ptr @.str.30, ; 30
	ptr @.str.31, ; 31
	ptr @.str.32, ; 32
	ptr @.str.33, ; 33
	ptr @.str.34, ; 34
	ptr @.str.35, ; 35
	ptr @.str.36, ; 36
	ptr @.str.37, ; 37
	ptr @.str.38, ; 38
	ptr @.str.39, ; 39
	ptr @.str.40, ; 40
	ptr @.str.41, ; 41
	ptr @.str.42, ; 42
	ptr @.str.43, ; 43
	ptr @.str.44, ; 44
	ptr @.str.45, ; 45
	ptr @.str.46, ; 46
	ptr @.str.47, ; 47
	ptr @.str.48, ; 48
	ptr @.str.49, ; 49
	ptr @.str.50, ; 50
	ptr @.str.51, ; 51
	ptr @.str.52, ; 52
	ptr @.str.53, ; 53
	ptr @.str.54, ; 54
	ptr @.str.55, ; 55
	ptr @.str.56, ; 56
	ptr @.str.57, ; 57
	ptr @.str.58, ; 58
	ptr @.str.59, ; 59
	ptr @.str.60, ; 60
	ptr @.str.61, ; 61
	ptr @.str.62, ; 62
	ptr @.str.63, ; 63
	ptr @.str.64, ; 64
	ptr @.str.65, ; 65
	ptr @.str.66, ; 66
	ptr @.str.67, ; 67
	ptr @.str.68, ; 68
	ptr @.str.69, ; 69
	ptr @.str.70, ; 70
	ptr @.str.71, ; 71
	ptr @.str.72, ; 72
	ptr @.str.73, ; 73
	ptr @.str.74, ; 74
	ptr @.str.75, ; 75
	ptr @.str.76, ; 76
	ptr @.str.77, ; 77
	ptr @.str.78, ; 78
	ptr @.str.79, ; 79
	ptr @.str.80, ; 80
	ptr @.str.81, ; 81
	ptr @.str.82, ; 82
	ptr @.str.83, ; 83
	ptr @.str.84, ; 84
	ptr @.str.85, ; 85
	ptr @.str.86, ; 86
	ptr @.str.87, ; 87
	ptr @.str.88, ; 88
	ptr @.str.89, ; 89
	ptr @.str.90, ; 90
	ptr @.str.91, ; 91
	ptr @.str.92, ; 92
	ptr @.str.93, ; 93
	ptr @.str.94, ; 94
	ptr @.str.95, ; 95
	ptr @.str.96, ; 96
	ptr @.str.97, ; 97
	ptr @.str.98, ; 98
	ptr @.str.99, ; 99
	ptr @.str.100, ; 100
	ptr @.str.101, ; 101
	ptr @.str.102, ; 102
	ptr @.str.103, ; 103
	ptr @.str.104, ; 104
	ptr @.str.105, ; 105
	ptr @.str.106, ; 106
	ptr @.str.107, ; 107
	ptr @.str.108, ; 108
	ptr @.str.109, ; 109
	ptr @.str.110, ; 110
	ptr @.str.111, ; 111
	ptr @.str.112, ; 112
	ptr @.str.113, ; 113
	ptr @.str.114, ; 114
	ptr @.str.115, ; 115
	ptr @.str.116, ; 116
	ptr @.str.117, ; 117
	ptr @.str.118, ; 118
	ptr @.str.119, ; 119
	ptr @.str.120, ; 120
	ptr @.str.121, ; 121
	ptr @.str.122, ; 122
	ptr @.str.123, ; 123
	ptr @.str.124, ; 124
	ptr @.str.125, ; 125
	ptr @.str.126, ; 126
	ptr @.str.127, ; 127
	ptr @.str.128, ; 128
	ptr @.str.129, ; 129
	ptr @.str.130, ; 130
	ptr @.str.131, ; 131
	ptr @.str.132, ; 132
	ptr @.str.133, ; 133
	ptr @.str.134, ; 134
	ptr @.str.135, ; 135
	ptr @.str.136, ; 136
	ptr @.str.137, ; 137
	ptr @.str.138, ; 138
	ptr @.str.139, ; 139
	ptr @.str.140, ; 140
	ptr @.str.141, ; 141
	ptr @.str.142, ; 142
	ptr @.str.143, ; 143
	ptr @.str.144, ; 144
	ptr @.str.145, ; 145
	ptr @.str.146, ; 146
	ptr @.str.147, ; 147
	ptr @.str.148, ; 148
	ptr @.str.149, ; 149
	ptr @.str.150, ; 150
	ptr @.str.151, ; 151
	ptr @.str.152, ; 152
	ptr @.str.153, ; 153
	ptr @.str.154, ; 154
	ptr @.str.155, ; 155
	ptr @.str.156, ; 156
	ptr @.str.157, ; 157
	ptr @.str.158, ; 158
	ptr @.str.159, ; 159
	ptr @.str.160, ; 160
	ptr @.str.161, ; 161
	ptr @.str.162, ; 162
	ptr @.str.163, ; 163
	ptr @.str.164, ; 164
	ptr @.str.165, ; 165
	ptr @.str.166, ; 166
	ptr @.str.167, ; 167
	ptr @.str.168, ; 168
	ptr @.str.169, ; 169
	ptr @.str.170, ; 170
	ptr @.str.171, ; 171
	ptr @.str.172, ; 172
	ptr @.str.173, ; 173
	ptr @.str.174, ; 174
	ptr @.str.175, ; 175
	ptr @.str.176, ; 176
	ptr @.str.177, ; 177
	ptr @.str.178, ; 178
	ptr @.str.179, ; 179
	ptr @.str.180, ; 180
	ptr @.str.181, ; 181
	ptr @.str.182, ; 182
	ptr @.str.183, ; 183
	ptr @.str.184, ; 184
	ptr @.str.185, ; 185
	ptr @.str.186, ; 186
	ptr @.str.187, ; 187
	ptr @.str.188, ; 188
	ptr @.str.189, ; 189
	ptr @.str.190, ; 190
	ptr @.str.191, ; 191
	ptr @.str.192, ; 192
	ptr @.str.193, ; 193
	ptr @.str.194, ; 194
	ptr @.str.195, ; 195
	ptr @.str.196, ; 196
	ptr @.str.197, ; 197
	ptr @.str.198, ; 198
	ptr @.str.199, ; 199
	ptr @.str.200, ; 200
	ptr @.str.201, ; 201
	ptr @.str.202, ; 202
	ptr @.str.203, ; 203
	ptr @.str.204, ; 204
	ptr @.str.205, ; 205
	ptr @.str.206, ; 206
	ptr @.str.207, ; 207
	ptr @.str.208, ; 208
	ptr @.str.209, ; 209
	ptr @.str.210, ; 210
	ptr @.str.211, ; 211
	ptr @.str.212, ; 212
	ptr @.str.213, ; 213
	ptr @.str.214, ; 214
	ptr @.str.215, ; 215
	ptr @.str.216, ; 216
	ptr @.str.217, ; 217
	ptr @.str.218, ; 218
	ptr @.str.219, ; 219
	ptr @.str.220, ; 220
	ptr @.str.221, ; 221
	ptr @.str.222, ; 222
	ptr @.str.223, ; 223
	ptr @.str.224, ; 224
	ptr @.str.225, ; 225
	ptr @.str.226, ; 226
	ptr @.str.227, ; 227
	ptr @.str.228, ; 228
	ptr @.str.229, ; 229
	ptr @.str.230, ; 230
	ptr @.str.231, ; 231
	ptr @.str.232, ; 232
	ptr @.str.233, ; 233
	ptr @.str.234, ; 234
	ptr @.str.235, ; 235
	ptr @.str.236, ; 236
	ptr @.str.237, ; 237
	ptr @.str.238, ; 238
	ptr @.str.239, ; 239
	ptr @.str.240, ; 240
	ptr @.str.241, ; 241
	ptr @.str.242, ; 242
	ptr @.str.243, ; 243
	ptr @.str.244, ; 244
	ptr @.str.245, ; 245
	ptr @.str.246, ; 246
	ptr @.str.247, ; 247
	ptr @.str.248, ; 248
	ptr @.str.249, ; 249
	ptr @.str.250, ; 250
	ptr @.str.251, ; 251
	ptr @.str.252, ; 252
	ptr @.str.253, ; 253
	ptr @.str.254, ; 254
	ptr @.str.255, ; 255
	ptr @.str.256, ; 256
	ptr @.str.257, ; 257
	ptr @.str.258, ; 258
	ptr @.str.259, ; 259
	ptr @.str.260, ; 260
	ptr @.str.261, ; 261
	ptr @.str.262, ; 262
	ptr @.str.263, ; 263
	ptr @.str.264, ; 264
	ptr @.str.265, ; 265
	ptr @.str.266, ; 266
	ptr @.str.267, ; 267
	ptr @.str.268, ; 268
	ptr @.str.269, ; 269
	ptr @.str.270, ; 270
	ptr @.str.271, ; 271
	ptr @.str.272, ; 272
	ptr @.str.273, ; 273
	ptr @.str.274, ; 274
	ptr @.str.275, ; 275
	ptr @.str.276, ; 276
	ptr @.str.277, ; 277
	ptr @.str.278, ; 278
	ptr @.str.279, ; 279
	ptr @.str.280, ; 280
	ptr @.str.281, ; 281
	ptr @.str.282, ; 282
	ptr @.str.283, ; 283
	ptr @.str.284, ; 284
	ptr @.str.285, ; 285
	ptr @.str.286, ; 286
	ptr @.str.287, ; 287
	ptr @.str.288, ; 288
	ptr @.str.289, ; 289
	ptr @.str.290, ; 290
	ptr @.str.291, ; 291
	ptr @.str.292, ; 292
	ptr @.str.293, ; 293
	ptr @.str.294, ; 294
	ptr @.str.295, ; 295
	ptr @.str.296, ; 296
	ptr @.str.297, ; 297
	ptr @.str.298, ; 298
	ptr @.str.299, ; 299
	ptr @.str.300, ; 300
	ptr @.str.301, ; 301
	ptr @.str.302, ; 302
	ptr @.str.303, ; 303
	ptr @.str.304, ; 304
	ptr @.str.305, ; 305
	ptr @.str.306, ; 306
	ptr @.str.307, ; 307
	ptr @.str.308, ; 308
	ptr @.str.309, ; 309
	ptr @.str.310, ; 310
	ptr @.str.311, ; 311
	ptr @.str.312, ; 312
	ptr @.str.313, ; 313
	ptr @.str.314, ; 314
	ptr @.str.315, ; 315
	ptr @.str.316, ; 316
	ptr @.str.317, ; 317
	ptr @.str.318, ; 318
	ptr @.str.319, ; 319
	ptr @.str.320, ; 320
	ptr @.str.321, ; 321
	ptr @.str.322, ; 322
	ptr @.str.323, ; 323
	ptr @.str.324, ; 324
	ptr @.str.325, ; 325
	ptr @.str.326, ; 326
	ptr @.str.327, ; 327
	ptr @.str.328, ; 328
	ptr @.str.329, ; 329
	ptr @.str.330, ; 330
	ptr @.str.331, ; 331
	ptr @.str.332, ; 332
	ptr @.str.333, ; 333
	ptr @.str.334, ; 334
	ptr @.str.335, ; 335
	ptr @.str.336, ; 336
	ptr @.str.337, ; 337
	ptr @.str.338, ; 338
	ptr @.str.339, ; 339
	ptr @.str.340, ; 340
	ptr @.str.341, ; 341
	ptr @.str.342, ; 342
	ptr @.str.343, ; 343
	ptr @.str.344, ; 344
	ptr @.str.345, ; 345
	ptr @.str.346, ; 346
	ptr @.str.347, ; 347
	ptr @.str.348, ; 348
	ptr @.str.349, ; 349
	ptr @.str.350, ; 350
	ptr @.str.351, ; 351
	ptr @.str.352, ; 352
	ptr @.str.353, ; 353
	ptr @.str.354, ; 354
	ptr @.str.355, ; 355
	ptr @.str.356, ; 356
	ptr @.str.357, ; 357
	ptr @.str.358, ; 358
	ptr @.str.359, ; 359
	ptr @.str.360, ; 360
	ptr @.str.361, ; 361
	ptr @.str.362, ; 362
	ptr @.str.363, ; 363
	ptr @.str.364, ; 364
	ptr @.str.365, ; 365
	ptr @.str.366, ; 366
	ptr @.str.367, ; 367
	ptr @.str.368, ; 368
	ptr @.str.369, ; 369
	ptr @.str.370, ; 370
	ptr @.str.371, ; 371
	ptr @.str.372, ; 372
	ptr @.str.373, ; 373
	ptr @.str.374, ; 374
	ptr @.str.375, ; 375
	ptr @.str.376, ; 376
	ptr @.str.377, ; 377
	ptr @.str.378, ; 378
	ptr @.str.379, ; 379
	ptr @.str.380, ; 380
	ptr @.str.381, ; 381
	ptr @.str.382, ; 382
	ptr @.str.383, ; 383
	ptr @.str.384, ; 384
	ptr @.str.385, ; 385
	ptr @.str.386, ; 386
	ptr @.str.387, ; 387
	ptr @.str.388, ; 388
	ptr @.str.389, ; 389
	ptr @.str.390, ; 390
	ptr @.str.391, ; 391
	ptr @.str.392, ; 392
	ptr @.str.393, ; 393
	ptr @.str.394, ; 394
	ptr @.str.395, ; 395
	ptr @.str.396, ; 396
	ptr @.str.397, ; 397
	ptr @.str.398, ; 398
	ptr @.str.399, ; 399
	ptr @.str.400, ; 400
	ptr @.str.401, ; 401
	ptr @.str.402, ; 402
	ptr @.str.403, ; 403
	ptr @.str.404, ; 404
	ptr @.str.405, ; 405
	ptr @.str.406, ; 406
	ptr @.str.407, ; 407
	ptr @.str.408, ; 408
	ptr @.str.409, ; 409
	ptr @.str.410, ; 410
	ptr @.str.411, ; 411
	ptr @.str.412, ; 412
	ptr @.str.413, ; 413
	ptr @.str.414, ; 414
	ptr @.str.415, ; 415
	ptr @.str.416, ; 416
	ptr @.str.417, ; 417
	ptr @.str.418, ; 418
	ptr @.str.419, ; 419
	ptr @.str.420, ; 420
	ptr @.str.421, ; 421
	ptr @.str.422, ; 422
	ptr @.str.423, ; 423
	ptr @.str.424, ; 424
	ptr @.str.425, ; 425
	ptr @.str.426, ; 426
	ptr @.str.427, ; 427
	ptr @.str.428, ; 428
	ptr @.str.429, ; 429
	ptr @.str.430, ; 430
	ptr @.str.431, ; 431
	ptr @.str.432, ; 432
	ptr @.str.433, ; 433
	ptr @.str.434, ; 434
	ptr @.str.435, ; 435
	ptr @.str.436, ; 436
	ptr @.str.437, ; 437
	ptr @.str.438, ; 438
	ptr @.str.439, ; 439
	ptr @.str.440, ; 440
	ptr @.str.441, ; 441
	ptr @.str.442, ; 442
	ptr @.str.443, ; 443
	ptr @.str.444, ; 444
	ptr @.str.445, ; 445
	ptr @.str.446, ; 446
	ptr @.str.447, ; 447
	ptr @.str.448, ; 448
	ptr @.str.449, ; 449
	ptr @.str.450, ; 450
	ptr @.str.451, ; 451
	ptr @.str.452, ; 452
	ptr @.str.453, ; 453
	ptr @.str.454, ; 454
	ptr @.str.455, ; 455
	ptr @.str.456, ; 456
	ptr @.str.457, ; 457
	ptr @.str.458, ; 458
	ptr @.str.459, ; 459
	ptr @.str.460, ; 460
	ptr @.str.461, ; 461
	ptr @.str.462, ; 462
	ptr @.str.463, ; 463
	ptr @.str.464, ; 464
	ptr @.str.465, ; 465
	ptr @.str.466, ; 466
	ptr @.str.467, ; 467
	ptr @.str.468, ; 468
	ptr @.str.469, ; 469
	ptr @.str.470, ; 470
	ptr @.str.471, ; 471
	ptr @.str.472, ; 472
	ptr @.str.473, ; 473
	ptr @.str.474, ; 474
	ptr @.str.475, ; 475
	ptr @.str.476, ; 476
	ptr @.str.477, ; 477
	ptr @.str.478, ; 478
	ptr @.str.479, ; 479
	ptr @.str.480, ; 480
	ptr @.str.481, ; 481
	ptr @.str.482, ; 482
	ptr @.str.483, ; 483
	ptr @.str.484, ; 484
	ptr @.str.485, ; 485
	ptr @.str.486, ; 486
	ptr @.str.487, ; 487
	ptr @.str.488, ; 488
	ptr @.str.489, ; 489
	ptr @.str.490, ; 490
	ptr @.str.491, ; 491
	ptr @.str.492, ; 492
	ptr @.str.493, ; 493
	ptr @.str.494, ; 494
	ptr @.str.495, ; 495
	ptr @.str.496, ; 496
	ptr @.str.497, ; 497
	ptr @.str.498, ; 498
	ptr @.str.499, ; 499
	ptr @.str.500, ; 500
	ptr @.str.501, ; 501
	ptr @.str.502, ; 502
	ptr @.str.503, ; 503
	ptr @.str.504, ; 504
	ptr @.str.505, ; 505
	ptr @.str.506, ; 506
	ptr @.str.507, ; 507
	ptr @.str.508, ; 508
	ptr @.str.509, ; 509
	ptr @.str.510, ; 510
	ptr @.str.511, ; 511
	ptr @.str.512, ; 512
	ptr @.str.513, ; 513
	ptr @.str.514, ; 514
	ptr @.str.515, ; 515
	ptr @.str.516, ; 516
	ptr @.str.517, ; 517
	ptr @.str.518, ; 518
	ptr @.str.519, ; 519
	ptr @.str.520, ; 520
	ptr @.str.521, ; 521
	ptr @.str.522, ; 522
	ptr @.str.523, ; 523
	ptr @.str.524, ; 524
	ptr @.str.525, ; 525
	ptr @.str.526, ; 526
	ptr @.str.527, ; 527
	ptr @.str.528, ; 528
	ptr @.str.529, ; 529
	ptr @.str.530, ; 530
	ptr @.str.531, ; 531
	ptr @.str.532, ; 532
	ptr @.str.533, ; 533
	ptr @.str.534, ; 534
	ptr @.str.535, ; 535
	ptr @.str.536, ; 536
	ptr @.str.537, ; 537
	ptr @.str.538, ; 538
	ptr @.str.539, ; 539
	ptr @.str.540, ; 540
	ptr @.str.541, ; 541
	ptr @.str.542, ; 542
	ptr @.str.543, ; 543
	ptr @.str.544, ; 544
	ptr @.str.545, ; 545
	ptr @.str.546, ; 546
	ptr @.str.547, ; 547
	ptr @.str.548, ; 548
	ptr @.str.549, ; 549
	ptr @.str.550, ; 550
	ptr @.str.551, ; 551
	ptr @.str.552, ; 552
	ptr @.str.553, ; 553
	ptr @.str.554, ; 554
	ptr @.str.555, ; 555
	ptr @.str.556, ; 556
	ptr @.str.557, ; 557
	ptr @.str.558, ; 558
	ptr @.str.559, ; 559
	ptr @.str.560, ; 560
	ptr @.str.561, ; 561
	ptr @.str.562, ; 562
	ptr @.str.563, ; 563
	ptr @.str.564, ; 564
	ptr @.str.565, ; 565
	ptr @.str.566, ; 566
	ptr @.str.567, ; 567
	ptr @.str.568, ; 568
	ptr @.str.569, ; 569
	ptr @.str.570, ; 570
	ptr @.str.571, ; 571
	ptr @.str.572, ; 572
	ptr @.str.573, ; 573
	ptr @.str.574, ; 574
	ptr @.str.575, ; 575
	ptr @.str.576, ; 576
	ptr @.str.577, ; 577
	ptr @.str.578, ; 578
	ptr @.str.579, ; 579
	ptr @.str.580, ; 580
	ptr @.str.581, ; 581
	ptr @.str.582, ; 582
	ptr @.str.583, ; 583
	ptr @.str.584, ; 584
	ptr @.str.585, ; 585
	ptr @.str.586, ; 586
	ptr @.str.587, ; 587
	ptr @.str.588, ; 588
	ptr @.str.589, ; 589
	ptr @.str.590, ; 590
	ptr @.str.591, ; 591
	ptr @.str.592, ; 592
	ptr @.str.593, ; 593
	ptr @.str.594, ; 594
	ptr @.str.595, ; 595
	ptr @.str.596, ; 596
	ptr @.str.597, ; 597
	ptr @.str.598, ; 598
	ptr @.str.599, ; 599
	ptr @.str.600, ; 600
	ptr @.str.601, ; 601
	ptr @.str.602, ; 602
	ptr @.str.603, ; 603
	ptr @.str.604, ; 604
	ptr @.str.605, ; 605
	ptr @.str.606, ; 606
	ptr @.str.607, ; 607
	ptr @.str.608, ; 608
	ptr @.str.609, ; 609
	ptr @.str.610, ; 610
	ptr @.str.611, ; 611
	ptr @.str.612, ; 612
	ptr @.str.613, ; 613
	ptr @.str.614, ; 614
	ptr @.str.615, ; 615
	ptr @.str.616, ; 616
	ptr @.str.617, ; 617
	ptr @.str.618, ; 618
	ptr @.str.619, ; 619
	ptr @.str.620, ; 620
	ptr @.str.621, ; 621
	ptr @.str.622, ; 622
	ptr @.str.623, ; 623
	ptr @.str.624, ; 624
	ptr @.str.625, ; 625
	ptr @.str.626, ; 626
	ptr @.str.627, ; 627
	ptr @.str.628, ; 628
	ptr @.str.629, ; 629
	ptr @.str.630, ; 630
	ptr @.str.631, ; 631
	ptr @.str.632, ; 632
	ptr @.str.633, ; 633
	ptr @.str.634, ; 634
	ptr @.str.635, ; 635
	ptr @.str.636, ; 636
	ptr @.str.637, ; 637
	ptr @.str.638, ; 638
	ptr @.str.639, ; 639
	ptr @.str.640, ; 640
	ptr @.str.641, ; 641
	ptr @.str.642, ; 642
	ptr @.str.643, ; 643
	ptr @.str.644, ; 644
	ptr @.str.645, ; 645
	ptr @.str.646, ; 646
	ptr @.str.647, ; 647
	ptr @.str.648, ; 648
	ptr @.str.649, ; 649
	ptr @.str.650, ; 650
	ptr @.str.651, ; 651
	ptr @.str.652, ; 652
	ptr @.str.653, ; 653
	ptr @.str.654, ; 654
	ptr @.str.655, ; 655
	ptr @.str.656, ; 656
	ptr @.str.657, ; 657
	ptr @.str.658, ; 658
	ptr @.str.659, ; 659
	ptr @.str.660, ; 660
	ptr @.str.661, ; 661
	ptr @.str.662, ; 662
	ptr @.str.663, ; 663
	ptr @.str.664, ; 664
	ptr @.str.665, ; 665
	ptr @.str.666, ; 666
	ptr @.str.667, ; 667
	ptr @.str.668, ; 668
	ptr @.str.669, ; 669
	ptr @.str.670, ; 670
	ptr @.str.671, ; 671
	ptr @.str.672, ; 672
	ptr @.str.673, ; 673
	ptr @.str.674, ; 674
	ptr @.str.675, ; 675
	ptr @.str.676, ; 676
	ptr @.str.677, ; 677
	ptr @.str.678, ; 678
	ptr @.str.679, ; 679
	ptr @.str.680, ; 680
	ptr @.str.681, ; 681
	ptr @.str.682, ; 682
	ptr @.str.683, ; 683
	ptr @.str.684, ; 684
	ptr @.str.685, ; 685
	ptr @.str.686, ; 686
	ptr @.str.687, ; 687
	ptr @.str.688, ; 688
	ptr @.str.689, ; 689
	ptr @.str.690, ; 690
	ptr @.str.691, ; 691
	ptr @.str.692, ; 692
	ptr @.str.693, ; 693
	ptr @.str.694, ; 694
	ptr @.str.695, ; 695
	ptr @.str.696, ; 696
	ptr @.str.697, ; 697
	ptr @.str.698, ; 698
	ptr @.str.699, ; 699
	ptr @.str.700, ; 700
	ptr @.str.701, ; 701
	ptr @.str.702, ; 702
	ptr @.str.703, ; 703
	ptr @.str.704, ; 704
	ptr @.str.705, ; 705
	ptr @.str.706, ; 706
	ptr @.str.707, ; 707
	ptr @.str.708, ; 708
	ptr @.str.709, ; 709
	ptr @.str.710, ; 710
	ptr @.str.711, ; 711
	ptr @.str.712, ; 712
	ptr @.str.713, ; 713
	ptr @.str.714, ; 714
	ptr @.str.715, ; 715
	ptr @.str.716, ; 716
	ptr @.str.717, ; 717
	ptr @.str.718, ; 718
	ptr @.str.719, ; 719
	ptr @.str.720, ; 720
	ptr @.str.721, ; 721
	ptr @.str.722, ; 722
	ptr @.str.723, ; 723
	ptr @.str.724, ; 724
	ptr @.str.725, ; 725
	ptr @.str.726, ; 726
	ptr @.str.727, ; 727
	ptr @.str.728, ; 728
	ptr @.str.729, ; 729
	ptr @.str.730, ; 730
	ptr @.str.731, ; 731
	ptr @.str.732, ; 732
	ptr @.str.733, ; 733
	ptr @.str.734, ; 734
	ptr @.str.735, ; 735
	ptr @.str.736, ; 736
	ptr @.str.737, ; 737
	ptr @.str.738, ; 738
	ptr @.str.739, ; 739
	ptr @.str.740, ; 740
	ptr @.str.741, ; 741
	ptr @.str.742, ; 742
	ptr @.str.743, ; 743
	ptr @.str.744, ; 744
	ptr @.str.745, ; 745
	ptr @.str.746, ; 746
	ptr @.str.747, ; 747
	ptr @.str.748, ; 748
	ptr @.str.749, ; 749
	ptr @.str.750, ; 750
	ptr @.str.751, ; 751
	ptr @.str.752, ; 752
	ptr @.str.753, ; 753
	ptr @.str.754, ; 754
	ptr @.str.755, ; 755
	ptr @.str.756, ; 756
	ptr @.str.757, ; 757
	ptr @.str.758, ; 758
	ptr @.str.759, ; 759
	ptr @.str.760, ; 760
	ptr @.str.761, ; 761
	ptr @.str.762, ; 762
	ptr @.str.763, ; 763
	ptr @.str.764, ; 764
	ptr @.str.765, ; 765
	ptr @.str.766, ; 766
	ptr @.str.767, ; 767
	ptr @.str.768, ; 768
	ptr @.str.769, ; 769
	ptr @.str.770, ; 770
	ptr @.str.771, ; 771
	ptr @.str.772, ; 772
	ptr @.str.773, ; 773
	ptr @.str.774, ; 774
	ptr @.str.775, ; 775
	ptr @.str.776, ; 776
	ptr @.str.777, ; 777
	ptr @.str.778, ; 778
	ptr @.str.779, ; 779
	ptr @.str.780, ; 780
	ptr @.str.781, ; 781
	ptr @.str.782, ; 782
	ptr @.str.783, ; 783
	ptr @.str.784, ; 784
	ptr @.str.785, ; 785
	ptr @.str.786, ; 786
	ptr @.str.787, ; 787
	ptr @.str.788, ; 788
	ptr @.str.789, ; 789
	ptr @.str.790, ; 790
	ptr @.str.791, ; 791
	ptr @.str.792, ; 792
	ptr @.str.793, ; 793
	ptr @.str.794, ; 794
	ptr @.str.795, ; 795
	ptr @.str.796, ; 796
	ptr @.str.797, ; 797
	ptr @.str.798, ; 798
	ptr @.str.799, ; 799
	ptr @.str.800, ; 800
	ptr @.str.801, ; 801
	ptr @.str.802, ; 802
	ptr @.str.803, ; 803
	ptr @.str.804, ; 804
	ptr @.str.805, ; 805
	ptr @.str.806, ; 806
	ptr @.str.807, ; 807
	ptr @.str.808, ; 808
	ptr @.str.809, ; 809
	ptr @.str.810, ; 810
	ptr @.str.811, ; 811
	ptr @.str.812, ; 812
	ptr @.str.813, ; 813
	ptr @.str.814, ; 814
	ptr @.str.815, ; 815
	ptr @.str.816, ; 816
	ptr @.str.817, ; 817
	ptr @.str.818, ; 818
	ptr @.str.819, ; 819
	ptr @.str.820, ; 820
	ptr @.str.821, ; 821
	ptr @.str.822, ; 822
	ptr @.str.823, ; 823
	ptr @.str.824, ; 824
	ptr @.str.825, ; 825
	ptr @.str.826, ; 826
	ptr @.str.827, ; 827
	ptr @.str.828, ; 828
	ptr @.str.829, ; 829
	ptr @.str.830, ; 830
	ptr @.str.831, ; 831
	ptr @.str.832, ; 832
	ptr @.str.833, ; 833
	ptr @.str.834, ; 834
	ptr @.str.835, ; 835
	ptr @.str.836, ; 836
	ptr @.str.837, ; 837
	ptr @.str.838, ; 838
	ptr @.str.839, ; 839
	ptr @.str.840, ; 840
	ptr @.str.841, ; 841
	ptr @.str.842, ; 842
	ptr @.str.843, ; 843
	ptr @.str.844, ; 844
	ptr @.str.845, ; 845
	ptr @.str.846, ; 846
	ptr @.str.847, ; 847
	ptr @.str.848, ; 848
	ptr @.str.849, ; 849
	ptr @.str.850, ; 850
	ptr @.str.851, ; 851
	ptr @.str.852, ; 852
	ptr @.str.853, ; 853
	ptr @.str.854, ; 854
	ptr @.str.855, ; 855
	ptr @.str.856, ; 856
	ptr @.str.857, ; 857
	ptr @.str.858, ; 858
	ptr @.str.859, ; 859
	ptr @.str.860, ; 860
	ptr @.str.861, ; 861
	ptr @.str.862, ; 862
	ptr @.str.863, ; 863
	ptr @.str.864, ; 864
	ptr @.str.865, ; 865
	ptr @.str.866, ; 866
	ptr @.str.867, ; 867
	ptr @.str.868, ; 868
	ptr @.str.869, ; 869
	ptr @.str.870, ; 870
	ptr @.str.871, ; 871
	ptr @.str.872, ; 872
	ptr @.str.873, ; 873
	ptr @.str.874, ; 874
	ptr @.str.875, ; 875
	ptr @.str.876, ; 876
	ptr @.str.877, ; 877
	ptr @.str.878, ; 878
	ptr @.str.879, ; 879
	ptr @.str.880, ; 880
	ptr @.str.881, ; 881
	ptr @.str.882, ; 882
	ptr @.str.883, ; 883
	ptr @.str.884, ; 884
	ptr @.str.885, ; 885
	ptr @.str.886, ; 886
	ptr @.str.887, ; 887
	ptr @.str.888, ; 888
	ptr @.str.889, ; 889
	ptr @.str.890, ; 890
	ptr @.str.891, ; 891
	ptr @.str.892, ; 892
	ptr @.str.893, ; 893
	ptr @.str.894, ; 894
	ptr @.str.895, ; 895
	ptr @.str.896, ; 896
	ptr @.str.897, ; 897
	ptr @.str.898, ; 898
	ptr @.str.899, ; 899
	ptr @.str.900, ; 900
	ptr @.str.901, ; 901
	ptr @.str.902, ; 902
	ptr @.str.903, ; 903
	ptr @.str.904, ; 904
	ptr @.str.905, ; 905
	ptr @.str.906, ; 906
	ptr @.str.907, ; 907
	ptr @.str.908, ; 908
	ptr @.str.909, ; 909
	ptr @.str.910, ; 910
	ptr @.str.911, ; 911
	ptr @.str.912, ; 912
	ptr @.str.913, ; 913
	ptr @.str.914, ; 914
	ptr @.str.915, ; 915
	ptr @.str.916, ; 916
	ptr @.str.917, ; 917
	ptr @.str.918, ; 918
	ptr @.str.919, ; 919
	ptr @.str.920, ; 920
	ptr @.str.921, ; 921
	ptr @.str.922, ; 922
	ptr @.str.923, ; 923
	ptr @.str.924, ; 924
	ptr @.str.925, ; 925
	ptr @.str.926, ; 926
	ptr @.str.927, ; 927
	ptr @.str.928, ; 928
	ptr @.str.929, ; 929
	ptr @.str.930, ; 930
	ptr @.str.931, ; 931
	ptr @.str.932, ; 932
	ptr @.str.933, ; 933
	ptr @.str.934, ; 934
	ptr @.str.935, ; 935
	ptr @.str.936, ; 936
	ptr @.str.937, ; 937
	ptr @.str.938, ; 938
	ptr @.str.939, ; 939
	ptr @.str.940, ; 940
	ptr @.str.941, ; 941
	ptr @.str.942, ; 942
	ptr @.str.943, ; 943
	ptr @.str.944, ; 944
	ptr @.str.945, ; 945
	ptr @.str.946, ; 946
	ptr @.str.947, ; 947
	ptr @.str.948, ; 948
	ptr @.str.949, ; 949
	ptr @.str.950, ; 950
	ptr @.str.951, ; 951
	ptr @.str.952, ; 952
	ptr @.str.953, ; 953
	ptr @.str.954, ; 954
	ptr @.str.955, ; 955
	ptr @.str.956, ; 956
	ptr @.str.957, ; 957
	ptr @.str.958, ; 958
	ptr @.str.959, ; 959
	ptr @.str.960, ; 960
	ptr @.str.961, ; 961
	ptr @.str.962, ; 962
	ptr @.str.963, ; 963
	ptr @.str.964, ; 964
	ptr @.str.965, ; 965
	ptr @.str.966, ; 966
	ptr @.str.967, ; 967
	ptr @.str.968, ; 968
	ptr @.str.969, ; 969
	ptr @.str.970, ; 970
	ptr @.str.971, ; 971
	ptr @.str.972, ; 972
	ptr @.str.973, ; 973
	ptr @.str.974, ; 974
	ptr @.str.975, ; 975
	ptr @.str.976, ; 976
	ptr @.str.977, ; 977
	ptr @.str.978, ; 978
	ptr @.str.979, ; 979
	ptr @.str.980, ; 980
	ptr @.str.981, ; 981
	ptr @.str.982, ; 982
	ptr @.str.983, ; 983
	ptr @.str.984, ; 984
	ptr @.str.985, ; 985
	ptr @.str.986, ; 986
	ptr @.str.987, ; 987
	ptr @.str.988, ; 988
	ptr @.str.989, ; 989
	ptr @.str.990, ; 990
	ptr @.str.991, ; 991
	ptr @.str.992, ; 992
	ptr @.str.993, ; 993
	ptr @.str.994, ; 994
	ptr @.str.995, ; 995
	ptr @.str.996, ; 996
	ptr @.str.997, ; 997
	ptr @.str.998, ; 998
	ptr @.str.999, ; 999
	ptr @.str.1000, ; 1000
	ptr @.str.1001, ; 1001
	ptr @.str.1002, ; 1002
	ptr @.str.1003, ; 1003
	ptr @.str.1004, ; 1004
	ptr @.str.1005, ; 1005
	ptr @.str.1006, ; 1006
	ptr @.str.1007, ; 1007
	ptr @.str.1008, ; 1008
	ptr @.str.1009, ; 1009
	ptr @.str.1010, ; 1010
	ptr @.str.1011, ; 1011
	ptr @.str.1012, ; 1012
	ptr @.str.1013, ; 1013
	ptr @.str.1014, ; 1014
	ptr @.str.1015, ; 1015
	ptr @.str.1016, ; 1016
	ptr @.str.1017, ; 1017
	ptr @.str.1018, ; 1018
	ptr @.str.1019, ; 1019
	ptr @.str.1020, ; 1020
	ptr @.str.1021, ; 1021
	ptr @.str.1022, ; 1022
	ptr @.str.1023, ; 1023
	ptr @.str.1024, ; 1024
	ptr @.str.1025, ; 1025
	ptr @.str.1026, ; 1026
	ptr @.str.1027, ; 1027
	ptr @.str.1028, ; 1028
	ptr @.str.1029, ; 1029
	ptr @.str.1030, ; 1030
	ptr @.str.1031, ; 1031
	ptr @.str.1032, ; 1032
	ptr @.str.1033, ; 1033
	ptr @.str.1034, ; 1034
	ptr @.str.1035, ; 1035
	ptr @.str.1036, ; 1036
	ptr @.str.1037, ; 1037
	ptr @.str.1038, ; 1038
	ptr @.str.1039, ; 1039
	ptr @.str.1040, ; 1040
	ptr @.str.1041, ; 1041
	ptr @.str.1042, ; 1042
	ptr @.str.1043, ; 1043
	ptr @.str.1044, ; 1044
	ptr @.str.1045, ; 1045
	ptr @.str.1046, ; 1046
	ptr @.str.1047, ; 1047
	ptr @.str.1048, ; 1048
	ptr @.str.1049, ; 1049
	ptr @.str.1050, ; 1050
	ptr @.str.1051, ; 1051
	ptr @.str.1052, ; 1052
	ptr @.str.1053, ; 1053
	ptr @.str.1054, ; 1054
	ptr @.str.1055, ; 1055
	ptr @.str.1056, ; 1056
	ptr @.str.1057, ; 1057
	ptr @.str.1058, ; 1058
	ptr @.str.1059, ; 1059
	ptr @.str.1060, ; 1060
	ptr @.str.1061, ; 1061
	ptr @.str.1062, ; 1062
	ptr @.str.1063, ; 1063
	ptr @.str.1064, ; 1064
	ptr @.str.1065, ; 1065
	ptr @.str.1066, ; 1066
	ptr @.str.1067, ; 1067
	ptr @.str.1068, ; 1068
	ptr @.str.1069, ; 1069
	ptr @.str.1070, ; 1070
	ptr @.str.1071, ; 1071
	ptr @.str.1072, ; 1072
	ptr @.str.1073, ; 1073
	ptr @.str.1074, ; 1074
	ptr @.str.1075, ; 1075
	ptr @.str.1076, ; 1076
	ptr @.str.1077, ; 1077
	ptr @.str.1078, ; 1078
	ptr @.str.1079, ; 1079
	ptr @.str.1080, ; 1080
	ptr @.str.1081, ; 1081
	ptr @.str.1082, ; 1082
	ptr @.str.1083, ; 1083
	ptr @.str.1084, ; 1084
	ptr @.str.1085, ; 1085
	ptr @.str.1086, ; 1086
	ptr @.str.1087, ; 1087
	ptr @.str.1088, ; 1088
	ptr @.str.1089, ; 1089
	ptr @.str.1090, ; 1090
	ptr @.str.1091, ; 1091
	ptr @.str.1092, ; 1092
	ptr @.str.1093, ; 1093
	ptr @.str.1094, ; 1094
	ptr @.str.1095, ; 1095
	ptr @.str.1096, ; 1096
	ptr @.str.1097, ; 1097
	ptr @.str.1098, ; 1098
	ptr @.str.1099, ; 1099
	ptr @.str.1100, ; 1100
	ptr @.str.1101, ; 1101
	ptr @.str.1102, ; 1102
	ptr @.str.1103, ; 1103
	ptr @.str.1104, ; 1104
	ptr @.str.1105, ; 1105
	ptr @.str.1106, ; 1106
	ptr @.str.1107, ; 1107
	ptr @.str.1108, ; 1108
	ptr @.str.1109, ; 1109
	ptr @.str.1110, ; 1110
	ptr @.str.1111, ; 1111
	ptr @.str.1112, ; 1112
	ptr @.str.1113, ; 1113
	ptr @.str.1114, ; 1114
	ptr @.str.1115, ; 1115
	ptr @.str.1116, ; 1116
	ptr @.str.1117, ; 1117
	ptr @.str.1118, ; 1118
	ptr @.str.1119, ; 1119
	ptr @.str.1120, ; 1120
	ptr @.str.1121, ; 1121
	ptr @.str.1122, ; 1122
	ptr @.str.1123, ; 1123
	ptr @.str.1124, ; 1124
	ptr @.str.1125, ; 1125
	ptr @.str.1126, ; 1126
	ptr @.str.1127, ; 1127
	ptr @.str.1128, ; 1128
	ptr @.str.1129, ; 1129
	ptr @.str.1130, ; 1130
	ptr @.str.1131, ; 1131
	ptr @.str.1132, ; 1132
	ptr @.str.1133, ; 1133
	ptr @.str.1134, ; 1134
	ptr @.str.1135, ; 1135
	ptr @.str.1136, ; 1136
	ptr @.str.1137, ; 1137
	ptr @.str.1138, ; 1138
	ptr @.str.1139, ; 1139
	ptr @.str.1140, ; 1140
	ptr @.str.1141, ; 1141
	ptr @.str.1142, ; 1142
	ptr @.str.1143, ; 1143
	ptr @.str.1144, ; 1144
	ptr @.str.1145, ; 1145
	ptr @.str.1146, ; 1146
	ptr @.str.1147, ; 1147
	ptr @.str.1148, ; 1148
	ptr @.str.1149, ; 1149
	ptr @.str.1150, ; 1150
	ptr @.str.1151, ; 1151
	ptr @.str.1152, ; 1152
	ptr @.str.1153, ; 1153
	ptr @.str.1154, ; 1154
	ptr @.str.1155, ; 1155
	ptr @.str.1156, ; 1156
	ptr @.str.1157, ; 1157
	ptr @.str.1158, ; 1158
	ptr @.str.1159, ; 1159
	ptr @.str.1160, ; 1160
	ptr @.str.1161, ; 1161
	ptr @.str.1162, ; 1162
	ptr @.str.1163, ; 1163
	ptr @.str.1164, ; 1164
	ptr @.str.1165, ; 1165
	ptr @.str.1166, ; 1166
	ptr @.str.1167, ; 1167
	ptr @.str.1168, ; 1168
	ptr @.str.1169, ; 1169
	ptr @.str.1170, ; 1170
	ptr @.str.1171, ; 1171
	ptr @.str.1172, ; 1172
	ptr @.str.1173, ; 1173
	ptr @.str.1174, ; 1174
	ptr @.str.1175, ; 1175
	ptr @.str.1176, ; 1176
	ptr @.str.1177, ; 1177
	ptr @.str.1178, ; 1178
	ptr @.str.1179, ; 1179
	ptr @.str.1180, ; 1180
	ptr @.str.1181, ; 1181
	ptr @.str.1182, ; 1182
	ptr @.str.1183, ; 1183
	ptr @.str.1184, ; 1184
	ptr @.str.1185, ; 1185
	ptr @.str.1186, ; 1186
	ptr @.str.1187, ; 1187
	ptr @.str.1188, ; 1188
	ptr @.str.1189, ; 1189
	ptr @.str.1190, ; 1190
	ptr @.str.1191, ; 1191
	ptr @.str.1192, ; 1192
	ptr @.str.1193, ; 1193
	ptr @.str.1194, ; 1194
	ptr @.str.1195, ; 1195
	ptr @.str.1196, ; 1196
	ptr @.str.1197, ; 1197
	ptr @.str.1198, ; 1198
	ptr @.str.1199, ; 1199
	ptr @.str.1200, ; 1200
	ptr @.str.1201, ; 1201
	ptr @.str.1202, ; 1202
	ptr @.str.1203, ; 1203
	ptr @.str.1204, ; 1204
	ptr @.str.1205, ; 1205
	ptr @.str.1206, ; 1206
	ptr @.str.1207, ; 1207
	ptr @.str.1208, ; 1208
	ptr @.str.1209, ; 1209
	ptr @.str.1210, ; 1210
	ptr @.str.1211, ; 1211
	ptr @.str.1212, ; 1212
	ptr @.str.1213, ; 1213
	ptr @.str.1214, ; 1214
	ptr @.str.1215, ; 1215
	ptr @.str.1216, ; 1216
	ptr @.str.1217, ; 1217
	ptr @.str.1218, ; 1218
	ptr @.str.1219, ; 1219
	ptr @.str.1220, ; 1220
	ptr @.str.1221, ; 1221
	ptr @.str.1222, ; 1222
	ptr @.str.1223, ; 1223
	ptr @.str.1224, ; 1224
	ptr @.str.1225, ; 1225
	ptr @.str.1226, ; 1226
	ptr @.str.1227, ; 1227
	ptr @.str.1228, ; 1228
	ptr @.str.1229, ; 1229
	ptr @.str.1230, ; 1230
	ptr @.str.1231, ; 1231
	ptr @.str.1232, ; 1232
	ptr @.str.1233, ; 1233
	ptr @.str.1234, ; 1234
	ptr @.str.1235, ; 1235
	ptr @.str.1236, ; 1236
	ptr @.str.1237, ; 1237
	ptr @.str.1238, ; 1238
	ptr @.str.1239, ; 1239
	ptr @.str.1240, ; 1240
	ptr @.str.1241, ; 1241
	ptr @.str.1242, ; 1242
	ptr @.str.1243, ; 1243
	ptr @.str.1244, ; 1244
	ptr @.str.1245, ; 1245
	ptr @.str.1246, ; 1246
	ptr @.str.1247 ; 1247
], align 4

; Strings
@.str.0 = private unnamed_addr constant [50 x i8] c"com/google/android/material/shape/CornerTreatment\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"com/google/android/material/shape/EdgeTreatment\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"com/google/android/material/shape/CornerSize\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"com/google/android/material/shape/MaterialShapeDrawable\00", align 1
@.str.4 = private unnamed_addr constant [83 x i8] c"com/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState\00", align 1
@.str.5 = private unnamed_addr constant [55 x i8] c"com/google/android/material/shape/ShapeAppearanceModel\00", align 1
@.str.6 = private unnamed_addr constant [63 x i8] c"com/google/android/material/shape/ShapeAppearanceModel$Builder\00", align 1
@.str.7 = private unnamed_addr constant [79 x i8] c"com/google/android/material/shape/ShapeAppearanceModel$CornerSizeUnaryOperator\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"com/google/android/material/shape/ShapePath\00", align 1
@.str.9 = private unnamed_addr constant [49 x i8] c"com/google/android/material/shape/ShapePathModel\00", align 1
@.str.10 = private unnamed_addr constant [57 x i8] c"com/google/android/material/imageview/ShapeableImageView\00", align 1
@.str.11 = private unnamed_addr constant [63 x i8] c"com/google/android/material/elevation/ElevationOverlayProvider\00", align 1
@.str.12 = private unnamed_addr constant [54 x i8] c"com/google/android/material/checkbox/MaterialCheckBox\00", align 1
@.str.13 = private unnamed_addr constant [84 x i8] c"com/google/android/material/checkbox/MaterialCheckBox$OnCheckedStateChangedListener\00", align 1
@.str.14 = private unnamed_addr constant [100 x i8] c"mono/com/google/android/material/checkbox/MaterialCheckBox_OnCheckedStateChangedListenerImplementor\00", align 1
@.str.15 = private unnamed_addr constant [77 x i8] c"com/google/android/material/checkbox/MaterialCheckBox$OnErrorChangedListener\00", align 1
@.str.16 = private unnamed_addr constant [93 x i8] c"mono/com/google/android/material/checkbox/MaterialCheckBox_OnErrorChangedListenerImplementor\00", align 1
@.str.17 = private unnamed_addr constant [50 x i8] c"com/google/android/material/button/MaterialButton\00", align 1
@.str.18 = private unnamed_addr constant [74 x i8] c"com/google/android/material/button/MaterialButton$OnCheckedChangeListener\00", align 1
@.str.19 = private unnamed_addr constant [90 x i8] c"mono/com/google/android/material/button/MaterialButton_OnCheckedChangeListenerImplementor\00", align 1
@.str.20 = private unnamed_addr constant [60 x i8] c"com/google/android/material/bottomsheet/BottomSheetBehavior\00", align 1
@.str.21 = private unnamed_addr constant [80 x i8] c"com/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback\00", align 1
@.str.22 = private unnamed_addr constant [58 x i8] c"com/google/android/material/bottomsheet/BottomSheetDialog\00", align 1
@.str.23 = private unnamed_addr constant [58 x i8] c"com/google/android/material/behavior/SwipeDismissBehavior\00", align 1
@.str.24 = private unnamed_addr constant [76 x i8] c"com/google/android/material/behavior/SwipeDismissBehavior$OnDismissListener\00", align 1
@.str.25 = private unnamed_addr constant [92 x i8] c"mono/com/google/android/material/behavior/SwipeDismissBehavior_OnDismissListenerImplementor\00", align 1
@.str.26 = private unnamed_addr constant [48 x i8] c"com/google/android/material/badge/BadgeDrawable\00", align 1
@.str.27 = private unnamed_addr constant [57 x i8] c"com/google/android/material/navigation/NavigationBarView\00", align 1
@.str.28 = private unnamed_addr constant [82 x i8] c"com/google/android/material/navigation/NavigationBarView$OnItemReselectedListener\00", align 1
@.str.29 = private unnamed_addr constant [98 x i8] c"mono/com/google/android/material/navigation/NavigationBarView_OnItemReselectedListenerImplementor\00", align 1
@.str.30 = private unnamed_addr constant [80 x i8] c"com/google/android/material/navigation/NavigationBarView$OnItemSelectedListener\00", align 1
@.str.31 = private unnamed_addr constant [96 x i8] c"mono/com/google/android/material/navigation/NavigationBarView_OnItemSelectedListenerImplementor\00", align 1
@.str.32 = private unnamed_addr constant [61 x i8] c"com/google/android/material/navigation/NavigationBarItemView\00", align 1
@.str.33 = private unnamed_addr constant [61 x i8] c"com/google/android/material/navigation/NavigationBarMenuView\00", align 1
@.str.34 = private unnamed_addr constant [62 x i8] c"com/google/android/material/navigation/NavigationBarPresenter\00", align 1
@.str.35 = private unnamed_addr constant [54 x i8] c"com/google/android/material/navigation/NavigationView\00", align 1
@.str.36 = private unnamed_addr constant [87 x i8] c"com/google/android/material/navigation/NavigationView$OnNavigationItemSelectedListener\00", align 1
@.str.37 = private unnamed_addr constant [103 x i8] c"mono/com/google/android/material/navigation/NavigationView_OnNavigationItemSelectedListenerImplementor\00", align 1
@.str.38 = private unnamed_addr constant [43 x i8] c"com/google/android/material/tabs/TabLayout\00", align 1
@.str.39 = private unnamed_addr constant [51 x i8] c"com/google/android/material/tabs/TabLayout$TabView\00", align 1
@.str.40 = private unnamed_addr constant [69 x i8] c"com/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener\00", align 1
@.str.41 = private unnamed_addr constant [85 x i8] c"mono/com/google/android/material/tabs/TabLayout_BaseOnTabSelectedListenerImplementor\00", align 1
@.str.42 = private unnamed_addr constant [65 x i8] c"com/google/android/material/tabs/TabLayout$OnTabSelectedListener\00", align 1
@.str.43 = private unnamed_addr constant [47 x i8] c"com/google/android/material/tabs/TabLayout$Tab\00", align 1
@.str.44 = private unnamed_addr constant [51 x i8] c"com/google/android/material/tabs/TabLayoutMediator\00", align 1
@.str.45 = private unnamed_addr constant [76 x i8] c"com/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy\00", align 1
@.str.46 = private unnamed_addr constant [46 x i8] c"com/google/android/material/snackbar/Snackbar\00", align 1
@.str.47 = private unnamed_addr constant [77 x i8] c"com/google/android/material/snackbar/Snackbar_SnackbarActionClickImplementor\00", align 1
@.str.48 = private unnamed_addr constant [55 x i8] c"com/google/android/material/snackbar/Snackbar$Callback\00", align 1
@.str.49 = private unnamed_addr constant [60 x i8] c"com/google/android/material/snackbar/BaseTransientBottomBar\00", align 1
@.str.50 = private unnamed_addr constant [73 x i8] c"com/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback\00", align 1
@.str.51 = private unnamed_addr constant [69 x i8] c"com/google/android/material/snackbar/BaseTransientBottomBar$Behavior\00", align 1
@.str.52 = private unnamed_addr constant [57 x i8] c"com/google/android/material/snackbar/ContentViewCallback\00", align 1
@.str.53 = private unnamed_addr constant [67 x i8] c"com/google/android/material/internal/StaticLayoutBuilderConfigurer\00", align 1
@.str.54 = private unnamed_addr constant [60 x i8] c"com/google/android/material/internal/ScrimInsetsFrameLayout\00", align 1
@.str.55 = private unnamed_addr constant [70 x i8] c"com/google/android/material/bottomnavigation/BottomNavigationItemView\00", align 1
@.str.56 = private unnamed_addr constant [70 x i8] c"com/google/android/material/bottomnavigation/BottomNavigationMenuView\00", align 1
@.str.57 = private unnamed_addr constant [66 x i8] c"com/google/android/material/bottomnavigation/BottomNavigationView\00", align 1
@.str.58 = private unnamed_addr constant [101 x i8] c"com/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemReselectedListener\00", align 1
@.str.59 = private unnamed_addr constant [99 x i8] c"com/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener\00", align 1
@.str.60 = private unnamed_addr constant [59 x i8] c"com/google/android/material/appbar/CollapsingToolbarLayout\00", align 1
@.str.61 = private unnamed_addr constant [89 x i8] c"com/google/android/material/appbar/CollapsingToolbarLayout$StaticLayoutBuilderConfigurer\00", align 1
@.str.62 = private unnamed_addr constant [48 x i8] c"com/google/android/material/appbar/AppBarLayout\00", align 1
@.str.63 = private unnamed_addr constant [61 x i8] c"com/google/android/material/appbar/AppBarLayout$BaseBehavior\00", align 1
@.str.64 = private unnamed_addr constant [78 x i8] c"com/google/android/material/appbar/AppBarLayout$BaseBehavior$BaseDragCallback\00", align 1
@.str.65 = private unnamed_addr constant [57 x i8] c"com/google/android/material/appbar/AppBarLayout$Behavior\00", align 1
@.str.66 = private unnamed_addr constant [66 x i8] c"com/google/android/material/appbar/AppBarLayout$ChildScrollEffect\00", align 1
@.str.67 = private unnamed_addr constant [61 x i8] c"com/google/android/material/appbar/AppBarLayout$LayoutParams\00", align 1
@.str.68 = private unnamed_addr constant [69 x i8] c"com/google/android/material/appbar/AppBarLayout$LiftOnScrollListener\00", align 1
@.str.69 = private unnamed_addr constant [85 x i8] c"mono/com/google/android/material/appbar/AppBarLayout_LiftOnScrollListenerImplementor\00", align 1
@.str.70 = private unnamed_addr constant [72 x i8] c"com/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener\00", align 1
@.str.71 = private unnamed_addr constant [88 x i8] c"mono/com/google/android/material/appbar/AppBarLayout_OnOffsetChangedListenerImplementor\00", align 1
@.str.72 = private unnamed_addr constant [70 x i8] c"com/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior\00", align 1
@.str.73 = private unnamed_addr constant [50 x i8] c"com/google/android/material/appbar/HeaderBehavior\00", align 1
@.str.74 = private unnamed_addr constant [63 x i8] c"com/google/android/material/appbar/HeaderScrollingViewBehavior\00", align 1
@.str.75 = private unnamed_addr constant [51 x i8] c"com/google/android/material/appbar/MaterialToolbar\00", align 1
@.str.76 = private unnamed_addr constant [54 x i8] c"com/google/android/material/appbar/ViewOffsetBehavior\00", align 1
@.str.77 = private unnamed_addr constant [28 x i8] c"androidx/lifecycle/Observer\00", align 1
@.str.78 = private unnamed_addr constant [28 x i8] c"androidx/lifecycle/LiveData\00", align 1
@.str.79 = private unnamed_addr constant [35 x i8] c"androidx/lifecycle/MutableLiveData\00", align 1
@.str.80 = private unnamed_addr constant [48 x i8] c"com/google/crypto/tink/shaded/protobuf/Internal\00", align 1
@.str.81 = private unnamed_addr constant [60 x i8] c"com/google/crypto/tink/shaded/protobuf/Internal$BooleanList\00", align 1
@.str.82 = private unnamed_addr constant [59 x i8] c"com/google/crypto/tink/shaded/protobuf/Internal$DoubleList\00", align 1
@.str.83 = private unnamed_addr constant [57 x i8] c"com/google/crypto/tink/shaded/protobuf/Internal$EnumLite\00", align 1
@.str.84 = private unnamed_addr constant [60 x i8] c"com/google/crypto/tink/shaded/protobuf/Internal$EnumLiteMap\00", align 1
@.str.85 = private unnamed_addr constant [58 x i8] c"com/google/crypto/tink/shaded/protobuf/Internal$FloatList\00", align 1
@.str.86 = private unnamed_addr constant [56 x i8] c"com/google/crypto/tink/shaded/protobuf/Internal$IntList\00", align 1
@.str.87 = private unnamed_addr constant [57 x i8] c"com/google/crypto/tink/shaded/protobuf/Internal$LongList\00", align 1
@.str.88 = private unnamed_addr constant [61 x i8] c"com/google/crypto/tink/shaded/protobuf/Internal$ProtobufList\00", align 1
@.str.89 = private unnamed_addr constant [59 x i8] c"com/google/crypto/tink/shaded/protobuf/AbstractMessageLite\00", align 1
@.str.90 = private unnamed_addr constant [50 x i8] c"com/google/crypto/tink/shaded/protobuf/ByteOutput\00", align 1
@.str.91 = private unnamed_addr constant [50 x i8] c"com/google/crypto/tink/shaded/protobuf/ByteString\00", align 1
@.str.92 = private unnamed_addr constant [57 x i8] c"com/google/crypto/tink/shaded/protobuf/ByteString$Output\00", align 1
@.str.93 = private unnamed_addr constant [56 x i8] c"com/google/crypto/tink/shaded/protobuf/CodedInputStream\00", align 1
@.str.94 = private unnamed_addr constant [57 x i8] c"com/google/crypto/tink/shaded/protobuf/CodedOutputStream\00", align 1
@.str.95 = private unnamed_addr constant [53 x i8] c"com/google/crypto/tink/shaded/protobuf/ExtensionLite\00", align 1
@.str.96 = private unnamed_addr constant [61 x i8] c"com/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite\00", align 1
@.str.97 = private unnamed_addr constant [60 x i8] c"com/google/crypto/tink/shaded/protobuf/GeneratedMessageLite\00", align 1
@.str.98 = private unnamed_addr constant [79 x i8] c"com/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$GeneratedExtension\00", align 1
@.str.99 = private unnamed_addr constant [75 x i8] c"com/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke\00", align 1
@.str.100 = private unnamed_addr constant [59 x i8] c"com/google/crypto/tink/shaded/protobuf/MessageLite$Builder\00", align 1
@.str.101 = private unnamed_addr constant [51 x i8] c"com/google/crypto/tink/shaded/protobuf/MessageLite\00", align 1
@.str.102 = private unnamed_addr constant [60 x i8] c"com/google/crypto/tink/shaded/protobuf/MessageLiteOrBuilder\00", align 1
@.str.103 = private unnamed_addr constant [70 x i8] c"com/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException\00", align 1
@.str.104 = private unnamed_addr constant [46 x i8] c"com/google/crypto/tink/shaded/protobuf/Parser\00", align 1
@.str.105 = private unnamed_addr constant [53 x i8] c"com/google/crypto/tink/shaded/protobuf/LazyFieldLite\00", align 1
@.str.106 = private unnamed_addr constant [59 x i8] c"com/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite\00", align 1
@.str.107 = private unnamed_addr constant [50 x i8] c"com/google/crypto/tink/shaded/protobuf/WireFormat\00", align 1
@.str.108 = private unnamed_addr constant [60 x i8] c"com/google/crypto/tink/shaded/protobuf/WireFormat$FieldType\00", align 1
@.str.109 = private unnamed_addr constant [59 x i8] c"com/google/crypto/tink/shaded/protobuf/WireFormat$JavaType\00", align 1
@.str.110 = private unnamed_addr constant [39 x i8] c"androidx/viewpager/widget/PagerAdapter\00", align 1
@.str.111 = private unnamed_addr constant [36 x i8] c"androidx/viewpager/widget/ViewPager\00", align 1
@.str.112 = private unnamed_addr constant [60 x i8] c"androidx/viewpager/widget/ViewPager$OnAdapterChangeListener\00", align 1
@.str.113 = private unnamed_addr constant [76 x i8] c"mono/androidx/viewpager/widget/ViewPager_OnAdapterChangeListenerImplementor\00", align 1
@.str.114 = private unnamed_addr constant [57 x i8] c"androidx/viewpager/widget/ViewPager$OnPageChangeListener\00", align 1
@.str.115 = private unnamed_addr constant [73 x i8] c"mono/androidx/viewpager/widget/ViewPager_OnPageChangeListenerImplementor\00", align 1
@.str.116 = private unnamed_addr constant [52 x i8] c"androidx/viewpager/widget/ViewPager$PageTransformer\00", align 1
@.str.117 = private unnamed_addr constant [29 x i8] c"kotlinx/coroutines/flow/Flow\00", align 1
@.str.118 = private unnamed_addr constant [38 x i8] c"kotlinx/coroutines/flow/FlowCollector\00", align 1
@.str.119 = private unnamed_addr constant [35 x i8] c"kotlinx/coroutines/flow/SharedFlow\00", align 1
@.str.120 = private unnamed_addr constant [34 x i8] c"kotlinx/coroutines/flow/StateFlow\00", align 1
@.str.121 = private unnamed_addr constant [16 x i8] c"kotlin/Function\00", align 1
@.str.122 = private unnamed_addr constant [26 x i8] c"kotlin/sequences/Sequence\00", align 1
@.str.123 = private unnamed_addr constant [45 x i8] c"kotlin/jvm/internal/DefaultConstructorMarker\00", align 1
@.str.124 = private unnamed_addr constant [31 x i8] c"kotlin/jvm/functions/Function0\00", align 1
@.str.125 = private unnamed_addr constant [31 x i8] c"kotlin/jvm/functions/Function1\00", align 1
@.str.126 = private unnamed_addr constant [31 x i8] c"kotlin/jvm/functions/Function2\00", align 1
@.str.127 = private unnamed_addr constant [31 x i8] c"kotlin/coroutines/Continuation\00", align 1
@.str.128 = private unnamed_addr constant [39 x i8] c"kotlin/coroutines/CoroutineContext$Key\00", align 1
@.str.129 = private unnamed_addr constant [35 x i8] c"kotlin/coroutines/CoroutineContext\00", align 1
@.str.130 = private unnamed_addr constant [58 x i8] c"crc640fd0ddb16fe433d4/TouchBehavior_AccessibilityListener\00", align 1
@.str.131 = private unnamed_addr constant [48 x i8] c"crc648fc34c62be8fbbff/Snackbar_SnackbarCallback\00", align 1
@.str.132 = private unnamed_addr constant [36 x i8] c"crc6477b0797571f03227/FrameAnalyzer\00", align 1
@.str.133 = private unnamed_addr constant [31 x i8] c"androidx/loader/content/Loader\00", align 1
@.str.134 = private unnamed_addr constant [54 x i8] c"androidx/loader/content/Loader$OnLoadCanceledListener\00", align 1
@.str.135 = private unnamed_addr constant [54 x i8] c"androidx/loader/content/Loader$OnLoadCompleteListener\00", align 1
@.str.136 = private unnamed_addr constant [34 x i8] c"androidx/loader/app/LoaderManager\00", align 1
@.str.137 = private unnamed_addr constant [50 x i8] c"androidx/loader/app/LoaderManager$LoaderCallbacks\00", align 1
@.str.138 = private unnamed_addr constant [42 x i8] c"androidx/drawerlayout/widget/DrawerLayout\00", align 1
@.str.139 = private unnamed_addr constant [57 x i8] c"androidx/drawerlayout/widget/DrawerLayout$DrawerListener\00", align 1
@.str.140 = private unnamed_addr constant [73 x i8] c"mono/androidx/drawerlayout/widget/DrawerLayout_DrawerListenerImplementor\00", align 1
@.str.141 = private unnamed_addr constant [55 x i8] c"androidx/drawerlayout/widget/DrawerLayout$LayoutParams\00", align 1
@.str.142 = private unnamed_addr constant [44 x i8] c"androidx/cursoradapter/widget/CursorAdapter\00", align 1
@.str.143 = private unnamed_addr constant [36 x i8] c"androidx/activity/ComponentActivity\00", align 1
@.str.144 = private unnamed_addr constant [34 x i8] c"androidx/activity/ComponentDialog\00", align 1
@.str.145 = private unnamed_addr constant [37 x i8] c"androidx/activity/FullyDrawnReporter\00", align 1
@.str.146 = private unnamed_addr constant [40 x i8] c"androidx/activity/OnBackPressedCallback\00", align 1
@.str.147 = private unnamed_addr constant [42 x i8] c"androidx/activity/OnBackPressedDispatcher\00", align 1
@.str.148 = private unnamed_addr constant [58 x i8] c"androidx/activity/contextaware/OnContextAvailableListener\00", align 1
@.str.149 = private unnamed_addr constant [74 x i8] c"mono/androidx/activity/contextaware/OnContextAvailableListenerImplementor\00", align 1
@.str.150 = private unnamed_addr constant [48 x i8] c"androidx/activity/result/ActivityResultLauncher\00", align 1
@.str.151 = private unnamed_addr constant [48 x i8] c"androidx/activity/result/ActivityResultRegistry\00", align 1
@.str.152 = private unnamed_addr constant [48 x i8] c"androidx/activity/result/ActivityResultCallback\00", align 1
@.str.153 = private unnamed_addr constant [57 x i8] c"androidx/activity/result/contract/ActivityResultContract\00", align 1
@.str.154 = private unnamed_addr constant [75 x i8] c"androidx/activity/result/contract/ActivityResultContract$SynchronousResult\00", align 1
@.str.155 = private unnamed_addr constant [29 x i8] c"androidx/lifecycle/Lifecycle\00", align 1
@.str.156 = private unnamed_addr constant [35 x i8] c"androidx/lifecycle/Lifecycle$Event\00", align 1
@.str.157 = private unnamed_addr constant [35 x i8] c"androidx/lifecycle/Lifecycle$State\00", align 1
@.str.158 = private unnamed_addr constant [37 x i8] c"androidx/lifecycle/LifecycleObserver\00", align 1
@.str.159 = private unnamed_addr constant [34 x i8] c"androidx/lifecycle/LifecycleOwner\00", align 1
@.str.160 = private unnamed_addr constant [57 x i8] c"androidx/appcompat/graphics/drawable/DrawerArrowDrawable\00", align 1
@.str.161 = private unnamed_addr constant [35 x i8] c"androidx/appcompat/app/AlertDialog\00", align 1
@.str.162 = private unnamed_addr constant [43 x i8] c"androidx/appcompat/app/AlertDialog$Builder\00", align 1
@.str.163 = private unnamed_addr constant [78 x i8] c"androidx/appcompat/app/AlertDialog_IDialogInterfaceOnClickListenerImplementor\00", align 1
@.str.164 = private unnamed_addr constant [79 x i8] c"androidx/appcompat/app/AlertDialog_IDialogInterfaceOnCancelListenerImplementor\00", align 1
@.str.165 = private unnamed_addr constant [89 x i8] c"androidx/appcompat/app/AlertDialog_IDialogInterfaceOnMultiChoiceClickListenerImplementor\00", align 1
@.str.166 = private unnamed_addr constant [33 x i8] c"androidx/appcompat/app/ActionBar\00", align 1
@.str.167 = private unnamed_addr constant [46 x i8] c"androidx/appcompat/app/ActionBar$LayoutParams\00", align 1
@.str.168 = private unnamed_addr constant [58 x i8] c"androidx/appcompat/app/ActionBar$OnMenuVisibilityListener\00", align 1
@.str.169 = private unnamed_addr constant [74 x i8] c"mono/androidx/appcompat/app/ActionBar_OnMenuVisibilityListenerImplementor\00", align 1
@.str.170 = private unnamed_addr constant [54 x i8] c"androidx/appcompat/app/ActionBar$OnNavigationListener\00", align 1
@.str.171 = private unnamed_addr constant [37 x i8] c"androidx/appcompat/app/ActionBar$Tab\00", align 1
@.str.172 = private unnamed_addr constant [45 x i8] c"androidx/appcompat/app/ActionBar$TabListener\00", align 1
@.str.173 = private unnamed_addr constant [45 x i8] c"androidx/appcompat/app/ActionBarDrawerToggle\00", align 1
@.str.174 = private unnamed_addr constant [54 x i8] c"androidx/appcompat/app/ActionBarDrawerToggle$Delegate\00", align 1
@.str.175 = private unnamed_addr constant [41 x i8] c"androidx/appcompat/app/AppCompatActivity\00", align 1
@.str.176 = private unnamed_addr constant [41 x i8] c"androidx/appcompat/app/AppCompatDelegate\00", align 1
@.str.177 = private unnamed_addr constant [39 x i8] c"androidx/appcompat/app/AppCompatDialog\00", align 1
@.str.178 = private unnamed_addr constant [41 x i8] c"androidx/appcompat/app/AppCompatCallback\00", align 1
@.str.179 = private unnamed_addr constant [34 x i8] c"androidx/appcompat/widget/Toolbar\00", align 1
@.str.180 = private unnamed_addr constant [67 x i8] c"androidx/appcompat/widget/Toolbar_NavigationOnClickEventDispatcher\00", align 1
@.str.181 = private unnamed_addr constant [47 x i8] c"androidx/appcompat/widget/Toolbar$LayoutParams\00", align 1
@.str.182 = private unnamed_addr constant [58 x i8] c"androidx/appcompat/widget/Toolbar$OnMenuItemClickListener\00", align 1
@.str.183 = private unnamed_addr constant [74 x i8] c"mono/androidx/appcompat/widget/Toolbar_OnMenuItemClickListenerImplementor\00", align 1
@.str.184 = private unnamed_addr constant [56 x i8] c"androidx/appcompat/widget/AppCompatAutoCompleteTextView\00", align 1
@.str.185 = private unnamed_addr constant [42 x i8] c"androidx/appcompat/widget/AppCompatButton\00", align 1
@.str.186 = private unnamed_addr constant [44 x i8] c"androidx/appcompat/widget/AppCompatCheckBox\00", align 1
@.str.187 = private unnamed_addr constant [44 x i8] c"androidx/appcompat/widget/AppCompatEditText\00", align 1
@.str.188 = private unnamed_addr constant [47 x i8] c"androidx/appcompat/widget/AppCompatImageButton\00", align 1
@.str.189 = private unnamed_addr constant [45 x i8] c"androidx/appcompat/widget/AppCompatImageView\00", align 1
@.str.190 = private unnamed_addr constant [47 x i8] c"androidx/appcompat/widget/AppCompatRadioButton\00", align 1
@.str.191 = private unnamed_addr constant [44 x i8] c"androidx/appcompat/widget/AppCompatTextView\00", align 1
@.str.192 = private unnamed_addr constant [39 x i8] c"androidx/appcompat/widget/DecorToolbar\00", align 1
@.str.193 = private unnamed_addr constant [45 x i8] c"androidx/appcompat/widget/LinearLayoutCompat\00", align 1
@.str.194 = private unnamed_addr constant [58 x i8] c"androidx/appcompat/widget/LinearLayoutCompat$LayoutParams\00", align 1
@.str.195 = private unnamed_addr constant [52 x i8] c"androidx/appcompat/widget/ScrollingTabContainerView\00", align 1
@.str.196 = private unnamed_addr constant [75 x i8] c"androidx/appcompat/widget/ScrollingTabContainerView$VisibilityAnimListener\00", align 1
@.str.197 = private unnamed_addr constant [37 x i8] c"androidx/appcompat/widget/SearchView\00", align 1
@.str.198 = private unnamed_addr constant [53 x i8] c"androidx/appcompat/widget/SearchView$OnCloseListener\00", align 1
@.str.199 = private unnamed_addr constant [69 x i8] c"mono/androidx/appcompat/widget/SearchView_OnCloseListenerImplementor\00", align 1
@.str.200 = private unnamed_addr constant [57 x i8] c"androidx/appcompat/widget/SearchView$OnQueryTextListener\00", align 1
@.str.201 = private unnamed_addr constant [73 x i8] c"mono/androidx/appcompat/widget/SearchView_OnQueryTextListenerImplementor\00", align 1
@.str.202 = private unnamed_addr constant [58 x i8] c"androidx/appcompat/widget/SearchView$OnSuggestionListener\00", align 1
@.str.203 = private unnamed_addr constant [74 x i8] c"mono/androidx/appcompat/widget/SearchView_OnSuggestionListenerImplementor\00", align 1
@.str.204 = private unnamed_addr constant [39 x i8] c"androidx/appcompat/widget/SwitchCompat\00", align 1
@.str.205 = private unnamed_addr constant [41 x i8] c"androidx/appcompat/widget/TintTypedArray\00", align 1
@.str.206 = private unnamed_addr constant [40 x i8] c"androidx/appcompat/widget/TooltipCompat\00", align 1
@.str.207 = private unnamed_addr constant [35 x i8] c"androidx/appcompat/view/ActionMode\00", align 1
@.str.208 = private unnamed_addr constant [44 x i8] c"androidx/appcompat/view/ActionMode$Callback\00", align 1
@.str.209 = private unnamed_addr constant [41 x i8] c"androidx/appcompat/view/menu/MenuBuilder\00", align 1
@.str.210 = private unnamed_addr constant [50 x i8] c"androidx/appcompat/view/menu/MenuBuilder$Callback\00", align 1
@.str.211 = private unnamed_addr constant [52 x i8] c"androidx/appcompat/view/menu/MenuPresenter$Callback\00", align 1
@.str.212 = private unnamed_addr constant [43 x i8] c"androidx/appcompat/view/menu/MenuPresenter\00", align 1
@.str.213 = private unnamed_addr constant [38 x i8] c"androidx/appcompat/view/menu/MenuView\00", align 1
@.str.214 = private unnamed_addr constant [42 x i8] c"androidx/appcompat/view/menu/MenuItemImpl\00", align 1
@.str.215 = private unnamed_addr constant [44 x i8] c"androidx/appcompat/view/menu/SubMenuBuilder\00", align 1
@.str.216 = private unnamed_addr constant [43 x i8] c"crc643f2b18b2570eaa5a/PlatformGraphicsView\00", align 1
@.str.217 = private unnamed_addr constant [48 x i8] c"androidx/camera/lifecycle/ProcessCameraProvider\00", align 1
@.str.218 = private unnamed_addr constant [75 x i8] c"crc64d6358e7bf64fbac4/SpeechToTextImplementation_SpeechRecognitionListener\00", align 1
@.str.219 = private unnamed_addr constant [38 x i8] c"crc64159f3caeb1269279/MauiDrawingView\00", align 1
@.str.220 = private unnamed_addr constant [32 x i8] c"crc64159f3caeb1269279/MauiPopup\00", align 1
@.str.221 = private unnamed_addr constant [44 x i8] c"crc64159f3caeb1269279/MauiSemanticOrderView\00", align 1
@.str.222 = private unnamed_addr constant [28 x i8] c"androidx/core/util/Consumer\00", align 1
@.str.223 = private unnamed_addr constant [29 x i8] c"androidx/core/util/Predicate\00", align 1
@.str.224 = private unnamed_addr constant [24 x i8] c"androidx/core/util/Pair\00", align 1
@.str.225 = private unnamed_addr constant [34 x i8] c"androidx/core/os/LocaleListCompat\00", align 1
@.str.226 = private unnamed_addr constant [44 x i8] c"androidx/core/internal/view/SupportMenuItem\00", align 1
@.str.227 = private unnamed_addr constant [30 x i8] c"androidx/core/graphics/Insets\00", align 1
@.str.228 = private unnamed_addr constant [47 x i8] c"androidx/core/graphics/drawable/DrawableCompat\00", align 1
@.str.229 = private unnamed_addr constant [36 x i8] c"androidx/core/content/ContextCompat\00", align 1
@.str.230 = private unnamed_addr constant [36 x i8] c"androidx/core/content/LocusIdCompat\00", align 1
@.str.231 = private unnamed_addr constant [40 x i8] c"androidx/core/content/PermissionChecker\00", align 1
@.str.232 = private unnamed_addr constant [42 x i8] c"androidx/core/content/res/ResourcesCompat\00", align 1
@.str.233 = private unnamed_addr constant [55 x i8] c"androidx/core/content/res/ResourcesCompat$FontCallback\00", align 1
@.str.234 = private unnamed_addr constant [43 x i8] c"androidx/core/content/pm/PackageInfoCompat\00", align 1
@.str.235 = private unnamed_addr constant [33 x i8] c"androidx/core/app/ActivityCompat\00", align 1
@.str.236 = private unnamed_addr constant [58 x i8] c"androidx/core/app/ActivityCompat$PermissionCompatDelegate\00", align 1
@.str.237 = private unnamed_addr constant [40 x i8] c"androidx/core/app/ActivityOptionsCompat\00", align 1
@.str.238 = private unnamed_addr constant [36 x i8] c"androidx/core/app/ComponentActivity\00", align 1
@.str.239 = private unnamed_addr constant [46 x i8] c"androidx/core/app/ComponentActivity$ExtraData\00", align 1
@.str.240 = private unnamed_addr constant [40 x i8] c"androidx/core/app/SharedElementCallback\00", align 1
@.str.241 = private unnamed_addr constant [70 x i8] c"androidx/core/app/SharedElementCallback$OnSharedElementsReadyListener\00", align 1
@.str.242 = private unnamed_addr constant [35 x i8] c"androidx/core/app/TaskStackBuilder\00", align 1
@.str.243 = private unnamed_addr constant [38 x i8] c"androidx/core/widget/NestedScrollView\00", align 1
@.str.244 = private unnamed_addr constant [61 x i8] c"androidx/core/widget/NestedScrollView$OnScrollChangeListener\00", align 1
@.str.245 = private unnamed_addr constant [77 x i8] c"mono/androidx/core/widget/NestedScrollView_OnScrollChangeListenerImplementor\00", align 1
@.str.246 = private unnamed_addr constant [42 x i8] c"androidx/core/widget/CompoundButtonCompat\00", align 1
@.str.247 = private unnamed_addr constant [36 x i8] c"androidx/core/widget/TextViewCompat\00", align 1
@.str.248 = private unnamed_addr constant [47 x i8] c"androidx/core/view/AccessibilityDelegateCompat\00", align 1
@.str.249 = private unnamed_addr constant [34 x i8] c"androidx/core/view/ActionProvider\00", align 1
@.str.250 = private unnamed_addr constant [58 x i8] c"androidx/core/view/ActionProvider$SubUiVisibilityListener\00", align 1
@.str.251 = private unnamed_addr constant [74 x i8] c"mono/androidx/core/view/ActionProvider_SubUiVisibilityListenerImplementor\00", align 1
@.str.252 = private unnamed_addr constant [53 x i8] c"androidx/core/view/ActionProvider$VisibilityListener\00", align 1
@.str.253 = private unnamed_addr constant [69 x i8] c"mono/androidx/core/view/ActionProvider_VisibilityListenerImplementor\00", align 1
@.str.254 = private unnamed_addr constant [37 x i8] c"androidx/core/view/ContentInfoCompat\00", align 1
@.str.255 = private unnamed_addr constant [39 x i8] c"androidx/core/view/DisplayCutoutCompat\00", align 1
@.str.256 = private unnamed_addr constant [48 x i8] c"androidx/core/view/DragAndDropPermissionsCompat\00", align 1
@.str.257 = private unnamed_addr constant [32 x i8] c"androidx/core/view/MenuProvider\00", align 1
@.str.258 = private unnamed_addr constant [47 x i8] c"androidx/core/view/OnApplyWindowInsetsListener\00", align 1
@.str.259 = private unnamed_addr constant [44 x i8] c"androidx/core/view/OnReceiveContentListener\00", align 1
@.str.260 = private unnamed_addr constant [33 x i8] c"androidx/core/view/ScrollingView\00", align 1
@.str.261 = private unnamed_addr constant [48 x i8] c"androidx/core/view/ViewPropertyAnimatorListener\00", align 1
@.str.262 = private unnamed_addr constant [54 x i8] c"androidx/core/view/ViewPropertyAnimatorUpdateListener\00", align 1
@.str.263 = private unnamed_addr constant [62 x i8] c"androidx/core/view/WindowInsetsAnimationControlListenerCompat\00", align 1
@.str.264 = private unnamed_addr constant [34 x i8] c"androidx/core/view/MenuItemCompat\00", align 1
@.str.265 = private unnamed_addr constant [57 x i8] c"androidx/core/view/MenuItemCompat$OnActionExpandListener\00", align 1
@.str.266 = private unnamed_addr constant [37 x i8] c"androidx/core/view/PointerIconCompat\00", align 1
@.str.267 = private unnamed_addr constant [46 x i8] c"androidx/core/view/ScaleGestureDetectorCompat\00", align 1
@.str.268 = private unnamed_addr constant [30 x i8] c"androidx/core/view/ViewCompat\00", align 1
@.str.269 = private unnamed_addr constant [64 x i8] c"androidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat\00", align 1
@.str.270 = private unnamed_addr constant [46 x i8] c"androidx/core/view/ViewPropertyAnimatorCompat\00", align 1
@.str.271 = private unnamed_addr constant [32 x i8] c"androidx/core/view/WindowCompat\00", align 1
@.str.272 = private unnamed_addr constant [47 x i8] c"androidx/core/view/WindowInsetsAnimationCompat\00", align 1
@.str.273 = private unnamed_addr constant [60 x i8] c"androidx/core/view/WindowInsetsAnimationCompat$BoundsCompat\00", align 1
@.str.274 = private unnamed_addr constant [56 x i8] c"androidx/core/view/WindowInsetsAnimationCompat$Callback\00", align 1
@.str.275 = private unnamed_addr constant [57 x i8] c"androidx/core/view/WindowInsetsAnimationControllerCompat\00", align 1
@.str.276 = private unnamed_addr constant [38 x i8] c"androidx/core/view/WindowInsetsCompat\00", align 1
@.str.277 = private unnamed_addr constant [43 x i8] c"androidx/core/view/WindowInsetsCompat$Type\00", align 1
@.str.278 = private unnamed_addr constant [48 x i8] c"androidx/core/view/WindowInsetsControllerCompat\00", align 1
@.str.279 = private unnamed_addr constant [84 x i8] c"androidx/core/view/WindowInsetsControllerCompat$OnControllableInsetsChangedListener\00", align 1
@.str.280 = private unnamed_addr constant [100 x i8] c"mono/androidx/core/view/WindowInsetsControllerCompat_OnControllableInsetsChangedListenerImplementor\00", align 1
@.str.281 = private unnamed_addr constant [61 x i8] c"androidx/core/view/accessibility/AccessibilityNodeInfoCompat\00", align 1
@.str.282 = private unnamed_addr constant [87 x i8] c"androidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat\00", align 1
@.str.283 = private unnamed_addr constant [82 x i8] c"androidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat\00", align 1
@.str.284 = private unnamed_addr constant [86 x i8] c"androidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat\00", align 1
@.str.285 = private unnamed_addr constant [77 x i8] c"androidx/core/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat\00", align 1
@.str.286 = private unnamed_addr constant [85 x i8] c"androidx/core/view/accessibility/AccessibilityNodeInfoCompat$TouchDelegateInfoCompat\00", align 1
@.str.287 = private unnamed_addr constant [65 x i8] c"androidx/core/view/accessibility/AccessibilityNodeProviderCompat\00", align 1
@.str.288 = private unnamed_addr constant [63 x i8] c"androidx/core/view/accessibility/AccessibilityWindowInfoCompat\00", align 1
@.str.289 = private unnamed_addr constant [75 x i8] c"androidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments\00", align 1
@.str.290 = private unnamed_addr constant [58 x i8] c"androidx/core/view/accessibility/AccessibilityViewCommand\00", align 1
@.str.291 = private unnamed_addr constant [41 x i8] c"androidx/core/text/PrecomputedTextCompat\00", align 1
@.str.292 = private unnamed_addr constant [48 x i8] c"androidx/core/text/PrecomputedTextCompat$Params\00", align 1
@.str.293 = private unnamed_addr constant [29 x i8] c"org/xmlpull/v1/XmlPullParser\00", align 1
@.str.294 = private unnamed_addr constant [38 x i8] c"org/xmlpull/v1/XmlPullParserException\00", align 1
@.str.295 = private unnamed_addr constant [32 x i8] c"javax/security/cert/Certificate\00", align 1
@.str.296 = private unnamed_addr constant [36 x i8] c"javax/security/cert/X509Certificate\00", align 1
@.str.297 = private unnamed_addr constant [28 x i8] c"javax/security/auth/Subject\00", align 1
@.str.298 = private unnamed_addr constant [24 x i8] c"javax/net/SocketFactory\00", align 1
@.str.299 = private unnamed_addr constant [33 x i8] c"javax/net/ssl/HttpsURLConnection\00", align 1
@.str.300 = private unnamed_addr constant [31 x i8] c"javax/net/ssl/HostnameVerifier\00", align 1
@.str.301 = private unnamed_addr constant [25 x i8] c"javax/net/ssl/KeyManager\00", align 1
@.str.302 = private unnamed_addr constant [25 x i8] c"javax/net/ssl/SSLSession\00", align 1
@.str.303 = private unnamed_addr constant [32 x i8] c"javax/net/ssl/SSLSessionContext\00", align 1
@.str.304 = private unnamed_addr constant [27 x i8] c"javax/net/ssl/TrustManager\00", align 1
@.str.305 = private unnamed_addr constant [32 x i8] c"javax/net/ssl/KeyManagerFactory\00", align 1
@.str.306 = private unnamed_addr constant [25 x i8] c"javax/net/ssl/SSLContext\00", align 1
@.str.307 = private unnamed_addr constant [31 x i8] c"javax/net/ssl/SSLSocketFactory\00", align 1
@.str.308 = private unnamed_addr constant [34 x i8] c"javax/net/ssl/TrustManagerFactory\00", align 1
@.str.309 = private unnamed_addr constant [37 x i8] c"android/window/OnBackInvokedCallback\00", align 1
@.str.310 = private unnamed_addr constant [39 x i8] c"android/window/OnBackInvokedDispatcher\00", align 1
@.str.311 = private unnamed_addr constant [27 x i8] c"android/widget/AbsListView\00", align 1
@.str.312 = private unnamed_addr constant [44 x i8] c"android/widget/AbsListView$OnScrollListener\00", align 1
@.str.313 = private unnamed_addr constant [30 x i8] c"android/widget/AbsoluteLayout\00", align 1
@.str.314 = private unnamed_addr constant [26 x i8] c"android/widget/AbsSeekBar\00", align 1
@.str.315 = private unnamed_addr constant [27 x i8] c"android/widget/AdapterView\00", align 1
@.str.316 = private unnamed_addr constant [47 x i8] c"android/widget/AdapterView$OnItemClickListener\00", align 1
@.str.317 = private unnamed_addr constant [63 x i8] c"mono/android/widget/AdapterView_OnItemClickListenerImplementor\00", align 1
@.str.318 = private unnamed_addr constant [51 x i8] c"android/widget/AdapterView$OnItemLongClickListener\00", align 1
@.str.319 = private unnamed_addr constant [50 x i8] c"android/widget/AdapterView$OnItemSelectedListener\00", align 1
@.str.320 = private unnamed_addr constant [36 x i8] c"android/widget/AutoCompleteTextView\00", align 1
@.str.321 = private unnamed_addr constant [27 x i8] c"android/widget/BaseAdapter\00", align 1
@.str.322 = private unnamed_addr constant [22 x i8] c"android/widget/Button\00", align 1
@.str.323 = private unnamed_addr constant [24 x i8] c"android/widget/CheckBox\00", align 1
@.str.324 = private unnamed_addr constant [30 x i8] c"android/widget/CompoundButton\00", align 1
@.str.325 = private unnamed_addr constant [54 x i8] c"android/widget/CompoundButton$OnCheckedChangeListener\00", align 1
@.str.326 = private unnamed_addr constant [70 x i8] c"mono/android/widget/CompoundButton_OnCheckedChangeListenerImplementor\00", align 1
@.str.327 = private unnamed_addr constant [26 x i8] c"android/widget/DatePicker\00", align 1
@.str.328 = private unnamed_addr constant [26 x i8] c"android/widget/EdgeEffect\00", align 1
@.str.329 = private unnamed_addr constant [24 x i8] c"android/widget/EditText\00", align 1
@.str.330 = private unnamed_addr constant [22 x i8] c"android/widget/Filter\00", align 1
@.str.331 = private unnamed_addr constant [36 x i8] c"android/widget/Filter$FilterResults\00", align 1
@.str.332 = private unnamed_addr constant [27 x i8] c"android/widget/FrameLayout\00", align 1
@.str.333 = private unnamed_addr constant [40 x i8] c"android/widget/FrameLayout$LayoutParams\00", align 1
@.str.334 = private unnamed_addr constant [36 x i8] c"android/widget/HorizontalScrollView\00", align 1
@.str.335 = private unnamed_addr constant [23 x i8] c"android/widget/Adapter\00", align 1
@.str.336 = private unnamed_addr constant [26 x i8] c"android/widget/Filterable\00", align 1
@.str.337 = private unnamed_addr constant [35 x i8] c"android/widget/FilterQueryProvider\00", align 1
@.str.338 = private unnamed_addr constant [27 x i8] c"android/widget/ListAdapter\00", align 1
@.str.339 = private unnamed_addr constant [27 x i8] c"android/widget/ImageButton\00", align 1
@.str.340 = private unnamed_addr constant [25 x i8] c"android/widget/ImageView\00", align 1
@.str.341 = private unnamed_addr constant [35 x i8] c"android/widget/ImageView$ScaleType\00", align 1
@.str.342 = private unnamed_addr constant [30 x i8] c"android/widget/SectionIndexer\00", align 1
@.str.343 = private unnamed_addr constant [30 x i8] c"android/widget/SpinnerAdapter\00", align 1
@.str.344 = private unnamed_addr constant [28 x i8] c"android/widget/LinearLayout\00", align 1
@.str.345 = private unnamed_addr constant [41 x i8] c"android/widget/LinearLayout$LayoutParams\00", align 1
@.str.346 = private unnamed_addr constant [24 x i8] c"android/widget/ListView\00", align 1
@.str.347 = private unnamed_addr constant [27 x i8] c"android/widget/ProgressBar\00", align 1
@.str.348 = private unnamed_addr constant [27 x i8] c"android/widget/RadioButton\00", align 1
@.str.349 = private unnamed_addr constant [26 x i8] c"android/widget/SearchView\00", align 1
@.str.350 = private unnamed_addr constant [23 x i8] c"android/widget/SeekBar\00", align 1
@.str.351 = private unnamed_addr constant [47 x i8] c"android/widget/SeekBar$OnSeekBarChangeListener\00", align 1
@.str.352 = private unnamed_addr constant [22 x i8] c"android/widget/Switch\00", align 1
@.str.353 = private unnamed_addr constant [24 x i8] c"android/widget/TextView\00", align 1
@.str.354 = private unnamed_addr constant [35 x i8] c"android/widget/TextView$BufferType\00", align 1
@.str.355 = private unnamed_addr constant [47 x i8] c"android/widget/TextView$OnEditorActionListener\00", align 1
@.str.356 = private unnamed_addr constant [63 x i8] c"mono/android/widget/TextView_OnEditorActionListenerImplementor\00", align 1
@.str.357 = private unnamed_addr constant [26 x i8] c"android/widget/TimePicker\00", align 1
@.str.358 = private unnamed_addr constant [21 x i8] c"android/widget/Toast\00", align 1
@.str.359 = private unnamed_addr constant [29 x i8] c"android/webkit/CookieManager\00", align 1
@.str.360 = private unnamed_addr constant [29 x i8] c"android/webkit/ValueCallback\00", align 1
@.str.361 = private unnamed_addr constant [34 x i8] c"android/webkit/WebResourceRequest\00", align 1
@.str.362 = private unnamed_addr constant [27 x i8] c"android/webkit/MimeTypeMap\00", align 1
@.str.363 = private unnamed_addr constant [31 x i8] c"android/webkit/WebChromeClient\00", align 1
@.str.364 = private unnamed_addr constant [49 x i8] c"android/webkit/WebChromeClient$FileChooserParams\00", align 1
@.str.365 = private unnamed_addr constant [32 x i8] c"android/webkit/WebResourceError\00", align 1
@.str.366 = private unnamed_addr constant [27 x i8] c"android/webkit/WebSettings\00", align 1
@.str.367 = private unnamed_addr constant [23 x i8] c"android/webkit/WebView\00", align 1
@.str.368 = private unnamed_addr constant [29 x i8] c"android/webkit/WebViewClient\00", align 1
@.str.369 = private unnamed_addr constant [28 x i8] c"android/util/DisplayMetrics\00", align 1
@.str.370 = private unnamed_addr constant [26 x i8] c"android/util/AttributeSet\00", align 1
@.str.371 = private unnamed_addr constant [18 x i8] c"android/util/Pair\00", align 1
@.str.372 = private unnamed_addr constant [19 x i8] c"android/util/Range\00", align 1
@.str.373 = private unnamed_addr constant [22 x i8] c"android/util/Rational\00", align 1
@.str.374 = private unnamed_addr constant [18 x i8] c"android/util/Size\00", align 1
@.str.375 = private unnamed_addr constant [19 x i8] c"android/util/SizeF\00", align 1
@.str.376 = private unnamed_addr constant [25 x i8] c"android/util/SparseArray\00", align 1
@.str.377 = private unnamed_addr constant [22 x i8] c"android/util/StateSet\00", align 1
@.str.378 = private unnamed_addr constant [24 x i8] c"android/util/TypedValue\00", align 1
@.str.379 = private unnamed_addr constant [18 x i8] c"android/text/Html\00", align 1
@.str.380 = private unnamed_addr constant [22 x i8] c"android/text/Editable\00", align 1
@.str.381 = private unnamed_addr constant [22 x i8] c"android/text/GetChars\00", align 1
@.str.382 = private unnamed_addr constant [38 x i8] c"android/text/InputFilter$LengthFilter\00", align 1
@.str.383 = private unnamed_addr constant [25 x i8] c"android/text/InputFilter\00", align 1
@.str.384 = private unnamed_addr constant [24 x i8] c"android/text/NoCopySpan\00", align 1
@.str.385 = private unnamed_addr constant [23 x i8] c"android/text/Spannable\00", align 1
@.str.386 = private unnamed_addr constant [21 x i8] c"android/text/Spanned\00", align 1
@.str.387 = private unnamed_addr constant [36 x i8] c"android/text/TextDirectionHeuristic\00", align 1
@.str.388 = private unnamed_addr constant [25 x i8] c"android/text/TextWatcher\00", align 1
@.str.389 = private unnamed_addr constant [20 x i8] c"android/text/Layout\00", align 1
@.str.390 = private unnamed_addr constant [30 x i8] c"android/text/Layout$Alignment\00", align 1
@.str.391 = private unnamed_addr constant [29 x i8] c"android/text/SpannableString\00", align 1
@.str.392 = private unnamed_addr constant [36 x i8] c"android/text/SpannableStringBuilder\00", align 1
@.str.393 = private unnamed_addr constant [37 x i8] c"android/text/SpannableStringInternal\00", align 1
@.str.394 = private unnamed_addr constant [26 x i8] c"android/text/StaticLayout\00", align 1
@.str.395 = private unnamed_addr constant [34 x i8] c"android/text/StaticLayout$Builder\00", align 1
@.str.396 = private unnamed_addr constant [23 x i8] c"android/text/TextPaint\00", align 1
@.str.397 = private unnamed_addr constant [23 x i8] c"android/text/TextUtils\00", align 1
@.str.398 = private unnamed_addr constant [34 x i8] c"android/text/TextUtils$TruncateAt\00", align 1
@.str.399 = private unnamed_addr constant [41 x i8] c"mono/android/text/TextWatcherImplementor\00", align 1
@.str.400 = private unnamed_addr constant [36 x i8] c"android/text/style/AbsoluteSizeSpan\00", align 1
@.str.401 = private unnamed_addr constant [39 x i8] c"android/text/style/BackgroundColorSpan\00", align 1
@.str.402 = private unnamed_addr constant [30 x i8] c"android/text/style/BulletSpan\00", align 1
@.str.403 = private unnamed_addr constant [34 x i8] c"android/text/style/CharacterStyle\00", align 1
@.str.404 = private unnamed_addr constant [33 x i8] c"android/text/style/ClickableSpan\00", align 1
@.str.405 = private unnamed_addr constant [39 x i8] c"android/text/style/ForegroundColorSpan\00", align 1
@.str.406 = private unnamed_addr constant [34 x i8] c"android/text/style/LineHeightSpan\00", align 1
@.str.407 = private unnamed_addr constant [34 x i8] c"android/text/style/ParagraphStyle\00", align 1
@.str.408 = private unnamed_addr constant [36 x i8] c"android/text/style/WrapTogetherSpan\00", align 1
@.str.409 = private unnamed_addr constant [39 x i8] c"android/text/style/MetricAffectingSpan\00", align 1
@.str.410 = private unnamed_addr constant [37 x i8] c"android/text/style/StrikethroughSpan\00", align 1
@.str.411 = private unnamed_addr constant [29 x i8] c"android/text/style/StyleSpan\00", align 1
@.str.412 = private unnamed_addr constant [33 x i8] c"android/text/style/SubscriptSpan\00", align 1
@.str.413 = private unnamed_addr constant [35 x i8] c"android/text/style/SuperscriptSpan\00", align 1
@.str.414 = private unnamed_addr constant [32 x i8] c"android/text/style/TypefaceSpan\00", align 1
@.str.415 = private unnamed_addr constant [33 x i8] c"android/text/style/UnderlineSpan\00", align 1
@.str.416 = private unnamed_addr constant [36 x i8] c"android/text/method/BaseKeyListener\00", align 1
@.str.417 = private unnamed_addr constant [38 x i8] c"android/text/method/DigitsKeyListener\00", align 1
@.str.418 = private unnamed_addr constant [32 x i8] c"android/text/method/KeyListener\00", align 1
@.str.419 = private unnamed_addr constant [39 x i8] c"android/text/method/MetaKeyKeyListener\00", align 1
@.str.420 = private unnamed_addr constant [38 x i8] c"android/text/method/NumberKeyListener\00", align 1
@.str.421 = private unnamed_addr constant [31 x i8] c"android/text/format/DateFormat\00", align 1
@.str.422 = private unnamed_addr constant [35 x i8] c"android/speech/RecognitionListener\00", align 1
@.str.423 = private unnamed_addr constant [32 x i8] c"android/speech/SpeechRecognizer\00", align 1
@.str.424 = private unnamed_addr constant [46 x i8] c"android/security/keystore/KeyGenParameterSpec\00", align 1
@.str.425 = private unnamed_addr constant [26 x i8] c"android/provider/Settings\00", align 1
@.str.426 = private unnamed_addr constant [33 x i8] c"android/provider/Settings$Global\00", align 1
@.str.427 = private unnamed_addr constant [41 x i8] c"android/provider/Settings$NameValueTable\00", align 1
@.str.428 = private unnamed_addr constant [33 x i8] c"android/provider/Settings$System\00", align 1
@.str.429 = private unnamed_addr constant [37 x i8] c"android/preference/PreferenceManager\00", align 1
@.str.430 = private unnamed_addr constant [22 x i8] c"android/os/BaseBundle\00", align 1
@.str.431 = private unnamed_addr constant [17 x i8] c"android/os/Build\00", align 1
@.str.432 = private unnamed_addr constant [25 x i8] c"android/os/Build$VERSION\00", align 1
@.str.433 = private unnamed_addr constant [18 x i8] c"android/os/Bundle\00", align 1
@.str.434 = private unnamed_addr constant [30 x i8] c"android/os/CancellationSignal\00", align 1
@.str.435 = private unnamed_addr constant [23 x i8] c"android/os/Environment\00", align 1
@.str.436 = private unnamed_addr constant [19 x i8] c"android/os/Handler\00", align 1
@.str.437 = private unnamed_addr constant [34 x i8] c"android/os/IBinder$DeathRecipient\00", align 1
@.str.438 = private unnamed_addr constant [19 x i8] c"android/os/IBinder\00", align 1
@.str.439 = private unnamed_addr constant [22 x i8] c"android/os/IInterface\00", align 1
@.str.440 = private unnamed_addr constant [30 x i8] c"android/os/Parcelable$Creator\00", align 1
@.str.441 = private unnamed_addr constant [22 x i8] c"android/os/Parcelable\00", align 1
@.str.442 = private unnamed_addr constant [22 x i8] c"android/os/LocaleList\00", align 1
@.str.443 = private unnamed_addr constant [18 x i8] c"android/os/Looper\00", align 1
@.str.444 = private unnamed_addr constant [19 x i8] c"android/os/Message\00", align 1
@.str.445 = private unnamed_addr constant [18 x i8] c"android/os/Parcel\00", align 1
@.str.446 = private unnamed_addr constant [32 x i8] c"android/os/ParcelFileDescriptor\00", align 1
@.str.447 = private unnamed_addr constant [54 x i8] c"android/os/ParcelFileDescriptor$AutoCloseOutputStream\00", align 1
@.str.448 = private unnamed_addr constant [24 x i8] c"android/os/PowerManager\00", align 1
@.str.449 = private unnamed_addr constant [22 x i8] c"android/opengl/Matrix\00", align 1
@.str.450 = private unnamed_addr constant [32 x i8] c"android/net/ConnectivityManager\00", align 1
@.str.451 = private unnamed_addr constant [20 x i8] c"android/net/Network\00", align 1
@.str.452 = private unnamed_addr constant [32 x i8] c"android/net/NetworkCapabilities\00", align 1
@.str.453 = private unnamed_addr constant [24 x i8] c"android/net/NetworkInfo\00", align 1
@.str.454 = private unnamed_addr constant [16 x i8] c"android/net/Uri\00", align 1
@.str.455 = private unnamed_addr constant [31 x i8] c"android/media/CamcorderProfile\00", align 1
@.str.456 = private unnamed_addr constant [20 x i8] c"android/media/Image\00", align 1
@.str.457 = private unnamed_addr constant [26 x i8] c"android/location/Location\00", align 1
@.str.458 = private unnamed_addr constant [46 x i8] c"android/hardware/camera2/CameraCaptureSession\00", align 1
@.str.459 = private unnamed_addr constant [60 x i8] c"android/hardware/camera2/CameraCaptureSession$StateCallback\00", align 1
@.str.460 = private unnamed_addr constant [38 x i8] c"android/hardware/camera2/CameraDevice\00", align 1
@.str.461 = private unnamed_addr constant [52 x i8] c"android/hardware/camera2/CameraDevice$StateCallback\00", align 1
@.str.462 = private unnamed_addr constant [51 x i8] c"android/hardware/camera2/params/InputConfiguration\00", align 1
@.str.463 = private unnamed_addr constant [33 x i8] c"android/database/CharArrayBuffer\00", align 1
@.str.464 = private unnamed_addr constant [33 x i8] c"android/database/ContentObserver\00", align 1
@.str.465 = private unnamed_addr constant [33 x i8] c"android/database/DataSetObserver\00", align 1
@.str.466 = private unnamed_addr constant [24 x i8] c"android/database/Cursor\00", align 1
@.str.467 = private unnamed_addr constant [27 x i8] c"android/animation/Animator\00", align 1
@.str.468 = private unnamed_addr constant [44 x i8] c"android/animation/Animator$AnimatorListener\00", align 1
@.str.469 = private unnamed_addr constant [42 x i8] c"android/animation/AnimatorListenerAdapter\00", align 1
@.str.470 = private unnamed_addr constant [35 x i8] c"android/animation/TimeInterpolator\00", align 1
@.str.471 = private unnamed_addr constant [32 x i8] c"android/animation/ValueAnimator\00", align 1
@.str.472 = private unnamed_addr constant [55 x i8] c"android/animation/ValueAnimator$AnimatorUpdateListener\00", align 1
@.str.473 = private unnamed_addr constant [71 x i8] c"mono/android/animation/ValueAnimator_AnimatorUpdateListenerImplementor\00", align 1
@.str.474 = private unnamed_addr constant [60 x i8] c"android/animation/ValueAnimator$DurationScaleChangeListener\00", align 1
@.str.475 = private unnamed_addr constant [47 x i8] c"mono/android/animation/AnimatorEventDispatcher\00", align 1
@.str.476 = private unnamed_addr constant [21 x i8] c"android/app/Activity\00", align 1
@.str.477 = private unnamed_addr constant [24 x i8] c"android/app/AlertDialog\00", align 1
@.str.478 = private unnamed_addr constant [32 x i8] c"android/app/AlertDialog$Builder\00", align 1
@.str.479 = private unnamed_addr constant [24 x i8] c"android/app/Application\00", align 1
@.str.480 = private unnamed_addr constant [51 x i8] c"android/app/Application$ActivityLifecycleCallbacks\00", align 1
@.str.481 = private unnamed_addr constant [29 x i8] c"android/app/DatePickerDialog\00", align 1
@.str.482 = private unnamed_addr constant [47 x i8] c"android/app/DatePickerDialog$OnDateSetListener\00", align 1
@.str.483 = private unnamed_addr constant [63 x i8] c"mono/android/app/DatePickerDialog_OnDateSetListenerImplementor\00", align 1
@.str.484 = private unnamed_addr constant [19 x i8] c"android/app/Dialog\00", align 1
@.str.485 = private unnamed_addr constant [26 x i8] c"android/app/PendingIntent\00", align 1
@.str.486 = private unnamed_addr constant [27 x i8] c"android/app/SearchableInfo\00", align 1
@.str.487 = private unnamed_addr constant [29 x i8] c"android/app/TimePickerDialog\00", align 1
@.str.488 = private unnamed_addr constant [47 x i8] c"android/app/TimePickerDialog$OnTimeSetListener\00", align 1
@.str.489 = private unnamed_addr constant [63 x i8] c"mono/android/app/TimePickerDialog_OnTimeSetListenerImplementor\00", align 1
@.str.490 = private unnamed_addr constant [26 x i8] c"android/app/UiModeManager\00", align 1
@.str.491 = private unnamed_addr constant [40 x i8] c"android/view/WindowManager$LayoutParams\00", align 1
@.str.492 = private unnamed_addr constant [24 x i8] c"android/view/ActionMode\00", align 1
@.str.493 = private unnamed_addr constant [33 x i8] c"android/view/ActionMode$Callback\00", align 1
@.str.494 = private unnamed_addr constant [28 x i8] c"android/view/ActionProvider\00", align 1
@.str.495 = private unnamed_addr constant [25 x i8] c"android/view/ContentInfo\00", align 1
@.str.496 = private unnamed_addr constant [33 x i8] c"android/view/ContextThemeWrapper\00", align 1
@.str.497 = private unnamed_addr constant [21 x i8] c"android/view/Display\00", align 1
@.str.498 = private unnamed_addr constant [23 x i8] c"android/view/DragEvent\00", align 1
@.str.499 = private unnamed_addr constant [29 x i8] c"android/view/GestureDetector\00", align 1
@.str.500 = private unnamed_addr constant [49 x i8] c"android/view/GestureDetector$OnDoubleTapListener\00", align 1
@.str.501 = private unnamed_addr constant [47 x i8] c"android/view/GestureDetector$OnGestureListener\00", align 1
@.str.502 = private unnamed_addr constant [41 x i8] c"android/view/ContextMenu$ContextMenuInfo\00", align 1
@.str.503 = private unnamed_addr constant [25 x i8] c"android/view/ContextMenu\00", align 1
@.str.504 = private unnamed_addr constant [18 x i8] c"android/view/Menu\00", align 1
@.str.505 = private unnamed_addr constant [45 x i8] c"android/view/MenuItem$OnActionExpandListener\00", align 1
@.str.506 = private unnamed_addr constant [46 x i8] c"android/view/MenuItem$OnMenuItemClickListener\00", align 1
@.str.507 = private unnamed_addr constant [22 x i8] c"android/view/MenuItem\00", align 1
@.str.508 = private unnamed_addr constant [24 x i8] c"android/view/InputEvent\00", align 1
@.str.509 = private unnamed_addr constant [21 x i8] c"android/view/SubMenu\00", align 1
@.str.510 = private unnamed_addr constant [25 x i8] c"android/view/ViewManager\00", align 1
@.str.511 = private unnamed_addr constant [24 x i8] c"android/view/ViewParent\00", align 1
@.str.512 = private unnamed_addr constant [45 x i8] c"android/view/WindowInsetsAnimationController\00", align 1
@.str.513 = private unnamed_addr constant [50 x i8] c"android/view/WindowInsetsAnimationControlListener\00", align 1
@.str.514 = private unnamed_addr constant [36 x i8] c"android/view/WindowInsetsController\00", align 1
@.str.515 = private unnamed_addr constant [72 x i8] c"android/view/WindowInsetsController$OnControllableInsetsChangedListener\00", align 1
@.str.516 = private unnamed_addr constant [27 x i8] c"android/view/WindowManager\00", align 1
@.str.517 = private unnamed_addr constant [35 x i8] c"android/view/KeyboardShortcutGroup\00", align 1
@.str.518 = private unnamed_addr constant [22 x i8] c"android/view/KeyEvent\00", align 1
@.str.519 = private unnamed_addr constant [28 x i8] c"android/view/LayoutInflater\00", align 1
@.str.520 = private unnamed_addr constant [26 x i8] c"android/view/MenuInflater\00", align 1
@.str.521 = private unnamed_addr constant [25 x i8] c"android/view/MotionEvent\00", align 1
@.str.522 = private unnamed_addr constant [38 x i8] c"android/view/OrientationEventListener\00", align 1
@.str.523 = private unnamed_addr constant [34 x i8] c"android/view/ScaleGestureDetector\00", align 1
@.str.524 = private unnamed_addr constant [57 x i8] c"android/view/ScaleGestureDetector$OnScaleGestureListener\00", align 1
@.str.525 = private unnamed_addr constant [63 x i8] c"android/view/ScaleGestureDetector$SimpleOnScaleGestureListener\00", align 1
@.str.526 = private unnamed_addr constant [25 x i8] c"android/view/SearchEvent\00", align 1
@.str.527 = private unnamed_addr constant [21 x i8] c"android/view/Surface\00", align 1
@.str.528 = private unnamed_addr constant [18 x i8] c"android/view/View\00", align 1
@.str.529 = private unnamed_addr constant [40 x i8] c"android/view/View$AccessibilityDelegate\00", align 1
@.str.530 = private unnamed_addr constant [36 x i8] c"android/view/View$DragShadowBuilder\00", align 1
@.str.531 = private unnamed_addr constant [30 x i8] c"android/view/View$MeasureSpec\00", align 1
@.str.532 = private unnamed_addr constant [46 x i8] c"android/view/View$OnAttachStateChangeListener\00", align 1
@.str.533 = private unnamed_addr constant [62 x i8] c"mono/android/view/View_OnAttachStateChangeListenerImplementor\00", align 1
@.str.534 = private unnamed_addr constant [34 x i8] c"android/view/View$OnClickListener\00", align 1
@.str.535 = private unnamed_addr constant [50 x i8] c"mono/android/view/View_OnClickListenerImplementor\00", align 1
@.str.536 = private unnamed_addr constant [33 x i8] c"android/view/View$OnDragListener\00", align 1
@.str.537 = private unnamed_addr constant [40 x i8] c"android/view/View$OnFocusChangeListener\00", align 1
@.str.538 = private unnamed_addr constant [56 x i8] c"mono/android/view/View_OnFocusChangeListenerImplementor\00", align 1
@.str.539 = private unnamed_addr constant [34 x i8] c"android/view/View$OnHoverListener\00", align 1
@.str.540 = private unnamed_addr constant [32 x i8] c"android/view/View$OnKeyListener\00", align 1
@.str.541 = private unnamed_addr constant [48 x i8] c"mono/android/view/View_OnKeyListenerImplementor\00", align 1
@.str.542 = private unnamed_addr constant [41 x i8] c"android/view/View$OnLayoutChangeListener\00", align 1
@.str.543 = private unnamed_addr constant [57 x i8] c"mono/android/view/View_OnLayoutChangeListenerImplementor\00", align 1
@.str.544 = private unnamed_addr constant [41 x i8] c"android/view/View$OnScrollChangeListener\00", align 1
@.str.545 = private unnamed_addr constant [57 x i8] c"mono/android/view/View_OnScrollChangeListenerImplementor\00", align 1
@.str.546 = private unnamed_addr constant [34 x i8] c"android/view/View$OnTouchListener\00", align 1
@.str.547 = private unnamed_addr constant [50 x i8] c"mono/android/view/View_OnTouchListenerImplementor\00", align 1
@.str.548 = private unnamed_addr constant [31 x i8] c"android/view/ViewConfiguration\00", align 1
@.str.549 = private unnamed_addr constant [23 x i8] c"android/view/ViewGroup\00", align 1
@.str.550 = private unnamed_addr constant [36 x i8] c"android/view/ViewGroup$LayoutParams\00", align 1
@.str.551 = private unnamed_addr constant [42 x i8] c"android/view/ViewGroup$MarginLayoutParams\00", align 1
@.str.552 = private unnamed_addr constant [49 x i8] c"android/view/ViewGroup$OnHierarchyChangeListener\00", align 1
@.str.553 = private unnamed_addr constant [65 x i8] c"mono/android/view/ViewGroup_OnHierarchyChangeListenerImplementor\00", align 1
@.str.554 = private unnamed_addr constant [34 x i8] c"android/view/ViewPropertyAnimator\00", align 1
@.str.555 = private unnamed_addr constant [30 x i8] c"android/view/ViewTreeObserver\00", align 1
@.str.556 = private unnamed_addr constant [53 x i8] c"android/view/ViewTreeObserver$OnGlobalLayoutListener\00", align 1
@.str.557 = private unnamed_addr constant [20 x i8] c"android/view/Window\00", align 1
@.str.558 = private unnamed_addr constant [29 x i8] c"android/view/Window$Callback\00", align 1
@.str.559 = private unnamed_addr constant [26 x i8] c"android/view/WindowInsets\00", align 1
@.str.560 = private unnamed_addr constant [31 x i8] c"android/view/WindowInsets$Type\00", align 1
@.str.561 = private unnamed_addr constant [35 x i8] c"android/view/WindowInsetsAnimation\00", align 1
@.str.562 = private unnamed_addr constant [42 x i8] c"android/view/WindowInsetsAnimation$Bounds\00", align 1
@.str.563 = private unnamed_addr constant [27 x i8] c"android/view/WindowMetrics\00", align 1
@.str.564 = private unnamed_addr constant [44 x i8] c"android/view/inputmethod/InputMethodManager\00", align 1
@.str.565 = private unnamed_addr constant [46 x i8] c"android/view/animation/AccelerateInterpolator\00", align 1
@.str.566 = private unnamed_addr constant [33 x i8] c"android/view/animation/Animation\00", align 1
@.str.567 = private unnamed_addr constant [51 x i8] c"android/view/animation/Animation$AnimationListener\00", align 1
@.str.568 = private unnamed_addr constant [36 x i8] c"android/view/animation/AnimationSet\00", align 1
@.str.569 = private unnamed_addr constant [38 x i8] c"android/view/animation/AnimationUtils\00", align 1
@.str.570 = private unnamed_addr constant [40 x i8] c"android/view/animation/BaseInterpolator\00", align 1
@.str.571 = private unnamed_addr constant [46 x i8] c"android/view/animation/DecelerateInterpolator\00", align 1
@.str.572 = private unnamed_addr constant [36 x i8] c"android/view/animation/Interpolator\00", align 1
@.str.573 = private unnamed_addr constant [42 x i8] c"android/view/animation/LinearInterpolator\00", align 1
@.str.574 = private unnamed_addr constant [46 x i8] c"android/view/accessibility/AccessibilityEvent\00", align 1
@.str.575 = private unnamed_addr constant [48 x i8] c"android/view/accessibility/AccessibilityManager\00", align 1
@.str.576 = private unnamed_addr constant [81 x i8] c"android/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener\00", align 1
@.str.577 = private unnamed_addr constant [84 x i8] c"android/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener\00", align 1
@.str.578 = private unnamed_addr constant [49 x i8] c"android/view/accessibility/AccessibilityNodeInfo\00", align 1
@.str.579 = private unnamed_addr constant [68 x i8] c"android/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo\00", align 1
@.str.580 = private unnamed_addr constant [47 x i8] c"android/view/accessibility/AccessibilityRecord\00", align 1
@.str.581 = private unnamed_addr constant [51 x i8] c"android/view/accessibility/AccessibilityWindowInfo\00", align 1
@.str.582 = private unnamed_addr constant [40 x i8] c"mono/android/runtime/InputStreamAdapter\00", align 1
@.str.583 = private unnamed_addr constant [31 x i8] c"mono/android/runtime/JavaArray\00", align 1
@.str.584 = private unnamed_addr constant [21 x i8] c"java/util/Collection\00", align 1
@.str.585 = private unnamed_addr constant [18 x i8] c"java/util/HashMap\00", align 1
@.str.586 = private unnamed_addr constant [20 x i8] c"java/util/ArrayList\00", align 1
@.str.587 = private unnamed_addr constant [32 x i8] c"mono/android/runtime/JavaObject\00", align 1
@.str.588 = private unnamed_addr constant [35 x i8] c"android/runtime/JavaProxyThrowable\00", align 1
@.str.589 = private unnamed_addr constant [18 x i8] c"java/util/HashSet\00", align 1
@.str.590 = private unnamed_addr constant [41 x i8] c"mono/android/runtime/OutputStreamAdapter\00", align 1
@.str.591 = private unnamed_addr constant [36 x i8] c"android/runtime/XmlReaderPullParser\00", align 1
@.str.592 = private unnamed_addr constant [24 x i8] c"android/graphics/Bitmap\00", align 1
@.str.593 = private unnamed_addr constant [39 x i8] c"android/graphics/Bitmap$CompressFormat\00", align 1
@.str.594 = private unnamed_addr constant [31 x i8] c"android/graphics/Bitmap$Config\00", align 1
@.str.595 = private unnamed_addr constant [31 x i8] c"android/graphics/BitmapFactory\00", align 1
@.str.596 = private unnamed_addr constant [30 x i8] c"android/graphics/BitmapShader\00", align 1
@.str.597 = private unnamed_addr constant [27 x i8] c"android/graphics/BlendMode\00", align 1
@.str.598 = private unnamed_addr constant [32 x i8] c"android/graphics/BlurMaskFilter\00", align 1
@.str.599 = private unnamed_addr constant [37 x i8] c"android/graphics/BlurMaskFilter$Blur\00", align 1
@.str.600 = private unnamed_addr constant [24 x i8] c"android/graphics/Canvas\00", align 1
@.str.601 = private unnamed_addr constant [29 x i8] c"android/graphics/ColorFilter\00", align 1
@.str.602 = private unnamed_addr constant [32 x i8] c"android/graphics/DashPathEffect\00", align 1
@.str.603 = private unnamed_addr constant [24 x i8] c"android/graphics/Insets\00", align 1
@.str.604 = private unnamed_addr constant [32 x i8] c"android/graphics/LinearGradient\00", align 1
@.str.605 = private unnamed_addr constant [28 x i8] c"android/graphics/MaskFilter\00", align 1
@.str.606 = private unnamed_addr constant [24 x i8] c"android/graphics/Matrix\00", align 1
@.str.607 = private unnamed_addr constant [23 x i8] c"android/graphics/Paint\00", align 1
@.str.608 = private unnamed_addr constant [27 x i8] c"android/graphics/Paint$Cap\00", align 1
@.str.609 = private unnamed_addr constant [35 x i8] c"android/graphics/Paint$FontMetrics\00", align 1
@.str.610 = private unnamed_addr constant [38 x i8] c"android/graphics/Paint$FontMetricsInt\00", align 1
@.str.611 = private unnamed_addr constant [28 x i8] c"android/graphics/Paint$Join\00", align 1
@.str.612 = private unnamed_addr constant [29 x i8] c"android/graphics/Paint$Style\00", align 1
@.str.613 = private unnamed_addr constant [22 x i8] c"android/graphics/Path\00", align 1
@.str.614 = private unnamed_addr constant [32 x i8] c"android/graphics/Path$Direction\00", align 1
@.str.615 = private unnamed_addr constant [31 x i8] c"android/graphics/Path$FillType\00", align 1
@.str.616 = private unnamed_addr constant [28 x i8] c"android/graphics/PathEffect\00", align 1
@.str.617 = private unnamed_addr constant [23 x i8] c"android/graphics/Point\00", align 1
@.str.618 = private unnamed_addr constant [24 x i8] c"android/graphics/PointF\00", align 1
@.str.619 = private unnamed_addr constant [28 x i8] c"android/graphics/PorterDuff\00", align 1
@.str.620 = private unnamed_addr constant [33 x i8] c"android/graphics/PorterDuff$Mode\00", align 1
@.str.621 = private unnamed_addr constant [39 x i8] c"android/graphics/PorterDuffColorFilter\00", align 1
@.str.622 = private unnamed_addr constant [36 x i8] c"android/graphics/PorterDuffXfermode\00", align 1
@.str.623 = private unnamed_addr constant [32 x i8] c"android/graphics/RadialGradient\00", align 1
@.str.624 = private unnamed_addr constant [22 x i8] c"android/graphics/Rect\00", align 1
@.str.625 = private unnamed_addr constant [23 x i8] c"android/graphics/RectF\00", align 1
@.str.626 = private unnamed_addr constant [24 x i8] c"android/graphics/Region\00", align 1
@.str.627 = private unnamed_addr constant [27 x i8] c"android/graphics/Region$Op\00", align 1
@.str.628 = private unnamed_addr constant [24 x i8] c"android/graphics/Shader\00", align 1
@.str.629 = private unnamed_addr constant [33 x i8] c"android/graphics/Shader$TileMode\00", align 1
@.str.630 = private unnamed_addr constant [26 x i8] c"android/graphics/Typeface\00", align 1
@.str.631 = private unnamed_addr constant [26 x i8] c"android/graphics/Xfermode\00", align 1
@.str.632 = private unnamed_addr constant [44 x i8] c"android/graphics/drawable/AnimationDrawable\00", align 1
@.str.633 = private unnamed_addr constant [40 x i8] c"android/graphics/drawable/ColorDrawable\00", align 1
@.str.634 = private unnamed_addr constant [35 x i8] c"android/graphics/drawable/Drawable\00", align 1
@.str.635 = private unnamed_addr constant [49 x i8] c"android/graphics/drawable/Drawable$ConstantState\00", align 1
@.str.636 = private unnamed_addr constant [44 x i8] c"android/graphics/drawable/DrawableContainer\00", align 1
@.str.637 = private unnamed_addr constant [42 x i8] c"android/graphics/drawable/DrawableWrapper\00", align 1
@.str.638 = private unnamed_addr constant [43 x i8] c"android/graphics/drawable/GradientDrawable\00", align 1
@.str.639 = private unnamed_addr constant [55 x i8] c"android/graphics/drawable/GradientDrawable$Orientation\00", align 1
@.str.640 = private unnamed_addr constant [37 x i8] c"android/graphics/drawable/Animatable\00", align 1
@.str.641 = private unnamed_addr constant [31 x i8] c"android/graphics/drawable/Icon\00", align 1
@.str.642 = private unnamed_addr constant [40 x i8] c"android/graphics/drawable/InsetDrawable\00", align 1
@.str.643 = private unnamed_addr constant [40 x i8] c"android/graphics/drawable/LayerDrawable\00", align 1
@.str.644 = private unnamed_addr constant [40 x i8] c"android/graphics/drawable/PaintDrawable\00", align 1
@.str.645 = private unnamed_addr constant [41 x i8] c"android/graphics/drawable/RippleDrawable\00", align 1
@.str.646 = private unnamed_addr constant [40 x i8] c"android/graphics/drawable/ShapeDrawable\00", align 1
@.str.647 = private unnamed_addr constant [54 x i8] c"android/graphics/drawable/ShapeDrawable$ShaderFactory\00", align 1
@.str.648 = private unnamed_addr constant [44 x i8] c"android/graphics/drawable/StateListDrawable\00", align 1
@.str.649 = private unnamed_addr constant [43 x i8] c"android/graphics/drawable/shapes/OvalShape\00", align 1
@.str.650 = private unnamed_addr constant [43 x i8] c"android/graphics/drawable/shapes/RectShape\00", align 1
@.str.651 = private unnamed_addr constant [39 x i8] c"android/graphics/drawable/shapes/Shape\00", align 1
@.str.652 = private unnamed_addr constant [34 x i8] c"android/content/BroadcastReceiver\00", align 1
@.str.653 = private unnamed_addr constant [25 x i8] c"android/content/ClipData\00", align 1
@.str.654 = private unnamed_addr constant [30 x i8] c"android/content/ClipData$Item\00", align 1
@.str.655 = private unnamed_addr constant [32 x i8] c"android/content/ClipDescription\00", align 1
@.str.656 = private unnamed_addr constant [30 x i8] c"android/content/ComponentName\00", align 1
@.str.657 = private unnamed_addr constant [32 x i8] c"android/content/ContentResolver\00", align 1
@.str.658 = private unnamed_addr constant [30 x i8] c"android/content/ContentValues\00", align 1
@.str.659 = private unnamed_addr constant [24 x i8] c"android/content/Context\00", align 1
@.str.660 = private unnamed_addr constant [31 x i8] c"android/content/ContextWrapper\00", align 1
@.str.661 = private unnamed_addr constant [49 x i8] c"android/content/DialogInterface$OnCancelListener\00", align 1
@.str.662 = private unnamed_addr constant [65 x i8] c"mono/android/content/DialogInterface_OnCancelListenerImplementor\00", align 1
@.str.663 = private unnamed_addr constant [48 x i8] c"android/content/DialogInterface$OnClickListener\00", align 1
@.str.664 = private unnamed_addr constant [64 x i8] c"mono/android/content/DialogInterface_OnClickListenerImplementor\00", align 1
@.str.665 = private unnamed_addr constant [50 x i8] c"android/content/DialogInterface$OnDismissListener\00", align 1
@.str.666 = private unnamed_addr constant [66 x i8] c"mono/android/content/DialogInterface_OnDismissListenerImplementor\00", align 1
@.str.667 = private unnamed_addr constant [46 x i8] c"android/content/DialogInterface$OnKeyListener\00", align 1
@.str.668 = private unnamed_addr constant [59 x i8] c"android/content/DialogInterface$OnMultiChoiceClickListener\00", align 1
@.str.669 = private unnamed_addr constant [47 x i8] c"android/content/DialogInterface$OnShowListener\00", align 1
@.str.670 = private unnamed_addr constant [63 x i8] c"mono/android/content/DialogInterface_OnShowListenerImplementor\00", align 1
@.str.671 = private unnamed_addr constant [32 x i8] c"android/content/DialogInterface\00", align 1
@.str.672 = private unnamed_addr constant [23 x i8] c"android/content/Intent\00", align 1
@.str.673 = private unnamed_addr constant [29 x i8] c"android/content/IntentFilter\00", align 1
@.str.674 = private unnamed_addr constant [29 x i8] c"android/content/IntentSender\00", align 1
@.str.675 = private unnamed_addr constant [41 x i8] c"android/content/SharedPreferences$Editor\00", align 1
@.str.676 = private unnamed_addr constant [67 x i8] c"android/content/SharedPreferences$OnSharedPreferenceChangeListener\00", align 1
@.str.677 = private unnamed_addr constant [34 x i8] c"android/content/SharedPreferences\00", align 1
@.str.678 = private unnamed_addr constant [24 x i8] c"android/content/LocusId\00", align 1
@.str.679 = private unnamed_addr constant [33 x i8] c"android/content/res/AssetManager\00", align 1
@.str.680 = private unnamed_addr constant [35 x i8] c"android/content/res/ColorStateList\00", align 1
@.str.681 = private unnamed_addr constant [34 x i8] c"android/content/res/Configuration\00", align 1
@.str.682 = private unnamed_addr constant [38 x i8] c"android/content/res/XmlResourceParser\00", align 1
@.str.683 = private unnamed_addr constant [30 x i8] c"android/content/res/Resources\00", align 1
@.str.684 = private unnamed_addr constant [36 x i8] c"android/content/res/Resources$Theme\00", align 1
@.str.685 = private unnamed_addr constant [31 x i8] c"android/content/res/TypedArray\00", align 1
@.str.686 = private unnamed_addr constant [34 x i8] c"android/content/pm/PackageManager\00", align 1
@.str.687 = private unnamed_addr constant [51 x i8] c"android/content/pm/PackageManager$ResolveInfoFlags\00", align 1
@.str.688 = private unnamed_addr constant [32 x i8] c"android/content/pm/ActivityInfo\00", align 1
@.str.689 = private unnamed_addr constant [35 x i8] c"android/content/pm/ApplicationInfo\00", align 1
@.str.690 = private unnamed_addr constant [33 x i8] c"android/content/pm/ComponentInfo\00", align 1
@.str.691 = private unnamed_addr constant [31 x i8] c"android/content/pm/PackageInfo\00", align 1
@.str.692 = private unnamed_addr constant [35 x i8] c"android/content/pm/PackageItemInfo\00", align 1
@.str.693 = private unnamed_addr constant [31 x i8] c"android/content/pm/ResolveInfo\00", align 1
@.str.694 = private unnamed_addr constant [32 x i8] c"android/content/pm/ShortcutInfo\00", align 1
@.str.695 = private unnamed_addr constant [40 x i8] c"android/content/pm/ShortcutInfo$Builder\00", align 1
@.str.696 = private unnamed_addr constant [35 x i8] c"android/content/pm/ShortcutManager\00", align 1
@.str.697 = private unnamed_addr constant [29 x i8] c"android/content/pm/Signature\00", align 1
@.str.698 = private unnamed_addr constant [29 x i8] c"java/util/AbstractCollection\00", align 1
@.str.699 = private unnamed_addr constant [22 x i8] c"java/util/AbstractMap\00", align 1
@.str.700 = private unnamed_addr constant [22 x i8] c"java/util/AbstractSet\00", align 1
@.str.701 = private unnamed_addr constant [21 x i8] c"java/util/Comparator\00", align 1
@.str.702 = private unnamed_addr constant [22 x i8] c"java/util/Enumeration\00", align 1
@.str.703 = private unnamed_addr constant [19 x i8] c"java/util/Iterator\00", align 1
@.str.704 = private unnamed_addr constant [15 x i8] c"java/util/List\00", align 1
@.str.705 = private unnamed_addr constant [23 x i8] c"java/util/ListIterator\00", align 1
@.str.706 = private unnamed_addr constant [23 x i8] c"java/util/RandomAccess\00", align 1
@.str.707 = private unnamed_addr constant [14 x i8] c"java/util/Set\00", align 1
@.str.708 = private unnamed_addr constant [22 x i8] c"java/util/Spliterator\00", align 1
@.str.709 = private unnamed_addr constant [24 x i8] c"java/util/LinkedHashSet\00", align 1
@.str.710 = private unnamed_addr constant [17 x i8] c"java/util/Locale\00", align 1
@.str.711 = private unnamed_addr constant [17 x i8] c"java/util/Random\00", align 1
@.str.712 = private unnamed_addr constant [18 x i8] c"java/util/TreeMap\00", align 1
@.str.713 = private unnamed_addr constant [28 x i8] c"java/util/function/Consumer\00", align 1
@.str.714 = private unnamed_addr constant [28 x i8] c"java/util/function/Function\00", align 1
@.str.715 = private unnamed_addr constant [31 x i8] c"java/util/function/IntConsumer\00", align 1
@.str.716 = private unnamed_addr constant [31 x i8] c"java/util/function/IntFunction\00", align 1
@.str.717 = private unnamed_addr constant [29 x i8] c"java/util/function/Predicate\00", align 1
@.str.718 = private unnamed_addr constant [36 x i8] c"java/util/function/ToDoubleFunction\00", align 1
@.str.719 = private unnamed_addr constant [33 x i8] c"java/util/function/ToIntFunction\00", align 1
@.str.720 = private unnamed_addr constant [34 x i8] c"java/util/function/ToLongFunction\00", align 1
@.str.721 = private unnamed_addr constant [33 x i8] c"java/util/function/UnaryOperator\00", align 1
@.str.722 = private unnamed_addr constant [31 x i8] c"java/util/concurrent/Executors\00", align 1
@.str.723 = private unnamed_addr constant [30 x i8] c"java/util/concurrent/Callable\00", align 1
@.str.724 = private unnamed_addr constant [30 x i8] c"java/util/concurrent/Executor\00", align 1
@.str.725 = private unnamed_addr constant [37 x i8] c"java/util/concurrent/ExecutorService\00", align 1
@.str.726 = private unnamed_addr constant [28 x i8] c"java/util/concurrent/Future\00", align 1
@.str.727 = private unnamed_addr constant [30 x i8] c"java/util/concurrent/TimeUnit\00", align 1
@.str.728 = private unnamed_addr constant [42 x i8] c"java/util/concurrent/atomic/AtomicBoolean\00", align 1
@.str.729 = private unnamed_addr constant [44 x i8] c"java/util/concurrent/atomic/AtomicReference\00", align 1
@.str.730 = private unnamed_addr constant [24 x i8] c"java/text/DecimalFormat\00", align 1
@.str.731 = private unnamed_addr constant [31 x i8] c"java/text/DecimalFormatSymbols\00", align 1
@.str.732 = private unnamed_addr constant [23 x i8] c"java/text/NumberFormat\00", align 1
@.str.733 = private unnamed_addr constant [17 x i8] c"java/text/Format\00", align 1
@.str.734 = private unnamed_addr constant [39 x i8] c"java/security/GeneralSecurityException\00", align 1
@.str.735 = private unnamed_addr constant [24 x i8] c"java/security/Principal\00", align 1
@.str.736 = private unnamed_addr constant [23 x i8] c"java/security/KeyStore\00", align 1
@.str.737 = private unnamed_addr constant [27 x i8] c"java/security/SecureRandom\00", align 1
@.str.738 = private unnamed_addr constant [31 x i8] c"java/security/cert/Certificate\00", align 1
@.str.739 = private unnamed_addr constant [16 x i8] c"java/nio/Buffer\00", align 1
@.str.740 = private unnamed_addr constant [20 x i8] c"java/nio/ByteBuffer\00", align 1
@.str.741 = private unnamed_addr constant [19 x i8] c"java/nio/ByteOrder\00", align 1
@.str.742 = private unnamed_addr constant [25 x i8] c"java/nio/charset/Charset\00", align 1
@.str.743 = private unnamed_addr constant [30 x i8] c"java/nio/channels/FileChannel\00", align 1
@.str.744 = private unnamed_addr constant [51 x i8] c"java/nio/channels/spi/AbstractInterruptibleChannel\00", align 1
@.str.745 = private unnamed_addr constant [26 x i8] c"java/net/ConnectException\00", align 1
@.str.746 = private unnamed_addr constant [27 x i8] c"java/net/HttpURLConnection\00", align 1
@.str.747 = private unnamed_addr constant [27 x i8] c"java/net/InetSocketAddress\00", align 1
@.str.748 = private unnamed_addr constant [27 x i8] c"java/net/ProtocolException\00", align 1
@.str.749 = private unnamed_addr constant [15 x i8] c"java/net/Proxy\00", align 1
@.str.750 = private unnamed_addr constant [20 x i8] c"java/net/Proxy$Type\00", align 1
@.str.751 = private unnamed_addr constant [23 x i8] c"java/net/SocketAddress\00", align 1
@.str.752 = private unnamed_addr constant [25 x i8] c"java/net/SocketException\00", align 1
@.str.753 = private unnamed_addr constant [32 x i8] c"java/net/SocketTimeoutException\00", align 1
@.str.754 = private unnamed_addr constant [33 x i8] c"java/net/UnknownServiceException\00", align 1
@.str.755 = private unnamed_addr constant [13 x i8] c"java/net/URL\00", align 1
@.str.756 = private unnamed_addr constant [23 x i8] c"java/net/URLConnection\00", align 1
@.str.757 = private unnamed_addr constant [13 x i8] c"java/io/File\00", align 1
@.str.758 = private unnamed_addr constant [23 x i8] c"java/io/FileDescriptor\00", align 1
@.str.759 = private unnamed_addr constant [24 x i8] c"java/io/FileInputStream\00", align 1
@.str.760 = private unnamed_addr constant [25 x i8] c"java/io/FileOutputStream\00", align 1
@.str.761 = private unnamed_addr constant [18 x i8] c"java/io/Closeable\00", align 1
@.str.762 = private unnamed_addr constant [20 x i8] c"java/io/InputStream\00", align 1
@.str.763 = private unnamed_addr constant [31 x i8] c"java/io/InterruptedIOException\00", align 1
@.str.764 = private unnamed_addr constant [20 x i8] c"java/io/IOException\00", align 1
@.str.765 = private unnamed_addr constant [21 x i8] c"java/io/OutputStream\00", align 1
@.str.766 = private unnamed_addr constant [20 x i8] c"java/io/PrintWriter\00", align 1
@.str.767 = private unnamed_addr constant [25 x i8] c"java/io/RandomAccessFile\00", align 1
@.str.768 = private unnamed_addr constant [15 x i8] c"java/io/Reader\00", align 1
@.str.769 = private unnamed_addr constant [21 x i8] c"java/io/StringWriter\00", align 1
@.str.770 = private unnamed_addr constant [15 x i8] c"java/io/Writer\00", align 1
@.str.771 = private unnamed_addr constant [18 x i8] c"java/lang/Boolean\00", align 1
@.str.772 = private unnamed_addr constant [15 x i8] c"java/lang/Byte\00", align 1
@.str.773 = private unnamed_addr constant [20 x i8] c"java/lang/Character\00", align 1
@.str.774 = private unnamed_addr constant [16 x i8] c"java/lang/Class\00", align 1
@.str.775 = private unnamed_addr constant [29 x i8] c"java/lang/ClassCastException\00", align 1
@.str.776 = private unnamed_addr constant [22 x i8] c"java/lang/ClassLoader\00", align 1
@.str.777 = private unnamed_addr constant [17 x i8] c"java/lang/Double\00", align 1
@.str.778 = private unnamed_addr constant [15 x i8] c"java/lang/Enum\00", align 1
@.str.779 = private unnamed_addr constant [16 x i8] c"java/lang/Error\00", align 1
@.str.780 = private unnamed_addr constant [20 x i8] c"java/lang/Exception\00", align 1
@.str.781 = private unnamed_addr constant [16 x i8] c"java/lang/Float\00", align 1
@.str.782 = private unnamed_addr constant [21 x i8] c"java/lang/Appendable\00", align 1
@.str.783 = private unnamed_addr constant [24 x i8] c"java/lang/AutoCloseable\00", align 1
@.str.784 = private unnamed_addr constant [23 x i8] c"java/lang/CharSequence\00", align 1
@.str.785 = private unnamed_addr constant [20 x i8] c"java/lang/Cloneable\00", align 1
@.str.786 = private unnamed_addr constant [19 x i8] c"java/lang/Iterable\00", align 1
@.str.787 = private unnamed_addr constant [35 x i8] c"java/lang/IllegalArgumentException\00", align 1
@.str.788 = private unnamed_addr constant [32 x i8] c"java/lang/IllegalStateException\00", align 1
@.str.789 = private unnamed_addr constant [36 x i8] c"java/lang/IndexOutOfBoundsException\00", align 1
@.str.790 = private unnamed_addr constant [18 x i8] c"java/lang/Integer\00", align 1
@.str.791 = private unnamed_addr constant [19 x i8] c"java/lang/Runnable\00", align 1
@.str.792 = private unnamed_addr constant [15 x i8] c"java/lang/Long\00", align 1
@.str.793 = private unnamed_addr constant [31 x i8] c"java/lang/NullPointerException\00", align 1
@.str.794 = private unnamed_addr constant [17 x i8] c"java/lang/Number\00", align 1
@.str.795 = private unnamed_addr constant [17 x i8] c"java/lang/Object\00", align 1
@.str.796 = private unnamed_addr constant [27 x i8] c"java/lang/RuntimeException\00", align 1
@.str.797 = private unnamed_addr constant [28 x i8] c"java/lang/SecurityException\00", align 1
@.str.798 = private unnamed_addr constant [16 x i8] c"java/lang/Short\00", align 1
@.str.799 = private unnamed_addr constant [28 x i8] c"java/lang/StackTraceElement\00", align 1
@.str.800 = private unnamed_addr constant [17 x i8] c"java/lang/String\00", align 1
@.str.801 = private unnamed_addr constant [17 x i8] c"java/lang/Thread\00", align 1
@.str.802 = private unnamed_addr constant [35 x i8] c"mono/java/lang/RunnableImplementor\00", align 1
@.str.803 = private unnamed_addr constant [20 x i8] c"java/lang/Throwable\00", align 1
@.str.804 = private unnamed_addr constant [40 x i8] c"java/lang/UnsupportedOperationException\00", align 1
@.str.805 = private unnamed_addr constant [24 x i8] c"mono/java/lang/Runnable\00", align 1
@.str.806 = private unnamed_addr constant [25 x i8] c"mono/android/TypeManager\00", align 1
@.str.807 = private unnamed_addr constant [47 x i8] c"androidx/navigation/fragment/FragmentNavigator\00", align 1
@.str.808 = private unnamed_addr constant [59 x i8] c"androidx/navigation/fragment/FragmentNavigator$Destination\00", align 1
@.str.809 = private unnamed_addr constant [45 x i8] c"androidx/navigation/fragment/NavHostFragment\00", align 1
@.str.810 = private unnamed_addr constant [52 x i8] c"androidx/coordinatorlayout/widget/CoordinatorLayout\00", align 1
@.str.811 = private unnamed_addr constant [61 x i8] c"androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior\00", align 1
@.str.812 = private unnamed_addr constant [65 x i8] c"androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams\00", align 1
@.str.813 = private unnamed_addr constant [47 x i8] c"crc6477f0d89a9cfd64b1/Platform_DefaultRenderer\00", align 1
@.str.814 = private unnamed_addr constant [48 x i8] c"crc6477f0d89a9cfd64b1/NativeViewWrapperRenderer\00", align 1
@.str.815 = private unnamed_addr constant [39 x i8] c"crc6477f0d89a9cfd64b1/PlatformRenderer\00", align 1
@.str.816 = private unnamed_addr constant [35 x i8] c"crc6477f0d89a9cfd64b1/ViewRenderer\00", align 1
@.str.817 = private unnamed_addr constant [37 x i8] c"crc6477f0d89a9cfd64b1/ViewRenderer_2\00", align 1
@.str.818 = private unnamed_addr constant [46 x i8] c"crc6477f0d89a9cfd64b1/VisualElementRenderer_1\00", align 1
@.str.819 = private unnamed_addr constant [57 x i8] c"crc6477f0d89a9cfd64b1/VisualElementTracker_AttachTracker\00", align 1
@.str.820 = private unnamed_addr constant [39 x i8] c"androidx/lifecycle/ViewModelStoreOwner\00", align 1
@.str.821 = private unnamed_addr constant [29 x i8] c"androidx/lifecycle/ViewModel\00", align 1
@.str.822 = private unnamed_addr constant [37 x i8] c"androidx/lifecycle/ViewModelProvider\00", align 1
@.str.823 = private unnamed_addr constant [55 x i8] c"androidx/lifecycle/ViewModelProvider$Factory$Companion\00", align 1
@.str.824 = private unnamed_addr constant [45 x i8] c"androidx/lifecycle/ViewModelProvider$Factory\00", align 1
@.str.825 = private unnamed_addr constant [34 x i8] c"androidx/lifecycle/ViewModelStore\00", align 1
@.str.826 = private unnamed_addr constant [44 x i8] c"androidx/lifecycle/viewmodel/CreationExtras\00", align 1
@.str.827 = private unnamed_addr constant [48 x i8] c"androidx/lifecycle/viewmodel/CreationExtras$Key\00", align 1
@.str.828 = private unnamed_addr constant [50 x i8] c"androidx/lifecycle/viewmodel/ViewModelInitializer\00", align 1
@.str.829 = private unnamed_addr constant [34 x i8] c"androidx/cardview/widget/CardView\00", align 1
@.str.830 = private unnamed_addr constant [55 x i8] c"crc64ba438d8f48cf7e75/ActivityLifecycleContextListener\00", align 1
@.str.831 = private unnamed_addr constant [43 x i8] c"crc64ba438d8f48cf7e75/IntermediateActivity\00", align 1
@.str.832 = private unnamed_addr constant [59 x i8] c"crc640a8d9a12ddbf2cf2/DeviceDisplayImplementation_Listener\00", align 1
@.str.833 = private unnamed_addr constant [51 x i8] c"crc640a8d9a12ddbf2cf2/EnergySaverBroadcastReceiver\00", align 1
@.str.834 = private unnamed_addr constant [55 x i8] c"crc64f728827fec74e9c3/TapWindowTracker_GestureListener\00", align 1
@.str.835 = private unnamed_addr constant [40 x i8] c"crc64f728827fec74e9c3/Toolbar_Container\00", align 1
@.str.836 = private unnamed_addr constant [48 x i8] c"crc64338477404e88479c/ColorChangeRevealDrawable\00", align 1
@.str.837 = private unnamed_addr constant [52 x i8] c"crc64338477404e88479c/ControlsAccessibilityDelegate\00", align 1
@.str.838 = private unnamed_addr constant [48 x i8] c"crc64338477404e88479c/DragAndDropGestureHandler\00", align 1
@.str.839 = private unnamed_addr constant [69 x i8] c"crc64338477404e88479c/DragAndDropGestureHandler_CustomLocalStateData\00", align 1
@.str.840 = private unnamed_addr constant [66 x i8] c"crc64338477404e88479c/ToolbarExtensions_ToolbarTitleIconImageView\00", align 1
@.str.841 = private unnamed_addr constant [40 x i8] c"crc64338477404e88479c/FragmentContainer\00", align 1
@.str.842 = private unnamed_addr constant [46 x i8] c"crc64338477404e88479c/GenericAnimatorListener\00", align 1
@.str.843 = private unnamed_addr constant [50 x i8] c"crc64338477404e88479c/GenericGlobalLayoutListener\00", align 1
@.str.844 = private unnamed_addr constant [47 x i8] c"crc64338477404e88479c/GenericMenuClickListener\00", align 1
@.str.845 = private unnamed_addr constant [45 x i8] c"crc64338477404e88479c/GradientStrokeDrawable\00", align 1
@.str.846 = private unnamed_addr constant [43 x i8] c"crc64338477404e88479c/InnerGestureListener\00", align 1
@.str.847 = private unnamed_addr constant [41 x i8] c"crc64338477404e88479c/InnerScaleListener\00", align 1
@.str.848 = private unnamed_addr constant [36 x i8] c"crc64338477404e88479c/MauiViewPager\00", align 1
@.str.849 = private unnamed_addr constant [54 x i8] c"crc64338477404e88479c/MultiPageFragmentStateAdapter_1\00", align 1
@.str.850 = private unnamed_addr constant [44 x i8] c"crc64338477404e88479c/PointerGestureHandler\00", align 1
@.str.851 = private unnamed_addr constant [47 x i8] c"crc64338477404e88479c/TapAndPanGestureDetector\00", align 1
@.str.852 = private unnamed_addr constant [60 x i8] c"crc64338477404e88479c/ModalNavigationManager_ModalContainer\00", align 1
@.str.853 = private unnamed_addr constant [74 x i8] c"crc64338477404e88479c/ModalNavigationManager_ModalContainer_ModalFragment\00", align 1
@.str.854 = private unnamed_addr constant [36 x i8] c"crc640ec207abc449b2ca/ContainerView\00", align 1
@.str.855 = private unnamed_addr constant [40 x i8] c"crc640ec207abc449b2ca/CustomFrameLayout\00", align 1
@.str.856 = private unnamed_addr constant [43 x i8] c"crc640ec207abc449b2ca/ShellContentFragment\00", align 1
@.str.857 = private unnamed_addr constant [40 x i8] c"crc640ec207abc449b2ca/ShellFlyoutLayout\00", align 1
@.str.858 = private unnamed_addr constant [49 x i8] c"crc640ec207abc449b2ca/ShellFlyoutRecyclerAdapter\00", align 1
@.str.859 = private unnamed_addr constant [67 x i8] c"crc640ec207abc449b2ca/ShellFlyoutRecyclerAdapter_ShellLinearLayout\00", align 1
@.str.860 = private unnamed_addr constant [67 x i8] c"crc640ec207abc449b2ca/ShellFlyoutRecyclerAdapter_ElementViewHolder\00", align 1
@.str.861 = private unnamed_addr constant [42 x i8] c"crc640ec207abc449b2ca/ShellFlyoutRenderer\00", align 1
@.str.862 = private unnamed_addr constant [58 x i8] c"crc640ec207abc449b2ca/ShellFlyoutTemplatedContentRenderer\00", align 1
@.str.863 = private unnamed_addr constant [74 x i8] c"crc640ec207abc449b2ca/ShellFlyoutTemplatedContentRenderer_HeaderContainer\00", align 1
@.str.864 = private unnamed_addr constant [44 x i8] c"crc640ec207abc449b2ca/RecyclerViewContainer\00", align 1
@.str.865 = private unnamed_addr constant [42 x i8] c"crc640ec207abc449b2ca/ScrollLayoutManager\00", align 1
@.str.866 = private unnamed_addr constant [45 x i8] c"crc640ec207abc449b2ca/ShellFragmentContainer\00", align 1
@.str.867 = private unnamed_addr constant [48 x i8] c"crc640ec207abc449b2ca/ShellFragmentStateAdapter\00", align 1
@.str.868 = private unnamed_addr constant [40 x i8] c"crc640ec207abc449b2ca/ShellItemRenderer\00", align 1
@.str.869 = private unnamed_addr constant [44 x i8] c"crc640ec207abc449b2ca/ShellItemRendererBase\00", align 1
@.str.870 = private unnamed_addr constant [41 x i8] c"crc640ec207abc449b2ca/ShellPageContainer\00", align 1
@.str.871 = private unnamed_addr constant [38 x i8] c"crc640ec207abc449b2ca/ShellSearchView\00", align 1
@.str.872 = private unnamed_addr constant [58 x i8] c"crc640ec207abc449b2ca/ShellSearchView_ClipDrawableWrapper\00", align 1
@.str.873 = private unnamed_addr constant [45 x i8] c"crc640ec207abc449b2ca/ShellSearchViewAdapter\00", align 1
@.str.874 = private unnamed_addr constant [58 x i8] c"crc640ec207abc449b2ca/ShellSearchViewAdapter_CustomFilter\00", align 1
@.str.875 = private unnamed_addr constant [59 x i8] c"crc640ec207abc449b2ca/ShellSearchViewAdapter_ObjectWrapper\00", align 1
@.str.876 = private unnamed_addr constant [43 x i8] c"crc640ec207abc449b2ca/ShellSectionRenderer\00", align 1
@.str.877 = private unnamed_addr constant [64 x i8] c"crc640ec207abc449b2ca/ShellSectionRenderer_ViewPagerPageChanged\00", align 1
@.str.878 = private unnamed_addr constant [42 x i8] c"crc640ec207abc449b2ca/ShellToolbarTracker\00", align 1
@.str.879 = private unnamed_addr constant [67 x i8] c"crc640ec207abc449b2ca/ShellToolbarTracker_FlyoutIconDrawerDrawable\00", align 1
@.str.880 = private unnamed_addr constant [49 x i8] c"crc649ff77a65592e7d55/TabbedPageManager_TempView\00", align 1
@.str.881 = private unnamed_addr constant [50 x i8] c"crc649ff77a65592e7d55/TabbedPageManager_Listeners\00", align 1
@.str.882 = private unnamed_addr constant [44 x i8] c"crc645d80431ce5f73f11/CarouselViewAdapter_2\00", align 1
@.str.883 = private unnamed_addr constant [39 x i8] c"crc645d80431ce5f73f11/EmptyViewAdapter\00", align 1
@.str.884 = private unnamed_addr constant [50 x i8] c"crc645d80431ce5f73f11/GroupableItemsViewAdapter_2\00", align 1
@.str.885 = private unnamed_addr constant [41 x i8] c"crc645d80431ce5f73f11/ItemsViewAdapter_2\00", align 1
@.str.886 = private unnamed_addr constant [52 x i8] c"crc645d80431ce5f73f11/ReorderableItemsViewAdapter_2\00", align 1
@.str.887 = private unnamed_addr constant [51 x i8] c"crc645d80431ce5f73f11/SelectableItemsViewAdapter_2\00", align 1
@.str.888 = private unnamed_addr constant [51 x i8] c"crc645d80431ce5f73f11/StructuredItemsViewAdapter_2\00", align 1
@.str.889 = private unnamed_addr constant [52 x i8] c"crc645d80431ce5f73f11/CarouselSpacingItemDecoration\00", align 1
@.str.890 = private unnamed_addr constant [51 x i8] c"crc645d80431ce5f73f11/CarouselViewOnScrollListener\00", align 1
@.str.891 = private unnamed_addr constant [41 x i8] c"crc645d80431ce5f73f11/DataChangeObserver\00", align 1
@.str.892 = private unnamed_addr constant [47 x i8] c"crc645d80431ce5f73f11/GridLayoutSpanSizeLookup\00", align 1
@.str.893 = private unnamed_addr constant [38 x i8] c"crc645d80431ce5f73f11/ItemContentView\00", align 1
@.str.894 = private unnamed_addr constant [47 x i8] c"crc645d80431ce5f73f11/MauiCarouselRecyclerView\00", align 1
@.str.895 = private unnamed_addr constant [82 x i8] c"crc645d80431ce5f73f11/MauiCarouselRecyclerView_CarouselViewOnGlobalLayoutListener\00", align 1
@.str.896 = private unnamed_addr constant [41 x i8] c"crc645d80431ce5f73f11/MauiRecyclerView_3\00", align 1
@.str.897 = private unnamed_addr constant [47 x i8] c"crc645d80431ce5f73f11/PositionalSmoothScroller\00", align 1
@.str.898 = private unnamed_addr constant [51 x i8] c"crc645d80431ce5f73f11/RecyclerViewScrollListener_2\00", align 1
@.str.899 = private unnamed_addr constant [35 x i8] c"crc645d80431ce5f73f11/ScrollHelper\00", align 1
@.str.900 = private unnamed_addr constant [43 x i8] c"crc645d80431ce5f73f11/SelectableViewHolder\00", align 1
@.str.901 = private unnamed_addr constant [52 x i8] c"crc645d80431ce5f73f11/SimpleItemTouchHelperCallback\00", align 1
@.str.902 = private unnamed_addr constant [39 x i8] c"crc645d80431ce5f73f11/SimpleViewHolder\00", align 1
@.str.903 = private unnamed_addr constant [43 x i8] c"crc645d80431ce5f73f11/SizedItemContentView\00", align 1
@.str.904 = private unnamed_addr constant [39 x i8] c"crc645d80431ce5f73f11/CenterSnapHelper\00", align 1
@.str.905 = private unnamed_addr constant [37 x i8] c"crc645d80431ce5f73f11/EdgeSnapHelper\00", align 1
@.str.906 = private unnamed_addr constant [42 x i8] c"crc645d80431ce5f73f11/EndSingleSnapHelper\00", align 1
@.str.907 = private unnamed_addr constant [36 x i8] c"crc645d80431ce5f73f11/EndSnapHelper\00", align 1
@.str.908 = private unnamed_addr constant [42 x i8] c"crc645d80431ce5f73f11/NongreedySnapHelper\00", align 1
@.str.909 = private unnamed_addr constant [64 x i8] c"crc645d80431ce5f73f11/NongreedySnapHelper_InitialScrollListener\00", align 1
@.str.910 = private unnamed_addr constant [39 x i8] c"crc645d80431ce5f73f11/SingleSnapHelper\00", align 1
@.str.911 = private unnamed_addr constant [44 x i8] c"crc645d80431ce5f73f11/StartSingleSnapHelper\00", align 1
@.str.912 = private unnamed_addr constant [38 x i8] c"crc645d80431ce5f73f11/StartSnapHelper\00", align 1
@.str.913 = private unnamed_addr constant [44 x i8] c"crc645d80431ce5f73f11/SpacingItemDecoration\00", align 1
@.str.914 = private unnamed_addr constant [46 x i8] c"crc645d80431ce5f73f11/TemplatedItemViewHolder\00", align 1
@.str.915 = private unnamed_addr constant [37 x i8] c"crc645d80431ce5f73f11/TextViewHolder\00", align 1
@.str.916 = private unnamed_addr constant [36 x i8] c"crc64e1fb321c08285b90/FrameRenderer\00", align 1
@.str.917 = private unnamed_addr constant [35 x i8] c"crc64e1fb321c08285b90/ViewRenderer\00", align 1
@.str.918 = private unnamed_addr constant [37 x i8] c"crc64e1fb321c08285b90/ViewRenderer_2\00", align 1
@.str.919 = private unnamed_addr constant [46 x i8] c"crc64e1fb321c08285b90/VisualElementRenderer_1\00", align 1
@.str.920 = private unnamed_addr constant [35 x i8] c"crc64e1fb321c08285b90/BaseCellView\00", align 1
@.str.921 = private unnamed_addr constant [34 x i8] c"crc64e1fb321c08285b90/CellAdapter\00", align 1
@.str.922 = private unnamed_addr constant [50 x i8] c"crc64e1fb321c08285b90/CellRenderer_RendererHolder\00", align 1
@.str.923 = private unnamed_addr constant [45 x i8] c"crc64e1fb321c08285b90/ConditionalFocusLayout\00", align 1
@.str.924 = private unnamed_addr constant [40 x i8] c"crc64e1fb321c08285b90/EntryCellEditText\00", align 1
@.str.925 = private unnamed_addr constant [36 x i8] c"crc64e1fb321c08285b90/EntryCellView\00", align 1
@.str.926 = private unnamed_addr constant [45 x i8] c"crc64e1fb321c08285b90/GroupedListViewAdapter\00", align 1
@.str.927 = private unnamed_addr constant [38 x i8] c"crc64e1fb321c08285b90/ListViewAdapter\00", align 1
@.str.928 = private unnamed_addr constant [39 x i8] c"crc64e1fb321c08285b90/ListViewRenderer\00", align 1
@.str.929 = private unnamed_addr constant [49 x i8] c"crc64e1fb321c08285b90/ListViewRenderer_Container\00", align 1
@.str.930 = private unnamed_addr constant [82 x i8] c"crc64e1fb321c08285b90/ListViewRenderer_SwipeRefreshLayoutWithFixedNestedScrolling\00", align 1
@.str.931 = private unnamed_addr constant [74 x i8] c"crc64e1fb321c08285b90/ListViewRenderer_ListViewSwipeRefreshLayoutListener\00", align 1
@.str.932 = private unnamed_addr constant [62 x i8] c"crc64e1fb321c08285b90/ListViewRenderer_ListViewScrollDetector\00", align 1
@.str.933 = private unnamed_addr constant [37 x i8] c"crc64e1fb321c08285b90/SwitchCellView\00", align 1
@.str.934 = private unnamed_addr constant [52 x i8] c"crc64e1fb321c08285b90/TextCellRenderer_TextCellView\00", align 1
@.str.935 = private unnamed_addr constant [57 x i8] c"crc64e1fb321c08285b90/ViewCellRenderer_ViewCellContainer\00", align 1
@.str.936 = private unnamed_addr constant [76 x i8] c"crc64e1fb321c08285b90/ViewCellRenderer_ViewCellContainer_TapGestureListener\00", align 1
@.str.937 = private unnamed_addr constant [82 x i8] c"crc64e1fb321c08285b90/ViewCellRenderer_ViewCellContainer_LongPressGestureListener\00", align 1
@.str.938 = private unnamed_addr constant [45 x i8] c"crc64e1fb321c08285b90/TableViewModelRenderer\00", align 1
@.str.939 = private unnamed_addr constant [40 x i8] c"crc64e1fb321c08285b90/TableViewRenderer\00", align 1
@.str.940 = private unnamed_addr constant [35 x i8] c"crc649cdc484de593cb7e/MainActivity\00", align 1
@.str.941 = private unnamed_addr constant [38 x i8] c"crc649cdc484de593cb7e/MainApplication\00", align 1
@.str.942 = private unnamed_addr constant [34 x i8] c"androidx/navigation/NavDirections\00", align 1
@.str.943 = private unnamed_addr constant [46 x i8] c"androidx/navigation/NavViewModelStoreProvider\00", align 1
@.str.944 = private unnamed_addr constant [30 x i8] c"androidx/navigation/NavAction\00", align 1
@.str.945 = private unnamed_addr constant [32 x i8] c"androidx/navigation/NavArgument\00", align 1
@.str.946 = private unnamed_addr constant [38 x i8] c"androidx/navigation/NavBackStackEntry\00", align 1
@.str.947 = private unnamed_addr constant [32 x i8] c"androidx/navigation/NavDeepLink\00", align 1
@.str.948 = private unnamed_addr constant [39 x i8] c"androidx/navigation/NavDeepLinkRequest\00", align 1
@.str.949 = private unnamed_addr constant [35 x i8] c"androidx/navigation/NavDestination\00", align 1
@.str.950 = private unnamed_addr constant [49 x i8] c"androidx/navigation/NavDestination$DeepLinkMatch\00", align 1
@.str.951 = private unnamed_addr constant [29 x i8] c"androidx/navigation/NavGraph\00", align 1
@.str.952 = private unnamed_addr constant [38 x i8] c"androidx/navigation/NavGraphNavigator\00", align 1
@.str.953 = private unnamed_addr constant [30 x i8] c"androidx/navigation/Navigator\00", align 1
@.str.954 = private unnamed_addr constant [37 x i8] c"androidx/navigation/Navigator$Extras\00", align 1
@.str.955 = private unnamed_addr constant [38 x i8] c"androidx/navigation/NavigatorProvider\00", align 1
@.str.956 = private unnamed_addr constant [35 x i8] c"androidx/navigation/NavigatorState\00", align 1
@.str.957 = private unnamed_addr constant [31 x i8] c"androidx/navigation/NavOptions\00", align 1
@.str.958 = private unnamed_addr constant [28 x i8] c"androidx/navigation/NavType\00", align 1
@.str.959 = private unnamed_addr constant [51 x i8] c"com/google/common/util/concurrent/ListenableFuture\00", align 1
@.str.960 = private unnamed_addr constant [36 x i8] c"androidx/lifecycle/SavedStateHandle\00", align 1
@.str.961 = private unnamed_addr constant [39 x i8] c"androidx/fragment/app/FragmentActivity\00", align 1
@.str.962 = private unnamed_addr constant [31 x i8] c"androidx/fragment/app/Fragment\00", align 1
@.str.963 = private unnamed_addr constant [42 x i8] c"androidx/fragment/app/Fragment$SavedState\00", align 1
@.str.964 = private unnamed_addr constant [40 x i8] c"androidx/fragment/app/FragmentContainer\00", align 1
@.str.965 = private unnamed_addr constant [44 x i8] c"androidx/fragment/app/FragmentContainerView\00", align 1
@.str.966 = private unnamed_addr constant [38 x i8] c"androidx/fragment/app/FragmentFactory\00", align 1
@.str.967 = private unnamed_addr constant [43 x i8] c"androidx/fragment/app/FragmentHostCallback\00", align 1
@.str.968 = private unnamed_addr constant [38 x i8] c"androidx/fragment/app/FragmentManager\00", align 1
@.str.969 = private unnamed_addr constant [53 x i8] c"androidx/fragment/app/FragmentManager$BackStackEntry\00", align 1
@.str.970 = private unnamed_addr constant [65 x i8] c"androidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks\00", align 1
@.str.971 = private unnamed_addr constant [65 x i8] c"androidx/fragment/app/FragmentManager$OnBackStackChangedListener\00", align 1
@.str.972 = private unnamed_addr constant [81 x i8] c"mono/androidx/fragment/app/FragmentManager_OnBackStackChangedListenerImplementor\00", align 1
@.str.973 = private unnamed_addr constant [42 x i8] c"androidx/fragment/app/FragmentTransaction\00", align 1
@.str.974 = private unnamed_addr constant [47 x i8] c"androidx/fragment/app/FragmentOnAttachListener\00", align 1
@.str.975 = private unnamed_addr constant [63 x i8] c"mono/androidx/fragment/app/FragmentOnAttachListenerImplementor\00", align 1
@.str.976 = private unnamed_addr constant [45 x i8] c"androidx/fragment/app/FragmentResultListener\00", align 1
@.str.977 = private unnamed_addr constant [52 x i8] c"androidx/fragment/app/strictmode/FragmentStrictMode\00", align 1
@.str.978 = private unnamed_addr constant [59 x i8] c"androidx/fragment/app/strictmode/FragmentStrictMode$Policy\00", align 1
@.str.979 = private unnamed_addr constant [43 x i8] c"androidx/fragment/app/strictmode/Violation\00", align 1
@.str.980 = private unnamed_addr constant [36 x i8] c"androidx/customview/widget/Openable\00", align 1
@.str.981 = private unnamed_addr constant [48 x i8] c"crc6488302ad6e9e4df1a/ImageLoaderResultCallback\00", align 1
@.str.982 = private unnamed_addr constant [42 x i8] c"crc6488302ad6e9e4df1a/ImageLoaderCallback\00", align 1
@.str.983 = private unnamed_addr constant [48 x i8] c"crc6488302ad6e9e4df1a/ImageLoaderCallbackBase_1\00", align 1
@.str.984 = private unnamed_addr constant [44 x i8] c"crc6488302ad6e9e4df1a/MauiAppCompatActivity\00", align 1
@.str.985 = private unnamed_addr constant [38 x i8] c"crc6488302ad6e9e4df1a/MauiApplication\00", align 1
@.str.986 = private unnamed_addr constant [65 x i8] c"crc6488302ad6e9e4df1a/MauiApplication_ActivityLifecycleCallbacks\00", align 1
@.str.987 = private unnamed_addr constant [31 x i8] c"com/microsoft/maui/BuildConfig\00", align 1
@.str.988 = private unnamed_addr constant [39 x i8] c"com/microsoft/maui/ImageLoaderCallback\00", align 1
@.str.989 = private unnamed_addr constant [33 x i8] c"com/microsoft/maui/MauiViewGroup\00", align 1
@.str.990 = private unnamed_addr constant [45 x i8] c"com/microsoft/maui/PlatformAppCompatTextView\00", align 1
@.str.991 = private unnamed_addr constant [44 x i8] c"com/microsoft/maui/PlatformContentViewGroup\00", align 1
@.str.992 = private unnamed_addr constant [36 x i8] c"com/microsoft/maui/PlatformFontSpan\00", align 1
@.str.993 = private unnamed_addr constant [35 x i8] c"com/microsoft/maui/PlatformInterop\00", align 1
@.str.994 = private unnamed_addr constant [42 x i8] c"com/microsoft/maui/PlatformLineHeightSpan\00", align 1
@.str.995 = private unnamed_addr constant [39 x i8] c"com/microsoft/maui/PlatformWrapperView\00", align 1
@.str.996 = private unnamed_addr constant [57 x i8] c"crc6452ffdc5b34af3a0f/AccessibilityDelegateCompatWrapper\00", align 1
@.str.997 = private unnamed_addr constant [37 x i8] c"crc6452ffdc5b34af3a0f/BorderDrawable\00", align 1
@.str.998 = private unnamed_addr constant [36 x i8] c"crc6452ffdc5b34af3a0f/ContainerView\00", align 1
@.str.999 = private unnamed_addr constant [39 x i8] c"crc6452ffdc5b34af3a0f/ContentViewGroup\00", align 1
@.str.1000 = private unnamed_addr constant [58 x i8] c"crc6452ffdc5b34af3a0f/FragmentManagerExtensions_CallBacks\00", align 1
@.str.1001 = private unnamed_addr constant [38 x i8] c"crc6452ffdc5b34af3a0f/LayoutViewGroup\00", align 1
@.str.1002 = private unnamed_addr constant [49 x i8] c"crc6452ffdc5b34af3a0f/LocalizedDigitsKeyListener\00", align 1
@.str.1003 = private unnamed_addr constant [54 x i8] c"crc6452ffdc5b34af3a0f/MauiAccessibilityDelegateCompat\00", align 1
@.str.1004 = private unnamed_addr constant [44 x i8] c"crc6452ffdc5b34af3a0f/MauiAppCompatEditText\00", align 1
@.str.1005 = private unnamed_addr constant [34 x i8] c"crc6452ffdc5b34af3a0f/MauiBoxView\00", align 1
@.str.1006 = private unnamed_addr constant [37 x i8] c"crc6452ffdc5b34af3a0f/MauiDatePicker\00", align 1
@.str.1007 = private unnamed_addr constant [41 x i8] c"crc6452ffdc5b34af3a0f/MauiMaterialButton\00", align 1
@.str.1008 = private unnamed_addr constant [63 x i8] c"crc6452ffdc5b34af3a0f/MauiMaterialButton_MauiResizableDrawable\00", align 1
@.str.1009 = private unnamed_addr constant [38 x i8] c"crc6452ffdc5b34af3a0f/MauiPageControl\00", align 1
@.str.1010 = private unnamed_addr constant [57 x i8] c"crc6452ffdc5b34af3a0f/MauiPageControl_TEditClickListener\00", align 1
@.str.1011 = private unnamed_addr constant [33 x i8] c"crc6452ffdc5b34af3a0f/MauiPicker\00", align 1
@.str.1012 = private unnamed_addr constant [37 x i8] c"crc6452ffdc5b34af3a0f/MauiPickerBase\00", align 1
@.str.1013 = private unnamed_addr constant [37 x i8] c"crc6452ffdc5b34af3a0f/MauiScrollView\00", align 1
@.str.1014 = private unnamed_addr constant [47 x i8] c"crc6452ffdc5b34af3a0f/MauiHorizontalScrollView\00", align 1
@.str.1015 = private unnamed_addr constant [37 x i8] c"crc6452ffdc5b34af3a0f/MauiSearchView\00", align 1
@.str.1016 = private unnamed_addr constant [36 x i8] c"crc6452ffdc5b34af3a0f/MauiShapeView\00", align 1
@.str.1017 = private unnamed_addr constant [34 x i8] c"crc6452ffdc5b34af3a0f/MauiStepper\00", align 1
@.str.1018 = private unnamed_addr constant [45 x i8] c"crc6452ffdc5b34af3a0f/MauiSwipeRefreshLayout\00", align 1
@.str.1019 = private unnamed_addr constant [36 x i8] c"crc6452ffdc5b34af3a0f/MauiSwipeView\00", align 1
@.str.1020 = private unnamed_addr constant [35 x i8] c"crc6452ffdc5b34af3a0f/MauiTextView\00", align 1
@.str.1021 = private unnamed_addr constant [37 x i8] c"crc6452ffdc5b34af3a0f/MauiTimePicker\00", align 1
@.str.1022 = private unnamed_addr constant [42 x i8] c"crc6452ffdc5b34af3a0f/MauiWebChromeClient\00", align 1
@.str.1023 = private unnamed_addr constant [34 x i8] c"crc6452ffdc5b34af3a0f/MauiWebView\00", align 1
@.str.1024 = private unnamed_addr constant [40 x i8] c"crc6452ffdc5b34af3a0f/MauiWebViewClient\00", align 1
@.str.1025 = private unnamed_addr constant [44 x i8] c"microsoft/maui/platform/MauiNavHostFragment\00", align 1
@.str.1026 = private unnamed_addr constant [65 x i8] c"crc6452ffdc5b34af3a0f/NavigationRootManager_ElementBasedFragment\00", align 1
@.str.1027 = private unnamed_addr constant [45 x i8] c"crc6452ffdc5b34af3a0f/NavigationViewFragment\00", align 1
@.str.1028 = private unnamed_addr constant [37 x i8] c"crc6452ffdc5b34af3a0f/ScopedFragment\00", align 1
@.str.1029 = private unnamed_addr constant [55 x i8] c"crc6452ffdc5b34af3a0f/StackNavigationManager_Callbacks\00", align 1
@.str.1030 = private unnamed_addr constant [35 x i8] c"crc6452ffdc5b34af3a0f/ViewFragment\00", align 1
@.str.1031 = private unnamed_addr constant [48 x i8] c"crc6452ffdc5b34af3a0f/PlatformTouchGraphicsView\00", align 1
@.str.1032 = private unnamed_addr constant [43 x i8] c"crc6452ffdc5b34af3a0f/StepperHandlerHolder\00", align 1
@.str.1033 = private unnamed_addr constant [60 x i8] c"crc6452ffdc5b34af3a0f/StepperHandlerManager_StepperListener\00", align 1
@.str.1034 = private unnamed_addr constant [37 x i8] c"crc6452ffdc5b34af3a0f/SwipeViewPager\00", align 1
@.str.1035 = private unnamed_addr constant [57 x i8] c"crc6452ffdc5b34af3a0f/WebViewExtensions_JavascriptResult\00", align 1
@.str.1036 = private unnamed_addr constant [34 x i8] c"crc6452ffdc5b34af3a0f/WrapperView\00", align 1
@.str.1037 = private unnamed_addr constant [56 x i8] c"crc64fcf28c0e24b4cc31/ButtonHandler_ButtonClickListener\00", align 1
@.str.1038 = private unnamed_addr constant [56 x i8] c"crc64fcf28c0e24b4cc31/ButtonHandler_ButtonTouchListener\00", align 1
@.str.1039 = private unnamed_addr constant [59 x i8] c"crc64fcf28c0e24b4cc31/SearchBarHandler_FocusChangeListener\00", align 1
@.str.1040 = private unnamed_addr constant [58 x i8] c"crc64fcf28c0e24b4cc31/SliderHandler_SeekBarChangeListener\00", align 1
@.str.1041 = private unnamed_addr constant [58 x i8] c"crc64fcf28c0e24b4cc31/SwitchHandler_CheckedChangeListener\00", align 1
@.str.1042 = private unnamed_addr constant [54 x i8] c"crc64fcf28c0e24b4cc31/ToolbarHandler_ProcessBackClick\00", align 1
@.str.1043 = private unnamed_addr constant [50 x i8] c"crc64b5e713d400f589b7/LinearGradientShaderFactory\00", align 1
@.str.1044 = private unnamed_addr constant [50 x i8] c"crc64b5e713d400f589b7/RadialGradientShaderFactory\00", align 1
@.str.1045 = private unnamed_addr constant [35 x i8] c"crc64b5e713d400f589b7/MauiDrawable\00", align 1
@.str.1046 = private unnamed_addr constant [59 x i8] c"crc64a096dc44ad241142/PlatformTicker_DurationScaleListener\00", align 1
@.str.1047 = private unnamed_addr constant [43 x i8] c"androidx/navigation/ui/AppBarConfiguration\00", align 1
@.str.1048 = private unnamed_addr constant [51 x i8] c"androidx/navigation/ui/AppBarConfiguration$Builder\00", align 1
@.str.1049 = private unnamed_addr constant [64 x i8] c"androidx/navigation/ui/AppBarConfiguration$OnNavigateUpListener\00", align 1
@.str.1050 = private unnamed_addr constant [36 x i8] c"androidx/navigation/ui/NavigationUI\00", align 1
@.str.1051 = private unnamed_addr constant [34 x i8] c"androidx/navigation/NavController\00", align 1
@.str.1052 = private unnamed_addr constant [63 x i8] c"androidx/navigation/NavController$OnDestinationChangedListener\00", align 1
@.str.1053 = private unnamed_addr constant [79 x i8] c"mono/androidx/navigation/NavController_OnDestinationChangedListenerImplementor\00", align 1
@.str.1054 = private unnamed_addr constant [39 x i8] c"androidx/navigation/NavDeepLinkBuilder\00", align 1
@.str.1055 = private unnamed_addr constant [38 x i8] c"androidx/navigation/NavHostController\00", align 1
@.str.1056 = private unnamed_addr constant [32 x i8] c"androidx/navigation/NavInflater\00", align 1
@.str.1057 = private unnamed_addr constant [47 x i8] c"androidx/recyclerview/widget/GridLayoutManager\00", align 1
@.str.1058 = private unnamed_addr constant [62 x i8] c"androidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup\00", align 1
@.str.1059 = private unnamed_addr constant [45 x i8] c"androidx/recyclerview/widget/ItemTouchUIUtil\00", align 1
@.str.1060 = private unnamed_addr constant [45 x i8] c"androidx/recyclerview/widget/ItemTouchHelper\00", align 1
@.str.1061 = private unnamed_addr constant [54 x i8] c"androidx/recyclerview/widget/ItemTouchHelper$Callback\00", align 1
@.str.1062 = private unnamed_addr constant [49 x i8] c"androidx/recyclerview/widget/LinearLayoutManager\00", align 1
@.str.1063 = private unnamed_addr constant [50 x i8] c"androidx/recyclerview/widget/LinearSmoothScroller\00", align 1
@.str.1064 = private unnamed_addr constant [46 x i8] c"androidx/recyclerview/widget/LinearSnapHelper\00", align 1
@.str.1065 = private unnamed_addr constant [47 x i8] c"androidx/recyclerview/widget/OrientationHelper\00", align 1
@.str.1066 = private unnamed_addr constant [45 x i8] c"androidx/recyclerview/widget/PagerSnapHelper\00", align 1
@.str.1067 = private unnamed_addr constant [42 x i8] c"androidx/recyclerview/widget/RecyclerView\00", align 1
@.str.1068 = private unnamed_addr constant [50 x i8] c"androidx/recyclerview/widget/RecyclerView$Adapter\00", align 1
@.str.1069 = private unnamed_addr constant [73 x i8] c"androidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy\00", align 1
@.str.1070 = private unnamed_addr constant [62 x i8] c"androidx/recyclerview/widget/RecyclerView$AdapterDataObserver\00", align 1
@.str.1071 = private unnamed_addr constant [68 x i8] c"androidx/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback\00", align 1
@.str.1072 = private unnamed_addr constant [60 x i8] c"androidx/recyclerview/widget/RecyclerView$EdgeEffectFactory\00", align 1
@.str.1073 = private unnamed_addr constant [55 x i8] c"androidx/recyclerview/widget/RecyclerView$ItemAnimator\00", align 1
@.str.1074 = private unnamed_addr constant [84 x i8] c"androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener\00", align 1
@.str.1075 = private unnamed_addr constant [70 x i8] c"androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo\00", align 1
@.str.1076 = private unnamed_addr constant [57 x i8] c"androidx/recyclerview/widget/RecyclerView$ItemDecoration\00", align 1
@.str.1077 = private unnamed_addr constant [56 x i8] c"androidx/recyclerview/widget/RecyclerView$LayoutManager\00", align 1
@.str.1078 = private unnamed_addr constant [79 x i8] c"androidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry\00", align 1
@.str.1079 = private unnamed_addr constant [67 x i8] c"androidx/recyclerview/widget/RecyclerView$LayoutManager$Properties\00", align 1
@.str.1080 = private unnamed_addr constant [55 x i8] c"androidx/recyclerview/widget/RecyclerView$LayoutParams\00", align 1
@.str.1081 = private unnamed_addr constant [75 x i8] c"androidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener\00", align 1
@.str.1082 = private unnamed_addr constant [91 x i8] c"mono/androidx/recyclerview/widget/RecyclerView_OnChildAttachStateChangeListenerImplementor\00", align 1
@.str.1083 = private unnamed_addr constant [58 x i8] c"androidx/recyclerview/widget/RecyclerView$OnFlingListener\00", align 1
@.str.1084 = private unnamed_addr constant [62 x i8] c"androidx/recyclerview/widget/RecyclerView$OnItemTouchListener\00", align 1
@.str.1085 = private unnamed_addr constant [78 x i8] c"mono/androidx/recyclerview/widget/RecyclerView_OnItemTouchListenerImplementor\00", align 1
@.str.1086 = private unnamed_addr constant [59 x i8] c"androidx/recyclerview/widget/RecyclerView$OnScrollListener\00", align 1
@.str.1087 = private unnamed_addr constant [59 x i8] c"androidx/recyclerview/widget/RecyclerView$RecycledViewPool\00", align 1
@.str.1088 = private unnamed_addr constant [51 x i8] c"androidx/recyclerview/widget/RecyclerView$Recycler\00", align 1
@.str.1089 = private unnamed_addr constant [59 x i8] c"androidx/recyclerview/widget/RecyclerView$RecyclerListener\00", align 1
@.str.1090 = private unnamed_addr constant [75 x i8] c"mono/androidx/recyclerview/widget/RecyclerView_RecyclerListenerImplementor\00", align 1
@.str.1091 = private unnamed_addr constant [57 x i8] c"androidx/recyclerview/widget/RecyclerView$SmoothScroller\00", align 1
@.str.1092 = private unnamed_addr constant [64 x i8] c"androidx/recyclerview/widget/RecyclerView$SmoothScroller$Action\00", align 1
@.str.1093 = private unnamed_addr constant [48 x i8] c"androidx/recyclerview/widget/RecyclerView$State\00", align 1
@.str.1094 = private unnamed_addr constant [61 x i8] c"androidx/recyclerview/widget/RecyclerView$ViewCacheExtension\00", align 1
@.str.1095 = private unnamed_addr constant [53 x i8] c"androidx/recyclerview/widget/RecyclerView$ViewHolder\00", align 1
@.str.1096 = private unnamed_addr constant [63 x i8] c"androidx/recyclerview/widget/RecyclerViewAccessibilityDelegate\00", align 1
@.str.1097 = private unnamed_addr constant [40 x i8] c"androidx/recyclerview/widget/SnapHelper\00", align 1
@.str.1098 = private unnamed_addr constant [39 x i8] c"androidx/savedstate/SavedStateRegistry\00", align 1
@.str.1099 = private unnamed_addr constant [58 x i8] c"androidx/savedstate/SavedStateRegistry$SavedStateProvider\00", align 1
@.str.1100 = private unnamed_addr constant [54 x i8] c"androidx/swiperefreshlayout/widget/SwipeRefreshLayout\00", align 1
@.str.1101 = private unnamed_addr constant [78 x i8] c"androidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnChildScrollUpCallback\00", align 1
@.str.1102 = private unnamed_addr constant [72 x i8] c"androidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener\00", align 1
@.str.1103 = private unnamed_addr constant [88 x i8] c"mono/androidx/swiperefreshlayout/widget/SwipeRefreshLayout_OnRefreshListenerImplementor\00", align 1
@.str.1104 = private unnamed_addr constant [38 x i8] c"androidx/viewpager2/widget/ViewPager2\00", align 1
@.str.1105 = private unnamed_addr constant [59 x i8] c"androidx/viewpager2/widget/ViewPager2$OnPageChangeCallback\00", align 1
@.str.1106 = private unnamed_addr constant [54 x i8] c"androidx/viewpager2/widget/ViewPager2$PageTransformer\00", align 1
@.str.1107 = private unnamed_addr constant [49 x i8] c"androidx/viewpager2/adapter/FragmentStateAdapter\00", align 1
@.str.1108 = private unnamed_addr constant [47 x i8] c"androidx/viewpager2/adapter/FragmentViewHolder\00", align 1
@.str.1109 = private unnamed_addr constant [38 x i8] c"androidx/camera/view/CameraController\00", align 1
@.str.1110 = private unnamed_addr constant [49 x i8] c"androidx/camera/view/CameraController$OutputSize\00", align 1
@.str.1111 = private unnamed_addr constant [33 x i8] c"androidx/camera/view/PreviewView\00", align 1
@.str.1112 = private unnamed_addr constant [52 x i8] c"androidx/camera/view/PreviewView$ImplementationMode\00", align 1
@.str.1113 = private unnamed_addr constant [43 x i8] c"androidx/camera/view/PreviewView$ScaleType\00", align 1
@.str.1114 = private unnamed_addr constant [48 x i8] c"androidx/camera/view/video/OnVideoSavedCallback\00", align 1
@.str.1115 = private unnamed_addr constant [36 x i8] c"androidx/camera/view/video/Metadata\00", align 1
@.str.1116 = private unnamed_addr constant [44 x i8] c"androidx/camera/view/video/Metadata$Builder\00", align 1
@.str.1117 = private unnamed_addr constant [45 x i8] c"androidx/camera/view/video/OutputFileOptions\00", align 1
@.str.1118 = private unnamed_addr constant [53 x i8] c"androidx/camera/view/video/OutputFileOptions$Builder\00", align 1
@.str.1119 = private unnamed_addr constant [45 x i8] c"androidx/camera/view/video/OutputFileResults\00", align 1
@.str.1120 = private unnamed_addr constant [47 x i8] c"androidx/camera/view/transform/OutputTransform\00", align 1
@.str.1121 = private unnamed_addr constant [52 x i8] c"androidx/security/crypto/EncryptedSharedPreferences\00", align 1
@.str.1122 = private unnamed_addr constant [76 x i8] c"androidx/security/crypto/EncryptedSharedPreferences$PrefKeyEncryptionScheme\00", align 1
@.str.1123 = private unnamed_addr constant [78 x i8] c"androidx/security/crypto/EncryptedSharedPreferences$PrefValueEncryptionScheme\00", align 1
@.str.1124 = private unnamed_addr constant [35 x i8] c"androidx/security/crypto/MasterKey\00", align 1
@.str.1125 = private unnamed_addr constant [43 x i8] c"androidx/security/crypto/MasterKey$Builder\00", align 1
@.str.1126 = private unnamed_addr constant [45 x i8] c"androidx/security/crypto/MasterKey$KeyScheme\00", align 1
@.str.1127 = private unnamed_addr constant [35 x i8] c"androidx/camera/core/ImageAnalysis\00", align 1
@.str.1128 = private unnamed_addr constant [43 x i8] c"androidx/camera/core/ImageAnalysis$Builder\00", align 1
@.str.1129 = private unnamed_addr constant [44 x i8] c"androidx/camera/core/ImageAnalysis$Analyzer\00", align 1
@.str.1130 = private unnamed_addr constant [44 x i8] c"androidx/camera/core/ImageAnalysis$Defaults\00", align 1
@.str.1131 = private unnamed_addr constant [34 x i8] c"androidx/camera/core/ImageCapture\00", align 1
@.str.1132 = private unnamed_addr constant [43 x i8] c"androidx/camera/core/ImageCapture$Defaults\00", align 1
@.str.1133 = private unnamed_addr constant [43 x i8] c"androidx/camera/core/ImageCapture$Metadata\00", align 1
@.str.1134 = private unnamed_addr constant [58 x i8] c"androidx/camera/core/ImageCapture$OnImageCapturedCallback\00", align 1
@.str.1135 = private unnamed_addr constant [55 x i8] c"androidx/camera/core/ImageCapture$OnImageSavedCallback\00", align 1
@.str.1136 = private unnamed_addr constant [52 x i8] c"androidx/camera/core/ImageCapture$OutputFileOptions\00", align 1
@.str.1137 = private unnamed_addr constant [52 x i8] c"androidx/camera/core/ImageCapture$OutputFileResults\00", align 1
@.str.1138 = private unnamed_addr constant [29 x i8] c"androidx/camera/core/Preview\00", align 1
@.str.1139 = private unnamed_addr constant [37 x i8] c"androidx/camera/core/Preview$Builder\00", align 1
@.str.1140 = private unnamed_addr constant [38 x i8] c"androidx/camera/core/Preview$Defaults\00", align 1
@.str.1141 = private unnamed_addr constant [45 x i8] c"androidx/camera/core/Preview$SurfaceProvider\00", align 1
@.str.1142 = private unnamed_addr constant [34 x i8] c"androidx/camera/core/VideoCapture\00", align 1
@.str.1143 = private unnamed_addr constant [43 x i8] c"androidx/camera/core/VideoCapture$Defaults\00", align 1
@.str.1144 = private unnamed_addr constant [55 x i8] c"androidx/camera/core/VideoCapture$OnVideoSavedCallback\00", align 1
@.str.1145 = private unnamed_addr constant [52 x i8] c"androidx/camera/core/VideoCapture$OutputFileOptions\00", align 1
@.str.1146 = private unnamed_addr constant [52 x i8] c"androidx/camera/core/VideoCapture$OutputFileResults\00", align 1
@.str.1147 = private unnamed_addr constant [36 x i8] c"androidx/camera/core/CameraSelector\00", align 1
@.str.1148 = private unnamed_addr constant [35 x i8] c"androidx/camera/core/CameraXConfig\00", align 1
@.str.1149 = private unnamed_addr constant [41 x i8] c"androidx/camera/core/FocusMeteringAction\00", align 1
@.str.1150 = private unnamed_addr constant [28 x i8] c"androidx/camera/core/Camera\00", align 1
@.str.1151 = private unnamed_addr constant [35 x i8] c"androidx/camera/core/CameraControl\00", align 1
@.str.1152 = private unnamed_addr constant [32 x i8] c"androidx/camera/core/CameraInfo\00", align 1
@.str.1153 = private unnamed_addr constant [35 x i8] c"androidx/camera/core/ExposureState\00", align 1
@.str.1154 = private unnamed_addr constant [39 x i8] c"androidx/camera/core/ExtendableBuilder\00", align 1
@.str.1155 = private unnamed_addr constant [31 x i8] c"androidx/camera/core/ImageInfo\00", align 1
@.str.1156 = private unnamed_addr constant [43 x i8] c"androidx/camera/core/ImageProxy$PlaneProxy\00", align 1
@.str.1157 = private unnamed_addr constant [32 x i8] c"androidx/camera/core/ImageProxy\00", align 1
@.str.1158 = private unnamed_addr constant [46 x i8] c"androidx/camera/core/ImageReaderProxyProvider\00", align 1
@.str.1159 = private unnamed_addr constant [43 x i8] c"androidx/camera/core/ImageCaptureException\00", align 1
@.str.1160 = private unnamed_addr constant [35 x i8] c"androidx/camera/core/MeteringPoint\00", align 1
@.str.1161 = private unnamed_addr constant [42 x i8] c"androidx/camera/core/MeteringPointFactory\00", align 1
@.str.1162 = private unnamed_addr constant [36 x i8] c"androidx/camera/core/ResolutionInfo\00", align 1
@.str.1163 = private unnamed_addr constant [36 x i8] c"androidx/camera/core/SurfaceRequest\00", align 1
@.str.1164 = private unnamed_addr constant [55 x i8] c"androidx/camera/core/SurfaceRequest$TransformationInfo\00", align 1
@.str.1165 = private unnamed_addr constant [63 x i8] c"androidx/camera/core/SurfaceRequest$TransformationInfoListener\00", align 1
@.str.1166 = private unnamed_addr constant [29 x i8] c"androidx/camera/core/UseCase\00", align 1
@.str.1167 = private unnamed_addr constant [43 x i8] c"androidx/camera/core/UseCase$EventCallback\00", align 1
@.str.1168 = private unnamed_addr constant [49 x i8] c"androidx/camera/core/UseCase$StateChangeCallback\00", align 1
@.str.1169 = private unnamed_addr constant [34 x i8] c"androidx/camera/core/UseCaseGroup\00", align 1
@.str.1170 = private unnamed_addr constant [30 x i8] c"androidx/camera/core/ViewPort\00", align 1
@.str.1171 = private unnamed_addr constant [51 x i8] c"androidx/camera/core/internal/TargetConfig$Builder\00", align 1
@.str.1172 = private unnamed_addr constant [43 x i8] c"androidx/camera/core/internal/TargetConfig\00", align 1
@.str.1173 = private unnamed_addr constant [51 x i8] c"androidx/camera/core/internal/ThreadConfig$Builder\00", align 1
@.str.1174 = private unnamed_addr constant [57 x i8] c"androidx/camera/core/internal/UseCaseEventConfig$Builder\00", align 1
@.str.1175 = private unnamed_addr constant [49 x i8] c"androidx/camera/core/internal/UseCaseEventConfig\00", align 1
@.str.1176 = private unnamed_addr constant [48 x i8] c"androidx/camera/core/impl/CamcorderProfileProxy\00", align 1
@.str.1177 = private unnamed_addr constant [48 x i8] c"androidx/camera/core/impl/CameraCaptureCallback\00", align 1
@.str.1178 = private unnamed_addr constant [47 x i8] c"androidx/camera/core/impl/CameraCaptureFailure\00", align 1
@.str.1179 = private unnamed_addr constant [54 x i8] c"androidx/camera/core/impl/CameraCaptureFailure$Reason\00", align 1
@.str.1180 = private unnamed_addr constant [48 x i8] c"androidx/camera/core/impl/CameraCaptureMetaData\00", align 1
@.str.1181 = private unnamed_addr constant [56 x i8] c"androidx/camera/core/impl/CameraCaptureMetaData$AeState\00", align 1
@.str.1182 = private unnamed_addr constant [55 x i8] c"androidx/camera/core/impl/CameraCaptureMetaData$AfMode\00", align 1
@.str.1183 = private unnamed_addr constant [56 x i8] c"androidx/camera/core/impl/CameraCaptureMetaData$AfState\00", align 1
@.str.1184 = private unnamed_addr constant [57 x i8] c"androidx/camera/core/impl/CameraCaptureMetaData$AwbState\00", align 1
@.str.1185 = private unnamed_addr constant [59 x i8] c"androidx/camera/core/impl/CameraCaptureMetaData$FlashState\00", align 1
@.str.1186 = private unnamed_addr constant [45 x i8] c"androidx/camera/core/impl/CameraThreadConfig\00", align 1
@.str.1187 = private unnamed_addr constant [40 x i8] c"androidx/camera/core/impl/CaptureConfig\00", align 1
@.str.1188 = private unnamed_addr constant [48 x i8] c"androidx/camera/core/impl/CaptureConfig$Builder\00", align 1
@.str.1189 = private unnamed_addr constant [55 x i8] c"androidx/camera/core/impl/CaptureConfig$OptionUnpacker\00", align 1
@.str.1190 = private unnamed_addr constant [44 x i8] c"androidx/camera/core/impl/DeferrableSurface\00", align 1
@.str.1191 = private unnamed_addr constant [51 x i8] c"androidx/camera/core/impl/CamcorderProfileProvider\00", align 1
@.str.1192 = private unnamed_addr constant [46 x i8] c"androidx/camera/core/impl/CameraCaptureResult\00", align 1
@.str.1193 = private unnamed_addr constant [39 x i8] c"androidx/camera/core/impl/CameraConfig\00", align 1
@.str.1194 = private unnamed_addr constant [48 x i8] c"androidx/camera/core/impl/CameraControlInternal\00", align 1
@.str.1195 = private unnamed_addr constant [62 x i8] c"androidx/camera/core/impl/CameraDeviceSurfaceManager$Provider\00", align 1
@.str.1196 = private unnamed_addr constant [53 x i8] c"androidx/camera/core/impl/CameraDeviceSurfaceManager\00", align 1
@.str.1197 = private unnamed_addr constant [49 x i8] c"androidx/camera/core/impl/CameraFactory$Provider\00", align 1
@.str.1198 = private unnamed_addr constant [40 x i8] c"androidx/camera/core/impl/CameraFactory\00", align 1
@.str.1199 = private unnamed_addr constant [45 x i8] c"androidx/camera/core/impl/CameraInfoInternal\00", align 1
@.str.1200 = private unnamed_addr constant [41 x i8] c"androidx/camera/core/impl/CameraInternal\00", align 1
@.str.1201 = private unnamed_addr constant [40 x i8] c"androidx/camera/core/impl/CaptureBundle\00", align 1
@.str.1202 = private unnamed_addr constant [43 x i8] c"androidx/camera/core/impl/CaptureProcessor\00", align 1
@.str.1203 = private unnamed_addr constant [39 x i8] c"androidx/camera/core/impl/CaptureStage\00", align 1
@.str.1204 = private unnamed_addr constant [40 x i8] c"androidx/camera/core/impl/Config$Option\00", align 1
@.str.1205 = private unnamed_addr constant [47 x i8] c"androidx/camera/core/impl/Config$OptionMatcher\00", align 1
@.str.1206 = private unnamed_addr constant [48 x i8] c"androidx/camera/core/impl/Config$OptionPriority\00", align 1
@.str.1207 = private unnamed_addr constant [33 x i8] c"androidx/camera/core/impl/Config\00", align 1
@.str.1208 = private unnamed_addr constant [41 x i8] c"androidx/camera/core/impl/ConfigProvider\00", align 1
@.str.1209 = private unnamed_addr constant [37 x i8] c"androidx/camera/core/impl/Identifier\00", align 1
@.str.1210 = private unnamed_addr constant [45 x i8] c"androidx/camera/core/impl/ImageInfoProcessor\00", align 1
@.str.1211 = private unnamed_addr constant [43 x i8] c"androidx/camera/core/impl/ImageInputConfig\00", align 1
@.str.1212 = private unnamed_addr constant [52 x i8] c"androidx/camera/core/impl/ImageOutputConfig$Builder\00", align 1
@.str.1213 = private unnamed_addr constant [43 x i8] c"androidx/camera/core/impl/ImageProxyBundle\00", align 1
@.str.1214 = private unnamed_addr constant [68 x i8] c"androidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener\00", align 1
@.str.1215 = private unnamed_addr constant [43 x i8] c"androidx/camera/core/impl/ImageReaderProxy\00", align 1
@.str.1216 = private unnamed_addr constant [46 x i8] c"androidx/camera/core/impl/ImageAnalysisConfig\00", align 1
@.str.1217 = private unnamed_addr constant [45 x i8] c"androidx/camera/core/impl/ImageCaptureConfig\00", align 1
@.str.1218 = private unnamed_addr constant [40 x i8] c"androidx/camera/core/impl/MutableConfig\00", align 1
@.str.1219 = private unnamed_addr constant [46 x i8] c"androidx/camera/core/impl/Observable$Observer\00", align 1
@.str.1220 = private unnamed_addr constant [37 x i8] c"androidx/camera/core/impl/Observable\00", align 1
@.str.1221 = private unnamed_addr constant [32 x i8] c"androidx/camera/core/impl/Quirk\00", align 1
@.str.1222 = private unnamed_addr constant [41 x i8] c"androidx/camera/core/impl/ReadableConfig\00", align 1
@.str.1223 = private unnamed_addr constant [48 x i8] c"androidx/camera/core/impl/UseCaseConfig$Builder\00", align 1
@.str.1224 = private unnamed_addr constant [40 x i8] c"androidx/camera/core/impl/UseCaseConfig\00", align 1
@.str.1225 = private unnamed_addr constant [59 x i8] c"androidx/camera/core/impl/UseCaseConfigFactory$CaptureType\00", align 1
@.str.1226 = private unnamed_addr constant [56 x i8] c"androidx/camera/core/impl/UseCaseConfigFactory$Provider\00", align 1
@.str.1227 = private unnamed_addr constant [47 x i8] c"androidx/camera/core/impl/UseCaseConfigFactory\00", align 1
@.str.1228 = private unnamed_addr constant [40 x i8] c"androidx/camera/core/impl/OptionsBundle\00", align 1
@.str.1229 = private unnamed_addr constant [40 x i8] c"androidx/camera/core/impl/PreviewConfig\00", align 1
@.str.1230 = private unnamed_addr constant [33 x i8] c"androidx/camera/core/impl/Quirks\00", align 1
@.str.1231 = private unnamed_addr constant [40 x i8] c"androidx/camera/core/impl/SessionConfig\00", align 1
@.str.1232 = private unnamed_addr constant [48 x i8] c"androidx/camera/core/impl/SessionConfig$Builder\00", align 1
@.str.1233 = private unnamed_addr constant [54 x i8] c"androidx/camera/core/impl/SessionConfig$ErrorListener\00", align 1
@.str.1234 = private unnamed_addr constant [70 x i8] c"mono/androidx/camera/core/impl/SessionConfig_ErrorListenerImplementor\00", align 1
@.str.1235 = private unnamed_addr constant [55 x i8] c"androidx/camera/core/impl/SessionConfig$OptionUnpacker\00", align 1
@.str.1236 = private unnamed_addr constant [53 x i8] c"androidx/camera/core/impl/SessionConfig$SessionError\00", align 1
@.str.1237 = private unnamed_addr constant [40 x i8] c"androidx/camera/core/impl/SurfaceConfig\00", align 1
@.str.1238 = private unnamed_addr constant [51 x i8] c"androidx/camera/core/impl/SurfaceConfig$ConfigSize\00", align 1
@.str.1239 = private unnamed_addr constant [51 x i8] c"androidx/camera/core/impl/SurfaceConfig$ConfigType\00", align 1
@.str.1240 = private unnamed_addr constant [36 x i8] c"androidx/camera/core/impl/TagBundle\00", align 1
@.str.1241 = private unnamed_addr constant [45 x i8] c"androidx/camera/core/impl/VideoCaptureConfig\00", align 1
@.str.1242 = private unnamed_addr constant [41 x i8] c"androidx/camera/core/impl/utils/ExifData\00", align 1
@.str.1243 = private unnamed_addr constant [49 x i8] c"androidx/camera/core/impl/utils/ExifData$Builder\00", align 1
@.str.1244 = private unnamed_addr constant [58 x i8] c"androidx/camera/core/impl/utils/ExifData$WhiteBalanceMode\00", align 1
@.str.1245 = private unnamed_addr constant [38 x i8] c"androidx/collection/SparseArrayCompat\00", align 1
@.str.1246 = private unnamed_addr constant [59 x i8] c"androidx/appcompat/graphics/drawable/DrawableWrapperCompat\00", align 1
@.str.1247 = private unnamed_addr constant [50 x i8] c"androidx/appcompat/content/res/AppCompatResources\00", align 1

;TypeMapModule
@.TypeMapModule.0_assembly_name = private unnamed_addr constant [32 x i8] c"Xamarin.Google.Android.Material\00", align 1
@.TypeMapModule.1_assembly_name = private unnamed_addr constant [41 x i8] c"Xamarin.AndroidX.Lifecycle.LiveData.Core\00", align 1
@.TypeMapModule.2_assembly_name = private unnamed_addr constant [35 x i8] c"Xamarin.Google.Crypto.Tink.Android\00", align 1
@.TypeMapModule.3_assembly_name = private unnamed_addr constant [27 x i8] c"Xamarin.AndroidX.ViewPager\00", align 1
@.TypeMapModule.4_assembly_name = private unnamed_addr constant [36 x i8] c"Xamarin.KotlinX.Coroutines.Core.Jvm\00", align 1
@.TypeMapModule.5_assembly_name = private unnamed_addr constant [22 x i8] c"Xamarin.Kotlin.StdLib\00", align 1
@.TypeMapModule.6_assembly_name = private unnamed_addr constant [22 x i8] c"CommunityToolkit.Maui\00", align 1
@.TypeMapModule.7_assembly_name = private unnamed_addr constant [15 x i8] c"ZXing.Net.MAUI\00", align 1
@.TypeMapModule.8_assembly_name = private unnamed_addr constant [24 x i8] c"Xamarin.AndroidX.Loader\00", align 1
@.TypeMapModule.9_assembly_name = private unnamed_addr constant [30 x i8] c"Xamarin.AndroidX.DrawerLayout\00", align 1
@.TypeMapModule.10_assembly_name = private unnamed_addr constant [31 x i8] c"Xamarin.AndroidX.CursorAdapter\00", align 1
@.TypeMapModule.11_assembly_name = private unnamed_addr constant [26 x i8] c"Xamarin.AndroidX.Activity\00", align 1
@.TypeMapModule.12_assembly_name = private unnamed_addr constant [34 x i8] c"Xamarin.AndroidX.Lifecycle.Common\00", align 1
@.TypeMapModule.13_assembly_name = private unnamed_addr constant [27 x i8] c"Xamarin.AndroidX.AppCompat\00", align 1
@.TypeMapModule.14_assembly_name = private unnamed_addr constant [24 x i8] c"Microsoft.Maui.Graphics\00", align 1
@.TypeMapModule.15_assembly_name = private unnamed_addr constant [34 x i8] c"Xamarin.AndroidX.Camera.Lifecycle\00", align 1
@.TypeMapModule.16_assembly_name = private unnamed_addr constant [27 x i8] c"CommunityToolkit.Maui.Core\00", align 1
@.TypeMapModule.17_assembly_name = private unnamed_addr constant [22 x i8] c"Xamarin.AndroidX.Core\00", align 1
@.TypeMapModule.18_assembly_name = private unnamed_addr constant [13 x i8] c"Mono.Android\00", align 1
@.TypeMapModule.19_assembly_name = private unnamed_addr constant [37 x i8] c"Xamarin.AndroidX.Navigation.Fragment\00", align 1
@.TypeMapModule.20_assembly_name = private unnamed_addr constant [35 x i8] c"Xamarin.AndroidX.CoordinatorLayout\00", align 1
@.TypeMapModule.21_assembly_name = private unnamed_addr constant [38 x i8] c"Microsoft.Maui.Controls.Compatibility\00", align 1
@.TypeMapModule.22_assembly_name = private unnamed_addr constant [37 x i8] c"Xamarin.AndroidX.Lifecycle.ViewModel\00", align 1
@.TypeMapModule.23_assembly_name = private unnamed_addr constant [26 x i8] c"Xamarin.AndroidX.CardView\00", align 1
@.TypeMapModule.24_assembly_name = private unnamed_addr constant [26 x i8] c"Microsoft.Maui.Essentials\00", align 1
@.TypeMapModule.25_assembly_name = private unnamed_addr constant [24 x i8] c"Microsoft.Maui.Controls\00", align 1
@.TypeMapModule.26_assembly_name = private unnamed_addr constant [11 x i8] c"Mobile App\00", align 1
@.TypeMapModule.27_assembly_name = private unnamed_addr constant [35 x i8] c"Xamarin.AndroidX.Navigation.Common\00", align 1
@.TypeMapModule.28_assembly_name = private unnamed_addr constant [38 x i8] c"Xamarin.Google.Guava.ListenableFuture\00", align 1
@.TypeMapModule.29_assembly_name = private unnamed_addr constant [47 x i8] c"Xamarin.AndroidX.Lifecycle.ViewModelSavedState\00", align 1
@.TypeMapModule.30_assembly_name = private unnamed_addr constant [26 x i8] c"Xamarin.AndroidX.Fragment\00", align 1
@.TypeMapModule.31_assembly_name = private unnamed_addr constant [28 x i8] c"Xamarin.AndroidX.CustomView\00", align 1
@.TypeMapModule.32_assembly_name = private unnamed_addr constant [15 x i8] c"Microsoft.Maui\00", align 1
@.TypeMapModule.33_assembly_name = private unnamed_addr constant [31 x i8] c"Xamarin.AndroidX.Navigation.UI\00", align 1
@.TypeMapModule.34_assembly_name = private unnamed_addr constant [36 x i8] c"Xamarin.AndroidX.Navigation.Runtime\00", align 1
@.TypeMapModule.35_assembly_name = private unnamed_addr constant [30 x i8] c"Xamarin.AndroidX.RecyclerView\00", align 1
@.TypeMapModule.36_assembly_name = private unnamed_addr constant [28 x i8] c"Xamarin.AndroidX.SavedState\00", align 1
@.TypeMapModule.37_assembly_name = private unnamed_addr constant [36 x i8] c"Xamarin.AndroidX.SwipeRefreshLayout\00", align 1
@.TypeMapModule.38_assembly_name = private unnamed_addr constant [28 x i8] c"Xamarin.AndroidX.ViewPager2\00", align 1
@.TypeMapModule.39_assembly_name = private unnamed_addr constant [29 x i8] c"Xamarin.AndroidX.Camera.View\00", align 1
@.TypeMapModule.40_assembly_name = private unnamed_addr constant [41 x i8] c"Xamarin.AndroidX.Security.SecurityCrypto\00", align 1
@.TypeMapModule.41_assembly_name = private unnamed_addr constant [29 x i8] c"Xamarin.AndroidX.Camera.Core\00", align 1
@.TypeMapModule.42_assembly_name = private unnamed_addr constant [28 x i8] c"Xamarin.AndroidX.Collection\00", align 1
@.TypeMapModule.43_assembly_name = private unnamed_addr constant [46 x i8] c"Xamarin.AndroidX.AppCompat.AppCompatResources\00", align 1

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.4xx @ df9aaf29a52042a4fbf800daf2f3a38964b9e958"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"min_enum_size", i32 4}
