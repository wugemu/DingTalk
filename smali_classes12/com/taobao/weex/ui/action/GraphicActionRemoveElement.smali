.class public Lcom/taobao/weex/ui/action/GraphicActionRemoveElement;
.super Lcom/taobao/weex/ui/action/BasicGraphicAction;
.source "GraphicActionRemoveElement.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "pageId"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/ui/action/BasicGraphicAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method private clearRegistryForComponent(Lcom/taobao/weex/ui/component/WXComponent;)V
    .locals 7
    .param p1, "component"    # Lcom/taobao/weex/ui/component/WXComponent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 51
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/taobao/weex/ui/action/GraphicActionRemoveElement;->getPageId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/taobao/weex/ui/action/GraphicActionRemoveElement;->getRef()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/taobao/weex/ui/WXRenderManager;->unregisterComponent(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v3

    .line 52
    .local v3, "removedComponent":Lcom/taobao/weex/ui/component/WXComponent;
    if-eqz v3, :cond_0

    .line 53
    invoke-virtual {v3}, Lcom/taobao/weex/ui/component/WXComponent;->removeAllEvent()V

    .line 54
    invoke-virtual {v3}, Lcom/taobao/weex/ui/component/WXComponent;->removeStickyStyle()V

    .line 56
    :cond_0
    instance-of v4, p1, Lcom/taobao/weex/ui/component/WXVContainer;

    if-eqz v4, :cond_1

    move-object v0, p1

    .line 57
    check-cast v0, Lcom/taobao/weex/ui/component/WXVContainer;

    .line 58
    .local v0, "container":Lcom/taobao/weex/ui/component/WXVContainer;
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXVContainer;->childCount()I

    move-result v1

    .line 59
    .local v1, "count":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 60
    invoke-virtual {v0, v2}, Lcom/taobao/weex/ui/component/WXVContainer;->getChild(I)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/taobao/weex/ui/action/GraphicActionRemoveElement;->clearRegistryForComponent(Lcom/taobao/weex/ui/component/WXComponent;)V

    .line 59
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 63
    .end local v0    # "container":Lcom/taobao/weex/ui/component/WXVContainer;
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method public executeAction()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 34
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/taobao/weex/ui/action/GraphicActionRemoveElement;->getPageId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/taobao/weex/ui/action/GraphicActionRemoveElement;->getRef()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/taobao/weex/ui/WXRenderManager;->getWXComponent(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    .line 35
    .local v0, "component":Lcom/taobao/weex/ui/component/WXComponent;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v3

    if-nez v3, :cond_1

    .line 48
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    invoke-direct {p0, v0}, Lcom/taobao/weex/ui/action/GraphicActionRemoveElement;->clearRegistryForComponent(Lcom/taobao/weex/ui/component/WXComponent;)V

    .line 39
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v2

    .line 41
    .local v2, "parent":Lcom/taobao/weex/ui/component/WXVContainer;
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "mComponentType"

    const-string/jumbo v5, "video"

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "mComponentType"

    const-string/jumbo v5, "videoplus"

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 42
    const/4 v3, 0x2

    new-array v1, v3, [I

    .line 43
    .local v1, "location":[I
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 44
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v5

    aget v3, v1, v4

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v6

    invoke-virtual {v6}, Lcom/taobao/weex/WXSDKInstance;->getWeexHeight()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    if-le v3, v6, :cond_3

    move v3, v4

    :goto_1
    invoke-virtual {v5, v2, v3}, Lcom/taobao/weex/WXSDKInstance;->onChangeElement(Lcom/taobao/weex/ui/component/WXComponent;Z)V

    .line 47
    .end local v1    # "location":[I
    :cond_2
    invoke-virtual {v2, v0, v4}, Lcom/taobao/weex/ui/component/WXVContainer;->remove(Lcom/taobao/weex/ui/component/WXComponent;Z)V

    goto :goto_0

    .line 44
    .restart local v1    # "location":[I
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method
