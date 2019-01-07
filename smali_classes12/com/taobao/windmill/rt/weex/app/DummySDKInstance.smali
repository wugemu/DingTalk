.class public Lcom/taobao/windmill/rt/weex/app/DummySDKInstance;
.super Lcom/taobao/windmill/rt/weex/app/WMLSDKInstance;
.source "DummySDKInstance.java"

# interfaces
.implements Ljrj;


# instance fields
.field private f:Ljsp$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/taobao/windmill/rt/weex/app/WMLSDKInstance;-><init>(Landroid/content/Context;)V

    .line 18
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "clientId"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-super {p0, p1, p2}, Lcom/taobao/windmill/rt/weex/app/WMLSDKInstance;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/taobao/weex/ui/WXRenderManager;->registerInstance(Lcom/taobao/weex/WXSDKInstance;)V

    .line 29
    return-void
.end method

.method public final a(Ljsp$a;)V
    .locals 0
    .param p1, "listener"    # Ljsp$a;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/taobao/windmill/rt/weex/app/DummySDKInstance;->f:Ljsp$a;

    .line 34
    return-void
.end method

.method public declared-synchronized destroy()V
    .locals 1

    .prologue
    .line 64
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/taobao/windmill/rt/weex/app/DummySDKInstance;->f:Ljsp$a;

    .line 65
    invoke-super {p0}, Lcom/taobao/windmill/rt/weex/app/WMLSDKInstance;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    monitor-exit p0

    return-void

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public fireGlobalEventCallback(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "eventName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-super {p0, p1, p2}, Lcom/taobao/windmill/rt/weex/app/WMLSDKInstance;->fireGlobalEventCallback(Ljava/lang/String;Ljava/util/Map;)V

    .line 60
    return-void
.end method

.method public getInstanceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    .line 1033
    iget-object v0, p0, Lcom/taobao/windmill/rt/weex/app/WMLSDKInstance;->a:Ljava/lang/String;

    .line 22
    return-object v0
.end method

.method public getRootView()Landroid/view/View;
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return-object v0
.end method

.method public onJSException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "errCode"    # Ljava/lang/String;
    .param p2, "function"    # Ljava/lang/String;
    .param p3, "exception"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 38
    const-string/jumbo v0, "DummySDKInstance"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "JS Exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iget-object v0, p0, Lcom/taobao/windmill/rt/weex/app/DummySDKInstance;->f:Ljsp$a;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/taobao/windmill/rt/weex/app/DummySDKInstance;->f:Ljsp$a;

    invoke-interface {v0, p1, p2, p3}, Ljsp$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    :cond_0
    return-void
.end method

.method public onRenderError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "errCode"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 46
    const-string/jumbo v0, "DummySDKInstance"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "JS Error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object v0, p0, Lcom/taobao/windmill/rt/weex/app/DummySDKInstance;->f:Ljsp$a;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/taobao/windmill/rt/weex/app/DummySDKInstance;->f:Ljsp$a;

    invoke-interface {v0, p1, p2}, Ljsp$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :cond_0
    return-void
.end method
