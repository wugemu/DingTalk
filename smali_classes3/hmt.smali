.class public final Lhmt;
.super Ljava/lang/Object;
.source "MiniAppUcServiceWorkerSetup.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 9

    .prologue
    .line 32
    const/4 v2, 0x0

    .line 33
    .local v2, "pid":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v1

    .line 34
    .local v1, "isInTinyProcess":Z
    if-eqz v1, :cond_0

    .line 35
    const-class v6, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 37
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    .line 36
    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 38
    .local v0, "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    if-eqz v0, :cond_1

    .line 39
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;->getLitePid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 44
    .end local v0    # "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 45
    .local v4, "ts":J
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 47
    .local v3, "workerId":Ljava/lang/String;
    :goto_1
    const-string/jumbo v6, "initServiceWorkerConsoleCallback"

    invoke-static {v6}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupTracing;->beginTrace(Ljava/lang/String;)V

    .line 48
    const/4 v6, 0x6

    const/4 v7, 0x0

    new-instance v8, Lhmt$1;

    invoke-direct {v8, v3}, Lhmt$1;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v7, v8}, Lcom/uc/webview/export/extension/UCCore;->notifyCoreEvent(ILjava/lang/Object;Landroid/webkit/ValueCallback;)Ljava/lang/Object;

    .line 70
    const-string/jumbo v6, "initServiceWorkerConsoleCallback"

    invoke-static {v6}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupTracing;->endTrace(Ljava/lang/String;)V

    .line 71
    return-void

    .line 41
    .end local v3    # "workerId":Ljava/lang/String;
    .end local v4    # "ts":J
    .restart local v0    # "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    :cond_1
    const-string/jumbo v6, "H5UcService::UcServiceWorkerSetup"

    const-string/jumbo v7, "h5EventHandlerService == null"

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 45
    .end local v0    # "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    .restart local v4    # "ts":J
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method public static b()V
    .locals 7

    .prologue
    .line 82
    const-string/jumbo v5, "initServiceWorkerController"

    invoke-static {v5}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupTracing;->beginTrace(Ljava/lang/String;)V

    .line 84
    const/4 v1, 0x1

    .line 86
    .local v1, "noCache":Z
    const-string/jumbo v5, "no"

    const-string/jumbo v6, "h5_sw_nocache"

    invoke-static {v6}, Lcom/alipay/mobile/nebulauc/util/H5ConfigUtil;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 87
    const/4 v1, 0x0

    .line 91
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/uc/webview/export/ServiceWorkerController;->getInstance()Lcom/uc/webview/export/ServiceWorkerController;

    move-result-object v3

    .line 92
    .local v3, "serviceWorkerController":Lcom/uc/webview/export/ServiceWorkerController;
    if-nez v3, :cond_1

    .line 93
    const-string/jumbo v5, "H5UcService::UcServiceWorkerSetup"

    const-string/jumbo v6, "serviceWorkerController == null"

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    .end local v3    # "serviceWorkerController":Lcom/uc/webview/export/ServiceWorkerController;
    :goto_0
    return-void

    .line 97
    .restart local v3    # "serviceWorkerController":Lcom/uc/webview/export/ServiceWorkerController;
    :cond_1
    new-instance v2, Lhnu;

    invoke-direct {v2}, Lhnu;-><init>()V

    .line 101
    .local v2, "provider":Lcom/alipay/mobile/nebula/provider/H5ServiceWorkerControllerProvider;
    move v0, v1

    .line 102
    .local v0, "finalNoCache":Z
    new-instance v5, Lhmt$2;

    invoke-direct {v5, v2, v0}, Lhmt$2;-><init>(Lcom/alipay/mobile/nebula/provider/H5ServiceWorkerControllerProvider;Z)V

    invoke-virtual {v3, v5}, Lcom/uc/webview/export/ServiceWorkerController;->setServiceWorkerClient(Lcom/uc/webview/export/ServiceWorkerClient;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    .end local v0    # "finalNoCache":Z
    .end local v2    # "provider":Lcom/alipay/mobile/nebula/provider/H5ServiceWorkerControllerProvider;
    .end local v3    # "serviceWorkerController":Lcom/uc/webview/export/ServiceWorkerController;
    :goto_1
    const-string/jumbo v5, "initServiceWorkerController"

    invoke-static {v5}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupTracing;->endTrace(Ljava/lang/String;)V

    goto :goto_0

    .line 163
    :catch_0
    move-exception v4

    .line 164
    .local v4, "t":Ljava/lang/Throwable;
    const-string/jumbo v5, "H5UcService::UcServiceWorkerSetup"

    const-string/jumbo v6, "initServiceWorkerController exception "

    invoke-static {v5, v6, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method