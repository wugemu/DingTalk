.class public Lcom/alipay/mobile/nebula/util/H5KeepAliveUtil;
.super Ljava/lang/Object;
.source "H5KeepAliveUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "H5KeepAliveUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static configOpen(Landroid/os/Bundle;)Z
    .locals 7
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 30
    const-class v5, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 31
    .local v0, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v0, :cond_0

    .line 32
    const-string/jumbo v5, "h5_NotKeepAliveList"

    invoke-interface {v0, v5}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 33
    .local v3, "value":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 34
    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v1

    .line 35
    .local v1, "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 36
    const-string/jumbo v5, "startFromExternal"

    invoke-static {p0, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 37
    .local v2, "sceneId":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 38
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONArray;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 39
    const-string/jumbo v4, "H5KeepAliveUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "sceneId "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "setEnableKeepAlive"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const/4 v4, 0x0

    .line 48
    .end local v1    # "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    .end local v2    # "sceneId":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_0
    return v4
.end method

.method public static enableKeepAlive(Landroid/os/Bundle;Ljava/lang/String;)Z
    .locals 2
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 22
    const-string/jumbo v0, "YES"

    const-string/jumbo v1, "enableKeepAlive"

    invoke-static {p0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5KeepAliveUtil;->configOpen(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5KeepAliveUtil;->openAllKeepAlive(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    const/4 v0, 0x1

    .line 26
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static openAllKeepAlive(Ljava/lang/String;)Z
    .locals 10
    .param p0, "appId"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 55
    const-class v7, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 56
    .local v1, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v1, :cond_0

    .line 57
    const-string/jumbo v7, "h5_keepAliveBlackList"

    invoke-interface {v1, v7}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "appIdList":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 59
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v2

    .line 60
    .local v2, "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual {v2, p0}, Lcom/alibaba/fastjson/JSONArray;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 61
    const-string/jumbo v7, "H5KeepAliveUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, " not keepAlive appId is in BlackList "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .end local v0    # "appIdList":Ljava/lang/String;
    .end local v2    # "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    :cond_0
    :goto_0
    return v6

    .line 66
    .restart local v0    # "appIdList":Ljava/lang/String;
    :cond_1
    const-string/jumbo v7, "h5_appKeepAliveConfig"

    invoke-interface {v1, v7}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 67
    .local v5, "value":Ljava/lang/String;
    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    .line 68
    .local v3, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 69
    const-string/jumbo v7, "shouldKeepAlive"

    invoke-static {v3, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 70
    .local v4, "shouldKeepAlive":Ljava/lang/String;
    const-string/jumbo v7, "yes"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 71
    const/4 v6, 0x1

    goto :goto_0
.end method
