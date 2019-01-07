.class public Lcom/taobao/windmill/bundle/container/jsbridge/NavigatorBar;
.super Lcom/taobao/windmill/bundle/container/jsbridge/ContainerBaseBridge;
.source "NavigatorBar.java"


# instance fields
.field private final ACTIONSHEET_KEY:Ljava/lang/String;

.field private final DRAWER_KEY:Ljava/lang/String;

.field private final MENU_EXTRA:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/taobao/windmill/bundle/container/jsbridge/ContainerBaseBridge;-><init>()V

    .line 25
    const-string/jumbo v0, "drawerList"

    iput-object v0, p0, Lcom/taobao/windmill/bundle/container/jsbridge/NavigatorBar;->DRAWER_KEY:Ljava/lang/String;

    .line 26
    const-string/jumbo v0, "menuList"

    iput-object v0, p0, Lcom/taobao/windmill/bundle/container/jsbridge/NavigatorBar;->ACTIONSHEET_KEY:Ljava/lang/String;

    .line 27
    const-string/jumbo v0, "menuExtra"

    iput-object v0, p0, Lcom/taobao/windmill/bundle/container/jsbridge/NavigatorBar;->MENU_EXTRA:Ljava/lang/String;

    return-void
.end method

.method private getIWMLPageFrame(Ljrh;)Ljqe;
    .locals 2
    .param p1, "context"    # Ljrh;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 480
    invoke-virtual {p1}, Ljrh;->a()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Ljqd;

    if-eqz v1, :cond_0

    .line 481
    invoke-virtual {p1}, Ljrh;->a()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Ljqd;

    .line 482
    .local v0, "iwmlContext":Ljqd;
    invoke-interface {v0}, Ljqd;->getCurrentPageFrame()Ljqe;

    move-result-object v1

    .line 485
    .end local v0    # "iwmlContext":Ljqd;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public closeDrawer(Ljava/util/Map;Ljrh;)V
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
    .line 328
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p2}, Lcom/taobao/windmill/bundle/container/jsbridge/NavigatorBar;->getIWMLPageFrame(Ljrh;)Ljqe;

    move-result-object v0

    .line 329
    .local v0, "iwmlPageFrame":Ljqe;
    if-nez v0, :cond_0

    .line 330
    sget-object v1, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->INVALID_OPERATION:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    iget-object v1, v1, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->errorCode:Ljava/lang/String;

    const-string/jumbo v2, "\u5bfc\u822a\u680f\u4e0d\u5b58\u5728"

    invoke-virtual {p0, p2, v1, v2}, Lcom/taobao/windmill/bundle/container/jsbridge/NavigatorBar;->callError(Ljrh;Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    :goto_0
    return-void

    .line 334
    :cond_0
    invoke-interface {v0}, Ljqe;->closeDrawer()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 335
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljrh;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 337
    :cond_1
    sget-object v1, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->INVALID_OPERATION:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    iget-object v1, v1, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->errorCode:Ljava/lang/String;

    const-string/jumbo v2, "\u8be5\u65b9\u6cd5\u5728\u5c0f\u7a0b\u5e8f\u5916\u8c03\u7528\u65e0\u6548"

    invoke-virtual {p0, p2, v1, v2}, Lcom/taobao/windmill/bundle/container/jsbridge/NavigatorBar;->callError(Ljrh;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getHeight(Ljava/util/Map;Ljrh;)V
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
    .line 406
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p2}, Ljrh;->a()Landroid/content/Context;

    move-result-object v3

    instance-of v3, v3, Ljqd;

    if-eqz v3, :cond_1

    .line 407
    invoke-virtual {p2}, Ljrh;->a()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Ljqd;

    .line 408
    .local v0, "iwmlContext":Ljqd;
    invoke-interface {v0}, Ljqd;->getCurrentPageFrame()Ljqe;

    move-result-object v1

    .line 409
    .local v1, "iwmlPageFrame":Ljqe;
    if-eqz v1, :cond_0

    .line 410
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 411
    .local v2, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "data"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljqe;->getActionBarHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    invoke-virtual {p2, v2}, Ljrh;->a(Ljava/lang/Object;)V

    .line 422
    .end local v0    # "iwmlContext":Ljqd;
    .end local v1    # "iwmlPageFrame":Ljqe;
    .end local v2    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 414
    .restart local v0    # "iwmlContext":Ljqd;
    .restart local v1    # "iwmlPageFrame":Ljqe;
    :cond_0
    sget-object v3, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->INVALID_OPERATION:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    iget-object v3, v3, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->errorCode:Ljava/lang/String;

    const-string/jumbo v4, "\u65e0\u6cd5\u83b7\u53d6\u5f53\u524d\u9875\u9762\u5bfc\u822a\u680f\u9ad8\u5ea6"

    invoke-virtual {p0, p2, v3, v4}, Lcom/taobao/windmill/bundle/container/jsbridge/NavigatorBar;->callError(Ljrh;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 419
    .end local v0    # "iwmlContext":Ljqd;
    .end local v1    # "iwmlPageFrame":Ljqe;
    :cond_1
    sget-object v3, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->INVALID_OPERATION:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    iget-object v3, v3, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->errorCode:Ljava/lang/String;

    const-string/jumbo v4, "\u8be5\u65b9\u6cd5\u5728\u5c0f\u7a0b\u5e8f\u5916\u8c03\u7528\u65e0\u6548"

    invoke-virtual {p0, p2, v3, v4}, Lcom/taobao/windmill/bundle/container/jsbridge/NavigatorBar;->callError(Ljrh;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getStatusBarHeight(Ljava/util/Map;Ljrh;)V
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
    .line 426
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p2}, Ljrh;->a()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Ljqd;

    if-eqz v1, :cond_0

    .line 428
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 429
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "data"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljrh;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Ljqy;->a(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    invoke-virtual {p2, v0}, Ljrh;->a(Ljava/lang/Object;)V

    .line 435
    .end local v0    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 432
    :cond_0
    sget-object v1, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->INVALID_OPERATION:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    iget-object v1, v1, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->errorCode:Ljava/lang/String;

    const-string/jumbo v2, "\u8be5\u65b9\u6cd5\u5728\u5c0f\u7a0b\u5e8f\u5916\u8c03\u7528\u65e0\u6548"

    invoke-virtual {p0, p2, v1, v2}, Lcom/taobao/windmill/bundle/container/jsbridge/NavigatorBar;->callError(Ljrh;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public hasIndexBadge(Ljava/util/Map;Ljrh;)V
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
    .line 350
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p2}, Ljrh;->a()Landroid/content/Context;

    move-result-object v3

    instance-of v3, v3, Ljqd;

    if-eqz v3, :cond_1

    .line 351
    invoke-virtual {p2}, Ljrh;->a()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Ljqd;

    .line 352
    .local v0, "iwmlContext":Ljqd;
    invoke-interface {v0}, Ljqd;->getCurrentPageFrame()Ljqe;

    move-result-object v1

    .line 353
    .local v1, "iwmlPageFrame":Ljqe;
    if-eqz v1, :cond_0

    .line 354
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 355
    .local v2, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    const-string/jumbo v3, "data"

    invoke-interface {v1}, Ljqe;->hasIndexBadge()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    invoke-virtual {p2, v2}, Ljrh;->a(Ljava/lang/Object;)V

    .line 365
    .end local v0    # "iwmlContext":Ljqd;
    .end local v1    # "iwmlPageFrame":Ljqe;
    .end local v2    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :goto_0
    return-void

    .line 358
    .restart local v0    # "iwmlContext":Ljqd;
    .restart local v1    # "iwmlPageFrame":Ljqe;
    :cond_0
    sget-object v3, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->INVALID_OPERATION:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    iget-object v3, v3, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->errorCode:Ljava/lang/String;

    const-string/jumbo v4, "\u64cd\u4f5c\u5931\u8d25"

    invoke-virtual {p0, p2, v3, v4}, Lcom/taobao/windmill/bundle/container/jsbridge/NavigatorBar;->callError(Ljrh;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 362
    .end local v0    # "iwmlContext":Ljqd;
    .end local v1    # "iwmlPageFrame":Ljqe;
    :cond_1
    sget-object v3, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->INVALID_OPERATION:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    iget-object v3, v3, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->errorCode:Ljava/lang/String;

    const-string/jumbo v4, "\u8be5\u65b9\u6cd5\u5728\u5c0f\u7a0b\u5e8f\u5916\u8c03\u7528\u65e0\u6548"

    invoke-virtual {p0, p2, v3, v4}, Lcom/taobao/windmill/bundle/container/jsbridge/NavigatorBar;->callError(Ljrh;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public hide(Ljava/util/Map;Ljrh;)V
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
    .line 50
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p2}, Ljrh;->a()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Ljqd;

    if-eqz v2, :cond_1

    .line 51
    invoke-virtual {p2}, Ljrh;->a()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Ljqd;

    .line 52
    .local v0, "iwmlContext":Ljqd;
    invoke-interface {v0}, Ljqd;->getCurrentPageFrame()Ljqe;

    move-result-object v1

    .line 53
    .local v1, "iwmlPageFrame":Ljqe;
    if-nez v1, :cond_0

    .line 54
    sget-object v2, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->INVALID_OPERATION:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    iget-object v2, v2, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->errorCode:Ljava/lang/String;

    const-string/jumbo v3, "\u5bfc\u822a\u680f\u4e0d\u5b58\u5728"

    invoke-virtual {p0, p2, v2, v3}, Lcom/taobao/windmill/bundle/container/jsbridge/NavigatorBar;->callError(Ljrh;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .end local v0    # "iwmlContext":Ljqd;
    .end local v1    # "iwmlPageFrame":Ljqe;
    :goto_0
    return-void

    .line 58
    .restart local v0    # "iwmlContext":Ljqd;
    .restart local v1    # "iwmlPageFrame":Ljqe;
    :cond_0
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljqe;->showActionbar(Z)V

    .line 59
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Ljrh;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 61
    .end local v0    # "iwmlContext":Ljqd;
    .end local v1    # "iwmlPageFrame":Ljqe;
    :cond_1
    sget-object v2, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->INVALID_OPERATION:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    iget-object v2, v2, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->errorCode:Ljava/lang/String;

    const-string/jumbo v3, "\u8be5\u65b9\u6cd5\u5728\u5c0f\u7a0b\u5e8f\u5916\u8c03\u7528\u65e0\u6548"

    invoke-virtual {p0, p2, v2, v3}, Lcom/taobao/windmill/bundle/container/jsbridge/NavigatorBar;->callError(Ljrh;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public hideMenu(Ljava/util/Map;Ljrh;)V
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
    .line 458
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p2}, Ljrh;->a()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Ljqd;

    if-eqz v2, :cond_1

    .line 459
    invoke-virtual {p2}, Ljrh;->a()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Ljqd;

    .line 460
    .local v0, "iwmlContext":Ljqd;
    invoke-interface {v0}, Ljqd;->getCurrentPageFrame()Ljqe;

    move-result-object v1

    .line 461
    .local v1, "iwmlPageFrame":Ljqe;
    if-nez v1, :cond_0

    .line 462
    sget-object v2, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->INVALID_OPERATION:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    iget-object v2, v2, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->errorCode:Ljava/lang/String;

    const-string/jumbo v3, "\u5bfc\u822a\u680f\u4e0d\u5b58\u5728"

    invoke-virtual {p0, p2, v2, v3}, Lcom/taobao/windmill/bundle/container/jsbridge/NavigatorBar;->callError(Ljrh;Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    .end local v0    # "iwmlContext":Ljqd;
    .end local v1    # "iwmlPageFrame":Ljqe;
    :goto_0
    return-void

    .line 466
    .restart local v0    # "iwmlContext":Ljqd;
    .restart local v1    # "iwmlPageFrame":Ljqe;
    :cond_0
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljqe;->showMenu(Z)V

    .line 467
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Ljrh;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 469
    .end local v0    # "iwmlContext":Ljqd;
    .end local v1    # "iwmlPageFrame":Ljqe;
    :cond_1
    sget-object v2, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->INVALID_OPERATION:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    iget-object v2, v2, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->errorCode:Ljava/lang/String;

    const-string/jumbo v3, "\u8be5\u65b9\u6cd5\u5728\u5c0f\u7a0b\u5e8f\u5916\u8c03\u7528\u65e0\u6548"

    invoke-virtual {p0, p2, v2, v3}, Lcom/taobao/windmill/bundle/container/jsbridge/NavigatorBar;->callError(Ljrh;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public openDrawer(Ljava/util/Map;Ljrh;)V
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
    .line 312
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p2}, Lcom/taobao/windmill/bundle/container/jsbridge/NavigatorBar;->getIWMLPageFrame(Ljrh;)Ljqe;

    move-result-object v0

    .line 313
    .local v0, "iwmlPageFrame":Ljqe;
    if-nez v0, :cond_0

    .line 314
    sget-object v1, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->INVALID_OPERATION:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    iget-object v1, v1, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->errorCode:Ljava/lang/String;

    const-string/jumbo v2, "\u5bfc\u822a\u680f\u4e0d\u5b58\u5728"

    invoke-virtual {p0, p2, v1, v2}, Lcom/taobao/windmill/bundle/container/jsbridge/NavigatorBar;->callError(Ljrh;Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    :goto_0
    return-void

    .line 318
    :cond_0
    invoke-interface {v0}, Ljqe;->openDrawer()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 319
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljrh;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 321
    :cond_1
    sget-object v1, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->INVALID_OPERATION:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    iget-object v1, v1, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->errorCode:Ljava/lang/String;

    const-string/jumbo v2, "\u8be5\u65b9\u6cd5\u5728\u5c0f\u7a0b\u5e8f\u5916\u8c03\u7528\u65e0\u6548"

    invoke-virtual {p0, p2, v1, v2}, Lcom/taobao/windmill/bundle/container/jsbridge/NavigatorBar;->callError(Ljrh;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public resetIndexBadge(Ljava/util/Map;Ljrh;)V
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
    .line 387
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p2}, Ljrh;->a()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Ljqd;

    if-eqz v2, :cond_1

    .line 388
    invoke-virtual {p2}, Ljrh;->a()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Ljqd;

    .line 389
    .local v0, "iwmlContext":Ljqd;
    invoke-interface {v0}, Ljqd;->getCurrentPageFrame()Ljqe;

    move-result-object v1

    .line 390
    .local v1, "iwmlPageFrame":Ljqe;
    if-eqz v1, :cond_0

    .line 391
    invoke-interface {v1}, Ljqe;->resetIndexBadge()V

    .line 392
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Ljrh;->a(Ljava/lang/Object;)V

    .line 402
    .end local v0    # "iwmlContext":Ljqd;
    .end local v1    # "iwmlPageFrame":Ljqe;
    :goto_0
    return-void

    .line 394
    .restart local v0    # "iwmlContext":Ljqd;
    .restart local v1    # "iwmlPageFrame":Ljqe;
    :cond_0
    sget-object v2, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->INVALID_OPERATION:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    iget-object v2, v2, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->errorCode:Ljava/lang/String;

    const-string/jumbo v3, "\u64cd\u4f5c\u5931\u8d25"

    invoke-virtual {p0, p2, v2, v3}, Lcom/taobao/windmill/bundle/container/jsbridge/NavigatorBar;->callError(Ljrh;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 399
    .end local v0    # "iwmlContext":Ljqd;
    .end local v1    # "iwmlPageFrame":Ljqe;
    :cond_1
    sget-object v2, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->INVALID_OPERATION:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    iget-object v2, v2, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->errorCode:Ljava/lang/String;

    const-string/jumbo v3, "\u8be5\u65b9\u6cd5\u5728\u5c0f\u7a0b\u5e8f\u5916\u8c03\u7528\u65e0\u6548"

    invoke-virtual {p0, p2, v2, v3}, Lcom/taobao/windmill/bundle/container/jsbridge/NavigatorBar;->callError(Ljrh;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public scaleIndexBadge(Ljava/util/Map;Ljrh;)V
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
    .line 369
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p2}, Ljrh;->a()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Ljqd;

    if-eqz v2, :cond_1

    .line 370
    invoke-virtual {p2}, Ljrh;->a()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Ljqd;

    .line 371
    .local v0, "iwmlContext":Ljqd;
    invoke-interface {v0}, Ljqd;->getCurrentPageFrame()Ljqe;

    move-result-object v1

    .line 372
    .local v1, "iwmlPageFrame":Ljqe;
    if-eqz v1, :cond_0

    .line 373
    invoke-interface {v1}, Ljqe;->scaleIndexBadge()V

    .line 374
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Ljrh;->a(Ljava/lang/Object;)V

    .line 383
    .end local v0    # "iwmlContext":Ljqd;
    .end local v1    # "iwmlPageFrame":Ljqe;
    :goto_0
    return-void

    .line 376
    .restart local v0    # "iwmlContext":Ljqd;
    .restart local v1    # "iwmlPageFrame":Ljqe;
    :cond_0
    sget-object v2, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->INVALID_OPERATION:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    iget-object v2, v2, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->errorCode:Ljava/lang/String;

    const-string/jumbo v3, "\u64cd\u4f5c\u5931\u8d25"

    invoke-virtual {p0, p2, v2, v3}, Lcom/taobao/windmill/bundle/container/jsbridge/NavigatorBar;->callError(Ljrh;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 380
    .end local v0    # "iwmlContext":Ljqd;
    .end local v1    # "iwmlPageFrame":Ljqe;
    :cond_1
    sget-object v2, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->INVALID_OPERATION:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    iget-object v2, v2, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->errorCode:Ljava/lang/String;

    const-string/jumbo v3, "\u8be5\u65b9\u6cd5\u5728\u5c0f\u7a0b\u5e8f\u5916\u8c03\u7528\u65e0\u6548"

    invoke-virtual {p0, p2, v2, v3}, Lcom/taobao/windmill/bundle/container/jsbridge/NavigatorBar;->callError(Ljrh;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setActionSheet(Ljava/util/Map;Ljrh;)V
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
    .line 299
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p2}, Ljrh;->a()Landroid/content/Context;

    move-result-object v0

    .line 300
    .local v0, "jsContext":Landroid/content/Context;
    instance-of v1, v0, Ljqd;

    if-eqz v1, :cond_0

    .line 301
    check-cast v0, Ljqd;

    .end local v0    # "jsContext":Landroid/content/Context;
    invoke-interface {v0, p1}, Ljqd;->setActionSheet(Ljava/util/Map;)V

    .line 302
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljrh;->a(Ljava/lang/Object;)V

    .line 308
    :goto_0
    return-void

    .line 304
    .restart local v0    # "jsContext":Landroid/content/Context;
    :cond_0
    sget-object v1, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->INVALID_OPERATION:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    iget-object v1, v1, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->errorCode:Ljava/lang/String;

    const-string/jumbo v2, "\u8be5\u65b9\u6cd5\u5728\u5c0f\u7a0b\u5e8f\u5916\u8c03\u7528\u65e0\u6548"

    invoke-virtual {p0, p2, v1, v2}, Lcom/taobao/windmill/bundle/container/jsbridge/NavigatorBar;->callError(Ljrh;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setDrawer(Ljava/util/Map;Ljrh;)V
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
    .line 287
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p2}, Ljrh;->a()Landroid/content/Context;

    move-result-object v0

    .line 288
    .local v0, "jsContext":Landroid/content/Context;
    instance-of v1, v0, Ljqd;

    if-eqz v1, :cond_0

    .line 289
    check-cast v0, Ljqd;

    .end local v0    # "jsContext":Landroid/content/Context;
    invoke-interface {v0, p1}, Ljqd;->setDrawerInfo(Ljava/util/Map;)V

    .line 290
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljrh;->a(Ljava/lang/Object;)V

    .line 295
    :goto_0
    return-void

    .line 292
    .restart local v0    # "jsContext":Landroid/content/Context;
    :cond_0
    sget-object v1, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->INVALID_OPERATION:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    iget-object v1, v1, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->errorCode:Ljava/lang/String;

    const-string/jumbo v2, "\u8be5\u65b9\u6cd5\u5728\u5c0f\u7a0b\u5e8f\u5916\u8c03\u7528\u65e0\u6548"

    invoke-virtual {p0, p2, v1, v2}, Lcom/taobao/windmill/bundle/container/jsbridge/NavigatorBar;->callError(Ljrh;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setLeftItem(Ljava/util/Map;Ljrh;)V
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
    .line 194
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p2}, Ljrh;->a()Landroid/content/Context;

    move-result-object v6

    instance-of v6, v6, Ljqd;

    if-eqz v6, :cond_5

    .line 195
    invoke-virtual {p2}, Ljrh;->a()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Ljqd;

    .line 196
    .local v2, "iwmlContext":Ljqd;
    invoke-interface {v2}, Ljqd;->getCurrentPageFrame()Ljqe;

    move-result-object v3

    .line 197
    .local v3, "iwmlPageFrame":Ljqe;
    if-nez v3, :cond_0

    .line 198
    sget-object v6, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->INVALID_OPERATION:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    iget-object v6, v6, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->errorCode:Ljava/lang/String;

    const-string/jumbo v7, "\u5bfc\u822a\u680f\u4e0d\u5b58\u5728"

    invoke-virtual {p0, p2, v6, v7}, Lcom/taobao/windmill/bundle/container/jsbridge/NavigatorBar;->callError(Ljrh;Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    .end local v2    # "iwmlContext":Ljqd;
    .end local v3    # "iwmlPageFrame":Ljqe;
    :goto_0
    return-void

    .line 202
    .restart local v2    # "iwmlContext":Ljqd;
    .restart local v3    # "iwmlPageFrame":Ljqe;
    :cond_0
    const-string/jumbo v6, "icon"

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 203
    .local v1, "icon":Ljava/lang/String;
    const-string/jumbo v6, "text"

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 204
    .local v4, "text":Ljava/lang/String;
    const-string/jumbo v6, "url"

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 205
    .local v5, "url":Ljava/lang/String;
    const-string/jumbo v6, "event"

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 206
    .local v0, "event":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 207
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 208
    new-instance v6, Lcom/taobao/windmill/bundle/container/jsbridge/NavigatorBar$12;

    invoke-direct {v6, p0, v2, v5}, Lcom/taobao/windmill/bundle/container/jsbridge/NavigatorBar$12;-><init>(Lcom/taobao/windmill/bundle/container/jsbridge/NavigatorBar;Ljqd;Ljava/lang/String;)V

    invoke-interface {v3, v1, v6}, Ljqe;->setLeftButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 241
    :cond_1
    :goto_1
    const/4 v6, 0x0

    invoke-virtual {p2, v6}, Ljrh;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 214
    :cond_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 215
    new-instance v6, Lcom/taobao/windmill/bundle/container/jsbridge/NavigatorBar$2;

    invoke-direct {v6, p0, v2, v5}, Lcom/taobao/windmill/bundle/container/jsbridge/NavigatorBar$2;-><init>(Lcom/taobao/windmill/bundle/container/jsbridge/NavigatorBar;Ljqd;Ljava/lang/String;)V

    invoke-interface {v3, v4, v6}, Ljqe;->setLeftText(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 224
    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 225
    new-instance v6, Lcom/taobao/windmill/bundle/container/jsbridge/NavigatorBar$3;

    invoke-direct {v6, p0, p2, v0}, Lcom/taobao/windmill/bundle/container/jsbridge/NavigatorBar$3;-><init>(Lcom/taobao/windmill/bundle/container/jsbridge/NavigatorBar;Ljrh;Ljava/lang/String;)V

    invoke-interface {v3, v1, v6}, Ljqe;->setLeftButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 231
    :cond_4
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 232
    new-instance v6, Lcom/taobao/windmill/bundle/container/jsbridge/NavigatorBar$4;

    invoke-direct {v6, p0, p2, v0}, Lcom/taobao/windmill/bundle/container/jsbridge/NavigatorBar$4;-><init>(Lcom/taobao/windmill/bundle/container/jsbridge/NavigatorBar;Ljrh;Ljava/lang/String;)V

    invoke-interface {v3, v4, v6}, Ljqe;->setLeftText(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 243
    .end local v0    # "event":Ljava/lang/String;
    .end local v1    # "icon":Ljava/lang/String;
    .end local v2    # "iwmlContext":Ljqd;
    .end local v3    # "iwmlPageFrame":Ljqe;
    .end local v4    # "text":Ljava/lang/String;
    .end local v5    # "url":Ljava/lang/String;
    :cond_5
    sget-object v6, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->INVALID_OPERATION:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    iget-object v6, v6, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->errorCode:Ljava/lang/String;

    const-string/jumbo v7, "\u8be5\u65b9\u6cd5\u5728\u5c0f\u7a0b\u5e8f\u5916\u8c03\u7528\u65e0\u6548"

    invoke-virtual {p0, p2, v6, v7}, Lcom/taobao/windmill/bundle/container/jsbridge/NavigatorBar;->callError(Ljrh;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setRightItem(Ljava/util/Map;Ljrh;)V
    .locals 20
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
    .line 92
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual/range {p2 .. p2}, Ljrh;->a()Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v18

    instance-of v0, v0, Ljqd;

    move/from16 v18, v0

    if-eqz v18, :cond_a

    .line 93
    invoke-virtual/range {p2 .. p2}, Ljrh;->a()Landroid/content/Context;

    move-result-object v13

    check-cast v13, Ljqd;

    .line 94
    .local v13, "iwmlContext":Ljqd;
    invoke-interface {v13}, Ljqd;->getCurrentPageFrame()Ljqe;

    move-result-object v14

    .line 95
    .local v14, "iwmlPageFrame":Ljqe;
    if-nez v14, :cond_0

    .line 96
    sget-object v18, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->INVALID_OPERATION:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->errorCode:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string/jumbo v19, "\u5bfc\u822a\u680f\u4e0d\u5b58\u5728"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/windmill/bundle/container/jsbridge/NavigatorBar;->callError(Ljrh;Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    .end local v13    # "iwmlContext":Ljqd;
    .end local v14    # "iwmlPageFrame":Ljqe;
    :goto_0
    return-void

    .line 100
    .restart local v13    # "iwmlContext":Ljqd;
    .restart local v14    # "iwmlPageFrame":Ljqe;
    :cond_0
    const-string/jumbo v18, "icon"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 101
    .local v5, "icon":Ljava/lang/String;
    const-string/jumbo v18, "text"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 102
    .local v16, "text":Ljava/lang/String;
    const-string/jumbo v18, "url"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 103
    .local v17, "url":Ljava/lang/String;
    const-string/jumbo v18, "event"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 104
    .local v4, "event":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_4

    .line 105
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_3

    .line 106
    new-instance v18, Lcom/taobao/windmill/bundle/container/jsbridge/NavigatorBar$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v13, v2}, Lcom/taobao/windmill/bundle/container/jsbridge/NavigatorBar$1;-><init>(Lcom/taobao/windmill/bundle/container/jsbridge/NavigatorBar;Ljqd;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-interface {v14, v5, v0}, Ljqe;->setRightButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 139
    :cond_1
    :goto_1
    const-string/jumbo v18, "items"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/alibaba/fastjson/JSONArray;

    .line 140
    .local v12, "items":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v12, :cond_9

    .line 141
    invoke-interface {v14}, Ljqe;->resetRightButton()V

    .line 142
    const/4 v6, 0x0

    .local v6, "index":I
    invoke-virtual {v12}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v15

    .local v15, "size":I
    :goto_2
    if-ge v6, v15, :cond_9

    .line 143
    invoke-virtual {v12, v6}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v7

    .line 144
    .local v7, "item":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v18, "icon"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 145
    .local v9, "itemIcon":Ljava/lang/String;
    const-string/jumbo v18, "text"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 146
    .local v10, "itemText":Ljava/lang/String;
    const-string/jumbo v18, "url"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 147
    .local v11, "itemUrl":Ljava/lang/String;
    const-string/jumbo v18, "event"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 148
    .local v8, "itemEvent":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_7

    .line 149
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_6

    .line 150
    new-instance v18, Lcom/taobao/windmill/bundle/container/jsbridge/NavigatorBar$8;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v13, v11}, Lcom/taobao/windmill/bundle/container/jsbridge/NavigatorBar$8;-><init>(Lcom/taobao/windmill/bundle/container/jsbridge/NavigatorBar;Ljqd;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-interface {v14, v9, v0}, Ljqe;->addRightButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 142
    :cond_2
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 112
    .end local v6    # "index":I
    .end local v7    # "item":Lcom/alibaba/fastjson/JSONObject;
    .end local v8    # "itemEvent":Ljava/lang/String;
    .end local v9    # "itemIcon":Ljava/lang/String;
    .end local v10    # "itemText":Ljava/lang/String;
    .end local v11    # "itemUrl":Ljava/lang/String;
    .end local v12    # "items":Lcom/alibaba/fastjson/JSONArray;
    .end local v15    # "size":I
    :cond_3
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_1

    .line 113
    new-instance v18, Lcom/taobao/windmill/bundle/container/jsbridge/NavigatorBar$5;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v13, v2}, Lcom/taobao/windmill/bundle/container/jsbridge/NavigatorBar$5;-><init>(Lcom/taobao/windmill/bundle/container/jsbridge/NavigatorBar;Ljqd;Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-interface {v14, v0, v1}, Ljqe;->setRightText(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 122
    :cond_4
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_5

    .line 123
    new-instance v18, Lcom/taobao/windmill/bundle/container/jsbridge/NavigatorBar$6;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v4}, Lcom/taobao/windmill/bundle/container/jsbridge/NavigatorBar$6;-><init>(Lcom/taobao/windmill/bundle/container/jsbridge/NavigatorBar;Ljrh;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-interface {v14, v5, v0}, Ljqe;->setRightButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 129
    :cond_5
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_1

    .line 130
    new-instance v18, Lcom/taobao/windmill/bundle/container/jsbridge/NavigatorBar$7;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v4}, Lcom/taobao/windmill/bundle/container/jsbridge/NavigatorBar$7;-><init>(Lcom/taobao/windmill/bundle/container/jsbridge/NavigatorBar;Ljrh;Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-interface {v14, v0, v1}, Ljqe;->setRightText(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 156
    .restart local v6    # "index":I
    .restart local v7    # "item":Lcom/alibaba/fastjson/JSONObject;
    .restart local v8    # "itemEvent":Ljava/lang/String;
    .restart local v9    # "itemIcon":Ljava/lang/String;
    .restart local v10    # "itemText":Ljava/lang/String;
    .restart local v11    # "itemUrl":Ljava/lang/String;
    .restart local v12    # "items":Lcom/alibaba/fastjson/JSONArray;
    .restart local v15    # "size":I
    :cond_6
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_2

    .line 157
    new-instance v18, Lcom/taobao/windmill/bundle/container/jsbridge/NavigatorBar$9;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v13, v11}, Lcom/taobao/windmill/bundle/container/jsbridge/NavigatorBar$9;-><init>(Lcom/taobao/windmill/bundle/container/jsbridge/NavigatorBar;Ljqd;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-interface {v14, v10, v0}, Ljqe;->addRightText(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 166
    :cond_7
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_8

    .line 167
    new-instance v18, Lcom/taobao/windmill/bundle/container/jsbridge/NavigatorBar$10;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v8}, Lcom/taobao/windmill/bundle/container/jsbridge/NavigatorBar$10;-><init>(Lcom/taobao/windmill/bundle/container/jsbridge/NavigatorBar;Ljrh;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-interface {v14, v9, v0}, Ljqe;->addRightButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3

    .line 173
    :cond_8
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_2

    .line 174
    new-instance v18, Lcom/taobao/windmill/bundle/container/jsbridge/NavigatorBar$11;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v8}, Lcom/taobao/windmill/bundle/container/jsbridge/NavigatorBar$11;-><init>(Lcom/taobao/windmill/bundle/container/jsbridge/NavigatorBar;Ljrh;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-interface {v14, v10, v0}, Ljqe;->addRightText(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3

    .line 185
    .end local v6    # "index":I
    .end local v7    # "item":Lcom/alibaba/fastjson/JSONObject;
    .end local v8    # "itemEvent":Ljava/lang/String;
    .end local v9    # "itemIcon":Ljava/lang/String;
    .end local v10    # "itemText":Ljava/lang/String;
    .end local v11    # "itemUrl":Ljava/lang/String;
    .end local v15    # "size":I
    :cond_9
    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljrh;->a(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 187
    .end local v4    # "event":Ljava/lang/String;
    .end local v5    # "icon":Ljava/lang/String;
    .end local v12    # "items":Lcom/alibaba/fastjson/JSONArray;
    .end local v13    # "iwmlContext":Ljqd;
    .end local v14    # "iwmlPageFrame":Ljqe;
    .end local v16    # "text":Ljava/lang/String;
    .end local v17    # "url":Ljava/lang/String;
    :cond_a
    sget-object v18, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->INVALID_OPERATION:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->errorCode:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string/jumbo v19, "\u8be5\u65b9\u6cd5\u5728\u5c0f\u7a0b\u5e8f\u5916\u8c03\u7528\u65e0\u6548"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/windmill/bundle/container/jsbridge/NavigatorBar;->callError(Ljrh;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public setStatusBarStyle(Ljava/util/Map;Ljrh;)V
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
    .line 346
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    return-void
.end method

.method public setStyle(Ljava/util/Map;Ljrh;)V
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
    .line 250
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p2}, Ljrh;->a()Landroid/content/Context;

    move-result-object v6

    instance-of v6, v6, Ljqd;

    if-eqz v6, :cond_5

    .line 251
    invoke-virtual {p2}, Ljrh;->a()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Ljqd;

    .line 252
    .local v4, "iwmlContext":Ljqd;
    invoke-interface {v4}, Ljqd;->getCurrentPageFrame()Ljqe;

    move-result-object v5

    .line 253
    .local v5, "iwmlPageFrame":Ljqe;
    if-nez v5, :cond_0

    .line 254
    sget-object v6, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->INVALID_OPERATION:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    iget-object v6, v6, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->errorCode:Ljava/lang/String;

    const-string/jumbo v7, "\u5bfc\u822a\u680f\u4e0d\u5b58\u5728"

    invoke-virtual {p0, p2, v6, v7}, Lcom/taobao/windmill/bundle/container/jsbridge/NavigatorBar;->callError(Ljrh;Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    .end local v4    # "iwmlContext":Ljqd;
    .end local v5    # "iwmlPageFrame":Ljqe;
    :goto_0
    return-void

    .line 258
    .restart local v4    # "iwmlContext":Ljqd;
    .restart local v5    # "iwmlPageFrame":Ljqe;
    :cond_0
    const-string/jumbo v6, "backgroundColor"

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 259
    .local v1, "backgroundColor":Ljava/lang/String;
    const-string/jumbo v6, "backgroundBg"

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 261
    .local v0, "backgroundBg":Ljava/lang/String;
    const-string/jumbo v6, "barTextStyle"

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 262
    .local v2, "barTextStyle":Ljava/lang/String;
    const-string/jumbo v6, "favorStyle"

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 263
    .local v3, "favorStyle":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 264
    invoke-interface {v5, v0}, Ljqe;->setActionbarBg(Ljava/lang/String;)V

    .line 271
    :cond_1
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 272
    invoke-interface {v5, v2}, Ljqe;->setBackgroundTextStyle(Ljava/lang/String;)V

    .line 275
    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 276
    const-string/jumbo v6, "favorStyle"

    invoke-interface {v5, v6, v3}, Ljqe;->setExtendStyle(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    :cond_3
    const/4 v6, 0x0

    invoke-virtual {p2, v6}, Ljrh;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 265
    :cond_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 266
    invoke-interface {v5, v1}, Ljqe;->setActionbarBgColor(Ljava/lang/String;)V

    goto :goto_1

    .line 280
    .end local v0    # "backgroundBg":Ljava/lang/String;
    .end local v1    # "backgroundColor":Ljava/lang/String;
    .end local v2    # "barTextStyle":Ljava/lang/String;
    .end local v3    # "favorStyle":Ljava/lang/String;
    .end local v4    # "iwmlContext":Ljqd;
    .end local v5    # "iwmlPageFrame":Ljqe;
    :cond_5
    sget-object v6, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->INVALID_OPERATION:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    iget-object v6, v6, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->errorCode:Ljava/lang/String;

    const-string/jumbo v7, "\u8be5\u65b9\u6cd5\u5728\u5c0f\u7a0b\u5e8f\u5916\u8c03\u7528\u65e0\u6548"

    invoke-virtual {p0, p2, v6, v7}, Lcom/taobao/windmill/bundle/container/jsbridge/NavigatorBar;->callError(Ljrh;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setTitle(Ljava/util/Map;Ljrh;)V
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
    .line 68
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p2}, Ljrh;->a()Landroid/content/Context;

    move-result-object v4

    instance-of v4, v4, Ljqd;

    if-eqz v4, :cond_3

    .line 69
    invoke-virtual {p2}, Ljrh;->a()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Ljqd;

    .line 70
    .local v1, "iwmlContext":Ljqd;
    invoke-interface {v1}, Ljqd;->getCurrentPageFrame()Ljqe;

    move-result-object v2

    .line 71
    .local v2, "iwmlPageFrame":Ljqe;
    if-nez v2, :cond_0

    .line 72
    sget-object v4, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->INVALID_OPERATION:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    iget-object v4, v4, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->errorCode:Ljava/lang/String;

    const-string/jumbo v5, "\u5bfc\u822a\u680f\u4e0d\u5b58\u5728"

    invoke-virtual {p0, p2, v4, v5}, Lcom/taobao/windmill/bundle/container/jsbridge/NavigatorBar;->callError(Ljrh;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .end local v1    # "iwmlContext":Ljqd;
    .end local v2    # "iwmlPageFrame":Ljqe;
    :goto_0
    return-void

    .line 76
    .restart local v1    # "iwmlContext":Ljqd;
    .restart local v2    # "iwmlPageFrame":Ljqe;
    :cond_0
    const-string/jumbo v4, "title"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 77
    .local v3, "title":Ljava/lang/String;
    const-string/jumbo v4, "icon"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 78
    .local v0, "icon":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 79
    invoke-interface {v2, v0}, Ljqe;->setTitleIcon(Ljava/lang/String;)V

    .line 83
    :cond_1
    :goto_1
    const/4 v4, 0x0

    invoke-virtual {p2, v4}, Ljrh;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 80
    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 81
    invoke-interface {v2, v3}, Ljqe;->setTitle(Ljava/lang/String;)V

    goto :goto_1

    .line 85
    .end local v0    # "icon":Ljava/lang/String;
    .end local v1    # "iwmlContext":Ljqd;
    .end local v2    # "iwmlPageFrame":Ljqe;
    .end local v3    # "title":Ljava/lang/String;
    :cond_3
    sget-object v4, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->INVALID_OPERATION:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    iget-object v4, v4, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->errorCode:Ljava/lang/String;

    const-string/jumbo v5, "\u8be5\u65b9\u6cd5\u5728\u5c0f\u7a0b\u5e8f\u5916\u8c03\u7528\u65e0\u6548"

    invoke-virtual {p0, p2, v4, v5}, Lcom/taobao/windmill/bundle/container/jsbridge/NavigatorBar;->callError(Ljrh;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public show(Ljava/util/Map;Ljrh;)V
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
    .line 32
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p2}, Ljrh;->a()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Ljqd;

    if-eqz v2, :cond_1

    .line 33
    invoke-virtual {p2}, Ljrh;->a()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Ljqd;

    .line 34
    .local v0, "iwmlContext":Ljqd;
    invoke-interface {v0}, Ljqd;->getCurrentPageFrame()Ljqe;

    move-result-object v1

    .line 35
    .local v1, "iwmlPageFrame":Ljqe;
    if-nez v1, :cond_0

    .line 36
    sget-object v2, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->INVALID_OPERATION:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    iget-object v2, v2, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->errorCode:Ljava/lang/String;

    const-string/jumbo v3, "\u5bfc\u822a\u680f\u4e0d\u5b58\u5728"

    invoke-virtual {p0, p2, v2, v3}, Lcom/taobao/windmill/bundle/container/jsbridge/NavigatorBar;->callError(Ljrh;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .end local v0    # "iwmlContext":Ljqd;
    .end local v1    # "iwmlPageFrame":Ljqe;
    :goto_0
    return-void

    .line 40
    .restart local v0    # "iwmlContext":Ljqd;
    .restart local v1    # "iwmlPageFrame":Ljqe;
    :cond_0
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljqe;->showActionbar(Z)V

    .line 41
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Ljrh;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 43
    .end local v0    # "iwmlContext":Ljqd;
    .end local v1    # "iwmlPageFrame":Ljqe;
    :cond_1
    sget-object v2, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->INVALID_OPERATION:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    iget-object v2, v2, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->errorCode:Ljava/lang/String;

    const-string/jumbo v3, "\u8be5\u65b9\u6cd5\u5728\u5c0f\u7a0b\u5e8f\u5916\u8c03\u7528\u65e0\u6548"

    invoke-virtual {p0, p2, v2, v3}, Lcom/taobao/windmill/bundle/container/jsbridge/NavigatorBar;->callError(Ljrh;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showMenu(Ljava/util/Map;Ljrh;)V
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
    .line 440
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p2}, Ljrh;->a()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Ljqd;

    if-eqz v2, :cond_1

    .line 441
    invoke-virtual {p2}, Ljrh;->a()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Ljqd;

    .line 442
    .local v0, "iwmlContext":Ljqd;
    invoke-interface {v0}, Ljqd;->getCurrentPageFrame()Ljqe;

    move-result-object v1

    .line 443
    .local v1, "iwmlPageFrame":Ljqe;
    if-nez v1, :cond_0

    .line 444
    sget-object v2, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->INVALID_OPERATION:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    iget-object v2, v2, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->errorCode:Ljava/lang/String;

    const-string/jumbo v3, "\u5bfc\u822a\u680f\u4e0d\u5b58\u5728"

    invoke-virtual {p0, p2, v2, v3}, Lcom/taobao/windmill/bundle/container/jsbridge/NavigatorBar;->callError(Ljrh;Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    .end local v0    # "iwmlContext":Ljqd;
    .end local v1    # "iwmlPageFrame":Ljqe;
    :goto_0
    return-void

    .line 448
    .restart local v0    # "iwmlContext":Ljqd;
    .restart local v1    # "iwmlPageFrame":Ljqe;
    :cond_0
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljqe;->showMenu(Z)V

    .line 449
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Ljrh;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 451
    .end local v0    # "iwmlContext":Ljqd;
    .end local v1    # "iwmlPageFrame":Ljqe;
    :cond_1
    sget-object v2, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->INVALID_OPERATION:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    iget-object v2, v2, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->errorCode:Ljava/lang/String;

    const-string/jumbo v3, "\u8be5\u65b9\u6cd5\u5728\u5c0f\u7a0b\u5e8f\u5916\u8c03\u7528\u65e0\u6548"

    invoke-virtual {p0, p2, v2, v3}, Lcom/taobao/windmill/bundle/container/jsbridge/NavigatorBar;->callError(Ljrh;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
