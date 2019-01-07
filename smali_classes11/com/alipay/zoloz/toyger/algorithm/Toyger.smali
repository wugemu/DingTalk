.class public Lcom/alipay/zoloz/toyger/algorithm/Toyger;
.super Ljava/lang/Object;
.source "Toyger.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string/jumbo v0, "toyger"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native capture()Z
.end method

.method public static native compare(Liuq;Liuq;)Z
.end method

.method public static native enroll(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native getVersion()Ljava/lang/String;
.end method

.method public static native init(Landroid/content/Context;Liun;Liur;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public static native needDarkScreen()Z
.end method

.method public static native processImage(Liuq;Liuo;Liup;)V
.end method

.method public static native release()V
.end method

.method public static native reset()V
.end method

.method public static native userEnrolled(Ljava/lang/String;)Z
.end method

.method public static native verify(Ljava/lang/String;Ljava/lang/String;)V
.end method
