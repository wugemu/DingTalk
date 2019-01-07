.class public Lcom/taobao/weex/ui/action/GraphicActionAddElement;
.super Lcom/taobao/weex/ui/action/GraphicActionAbstractAddElement;
.source "GraphicActionAddElement.java"


# instance fields
.field private child:Lcom/taobao/weex/ui/component/WXComponent;

.field private layoutPosition:Lcom/taobao/weex/ui/action/GraphicPosition;

.field private layoutSize:Lcom/taobao/weex/ui/action/GraphicSize;

.field private parent:Lcom/taobao/weex/ui/component/WXVContainer;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Ljava/util/Map;Ljava/util/Set;[F[F[F)V
    .locals 13
    .param p1, "pageId"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/lang/String;
    .param p3, "componentType"    # Ljava/lang/String;
    .param p4, "parentRef"    # Ljava/lang/String;
    .param p5, "index"    # I
    .param p9, "margins"    # [F
    .param p10, "paddings"    # [F
    .param p11, "borders"    # [F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
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
    .line 54
    .local p6, "style":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p7, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p8, "events":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/ui/action/GraphicActionAbstractAddElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->mComponentType:Ljava/lang/String;

    .line 56
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->mParentRef:Ljava/lang/String;

    .line 57
    move/from16 v0, p5

    iput v0, p0, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->mIndex:I

    .line 58
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->mStyle:Ljava/util/Map;

    .line 59
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->mAttributes:Ljava/util/Map;

    .line 60
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->mEvents:Ljava/util/Set;

    .line 61
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->mPaddings:[F

    .line 62
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->mMargins:[F

    .line 63
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->mBorders:[F

    .line 65
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->getPageId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/taobao/weex/ui/WXRenderManager;->getWXSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v2

    .line 66
    .local v2, "instance":Lcom/taobao/weex/WXSDKInstance;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_1

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v3

    .line 72
    invoke-virtual {p0}, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->getPageId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->mParentRef:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/taobao/weex/ui/WXRenderManager;->getWXComponent(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v3

    check-cast v3, Lcom/taobao/weex/ui/component/WXVContainer;

    iput-object v3, p0, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->parent:Lcom/taobao/weex/ui/component/WXVContainer;

    .line 73
    new-instance v1, Lcom/taobao/weex/ui/action/BasicComponentData;

    iget-object v3, p0, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->mComponentType:Ljava/lang/String;

    iget-object v4, p0, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->mParentRef:Ljava/lang/String;

    invoke-direct {v1, p2, v3, v4}, Lcom/taobao/weex/ui/action/BasicComponentData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .local v1, "basicComponentData":Lcom/taobao/weex/ui/action/BasicComponentData;
    iget-object v3, p0, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->parent:Lcom/taobao/weex/ui/component/WXVContainer;

    invoke-virtual {p0, v2, v3, v1}, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->createComponent(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v3

    iput-object v3, p0, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->child:Lcom/taobao/weex/ui/component/WXComponent;

    .line 76
    iget-object v3, p0, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->child:Lcom/taobao/weex/ui/component/WXComponent;

    iget-object v4, p0, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->child:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v4}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v4

    iget-object v5, p0, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->child:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-static {v4, v5}, Lcom/taobao/weex/dom/transition/WXTransition;->fromMap(Ljava/util/Map;Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/dom/transition/WXTransition;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/taobao/weex/ui/component/WXComponent;->setTransition(Lcom/taobao/weex/dom/transition/WXTransition;)V

    .line 78
    iget-object v3, p0, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->child:Lcom/taobao/weex/ui/component/WXComponent;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->parent:Lcom/taobao/weex/ui/component/WXVContainer;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_0

    goto :goto_0

    .line 82
    .end local v1    # "basicComponentData":Lcom/taobao/weex/ui/action/BasicComponentData;
    :catch_0
    move-exception v3

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/taobao/weex/common/WXErrorCode;->WX_RENDER_ERR_CONTAINER_TYPE:Lcom/taobao/weex/common/WXErrorCode;

    const-string/jumbo v5, "GraphicActionAddElement"

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v7, "You are trying to add a %s (ref: %s) to a %3$s (ref: %4$s), which is illegal as %3$s (ref: %4$s) is not a container"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p3, v8, v9

    const/4 v9, 0x1

    aput-object p2, v8, v9

    const/4 v9, 0x2

    .line 87
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v10

    invoke-virtual {p0}, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->getPageId()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->mParentRef:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Lcom/taobao/weex/ui/WXRenderManager;->getWXComponent(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v10

    invoke-virtual {v10}, Lcom/taobao/weex/ui/component/WXComponent;->getComponentType()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    aput-object p4, v8, v9

    .line 85
    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 82
    invoke-static {v3, v4, v5, v6, v7}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method


# virtual methods
.method public executeAction()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 114
    invoke-super {p0}, Lcom/taobao/weex/ui/action/GraphicActionAbstractAddElement;->executeAction()V

    .line 116
    :try_start_0
    const-string/jumbo v1, "mComponentType"

    const-string/jumbo v2, "video"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "mComponentType"

    const-string/jumbo v2, "videoplus"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 117
    iget-object v1, p0, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->child:Lcom/taobao/weex/ui/component/WXComponent;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/taobao/weex/ui/component/WXComponent;->mIsAddElementToTree:Z

    .line 119
    :cond_0
    iget-object v1, p0, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->parent:Lcom/taobao/weex/ui/component/WXVContainer;

    iget-object v2, p0, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->child:Lcom/taobao/weex/ui/component/WXComponent;

    iget v3, p0, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->mIndex:I

    invoke-virtual {v1, v2, v3}, Lcom/taobao/weex/ui/component/WXVContainer;->addChild(Lcom/taobao/weex/ui/component/WXComponent;I)V

    .line 120
    iget-object v1, p0, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->parent:Lcom/taobao/weex/ui/component/WXVContainer;

    iget v2, p0, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->mIndex:I

    invoke-virtual {v1, v2}, Lcom/taobao/weex/ui/component/WXVContainer;->createChildViewAt(I)V

    .line 122
    iget-object v1, p0, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->layoutPosition:Lcom/taobao/weex/ui/action/GraphicPosition;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->layoutSize:Lcom/taobao/weex/ui/action/GraphicSize;

    if-eqz v1, :cond_1

    .line 123
    iget-object v1, p0, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->child:Lcom/taobao/weex/ui/component/WXComponent;

    iget-object v2, p0, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->layoutSize:Lcom/taobao/weex/ui/action/GraphicSize;

    iget-object v3, p0, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->layoutPosition:Lcom/taobao/weex/ui/action/GraphicPosition;

    invoke-virtual {v1, v2, v3}, Lcom/taobao/weex/ui/component/WXComponent;->setDemission(Lcom/taobao/weex/ui/action/GraphicSize;Lcom/taobao/weex/ui/action/GraphicPosition;)V

    .line 125
    :cond_1
    iget-object v1, p0, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->child:Lcom/taobao/weex/ui/component/WXComponent;

    iget-object v2, p0, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->child:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v1, v2}, Lcom/taobao/weex/ui/component/WXComponent;->applyLayoutAndEvent(Lcom/taobao/weex/ui/component/WXComponent;)V

    .line 126
    iget-object v1, p0, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->child:Lcom/taobao/weex/ui/component/WXComponent;

    iget-object v2, p0, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->child:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v1, v2}, Lcom/taobao/weex/ui/component/WXComponent;->bindData(Lcom/taobao/weex/ui/component/WXComponent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :goto_0
    return-void

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "add component failed."

    invoke-static {v1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setIndex(I)V
    .locals 0
    .param p1, "index"    # I
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 109
    iput p1, p0, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->mIndex:I

    .line 110
    return-void
.end method

.method public setPosition(Lcom/taobao/weex/ui/action/GraphicPosition;)V
    .locals 0
    .param p1, "position"    # Lcom/taobao/weex/ui/action/GraphicPosition;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 103
    iput-object p1, p0, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->layoutPosition:Lcom/taobao/weex/ui/action/GraphicPosition;

    .line 104
    return-void
.end method

.method public setSize(Lcom/taobao/weex/ui/action/GraphicSize;)V
    .locals 0
    .param p1, "graphicSize"    # Lcom/taobao/weex/ui/action/GraphicSize;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 97
    iput-object p1, p0, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->layoutSize:Lcom/taobao/weex/ui/action/GraphicSize;

    .line 98
    return-void
.end method
