.class public final Lhha;
.super Ljava/lang/Object;
.source "FCUtils.java"


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 58
    if-nez p0, :cond_0

    .line 59
    const-string/jumbo p0, ""

    .line 61
    .end local p0    # "input":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public static a()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    const-string/jumbo v5, "sw_attendance_apps_config"

    invoke-static {v4, v5}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 33
    .local v1, "content":Ljava/lang/String;
    invoke-static {v1}, Lhkv;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 35
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 36
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 37
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 38
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 39
    .local v3, "packageName":Ljava/lang/String;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    invoke-static {v4, v3}, Lhkv;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 40
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 45
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method public static a(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lhkj;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    .local p0, "scanResultList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .local v2, "wifiList":Ljava/util/List;, "Ljava/util/List<Lhkj;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 116
    :cond_0
    :goto_0
    return-object v2

    .line 107
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 108
    .local v0, "scanResult":Landroid/net/wifi/ScanResult;
    if-eqz v0, :cond_2

    iget-object v4, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-static {v4}, Lhha;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 109
    new-instance v1, Lhkj;

    invoke-direct {v1}, Lhkj;-><init>()V

    .line 110
    .local v1, "wifiInfoModel":Lhkj;
    iget-object v4, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iput-object v4, v1, Lhkj;->a:Ljava/lang/String;

    .line 111
    iget-object v4, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iput-object v4, v1, Lhkj;->b:Ljava/lang/String;

    .line 112
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 115
    .end local v0    # "scanResult":Landroid/net/wifi/ScanResult;
    .end local v1    # "wifiInfoModel":Lhkj;
    :cond_3
    const-string/jumbo v3, "FCUtils"

    const-string/jumbo v4, "getWifiInfoFromScanResult"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "wifiList"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    invoke-static {v3, v4, v5}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lhha;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/ta/utdid2/device/UTUtdid;->instance(Landroid/content/Context;)Lcom/ta/utdid2/device/UTUtdid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ta/utdid2/device/UTUtdid;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/device/Base;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/device/Base;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lhha;->a:Ljava/lang/String;

    .line 54
    :cond_0
    sget-object v0, Lhha;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 3
    .param p0, "ip"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 135
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 138
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "^00(:00)*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static c()Lhkj;
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 70
    invoke-static {}, Lhkv;->a()Z

    move-result v4

    if-nez v4, :cond_1

    .line 91
    .local v3, "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_0
    :goto_0
    return-object v2

    .line 74
    .end local v3    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_1
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    .line 75
    invoke-virtual {v4}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "wifi"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 77
    .restart local v3    # "wifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v3, :cond_0

    .line 78
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 79
    .local v1, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v1, :cond_0

    .line 80
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "macIp":Ljava/lang/String;
    invoke-static {v0}, Lhha;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 83
    new-instance v2, Lhkj;

    invoke-direct {v2}, Lhkj;-><init>()V

    .line 84
    .local v2, "wifiInfoModel":Lhkj;
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lhkj;->a:Ljava/lang/String;

    .line 85
    iput-object v0, v2, Lhkj;->b:Ljava/lang/String;

    .line 86
    const-string/jumbo v4, "FCUtils"

    const-string/jumbo v5, "getConnectWifi"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "macIp"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v0, v6, v7

    invoke-static {v4, v5, v6}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
