.class public Lcom/taobao/windmill/rt/weex/app/WXWindmillModule;
.super Lcom/taobao/weex/WXSDKEngine$DestroyableModule;
.source "WXWindmillModule.java"

# interfaces
.implements Ljry$a;


# instance fields
.field private mOnMessageCallback:Lcom/taobao/weex/bridge/JSCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/taobao/weex/WXSDKEngine$DestroyableModule;-><init>()V

    return-void
.end method

.method private getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/taobao/windmill/rt/weex/app/WXWindmillModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/windmill/rt/weex/app/WXWindmillModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    instance-of v0, v0, Lcom/taobao/windmill/rt/weex/app/WMLSDKInstance;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/taobao/windmill/rt/weex/app/WXWindmillModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    check-cast v0, Lcom/taobao/windmill/rt/weex/app/WMLSDKInstance;

    .line 2033
    iget-object v0, v0, Lcom/taobao/windmill/rt/weex/app/WMLSDKInstance;->a:Ljava/lang/String;

    .line 45
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getClientId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/taobao/windmill/rt/weex/app/WXWindmillModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/windmill/rt/weex/app/WXWindmillModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    instance-of v0, v0, Lcom/taobao/windmill/rt/weex/app/WMLSDKInstance;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/taobao/windmill/rt/weex/app/WXWindmillModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    check-cast v0, Lcom/taobao/windmill/rt/weex/app/WMLSDKInstance;

    .line 2037
    iget-object v0, v0, Lcom/taobao/windmill/rt/weex/app/WMLSDKInstance;->b:Ljava/lang/String;

    .line 52
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 36
    iget-object v0, p0, Lcom/taobao/windmill/rt/weex/app/WXWindmillModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/windmill/rt/weex/app/WXWindmillModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    instance-of v0, v0, Lcom/taobao/windmill/rt/weex/app/WMLSDKInstance;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/taobao/windmill/rt/weex/app/WXWindmillModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    check-cast v0, Lcom/taobao/windmill/rt/weex/app/WMLSDKInstance;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/taobao/windmill/rt/weex/app/WMLSDKInstance;->a(Ljry$a;)V

    .line 39
    :cond_0
    return-void
.end method

.method public onMessage(Ljava/lang/Object;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 57
    iget-object v0, p0, Lcom/taobao/windmill/rt/weex/app/WXWindmillModule;->mOnMessageCallback:Lcom/taobao/weex/bridge/JSCallback;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/taobao/windmill/rt/weex/app/WXWindmillModule;->mOnMessageCallback:Lcom/taobao/weex/bridge/JSCallback;

    invoke-interface {v0, p1}, Lcom/taobao/weex/bridge/JSCallback;->invokeAndKeepAlive(Ljava/lang/Object;)V

    .line 60
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onMessage ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/taobao/windmill/rt/weex/app/WXWindmillModule;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/taobao/windmill/rt/weex/app/WXWindmillModule;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    return-void
.end method

.method public onmessage(Lcom/taobao/weex/bridge/JSCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/taobao/weex/bridge/JSCallback;
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 27
    iput-object p1, p0, Lcom/taobao/windmill/rt/weex/app/WXWindmillModule;->mOnMessageCallback:Lcom/taobao/weex/bridge/JSCallback;

    .line 28
    iget-object v0, p0, Lcom/taobao/windmill/rt/weex/app/WXWindmillModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/windmill/rt/weex/app/WXWindmillModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    instance-of v0, v0, Lcom/taobao/windmill/rt/weex/app/WMLSDKInstance;

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/taobao/windmill/rt/weex/app/WXWindmillModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    check-cast v0, Lcom/taobao/windmill/rt/weex/app/WMLSDKInstance;

    invoke-virtual {v0, p0}, Lcom/taobao/windmill/rt/weex/app/WMLSDKInstance;->a(Ljry$a;)V

    .line 31
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "register onMessage callback ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/taobao/windmill/rt/weex/app/WXWindmillModule;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/taobao/windmill/rt/weex/app/WXWindmillModule;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    return-void
.end method

.method public postMessage(Ljava/util/Map;)V
    .locals 9
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 20
    .local p1, "message":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v0, "origin"

    invoke-direct {p0}, Lcom/taobao/windmill/rt/weex/app/WXWindmillModule;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    invoke-static {}, Ljpl;->a()Ljpl;

    move-result-object v0

    invoke-direct {p0}, Lcom/taobao/windmill/rt/weex/app/WXWindmillModule;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/taobao/windmill/rt/weex/app/WXWindmillModule;->getClientId()Ljava/lang/String;

    move-result-object v2

    .line 1152
    const-string/jumbo v3, "onmessage"

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/taobao/weex/bridge/WXJSObject;

    const/4 v5, 0x0

    new-instance v6, Lcom/taobao/weex/bridge/WXJSObject;

    const/4 v7, 0x3

    .line 1154
    invoke-static {p1}, Lcom/taobao/weex/utils/WXJsonUtils;->fromObjectToJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/taobao/weex/bridge/WXJSObject;-><init>(ILjava/lang/Object;)V

    aput-object v6, v4, v5

    const/4 v5, 0x0

    .line 1152
    invoke-virtual {v0, v1, v3, v4, v5}, Ljpl;->a(Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;Ljpl$a;)V

    .line 1156
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onMessage: ["

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "] with data "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "postMessage ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/taobao/windmill/rt/weex/app/WXWindmillModule;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/taobao/windmill/rt/weex/app/WXWindmillModule;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    return-void
.end method
