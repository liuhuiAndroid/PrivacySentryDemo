-optimizationpasses 5
-dontusemixedcaseclassnames
-dontskipnonpubliclibraryclasses
-dontskipnonpubliclibraryclassmembers
-keeppackagenames
-verbose
-printmapping priguardMapping.txt
-optimizations !code/simplification/arithmetic,!field/*,!class/merging/*,!code/allocation/*
-keepattributes SourceFile,LineNumberTable
-keepattributes JavascriptInterface
-keepattributes *Annotation*,EnclosingMethod,Exceptions, Signature, InnerClasses

#****************** 大名扫码SDK混淆
-keep class com.dynamsoft.barcode.*{*;}

#云闪付SDK
-dontwarn com.unionpay.**
-keep class com.unionpay.**{*;}
# 数美SDK
-keep class com.ishumei.** { *; }


# 高德sdk
-keep class com.amap.api.**{*;}
-dontwarn com.loc.**
-keep class com.loc.**{*;}

# okhttp3 okio sdk
-dontwarn okio.**
-keep class okio.*{*;}
-dontwarn org.jetbrains.annotations.**
-dontwarn okhttp3.**
-keep class okhttp3.*{*;}
-keep interface okhttp3.* { *; }

# cordova sdk
-dontwarn org.unionpay.cordova.**
-keep class org.unionpay.cordova.** { *; }

# 系统方法
-keepclasseswithmembernames class * {
    native <methods>;
}
-keep class * implements android.os.Parcelable {
  public static final android.os.Parcelable$Creator *;
}

-keep class com.tencent.scanlib.** {*;}
-keep class com.tencent.cloud.auth.** {*;}
-keep class com.tencent.qbar.** {*;}
-keep class com.tencent.scanlib.kit.** {*;}
-keep class com.tencent.could.** {*;}

-keep class com.xdja.alg.** { *; }