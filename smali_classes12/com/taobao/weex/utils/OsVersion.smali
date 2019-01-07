.class public Lcom/taobao/weex/utils/OsVersion;
.super Ljava/lang/Object;
.source "OsVersion.java"


# static fields
.field private static sIsAtLeastJB_MR2:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    invoke-static {}, Lcom/taobao/weex/utils/OsVersion;->getApiVersion()I

    move-result v0

    .line 30
    .local v0, "v":I
    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    sput-boolean v1, Lcom/taobao/weex/utils/OsVersion;->sIsAtLeastJB_MR2:Z

    .line 31
    return-void

    .line 30
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getApiVersion()I
    .locals 1

    .prologue
    .line 45
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public static isAtLeastJB_MR2()Z
    .locals 1

    .prologue
    .line 38
    sget-boolean v0, Lcom/taobao/weex/utils/OsVersion;->sIsAtLeastJB_MR2:Z

    return v0
.end method
