.class public Lcom/alibaba/lightapp/runtime/weex/extend/component/DDRimetWXWeb;
.super Lcom/taobao/weex/ui/component/WXWeb;
.source "DDRimetWXWeb.java"


# annotations
.annotation runtime Lcom/taobao/weex/annotation/Component;
    lazyload = false
.end annotation


# direct methods
.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Ljava/lang/String;ZLcom/taobao/weex/ui/action/BasicComponentData;)V
    .locals 0
    .param p1, "instance"    # Lcom/taobao/weex/WXSDKInstance;
    .param p2, "parent"    # Lcom/taobao/weex/ui/component/WXVContainer;
    .param p3, "instanceId"    # Ljava/lang/String;
    .param p4, "isLazy"    # Z
    .param p5, "basicComponentData"    # Lcom/taobao/weex/ui/action/BasicComponentData;

    .prologue
    .line 22
    invoke-direct/range {p0 .. p5}, Lcom/taobao/weex/ui/component/WXWeb;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Ljava/lang/String;ZLcom/taobao/weex/ui/action/BasicComponentData;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ZLcom/taobao/weex/ui/action/BasicComponentData;)V
    .locals 0
    .param p1, "instance"    # Lcom/taobao/weex/WXSDKInstance;
    .param p2, "parent"    # Lcom/taobao/weex/ui/component/WXVContainer;
    .param p3, "isLazy"    # Z
    .param p4, "basicComponentData"    # Lcom/taobao/weex/ui/action/BasicComponentData;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/taobao/weex/ui/component/WXWeb;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ZLcom/taobao/weex/ui/action/BasicComponentData;)V

    .line 27
    return-void
.end method


# virtual methods
.method protected createWebView()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 34
    new-instance v3, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/weex/extend/component/DDRimetWXWeb;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/alibaba/lightapp/runtime/weex/extend/component/DDRimetWXWeb;->mWebView:Lcom/taobao/weex/ui/view/IWebView;

    .line 36
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/weex/extend/component/DDRimetWXWeb;->mWebView:Lcom/taobao/weex/ui/view/IWebView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/weex/extend/component/DDRimetWXWeb;->mWebView:Lcom/taobao/weex/ui/view/IWebView;

    instance-of v3, v3, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;

    if-eqz v3, :cond_1

    .line 37
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/component/DDRimetWXWeb;->mWebView:Lcom/taobao/weex/ui/view/IWebView;

    check-cast v0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;

    .line 39
    .local v0, "ddWebView":Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/weex/extend/component/DDRimetWXWeb;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v2

    .line 40
    .local v2, "wxsdkInstance":Lcom/taobao/weex/WXSDKInstance;
    if-eqz v2, :cond_1

    .line 41
    instance-of v3, v2, Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;

    if-eqz v3, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/weex/extend/component/DDRimetWXWeb;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    check-cast v1, Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;

    .line 1088
    .local v1, "rtInstance":Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;
    iget-object v3, v1, Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;->a:Lhds;

    .line 43
    invoke-virtual {v0, v3}, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;->bindWeexPluginManager(Lcom/alibaba/lightapp/runtime/PluginManager;)V

    .line 47
    .end local v1    # "rtInstance":Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;
    :cond_0
    invoke-virtual {v0, v2}, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;->bindWXSDKInstance(Lcom/taobao/weex/WXSDKInstance;)V

    .line 50
    .end local v0    # "ddWebView":Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;
    .end local v2    # "wxsdkInstance":Lcom/taobao/weex/WXSDKInstance;
    :cond_1
    return-void
.end method

.method public goBack()V
    .locals 1
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/component/DDRimetWXWeb;->mWebView:Lcom/taobao/weex/ui/view/IWebView;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/component/DDRimetWXWeb;->mWebView:Lcom/taobao/weex/ui/view/IWebView;

    invoke-interface {v0}, Lcom/taobao/weex/ui/view/IWebView;->goBack()V

    .line 111
    :cond_0
    return-void
.end method

