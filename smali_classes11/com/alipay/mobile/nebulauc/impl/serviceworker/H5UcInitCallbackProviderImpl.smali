.class public Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5UcInitCallbackProviderImpl;
.super Ljava/lang/Object;
.source "H5UcInitCallbackProviderImpl.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/provider/H5UcInitCallbackProvider;


# static fields
.field private static final TAG:Ljava/lang/String; = "H5UcInitCallbackProviderImpl"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5UcInitCallbackProviderImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5UcInitCallbackProviderImpl;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5UcInitCallbackProviderImpl;->preCreate()V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)[B
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-static {p0}, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5UcInitCallbackProviderImpl;->getResource(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private static getResource(Ljava/lang/String;)[B
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 304
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/b;->a()Lcom/alipay/mobile/framework/b;

    const-class v1, Lcom/alipay/mobile/h5container/service/H5Service;

    .line 305
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/framework/c;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5Service;

    .line 306
    .local v0, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    invoke-virtual {v0, p0}, Lcom/alipay/mobile/h5container/service/H5Service;->getH5GlobalDegradePkg(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 308
    .end local v0    # "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private preCreate()V
    .locals 13

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 88
    new-instance v8, Landroid/content/MutableContextWrapper;

    .line 89
    invoke-static {}, Lcom/alipay/mobile/framework/b;->a()Lcom/alipay/mobile/framework/b;

    invoke-static {}, Lcom/alipay/mobile/framework/b;->d()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v8, v1}, Landroid/content/MutableContextWrapper;-><init>(Landroid/content/Context;)V

    .line 93
    .local v8, "contextWrapper":Landroid/content/MutableContextWrapper;
    :try_start_0
    new-instance v2, Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    invoke-direct {v2, v8}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    .local v2, "ucWebView":Lcom/alipay/mobile/nebulauc/impl/UCWebView;
    :goto_0
    if-nez v2, :cond_1

    .line 299
    :goto_1
    return-void

    .line 94
    .end local v2    # "ucWebView":Lcom/alipay/mobile/nebulauc/impl/UCWebView;
    :catch_0
    move-exception v11

    .line 95
    .local v11, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v1, "H5UcInitCallbackProviderImpl"

    const-string/jumbo v4, "create uc webView exception."

    invoke-static {v1, v4, v11}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 96
    const/4 v12, 0x0

    .line 97
    .local v12, "ucWebView":Lcom/alipay/mobile/nebulauc/impl/UCWebView;
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    .line 98
    .local v0, "h5LogProvider":Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    if-eqz v0, :cond_0

    .line 99
    const-string/jumbo v1, "H5_UC_CREATE_FAILED"

    sget-object v2, Lcom/uc/webview/export/Build$Version;->NAME:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "isTinyApp="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
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

    .line 105
    invoke-static {v11}, Lcom/alipay/mobile/nebulauc/util/CommonUtil;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    .line 99
    invoke-interface/range {v0 .. v5}, Lcom/alipay/mobile/nebula/provider/H5LogProvider;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move-object v2, v12

    .end local v12    # "ucWebView":Lcom/alipay/mobile/nebulauc/impl/UCWebView;
    .restart local v2    # "ucWebView":Lcom/alipay/mobile/nebulauc/impl/UCWebView;
    goto :goto_0

    .line 112
    .end local v0    # "h5LogProvider":Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    .end local v11    # "throwable":Ljava/lang/Throwable;
    :cond_1
    const-string/jumbo v1, "https://appx/af-appx.min.js"

    invoke-static {v1}, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5UcInitCallbackProviderImpl;->getResource(Ljava/lang/String;)[B

    move-result-object v1

    if-nez v1, :cond_2

    .line 113
    const-string/jumbo v1, "H5UcInitCallbackProviderImpl"

    const-string/jumbo v3, "getResource==null not preCreate"

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 118
    :cond_2
    const-class v1, Lcom/alipay/mobile/h5container/service/H5Service;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alipay/mobile/h5container/service/H5Service;

    .line 119
    .local v10, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    if-eqz v10, :cond_3

    invoke-virtual {v10}, Lcom/alipay/mobile/h5container/service/H5Service;->getTopH5Page()Liop;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 120
    const-string/jumbo v1, "H5UcInitCallbackProviderImpl"

    const-string/jumbo v3, "getTopH5Page not null not preCreate"

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 124
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isDebug()Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->setWebContentsDebuggingEnabled(Z)V

    .line 125
    invoke-virtual {v2}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->getSettings()Lcom/alipay/mobile/nebula/webview/APWebSettings;

    move-result-object v1

    const/4 v4, 0x1

    invoke-interface {v1, v4}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->setJavaScriptEnabled(Z)V

    .line 126
    new-instance v1, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5UcInitCallbackProviderImpl$3;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5UcInitCallbackProviderImpl$3;-><init>(Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5UcInitCallbackProviderImpl;)V

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->setWebViewClient(Lcom/alipay/mobile/nebula/webview/APWebViewClient;)V

    .line 286
    sget v1, Lcom/alipay/mobile/nebulauc/R$raw;->tinydemo:I

    invoke-static {v1}, Lcom/alipay/mobile/nebula/appcenter/res/H5ResourceManager;->getRaw(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "text/html"

    const-string/jumbo v6, "utf-8"

    move-object v7, v3

    invoke-virtual/range {v2 .. v7}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    move-object v9, v2

    .line 288
    .local v9, "finalUcWebView":Lcom/alipay/mobile/nebulauc/impl/UCWebView;
    new-instance v1, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5UcInitCallbackProviderImpl$4;

    invoke-direct {v1, p0, v9}, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5UcInitCallbackProviderImpl$4;-><init>(Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5UcInitCallbackProviderImpl;Lcom/alipay/mobile/nebulauc/impl/UCWebView;)V

    const-wide/16 v4, 0x1388

    invoke-static {v1, v4, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;J)V

    goto/16 :goto_1
.end method


# virtual methods
.method public onInitUcSuccess()V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5UcInitCallbackProviderImpl$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5UcInitCallbackProviderImpl$1;-><init>(Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5UcInitCallbackProviderImpl;)V

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    .line 68
    return-void
.end method

.method public preLoadAppX()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 74
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 75
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "isTinyApp"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 76
    invoke-static {v0, v2}, Lcom/alipay/mobile/nebulacore/appcenter/center/H5AppCenter;->initTinyAppRes(Landroid/os/Bundle;Z)V

    .line 78
    new-instance v1, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5UcInitCallbackProviderImpl$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5UcInitCallbackProviderImpl$2;-><init>(Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5UcInitCallbackProviderImpl;)V

    const-wide/16 v2, 0x3e8

    invoke-static {v1, v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;J)V

    .line 84
    return-void
.end method
