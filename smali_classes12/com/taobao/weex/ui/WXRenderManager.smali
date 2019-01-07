.class public Lcom/taobao/weex/ui/WXRenderManager;
.super Ljava/lang/Object;
.source "WXRenderManager.java"


# instance fields
.field private volatile mRenderContext:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/ui/RenderContextImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mWXRenderHandler:Lcom/taobao/weex/ui/WXRenderHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/WXRenderManager;->mRenderContext:Ljava/util/concurrent/ConcurrentHashMap;

    .line 50
    new-instance v0, Lcom/taobao/weex/ui/WXRenderHandler;

    invoke-direct {v0}, Lcom/taobao/weex/ui/WXRenderHandler;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/WXRenderManager;->mWXRenderHandler:Lcom/taobao/weex/ui/WXRenderHandler;

    .line 51
    return-void
.end method


# virtual methods
.method public getAllInstances()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/taobao/weex/WXSDKInstance;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 129
    const/4 v1, 0x0

    .line 130
    .local v1, "instances":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/taobao/weex/WXSDKInstance;>;"
    iget-object v3, p0, Lcom/taobao/weex/ui/WXRenderManager;->mRenderContext:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/taobao/weex/ui/WXRenderManager;->mRenderContext:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 131
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "instances":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/taobao/weex/WXSDKInstance;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 132
    .restart local v1    # "instances":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/taobao/weex/WXSDKInstance;>;"
    iget-object v3, p0, Lcom/taobao/weex/ui/WXRenderManager;->mRenderContext:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 133
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/weex/ui/RenderContextImpl;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/ui/RenderContextImpl;

    .line 134
    .local v2, "renderStatement":Lcom/taobao/weex/ui/RenderContextImpl;
    if-eqz v2, :cond_0

    .line 135
    invoke-virtual {v2}, Lcom/taobao/weex/ui/RenderContextImpl;->getWXSDKInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 139
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/weex/ui/RenderContextImpl;>;"
    .end local v2    # "renderStatement":Lcom/taobao/weex/ui/RenderContextImpl;
    :cond_1
    return-object v1
.end method

.method public getRenderContext(Ljava/lang/String;)Lcom/taobao/weex/dom/RenderContext;
    .locals 1
    .param p1, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/taobao/weex/ui/WXRenderManager;->mRenderContext:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/dom/RenderContext;

    return-object v0
.end method