.method public goForward()V
    .locals 1
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/component/DDRimetWXWeb;->mWebView:Lcom/taobao/weex/ui/view/IWebView;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/component/DDRimetWXWeb;->mWebView:Lcom/taobao/weex/ui/view/IWebView;

    invoke-interface {v0}, Lcom/taobao/weex/ui/view/IWebView;->goForward()V

    .line 119
    :cond_0
    return-void
.end method

.method public onActivityBack()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 97
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/extend/component/DDRimetWXWeb;->mWebView:Lcom/taobao/weex/ui/view/IWebView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/extend/component/DDRimetWXWeb;->mWebView:Lcom/taobao/weex/ui/view/IWebView;

    instance-of v1, v1, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;

    if-eqz v1, :cond_0

    .line 98
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/component/DDRimetWXWeb;->mWebView:Lcom/taobao/weex/ui/view/IWebView;

    check-cast v0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;

    .line 100
    .local v0, "ddWebView":Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;
    const-string/jumbo v1, "goBack"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;->dispatchEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 101
    const-string/jumbo v1, "backbutton"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;->dispatchEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 103
    .end local v0    # "ddWebView":Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;
    :cond_0
    invoke-super {p0}, Lcom/taobao/weex/ui/component/WXWeb;->onActivityBack()Z

    move-result v1

    return v1
.end method

.method public onActivityDestroy()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/component/DDRimetWXWeb;->mWebView:Lcom/taobao/weex/ui/view/IWebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/component/DDRimetWXWeb;->mWebView:Lcom/taobao/weex/ui/view/IWebView;

    instance-of v0, v0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/component/DDRimetWXWeb;->mWebView:Lcom/taobao/weex/ui/view/IWebView;

    check-cast v0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;->onActivityDestroy()V

    .line 61
    :cond_0
    invoke-super {p0}, Lcom/taobao/weex/ui/component/WXWeb;->onActivityDestroy()V

    .line 62
    return-void
.end method

.method public onActivityPause()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/component/DDRimetWXWeb;->mWebView:Lcom/taobao/weex/ui/view/IWebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/component/DDRimetWXWeb;->mWebView:Lcom/taobao/weex/ui/view/IWebView;

    instance-of v0, v0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/component/DDRimetWXWeb;->mWebView:Lcom/taobao/weex/ui/view/IWebView;

    check-cast v0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;->onActivityPause()V

    .line 79
    :cond_0
    invoke-super {p0}, Lcom/taobao/weex/ui/component/WXWeb;->onActivityPause()V

    .line 80
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 84
    invoke-super {p0, p1, p2, p3}, Lcom/taobao/weex/ui/component/WXWeb;->onActivityResult(IILandroid/content/Intent;)V

    .line 86
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/component/DDRimetWXWeb;->mWebView:Lcom/taobao/weex/ui/view/IWebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/component/DDRimetWXWeb;->mWebView:Lcom/taobao/weex/ui/view/IWebView;

    instance-of v0, v0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/component/DDRimetWXWeb;->mWebView:Lcom/taobao/weex/ui/view/IWebView;

    check-cast v0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;->onActivityResult(IILandroid/content/Intent;)V

    .line 89
    :cond_0
    return-void
.end method

.method public onActivityResume()V
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Lcom/taobao/weex/ui/component/WXWeb;->onActivityResume()V

    .line 68
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/component/DDRimetWXWeb;->mWebView:Lcom/taobao/weex/ui/view/IWebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/component/DDRimetWXWeb;->mWebView:Lcom/taobao/weex/ui/view/IWebView;

    instance-of v0, v0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/component/DDRimetWXWeb;->mWebView:Lcom/taobao/weex/ui/view/IWebView;

    check-cast v0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;->onActivityResume()V

    .line 71
    :cond_0
    return-void
.end method

.method public reload()V
    .locals 1
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/component/DDRimetWXWeb;->mWebView:Lcom/taobao/weex/ui/view/IWebView;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/component/DDRimetWXWeb;->mWebView:Lcom/taobao/weex/ui/view/IWebView;

    invoke-interface {v0}, Lcom/taobao/weex/ui/view/IWebView;->reload()V

    .line 127
    :cond_0
    return-void
.end method
