.class public Lcom/alipay/mobile/nebulaconfig/service/H5ConfigServiceImpl;
.super Lcom/alipay/mobile/h5container/service/H5ConfigService;
.source "H5ConfigServiceImpl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "H5ConfigServiceImpl"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/alipay/mobile/h5container/service/H5ConfigService;-><init>()V

    return-void
.end method


# virtual methods
.method public getProviderInfoMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/nebula/providermanager/H5ProviderConfig;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 34
    const-string/jumbo v6, "H5ConfigServiceImpl"

    const-string/jumbo v7, "onCreate"

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 36
    .local v4, "time":J
    const-class v6, Lcom/alipay/mobile/h5container/service/H5Service;

    .line 37
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/h5container/service/H5Service;

    .line 38
    .local v2, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    const-string/jumbo v6, "H5ConfigServiceImpl"

    const-string/jumbo v7, "H5Biz register plugin."

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    if-eqz v2, :cond_0

    .line 40
    const-string/jumbo v6, "H5ConfigServiceImpl"

    const-string/jumbo v7, "register start."

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    sget-object v6, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList;->bizPluginList:Ljava/util/List;

    invoke-virtual {v2, v6}, Lcom/alipay/mobile/h5container/service/H5Service;->addH5PluginConfigList(Ljava/util/List;)V

    .line 46
    :cond_0
    :try_start_0
    sget-object v6, Lcom/alipay/mobile/nebulaconfig/util/H5EmbedViewConfigList;->embedViewList:Ljava/util/List;

    invoke-virtual {v2, v6}, Lcom/alipay/mobile/h5container/service/H5Service;->addEmbedViewConfig(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v0, v6, v4

    .line 52
    .local v0, "delta":J
    const-string/jumbo v6, "H5ConfigServiceImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "H5Biz register delta:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void

    .line 47
    .end local v0    # "delta":J
    :catch_0
    move-exception v3

    .line 48
    .local v3, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v6, "H5ConfigServiceImpl"

    invoke-static {v6, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 57
    const-string/jumbo v0, "H5ConfigServiceImpl"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    return-void
.end method
