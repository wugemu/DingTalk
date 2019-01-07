.class public Lcom/taobao/weex/ui/action/GraphicActionUpdateStyle;
.super Lcom/taobao/weex/ui/action/BasicGraphicAction;
.source "GraphicActionUpdateStyle.java"


# instance fields
.field private component:Lcom/taobao/weex/ui/component/WXComponent;

.field private mIsCausedByPesudo:Z

.field private mStyle:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/taobao/weex/dom/CSSShorthand;Lcom/taobao/weex/dom/CSSShorthand;Lcom/taobao/weex/dom/CSSShorthand;Z)V
    .locals 4
    .param p1, "pageId"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/lang/String;
    .param p4, "paddings"    # Lcom/taobao/weex/dom/CSSShorthand;
    .param p5, "margins"    # Lcom/taobao/weex/dom/CSSShorthand;
    .param p6, "borders"    # Lcom/taobao/weex/dom/CSSShorthand;
    .param p7, "byPesudo"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/taobao/weex/dom/CSSShorthand;",
            "Lcom/taobao/weex/dom/CSSShorthand;",
            "Lcom/taobao/weex/dom/CSSShorthand;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p3, "style":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/ui/action/BasicGraphicAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iput-object p3, p0, Lcom/taobao/weex/ui/action/GraphicActionUpdateStyle;->mStyle:Ljava/util/Map;

    .line 53
    iput-boolean p7, p0, Lcom/taobao/weex/ui/action/GraphicActionUpdateStyle;->mIsCausedByPesudo:Z

    .line 55
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/action/GraphicActionUpdateStyle;->getPageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/taobao/weex/ui/action/GraphicActionUpdateStyle;->getRef()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/taobao/weex/ui/WXRenderManager;->getWXComponent(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v1

    iput-object v1, p0, Lcom/taobao/weex/ui/action/GraphicActionUpdateStyle;->component:Lcom/taobao/weex/ui/component/WXComponent;

    .line 56
    iget-object v1, p0, Lcom/taobao/weex/ui/action/GraphicActionUpdateStyle;->component:Lcom/taobao/weex/ui/component/WXComponent;

    if-nez v1, :cond_1

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    iget-object v1, p0, Lcom/taobao/weex/ui/action/GraphicActionUpdateStyle;->mStyle:Ljava/util/Map;

    if-eqz v1, :cond_2

    .line 60
    iget-object v1, p0, Lcom/taobao/weex/ui/action/GraphicActionUpdateStyle;->component:Lcom/taobao/weex/ui/component/WXComponent;

    iget-object v2, p0, Lcom/taobao/weex/ui/action/GraphicActionUpdateStyle;->mStyle:Ljava/util/Map;

    iget-boolean v3, p0, Lcom/taobao/weex/ui/action/GraphicActionUpdateStyle;->mIsCausedByPesudo:Z

    invoke-virtual {v1, v2, v3}, Lcom/taobao/weex/ui/component/WXComponent;->updateStyle(Ljava/util/Map;Z)V

    .line 61
    const-string/jumbo v1, "transform"

    invoke-interface {p3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/taobao/weex/ui/action/GraphicActionUpdateStyle;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXComponent;->getTransition()Lcom/taobao/weex/dom/transition/WXTransition;

    move-result-object v1

    if-nez v1, :cond_2

    .line 62
    new-instance v0, Lfk;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lfk;-><init>(I)V

    .line 63
    .local v0, "animationMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "transform"

    const-string/jumbo v2, "transform"

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string/jumbo v1, "transformOrigin"

    const-string/jumbo v2, "transformOrigin"

    .line 65
    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v1, p0, Lcom/taobao/weex/ui/action/GraphicActionUpdateStyle;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v1, v0}, Lcom/taobao/weex/ui/component/WXComponent;->addAnimationForElement(Ljava/util/Map;)V

    .line 70
    .end local v0    # "animationMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    if-eqz p4, :cond_3

    .line 71
    iget-object v1, p0, Lcom/taobao/weex/ui/action/GraphicActionUpdateStyle;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v1, p4}, Lcom/taobao/weex/ui/component/WXComponent;->setPaddings(Lcom/taobao/weex/dom/CSSShorthand;)V

    .line 74
    :cond_3
    if-eqz p5, :cond_4

    .line 75
    iget-object v1, p0, Lcom/taobao/weex/ui/action/GraphicActionUpdateStyle;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v1, p5}, Lcom/taobao/weex/ui/component/WXComponent;->setMargins(Lcom/taobao/weex/dom/CSSShorthand;)V

    .line 78
    :cond_4
    if-eqz p6, :cond_0

    .line 79
    iget-object v1, p0, Lcom/taobao/weex/ui/action/GraphicActionUpdateStyle;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v1, p6}, Lcom/taobao/weex/ui/component/WXComponent;->setBorders(Lcom/taobao/weex/dom/CSSShorthand;)V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 8
    .param p1, "pageId"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p3, "style":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p4, "paddings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p5, "margins":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p6, "borders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/taobao/weex/ui/action/GraphicActionUpdateStyle;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Z)V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Z)V
    .locals 5
    .param p1, "pageId"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/lang/String;
    .param p7, "byPesudo"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p3, "style":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p4, "paddings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p5, "margins":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p6, "borders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/ui/action/BasicGraphicAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iput-object p3, p0, Lcom/taobao/weex/ui/action/GraphicActionUpdateStyle;->mStyle:Ljava/util/Map;

    .line 90
    iput-boolean p7, p0, Lcom/taobao/weex/ui/action/GraphicActionUpdateStyle;->mIsCausedByPesudo:Z

    .line 92
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/action/GraphicActionUpdateStyle;->getPageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/taobao/weex/ui/action/GraphicActionUpdateStyle;->getRef()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/taobao/weex/ui/WXRenderManager;->getWXComponent(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v1

    iput-object v1, p0, Lcom/taobao/weex/ui/action/GraphicActionUpdateStyle;->component:Lcom/taobao/weex/ui/component/WXComponent;

    .line 93
    iget-object v1, p0, Lcom/taobao/weex/ui/action/GraphicActionUpdateStyle;->component:Lcom/taobao/weex/ui/component/WXComponent;

    if-nez v1, :cond_1

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    iget-object v1, p0, Lcom/taobao/weex/ui/action/GraphicActionUpdateStyle;->mStyle:Ljava/util/Map;

    if-eqz v1, :cond_2

    .line 97
    iget-object v1, p0, Lcom/taobao/weex/ui/action/GraphicActionUpdateStyle;->component:Lcom/taobao/weex/ui/component/WXComponent;

    iget-object v2, p0, Lcom/taobao/weex/ui/action/GraphicActionUpdateStyle;->mStyle:Ljava/util/Map;

    iget-boolean v3, p0, Lcom/taobao/weex/ui/action/GraphicActionUpdateStyle;->mIsCausedByPesudo:Z

    invoke-virtual {v1, v2, v3}, Lcom/taobao/weex/ui/component/WXComponent;->addStyle(Ljava/util/Map;Z)V

    .line 98
    const-string/jumbo v1, "transform"

    invoke-interface {p3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/taobao/weex/ui/action/GraphicActionUpdateStyle;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXComponent;->getTransition()Lcom/taobao/weex/dom/transition/WXTransition;

    move-result-object v1

    if-nez v1, :cond_2

    .line 99
    new-instance v0, Lfk;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lfk;-><init>(I)V

    .line 100
    .local v0, "animationMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "transform"

    const-string/jumbo v2, "transform"

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string/jumbo v1, "transformOrigin"

    const-string/jumbo v2, "transformOrigin"

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v1, p0, Lcom/taobao/weex/ui/action/GraphicActionUpdateStyle;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v1, v0}, Lcom/taobao/weex/ui/component/WXComponent;->addAnimationForElement(Ljava/util/Map;)V

    .line 103
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/ui/action/GraphicActionUpdateStyle;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/taobao/weex/ui/action/GraphicActionUpdateStyle;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v3}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/taobao/weex/bridge/WXBridgeManager;->markDirty(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 107
    .end local v0    # "animationMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    if-eqz p4, :cond_3

    .line 108
    iget-object v1, p0, Lcom/taobao/weex/ui/action/GraphicActionUpdateStyle;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v1, p4}, Lcom/taobao/weex/ui/component/WXComponent;->addShorthand(Ljava/util/Map;)V

    .line 111
    :cond_3
    if-eqz p5, :cond_4

    .line 112
    iget-object v1, p0, Lcom/taobao/weex/ui/action/GraphicActionUpdateStyle;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v1, p5}, Lcom/taobao/weex/ui/component/WXComponent;->addShorthand(Ljava/util/Map;)V

    .line 115
    :cond_4
    if-eqz p6, :cond_0

    .line 116
    iget-object v1, p0, Lcom/taobao/weex/ui/action/GraphicActionUpdateStyle;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v1, p6}, Lcom/taobao/weex/ui/component/WXComponent;->addShorthand(Ljava/util/Map;)V

    goto :goto_0
