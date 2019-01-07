.class public final Llx;
.super Llo$a;
.source "ParcelableFutureResponse.java"


# instance fields
.field a:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Llk;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<",
            "Llk;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p1, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Llk;>;"
    invoke-direct {p0}, Llo$a;-><init>()V

    .line 19
    iput-object p1, p0, Llx;->a:Ljava/util/concurrent/Future;

    .line 20
    return-void
.end method


# virtual methods
.method public final a(J)Lanetwork/channel/aidl/NetworkResponse;
    .locals 7
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v5, -0xc9

    .line 52
    iget-object v1, p0, Llx;->a:Ljava/util/concurrent/Future;

    if-nez v1, :cond_0

    .line 56
    new-instance v1, Lanetwork/channel/aidl/NetworkResponse;

    invoke-direct {v1, v5}, Lanetwork/channel/aidl/NetworkResponse;-><init>(I)V

    .line 65
    :goto_0
    return-object v1

    .line 60
    :cond_0
    :try_start_0
    iget-object v1, p0, Llx;->a:Ljava/util/concurrent/Future;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, p1, p2, v2}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanetwork/channel/aidl/NetworkResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "NO SUPPORT"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 63
    const-string/jumbo v1, "ANet.ParcelableFutureResponse"

    const-string/jumbo v2, "[get]\u6709listener\u5c06\u4e0d\u652f\u6301future.get()\u65b9\u6cd5\uff0c\u5982\u6709\u9700\u8981\u8bf7listener\u4f20\u5165null"

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v0, v4}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 65
    :cond_1
    new-instance v1, Lanetwork/channel/aidl/NetworkResponse;

    invoke-direct {v1, v5}, Lanetwork/channel/aidl/NetworkResponse;-><init>(I)V

    goto :goto_0
.end method

.method public final a()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Llx;->a:Ljava/util/concurrent/Future;

    if-nez v0, :cond_0

    .line 37
    const/4 v0, 0x1

    .line 39
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Llx;->a:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    goto :goto_0
.end method

.method public final a(Z)Z
    .locals 1
    .param p1, "mayInterruptIfRunning"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Llx;->a:Ljava/util/concurrent/Future;

    if-nez v0, :cond_0

    .line 29
    const/4 v0, 0x1

    .line 31
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Llx;->a:Ljava/util/concurrent/Future;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    move-result v0

    goto :goto_0
.end method

.method public final b()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Llx;->a:Ljava/util/concurrent/Future;

    if-nez v0, :cond_0

    .line 45
    const/4 v0, 0x1

    .line 47
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Llx;->a:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    goto :goto_0
.end method
