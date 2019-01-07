.class public Lcom/taobao/weex/ui/module/WXWebViewModule;
.super Lcom/taobao/weex/common/WXModule;
.source "WXWebViewModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/ui/module/WXWebViewModule$Action;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/taobao/weex/common/WXModule;-><init>()V

    .line 29
    return-void
.end method

.method private action(Lcom/taobao/weex/ui/module/WXWebViewModule$Action;Ljava/lang/String;)V
    .locals 1
    .param p1, "action"    # Lcom/taobao/weex/ui/module/WXWebViewModule$Action;
    .param p2, "ref"    # Ljava/lang/String;

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/taobao/weex/ui/module/WXWebViewModule;->action(Lcom/taobao/weex/ui/module/WXWebViewModule$Action;Ljava/lang/String;Ljava/lang/Object;)V

    .line 68
    return-void
.end method

.method private action(Lcom/taobao/weex/ui/module/WXWebViewModule$Action;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "action"    # Lcom/taobao/weex/ui/module/WXWebViewModule$Action;
    .param p2, "ref"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 58
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v1

    .line 59
    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/ui/module/WXWebViewModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    .line 60
    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/taobao/weex/ui/WXRenderManager;->getWXComponent(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    .line 61
    .local v0, "webComponent":Lcom/taobao/weex/ui/component/WXComponent;
    instance-of v1, v0, Lcom/taobao/weex/ui/component/WXWeb;

    if-eqz v1, :cond_0

    .line 62
    check-cast v0, Lcom/taobao/weex/ui/component/WXWeb;

    .end local v0    # "webComponent":Lcom/taobao/weex/ui/component/WXComponent;
    invoke-virtual {p1}, Lcom/taobao/weex/ui/module/WXWebViewModule$Action;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lcom/taobao/weex/ui/component/WXWeb;->setAction(Ljava/lang/String;Ljava/lang/Object;)V

    .line 64
    :cond_0
    return-void
.end method


# virtual methods
.method public goBack(Ljava/lang/String;)V
    .locals 1
    .param p1, "ref"    # Ljava/lang/String;
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = true
    .end annotation

    .prologue
    .line 38
    sget-object v0, Lcom/taobao/weex/ui/module/WXWebViewModule$Action;->goBack:Lcom/taobao/weex/ui/module/WXWebViewModule$Action;

    invoke-direct {p0, v0, p1}, Lcom/taobao/weex/ui/module/WXWebViewModule;->action(Lcom/taobao/weex/ui/module/WXWebViewModule$Action;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public goForward(Ljava/lang/String;)V
    .locals 1
    .param p1, "ref"    # Ljava/lang/String;
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = true
    .end annotation

    .prologue
    .line 43
    sget-object v0, Lcom/taobao/weex/ui/module/WXWebViewModule$Action;->goForward:Lcom/taobao/weex/ui/module/WXWebViewModule$Action;

    invoke-direct {p0, v0, p1}, Lcom/taobao/weex/ui/module/WXWebViewModule;->action(Lcom/taobao/weex/ui/module/WXWebViewModule$Action;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public postMessage(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "ref"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/Object;
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = true
    .end annotation

    .prologue
    .line 53
    sget-object v0, Lcom/taobao/weex/ui/module/WXWebViewModule$Action;->postMessage:Lcom/taobao/weex/ui/module/WXWebViewModule$Action;

    invoke-direct {p0, v0, p1, p2}, Lcom/taobao/weex/ui/module/WXWebViewModule;->action(Lcom/taobao/weex/ui/module/WXWebViewModule$Action;Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    return-void
.end method

.method public reload(Ljava/lang/String;)V
    .locals 1
    .param p1, "ref"    # Ljava/lang/String;
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = true
    .end annotation

    .prologue
    .line 48
    sget-object v0, Lcom/taobao/weex/ui/module/WXWebViewModule$Action;->reload:Lcom/taobao/weex/ui/module/WXWebViewModule$Action;

    invoke-direct {p0, v0, p1}, Lcom/taobao/weex/ui/module/WXWebViewModule;->action(Lcom/taobao/weex/ui/module/WXWebViewModule$Action;Ljava/lang/String;)V

    .line 49
    return-void
.end method
