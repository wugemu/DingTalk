.class public Lcom/taobao/xsandroidcamerademo/NativeCall;
.super Ljava/lang/Object;
.source "NativeCall.java"

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    :try_start_0
    const-string/jumbo v1, "AliImageMagicTools"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .local v0, "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 19
    .end local v0    # "t":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 21
    .restart local v0    # "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native AliInitEffectModule(Lcom/taobao/xsandroidcamerademo/FaceInputParamInfo;)I
.end method

.method public static native AliProcessEffectWithAutoFace(ZILcom/taobao/xsandroidcamerademo/ImgTextureIdInfo;Lcom/taobao/xsandroidcamerademo/ImgRawDataInfo;Z[Lcom/taobao/xsandroidcamerademo/ImgRawDataInfo;IZIILcom/taobao/xsandroidcamerademo/ImgTextureIdInfo;Lcom/taobao/xsandroidcamerademo/ImgRawDataInfo;ZZZ)I
.end method

.method public static native AliReleaseEffectModule()I
.end method
