.class public Lcom/taobao/weex/ui/action/GraphicActionMoveElement;
.super Lcom/taobao/weex/ui/action/BasicGraphicAction;
.source "GraphicActionMoveElement.java"


# instance fields
.field private mIndex:I

.field private mParentref:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "pageId"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/lang/String;
    .param p3, "parentRef"    # Ljava/lang/String;
    .param p4, "index"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/ui/action/BasicGraphicAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iput-object p3, p0, Lcom/taobao/weex/ui/action/GraphicActionMoveElement;->mParentref:Ljava/lang/String;

    .line 35
    iput p4, p0, Lcom/taobao/weex/ui/action/GraphicActionMoveElement;->mIndex:I

    .line 36
    return-void
.end method


# virtual methods
.method public executeAction()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v9, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 40
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/taobao/weex/ui/action/GraphicActionMoveElement;->getPageId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/taobao/weex/ui/action/GraphicActionMoveElement;->getRef()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lcom/taobao/weex/ui/WXRenderManager;->getWXComponent(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    .line 41
    .local v0, "component":Lcom/taobao/weex/ui/component/WXComponent;
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v3

    .line 42
    .local v3, "oldParent":Lcom/taobao/weex/ui/component/WXVContainer;
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/taobao/weex/ui/action/GraphicActionMoveElement;->getPageId()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/taobao/weex/ui/action/GraphicActionMoveElement;->mParentref:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Lcom/taobao/weex/ui/WXRenderManager;->getWXComponent(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v2

    .line 43
    .local v2, "newParent":Lcom/taobao/weex/ui/component/WXComponent;
    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    instance-of v4, v2, Lcom/taobao/weex/ui/component/WXVContainer;

    if-nez v4, :cond_1

    .line 67
    .end local v2    # "newParent":Lcom/taobao/weex/ui/component/WXComponent;
    :cond_0
    :goto_0
    return-void

    .line 48
    .restart local v2    # "newParent":Lcom/taobao/weex/ui/component/WXComponent;
    :cond_1
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "mComponentType"

    const-string/jumbo v7, "video"

    invoke-static {v4, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "mComponentType"

    const-string/jumbo v7, "videoplus"

    invoke-static {v4, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 49
    new-array v1, v9, [I

    .line 50
    .local v1, "location":[I
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 51
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v7

    aget v4, v1, v5

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v8

    invoke-virtual {v8}, Lcom/taobao/weex/WXSDKInstance;->getWeexHeight()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    if-le v4, v8, :cond_4

    move v4, v5

    :goto_1
    invoke-virtual {v7, v3, v4}, Lcom/taobao/weex/WXSDKInstance;->onChangeElement(Lcom/taobao/weex/ui/component/WXComponent;Z)V

    .line 54
    .end local v1    # "location":[I
    :cond_2
    invoke-virtual {v3, v0, v6}, Lcom/taobao/weex/ui/component/WXVContainer;->remove(Lcom/taobao/weex/ui/component/WXComponent;Z)V

    move-object v4, v2

    .line 56
    check-cast v4, Lcom/taobao/weex/ui/component/WXVContainer;

    iget v7, p0, Lcom/taobao/weex/ui/action/GraphicActionMoveElement;->mIndex:I

    invoke-virtual {v4, v0, v7}, Lcom/taobao/weex/ui/component/WXVContainer;->addChild(Lcom/taobao/weex/ui/component/WXComponent;I)V

    .line 58
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_3

    const-string/jumbo v4, "mComponentType"

    const-string/jumbo v7, "video"

    invoke-static {v4, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string/jumbo v4, "mComponentType"

    const-string/jumbo v7, "videoplus"

    invoke-static {v4, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 59
    new-array v1, v9, [I

    .line 60
    .restart local v1    # "location":[I
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 61
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v4

    aget v7, v1, v5

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v8

    invoke-virtual {v8}, Lcom/taobao/weex/WXSDKInstance;->getWeexHeight()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    if-le v7, v8, :cond_5

    :goto_2
    invoke-virtual {v4, v2, v5}, Lcom/taobao/weex/WXSDKInstance;->onChangeElement(Lcom/taobao/weex/ui/component/WXComponent;Z)V

    .line 64
    .end local v1    # "location":[I
    :cond_3
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->isVirtualComponent()Z

    move-result v4

    if-nez v4, :cond_0

    .line 65
    check-cast v2, Lcom/taobao/weex/ui/component/WXVContainer;

    .end local v2    # "newParent":Lcom/taobao/weex/ui/component/WXComponent;
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v4

    iget v5, p0, Lcom/taobao/weex/ui/action/GraphicActionMoveElement;->mIndex:I

    invoke-virtual {v2, v4, v5}, Lcom/taobao/weex/ui/component/WXVContainer;->addSubView(Landroid/view/View;I)V

    goto/16 :goto_0

    .restart local v1    # "location":[I
    .restart local v2    # "newParent":Lcom/taobao/weex/ui/component/WXComponent;
    :cond_4
    move v4, v6

    .line 51
    goto :goto_1

    :cond_5
    move v5, v6

    .line 61
    goto :goto_2
.end method
