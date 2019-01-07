.class public Lcom/alipay/android/app/cctemplate/preload/DynamicTemplateQuickPayCache;
.super Ljava/lang/Object;
.source "DynamicTemplateQuickPayCache.java"


# static fields
.field private static mInstance:Lcom/alipay/android/app/cctemplate/preload/DynamicTemplateQuickPayCache;


# instance fields
.field private mIsInitialized:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/cctemplate/preload/DynamicTemplateQuickPayCache;->mIsInitialized:Z

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/android/app/cctemplate/preload/DynamicTemplateQuickPayCache;Lcom/alipay/android/app/cctemplate/api/ITplProvider;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/android/app/cctemplate/preload/DynamicTemplateQuickPayCache;
    .param p1, "x1"    # Lcom/alipay/android/app/cctemplate/api/ITplProvider;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/alipay/android/app/cctemplate/preload/DynamicTemplateQuickPayCache;->initialize(Lcom/alipay/android/app/cctemplate/api/ITplProvider;)V

    return-void
.end method

.method public static getInstance()Lcom/alipay/android/app/cctemplate/preload/DynamicTemplateQuickPayCache;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/alipay/android/app/cctemplate/preload/DynamicTemplateQuickPayCache;->mInstance:Lcom/alipay/android/app/cctemplate/preload/DynamicTemplateQuickPayCache;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/alipay/android/app/cctemplate/preload/DynamicTemplateQuickPayCache;

    invoke-direct {v0}, Lcom/alipay/android/app/cctemplate/preload/DynamicTemplateQuickPayCache;-><init>()V

    sput-object v0, Lcom/alipay/android/app/cctemplate/preload/DynamicTemplateQuickPayCache;->mInstance:Lcom/alipay/android/app/cctemplate/preload/DynamicTemplateQuickPayCache;

    .line 24
    :cond_0
    sget-object v0, Lcom/alipay/android/app/cctemplate/preload/DynamicTemplateQuickPayCache;->mInstance:Lcom/alipay/android/app/cctemplate/preload/DynamicTemplateQuickPayCache;

    return-object v0
.end method

.method private initialize(Lcom/alipay/android/app/cctemplate/api/ITplProvider;)V
    .locals 4
    .param p1, "provider"    # Lcom/alipay/android/app/cctemplate/api/ITplProvider;

    .prologue
    const/4 v3, 0x0

    .line 60
    new-instance v0, Lcom/alipay/android/app/cctemplate/api/TemplateService;

    invoke-direct {v0, p1}, Lcom/alipay/android/app/cctemplate/api/TemplateService;-><init>(Lcom/alipay/android/app/cctemplate/api/ITplProvider;)V

    .line 62
    .local v0, "service":Lcom/alipay/android/app/cctemplate/api/TemplateService;
    const-string/jumbo v1, "AlipaySDK.bundle/amc.js"

    const-string/jumbo v2, "amc.js"

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/cctemplate/api/TemplateService;->readAssets(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/flybird/FBDocumentAssistor;->putAssetRes(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string/jumbo v1, "AlipaySDK.bundle/amc.css"

    const-string/jumbo v2, "amc.css"

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/cctemplate/api/TemplateService;->readAssets(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/flybird/FBDocumentAssistor;->putAssetRes(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string/jumbo v1, "AlipaySDK.bundle/amc.i18n"

    const-string/jumbo v2, "amc.i18n"

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/cctemplate/api/TemplateService;->readAssets(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/flybird/FBDocumentAssistor;->putAssetRes(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string/jumbo v1, "QUICKPAY@cashier-pre-confirm-flex"

    invoke-virtual {v0, v1, v3}, Lcom/alipay/android/app/cctemplate/api/TemplateService;->getLocalTemplate(Ljava/lang/String;Z)Lcom/alipay/android/app/cctemplate/model/Template;

    .line 67
    const-string/jumbo v1, "QUICKPAY@cashier-channel-logo-flex"

    invoke-virtual {v0, v1, v3}, Lcom/alipay/android/app/cctemplate/api/TemplateService;->getLocalTemplate(Ljava/lang/String;Z)Lcom/alipay/android/app/cctemplate/model/Template;

    .line 68
    const-string/jumbo v1, "QUICKPAY@deposit-index-flex"

    invoke-virtual {v0, v1, v3}, Lcom/alipay/android/app/cctemplate/api/TemplateService;->getLocalTemplate(Ljava/lang/String;Z)Lcom/alipay/android/app/cctemplate/model/Template;

    .line 69
    const-string/jumbo v1, "QUICKPAY@frontpay-channel-logo-flex"

    invoke-virtual {v0, v1, v3}, Lcom/alipay/android/app/cctemplate/api/TemplateService;->getLocalTemplate(Ljava/lang/String;Z)Lcom/alipay/android/app/cctemplate/model/Template;

    .line 70
    const-string/jumbo v1, "QUICKPAY@cashier-card-detail-flex"

    invoke-virtual {v0, v1, v3}, Lcom/alipay/android/app/cctemplate/api/TemplateService;->getLocalTemplate(Ljava/lang/String;Z)Lcom/alipay/android/app/cctemplate/model/Template;

    .line 71
    const-string/jumbo v1, "QUICKPAY@cashier-card-no-flex"

    invoke-virtual {v0, v1, v3}, Lcom/alipay/android/app/cctemplate/api/TemplateService;->getLocalTemplate(Ljava/lang/String;Z)Lcom/alipay/android/app/cctemplate/model/Template;

    .line 72
    const-string/jumbo v1, "QUICKPAY@open-pwd-check-flex"

    invoke-virtual {v0, v1, v3}, Lcom/alipay/android/app/cctemplate/api/TemplateService;->getLocalTemplate(Ljava/lang/String;Z)Lcom/alipay/android/app/cctemplate/model/Template;

    .line 73
    return-void
.end method


# virtual methods
.method public declared-synchronized preLoad(Lcom/alipay/android/app/cctemplate/api/ITplProvider;)V
    .locals 3
    .param p1, "provider"    # Lcom/alipay/android/app/cctemplate/api/ITplProvider;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 28
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v0

    const-string/jumbo v1, "DynamicTemplateQuickPayCache::preLoad"

    const-string/jumbo v2, "start"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iget-boolean v0, p0, Lcom/alipay/android/app/cctemplate/preload/DynamicTemplateQuickPayCache;->mIsInitialized:Z

    if-eqz v0, :cond_0

    .line 31
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v0

    const-string/jumbo v1, "DynamicTemplateQuickPayCache::preLoad"

    const-string/jumbo v2, "mIsInitialized:true"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :goto_0
    monitor-exit p0

    return-void

    .line 34
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/alipay/android/app/cctemplate/preload/DynamicTemplateQuickPayCache;->mIsInitialized:Z

    .line 36
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/android/app/cctemplate/preload/DynamicTemplateQuickPayCache$1;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/app/cctemplate/preload/DynamicTemplateQuickPayCache$1;-><init>(Lcom/alipay/android/app/cctemplate/preload/DynamicTemplateQuickPayCache;Lcom/alipay/android/app/cctemplate/api/ITplProvider;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 56
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 28
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
