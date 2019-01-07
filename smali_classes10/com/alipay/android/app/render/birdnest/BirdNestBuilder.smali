.class public Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;
.super Ljava/lang/Object;
.source "BirdNestBuilder.java"


# instance fields
.field public actionBarHeight:I

.field public appParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public bundleName:Ljava/lang/String;

.field public businessId:Ljava/lang/String;

.field public callback:Lcom/alipay/android/app/template/OnLoadCallback;

.field public context:Landroid/content/Context;

.field public contextResources:Landroid/content/res/Resources;

.field public data:Ljava/lang/String;

.field public eventBridge:Lcom/alipay/android/app/template/FBBridge;

.field public eventTarget:Ljava/lang/Object;

.field private expired:Z

.field public factory:Lcom/alipay/android/app/template/FBPluginFactory;

.field public jsDebugger:Z

.field public mCallbackProxy:Lcom/alipay/android/app/render/birdnest/RenderCallbackProxy;

.field public mCashierProvider:Lcom/alipay/android/app/render/api/ICashierProvider;

.field public mKeyboardService:Lcom/alipay/android/app/template/TemplateKeyboardService;

.field public mPasswordService:Lcom/alipay/android/app/template/TemplatePasswordService;

.field public resourceClient:Lcom/alipay/android/app/template/FBResourceClient;

.field public tplHtml:Ljava/lang/String;

.field public tplId:Ljava/lang/String;

.field public tplJson:Ljava/lang/String;

.field public useQuickPayTemplateManager:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-boolean v0, p0, Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;->jsDebugger:Z

    .line 40
    iput-boolean v0, p0, Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;->useQuickPayTemplateManager:Z

    .line 41
    iput-boolean v0, p0, Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;->expired:Z

    .line 47
    iput-object p1, p0, Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;->context:Landroid/content/Context;

    .line 48
    return-void
.end method


# virtual methods
.method public create()Lcom/alipay/android/app/template/FBContext;
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v10, 0x0

    .line 51
    iget-boolean v4, p0, Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;->expired:Z

    if-eqz v4, :cond_0

    .line 52
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "BirdNestBuilder is Expired!\n"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 55
    :cond_0
    iget-object v4, p0, Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;->mCashierProvider:Lcom/alipay/android/app/render/api/ICashierProvider;

    invoke-static {v4}, Lcom/alipay/android/app/render/birdnest/service/BirdNestManager;->create(Lcom/alipay/android/app/render/api/ICashierProvider;)Lcom/alipay/android/app/render/birdnest/service/BirdNestService;

    move-result-object v1

    .line 57
    .local v1, "service":Lcom/alipay/android/app/render/birdnest/service/BirdNestService;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 58
    .local v2, "start":J
    invoke-virtual {v1, p0}, Lcom/alipay/android/app/render/birdnest/service/BirdNestService;->buildFBContext(Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;)Lcom/alipay/android/app/template/FBContext;

    move-result-object v0

    .line 59
    .local v0, "fbContext":Lcom/alipay/android/app/template/FBContext;
    invoke-static {}, Lcom/alipay/android/app/render/log/LogTracer;->getInstance()Lcom/alipay/android/app/render/log/LogTracer;

    move-result-object v4

    const-string/jumbo v5, "render"

    const-string/jumbo v6, "buildFBContext"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/alipay/android/app/render/log/LogTracer;->tracePerf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 61
    if-eqz v0, :cond_1

    .line 62
    iput-object v10, p0, Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;->context:Landroid/content/Context;

    .line 63
    iput-object v10, p0, Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;->data:Ljava/lang/String;

    .line 64
    iput-object v10, p0, Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;->tplHtml:Ljava/lang/String;

    .line 65
    iput-object v10, p0, Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;->tplJson:Ljava/lang/String;

    .line 66
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;->expired:Z

    .line 68
    :cond_1
    return-object v0
.end method

.method public setCallbackProxy(Lcom/alipay/android/app/render/birdnest/RenderCallbackProxy;)Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;
    .locals 0
    .param p1, "callback"    # Lcom/alipay/android/app/render/birdnest/RenderCallbackProxy;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;->mCallbackProxy:Lcom/alipay/android/app/render/birdnest/RenderCallbackProxy;

    .line 73
    return-object p0
.end method

.method public setCashierProvider(Lcom/alipay/android/app/render/api/ICashierProvider;)Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;
    .locals 0
    .param p1, "provider"    # Lcom/alipay/android/app/render/api/ICashierProvider;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;->mCashierProvider:Lcom/alipay/android/app/render/api/ICashierProvider;

    .line 78
    return-object p0
.end method

.method public setDataContent(Ljava/lang/String;)Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;->data:Ljava/lang/String;

    .line 83
    return-object p0
.end method

.method public setPluginFactory(Lcom/alipay/android/app/template/FBPluginFactory;)Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;
    .locals 0
    .param p1, "factory"    # Lcom/alipay/android/app/template/FBPluginFactory;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;->factory:Lcom/alipay/android/app/template/FBPluginFactory;

    .line 103
    return-object p0
.end method

.method public setTemplateHtml(Ljava/lang/String;)Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;
    .locals 0
    .param p1, "html"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;->tplHtml:Ljava/lang/String;

    .line 93
    return-object p0
.end method

.method public setTemplateId(Ljava/lang/String;)Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;
    .locals 0
    .param p1, "tplId"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;->tplId:Ljava/lang/String;

    .line 88
    return-object p0
.end method

.method public setTemplateJson(Ljava/lang/String;)Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;
    .locals 0
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;->tplJson:Ljava/lang/String;

    .line 98
    return-object p0
.end method

.method public setUseQuickPayTemplateManager(Z)Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;
    .locals 0
    .param p1, "useQuickPay"    # Z

    .prologue
    .line 112
    iput-boolean p1, p0, Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;->useQuickPayTemplateManager:Z

    .line 113
    return-object p0
.end method

.method public setmKeyboardService(Lcom/alipay/android/app/template/TemplateKeyboardService;)Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;
    .locals 0
    .param p1, "keyboardService"    # Lcom/alipay/android/app/template/TemplateKeyboardService;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;->mKeyboardService:Lcom/alipay/android/app/template/TemplateKeyboardService;

    .line 108
    return-object p0
.end method
