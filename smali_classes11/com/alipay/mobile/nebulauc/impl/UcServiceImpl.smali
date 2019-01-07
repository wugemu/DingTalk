.class public Lcom/alipay/mobile/nebulauc/impl/UcServiceImpl;
.super Lcom/alipay/mobile/h5container/service/UcService;
.source "UcServiceImpl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "H5UcService"


# instance fields
.field private mUcInitSuccessReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/alipay/mobile/h5container/service/UcService;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebulauc/impl/UcServiceImpl;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulauc/impl/UcServiceImpl;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UcServiceImpl;->mUcInitSuccessReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method public static isInLiteIdleTask()Z
    .locals 2

    .prologue
    .line 67
    const-string/jumbo v0, "h5_tiny_initUc_idleTask"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private markInitThread()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 169
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, "threadName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    :goto_0
    return-void

    .line 173
    :cond_0
    const-string/jumbo v1, "thread"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupTracing;->addCommonInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private declared-synchronized registerUcInitSuccessReceiver(Z)V
    .locals 6
    .param p1, "enableHA"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 71
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/impl/UcServiceImpl;->mUcInitSuccessReceiver:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 126
    :goto_0
    monitor-exit p0

    return-void

    .line 76
    :cond_0
    :try_start_1
    const-class v2, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 77
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 76
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 78
    .local v0, "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    if-eqz v0, :cond_1

    .line 79
    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;->onUcInitAbandonedInLiteProcess()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    .end local v0    # "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    :cond_1
    :goto_1
    :try_start_2
    new-instance v2, Lcom/alipay/mobile/nebulauc/impl/UcServiceImpl$1;

    invoke-direct {v2, p0, p1}, Lcom/alipay/mobile/nebulauc/impl/UcServiceImpl$1;-><init>(Lcom/alipay/mobile/nebulauc/impl/UcServiceImpl;Z)V

    iput-object v2, p0, Lcom/alipay/mobile/nebulauc/impl/UcServiceImpl;->mUcInitSuccessReceiver:Landroid/content/BroadcastReceiver;

    .line 124
    invoke-static {}, Lcom/alipay/mobile/framework/b;->a()Lcom/alipay/mobile/framework/b;

    invoke-static {}, Lcom/alipay/mobile/framework/b;->d()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/impl/UcServiceImpl;->mUcInitSuccessReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string/jumbo v5, "uc_init_success_in_main"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v2, v3, v4}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 71
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 81
    :catch_0
    move-exception v1

    .line 82
    .local v1, "thr":Ljava/lang/Throwable;
    :try_start_3
    const-string/jumbo v2, "H5UcService"

    const-string/jumbo v3, "call PerformanceLogger.setUcInitAbandoned() error!"

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public createWebView(Landroid/content/Context;Z)Lcom/alipay/mobile/nebula/webview/APWebView;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enableHA"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 178
    const-string/jumbo v1, "H5UcService"

    const-string/jumbo v2, "createWebView"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :try_start_0
    invoke-static {p2}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->init(Z)Z

    .line 182
    invoke-static {p1}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    move-result-object v7

    .line 183
    .local v7, "webView":Lcom/alipay/mobile/nebulauc/impl/UCWebView;
    sget-boolean v1, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->isRetryInitUc:Z

    if-eqz v1, :cond_0

    .line 184
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->uploadUcRetryResult(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    :cond_0
    :goto_0
    const-string/jumbo v1, "H5UcService"

    const-string/jumbo v2, "createWebView end"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    return-object v7

    .line 186
    .end local v7    # "webView":Lcom/alipay/mobile/nebulauc/impl/UCWebView;
    :catch_0
    move-exception v6

    .line 187
    .local v6, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v1, "H5UcService"

    const-string/jumbo v2, "create uc webview exception."

    invoke-static {v1, v2, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 188
    sput-boolean v3, Liog;->a:Z

    .line 189
    sput-boolean v3, Liog;->b:Z

    .line 191
    const/4 v7, 0x0

    .line 192
    .restart local v7    # "webView":Lcom/alipay/mobile/nebulauc/impl/UCWebView;
    sput-boolean v3, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->s7zInited:Z

    .line 193
    sput-boolean v3, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sUcInited:Z

    .line 194
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    .line 195
    .local v0, "h5LogProvider":Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    if-eqz v0, :cond_0

    .line 196
    const-string/jumbo v1, "H5_UC_CREATE_FAILED"

    sget-object v2, Lcom/uc/webview/export/Build$Version;->NAME:Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "isTinyApp="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 199
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "^ucVersion="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/alipay/mobile/nebulaucsdk/a;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 202
    invoke-static {v6}, Lcom/alipay/mobile/nebulauc/util/CommonUtil;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    .line 196
    invoke-interface/range {v0 .. v5}, Lcom/alipay/mobile/nebula/provider/H5LogProvider;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getResponse(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 5
    .param p1, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 212
    invoke-static {p1}, Lcom/uc/webview/export/extension/UCCore;->getResponseByUrl(Ljava/lang/String;)Lcom/uc/webview/export/WebResourceResponse;

    move-result-object v0

    .line 213
    .local v0, "wrs":Lcom/uc/webview/export/WebResourceResponse;
    if-nez v0, :cond_0

    .line 214
    const/4 v1, 0x0

    .line 216
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Landroid/webkit/WebResourceResponse;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebResourceResponse;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/uc/webview/export/WebResourceResponse;->getEncoding()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/uc/webview/export/WebResourceResponse;->getData()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    goto :goto_0
.end method

.method public init(Z)Z
    .locals 7
    .param p1, "enableHA"    # Z

    .prologue
    const/4 v3, 0x0

    .line 133
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/UcServiceImpl;->isInLiteIdleTask()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 134
    const-string/jumbo v4, "H5UcService"

    const-string/jumbo v5, "detect lite idleTask!"

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string/jumbo v4, "KEY_LAST_SUCCESS_ODEX_VERSION"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->getStringConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, "lastSuccessVersion":Ljava/lang/String;
    sget-object v4, Lcom/alipay/mobile/nebulaucsdk/a;->a:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 139
    const-string/jumbo v4, "H5UcService"

    const-string/jumbo v5, "not trigger idle task because uc version changed!"

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulauc/impl/UcServiceImpl;->registerUcInitSuccessReceiver(Z)V

    .line 141
    const-string/jumbo v4, "lite_blocked"

    const-string/jumbo v5, "1"

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupTracing;->addCommonInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    .end local v1    # "lastSuccessVersion":Ljava/lang/String;
    :goto_0
    return v3

    .line 146
    .restart local v1    # "lastSuccessVersion":Ljava/lang/String;
    :cond_0
    const-string/jumbo v4, "KEY_MAIN_UCODEX_INIT_SUCCESS"

    invoke-static {v4, v3}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->getBooleanConfig(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_1

    .line 147
    const-string/jumbo v4, "H5UcService"

    const-string/jumbo v5, "not trigger idle task because main process uc not init!"

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulauc/impl/UcServiceImpl;->registerUcInitSuccessReceiver(Z)V

    .line 149
    const-string/jumbo v4, "lite_blocked"

    const-string/jumbo v5, "2"

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupTracing;->addCommonInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 154
    .end local v1    # "lastSuccessVersion":Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/impl/UcServiceImpl;->markInitThread()V

    .line 155
    invoke-static {p1}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->init(Z)Z

    move-result v3

    .line 156
    .local v3, "result":Z
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    .line 157
    .local v2, "manager":Ldq;
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v4, "h5_action_uc_init_finish"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 158
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "result"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 160
    const-string/jumbo v4, "H5UcService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "result "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    sput-boolean v3, Liog;->a:Z

    .line 162
    sput-boolean v3, Liog;->b:Z

    .line 164
    invoke-virtual {v2, v0}, Ldq;->a(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method public initUC7zSo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    const-string/jumbo v0, "unsupport"

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 47
    const-string/jumbo v1, "H5UcService"

    const-string/jumbo v2, "onCreate"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getH5Service()Lcom/alipay/mobile/h5container/service/H5Service;

    move-result-object v0

    .line 50
    .local v0, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/service/H5Service;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/nebula/provider/H5HttpCacheProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/alipay/mobile/nebulauc/provider/UCHttpCacheProvider;

    invoke-direct {v3}, Lcom/alipay/mobile/nebulauc/provider/UCHttpCacheProvider;-><init>()V

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->setProvider(Ljava/lang/String;Ljava/lang/Object;)V

    .line 53
    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/service/H5Service;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/nebula/provider/H5ServiceWorkerPushProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/alipay/mobile/nebulauc/provider/UCServiceWorkerProvider;

    invoke-direct {v3}, Lcom/alipay/mobile/nebulauc/provider/UCServiceWorkerProvider;-><init>()V

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->setProvider(Ljava/lang/String;Ljava/lang/Object;)V

    .line 56
    :cond_0
    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 60
    const-string/jumbo v0, "H5UcService"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return-void
.end method
