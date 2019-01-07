.class public Lcom/alipay/android/app/render/api/ext/BirdNestRender;
.super Ljava/lang/Object;
.source "BirdNestRender.java"

# interfaces
.implements Lcom/alipay/android/app/render/api/ICashierRender;


# instance fields
.field private mCallBack:Lcom/alipay/android/app/template/ITemplateClickCallback;

.field private mFBContextHash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Lcom/alipay/android/app/template/FBContext;",
            ">;"
        }
    .end annotation
.end field

.field private mIsGenContextDelay:Z

.field private mKeyBoardService:Lcom/alipay/android/app/template/TemplateKeyboardService;

.field private mPluginFactory:Lcom/alipay/android/app/template/FBPluginFactory;

.field private mProvider:Lcom/alipay/android/app/render/api/ICashierProvider;

.field private mTplProvider:Lcom/alipay/android/app/cctemplate/api/ITplProvider;

.field private mTplService:Lcom/alipay/android/app/cctemplate/api/TemplateService;

.field private mTransport:Lcom/alipay/android/app/cctemplate/api/ITplTransport;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/render/api/ext/BirdNestRender;->mFBContextHash:Ljava/util/HashMap;

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/render/api/ext/BirdNestRender;->mIsGenContextDelay:Z

    .line 77
    return-void
.end method

.method static synthetic access$002(Lcom/alipay/android/app/render/api/ext/BirdNestRender;Lcom/alipay/android/app/template/ITemplateClickCallback;)Lcom/alipay/android/app/template/ITemplateClickCallback;
    .locals 0
    .param p0, "x0"    # Lcom/alipay/android/app/render/api/ext/BirdNestRender;
    .param p1, "x1"    # Lcom/alipay/android/app/template/ITemplateClickCallback;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/alipay/android/app/render/api/ext/BirdNestRender;->mCallBack:Lcom/alipay/android/app/template/ITemplateClickCallback;

    return-object p1
.end method

