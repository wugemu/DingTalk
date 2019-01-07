.class public Lcom/taobao/taolive/sdk/utils/TaoLog;
.super Ljava/lang/Object;
.source "TaoLog.java"


# static fields
.field private static isPrintLog:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x1

    sput-boolean v0, Lcom/taobao/taolive/sdk/utils/TaoLog;->isPrintLog:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public static Logd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 27
    return-void
.end method

.method public static Loge(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 30
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    sget-boolean v0, Lcom/taobao/taolive/sdk/utils/TaoLog;->isPrintLog:Z

    if-eqz v0, :cond_0

    .line 31
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :cond_0
    return-void
.end method

.method public static Logi(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 41
    return-void
.end method

.method public static Logv(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 48
    return-void
.end method

.method public static Logw(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 51
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    sget-boolean v0, Lcom/taobao/taolive/sdk/utils/TaoLog;->isPrintLog:Z

    if-eqz v0, :cond_0

    .line 52
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_0
    return-void
.end method

.method public static getLogStatus()Z
    .locals 1

    .prologue
    .line 15
    sget-boolean v0, Lcom/taobao/taolive/sdk/utils/TaoLog;->isPrintLog:Z

    return v0
.end method

.method public static setLogSwitcher(Z)V
    .locals 0
    .param p0, "open"    # Z

    .prologue
    .line 19
    sput-boolean p0, Lcom/taobao/taolive/sdk/utils/TaoLog;->isPrintLog:Z

    .line 20
    return-void
.end method
