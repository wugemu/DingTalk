.class public Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;
.super Ljava/lang/Object;
.source "BluetoothFuture.java"

# interfaces
.implements Ljava/util/concurrent/Future;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/doraemon/bluetooth/BluetoothFuture$FutureListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private mFutureListener:Lcom/alibaba/doraemon/bluetooth/BluetoothFuture$FutureListener;

.field private mHandler:Landroid/os/Handler;

.field private mIsRet:Z

.field private mIsTimeout:Z

.field private mResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .local p0, "this":Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;, "Lcom/alibaba/doraemon/bluetooth/BluetoothFuture<TV;>;"
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-boolean v0, p0, Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;->mIsTimeout:Z

    .line 19
    iput-boolean v0, p0, Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;->mIsRet:Z

    .line 23
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;->mHandler:Landroid/os/Handler;

    .line 24
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;->mResult:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;

    .prologue
    .line 15
    iget-boolean v0, p0, Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;->mIsTimeout:Z

    return v0
.end method

.method static synthetic access$200(Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;)Lcom/alibaba/doraemon/bluetooth/BluetoothFuture$FutureListener;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;->mFutureListener:Lcom/alibaba/doraemon/bluetooth/BluetoothFuture$FutureListener;

    return-object v0
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 1
    .param p1, "mayInterruptIfRunning"    # Z

    .prologue
    .line 46
    .local p0, "this":Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;, "Lcom/alibaba/doraemon/bluetooth/BluetoothFuture<TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public get()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 90
    .local p0, "this":Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;, "Lcom/alibaba/doraemon/bluetooth/BluetoothFuture<TV;>;"
    const-wide/16 v2, 0x3e8

    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v2, v3, v1}, Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 93
    :goto_0
    return-object v1

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v0}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    .line 93
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 7
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;, "Lcom/alibaba/doraemon/bluetooth/BluetoothFuture<TV;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 99
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "get wait "

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;->mResult:Ljava/lang/Object;

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 100
    iget-boolean v0, p0, Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;->mIsRet:Z

    if-nez v0, :cond_1

    .line 101
    monitor-enter p0

    .line 102
    :try_start_0
    iget-boolean v0, p0, Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;->mIsRet:Z

    if-nez v0, :cond_0

    .line 103
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 104
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "get notify "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;->mResult:Ljava/lang/Object;

    if-nez v3, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 108
    iget-object v0, p0, Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;->mResult:Ljava/lang/Object;

    return-object v0

    :cond_2
    move v0, v2

    .line 99
    goto :goto_0

    .line 104
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_3
    move v1, v2

    .line 107
    goto :goto_1
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 51
    .local p0, "this":Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;, "Lcom/alibaba/doraemon/bluetooth/BluetoothFuture<TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 56
    .local p0, "this":Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;, "Lcom/alibaba/doraemon/bluetooth/BluetoothFuture<TV;>;"
    iget-object v0, p0, Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;->mResult:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFutureListener(Lcom/alibaba/doraemon/bluetooth/BluetoothFuture$FutureListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/alibaba/doraemon/bluetooth/BluetoothFuture$FutureListener;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 27
    .local p0, "this":Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;, "Lcom/alibaba/doraemon/bluetooth/BluetoothFuture<TV;>;"
    iput-object p1, p0, Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;->mFutureListener:Lcom/alibaba/doraemon/bluetooth/BluetoothFuture$FutureListener;

    .line 28
    iget-object v0, p0, Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/doraemon/bluetooth/BluetoothFuture$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/doraemon/bluetooth/BluetoothFuture$1;-><init>(Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;Lcom/alibaba/doraemon/bluetooth/BluetoothFuture$FutureListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 42
    return-void
.end method

.method public setResult(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 61
    .local p0, "this":Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;, "Lcom/alibaba/doraemon/bluetooth/BluetoothFuture<TV;>;"
    .local p1, "v":Ljava/lang/Object;, "TV;"
    monitor-enter p0

    .line 62
    :try_start_0
    iput-object p1, p0, Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;->mResult:Ljava/lang/Object;

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;->mIsRet:Z

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setResult notify "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;->mResult:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 66
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    iget-object v0, p0, Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/doraemon/bluetooth/BluetoothFuture$2;

    invoke-direct {v1, p0}, Lcom/alibaba/doraemon/bluetooth/BluetoothFuture$2;-><init>(Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 75
    return-void

    .line 66
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public timeout()V
    .locals 1

    .prologue
    .line 78
    .local p0, "this":Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;, "Lcom/alibaba/doraemon/bluetooth/BluetoothFuture<TV;>;"
    monitor-enter p0

    .line 79
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 80
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    iget-object v0, p0, Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;->mResult:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 80
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;->mFutureListener:Lcom/alibaba/doraemon/bluetooth/BluetoothFuture$FutureListener;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;->mFutureListener:Lcom/alibaba/doraemon/bluetooth/BluetoothFuture$FutureListener;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/bluetooth/BluetoothFuture$FutureListener;->onTimeout(Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;)V

    goto :goto_0
.end method
