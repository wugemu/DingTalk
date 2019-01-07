.class public Lcom/alibaba/android/dingtalk/alpha/SystemInfo;
.super Ljava/lang/Object;
.source "SystemInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    invoke-static {}, Lblw;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBssid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    invoke-static {}, Lblw;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    invoke-static {}, Lblw;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getIP()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    invoke-static {}, Lblw;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMac()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    invoke-static {}, Lblw;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMask()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    invoke-static {}, Lblw;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOSVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    invoke-static {}, Lblw;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getWifiInfo()Landroid/net/wifi/WifiInfo;
    .locals 1

    .prologue
    .line 17
    invoke-static {}, Lcom/alibaba/android/dingtalk/alpha/common/WifiUtil;->d()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    return-object v0
.end method

.method public static trace(Ljava/lang/String;)V
    .locals 1
    .param p0, "trace"    # Ljava/lang/String;

    .prologue
    .line 49
    const-string/jumbo v0, "native"

    invoke-static {v0, p0}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void
.end method
