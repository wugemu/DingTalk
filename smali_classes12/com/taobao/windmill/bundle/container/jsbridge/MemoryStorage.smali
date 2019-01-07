.class public Lcom/taobao/windmill/bundle/container/jsbridge/MemoryStorage;
.super Lcom/taobao/windmill/bundle/container/jsbridge/ContainerBaseBridge;
.source "MemoryStorage.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/taobao/windmill/bundle/container/jsbridge/ContainerBaseBridge;-><init>()V

    return-void
.end method


# virtual methods
.method public getItem(Ljava/util/Map;Ljrh;)V
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
    .line 47
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p2}, Ljrh;->a()Landroid/content/Context;

    move-result-object v3

    instance-of v3, v3, Ljqd;

    if-eqz v3, :cond_3

    .line 48
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 49
    :cond_0
    sget-object v3, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->PARAM_ERROR:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    iget-object v3, v3, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->errorCode:Ljava/lang/String;

    sget-object v4, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->PARAM_ERROR:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    iget-object v4, v4, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->errorMsg:Ljava/lang/String;

    invoke-virtual {p0, p2, v3, v4}, Lcom/taobao/windmill/bundle/container/jsbridge/MemoryStorage;->callError(Ljrh;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :goto_0
    return-void

    .line 54
    :cond_1
    const-string/jumbo v3, "key"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    .line 55
    sget-object v3, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->PARAM_ERROR:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    iget-object v3, v3, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->errorCode:Ljava/lang/String;

    const-string/jumbo v4, "\u7f3a\u5c11\u5fc5\u8981\u7684\u53c2\u6570 key"

    invoke-virtual {p0, p2, v3, v4}, Lcom/taobao/windmill/bundle/container/jsbridge/MemoryStorage;->callError(Ljrh;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :cond_2
    const-string/jumbo v3, "key"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 61
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p2}, Ljrh;->a()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Ljqd;

    .line 62
    .local v0, "iwmlContext":Ljqd;
    invoke-interface {v0, v1}, Ljqd;->getMemoryStorage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 63
    .local v2, "value":Ljava/lang/Object;
    invoke-virtual {p2, v2}, Ljrh;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 65
    .end local v0    # "iwmlContext":Ljqd;
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/Object;
    :cond_3
    sget-object v3, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->INVALID_OPERATION:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    iget-object v3, v3, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->errorCode:Ljava/lang/String;

    const-string/jumbo v4, "\u8be5\u65b9\u6cd5\u5728\u5c0f\u7a0b\u5e8f\u5916\u8c03\u7528\u65e0\u6548"

    invoke-virtual {p0, p2, v3, v4}, Lcom/taobao/windmill/bundle/container/jsbridge/MemoryStorage;->callError(Ljrh;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setItem(Ljava/util/Map;Ljrh;)V
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
    .line 18
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p2}, Ljrh;->a()Landroid/content/Context;

    move-result-object v3

    instance-of v3, v3, Ljqd;

    if-eqz v3, :cond_4

    .line 19
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 20
    :cond_0
    sget-object v3, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->PARAM_ERROR:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    iget-object v3, v3, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->errorCode:Ljava/lang/String;

    sget-object v4, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->PARAM_ERROR:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    iget-object v4, v4, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->errorMsg:Ljava/lang/String;

    invoke-virtual {p0, p2, v3, v4}, Lcom/taobao/windmill/bundle/container/jsbridge/MemoryStorage;->callError(Ljrh;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :goto_0
    return-void

    .line 24
    :cond_1
    const-string/jumbo v3, "key"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    .line 25
    sget-object v3, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->PARAM_ERROR:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    iget-object v3, v3, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->errorCode:Ljava/lang/String;

    const-string/jumbo v4, "\u7f3a\u5c11\u5fc5\u8981\u7684\u53c2\u6570 key"

    invoke-virtual {p0, p2, v3, v4}, Lcom/taobao/windmill/bundle/container/jsbridge/MemoryStorage;->callError(Ljrh;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 29
    :cond_2
    const-string/jumbo v3, "value"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3

    .line 30
    sget-object v3, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->PARAM_ERROR:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    iget-object v3, v3, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->errorCode:Ljava/lang/String;

    const-string/jumbo v4, "\u7f3a\u5c11\u5fc5\u8981\u7684\u53c2\u6570 value"

    invoke-virtual {p0, p2, v3, v4}, Lcom/taobao/windmill/bundle/container/jsbridge/MemoryStorage;->callError(Ljrh;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 34
    :cond_3
    const-string/jumbo v3, "key"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 35
    .local v1, "key":Ljava/lang/String;
    const-string/jumbo v3, "value"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 36
    .local v2, "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljrh;->a()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Ljqd;

    .line 37
    .local v0, "iwmlContext":Ljqd;
    invoke-interface {v0, v1, v2}, Ljqd;->putMemoryStorage(Ljava/lang/String;Ljava/lang/Object;)V

    .line 38
    const-string/jumbo v3, ""

    invoke-virtual {p2, v3}, Ljrh;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 40
    .end local v0    # "iwmlContext":Ljqd;
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/Object;
    :cond_4
    sget-object v3, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->INVALID_OPERATION:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    iget-object v3, v3, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->errorCode:Ljava/lang/String;

    const-string/jumbo v4, "\u8be5\u65b9\u6cd5\u5728\u5c0f\u7a0b\u5e8f\u5916\u8c03\u7528\u65e0\u6548"

    invoke-virtual {p0, p2, v3, v4}, Lcom/taobao/windmill/bundle/container/jsbridge/MemoryStorage;->callError(Ljrh;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
