.class public Lcom/taobao/weex/ui/action/ActionGetComponentRect;
.super Lcom/taobao/weex/ui/action/BasicGraphicAction;
.source "ActionGetComponentRect.java"


# instance fields
.field private final mCallback:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "pageId"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/lang/String;
    .param p3, "callback"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/ui/action/BasicGraphicAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iput-object p3, p0, Lcom/taobao/weex/ui/action/ActionGetComponentRect;->mCallback:Ljava/lang/String;

    .line 46
    return-void
.end method

.method private callbackViewport(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/bridge/JSCallback;)V
    .locals 8
    .param p1, "instance"    # Lcom/taobao/weex/WXSDKInstance;
    .param p2, "jsCallback"    # Lcom/taobao/weex/bridge/JSCallback;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 92
    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getContainerView()Landroid/view/View;

    move-result-object v0

    .local v0, "container":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 93
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 94
    .local v2, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 95
    .local v3, "sizes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Float;>;"
    const/4 v5, 0x2

    new-array v1, v5, [I

    .line 96
    .local v1, "location":[I
    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getContainerView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 97
    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidth()I

    move-result v4

    .line 98
    .local v4, "viewport":I
    const-string/jumbo v5, "left"

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string/jumbo v5, "top"

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-string/jumbo v5, "right"

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-direct {p0, v6, v4}, Lcom/taobao/weex/ui/action/ActionGetComponentRect;->getWebPxValue(II)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string/jumbo v5, "bottom"

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-direct {p0, v6, v4}, Lcom/taobao/weex/ui/action/ActionGetComponentRect;->getWebPxValue(II)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string/jumbo v5, "width"

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-direct {p0, v6, v4}, Lcom/taobao/weex/ui/action/ActionGetComponentRect;->getWebPxValue(II)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const-string/jumbo v5, "height"

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-direct {p0, v6, v4}, Lcom/taobao/weex/ui/action/ActionGetComponentRect;->getWebPxValue(II)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string/jumbo v5, "size"

    invoke-interface {v2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string/jumbo v5, "result"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    invoke-interface {p2, v2}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    .line 113
    .end local v1    # "location":[I
    .end local v3    # "sizes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Float;>;"
    .end local v4    # "viewport":I
    :goto_0
    return-void

    .line 108
    .end local v2    # "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 109
    .restart local v2    # "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v5, "result"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string/jumbo v5, "errMsg"

    const-string/jumbo v6, "Component does not exist"

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    invoke-interface {p2, v2}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private getWebPxValue(II)F
    .locals 1
    .param p1, "value"    # I
    .param p2, "viewport"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 117
    int-to-float v0, p1

    invoke-static {v0, p2}, Lcom/taobao/weex/utils/WXViewUtils;->getWebPxByWidth(FI)F

    move-result v0

    return v0
.end method


# virtual methods
.method public executeAction()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 50
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v7

    invoke-virtual {p0}, Lcom/taobao/weex/ui/action/ActionGetComponentRect;->getPageId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/taobao/weex/ui/WXRenderManager;->getWXSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    .line 51
    .local v1, "instance":Lcom/taobao/weex/WXSDKInstance;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->isDestroy()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    new-instance v2, Lcom/taobao/weex/bridge/SimpleJSCallback;

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/taobao/weex/ui/action/ActionGetComponentRect;->mCallback:Ljava/lang/String;

    invoke-direct {v2, v7, v8}, Lcom/taobao/weex/bridge/SimpleJSCallback;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .local v2, "jsCallback":Lcom/taobao/weex/bridge/JSCallback;
    invoke-virtual {p0}, Lcom/taobao/weex/ui/action/ActionGetComponentRect;->getRef()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 58
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 59
    .local v3, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v7, "result"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string/jumbo v7, "errMsg"

    const-string/jumbo v8, "Illegal parameter"

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    invoke-interface {v2, v3}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    goto :goto_0

    .line 62
    .end local v3    # "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    const-string/jumbo v7, "viewport"

    invoke-virtual {p0}, Lcom/taobao/weex/ui/action/ActionGetComponentRect;->getRef()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 63
    invoke-direct {p0, v1, v2}, Lcom/taobao/weex/ui/action/ActionGetComponentRect;->callbackViewport(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/bridge/JSCallback;)V

    goto :goto_0

    .line 65
    :cond_3
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v7

    invoke-virtual {p0}, Lcom/taobao/weex/ui/action/ActionGetComponentRect;->getPageId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/taobao/weex/ui/action/ActionGetComponentRect;->getRef()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/taobao/weex/ui/WXRenderManager;->getWXComponent(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    .line 66
    .local v0, "component":Lcom/taobao/weex/ui/component/WXComponent;
    if-eqz v0, :cond_0

    .line 70
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 71
    .restart local v3    # "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v0, :cond_4

    .line 72
    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidth()I

    move-result v6

    .line 73
    .local v6, "viewPort":I
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 74
    .local v4, "size":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Float;>;"
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getComponentSize()Landroid/graphics/Rect;

    move-result-object v5

    .line 75
    .local v5, "sizes":Landroid/graphics/Rect;
    const-string/jumbo v7, "width"

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-direct {p0, v8, v6}, Lcom/taobao/weex/ui/action/ActionGetComponentRect;->getWebPxValue(II)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string/jumbo v7, "height"

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-direct {p0, v8, v6}, Lcom/taobao/weex/ui/action/ActionGetComponentRect;->getWebPxValue(II)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string/jumbo v7, "bottom"

    iget v8, v5, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v8, v6}, Lcom/taobao/weex/ui/action/ActionGetComponentRect;->getWebPxValue(II)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string/jumbo v7, "left"

    iget v8, v5, Landroid/graphics/Rect;->left:I

    invoke-direct {p0, v8, v6}, Lcom/taobao/weex/ui/action/ActionGetComponentRect;->getWebPxValue(II)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string/jumbo v7, "right"

    iget v8, v5, Landroid/graphics/Rect;->right:I

    invoke-direct {p0, v8, v6}, Lcom/taobao/weex/ui/action/ActionGetComponentRect;->getWebPxValue(II)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string/jumbo v7, "top"

    iget v8, v5, Landroid/graphics/Rect;->top:I

    invoke-direct {p0, v8, v6}, Lcom/taobao/weex/ui/action/ActionGetComponentRect;->getWebPxValue(II)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string/jumbo v7, "size"

    invoke-interface {v3, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string/jumbo v7, "result"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .end local v4    # "size":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Float;>;"
    .end local v5    # "sizes":Landroid/graphics/Rect;
    .end local v6    # "viewPort":I
    :goto_1
    invoke-interface {v2, v3}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 84
    :cond_4
    const-string/jumbo v7, "errMsg"

    const-string/jumbo v8, "Component does not exist"

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method
