.class public Lcom/alipay/android/app/cctemplate/api/TemplateService;
.super Ljava/lang/Object;
.source "TemplateService.java"


# static fields
.field public static final OPTION_DEFER_DOWNLOAD:Ljava/lang/String; = "opt_defer_download"

.field public static final OPTION_SYNC_CANDIDATE:Ljava/lang/String; = "opt_sync_candidate"

.field public static final OPTION_SYNC_RECEIVED:Ljava/lang/String; = "opt_sync_reveived"


# instance fields
.field private mEngine:Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;

.field private mProvider:Lcom/alipay/android/app/cctemplate/api/ITplProvider;

.field private mTplTransport:Lcom/alipay/android/app/cctemplate/api/ITplTransport;


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/cctemplate/api/ITplProvider;)V
    .locals 2
    .param p1, "provider"    # Lcom/alipay/android/app/cctemplate/api/ITplProvider;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v0

    invoke-interface {p1}, Lcom/alipay/android/app/cctemplate/api/ITplProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->initialize(Landroid/content/Context;)V

    .line 33
    iput-object p1, p0, Lcom/alipay/android/app/cctemplate/api/TemplateService;->mProvider:Lcom/alipay/android/app/cctemplate/api/ITplProvider;

    .line 34
    new-instance v0, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;

    invoke-direct {v0, p1}, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;-><init>(Lcom/alipay/android/app/cctemplate/api/ITplProvider;)V

    iput-object v0, p0, Lcom/alipay/android/app/cctemplate/api/TemplateService;->mEngine:Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;

    .line 35
    return-void
.end method

.method public static getBirdNestVersion()Ljava/lang/String;
    .locals 5

    .prologue
    .line 120
    invoke-static {}, Lcom/alipay/birdnest/api/BirdNestEngine;->getVersion()Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, "birdNestVer":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v1

    const-string/jumbo v2, "CdynamicTemplateService::getBirdNestVersion"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "birdNestVer:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    return-object v0
.end method

