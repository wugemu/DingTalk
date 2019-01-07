.class public Lcom/alibaba/mobileim/kit/photodeal/util/PhotoProcessing;
.super Ljava/lang/Object;
.source "PhotoProcessing.java"


# static fields
.field public static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 12
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "origin"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "soft"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "black"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "classic"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "gorgeous"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "retro"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "grace"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "film"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "memory"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "yogurt"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "fleeting"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "shine"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "masic"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "blur"

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/mobileim/kit/photodeal/util/PhotoProcessing;->a:[Ljava/lang/String;

    .line 69
    const-string/jumbo v0, "photoprocessing"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native nativeApplyAnsel()V
.end method

.method public static native nativeApplyBW()V
.end method

.method public static native nativeApplyBlur()V
.end method

.method public static native nativeApplyCyano()V
.end method

.method public static native nativeApplyGeorgia()V
.end method

.method public static native nativeApplyHDR()V
.end method

.method public static native nativeApplyInstafix()V
.end method

.method public static native nativeApplyMasic()V
.end method

.method public static native nativeApplyRetro()V
.end method

.method public static native nativeApplySahara()V
.end method

.method public static native nativeApplySepia()V
.end method

.method public static native nativeApplyTestino()V
.end method

.method public static native nativeApplyXPro()V
.end method

.method public static native nativeDeleteBitmap()V
.end method

.method public static native nativeFlipHorizontally()V
.end method

.method public static native nativeGetBitmapHeight()I
.end method

.method public static native nativeGetBitmapRow(I[I)V
.end method

.method public static native nativeGetBitmapWidth()I
.end method

.method public static native nativeInitBitmap(II)I
.end method

.method public static native nativeLoadResizedJpegBitmap([BII)V
.end method

.method public static native nativeResizeBitmap(II)V
.end method

.method public static native nativeRotate180()V
.end method

.method public static native nativeRotate90()I
.end method

.method public static native nativeSetBitmapRow(I[I)V
.end method
