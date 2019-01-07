.class public abstract Lcom/alibaba/doraemon/threadpool/ProgressCallable;
.super Ljava/lang/Object;
.source "ProgressCallable.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Handler$Callback;",
        "Ljava/util/concurrent/Callable",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private mProgressCallback:Landroid/os/Handler$Callback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    .local p0, "this":Lcom/alibaba/doraemon/threadpool/ProgressCallable;, "Lcom/alibaba/doraemon/threadpool/ProgressCallable<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lcom/alibaba/doraemon/threadpool/ProgressCallable$1;

    invoke-direct {v0, p0}, Lcom/alibaba/doraemon/threadpool/ProgressCallable$1;-><init>(Lcom/alibaba/doraemon/threadpool/ProgressCallable;)V

    iput-object v0, p0, Lcom/alibaba/doraemon/threadpool/ProgressCallable;->mProgressCallback:Landroid/os/Handler$Callback;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 54
    .local p0, "this":Lcom/alibaba/doraemon/threadpool/ProgressCallable;, "Lcom/alibaba/doraemon/threadpool/ProgressCallable<TV;>;"
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/alibaba/doraemon/threadpool/ProgressCallable;->onResult(Ljava/lang/Object;)V

    .line 55
    const/4 v0, 0x1

    return v0
.end method

.method public abstract onProgress(ILjava/lang/Object;)V
.end method

.method public abstract onResult(Ljava/lang/Object;)V
.end method

.method protected final publishProgress(ILjava/lang/Object;)V
    .locals 4
    .param p1, "progress"    # I
    .param p2, "value"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 27
    .local p0, "this":Lcom/alibaba/doraemon/threadpool/ProgressCallable;, "Lcom/alibaba/doraemon/threadpool/ProgressCallable<TV;>;"
    if-eqz p2, :cond_0

    iget-object v2, p0, Lcom/alibaba/doraemon/threadpool/ProgressCallable;->mProgressCallback:Landroid/os/Handler$Callback;

    if-nez v2, :cond_1

    .line 36
    :cond_0
    :goto_0
    return-void

    .line 31
    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/doraemon/threadpool/ProgressCallable;->mProgressCallback:Landroid/os/Handler$Callback;

    invoke-direct {v0, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 32
    .local v0, "mainThreadHandler":Landroid/os/Handler;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 33
    .local v1, "message":Landroid/os/Message;
    iput-object p2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 34
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 35
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
