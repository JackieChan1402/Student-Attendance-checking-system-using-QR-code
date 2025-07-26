; ModuleID = 'marshal_methods.x86.ll'
source_filename = "marshal_methods.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [145 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [290 x i32] [
	i32 34715100, ; 0: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 83
	i32 39109920, ; 1: Newtonsoft.Json.dll => 0x254c520 => 51
	i32 40744412, ; 2: Xamarin.AndroidX.Camera.Lifecycle.dll => 0x26db5dc => 56
	i32 42639949, ; 3: System.Threading.Thread => 0x28aa24d => 134
	i32 67008169, ; 4: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 33
	i32 72070932, ; 5: Microsoft.Maui.Graphics.dll => 0x44bb714 => 50
	i32 117431740, ; 6: System.Runtime.InteropServices => 0x6ffddbc => 123
	i32 165246403, ; 7: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 59
	i32 182336117, ; 8: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 78
	i32 195452805, ; 9: vi/Microsoft.Maui.Controls.resources.dll => 0xba65f85 => 30
	i32 199333315, ; 10: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xbe195c3 => 31
	i32 205061960, ; 11: System.ComponentModel => 0xc38ff48 => 98
	i32 230752869, ; 12: Microsoft.CSharp.dll => 0xdc10265 => 90
	i32 246610117, ; 13: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 121
	i32 280992041, ; 14: cs/Microsoft.Maui.Controls.resources.dll => 0x10bf9929 => 2
	i32 317674968, ; 15: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 30
	i32 318968648, ; 16: Xamarin.AndroidX.Activity.dll => 0x13031348 => 52
	i32 336156722, ; 17: ja/Microsoft.Maui.Controls.resources.dll => 0x14095832 => 15
	i32 342366114, ; 18: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 66
	i32 356389973, ; 19: it/Microsoft.Maui.Controls.resources.dll => 0x153e1455 => 14
	i32 379916513, ; 20: System.Threading.Thread.dll => 0x16a510e1 => 134
	i32 384359858, ; 21: Mobile App.dll => 0x16e8ddb2 => 89
	i32 385762202, ; 22: System.Memory.dll => 0x16fe439a => 109
	i32 395744057, ; 23: _Microsoft.Android.Resource.Designer => 0x17969339 => 34
	i32 435591531, ; 24: sv/Microsoft.Maui.Controls.resources.dll => 0x19f6996b => 26
	i32 442565967, ; 25: System.Collections => 0x1a61054f => 95
	i32 450948140, ; 26: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 65
	i32 456227837, ; 27: System.Web.HttpUtility.dll => 0x1b317bfd => 136
	i32 459347974, ; 28: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 127
	i32 469710990, ; 29: System.dll => 0x1bff388e => 140
	i32 498788369, ; 30: System.ObjectModel => 0x1dbae811 => 116
	i32 500358224, ; 31: id/Microsoft.Maui.Controls.resources.dll => 0x1dd2dc50 => 13
	i32 503918385, ; 32: fi/Microsoft.Maui.Controls.resources.dll => 0x1e092f31 => 7
	i32 513247710, ; 33: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 44
	i32 539058512, ; 34: Microsoft.Extensions.Logging => 0x20216150 => 41
	i32 592146354, ; 35: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x234b6fb2 => 21
	i32 597488923, ; 36: CommunityToolkit.Maui => 0x239cf51b => 35
	i32 627609679, ; 37: Xamarin.AndroidX.CustomView => 0x2568904f => 63
	i32 627931235, ; 38: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 19
	i32 662205335, ; 39: System.Text.Encodings.Web.dll => 0x27787397 => 131
	i32 672442732, ; 40: System.Collections.Concurrent => 0x2814a96c => 91
	i32 688181140, ; 41: ca/Microsoft.Maui.Controls.resources.dll => 0x2904cf94 => 1
	i32 690569205, ; 42: System.Xml.Linq.dll => 0x29293ff5 => 137
	i32 706645707, ; 43: ko/Microsoft.Maui.Controls.resources.dll => 0x2a1e8ecb => 16
	i32 709557578, ; 44: de/Microsoft.Maui.Controls.resources.dll => 0x2a4afd4a => 4
	i32 722857257, ; 45: System.Runtime.Loader.dll => 0x2b15ed29 => 124
	i32 759454413, ; 46: System.Net.Requests => 0x2d445acd => 114
	i32 775507847, ; 47: System.IO.Compression => 0x2e394f87 => 106
	i32 777317022, ; 48: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 25
	i32 789151979, ; 49: Microsoft.Extensions.Options => 0x2f0980eb => 43
	i32 804715423, ; 50: System.Data.Common => 0x2ff6fb9f => 100
	i32 823281589, ; 51: System.Private.Uri.dll => 0x311247b5 => 117
	i32 830298997, ; 52: System.IO.Compression.Brotli => 0x317d5b75 => 105
	i32 839353180, ; 53: ZXing.Net.MAUI.Controls.dll => 0x3207835c => 88
	i32 865465478, ; 54: zxing.dll => 0x3395f486 => 86
	i32 878954865, ; 55: System.Net.Http.Json => 0x3463c971 => 110
	i32 904024072, ; 56: System.ComponentModel.Primitives.dll => 0x35e25008 => 96
	i32 926902833, ; 57: tr/Microsoft.Maui.Controls.resources.dll => 0x373f6a31 => 28
	i32 928116545, ; 58: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 83
	i32 955402788, ; 59: Newtonsoft.Json => 0x38f24a24 => 51
	i32 966729478, ; 60: Xamarin.Google.Crypto.Tink.Android => 0x399f1f06 => 82
	i32 967690846, ; 61: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 66
	i32 975874589, ; 62: System.Xml.XDocument => 0x3a2aaa1d => 139
	i32 992768348, ; 63: System.Collections.dll => 0x3b2c715c => 95
	i32 1012816738, ; 64: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 76
	i32 1019214401, ; 65: System.Drawing => 0x3cbffa41 => 104
	i32 1028951442, ; 66: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 40
	i32 1029334545, ; 67: da/Microsoft.Maui.Controls.resources.dll => 0x3d5a6611 => 3
	i32 1035644815, ; 68: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 53
	i32 1036536393, ; 69: System.Drawing.Primitives.dll => 0x3dc84a49 => 103
	i32 1044663988, ; 70: System.Linq.Expressions.dll => 0x3e444eb4 => 107
	i32 1052210849, ; 71: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 68
	i32 1082857460, ; 72: System.ComponentModel.TypeConverter => 0x408b17f4 => 97
	i32 1084122840, ; 73: Xamarin.Kotlin.StdLib => 0x409e66d8 => 84
	i32 1098259244, ; 74: System => 0x41761b2c => 140
	i32 1118262833, ; 75: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 16
	i32 1168523401, ; 76: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 22
	i32 1178241025, ; 77: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 73
	i32 1203215381, ; 78: pl/Microsoft.Maui.Controls.resources.dll => 0x47b79c15 => 20
	i32 1234928153, ; 79: nb/Microsoft.Maui.Controls.resources.dll => 0x499b8219 => 18
	i32 1260983243, ; 80: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 2
	i32 1293217323, ; 81: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 64
	i32 1324164729, ; 82: System.Linq => 0x4eed2679 => 108
	i32 1373134921, ; 83: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 32
	i32 1376866003, ; 84: Xamarin.AndroidX.SavedState => 0x52114ed3 => 76
	i32 1406073936, ; 85: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 60
	i32 1408764838, ; 86: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 126
	i32 1430672901, ; 87: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 0
	i32 1435222561, ; 88: Xamarin.Google.Crypto.Tink.Android.dll => 0x558bc221 => 82
	i32 1461004990, ; 89: es\Microsoft.Maui.Controls.resources => 0x57152abe => 6
	i32 1461234159, ; 90: System.Collections.Immutable.dll => 0x5718a9ef => 92
	i32 1462112819, ; 91: System.IO.Compression.dll => 0x57261233 => 106
	i32 1469204771, ; 92: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 54
	i32 1470490898, ; 93: Microsoft.Extensions.Primitives => 0x57a5e912 => 44
	i32 1479771757, ; 94: System.Collections.Immutable => 0x5833866d => 92
	i32 1480492111, ; 95: System.IO.Compression.Brotli.dll => 0x583e844f => 105
	i32 1493001747, ; 96: hi/Microsoft.Maui.Controls.resources.dll => 0x58fd6613 => 10
	i32 1514721132, ; 97: el/Microsoft.Maui.Controls.resources.dll => 0x5a48cf6c => 5
	i32 1543031311, ; 98: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 133
	i32 1551623176, ; 99: sk/Microsoft.Maui.Controls.resources.dll => 0x5c7be408 => 25
	i32 1622152042, ; 100: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 70
	i32 1624863272, ; 101: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 80
	i32 1634654947, ; 102: CommunityToolkit.Maui.Core.dll => 0x616edae3 => 36
	i32 1636350590, ; 103: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 62
	i32 1639515021, ; 104: System.Net.Http.dll => 0x61b9038d => 111
	i32 1639986890, ; 105: System.Text.RegularExpressions => 0x61c036ca => 133
	i32 1657153582, ; 106: System.Runtime => 0x62c6282e => 128
	i32 1658251792, ; 107: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 81
	i32 1677501392, ; 108: System.Net.Primitives.dll => 0x63fca3d0 => 113
	i32 1679769178, ; 109: System.Security.Cryptography => 0x641f3e5a => 129
	i32 1729485958, ; 110: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 58
	i32 1736233607, ; 111: ro/Microsoft.Maui.Controls.resources.dll => 0x677cd287 => 23
	i32 1743415430, ; 112: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 1
	i32 1763938596, ; 113: System.Diagnostics.TraceSource.dll => 0x69239124 => 102
	i32 1766324549, ; 114: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 78
	i32 1770582343, ; 115: Microsoft.Extensions.Logging.dll => 0x6988f147 => 41
	i32 1780572499, ; 116: Mono.Android.Runtime.dll => 0x6a216153 => 143
	i32 1782862114, ; 117: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 17
	i32 1788241197, ; 118: Xamarin.AndroidX.Fragment => 0x6a96652d => 65
	i32 1793755602, ; 119: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 9
	i32 1808609942, ; 120: Xamarin.AndroidX.Loader => 0x6bcd3296 => 70
	i32 1813058853, ; 121: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 84
	i32 1813201214, ; 122: Xamarin.Google.Android.Material => 0x6c13413e => 81
	i32 1818569960, ; 123: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 74
	i32 1824175904, ; 124: System.Text.Encoding.Extensions => 0x6cbab720 => 130
	i32 1824722060, ; 125: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 126
	i32 1828688058, ; 126: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 42
	i32 1842015223, ; 127: uk/Microsoft.Maui.Controls.resources.dll => 0x6dcaebf7 => 29
	i32 1853025655, ; 128: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 26
	i32 1858542181, ; 129: System.Linq.Expressions => 0x6ec71a65 => 107
	i32 1870277092, ; 130: System.Reflection.Primitives => 0x6f7a29e4 => 122
	i32 1875935024, ; 131: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 8
	i32 1910275211, ; 132: System.Collections.NonGeneric.dll => 0x71dc7c8b => 93
	i32 1939592360, ; 133: System.Private.Xml.Linq => 0x739bd4a8 => 118
	i32 1961813231, ; 134: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x74eee4ef => 77
	i32 1968388702, ; 135: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 37
	i32 2003115576, ; 136: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 5
	i32 2019465201, ; 137: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 68
	i32 2025202353, ; 138: ar/Microsoft.Maui.Controls.resources.dll => 0x78b622b1 => 0
	i32 2045470958, ; 139: System.Private.Xml => 0x79eb68ee => 119
	i32 2055257422, ; 140: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 67
	i32 2066184531, ; 141: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 4
	i32 2070888862, ; 142: System.Diagnostics.TraceSource => 0x7b6f419e => 102
	i32 2079903147, ; 143: System.Runtime.dll => 0x7bf8cdab => 128
	i32 2090596640, ; 144: System.Numerics.Vectors => 0x7c9bf920 => 115
	i32 2127167465, ; 145: System.Console => 0x7ec9ffe9 => 99
	i32 2142473426, ; 146: System.Collections.Specialized => 0x7fb38cd2 => 94
	i32 2159891885, ; 147: Microsoft.Maui => 0x80bd55ad => 48
	i32 2169148018, ; 148: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 12
	i32 2181898931, ; 149: Microsoft.Extensions.Options.dll => 0x820d22b3 => 43
	i32 2192057212, ; 150: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 42
	i32 2193016926, ; 151: System.ObjectModel.dll => 0x82b6c85e => 116
	i32 2201107256, ; 152: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 85
	i32 2201231467, ; 153: System.Net.Http => 0x8334206b => 111
	i32 2207618523, ; 154: it\Microsoft.Maui.Controls.resources => 0x839595db => 14
	i32 2266799131, ; 155: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 38
	i32 2270573516, ; 156: fr/Microsoft.Maui.Controls.resources.dll => 0x875633cc => 8
	i32 2279755925, ; 157: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 75
	i32 2298471582, ; 158: System.Net.Mail => 0x88ffe49e => 112
	i32 2303942373, ; 159: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 18
	i32 2305521784, ; 160: System.Private.CoreLib.dll => 0x896b7878 => 141
	i32 2353062107, ; 161: System.Net.Primitives => 0x8c40e0db => 113
	i32 2368005991, ; 162: System.Xml.ReaderWriter.dll => 0x8d24e767 => 138
	i32 2371007202, ; 163: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 37
	i32 2395872292, ; 164: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 13
	i32 2401565422, ; 165: System.Web.HttpUtility => 0x8f24faee => 136
	i32 2427813419, ; 166: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 10
	i32 2435356389, ; 167: System.Console.dll => 0x912896e5 => 99
	i32 2475788418, ; 168: Java.Interop.dll => 0x93918882 => 142
	i32 2480646305, ; 169: Microsoft.Maui.Controls => 0x93dba8a1 => 46
	i32 2538310050, ; 170: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 121
	i32 2550873716, ; 171: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 11
	i32 2562349572, ; 172: Microsoft.CSharp => 0x98ba5a04 => 90
	i32 2570120770, ; 173: System.Text.Encodings.Web => 0x9930ee42 => 131
	i32 2585220780, ; 174: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 130
	i32 2593496499, ; 175: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 20
	i32 2605712449, ; 176: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 85
	i32 2617129537, ; 177: System.Private.Xml.dll => 0x9bfe3a41 => 119
	i32 2620871830, ; 178: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 62
	i32 2626831493, ; 179: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 15
	i32 2663698177, ; 180: System.Runtime.Loader => 0x9ec4cf01 => 124
	i32 2664396074, ; 181: System.Xml.XDocument.dll => 0x9ecf752a => 139
	i32 2665622720, ; 182: System.Drawing.Primitives => 0x9ee22cc0 => 103
	i32 2676780864, ; 183: System.Data.Common.dll => 0x9f8c6f40 => 100
	i32 2724373263, ; 184: System.Runtime.Numerics.dll => 0xa262a30f => 125
	i32 2732626843, ; 185: Xamarin.AndroidX.Activity => 0xa2e0939b => 52
	i32 2737747696, ; 186: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 54
	i32 2752995522, ; 187: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 21
	i32 2758225723, ; 188: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 47
	i32 2764765095, ; 189: Microsoft.Maui.dll => 0xa4caf7a7 => 48
	i32 2778768386, ; 190: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 79
	i32 2785988530, ; 191: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 27
	i32 2801831435, ; 192: Microsoft.Maui.Graphics => 0xa7008e0b => 50
	i32 2806116107, ; 193: es/Microsoft.Maui.Controls.resources.dll => 0xa741ef0b => 6
	i32 2810250172, ; 194: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 60
	i32 2831556043, ; 195: nl/Microsoft.Maui.Controls.resources.dll => 0xa8c61dcb => 19
	i32 2853208004, ; 196: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 79
	i32 2861189240, ; 197: Microsoft.Maui.Essentials => 0xaa8a4878 => 49
	i32 2868488919, ; 198: CommunityToolkit.Maui.Core => 0xaaf9aad7 => 36
	i32 2909740682, ; 199: System.Private.CoreLib => 0xad6f1e8a => 141
	i32 2916838712, ; 200: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 80
	i32 2919462931, ; 201: System.Numerics.Vectors.dll => 0xae037813 => 115
	i32 2959614098, ; 202: System.ComponentModel.dll => 0xb0682092 => 98
	i32 2965157864, ; 203: Xamarin.AndroidX.Camera.View => 0xb0bcb7e8 => 57
	i32 2978675010, ; 204: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 64
	i32 2987532451, ; 205: Xamarin.AndroidX.Security.SecurityCrypto => 0xb21220a3 => 77
	i32 2991449226, ; 206: Xamarin.AndroidX.Camera.Core => 0xb24de48a => 55
	i32 3000842441, ; 207: Xamarin.AndroidX.Camera.View.dll => 0xb2dd38c9 => 57
	i32 3038032645, ; 208: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 34
	i32 3047751430, ; 209: Xamarin.AndroidX.Camera.Core.dll => 0xb5a8ff06 => 55
	i32 3057625584, ; 210: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 71
	i32 3059408633, ; 211: Mono.Android.Runtime => 0xb65adef9 => 143
	i32 3059793426, ; 212: System.ComponentModel.Primitives => 0xb660be12 => 96
	i32 3077302341, ; 213: hu/Microsoft.Maui.Controls.resources.dll => 0xb76be845 => 12
	i32 3159123045, ; 214: System.Reflection.Primitives.dll => 0xbc4c6465 => 122
	i32 3178803400, ; 215: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 72
	i32 3215347189, ; 216: zxing => 0xbfa64df5 => 86
	i32 3220365878, ; 217: System.Threading => 0xbff2e236 => 135
	i32 3258312781, ; 218: Xamarin.AndroidX.CardView => 0xc235e84d => 58
	i32 3286373667, ; 219: ZXing.Net.MAUI.dll => 0xc3e21523 => 87
	i32 3305363605, ; 220: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 7
	i32 3316684772, ; 221: System.Net.Requests.dll => 0xc5b097e4 => 114
	i32 3317135071, ; 222: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 63
	i32 3346324047, ; 223: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 73
	i32 3357674450, ; 224: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 24
	i32 3358260929, ; 225: System.Text.Json => 0xc82afec1 => 132
	i32 3362522851, ; 226: Xamarin.AndroidX.Core => 0xc86c06e3 => 61
	i32 3366347497, ; 227: Java.Interop => 0xc8a662e9 => 142
	i32 3374999561, ; 228: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 75
	i32 3381016424, ; 229: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 3
	i32 3428513518, ; 230: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 39
	i32 3452344032, ; 231: Microsoft.Maui.Controls.Compatibility.dll => 0xcdc696e0 => 45
	i32 3463511458, ; 232: hr/Microsoft.Maui.Controls.resources.dll => 0xce70fda2 => 11
	i32 3471940407, ; 233: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 97
	i32 3476120550, ; 234: Mono.Android => 0xcf3163e6 => 144
	i32 3479483135, ; 235: Mobile App => 0xcf64b2ff => 89
	i32 3479583265, ; 236: ru/Microsoft.Maui.Controls.resources.dll => 0xcf663a21 => 24
	i32 3484440000, ; 237: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 23
	i32 3485117614, ; 238: System.Text.Json.dll => 0xcfbaacae => 132
	i32 3509114376, ; 239: System.Xml.Linq => 0xd128d608 => 137
	i32 3580758918, ; 240: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 31
	i32 3608519521, ; 241: System.Linq.dll => 0xd715a361 => 108
	i32 3641597786, ; 242: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 67
	i32 3643446276, ; 243: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 28
	i32 3643854240, ; 244: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 72
	i32 3657292374, ; 245: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 38
	i32 3672681054, ; 246: Mono.Android.dll => 0xdae8aa5e => 144
	i32 3676461095, ; 247: Xamarin.AndroidX.Camera.Lifecycle => 0xdb225827 => 56
	i32 3697841164, ; 248: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xdc68940c => 33
	i32 3724971120, ; 249: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 71
	i32 3737834244, ; 250: System.Net.Http.Json.dll => 0xdecad304 => 110
	i32 3748608112, ; 251: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 101
	i32 3751582913, ; 252: ZXing.Net.MAUI.Controls => 0xdf9c9cc1 => 88
	i32 3786282454, ; 253: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 59
	i32 3792276235, ; 254: System.Collections.NonGeneric => 0xe2098b0b => 93
	i32 3800979733, ; 255: Microsoft.Maui.Controls.Compatibility => 0xe28e5915 => 45
	i32 3802395368, ; 256: System.Collections.Specialized.dll => 0xe2a3f2e8 => 94
	i32 3817368567, ; 257: CommunityToolkit.Maui.dll => 0xe3886bf7 => 35
	i32 3823082795, ; 258: System.Security.Cryptography.dll => 0xe3df9d2b => 129
	i32 3841636137, ; 259: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 40
	i32 3842894692, ; 260: ZXing.Net.MAUI => 0xe50deb64 => 87
	i32 3844307129, ; 261: System.Net.Mail.dll => 0xe52378b9 => 112
	i32 3849253459, ; 262: System.Runtime.InteropServices.dll => 0xe56ef253 => 123
	i32 3889960447, ; 263: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xe7dc15ff => 32
	i32 3896106733, ; 264: System.Collections.Concurrent.dll => 0xe839deed => 91
	i32 3896760992, ; 265: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 61
	i32 3928044579, ; 266: System.Xml.ReaderWriter => 0xea213423 => 138
	i32 3931092270, ; 267: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 74
	i32 3955647286, ; 268: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 53
	i32 3980434154, ; 269: th/Microsoft.Maui.Controls.resources.dll => 0xed409aea => 27
	i32 3987592930, ; 270: he/Microsoft.Maui.Controls.resources.dll => 0xedadd6e2 => 9
	i32 4025784931, ; 271: System.Memory => 0xeff49a63 => 109
	i32 4046471985, ; 272: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 47
	i32 4054681211, ; 273: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 120
	i32 4068434129, ; 274: System.Private.Xml.Linq.dll => 0xf27f60d1 => 118
	i32 4073602200, ; 275: System.Threading.dll => 0xf2ce3c98 => 135
	i32 4094352644, ; 276: Microsoft.Maui.Essentials.dll => 0xf40add04 => 49
	i32 4099507663, ; 277: System.Drawing.dll => 0xf45985cf => 104
	i32 4100113165, ; 278: System.Private.Uri => 0xf462c30d => 117
	i32 4102112229, ; 279: pt/Microsoft.Maui.Controls.resources.dll => 0xf48143e5 => 22
	i32 4125707920, ; 280: ms/Microsoft.Maui.Controls.resources.dll => 0xf5e94e90 => 17
	i32 4126470640, ; 281: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 39
	i32 4147896353, ; 282: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 120
	i32 4150914736, ; 283: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 29
	i32 4181436372, ; 284: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 127
	i32 4182413190, ; 285: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 69
	i32 4213026141, ; 286: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 101
	i32 4271975918, ; 287: Microsoft.Maui.Controls.dll => 0xfea12dee => 46
	i32 4274976490, ; 288: System.Runtime.Numerics => 0xfecef6ea => 125
	i32 4292120959 ; 289: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 69
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [290 x i32] [
	i32 83, ; 0
	i32 51, ; 1
	i32 56, ; 2
	i32 134, ; 3
	i32 33, ; 4
	i32 50, ; 5
	i32 123, ; 6
	i32 59, ; 7
	i32 78, ; 8
	i32 30, ; 9
	i32 31, ; 10
	i32 98, ; 11
	i32 90, ; 12
	i32 121, ; 13
	i32 2, ; 14
	i32 30, ; 15
	i32 52, ; 16
	i32 15, ; 17
	i32 66, ; 18
	i32 14, ; 19
	i32 134, ; 20
	i32 89, ; 21
	i32 109, ; 22
	i32 34, ; 23
	i32 26, ; 24
	i32 95, ; 25
	i32 65, ; 26
	i32 136, ; 27
	i32 127, ; 28
	i32 140, ; 29
	i32 116, ; 30
	i32 13, ; 31
	i32 7, ; 32
	i32 44, ; 33
	i32 41, ; 34
	i32 21, ; 35
	i32 35, ; 36
	i32 63, ; 37
	i32 19, ; 38
	i32 131, ; 39
	i32 91, ; 40
	i32 1, ; 41
	i32 137, ; 42
	i32 16, ; 43
	i32 4, ; 44
	i32 124, ; 45
	i32 114, ; 46
	i32 106, ; 47
	i32 25, ; 48
	i32 43, ; 49
	i32 100, ; 50
	i32 117, ; 51
	i32 105, ; 52
	i32 88, ; 53
	i32 86, ; 54
	i32 110, ; 55
	i32 96, ; 56
	i32 28, ; 57
	i32 83, ; 58
	i32 51, ; 59
	i32 82, ; 60
	i32 66, ; 61
	i32 139, ; 62
	i32 95, ; 63
	i32 76, ; 64
	i32 104, ; 65
	i32 40, ; 66
	i32 3, ; 67
	i32 53, ; 68
	i32 103, ; 69
	i32 107, ; 70
	i32 68, ; 71
	i32 97, ; 72
	i32 84, ; 73
	i32 140, ; 74
	i32 16, ; 75
	i32 22, ; 76
	i32 73, ; 77
	i32 20, ; 78
	i32 18, ; 79
	i32 2, ; 80
	i32 64, ; 81
	i32 108, ; 82
	i32 32, ; 83
	i32 76, ; 84
	i32 60, ; 85
	i32 126, ; 86
	i32 0, ; 87
	i32 82, ; 88
	i32 6, ; 89
	i32 92, ; 90
	i32 106, ; 91
	i32 54, ; 92
	i32 44, ; 93
	i32 92, ; 94
	i32 105, ; 95
	i32 10, ; 96
	i32 5, ; 97
	i32 133, ; 98
	i32 25, ; 99
	i32 70, ; 100
	i32 80, ; 101
	i32 36, ; 102
	i32 62, ; 103
	i32 111, ; 104
	i32 133, ; 105
	i32 128, ; 106
	i32 81, ; 107
	i32 113, ; 108
	i32 129, ; 109
	i32 58, ; 110
	i32 23, ; 111
	i32 1, ; 112
	i32 102, ; 113
	i32 78, ; 114
	i32 41, ; 115
	i32 143, ; 116
	i32 17, ; 117
	i32 65, ; 118
	i32 9, ; 119
	i32 70, ; 120
	i32 84, ; 121
	i32 81, ; 122
	i32 74, ; 123
	i32 130, ; 124
	i32 126, ; 125
	i32 42, ; 126
	i32 29, ; 127
	i32 26, ; 128
	i32 107, ; 129
	i32 122, ; 130
	i32 8, ; 131
	i32 93, ; 132
	i32 118, ; 133
	i32 77, ; 134
	i32 37, ; 135
	i32 5, ; 136
	i32 68, ; 137
	i32 0, ; 138
	i32 119, ; 139
	i32 67, ; 140
	i32 4, ; 141
	i32 102, ; 142
	i32 128, ; 143
	i32 115, ; 144
	i32 99, ; 145
	i32 94, ; 146
	i32 48, ; 147
	i32 12, ; 148
	i32 43, ; 149
	i32 42, ; 150
	i32 116, ; 151
	i32 85, ; 152
	i32 111, ; 153
	i32 14, ; 154
	i32 38, ; 155
	i32 8, ; 156
	i32 75, ; 157
	i32 112, ; 158
	i32 18, ; 159
	i32 141, ; 160
	i32 113, ; 161
	i32 138, ; 162
	i32 37, ; 163
	i32 13, ; 164
	i32 136, ; 165
	i32 10, ; 166
	i32 99, ; 167
	i32 142, ; 168
	i32 46, ; 169
	i32 121, ; 170
	i32 11, ; 171
	i32 90, ; 172
	i32 131, ; 173
	i32 130, ; 174
	i32 20, ; 175
	i32 85, ; 176
	i32 119, ; 177
	i32 62, ; 178
	i32 15, ; 179
	i32 124, ; 180
	i32 139, ; 181
	i32 103, ; 182
	i32 100, ; 183
	i32 125, ; 184
	i32 52, ; 185
	i32 54, ; 186
	i32 21, ; 187
	i32 47, ; 188
	i32 48, ; 189
	i32 79, ; 190
	i32 27, ; 191
	i32 50, ; 192
	i32 6, ; 193
	i32 60, ; 194
	i32 19, ; 195
	i32 79, ; 196
	i32 49, ; 197
	i32 36, ; 198
	i32 141, ; 199
	i32 80, ; 200
	i32 115, ; 201
	i32 98, ; 202
	i32 57, ; 203
	i32 64, ; 204
	i32 77, ; 205
	i32 55, ; 206
	i32 57, ; 207
	i32 34, ; 208
	i32 55, ; 209
	i32 71, ; 210
	i32 143, ; 211
	i32 96, ; 212
	i32 12, ; 213
	i32 122, ; 214
	i32 72, ; 215
	i32 86, ; 216
	i32 135, ; 217
	i32 58, ; 218
	i32 87, ; 219
	i32 7, ; 220
	i32 114, ; 221
	i32 63, ; 222
	i32 73, ; 223
	i32 24, ; 224
	i32 132, ; 225
	i32 61, ; 226
	i32 142, ; 227
	i32 75, ; 228
	i32 3, ; 229
	i32 39, ; 230
	i32 45, ; 231
	i32 11, ; 232
	i32 97, ; 233
	i32 144, ; 234
	i32 89, ; 235
	i32 24, ; 236
	i32 23, ; 237
	i32 132, ; 238
	i32 137, ; 239
	i32 31, ; 240
	i32 108, ; 241
	i32 67, ; 242
	i32 28, ; 243
	i32 72, ; 244
	i32 38, ; 245
	i32 144, ; 246
	i32 56, ; 247
	i32 33, ; 248
	i32 71, ; 249
	i32 110, ; 250
	i32 101, ; 251
	i32 88, ; 252
	i32 59, ; 253
	i32 93, ; 254
	i32 45, ; 255
	i32 94, ; 256
	i32 35, ; 257
	i32 129, ; 258
	i32 40, ; 259
	i32 87, ; 260
	i32 112, ; 261
	i32 123, ; 262
	i32 32, ; 263
	i32 91, ; 264
	i32 61, ; 265
	i32 138, ; 266
	i32 74, ; 267
	i32 53, ; 268
	i32 27, ; 269
	i32 9, ; 270
	i32 109, ; 271
	i32 47, ; 272
	i32 120, ; 273
	i32 118, ; 274
	i32 135, ; 275
	i32 49, ; 276
	i32 104, ; 277
	i32 117, ; 278
	i32 22, ; 279
	i32 17, ; 280
	i32 39, ; 281
	i32 120, ; 282
	i32 29, ; 283
	i32 127, ; 284
	i32 69, ; 285
	i32 101, ; 286
	i32 46, ; 287
	i32 125, ; 288
	i32 69 ; 289
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 4

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 4

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 4, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" }

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
!7 = !{i32 1, !"NumRegisterParameters", i32 0}
