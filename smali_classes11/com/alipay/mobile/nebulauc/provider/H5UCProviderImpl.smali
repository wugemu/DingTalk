.class public Lcom/alipay/mobile/nebulauc/provider/H5UCProviderImpl;
.super Ljava/lang/Object;
.source "H5UCProviderImpl.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/provider/H5UCProvider;


# static fields
.field private static final TAG:Ljava/lang/String; = "H5UCProviderImpl"


# instance fields
.field private mLastExtraConfig:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isM40()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/uc/webview/export/Build$Version;->NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/uc/webview/export/Build;->CORE_TIME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/util/CommonUtil;->isM40(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public notifyConfigurationChanged(Landroid/content/res/Configuration;)Z
    .locals 10
    .param p1, "configuration"    # Landroid/content/res/Configuration;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 28
    const-string/jumbo v7, "H5UCProviderImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "notifyConfigurationChanged: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    const-string/jumbo v7, "h5_notifyWebViewConfigurationChanged"

    invoke-static {v7}, Lcom/alipay/mobile/nebulauc/util/H5ConfigUtil;->getConfigJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    .line 30
    sget-boolean v7, Liog;->a:Z

    if-eqz v7, :cond_0

    .line 31
    const-string/jumbo v7, "h5_notifyWebViewConfigurationChanged"

    invoke-static {v7}, Lcom/alipay/mobile/nebulauc/util/H5ConfigUtil;->getConfigJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 32
    .local v0, "config":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v7, "enable"

    invoke-static {v0, v7, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v2

    .line 33
    .local v2, "enable":Z
    if-eqz v2, :cond_0

    .line 35
    :try_start_0
    const-string/jumbo v7, "field"

    const-string/jumbo v8, "extraConfig"

    invoke-static {v0, v7, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 36
    .local v5, "field":Ljava/lang/String;
    const-class v7, Landroid/content/res/Configuration;

    invoke-virtual {v7, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 37
    .local v3, "extraConfig":Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 38
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 39
    .local v4, "extraConfigStr":Ljava/lang/String;
    if-eqz v4, :cond_0

    iget-object v7, p0, Lcom/alipay/mobile/nebulauc/provider/H5UCProviderImpl;->mLastExtraConfig:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 40
    iput-object v4, p0, Lcom/alipay/mobile/nebulauc/provider/H5UCProviderImpl;->mLastExtraConfig:Ljava/lang/String;

    .line 41
    const-string/jumbo v7, "H5UCProviderImpl"

    const-string/jumbo v8, "notify CORE_EVENT_ON_ACTIVITY_RECREATE"

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const/16 v7, 0xb

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/uc/webview/export/extension/UCCore;->notifyCoreEvent(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    const/4 v6, 0x1

    .line 52
    .end local v0    # "config":Lcom/alibaba/fastjson/JSONObject;
    .end local v2    # "enable":Z
    .end local v3    # "extraConfig":Ljava/lang/Object;
    .end local v4    # "extraConfigStr":Ljava/lang/String;
    .end local v5    # "field":Ljava/lang/String;
    :cond_0
    :goto_0
    return v6

    .line 46
    .restart local v0    # "config":Lcom/alibaba/fastjson/JSONObject;
    .restart local v2    # "enable":Z
    :catch_0
    move-exception v1

    .line 47
    .local v1, "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "H5UCProviderImpl"

    invoke-static {v7, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
