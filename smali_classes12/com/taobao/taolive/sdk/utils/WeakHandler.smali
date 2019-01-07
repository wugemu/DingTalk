.class public Lcom/taobao/taolive/sdk/utils/WeakHandler;
.super Landroid/os/Handler;
.source "WeakHandler.java"


# instance fields
.field private mHandler:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/taobao/taolive/sdk/utils/IHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/taobao/taolive/sdk/utils/IHandler;)V
    .locals 1
    .param p1, "handler"    # Lcom/taobao/taolive/sdk/utils/IHandler;

    .prologue
    .line 14
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 15
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/taobao/taolive/sdk/utils/WeakHandler;->mHandler:Ljava/lang/ref/WeakReference;

    .line 16
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 20
    iget-object v1, p0, Lcom/taobao/taolive/sdk/utils/WeakHandler;->mHandler:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 21
    iget-object v1, p0, Lcom/taobao/taolive/sdk/utils/WeakHandler;->mHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/taolive/sdk/utils/IHandler;

    .line 22
    .local v0, "handler":Lcom/taobao/taolive/sdk/utils/IHandler;
    if-eqz v0, :cond_0

    .line 23
    invoke-interface {v0, p1}, Lcom/taobao/taolive/sdk/utils/IHandler;->handleMessage(Landroid/os/Message;)V

    .line 26
    .end local v0    # "handler":Lcom/taobao/taolive/sdk/utils/IHandler;
    :cond_0
    return-void
.end method