.method private getTemplateData(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "tplId"    # Ljava/lang/String;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/alipay/android/app/cctemplate/api/TemplateService;->mEngine:Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;->getTemplate(Ljava/lang/String;)Lcom/alipay/android/app/cctemplate/model/Template;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/android/app/cctemplate/model/Template;->data:Ljava/lang/String;

    return-object v0
.end method

.method public static getWalletTransport()Lcom/alipay/android/app/cctemplate/api/ITplTransport;
    .locals 6

    .prologue
    .line 109
    const/4 v2, 0x0

    .line 111
    .local v2, "trans":Lcom/alipay/android/app/cctemplate/api/ITplTransport;
    :try_start_0
    const-string/jumbo v3, "com.alipay.android.app.cctemplate.rpc.TplTransportRpc"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 112
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/alipay/android/app/cctemplate/api/ITplTransport;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :goto_0
    return-object v2

    .line 113
    :catch_0
    move-exception v1

    .line 114
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v3

    const-string/jumbo v4, "template"

    const-string/jumbo v5, "TplRpcInitTransEx"

    invoke-virtual {v3, v4, v5, v1}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public getLocalTemplate(Ljava/lang/String;Z)Lcom/alipay/android/app/cctemplate/model/Template;
    .locals 1
    .param p1, "tplId"    # Ljava/lang/String;
    .param p2, "loadRes"    # Z

    .prologue
    .line 101
    iget-object v0, p0, Lcom/alipay/android/app/cctemplate/api/TemplateService;->mEngine:Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;->getTemplate(Ljava/lang/String;Z)Lcom/alipay/android/app/cctemplate/model/Template;

    move-result-object v0

    return-object v0
.end method

.method public getTplTransport()Lcom/alipay/android/app/cctemplate/api/ITplTransport;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alipay/android/app/cctemplate/api/TemplateService;->mTplTransport:Lcom/alipay/android/app/cctemplate/api/ITplTransport;

    if-nez v0, :cond_0

    .line 39
    invoke-static {}, Lcom/alipay/android/app/cctemplate/api/TemplateService;->getWalletTransport()Lcom/alipay/android/app/cctemplate/api/ITplTransport;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/cctemplate/api/TemplateService;->mTplTransport:Lcom/alipay/android/app/cctemplate/api/ITplTransport;

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/cctemplate/api/TemplateService;->mTplTransport:Lcom/alipay/android/app/cctemplate/api/ITplTransport;

    return-object v0
.end method

.method public loadTemplate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "tplId"    # Ljava/lang/String;
    .param p2, "tplDesc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 71
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 72
    .local v1, "response":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 75
    .local v0, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v4, "opt_defer_download"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    invoke-virtual {p0, v1, v0}, Lcom/alipay/android/app/cctemplate/api/TemplateService;->loadTemplates(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    .line 80
    .local v2, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_0

    .line 81
    new-instance v4, Ljava/lang/Exception;

    const-string/jumbo v5, "CdynamicTemplateService::loadTemplate failed"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4

    .line 83
    :cond_0
    invoke-direct {p0, p1}, Lcom/alipay/android/app/cctemplate/api/TemplateService;->getTemplateData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 85
    .local v3, "templateData":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v4

    const-string/jumbo v5, "TemplateService::loadTemplate"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "isTplUpdated="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/alipay/android/app/cctemplate/api/TemplateService;->mEngine:Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;

    invoke-virtual {v7}, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;->isTplUpdated()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-object v3
.end method

.method public loadTemplates(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 57
    .local p1, "response":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/alipay/android/app/cctemplate/api/TemplateService;->mEngine:Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;

    invoke-virtual {p0}, Lcom/alipay/android/app/cctemplate/api/TemplateService;->getTplTransport()Lcom/alipay/android/app/cctemplate/api/ITplTransport;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;->loadTemplates(Ljava/util/Map;Ljava/util/Map;Lcom/alipay/android/app/cctemplate/api/ITplTransport;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public preLoad()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 126
    invoke-static {}, Lcom/alipay/android/app/cctemplate/preload/DynamicTemplateQuickPayCache;->getInstance()Lcom/alipay/android/app/cctemplate/preload/DynamicTemplateQuickPayCache;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/cctemplate/api/TemplateService;->mProvider:Lcom/alipay/android/app/cctemplate/api/ITplProvider;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/cctemplate/preload/DynamicTemplateQuickPayCache;->preLoad(Lcom/alipay/android/app/cctemplate/api/ITplProvider;)V

    .line 127
    return-void
.end method

.method public readAssets(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/alipay/android/app/cctemplate/api/TemplateService;->mEngine:Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;->readAssets(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setTplTransport(Lcom/alipay/android/app/cctemplate/api/ITplTransport;)V
    .locals 0
    .param p1, "trans"    # Lcom/alipay/android/app/cctemplate/api/ITplTransport;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/alipay/android/app/cctemplate/api/TemplateService;->mTplTransport:Lcom/alipay/android/app/cctemplate/api/ITplTransport;

    .line 46
    return-void
.end method

.method public syncTplsCandidate()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 130
    invoke-static {}, Lcom/alipay/android/app/cctemplate/sync/TemplateCandidate;->instance()Lcom/alipay/android/app/cctemplate/sync/TemplateCandidate;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/cctemplate/api/TemplateService;->mProvider:Lcom/alipay/android/app/cctemplate/api/ITplProvider;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/cctemplate/sync/TemplateCandidate;->syncTplsCandidate(Lcom/alipay/android/app/cctemplate/api/ITplProvider;)V

    .line 131
    return-void
.end method

.method public triggerTemplateUpdate()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 93
    iget-object v0, p0, Lcom/alipay/android/app/cctemplate/api/TemplateService;->mEngine:Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;

    invoke-virtual {p0}, Lcom/alipay/android/app/cctemplate/api/TemplateService;->getTplTransport()Lcom/alipay/android/app/cctemplate/api/ITplTransport;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;->triggerTemplateUpdate(Lcom/alipay/android/app/cctemplate/api/ITplTransport;)V

    .line 94
    return-void
.end method
