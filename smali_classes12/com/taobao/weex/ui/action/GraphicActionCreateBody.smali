.class public Lcom/taobao/weex/ui/action/GraphicActionCreateBody;
.super Lcom/taobao/weex/ui/action/GraphicActionAbstractAddElement;
.source "GraphicActionCreateBody.java"


# instance fields
.field private component:Lcom/taobao/weex/ui/component/WXComponent;

.field private instance:Lcom/taobao/weex/WXSDKInstance;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;[F[F[F)V
    .locals 4
    .param p1, "pageId"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/lang/String;
    .param p3, "componentType"    # Ljava/lang/String;
    .param p7, "margins"    # [F
    .param p8, "paddings"    # [F
    .param p9, "borders"    # [F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
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
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;[F[F[F)V"
        }
    .end annotation

    .prologue
    .local p4, "style":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p5, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p6, "events":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/ui/action/GraphicActionAbstractAddElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iput-object p3, p0, Lcom/taobao/weex/ui/action/GraphicActionCreateBody;->mComponentType:Ljava/lang/String;

    .line 49
    iput-object p4, p0, Lcom/taobao/weex/ui/action/GraphicActionCreateBody;->mStyle:Ljava/util/Map;

    .line 50
    iput-object p5, p0, Lcom/taobao/weex/ui/action/GraphicActionCreateBody;->mAttributes:Ljava/util/Map;

    .line 51
    iput-object p6, p0, Lcom/taobao/weex/ui/action/GraphicActionCreateBody;->mEvents:Ljava/util/Set;

    .line 52
    iput-object p7, p0, Lcom/taobao/weex/ui/action/GraphicActionCreateBody;->mMargins:[F

    .line 53
    iput-object p8, p0, Lcom/taobao/weex/ui/action/GraphicActionCreateBody;->mPaddings:[F

    .line 54
    iput-object p9, p0, Lcom/taobao/weex/ui/action/GraphicActionCreateBody;->mBorders:[F

    .line 56
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/action/GraphicActionCreateBody;->getPageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/taobao/weex/ui/WXRenderManager;->getWXSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    iput-object v1, p0, Lcom/taobao/weex/ui/action/GraphicActionCreateBody;->instance:Lcom/taobao/weex/WXSDKInstance;

    .line 57
    iget-object v1, p0, Lcom/taobao/weex/ui/action/GraphicActionCreateBody;->instance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/taobao/weex/ui/action/GraphicActionCreateBody;->instance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_1

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    new-instance v0, Lcom/taobao/weex/ui/action/BasicComponentData;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/action/GraphicActionCreateBody;->getRef()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/ui/action/GraphicActionCreateBody;->mComponentType:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/taobao/weex/ui/action/BasicComponentData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .local v0, "basicComponentData":Lcom/taobao/weex/ui/action/BasicComponentData;
    iget-object v1, p0, Lcom/taobao/weex/ui/action/GraphicActionCreateBody;->instance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {p0, v1, v3, v0}, Lcom/taobao/weex/ui/action/GraphicActionCreateBody;->createComponent(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v1

    iput-object v1, p0, Lcom/taobao/weex/ui/action/GraphicActionCreateBody;->component:Lcom/taobao/weex/ui/component/WXComponent;

    .line 63
    iget-object v1, p0, Lcom/taobao/weex/ui/action/GraphicActionCreateBody;->component:Lcom/taobao/weex/ui/component/WXComponent;

    if-eqz v1, :cond_0

    .line 66
    iget-object v1, p0, Lcom/taobao/weex/ui/action/GraphicActionCreateBody;->component:Lcom/taobao/weex/ui/component/WXComponent;

    iget-object v2, p0, Lcom/taobao/weex/ui/action/GraphicActionCreateBody;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v2

    iget-object v3, p0, Lcom/taobao/weex/ui/action/GraphicActionCreateBody;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-static {v2, v3}, Lcom/taobao/weex/dom/transition/WXTransition;->fromMap(Ljava/util/Map;Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/dom/transition/WXTransition;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/taobao/weex/ui/component/WXComponent;->setTransition(Lcom/taobao/weex/dom/transition/WXTransition;)V

    goto :goto_0
.end method


# virtual methods
.method public executeAction()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 71
    invoke-super {p0}, Lcom/taobao/weex/ui/action/GraphicActionAbstractAddElement;->executeAction()V

    .line 73
    :try_start_0
    iget-object v2, p0, Lcom/taobao/weex/ui/action/GraphicActionCreateBody;->component:Lcom/taobao/weex/ui/component/WXComponent;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/taobao/weex/ui/component/WXComponent;->mIsAddElementToTree:Z

    .line 74
    iget-object v2, p0, Lcom/taobao/weex/ui/action/GraphicActionCreateBody;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXComponent;->createView()V

    .line 75
    iget-object v2, p0, Lcom/taobao/weex/ui/action/GraphicActionCreateBody;->component:Lcom/taobao/weex/ui/component/WXComponent;

    iget-object v3, p0, Lcom/taobao/weex/ui/action/GraphicActionCreateBody;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v2, v3}, Lcom/taobao/weex/ui/component/WXComponent;->applyLayoutAndEvent(Lcom/taobao/weex/ui/component/WXComponent;)V

    .line 76
    iget-object v2, p0, Lcom/taobao/weex/ui/action/GraphicActionCreateBody;->component:Lcom/taobao/weex/ui/component/WXComponent;

    iget-object v3, p0, Lcom/taobao/weex/ui/action/GraphicActionCreateBody;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v2, v3}, Lcom/taobao/weex/ui/component/WXComponent;->bindData(Lcom/taobao/weex/ui/component/WXComponent;)V

    .line 78
    iget-object v2, p0, Lcom/taobao/weex/ui/action/GraphicActionCreateBody;->component:Lcom/taobao/weex/ui/component/WXComponent;

    instance-of v2, v2, Lcom/taobao/weex/ui/component/WXScroller;

    if-eqz v2, :cond_0

    .line 79
    iget-object v1, p0, Lcom/taobao/weex/ui/action/GraphicActionCreateBody;->component:Lcom/taobao/weex/ui/component/WXComponent;

    check-cast v1, Lcom/taobao/weex/ui/component/WXScroller;

    .line 80
    .local v1, "scroller":Lcom/taobao/weex/ui/component/WXScroller;
    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v2

    instance-of v2, v2, Landroid/widget/ScrollView;

    if-eqz v2, :cond_0

    .line 81
    iget-object v3, p0, Lcom/taobao/weex/ui/action/GraphicActionCreateBody;->instance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    invoke-virtual {v3, v2}, Lcom/taobao/weex/WXSDKInstance;->setRootScrollView(Landroid/widget/ScrollView;)V

    .line 85
    .end local v1    # "scroller":Lcom/taobao/weex/ui/component/WXScroller;
    :cond_0
    iget-object v2, p0, Lcom/taobao/weex/ui/action/GraphicActionCreateBody;->instance:Lcom/taobao/weex/WXSDKInstance;

    iget-object v3, p0, Lcom/taobao/weex/ui/action/GraphicActionCreateBody;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v2, v3}, Lcom/taobao/weex/WXSDKInstance;->onRootCreated(Lcom/taobao/weex/ui/component/WXComponent;)V

    .line 87
    iget-object v2, p0, Lcom/taobao/weex/ui/action/GraphicActionCreateBody;->instance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKInstance;->getRenderStrategy()Lcom/taobao/weex/common/WXRenderStrategy;

    move-result-object v2

    sget-object v3, Lcom/taobao/weex/common/WXRenderStrategy;->APPEND_ONCE:Lcom/taobao/weex/common/WXRenderStrategy;

    if-eq v2, v3, :cond_1

    .line 88
    iget-object v2, p0, Lcom/taobao/weex/ui/action/GraphicActionCreateBody;->instance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKInstance;->onCreateFinish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :cond_1
    :goto_0
    return-void

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "create body failed."

    invoke-static {v2, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
