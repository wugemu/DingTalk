.class public Lcom/taobao/weex/ui/action/GraphicActionRefreshFinish;
.super Lcom/taobao/weex/ui/action/BasicGraphicAction;
.source "GraphicActionRefreshFinish.java"


# instance fields
.field private mLayoutHeight:I

.field private mLayoutWidth:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "pageId"    # Ljava/lang/String;

    .prologue
    .line 34
    const-string/jumbo v2, ""

    invoke-direct {p0, p1, v2}, Lcom/taobao/weex/ui/action/BasicGraphicAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/taobao/weex/ui/WXRenderManager;->getWXSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    .line 36
    .local v1, "instance":Lcom/taobao/weex/WXSDKInstance;
    if-nez v1, :cond_1

    .line 44
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getRootComponent()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    .line 40
    .local v0, "component":Lcom/taobao/weex/ui/component/WXComponent;
    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutWidth()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/taobao/weex/ui/action/GraphicActionRefreshFinish;->mLayoutWidth:I

    .line 42
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutHeight()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/taobao/weex/ui/action/GraphicActionRefreshFinish;->mLayoutHeight:I

    goto :goto_0
.end method


# virtual methods
.method public executeAction()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 48
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/action/GraphicActionRefreshFinish;->getPageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/taobao/weex/ui/WXRenderManager;->getWXSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    .line 49
    .local v0, "instance":Lcom/taobao/weex/WXSDKInstance;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_1

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    iget v1, p0, Lcom/taobao/weex/ui/action/GraphicActionRefreshFinish;->mLayoutWidth:I

    iget v2, p0, Lcom/taobao/weex/ui/action/GraphicActionRefreshFinish;->mLayoutHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/taobao/weex/WXSDKInstance;->onRefreshSuccess(II)V

    goto :goto_0
.end method
