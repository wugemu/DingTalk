.class public Lcom/alipay/mobile/nebulacore/util/H5NebulaUtil;
.super Ljava/lang/Object;
.source "H5NebulaUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "configKey"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 16
    invoke-static {}, Lcom/alipay/mobile/nebulacore/util/H5NebulaUtil;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v1

    .line 17
    .local v1, "providerManager":Lcom/alipay/mobile/nebula/provider/H5ProviderManager;
    if-nez v1, :cond_1

    .line 24
    :cond_0
    :goto_0
    return-object v2

    .line 20
    :cond_1
    const-class v3, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 21
    .local v0, "provider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v0, :cond_0

    .line 24
    invoke-interface {v0, p0}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getH5Service()Lcom/alipay/mobile/h5container/service/H5Service;
    .locals 2

    .prologue
    .line 28
    const-class v1, Lcom/alipay/mobile/h5container/service/H5Service;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5Service;

    .line 29
    .local v0, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    if-eqz v0, :cond_0

    .line 32
    .end local v0    # "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    :goto_0
    return-object v0

    .restart local v0    # "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;
    .locals 2

    .prologue
    .line 36
    invoke-static {}, Lcom/alipay/mobile/nebulacore/util/H5NebulaUtil;->getH5Service()Lcom/alipay/mobile/h5container/service/H5Service;

    move-result-object v0

    .line 37
    .local v0, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/service/H5Service;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v1

    .line 40
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
