.class public final Llkf;
.super Ljava/lang/Object;
.source "SafeCompletableSubscriber.java"

# interfaces
.implements Llgr;
.implements Llgz;


# instance fields
.field final a:Llgr;

.field b:Llgz;

.field c:Z


# direct methods
.method public constructor <init>(Llgr;)V
    .locals 0
    .param p1, "actual"    # Llgr;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Llkf;->a:Llgr;

    .line 38
    return-void
.end method


# virtual methods
.method public final isUnsubscribed()Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Llkf;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Llkf;->b:Llgz;

    invoke-interface {v0}, Llgz;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onCompleted()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 42
    iget-boolean v1, p0, Llkf;->c:Z

    if-eqz v1, :cond_0

    .line 52
    :goto_0
    return-void

    .line 45
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Llkf;->c:Z

    .line 47
    :try_start_0
    iget-object v1, p0, Llkf;->a:Llgr;

    invoke-interface {v1}, Llgr;->onCompleted()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Llhe;->a(Ljava/lang/Throwable;)V

    .line 51
    new-instance v1, Lrx/exceptions/OnCompletedFailedException;

    invoke-direct {v1, v0}, Lrx/exceptions/OnCompletedFailedException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "e"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v5, 0x1

    .line 57
    iget-boolean v1, p0, Llkf;->c:Z

    if-eqz v1, :cond_0

    .line 58
    invoke-static {p1}, Llkm;->a(Ljava/lang/Throwable;)V

    .line 68
    :goto_0
    return-void

    .line 61
    :cond_0
    iput-boolean v5, p0, Llkf;->c:Z

    .line 63
    :try_start_0
    iget-object v1, p0, Llkf;->a:Llgr;

    invoke-interface {v1, p1}, Llgr;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Llhe;->a(Ljava/lang/Throwable;)V

    .line 67
    new-instance v1, Lrx/exceptions/OnErrorFailedException;

    new-instance v2, Lrx/exceptions/CompositeException;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Throwable;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    aput-object v0, v3, v5

    invoke-direct {v2, v3}, Lrx/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-direct {v1, v2}, Lrx/exceptions/OnErrorFailedException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final onSubscribe(Llgz;)V
    .locals 2
    .param p1, "d"    # Llgz;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 73
    iput-object p1, p0, Llkf;->b:Llgz;

    .line 75
    :try_start_0
    iget-object v1, p0, Llkf;->a:Llgr;

    invoke-interface {v1, p0}, Llgr;->onSubscribe(Llgz;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_0
    return-void

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Llhe;->a(Ljava/lang/Throwable;)V

    .line 78
    invoke-interface {p1}, Llgz;->unsubscribe()V

    .line 79
    invoke-virtual {p0, v0}, Llkf;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final unsubscribe()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Llkf;->b:Llgz;

    invoke-interface {v0}, Llgz;->unsubscribe()V

    .line 86
    return-void
.end method
