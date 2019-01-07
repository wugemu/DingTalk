.class public Lcom/taobao/weex/layout/MeasureMode;
.super Ljava/lang/Object;
.source "MeasureMode.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static EXACTLY:I

.field public static UNSPECIFIED:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput v0, Lcom/taobao/weex/layout/MeasureMode;->EXACTLY:I

    .line 29
    const/4 v0, 0x1

    sput v0, Lcom/taobao/weex/layout/MeasureMode;->UNSPECIFIED:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEXACTLY()I
    .locals 1
    .annotation build Lcom/taobao/weex/base/CalledByNative;
    .end annotation

    .prologue
    .line 33
    sget v0, Lcom/taobao/weex/layout/MeasureMode;->EXACTLY:I

    return v0
.end method

.method public static getUNSPECIFIED()I
    .locals 1
    .annotation build Lcom/taobao/weex/base/CalledByNative;
    .end annotation

    .prologue
    .line 38
    sget v0, Lcom/taobao/weex/layout/MeasureMode;->UNSPECIFIED:I

    return v0
.end method
