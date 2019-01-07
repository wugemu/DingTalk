.class public Lcom/alipay/mobile/nebulacore/env/H5Environment;
.super Ljava/lang/Object;
.source "H5Environment.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "H5Environment"

.field private static context:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p0, "bundleName"    # Ljava/lang/String;
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 36
    invoke-static {p0, p1}, Lcom/alipay/mobile/nebulacore/wallet/H5WalletWrapper;->getClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static getConfig(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "configName"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 63
    .local v0, "provider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-nez v0, :cond_0

    .line 64
    const-string/jumbo v1, "H5Environment"

    const-string/jumbo v2, "provider == null"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const/4 v1, 0x0

    .line 67
    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0, p0}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getConfigJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;
    .locals 3
    .param p0, "configName"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 73
    .local v0, "provider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-nez v0, :cond_0

    .line 74
    const-string/jumbo v1, "H5Environment"

    const-string/jumbo v2, "provider == null"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const/4 v1, 0x0

    .line 78
    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0, p0}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    goto :goto_0
.end method

.method public static getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "configName"    # Ljava/lang/String;

    .prologue
    .line 84
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 85
    .local v0, "provider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-nez v0, :cond_0

    .line 86
    const-string/jumbo v1, "H5Environment"

    const-string/jumbo v2, "provider == null"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const/4 v1, 0x0

    .line 89
    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0, p0}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/alipay/mobile/nebulacore/env/H5Environment;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 41
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/nebulacore/env/H5Environment;->context:Landroid/content/Context;

    .line 43
    :cond_0
    sget-object v0, Lcom/alipay/mobile/nebulacore/env/H5Environment;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 53
    invoke-static {}, Lcom/alipay/mobile/nebulacore/wallet/H5WalletWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public static getRnService()Lcom/alipay/mobile/h5container/service/RnService;
    .locals 1

    .prologue
    .line 57
    invoke-static {}, Lcom/alipay/mobile/nebulacore/wallet/H5WalletWrapper;->getRnService()Lcom/alipay/mobile/h5container/service/RnService;

    move-result-object v0

    return-object v0
.end method

.method public static getSessionId(Lcom/alipay/mobile/h5container/api/H5Context;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1
    .param p0, "h5Context"    # Lcom/alipay/mobile/h5container/api/H5Context;
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 27
    invoke-static {p0, p1}, Lcom/alipay/mobile/nebulacore/wallet/H5WalletWrapper;->getSessionId(Lcom/alipay/mobile/h5container/api/H5Context;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isInWallet()Z
    .locals 1

    .prologue
    .line 105
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInWallet()Z

    move-result v0

    return v0
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 47
    sget-object v0, Lcom/alipay/mobile/nebulacore/env/H5Environment;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 48
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/nebulacore/env/H5Environment;->context:Landroid/content/Context;

    .line 50
    :cond_0
    return-void
.end method

.method public static showToast(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "duration"    # I

    .prologue
    .line 94
    invoke-static {}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getInstance()Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/nebula/provider/H5ToastProvider;

    .line 95
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ToastProvider;

    .line 96
    .local v0, "h5ToastProvider":Lcom/alipay/mobile/nebula/provider/H5ToastProvider;
    if-eqz v0, :cond_0

    .line 97
    invoke-interface {v0, p0, p1, p2}, Lcom/alipay/mobile/nebula/provider/H5ToastProvider;->makeToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 101
    :goto_0
    return-void

    .line 99
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public static startActivity(Lcom/alipay/mobile/h5container/api/H5Context;Landroid/content/Intent;)V
    .locals 0
    .param p0, "h5Context"    # Lcom/alipay/mobile/h5container/api/H5Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 32
    invoke-static {p0, p1}, Lcom/alipay/mobile/nebulacore/wallet/H5WalletWrapper;->startActivity(Lcom/alipay/mobile/h5container/api/H5Context;Landroid/content/Intent;)V

    .line 33
    return-void
.end method
