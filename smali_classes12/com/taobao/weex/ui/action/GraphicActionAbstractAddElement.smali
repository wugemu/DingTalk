.class public abstract Lcom/taobao/weex/ui/action/GraphicActionAbstractAddElement;
.super Lcom/taobao/weex/ui/action/BasicGraphicAction;
.source "GraphicActionAbstractAddElement.java"


# instance fields
.field protected mAttributes:Ljava/util/Map;
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

.field protected mBorders:[F

.field protected mComponentType:Ljava/lang/String;

.field protected mEvents:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mIndex:I

.field protected mMargins:[F

.field protected mPaddings:[F

.field protected mParentRef:Ljava/lang/String;

.field protected mStyle:Ljava/util/Map;
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

.field private startTime:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "pageId"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/ui/action/BasicGraphicAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/taobao/weex/ui/action/GraphicActionAbstractAddElement;->mIndex:I

    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/weex/ui/action/GraphicActionAbstractAddElement;->startTime:J

    .line 48
    return-void
.end method


# virtual methods
.method protected createComponent(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)Lcom/taobao/weex/ui/component/WXComponent;
    .locals 7
    .param p1, "instance"    # Lcom/taobao/weex/WXSDKInstance;
    .param p2, "parent"    # Lcom/taobao/weex/ui/component/WXVContainer;
    .param p3, "basicComponentData"    # Lcom/taobao/weex/ui/action/BasicComponentData;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 52
    .local v2, "createComponentStart":J
    if-eqz p3, :cond_0

    .line 53
    iget-object v4, p0, Lcom/taobao/weex/ui/action/GraphicActionAbstractAddElement;->mStyle:Ljava/util/Map;

    invoke-virtual {p3, v4}, Lcom/taobao/weex/ui/action/BasicComponentData;->addStyle(Ljava/util/Map;)V

    .line 54
    iget-object v4, p0, Lcom/taobao/weex/ui/action/GraphicActionAbstractAddElement;->mAttributes:Ljava/util/Map;

    invoke-virtual {p3, v4}, Lcom/taobao/weex/ui/action/BasicComponentData;->addAttr(Ljava/util/Map;)V

    .line 55
    iget-object v4, p0, Lcom/taobao/weex/ui/action/GraphicActionAbstractAddElement;->mEvents:Ljava/util/Set;

    invoke-virtual {p3, v4}, Lcom/taobao/weex/ui/action/BasicComponentData;->addEvent(Ljava/util/Set;)V

    .line 56
    iget-object v4, p0, Lcom/taobao/weex/ui/action/GraphicActionAbstractAddElement;->mMargins:[F

    sget-object v5, Lcom/taobao/weex/dom/CSSShorthand$TYPE;->MARGIN:Lcom/taobao/weex/dom/CSSShorthand$TYPE;

    invoke-virtual {p3, v4, v5}, Lcom/taobao/weex/ui/action/BasicComponentData;->addShorthand([FLcom/taobao/weex/dom/CSSShorthand$TYPE;)V

    .line 57
    iget-object v4, p0, Lcom/taobao/weex/ui/action/GraphicActionAbstractAddElement;->mPaddings:[F

    sget-object v5, Lcom/taobao/weex/dom/CSSShorthand$TYPE;->PADDING:Lcom/taobao/weex/dom/CSSShorthand$TYPE;

    invoke-virtual {p3, v4, v5}, Lcom/taobao/weex/ui/action/BasicComponentData;->addShorthand([FLcom/taobao/weex/dom/CSSShorthand$TYPE;)V

    .line 58
    iget-object v4, p0, Lcom/taobao/weex/ui/action/GraphicActionAbstractAddElement;->mBorders:[F

    sget-object v5, Lcom/taobao/weex/dom/CSSShorthand$TYPE;->BORDER:Lcom/taobao/weex/dom/CSSShorthand$TYPE;

    invoke-virtual {p3, v4, v5}, Lcom/taobao/weex/ui/action/BasicComponentData;->addShorthand([FLcom/taobao/weex/dom/CSSShorthand$TYPE;)V

    .line 61
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/taobao/weex/ui/component/WXComponentFactory;->newInstance(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v1

    .line 62
    .local v1, "component":Lcom/taobao/weex/ui/component/WXComponent;
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/taobao/weex/ui/action/GraphicActionAbstractAddElement;->getPageId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/taobao/weex/ui/action/GraphicActionAbstractAddElement;->getRef()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v1}, Lcom/taobao/weex/ui/WXRenderManager;->registerComponent(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/ui/component/WXComponent;)V

    .line 63
    iget-object v4, p0, Lcom/taobao/weex/ui/action/GraphicActionAbstractAddElement;->mStyle:Ljava/util/Map;

    const-string/jumbo v5, "transform"

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXComponent;->getTransition()Lcom/taobao/weex/dom/transition/WXTransition;

    move-result-object v4

    if-nez v4, :cond_1

    .line 64
    new-instance v0, Lfk;

    const/4 v4, 0x2

    invoke-direct {v0, v4}, Lfk;-><init>(I)V

    .line 65
    .local v0, "animationMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v4, "transform"

    iget-object v5, p0, Lcom/taobao/weex/ui/action/GraphicActionAbstractAddElement;->mStyle:Ljava/util/Map;

    const-string/jumbo v6, "transform"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-string/jumbo v4, "transformOrigin"

    iget-object v5, p0, Lcom/taobao/weex/ui/action/GraphicActionAbstractAddElement;->mStyle:Ljava/util/Map;

    const-string/jumbo v6, "transformOrigin"

    .line 67
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    invoke-virtual {v1, v0}, Lcom/taobao/weex/ui/component/WXComponent;->addAnimationForElement(Ljava/util/Map;)V

    .line 70
    .end local v0    # "animationMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {p1, v1, v4, v5}, Lcom/taobao/weex/WXSDKInstance;->onComponentCreate(Lcom/taobao/weex/ui/component/WXComponent;J)V

    .line 71
    return-object v1
.end method

.method public executeAction()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 76
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/action/GraphicActionAbstractAddElement;->getPageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/taobao/weex/ui/action/GraphicActionAbstractAddElement;->startTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/taobao/weex/WXSDKInstance;->callActionAddElementTime(J)V

    .line 77
    return-void
.end method

.method public getAttributes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lcom/taobao/weex/ui/action/GraphicActionAbstractAddElement;->mAttributes:Ljava/util/Map;

    return-object v0
.end method

.method public getComponentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/taobao/weex/ui/action/GraphicActionAbstractAddElement;->mComponentType:Ljava/lang/String;

    return-object v0
.end method

.method public getEvents()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lcom/taobao/weex/ui/action/GraphicActionAbstractAddElement;->mEvents:Ljava/util/Set;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/taobao/weex/ui/action/GraphicActionAbstractAddElement;->mIndex:I

    return v0
.end method

.method public getParentRef()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/taobao/weex/ui/action/GraphicActionAbstractAddElement;->mParentRef:Ljava/lang/String;

    return-object v0
.end method

.method public getStyle()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcom/taobao/weex/ui/action/GraphicActionAbstractAddElement;->mStyle:Ljava/util/Map;

    return-object v0
.end method
