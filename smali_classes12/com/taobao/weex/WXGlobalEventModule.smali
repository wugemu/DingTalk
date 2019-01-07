.class public Lcom/taobao/weex/WXGlobalEventModule;
.super Lcom/taobao/weex/common/WXModule;
.source "WXGlobalEventModule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/taobao/weex/common/WXModule;-><init>()V

    return-void
.end method


# virtual methods
.method public addEventListener(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "callback"    # Ljava/lang/String;
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/taobao/weex/WXGlobalEventModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0, p1, p2}, Lcom/taobao/weex/WXSDKInstance;->addEventListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public addEventListener(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "callback"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p3, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-super {p0, p1, p2, p3}, Lcom/taobao/weex/common/WXModule;->addEventListener(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 50
    invoke-virtual {p0, p1, p2}, Lcom/taobao/weex/WXGlobalEventModule;->addEventListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public removeEventListener(Ljava/lang/String;)V
    .locals 1
    .param p1, "eventName"    # Ljava/lang/String;
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/taobao/weex/WXGlobalEventModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/WXSDKInstance;->removeEventListener(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public removeEventListener(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "callback"    # Ljava/lang/String;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/taobao/weex/WXGlobalEventModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0, p1, p2}, Lcom/taobao/weex/WXSDKInstance;->removeEventListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return-void
.end method