.end method


# virtual methods
.method public executeAction()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 122
    iget-object v0, p0, Lcom/taobao/weex/ui/action/GraphicActionUpdateStyle;->component:Lcom/taobao/weex/ui/component/WXComponent;

    if-nez v0, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/taobao/weex/ui/action/GraphicActionUpdateStyle;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getTransition()Lcom/taobao/weex/dom/transition/WXTransition;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 126
    iget-object v0, p0, Lcom/taobao/weex/ui/action/GraphicActionUpdateStyle;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getTransition()Lcom/taobao/weex/dom/transition/WXTransition;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/ui/action/GraphicActionUpdateStyle;->mStyle:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/transition/WXTransition;->updateTranstionParams(Ljava/util/Map;)V

    .line 127
    iget-object v0, p0, Lcom/taobao/weex/ui/action/GraphicActionUpdateStyle;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getTransition()Lcom/taobao/weex/dom/transition/WXTransition;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/ui/action/GraphicActionUpdateStyle;->mStyle:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/transition/WXTransition;->hasTransitionProperty(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/taobao/weex/ui/action/GraphicActionUpdateStyle;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getTransition()Lcom/taobao/weex/dom/transition/WXTransition;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/ui/action/GraphicActionUpdateStyle;->mStyle:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/transition/WXTransition;->startTransition(Ljava/util/Map;)V

    goto :goto_0

    .line 131
    :cond_2
    iget-object v0, p0, Lcom/taobao/weex/ui/action/GraphicActionUpdateStyle;->component:Lcom/taobao/weex/ui/component/WXComponent;

    iget-object v1, p0, Lcom/taobao/weex/ui/action/GraphicActionUpdateStyle;->mStyle:Ljava/util/Map;

    iget-object v2, p0, Lcom/taobao/weex/ui/action/GraphicActionUpdateStyle;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-static {v1, v2}, Lcom/taobao/weex/dom/transition/WXTransition;->fromMap(Ljava/util/Map;Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/dom/transition/WXTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/component/WXComponent;->setTransition(Lcom/taobao/weex/dom/transition/WXTransition;)V

    .line 132
    iget-object v0, p0, Lcom/taobao/weex/ui/action/GraphicActionUpdateStyle;->component:Lcom/taobao/weex/ui/component/WXComponent;

    iget-object v1, p0, Lcom/taobao/weex/ui/action/GraphicActionUpdateStyle;->mStyle:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/component/WXComponent;->updateStyles(Ljava/util/Map;)V

    goto :goto_0
.end method
