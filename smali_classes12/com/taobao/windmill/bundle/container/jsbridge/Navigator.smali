.class public Lcom/taobao/windmill/bundle/container/jsbridge/Navigator;
.super Lcom/taobao/windmill/bundle/container/jsbridge/ContainerBaseBridge;
.source "Navigator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/taobao/windmill/bundle/container/jsbridge/ContainerBaseBridge;-><init>()V

    return-void
.end method


# virtual methods
.method public close(Ljava/util/Map;Ljrh;)V
    .locals 0
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

    .prologue
    .line 79
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0, p1, p2}, Lcom/taobao/windmill/bundle/container/jsbridge/Navigator;->pop(Ljava/util/Map;Ljrh;)V

    .line 80
    return-void
.end method

.method public getBackStack(Ljava/util/Map;Ljrh;)V
    .locals 6
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

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 111
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p2}, Ljrh;->a()Landroid/content/Context;

    move-result-object v4

    instance-of v4, v4, Ljqd;

    if-eqz v4, :cond_2

    .line 112
    invoke-virtual {p2}, Ljrh;->a()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Ljqd;

    .line 113
    .local v0, "iwmlContext":Ljqd;
    invoke-interface {v0}, Ljqd;->getRouter()Ljqr;

    move-result-object v3

    .line 114
    .local v3, "router":Ljqr;
    if-nez v3, :cond_0

    .line 115
    sget-object v4, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->INVALID_OPERATION:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    iget-object v4, v4, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->errorCode:Ljava/lang/String;

    const-string/jumbo v5, "\u83b7\u53d6\u4e0d\u5230router"

    invoke-virtual {p0, p2, v4, v5}, Lcom/taobao/windmill/bundle/container/jsbridge/Navigator;->callError(Ljrh;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .end local v0    # "iwmlContext":Ljqd;
    .end local v3    # "router":Ljqr;
    :goto_0
    return-void

    .line 1385
    .restart local v0    # "iwmlContext":Ljqd;
    .restart local v3    # "router":Ljqr;
    :cond_0
    iget-object v1, v3, Ljqr;->b:Ljqp;

    .line 121
    .local v1, "pageStack":Ljqp;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 122
    .local v2, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    .line 123
    const-string/jumbo v4, "data"

    invoke-virtual {v1}, Ljqp;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    :goto_1
    invoke-virtual {p2, v2}, Ljrh;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 125
    :cond_1
    const-string/jumbo v4, "data"

    const-string/jumbo v5, ""

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 129
    .end local v0    # "iwmlContext":Ljqd;
    .end local v1    # "pageStack":Ljqp;
    .end local v2    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "router":Ljqr;
    :cond_2
    sget-object v4, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->INVALID_OPERATION:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    iget-object v4, v4, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->errorCode:Ljava/lang/String;

    const-string/jumbo v5, "\u8be5\u65b9\u6cd5\u5728\u5c0f\u7a0b\u5e8f\u5916\u8c03\u7528\u65e0\u6548"

    invoke-virtual {p0, p2, v4, v5}, Lcom/taobao/windmill/bundle/container/jsbridge/Navigator;->callError(Ljrh;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public open(Ljava/util/Map;Ljrh;)V
    .locals 0
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

    .prologue
    .line 55
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0, p1, p2}, Lcom/taobao/windmill/bundle/container/jsbridge/Navigator;->push(Ljava/util/Map;Ljrh;)V

    .line 56
    return-void
.end method

.method public openMessagePage(Ljava/util/Map;Ljrh;)V
    .locals 5
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

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 84
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p2}, Ljrh;->a()Landroid/content/Context;

    move-result-object v3

    instance-of v3, v3, Ljqd;

    if-eqz v3, :cond_3

    .line 85
    invoke-virtual {p2}, Ljrh;->a()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Ljqd;

    .line 86
    .local v1, "iwmlContext":Ljqd;
    invoke-interface {v1}, Ljqd;->getRouter()Ljqr;

    move-result-object v2

    .line 87
    .local v2, "router":Ljqr;
    if-nez v2, :cond_0

    .line 88
    sget-object v3, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->INVALID_OPERATION:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    iget-object v3, v3, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->errorCode:Ljava/lang/String;

    const-string/jumbo v4, "\u83b7\u53d6\u4e0d\u5230router"

    invoke-virtual {p0, p2, v3, v4}, Lcom/taobao/windmill/bundle/container/jsbridge/Navigator;->callError(Ljrh;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .end local v1    # "iwmlContext":Ljqd;
    .end local v2    # "router":Ljqr;
    :goto_0
    return-void

    .line 93
    .restart local v1    # "iwmlContext":Ljqd;
    .restart local v2    # "router":Ljqr;
    :cond_0
    invoke-interface {v1}, Ljqd;->getAppInfo()Lcom/taobao/windmill/bundle/container/core/AppInfoModel;

    move-result-object v0

    .line 94
    .local v0, "appInfoModel":Lcom/taobao/windmill/bundle/container/core/AppInfoModel;
    if-eqz v0, :cond_1

    iget-object v3, v0, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;->appInfo:Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;->appInfo:Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;

    iget-object v3, v3, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->messageUrl:Ljava/lang/String;

    .line 95
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 96
    :cond_1
    sget-object v3, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->INVALID_OPERATION:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    iget-object v3, v3, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->errorCode:Ljava/lang/String;

    const-string/jumbo v4, "\u65e0\u6cd5\u83b7\u53d6\u5230\u6d88\u606fUrl, \u6253\u5f00\u5931\u8d25"

    invoke-virtual {p0, p2, v3, v4}, Lcom/taobao/windmill/bundle/container/jsbridge/Navigator;->callError(Ljrh;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 101
    :cond_2
    iget-object v3, v0, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;->appInfo:Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;

    iget-object v3, v3, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->messageUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljqr;->a(Ljava/lang/String;)Z

    .line 102
    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Ljrh;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 104
    .end local v0    # "appInfoModel":Lcom/taobao/windmill/bundle/container/core/AppInfoModel;
    .end local v1    # "iwmlContext":Ljqd;
    .end local v2    # "router":Ljqr;
    :cond_3
    sget-object v3, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->INVALID_OPERATION:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    iget-object v3, v3, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->errorCode:Ljava/lang/String;

    const-string/jumbo v4, "\u8be5\u65b9\u6cd5\u5728\u5c0f\u7a0b\u5e8f\u5916\u8c03\u7528\u65e0\u6548"

    invoke-virtual {p0, p2, v3, v4}, Lcom/taobao/windmill/bundle/container/jsbridge/Navigator;->callError(Ljrh;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public pop(Ljava/util/Map;Ljrh;)V
    .locals 4
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

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 61
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p2}, Ljrh;->a()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Ljqd;

    if-eqz v2, :cond_1

    .line 62
    invoke-virtual {p2}, Ljrh;->a()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Ljqd;

    .line 63
    .local v0, "iwmlContext":Ljqd;
    invoke-interface {v0}, Ljqd;->getRouter()Ljqr;

    move-result-object v1

    .line 64
    .local v1, "router":Ljqr;
    if-nez v1, :cond_0

    .line 65
    sget-object v2, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->INVALID_OPERATION:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    iget-object v2, v2, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->errorCode:Ljava/lang/String;

    const-string/jumbo v3, "\u83b7\u53d6\u4e0d\u5230router"

    invoke-virtual {p0, p2, v2, v3}, Lcom/taobao/windmill/bundle/container/jsbridge/Navigator;->callError(Ljrh;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .end local v0    # "iwmlContext":Ljqd;
    .end local v1    # "router":Ljqr;
    :goto_0
    return-void

    .line 68
    .restart local v0    # "iwmlContext":Ljqd;
    .restart local v1    # "router":Ljqr;
    :cond_0
    invoke-virtual {v1}, Ljqr;->a()Z

    .line 69
    const-string/jumbo v2, ""

    invoke-virtual {p2, v2}, Ljrh;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 71
    .end local v0    # "iwmlContext":Ljqd;
    .end local v1    # "router":Ljqr;
    :cond_1
    sget-object v2, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->INVALID_OPERATION:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    iget-object v2, v2, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->errorCode:Ljava/lang/String;

    const-string/jumbo v3, "\u8be5\u65b9\u6cd5\u5728\u5c0f\u7a0b\u5e8f\u5916\u8c03\u7528\u65e0\u6548"

    invoke-virtual {p0, p2, v2, v3}, Lcom/taobao/windmill/bundle/container/jsbridge/Navigator;->callError(Ljrh;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public popToHome(Ljava/util/Map;Ljrh;)V
    .locals 5
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

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v3, 0x0

    .line 136
    invoke-virtual {p2}, Ljrh;->a()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Ljqd;

    if-eqz v2, :cond_2

    .line 137
    invoke-virtual {p2}, Ljrh;->a()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Ljqd;

    .line 138
    .local v0, "iwmlContext":Ljqd;
    invoke-interface {v0}, Ljqd;->getRouter()Ljqr;

    move-result-object v1

    .line 139
    .local v1, "router":Ljqr;
    if-nez v1, :cond_0

    .line 140
    sget-object v2, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->INVALID_OPERATION:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    iget-object v2, v2, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->errorCode:Ljava/lang/String;

    const-string/jumbo v3, "\u83b7\u53d6\u4e0d\u5230router"

    invoke-virtual {p0, p2, v2, v3}, Lcom/taobao/windmill/bundle/container/jsbridge/Navigator;->callError(Ljrh;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .end local v0    # "iwmlContext":Ljqd;
    .end local v1    # "router":Ljqr;
    :goto_0
    return-void

    .line 3060
    .restart local v0    # "iwmlContext":Ljqd;
    .restart local v1    # "router":Ljqr;
    :cond_0
    iget-boolean v2, v1, Ljqr;->c:Z

    .line 2372
    if-eqz v2, :cond_1

    .line 2373
    invoke-virtual {v1, v3, v3}, Ljqr;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :goto_1
    const-string/jumbo v2, ""

    invoke-virtual {p2, v2}, Ljrh;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 2375
    :cond_1
    iget-object v2, v1, Ljqr;->a:Ljqo;

    sget-object v3, Lcom/taobao/windmill/bundle/container/router/AnimType;->PUSH:Lcom/taobao/windmill/bundle/container/router/AnimType;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljqo;->a(Lcom/taobao/windmill/bundle/container/router/AnimType;I)Z

    goto :goto_1

    .line 148
    .end local v0    # "iwmlContext":Ljqd;
    .end local v1    # "router":Ljqr;
    :cond_2
    sget-object v2, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->INVALID_OPERATION:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    iget-object v2, v2, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->errorCode:Ljava/lang/String;

    const-string/jumbo v3, "\u8be5\u65b9\u6cd5\u5728\u5c0f\u7a0b\u5e8f\u5916\u8c03\u7528\u65e0\u6548"

    invoke-virtual {p0, p2, v2, v3}, Lcom/taobao/windmill/bundle/container/jsbridge/Navigator;->callError(Ljrh;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public push(Ljava/util/Map;Ljrh;)V
    .locals 5
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

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 24
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 25
    :cond_0
    sget-object v3, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->PARAM_ERROR:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    iget-object v3, v3, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->errorCode:Ljava/lang/String;

    sget-object v4, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->PARAM_ERROR:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    iget-object v4, v4, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->errorMsg:Ljava/lang/String;

    invoke-virtual {p0, p2, v3, v4}, Lcom/taobao/windmill/bundle/container/jsbridge/Navigator;->callError(Ljrh;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :goto_0
    return-void

    .line 30
    :cond_1
    invoke-virtual {p2}, Ljrh;->a()Landroid/content/Context;

    move-result-object v3

    instance-of v3, v3, Ljqd;

    if-eqz v3, :cond_4

    .line 31
    invoke-virtual {p2}, Ljrh;->a()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Ljqd;

    .line 32
    .local v0, "iwmlContext":Ljqd;
    invoke-interface {v0}, Ljqd;->getRouter()Ljqr;

    move-result-object v1

    .line 33
    .local v1, "router":Ljqr;
    if-nez v1, :cond_2

    .line 34
    sget-object v3, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->INVALID_OPERATION:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    iget-object v3, v3, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->errorCode:Ljava/lang/String;

    const-string/jumbo v4, "\u83b7\u53d6\u4e0d\u5230router"

    invoke-virtual {p0, p2, v3, v4}, Lcom/taobao/windmill/bundle/container/jsbridge/Navigator;->callError(Ljrh;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 38
    :cond_2
    const-string/jumbo v3, "url"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 39
    .local v2, "url":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 40
    invoke-virtual {v1, v2}, Ljqr;->a(Ljava/lang/String;)Z

    .line 41
    const-string/jumbo v3, ""

    invoke-virtual {p2, v3}, Ljrh;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 43
    :cond_3
    sget-object v3, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->PARAM_ERROR:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    iget-object v3, v3, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->errorCode:Ljava/lang/String;

    const-string/jumbo v4, "\u7f3a\u5c11\u5fc5\u8981\u7684\u53c2\u6570url"

    invoke-virtual {p0, p2, v3, v4}, Lcom/taobao/windmill/bundle/container/jsbridge/Navigator;->callError(Ljrh;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 47
    .end local v0    # "iwmlContext":Ljqd;
    .end local v1    # "router":Ljqr;
    .end local v2    # "url":Ljava/lang/String;
    :cond_4
    sget-object v3, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->INVALID_OPERATION:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    iget-object v3, v3, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->errorCode:Ljava/lang/String;

    const-string/jumbo v4, "\u8be5\u65b9\u6cd5\u5728\u5c0f\u7a0b\u5e8f\u5916\u8c03\u7528\u65e0\u6548"

    invoke-virtual {p0, p2, v3, v4}, Lcom/taobao/windmill/bundle/container/jsbridge/Navigator;->callError(Ljrh;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public reloadPage(Ljava/util/Map;Ljrh;)V
    .locals 4
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

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 155
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p2}, Ljrh;->a()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Ljqd;

    if-eqz v2, :cond_2

    .line 156
    invoke-virtual {p2}, Ljrh;->a()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Ljqd;

    .line 157
    .local v0, "iwmlContext":Ljqd;
    invoke-interface {v0}, Ljqd;->getRouter()Ljqr;

    move-result-object v1

    .line 158
    .local v1, "router":Ljqr;
    if-nez v1, :cond_0

    .line 159
    sget-object v2, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->INVALID_OPERATION:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    iget-object v2, v2, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->errorCode:Ljava/lang/String;

    const-string/jumbo v3, "\u83b7\u53d6\u4e0d\u5230router"

    invoke-virtual {p0, p2, v2, v3}, Lcom/taobao/windmill/bundle/container/jsbridge/Navigator;->callError(Ljrh;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    .end local v0    # "iwmlContext":Ljqd;
    .end local v1    # "router":Ljqr;
    :goto_0
    return-void

    .line 4356
    .restart local v0    # "iwmlContext":Ljqd;
    .restart local v1    # "router":Ljqr;
    :cond_0
    iget-object v2, v1, Ljqr;->a:Ljqo;

    invoke-virtual {v2}, Ljqo;->b()Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 3389
    instance-of v2, v2, Lcom/taobao/windmill/bundle/container/router/WMLBaseFragment;

    if-eqz v2, :cond_1

    .line 5356
    iget-object v2, v1, Ljqr;->a:Ljqo;

    invoke-virtual {v2}, Ljqo;->b()Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 3390
    check-cast v2, Lcom/taobao/windmill/bundle/container/router/WMLBaseFragment;

    invoke-virtual {v2}, Lcom/taobao/windmill/bundle/container/router/WMLBaseFragment;->b()V

    .line 165
    :cond_1
    const-string/jumbo v2, ""

    invoke-virtual {p2, v2}, Ljrh;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 167
    .end local v0    # "iwmlContext":Ljqd;
    .end local v1    # "router":Ljqr;
    :cond_2
    sget-object v2, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->INVALID_OPERATION:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    iget-object v2, v2, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->errorCode:Ljava/lang/String;

    const-string/jumbo v3, "\u8be5\u65b9\u6cd5\u5728\u5c0f\u7a0b\u5e8f\u5916\u8c03\u7528\u65e0\u6548"

    invoke-virtual {p0, p2, v2, v3}, Lcom/taobao/windmill/bundle/container/jsbridge/Navigator;->callError(Ljrh;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
