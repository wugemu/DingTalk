.class public Lcom/taobao/windmill/bundle/container/jsbridge/MiniAppBridge;
.super Lcom/taobao/windmill/bundle/container/jsbridge/ContainerBaseBridge;
.source "MiniAppBridge.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/taobao/windmill/bundle/container/jsbridge/ContainerBaseBridge;-><init>()V

    return-void
.end method


# virtual methods
.method public hideLauncherLoading(Ljava/util/Map;Ljrh;)V
    .locals 3
    .param p2, "context"    # Ljrh;
    .annotation runtime Lcom/taobao/windmill/module/base/JSBridgeMethod;
        uiThread = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljrh;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 61
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p2}, Ljrh;->a()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Ljqd;

    if-eqz v1, :cond_1

    .line 62
    invoke-virtual {p2}, Ljrh;->a()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Ljqd;

    .line 63
    .local v0, "iwmlContext":Ljqd;
    invoke-interface {v0}, Ljqd;->getAppLoadingView()Lcom/taobao/windmill/bundle/container/prompt/IWMLAppLoadingPrompt;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 64
    invoke-interface {v0}, Ljqd;->getAppLoadingView()Lcom/taobao/windmill/bundle/container/prompt/IWMLAppLoadingPrompt;

    move-result-object v1

    invoke-interface {v1}, Lcom/taobao/windmill/bundle/container/prompt/IWMLAppLoadingPrompt;->hide()V

    .line 66
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljrh;->a(Ljava/lang/Object;)V

    .line 71
    .end local v0    # "iwmlContext":Ljqd;
    :goto_0
    return-void

    .line 68
    :cond_1
    sget-object v1, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->INVALID_OPERATION:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    iget-object v1, v1, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->errorCode:Ljava/lang/String;

    const-string/jumbo v2, "\u8be5\u65b9\u6cd5\u5728\u5c0f\u7a0b\u5e8f\u5916\u8c03\u7528\u65e0\u6548"

    invoke-virtual {p0, p2, v1, v2}, Lcom/taobao/windmill/bundle/container/jsbridge/MiniAppBridge;->callError(Ljrh;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setAppShareInfo(Ljava/util/Map;Ljrh;)V
    .locals 8
    .param p2, "context"    # Ljrh;
    .annotation runtime Lcom/taobao/windmill/module/base/JSBridgeMethod;
        uiThread = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljrh;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v6, 0x0

    .line 18
    invoke-virtual {p2}, Ljrh;->a()Landroid/content/Context;

    move-result-object v5

    instance-of v5, v5, Ljqd;

    if-eqz v5, :cond_8

    .line 19
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 20
    :cond_0
    sget-object v5, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->PARAM_ERROR:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    iget-object v5, v5, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->errorCode:Ljava/lang/String;

    sget-object v6, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->PARAM_ERROR:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    iget-object v6, v6, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->errorMsg:Ljava/lang/String;

    invoke-virtual {p0, p2, v5, v6}, Lcom/taobao/windmill/bundle/container/jsbridge/MiniAppBridge;->callError(Ljrh;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :goto_0
    return-void

    .line 24
    :cond_1
    invoke-virtual {p2}, Ljrh;->a()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Ljqd;

    .line 26
    .local v2, "iwmlContext":Ljqd;
    const/4 v4, 0x0

    .line 27
    .local v4, "title":Ljava/lang/String;
    const/4 v0, 0x0

    .line 28
    .local v0, "description":Ljava/lang/String;
    const/4 v1, 0x0

    .line 29
    .local v1, "imageUrl":Ljava/lang/String;
    const-string/jumbo v5, "title"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 30
    const-string/jumbo v5, "title"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "title":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 32
    .restart local v4    # "title":Ljava/lang/String;
    :cond_2
    const-string/jumbo v5, "description"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 33
    const-string/jumbo v5, "description"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "description":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 35
    .restart local v0    # "description":Ljava/lang/String;
    :cond_3
    const-string/jumbo v5, "imageUrl"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 36
    const-string/jumbo v5, "imageUrl"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "imageUrl":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 38
    .restart local v1    # "imageUrl":Ljava/lang/String;
    :cond_4
    new-instance v3, Lcom/taobao/windmill/bundle/container/common/ShareInfoModel;

    invoke-direct {v3}, Lcom/taobao/windmill/bundle/container/common/ShareInfoModel;-><init>()V

    .line 39
    .local v3, "model":Lcom/taobao/windmill/bundle/container/common/ShareInfoModel;
    iput-object v4, v3, Lcom/taobao/windmill/bundle/container/common/ShareInfoModel;->title:Ljava/lang/String;

    .line 40
    iput-object v0, v3, Lcom/taobao/windmill/bundle/container/common/ShareInfoModel;->description:Ljava/lang/String;

    .line 41
    iput-object v1, v3, Lcom/taobao/windmill/bundle/container/common/ShareInfoModel;->imageUrl:Ljava/lang/String;

    .line 43
    invoke-interface {v2}, Ljqd;->getRouter()Ljqr;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 45
    invoke-interface {v2}, Ljqd;->getRouter()Ljqr;

    move-result-object v5

    .line 1241
    iget-object v7, v5, Ljqr;->b:Ljqp;

    if-eqz v7, :cond_5

    iget-object v7, v5, Ljqr;->b:Ljqp;

    invoke-virtual {v7}, Ljqp;->a()Ljqp$b;

    move-result-object v7

    if-nez v7, :cond_6

    :cond_5
    move-object v5, v6

    .line 45
    :goto_1
    invoke-interface {v2, v5, v3}, Ljqd;->addShareInfo(Ljava/lang/String;Lcom/taobao/windmill/bundle/container/common/ShareInfoModel;)V

    .line 47
    invoke-virtual {p2, v6}, Ljrh;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 1244
    :cond_6
    iget-object v5, v5, Ljqr;->b:Ljqp;

    invoke-virtual {v5}, Ljqp;->a()Ljqp$b;

    move-result-object v5

    iget-object v5, v5, Ljqp$b;->c:Ljava/lang/String;

    goto :goto_1

    .line 49
    :cond_7
    sget-object v5, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->INVALID_OPERATION:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    iget-object v5, v5, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->errorCode:Ljava/lang/String;

    const-string/jumbo v6, "\u83b7\u53d6\u4e0d\u5230router"

    invoke-virtual {p0, p2, v5, v6}, Lcom/taobao/windmill/bundle/container/jsbridge/MiniAppBridge;->callError(Ljrh;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 54
    .end local v0    # "description":Ljava/lang/String;
    .end local v1    # "imageUrl":Ljava/lang/String;
    .end local v2    # "iwmlContext":Ljqd;
    .end local v3    # "model":Lcom/taobao/windmill/bundle/container/common/ShareInfoModel;
    .end local v4    # "title":Ljava/lang/String;
    :cond_8
    sget-object v5, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->INVALID_OPERATION:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    iget-object v5, v5, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->errorCode:Ljava/lang/String;

    const-string/jumbo v6, "\u8be5\u65b9\u6cd5\u5728\u5c0f\u7a0b\u5e8f\u5916\u8c03\u7528\u65e0\u6548"

    invoke-virtual {p0, p2, v5, v6}, Lcom/taobao/windmill/bundle/container/jsbridge/MiniAppBridge;->callError(Ljrh;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