.method public getWXComponent(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;
    .locals 3
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 59
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 63
    :cond_0
    :goto_0
    return-object v1

    .line 62
    :cond_1
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/WXRenderManager;->getRenderContext(Ljava/lang/String;)Lcom/taobao/weex/dom/RenderContext;

    move-result-object v0

    .line 63
    .local v0, "stmt":Lcom/taobao/weex/dom/RenderContext;
    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Lcom/taobao/weex/dom/RenderContext;->getComponent(Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v1

    goto :goto_0
.end method

.method public getWXSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;
    .locals 2
    .param p1, "instanceId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 67
    iget-object v1, p0, Lcom/taobao/weex/ui/WXRenderManager;->mRenderContext:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/RenderContextImpl;

    .line 68
    .local v0, "statement":Lcom/taobao/weex/ui/RenderContextImpl;
    if-nez v0, :cond_0

    .line 69
    const/4 v1, 0x0

    .line 71
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/taobao/weex/ui/RenderContextImpl;->getWXSDKInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    goto :goto_0
.end method

.method public postGraphicAction(Ljava/lang/String;Lcom/taobao/weex/ui/action/BasicGraphicAction;)V
    .locals 2
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "action"    # Lcom/taobao/weex/ui/action/BasicGraphicAction;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 117
    iget-object v1, p0, Lcom/taobao/weex/ui/WXRenderManager;->mRenderContext:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/RenderContextImpl;

    .line 118
    .local v0, "renderContext":Lcom/taobao/weex/ui/RenderContextImpl;
    if-nez v0, :cond_0

    .line 122
    :goto_0
    return-void

    .line 121
    :cond_0
    iget-object v1, p0, Lcom/taobao/weex/ui/WXRenderManager;->mWXRenderHandler:Lcom/taobao/weex/ui/WXRenderHandler;

    invoke-virtual {v1, p1, p2}, Lcom/taobao/weex/ui/WXRenderHandler;->post(Ljava/lang/String;Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public postOnUiThread(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 86
    iget-object v0, p0, Lcom/taobao/weex/ui/WXRenderManager;->mWXRenderHandler:Lcom/taobao/weex/ui/WXRenderHandler;

    invoke-static {p1}, Lcom/taobao/weex/common/WXThread;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/WXRenderHandler;->post(Ljava/lang/Runnable;)Z

    .line 87
    return-void
.end method

.method public postOnUiThread(Ljava/lang/Runnable;J)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "delayMillis"    # J
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/taobao/weex/ui/WXRenderManager;->mWXRenderHandler:Lcom/taobao/weex/ui/WXRenderHandler;

    invoke-static {p1}, Lcom/taobao/weex/common/WXThread;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/taobao/weex/ui/WXRenderHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 77
    return-void
.end method

.method public postOnUiThread(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "instanceId"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 81
    iget-object v0, p0, Lcom/taobao/weex/ui/WXRenderManager;->mWXRenderHandler:Lcom/taobao/weex/ui/WXRenderHandler;

    invoke-static {p1}, Lcom/taobao/weex/common/WXThread;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/taobao/weex/ui/WXRenderHandler;->post(Ljava/lang/String;Ljava/lang/Runnable;)Z

    .line 82
    return-void
.end method

.method public registerComponent(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/ui/component/WXComponent;)V
    .locals 2
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/lang/String;
    .param p3, "comp"    # Lcom/taobao/weex/ui/component/WXComponent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 143
    iget-object v1, p0, Lcom/taobao/weex/ui/WXRenderManager;->mRenderContext:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/RenderContextImpl;

    .line 144
    .local v0, "statement":Lcom/taobao/weex/ui/RenderContextImpl;
    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {v0, p2, p3}, Lcom/taobao/weex/ui/RenderContextImpl;->registerComponent(Ljava/lang/String;Lcom/taobao/weex/ui/component/WXComponent;)V

    .line 147
    :cond_0
    return-void
.end method

.method public registerInstance(Lcom/taobao/weex/WXSDKInstance;)V
    .locals 3
    .param p1, "instance"    # Lcom/taobao/weex/WXSDKInstance;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 125
    iget-object v0, p0, Lcom/taobao/weex/ui/WXRenderManager;->mRenderContext:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/taobao/weex/ui/RenderContextImpl;

    invoke-direct {v2, p1}, Lcom/taobao/weex/ui/RenderContextImpl;-><init>(Lcom/taobao/weex/WXSDKInstance;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    return-void
.end method

.method public removeRenderStatement(Ljava/lang/String;)V
    .locals 3
    .param p1, "instanceId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 100
    invoke-static {}, Lcom/taobao/weex/utils/WXUtils;->isUiThread()Z

    move-result v1

    if-nez v1, :cond_0

    .line 101
    new-instance v1, Lcom/taobao/weex/common/WXRuntimeException;

    const-string/jumbo v2, "[WXRenderManager] removeRenderStatement can only be called in main thread"

    invoke-direct {v1, v2}, Lcom/taobao/weex/common/WXRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 103
    :cond_0
    iget-object v1, p0, Lcom/taobao/weex/ui/WXRenderManager;->mRenderContext:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/RenderContextImpl;

    .line 105
    .local v0, "statement":Lcom/taobao/weex/ui/RenderContextImpl;
    if-eqz v0, :cond_1

    .line 106
    invoke-virtual {v0}, Lcom/taobao/weex/ui/RenderContextImpl;->destroy()V

    .line 108
    :cond_1
    if-nez p1, :cond_2

    .line 109
    iget-object v1, p0, Lcom/taobao/weex/ui/WXRenderManager;->mWXRenderHandler:Lcom/taobao/weex/ui/WXRenderHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/taobao/weex/ui/WXRenderHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 114
    :goto_0
    return-void

    .line 112
    :cond_2
    iget-object v1, p0, Lcom/taobao/weex/ui/WXRenderManager;->mWXRenderHandler:Lcom/taobao/weex/ui/WXRenderHandler;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/taobao/weex/ui/WXRenderHandler;->removeMessages(I)V

    goto :goto_0
.end method

.method public removeTask(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/taobao/weex/ui/WXRenderManager;->mWXRenderHandler:Lcom/taobao/weex/ui/WXRenderHandler;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/WXRenderHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 92
    return-void
.end method

.method public unregisterComponent(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;
    .locals 2
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 150
    iget-object v1, p0, Lcom/taobao/weex/ui/WXRenderManager;->mRenderContext:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/RenderContextImpl;

    .line 151
    .local v0, "statement":Lcom/taobao/weex/ui/RenderContextImpl;
    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {v0, p2}, Lcom/taobao/weex/ui/RenderContextImpl;->unregisterComponent(Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v1

    .line 154
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
