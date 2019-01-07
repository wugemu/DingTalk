.class public Lcom/alibaba/lightapp/runtime/weex/extend/module/DDMtopModule;
.super Lcom/taobao/weex/common/WXModule;
.source "DDMtopModule.java"

# interfaces
.implements Lcom/taobao/weex/common/Destroyable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/taobao/weex/common/WXModule;-><init>()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .prologue
    .line 90
    return-void
.end method

.method public request(Lcom/alibaba/fastjson/JSONObject;Lcom/taobao/weex/bridge/JSCallback;Lcom/taobao/weex/bridge/JSCallback;)V
    .locals 1
    .param p1, "params"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "success"    # Lcom/taobao/weex/bridge/JSCallback;
    .param p3, "failure"    # Lcom/taobao/weex/bridge/JSCallback;
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .prologue
    .line 82
    if-eqz p1, :cond_0

    .line 83
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/alibaba/lightapp/runtime/weex/extend/module/DDMtopModule;->send(Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)V

    .line 85
    :cond_0
    return-void
.end method

.method public send(Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)V
    .locals 5
    .param p1, "params"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/taobao/weex/bridge/JSCallback;
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 43
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v3

    sget v4, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-eq v3, v4, :cond_1

    .line 45
    :try_start_0
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/weex/extend/module/DDMtopModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v3}, Lcom/taobao/weex/WXSDKInstance;->getBundleUrl()Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, "bundleUrl":Ljava/lang/String;
    invoke-static {v1}, Lhgy;->d(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 48
    if-eqz p2, :cond_0

    .line 49
    const-string/jumbo v3, "illegal domain"

    invoke-interface {p2, v3}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .end local v1    # "bundleUrl":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v2

    .line 54
    .local v2, "t":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 59
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_1
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/weex/extend/module/DDMtopModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    instance-of v3, v3, Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/weex/extend/module/DDMtopModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    check-cast v3, Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;

    invoke-virtual {v3}, Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 60
    .local v0, "activity":Landroid/app/Activity;
    :goto_1
    new-instance v3, Lcom/alibaba/lightapp/runtime/weex/extend/module/DDMtopModule$1;

    invoke-direct {v3, p0, p2}, Lcom/alibaba/lightapp/runtime/weex/extend/module/DDMtopModule$1;-><init>(Lcom/alibaba/lightapp/runtime/weex/extend/module/DDMtopModule;Lcom/taobao/weex/bridge/JSCallback;)V

    invoke-static {v0, p1, v3}, Lhig;->a(Landroid/app/Activity;Ljava/lang/String;Lhig$a;)V

    goto :goto_0

    .line 59
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
