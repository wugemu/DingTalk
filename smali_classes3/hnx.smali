.class public final Lhnx;
.super Ljava/lang/Object;
.source "MiniAppUcInitCallbackProviderImpl.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/provider/H5UcInitCallbackProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lhnx;)V
    .locals 8
    .param p0, "x0"    # Lhnx;

    .prologue
    const/4 v3, 0x0

    .line 49
    .line 1114
    new-instance v0, Landroid/content/MutableContextWrapper;

    .line 1115
    invoke-static {}, Lcom/alipay/mobile/framework/b;->a()Lcom/alipay/mobile/framework/b;

    invoke-static {}, Lcom/alipay/mobile/framework/b;->d()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/MutableContextWrapper;-><init>(Landroid/content/Context;)V

    .line 1119
    :try_start_0
    new-instance v2, Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    invoke-direct {v2, v0}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1134
    :goto_0
    if-eqz v2, :cond_0

    .line 1138
    const-string/jumbo v0, "https://appx/af-appx.min.js"

    invoke-static {v0}, Lhnx;->b(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_2

    .line 1139
    const-string/jumbo v0, "MiniAppUcInitCallbackProviderImpl"

    const-string/jumbo v1, "getResource==null not preCreate"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1147
    :cond_0
    :goto_1
    return-void

    .line 1120
    :catch_0
    move-exception v0

    move-object v5, v0

    .line 1121
    const-string/jumbo v0, "MiniAppUcInitCallbackProviderImpl"

    const-string/jumbo v1, "create uc webView exception."

    invoke-static {v0, v1, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1123
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    .line 1124
    if-eqz v0, :cond_1

    .line 1125
    const-string/jumbo v1, "H5_UC_CREATE_FAILED"

    sget-object v2, Lcom/uc/webview/export/Build$Version;->NAME:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "isTinyApp="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1128
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "^ucVersion="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v6, Lcom/alipay/mobile/nebulaucsdk/a;->a:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1131
    invoke-static {v5}, Lcom/alipay/mobile/nebulauc/util/CommonUtil;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    .line 1125
    invoke-interface/range {v0 .. v5}, Lcom/alipay/mobile/nebula/provider/H5LogProvider;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move-object v2, v3

    goto :goto_0

    .line 1144
    :cond_2
    const-class v0, Lcom/alipay/mobile/h5container/service/H5Service;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5Service;

    .line 1145
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/service/H5Service;->getTopH5Page()Liop;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1146
    const-string/jumbo v0, "MiniAppUcInitCallbackProviderImpl"

    const-string/jumbo v1, "getTopH5Page not null not preCreate"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1150
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isDebug()Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->setWebContentsDebuggingEnabled(Z)V

    .line 1151
    invoke-virtual {v2}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->getSettings()Lcom/alipay/mobile/nebula/webview/APWebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->setJavaScriptEnabled(Z)V

    .line 1152
    new-instance v0, Lhnx$3;

    invoke-direct {v0, p0}, Lhnx$3;-><init>(Lhnx;)V

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->setWebViewClient(Lcom/alipay/mobile/nebula/webview/APWebViewClient;)V

    .line 1312
    sget v0, Lcom/alipay/mobile/nebulauc/R$raw;->tinydemo:I

    invoke-static {v0}, Lcom/alipay/mobile/nebula/appcenter/res/H5ResourceManager;->getRaw(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "text/html"

    const-string/jumbo v6, "utf-8"

    move-object v7, v3

    invoke-virtual/range {v2 .. v7}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1314
    new-instance v0, Lhnx$4;

    invoke-direct {v0, p0, v2}, Lhnx$4;-><init>(Lhnx;Lcom/alipay/mobile/nebulauc/impl/UCWebView;)V

    const-wide/16 v2, 0x1388

    invoke-static {v0, v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;J)V

    goto/16 :goto_1
.end method

.method static synthetic a(Ljava/lang/String;)[B
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-static {p0}, Lhnx;->b(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/lang/String;)[B
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 330
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/b;->a()Lcom/alipay/mobile/framework/b;

    const-class v1, Lcom/alipay/mobile/h5container/service/H5Service;

    .line 331
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/framework/c;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5Service;

    .line 332
    .local v0, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    invoke-virtual {v0, p0}, Lcom/alipay/mobile/h5container/service/H5Service;->getH5GlobalDegradePkg(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 334
    .end local v0    # "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final onInitUcSuccess()V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Lhnx$1;

    invoke-direct {v0, p0}, Lhnx$1;-><init>(Lhnx;)V

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    .line 75
    return-void
.end method

.method public final preLoadAppX()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 80
    const-string/jumbo v0, "MiniAppUcInitCallbackProviderImpl"

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lhnx$2;

    invoke-direct {v1, p0}, Lhnx$2;-><init>(Lhnx;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 110
    return-void
.end method