.method private buildRpcJs(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .param p1, "rpcData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 181
    .local p2, "tplExtParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "var flybird = flybird || {};"

    .line 182
    .local v3, "rpcJs":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "flybird.rpcData="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 184
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 185
    .local v2, "local":Lorg/json/JSONObject;
    if-eqz p2, :cond_0

    .line 186
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 188
    .local v1, "key":Ljava/lang/String;
    :try_start_0
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/android/app/render/log/LogTracer;->getInstance()Lcom/alipay/android/app/render/log/LogTracer;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/alipay/android/app/render/log/LogTracer;->printExceptionStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 194
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "key":Ljava/lang/String;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "flybird.local="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 195
    return-object v3
.end method

.method private getCallbackProxy(Lcom/alipay/android/app/render/api/callback/ICashierRenderCallback;)Lcom/alipay/android/app/render/birdnest/RenderCallbackProxy;
    .locals 1
    .param p1, "callback"    # Lcom/alipay/android/app/render/api/callback/ICashierRenderCallback;

    .prologue
    .line 157
    new-instance v0, Lcom/alipay/android/app/render/api/ext/BirdNestRender$1;

    invoke-direct {v0, p0, p1}, Lcom/alipay/android/app/render/api/ext/BirdNestRender$1;-><init>(Lcom/alipay/android/app/render/api/ext/BirdNestRender;Lcom/alipay/android/app/render/api/callback/ICashierRenderCallback;)V

    return-object v0
.end method

.method private getEngineService()Lcom/alipay/android/app/render/birdnest/service/BirdNestService;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/alipay/android/app/render/api/ext/BirdNestRender;->mProvider:Lcom/alipay/android/app/render/api/ICashierProvider;

    invoke-static {v0}, Lcom/alipay/android/app/render/birdnest/service/BirdNestManager;->create(Lcom/alipay/android/app/render/api/ICashierProvider;)Lcom/alipay/android/app/render/birdnest/service/BirdNestService;

    move-result-object v0

    return-object v0
.end method

.method private getTplService()Lcom/alipay/android/app/cctemplate/api/TemplateService;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 228
    iget-object v0, p0, Lcom/alipay/android/app/render/api/ext/BirdNestRender;->mTplService:Lcom/alipay/android/app/cctemplate/api/TemplateService;

    if-nez v0, :cond_0

    .line 229
    new-instance v0, Lcom/alipay/android/app/cctemplate/api/TemplateService;

    iget-object v1, p0, Lcom/alipay/android/app/render/api/ext/BirdNestRender;->mTplProvider:Lcom/alipay/android/app/cctemplate/api/ITplProvider;

    invoke-direct {v0, v1}, Lcom/alipay/android/app/cctemplate/api/TemplateService;-><init>(Lcom/alipay/android/app/cctemplate/api/ITplProvider;)V

    iput-object v0, p0, Lcom/alipay/android/app/render/api/ext/BirdNestRender;->mTplService:Lcom/alipay/android/app/cctemplate/api/TemplateService;

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/render/api/ext/BirdNestRender;->mTplService:Lcom/alipay/android/app/cctemplate/api/TemplateService;

    iget-object v1, p0, Lcom/alipay/android/app/render/api/ext/BirdNestRender;->mTransport:Lcom/alipay/android/app/cctemplate/api/ITplTransport;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/cctemplate/api/TemplateService;->setTplTransport(Lcom/alipay/android/app/cctemplate/api/ITplTransport;)V

    .line 232
    iget-object v0, p0, Lcom/alipay/android/app/render/api/ext/BirdNestRender;->mTplService:Lcom/alipay/android/app/cctemplate/api/TemplateService;

    return-object v0
.end method

.method private setAlpha(Landroid/view/View;F)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "alpha"    # F

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 378
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v1, v2, :cond_0

    .line 379
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p2, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 380
    .local v0, "animation":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 381
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 382
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 386
    .end local v0    # "animation":Landroid/view/animation/AlphaAnimation;
    :goto_0
    return-void

    .line 384
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method


# virtual methods
.method public callExecuteJs(Landroid/view/View;Ljava/lang/String;)I
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "js"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, -0x1

    .line 405
    :try_start_0
    iget-object v3, p0, Lcom/alipay/android/app/render/api/ext/BirdNestRender;->mFBContextHash:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/app/template/FBContext;

    .line 406
    .local v1, "fbCxt":Lcom/alipay/android/app/template/FBContext;
    if-eqz v1, :cond_0

    .line 407
    invoke-interface {v1, p2}, Lcom/alipay/android/app/template/FBContext;->executeJs(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 413
    .end local v1    # "fbCxt":Lcom/alipay/android/app/template/FBContext;
    :cond_0
    :goto_0
    return v2

    .line 409
    :catch_0
    move-exception v0

    .line 410
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/alipay/android/app/render/log/LogTracer;->getInstance()Lcom/alipay/android/app/render/log/LogTracer;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/alipay/android/app/render/log/LogTracer;->printExceptionStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public callOnreload(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 321
    :try_start_0
    iget-object v2, p0, Lcom/alipay/android/app/render/api/ext/BirdNestRender;->mFBContextHash:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/app/template/FBContext;

    .line 322
    .local v1, "fbCxt":Lcom/alipay/android/app/template/FBContext;
    if-eqz v1, :cond_0

    .line 323
    const-string/jumbo v2, "{}"

    invoke-interface {v1, v2}, Lcom/alipay/android/app/template/FBContext;->reloadData(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    .end local v1    # "fbCxt":Lcom/alipay/android/app/template/FBContext;
    :cond_0
    :goto_0
    return-void

    .line 325
    :catch_0
    move-exception v0

    .line 326
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/alipay/android/app/render/log/LogTracer;->getInstance()Lcom/alipay/android/app/render/log/LogTracer;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/render/log/LogTracer;->printExceptionStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public callRender(Ljava/lang/String;)V
    .locals 12
    .param p1, "result"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v11, 0x1

    .line 286
    invoke-static {}, Lcom/alipay/android/app/render/log/LogTracer;->getInstance()Lcom/alipay/android/app/render/log/LogTracer;

    move-result-object v7

    const-string/jumbo v8, "BirdNestRender::callRender"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "result:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/alipay/android/app/render/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    iget-object v7, p0, Lcom/alipay/android/app/render/api/ext/BirdNestRender;->mCallBack:Lcom/alipay/android/app/template/ITemplateClickCallback;

    if-eqz v7, :cond_0

    if-eqz p1, :cond_0

    .line 290
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 291
    .local v5, "resultJson":Lorg/json/JSONObject;
    invoke-static {}, Lcom/alipay/android/app/render/log/LogTracer;->getInstance()Lcom/alipay/android/app/render/log/LogTracer;

    move-result-object v7

    const-string/jumbo v8, "BirdNestRender::callRender"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "resultJson 001:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/alipay/android/app/render/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    iget-object v7, p0, Lcom/alipay/android/app/render/api/ext/BirdNestRender;->mCallBack:Lcom/alipay/android/app/template/ITemplateClickCallback;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/alipay/android/app/template/ITemplateClickCallback;->onClickCallback(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    .end local v5    # "resultJson":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 293
    :catch_0
    move-exception v0

    .line 294
    .local v0, "e":Ljava/lang/Exception;
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 295
    .restart local v5    # "resultJson":Lorg/json/JSONObject;
    const-string/jumbo v7, ","

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 296
    .local v6, "splits":[Ljava/lang/String;
    if-eqz v6, :cond_2

    array-length v7, v6

    if-ltz v7, :cond_2

    .line 297
    array-length v3, v6

    .line 298
    .local v3, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_2

    .line 299
    aget-object v2, v6, v1

    .line 301
    .local v2, "keyAndValue":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    .line 300
    invoke-virtual {v2, v11, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 302
    const-string/jumbo v7, "="

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 303
    .local v4, "map":[Ljava/lang/String;
    if-eqz v4, :cond_1

    array-length v7, v4

    const/4 v8, 0x2

    if-lt v7, v8, :cond_1

    .line 305
    const/4 v7, 0x0

    :try_start_1
    aget-object v7, v4, v7

    const/4 v8, 0x1

    aget-object v8, v4, v8

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 298
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 307
    :catch_1
    move-exception v7

    invoke-static {}, Lcom/alipay/android/app/render/log/LogTracer;->getInstance()Lcom/alipay/android/app/render/log/LogTracer;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/alipay/android/app/render/log/LogTracer;->printExceptionStackTrace(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 312
    .end local v1    # "i":I
    .end local v2    # "keyAndValue":Ljava/lang/String;
    .end local v3    # "length":I
    .end local v4    # "map":[Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/alipay/android/app/render/log/LogTracer;->getInstance()Lcom/alipay/android/app/render/log/LogTracer;

    move-result-object v7

    const-string/jumbo v8, "BirdNestRender::callRender"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "resultJson 002:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/alipay/android/app/render/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    iget-object v7, p0, Lcom/alipay/android/app/render/api/ext/BirdNestRender;->mCallBack:Lcom/alipay/android/app/template/ITemplateClickCallback;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/alipay/android/app/template/ITemplateClickCallback;->onClickCallback(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public destroy(Landroid/content/Context;I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hashcode"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 252
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/android/app/render/api/ext/BirdNestRender;->getEngineService()Lcom/alipay/android/app/render/birdnest/service/BirdNestService;

    move-result-object v4

    .line 253
    .local v4, "service":Lcom/alipay/android/app/render/birdnest/service/BirdNestService;
    invoke-virtual {v4, p2}, Lcom/alipay/android/app/render/birdnest/service/BirdNestService;->releaseResource(I)Ljava/util/List;

    move-result-object v3

    .line 254
    .local v3, "logs":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    if-eqz v3, :cond_1

    .line 255
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 256
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 257
    .local v2, "log":Lorg/json/JSONObject;
    const-string/jumbo v5, "exception"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 258
    invoke-static {}, Lcom/alipay/android/app/render/log/LogTracer;->getInstance()Lcom/alipay/android/app/render/log/LogTracer;

    move-result-object v5

    const-string/jumbo v6, "flybird"

    const-string/jumbo v7, "BirdNestEx"

    const-string/jumbo v8, "exception"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Lcom/alipay/android/app/render/log/LogTracer;->traceException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 262
    .end local v1    # "i":I
    .end local v2    # "log":Lorg/json/JSONObject;
    .end local v3    # "logs":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    .end local v4    # "service":Lcom/alipay/android/app/render/birdnest/service/BirdNestService;
    :catch_0
    move-exception v0

    .line 263
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/android/app/render/log/LogTracer;->getInstance()Lcom/alipay/android/app/render/log/LogTracer;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/alipay/android/app/render/log/LogTracer;->printExceptionStackTrace(Ljava/lang/Throwable;)V

    .line 267
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/alipay/android/app/render/api/ext/BirdNestRender;->getTplService()Lcom/alipay/android/app/cctemplate/api/TemplateService;

    move-result-object v4

    .line 268
    .local v4, "service":Lcom/alipay/android/app/cctemplate/api/TemplateService;
    invoke-virtual {v4}, Lcom/alipay/android/app/cctemplate/api/TemplateService;->triggerTemplateUpdate()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 281
    .end local v4    # "service":Lcom/alipay/android/app/cctemplate/api/TemplateService;
    :goto_1
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/alipay/android/app/render/api/ext/BirdNestRender;->mCallBack:Lcom/alipay/android/app/template/ITemplateClickCallback;

    .line 282
    return-void

    .line 269
    :catch_1
    move-exception v0

    .line 270
    .restart local v0    # "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/android/app/render/log/LogTracer;->getInstance()Lcom/alipay/android/app/render/log/LogTracer;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/alipay/android/app/render/log/LogTracer;->printExceptionStackTrace(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public destroyView(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 201
    :try_start_0
    iget-object v3, p0, Lcom/alipay/android/app/render/api/ext/BirdNestRender;->mFBContextHash:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/app/template/FBContext;

    .line 202
    .local v1, "fbCxt":Lcom/alipay/android/app/template/FBContext;
    invoke-static {}, Lcom/alipay/android/app/render/log/LogTracer;->getInstance()Lcom/alipay/android/app/render/log/LogTracer;

    move-result-object v3

    const-string/jumbo v4, "BirdNestRender::destroyView"

    const-string/jumbo v5, ""

    invoke-virtual {v3, v4, v5}, Lcom/alipay/android/app/render/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    if-eqz v1, :cond_0

    .line 204
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 205
    .local v2, "options":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v3, "deferDownload"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    const-string/jumbo v3, "deferDownloadFilter"

    new-instance v4, Lcom/alipay/android/app/render/api/ext/BirdNestRender$2;

    invoke-direct {v4, p0}, Lcom/alipay/android/app/render/api/ext/BirdNestRender$2;-><init>(Lcom/alipay/android/app/render/api/ext/BirdNestRender;)V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    invoke-interface {v1, v2}, Lcom/alipay/android/app/template/FBContext;->destroy(Ljava/util/Map;)V

    .line 216
    iget-object v3, p0, Lcom/alipay/android/app/render/api/ext/BirdNestRender;->mFBContextHash:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    .end local v1    # "fbCxt":Lcom/alipay/android/app/template/FBContext;
    .end local v2    # "options":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    :goto_0
    return-void

    .line 218
    :catch_0
    move-exception v0

    .line 219
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/alipay/android/app/render/log/LogTracer;->getInstance()Lcom/alipay/android/app/render/log/LogTracer;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/alipay/android/app/render/log/LogTracer;->printExceptionStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public generateView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/alipay/android/app/render/api/callback/ICashierRenderCallback;)Landroid/view/View;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tplId"    # Ljava/lang/String;
    .param p3, "tplDesc"    # Ljava/lang/String;
    .param p4, "tplData"    # Ljava/lang/String;
    .param p6, "tplCallback"    # Lcom/alipay/android/app/render/api/callback/ICashierRenderCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alipay/android/app/render/api/callback/ICashierRenderCallback;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 168
    .local p5, "tplExtParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p6}, Lcom/alipay/android/app/render/api/ext/BirdNestRender;->preloadView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/alipay/android/app/render/api/callback/ICashierRenderCallback;)Lcom/alipay/android/app/render/api/result/PreparedResult;

    move-result-object v1

    .line 169
    .local v1, "result":Lcom/alipay/android/app/render/api/result/PreparedResult;
    invoke-virtual {p0, v1}, Lcom/alipay/android/app/render/api/ext/BirdNestRender;->generateView(Lcom/alipay/android/app/render/api/result/PreparedResult;)Landroid/view/View;

    move-result-object v0

    .line 170
    .local v0, "contentView":Landroid/view/View;
    return-object v0
.end method

.method public generateView(Lcom/alipay/android/app/render/api/result/PreparedResult;)Landroid/view/View;
    .locals 12
    .param p1, "preparedResult"    # Lcom/alipay/android/app/render/api/result/PreparedResult;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 334
    iget-boolean v7, p0, Lcom/alipay/android/app/render/api/ext/BirdNestRender;->mIsGenContextDelay:Z

    if-eqz v7, :cond_3

    .line 335
    iget-object v7, p1, Lcom/alipay/android/app/render/api/result/PreparedResult;->mResult:Ljava/lang/Object;

    check-cast v7, Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;

    invoke-virtual {v7}, Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;->create()Lcom/alipay/android/app/template/FBContext;

    move-result-object v2

    .line 341
    .local v2, "fbContext":Lcom/alipay/android/app/template/FBContext;
    :goto_0
    invoke-interface {v2}, Lcom/alipay/android/app/template/FBContext;->getAutoFocusable()Lcom/alipay/android/app/template/FBFocusable;

    move-result-object v3

    .line 342
    .local v3, "focusableKeyboard":Lcom/alipay/android/app/template/FBFocusable;
    if-eqz v3, :cond_0

    .line 343
    new-instance v7, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v8, Lcom/alipay/android/app/render/api/ext/BirdNestRender$3;

    invoke-direct {v8, p0, v3}, Lcom/alipay/android/app/render/api/ext/BirdNestRender$3;-><init>(Lcom/alipay/android/app/render/api/ext/BirdNestRender;Lcom/alipay/android/app/template/FBFocusable;)V

    const-wide/16 v10, 0x2bc

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 350
    :cond_0
    invoke-interface {v2}, Lcom/alipay/android/app/template/FBContext;->getContentView()Landroid/view/View;

    move-result-object v1

    .line 353
    .local v1, "contentView":Landroid/view/View;
    sget-object v7, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 354
    .local v6, "manufacturer":Ljava/lang/String;
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 355
    .local v0, "androidVersionName":Ljava/lang/String;
    const-string/jumbo v7, "samsung"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v8, "GT-N7100"

    .line 356
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string/jumbo v7, "4.4.2"

    .line 357
    invoke-static {v0, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string/jumbo v7, "4.4.4"

    .line 358
    invoke-static {v0, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    const/4 v5, 0x1

    .line 359
    .local v5, "isN7100":Z
    :goto_1
    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v8, "K-Touch E806"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 361
    .local v4, "isKTouchE806":Z
    invoke-virtual {v1}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v7

    if-nez v7, :cond_1

    if-nez v5, :cond_1

    if-nez v4, :cond_1

    .line 362
    invoke-interface {v2}, Lcom/alipay/android/app/template/FBContext;->isFullscreen()Z

    move-result v7

    if-nez v7, :cond_1

    .line 363
    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 367
    :cond_1
    if-nez v5, :cond_2

    if-eqz v4, :cond_5

    .line 368
    :cond_2
    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {p0, v1, v7}, Lcom/alipay/android/app/render/api/ext/BirdNestRender;->setAlpha(Landroid/view/View;F)V

    .line 373
    :goto_2
    iget-object v7, p0, Lcom/alipay/android/app/render/api/ext/BirdNestRender;->mFBContextHash:Ljava/util/HashMap;

    invoke-virtual {v7, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    return-object v1

    .line 337
    .end local v0    # "androidVersionName":Ljava/lang/String;
    .end local v1    # "contentView":Landroid/view/View;
    .end local v2    # "fbContext":Lcom/alipay/android/app/template/FBContext;
    .end local v3    # "focusableKeyboard":Lcom/alipay/android/app/template/FBFocusable;
    .end local v4    # "isKTouchE806":Z
    .end local v5    # "isN7100":Z
    .end local v6    # "manufacturer":Ljava/lang/String;
    :cond_3
    iget-object v2, p1, Lcom/alipay/android/app/render/api/result/PreparedResult;->mResult:Ljava/lang/Object;

    check-cast v2, Lcom/alipay/android/app/template/FBContext;

    .restart local v2    # "fbContext":Lcom/alipay/android/app/template/FBContext;
    goto :goto_0

    .line 358
    .restart local v0    # "androidVersionName":Ljava/lang/String;
    .restart local v1    # "contentView":Landroid/view/View;
    .restart local v3    # "focusableKeyboard":Lcom/alipay/android/app/template/FBFocusable;
    .restart local v6    # "manufacturer":Ljava/lang/String;
    :cond_4
    const/4 v5, 0x0

    goto :goto_1

    .line 370
    .restart local v4    # "isKTouchE806":Z
    .restart local v5    # "isN7100":Z
    :cond_5
    invoke-interface {v2}, Lcom/alipay/android/app/template/FBContext;->getBodyOpacity()F

    move-result v7

    invoke-direct {p0, v1, v7}, Lcom/alipay/android/app/render/api/ext/BirdNestRender;->setAlpha(Landroid/view/View;F)V

    goto :goto_2
.end method

.method public getEngineParams()Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 390
    invoke-virtual {p0}, Lcom/alipay/android/app/render/api/ext/BirdNestRender;->getEngineVersion()Ljava/lang/String;

    move-result-object v0

    .line 391
    .local v0, "birdNestVer":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "(a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "."

    const-string/jumbo v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 392
    .local v1, "birdParamsVer":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/android/app/render/log/LogTracer;->getInstance()Lcom/alipay/android/app/render/log/LogTracer;

    move-result-object v2

    const-string/jumbo v3, "BirdNestRender::getBirdParamsVersion"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "birdParamsVer:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alipay/android/app/render/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    return-object v1
.end method

.method public getEngineVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 398
    invoke-static {}, Lcom/alipay/birdnest/api/BirdNestEngine;->getVersion()Ljava/lang/String;

    move-result-object v0

    .line 399
    .local v0, "birdNestVer":Ljava/lang/String;
    return-object v0
.end method

.method public getFBContext(Landroid/view/View;)Lcom/alipay/android/app/template/FBContext;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/alipay/android/app/render/api/ext/BirdNestRender;->mFBContextHash:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/alipay/android/app/render/api/ext/BirdNestRender;->mFBContextHash:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/template/FBContext;

    .line 113
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFBPluginFactory()Lcom/alipay/android/app/template/FBPluginFactory;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/alipay/android/app/render/api/ext/BirdNestRender;->mPluginFactory:Lcom/alipay/android/app/template/FBPluginFactory;

    return-object v0
.end method

.method public getKeyBoardService()Lcom/alipay/android/app/template/TemplateKeyboardService;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/alipay/android/app/render/api/ext/BirdNestRender;->mKeyBoardService:Lcom/alipay/android/app/template/TemplateKeyboardService;

    return-object v0
.end method

.method public getProvider()Lcom/alipay/android/app/render/api/ICashierProvider;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/alipay/android/app/render/api/ext/BirdNestRender;->mProvider:Lcom/alipay/android/app/render/api/ICashierProvider;

    return-object v0
.end method

.method public getTplProvider()Lcom/alipay/android/app/cctemplate/api/ITplProvider;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/alipay/android/app/render/api/ext/BirdNestRender;->mTplProvider:Lcom/alipay/android/app/cctemplate/api/ITplProvider;

    return-object v0
.end method

.method public getTplTransport()Lcom/alipay/android/app/cctemplate/api/ITplTransport;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/alipay/android/app/render/api/ext/BirdNestRender;->mTransport:Lcom/alipay/android/app/cctemplate/api/ITplTransport;

    return-object v0
.end method

.method public onBackPressed(Landroid/view/View;)Z
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 237
    const/4 v1, 0x0

    .line 239
    .local v1, "result":Z
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/android/app/render/api/ext/BirdNestRender;->getEngineService()Lcom/alipay/android/app/render/birdnest/service/BirdNestService;

    move-result-object v2

    .line 240
    .local v2, "service":Lcom/alipay/android/app/render/birdnest/service/BirdNestService;
    invoke-virtual {v2, p1}, Lcom/alipay/android/app/render/birdnest/service/BirdNestService;->onBackPressed(Landroid/view/View;)Z

    move-result v1

    .line 241
    invoke-static {}, Lcom/alipay/android/app/render/log/LogTracer;->getInstance()Lcom/alipay/android/app/render/log/LogTracer;

    move-result-object v3

    const-string/jumbo v4, "BirdNestRender::onBackPressed"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "service: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/alipay/android/app/render/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    .end local v2    # "service":Lcom/alipay/android/app/render/birdnest/service/BirdNestService;
    :goto_0
    return v1

    .line 243
    :catch_0
    move-exception v0

    .line 244
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/android/app/render/log/LogTracer;->getInstance()Lcom/alipay/android/app/render/log/LogTracer;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/alipay/android/app/render/log/LogTracer;->printExceptionStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public preloadView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/alipay/android/app/render/api/callback/ICashierRenderCallback;)Lcom/alipay/android/app/render/api/result/PreparedResult;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tplId"    # Ljava/lang/String;
    .param p3, "tplDesc"    # Ljava/lang/String;
    .param p4, "tplData"    # Ljava/lang/String;
    .param p6, "tplCallback"    # Lcom/alipay/android/app/render/api/callback/ICashierRenderCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alipay/android/app/render/api/callback/ICashierRenderCallback;",
            ")",
            "Lcom/alipay/android/app/render/api/result/PreparedResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 135
    .local p5, "tplExtParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/alipay/android/app/render/api/ext/BirdNestRender;->getTplService()Lcom/alipay/android/app/cctemplate/api/TemplateService;

    move-result-object v1

    .line 136
    .local v1, "cTplService":Lcom/alipay/android/app/cctemplate/api/TemplateService;
    invoke-virtual {v1, p2, p3}, Lcom/alipay/android/app/cctemplate/api/TemplateService;->loadTemplate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 137
    .local v4, "tplContent":Ljava/lang/String;
    invoke-direct {p0, p4, p5}, Lcom/alipay/android/app/render/api/ext/BirdNestRender;->buildRpcJs(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    .line 138
    .local v3, "rpcJs":Ljava/lang/String;
    new-instance v5, Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;

    invoke-direct {v5, p1}, Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;-><init>(Landroid/content/Context;)V

    iget-object v6, p0, Lcom/alipay/android/app/render/api/ext/BirdNestRender;->mPluginFactory:Lcom/alipay/android/app/template/FBPluginFactory;

    .line 139
    invoke-virtual {v5, v6}, Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;->setPluginFactory(Lcom/alipay/android/app/template/FBPluginFactory;)Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;

    move-result-object v5

    .line 140
    invoke-virtual {v5, p2}, Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;->setTemplateId(Ljava/lang/String;)Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;

    move-result-object v5

    .line 141
    invoke-virtual {v5, v3}, Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;->setDataContent(Ljava/lang/String;)Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/alipay/android/app/render/api/ext/BirdNestRender;->mKeyBoardService:Lcom/alipay/android/app/template/TemplateKeyboardService;

    .line 142
    invoke-virtual {v5, v6}, Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;->setmKeyboardService(Lcom/alipay/android/app/template/TemplateKeyboardService;)Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;

    move-result-object v5

    .line 143
    invoke-virtual {v5, v4}, Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;->setTemplateJson(Ljava/lang/String;)Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;

    move-result-object v5

    const/4 v6, 0x1

    .line 144
    invoke-virtual {v5, v6}, Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;->setUseQuickPayTemplateManager(Z)Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/alipay/android/app/render/api/ext/BirdNestRender;->mProvider:Lcom/alipay/android/app/render/api/ICashierProvider;

    .line 145
    invoke-virtual {v5, v6}, Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;->setCashierProvider(Lcom/alipay/android/app/render/api/ICashierProvider;)Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;

    move-result-object v5

    .line 146
    invoke-direct {p0, p6}, Lcom/alipay/android/app/render/api/ext/BirdNestRender;->getCallbackProxy(Lcom/alipay/android/app/render/api/callback/ICashierRenderCallback;)Lcom/alipay/android/app/render/birdnest/RenderCallbackProxy;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;->setCallbackProxy(Lcom/alipay/android/app/render/birdnest/RenderCallbackProxy;)Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;

    move-result-object v0

    .line 148
    .local v0, "builder":Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;
    iget-boolean v5, p0, Lcom/alipay/android/app/render/api/ext/BirdNestRender;->mIsGenContextDelay:Z

    if-eqz v5, :cond_0

    .line 149
    invoke-static {v0}, Lcom/alipay/android/app/render/api/result/PreparedResult;->build(Ljava/lang/Object;)Lcom/alipay/android/app/render/api/result/PreparedResult;

    move-result-object v5

    .line 152
    :goto_0
    return-object v5

    .line 151
    :cond_0
    invoke-virtual {v0}, Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;->create()Lcom/alipay/android/app/template/FBContext;

    move-result-object v2

    .line 152
    .local v2, "fbContext":Lcom/alipay/android/app/template/FBContext;
    invoke-static {v2}, Lcom/alipay/android/app/render/api/result/PreparedResult;->build(Ljava/lang/Object;)Lcom/alipay/android/app/render/api/result/PreparedResult;

    move-result-object v5

    goto :goto_0
.end method

.method public setFBPluginFactory(Lcom/alipay/android/app/template/FBPluginFactory;)V
    .locals 0
    .param p1, "pluginFactory"    # Lcom/alipay/android/app/template/FBPluginFactory;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/alipay/android/app/render/api/ext/BirdNestRender;->mPluginFactory:Lcom/alipay/android/app/template/FBPluginFactory;

    .line 123
    return-void
.end method

.method public setIsGenContextDelay(Z)V
    .locals 4
    .param p1, "delay"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 80
    invoke-static {}, Lcom/alipay/android/app/render/log/LogTracer;->getInstance()Lcom/alipay/android/app/render/log/LogTracer;

    move-result-object v0

    const-string/jumbo v1, "BirdNestRender::setIsGenContextDelay"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "delay:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/render/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iput-boolean p1, p0, Lcom/alipay/android/app/render/api/ext/BirdNestRender;->mIsGenContextDelay:Z

    .line 82
    return-void
.end method

.method public setKeyBoardService(Lcom/alipay/android/app/template/TemplateKeyboardService;)V
    .locals 0
    .param p1, "keyBoardService"    # Lcom/alipay/android/app/template/TemplateKeyboardService;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/alipay/android/app/render/api/ext/BirdNestRender;->mKeyBoardService:Lcom/alipay/android/app/template/TemplateKeyboardService;

    .line 131
    return-void
.end method

.method public setProvider(Lcom/alipay/android/app/render/api/ICashierProvider;)V
    .locals 0
    .param p1, "provider"    # Lcom/alipay/android/app/render/api/ICashierProvider;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/alipay/android/app/render/api/ext/BirdNestRender;->mProvider:Lcom/alipay/android/app/render/api/ICashierProvider;

    .line 99
    return-void
.end method

.method public setTplProvider(Lcom/alipay/android/app/cctemplate/api/ITplProvider;)V
    .locals 2
    .param p1, "provider"    # Lcom/alipay/android/app/cctemplate/api/ITplProvider;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 89
    invoke-static {}, Lcom/alipay/android/app/render/log/LogTracer;->getInstance()Lcom/alipay/android/app/render/log/LogTracer;

    move-result-object v0

    invoke-interface {p1}, Lcom/alipay/android/app/cctemplate/api/ITplProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/render/log/LogTracer;->initialize(Landroid/content/Context;)V

    .line 90
    iput-object p1, p0, Lcom/alipay/android/app/render/api/ext/BirdNestRender;->mTplProvider:Lcom/alipay/android/app/cctemplate/api/ITplProvider;

    .line 91
    return-void
.end method

.method public setTplTransport(Lcom/alipay/android/app/cctemplate/api/ITplTransport;)V
    .locals 0
    .param p1, "trans"    # Lcom/alipay/android/app/cctemplate/api/ITplTransport;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/alipay/android/app/render/api/ext/BirdNestRender;->mTransport:Lcom/alipay/android/app/cctemplate/api/ITplTransport;

    .line 107
    return-void
.end method
