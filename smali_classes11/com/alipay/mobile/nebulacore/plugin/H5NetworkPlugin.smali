.class public Lcom/alipay/mobile/nebulacore/plugin/H5NetworkPlugin;
.super Lipd;
.source "H5NetworkPlugin.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "H5NetworkPlugin"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lipd;-><init>()V

    return-void
.end method

.method private static getNetworkType()Ljava/lang/String;
    .locals 8

    .prologue
    .line 24
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 25
    .local v1, "context":Landroid/content/Context;
    const-string/jumbo v6, "connectivity"

    .line 26
    invoke-virtual {v1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 27
    .local v0, "connMgr":Landroid/net/ConnectivityManager;
    const-string/jumbo v5, "fail"

    .line 28
    .local v5, "type":Ljava/lang/String;
    const/4 v3, 0x0

    .line 30
    .local v3, "networkInfo":Landroid/net/NetworkInfo;
    :try_start_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 35
    :goto_0
    if-eqz v3, :cond_1

    .line 36
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 37
    .local v2, "nType":I
    const/4 v6, 0x1

    if-eq v2, v6, :cond_0

    const/16 v6, 0x9

    if-ne v2, v6, :cond_2

    .line 39
    :cond_0
    const-string/jumbo v5, "wifi"

    .line 44
    .end local v2    # "nType":I
    :cond_1
    :goto_1
    return-object v5

    .line 31
    :catch_0
    move-exception v4

    .line 32
    .local v4, "t":Ljava/lang/Throwable;
    const-string/jumbo v6, "H5NetworkPlugin"

    const-string/jumbo v7, "Exception"

    invoke-static {v6, v7, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 41
    .end local v4    # "t":Ljava/lang/Throwable;
    .restart local v2    # "nType":I
    :cond_2
    const-string/jumbo v5, "wwan"

    goto :goto_1
.end method

.method private getNetworkType(Liny;)V
    .locals 6
    .param p1, "bridgeContext"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 62
    invoke-static {}, Lcom/alipay/mobile/nebulacore/plugin/H5NetworkPlugin;->getNetworkType()Ljava/lang/String;

    move-result-object v3

    .line 63
    .local v3, "value":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "network_type:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, "err_msg":Ljava/lang/String;
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 65
    .local v0, "data":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v4, "err_msg"

    invoke-virtual {v0, v4, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-string/jumbo v4, "networkType"

    invoke-virtual {v0, v4, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-string/jumbo v4, "networkInfo"

    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const-string/jumbo v4, "fail"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v2, 0x1

    .line 69
    .local v2, "hasNetwork":Z
    :goto_0
    const-string/jumbo v4, "networkAvailable"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    invoke-interface {p1, v0}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 71
    return-void

    .line 68
    .end local v2    # "hasNetwork":Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 2
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 54
    .line 1065
    iget-object v0, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 55
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "getNetworkType"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulacore/plugin/H5NetworkPlugin;->getNetworkType(Liny;)V

    .line 58
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onPrepare(Liof;)V
    .locals 1
    .param p1, "filter"    # Liof;

    .prologue
    .line 49
    const-string/jumbo v0, "getNetworkType"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 50
    return-void
.end method
