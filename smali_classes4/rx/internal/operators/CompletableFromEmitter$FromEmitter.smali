.class final Lrx/internal/operators/CompletableFromEmitter$FromEmitter;
.super Ljava/util/concurrent/atomic/AtomicBoolean;
.source "CompletableFromEmitter.java"

# interfaces
.implements Llgz;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/CompletableFromEmitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FromEmitter"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4cdf8d3365236ed1L


# instance fields
.field final actual:Llgr;

.field final resource:Lrx/internal/subscriptions/SequentialSubscription;


# direct methods
.method public constructor <init>(Llgr;)V
    .locals 1
    .param p1, "actual"    # Llgr;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 63
    iput-object p1, p0, Lrx/internal/operators/CompletableFromEmitter$FromEmitter;->actual:Llgr;

    .line 64
    new-instance v0, Lrx/internal/subscriptions/SequentialSubscription;

    invoke-direct {v0}, Lrx/internal/subscriptions/SequentialSubscription;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/CompletableFromEmitter$FromEmitter;->resource:Lrx/internal/subscriptions/SequentialSubscription;

    .line 65
    return-void
.end method


# virtual methods
.method public final isUnsubscribed()Z
    .locals 1

    .prologue
    .line 110
    invoke-virtual {p0}, Lrx/internal/operators/CompletableFromEmitter$FromEmitter;->get()Z

    move-result v0

    return v0
.end method

.method public final onCompleted()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 69
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/CompletableFromEmitter$FromEmitter;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/CompletableFromEmitter$FromEmitter;->actual:Llgr;

    invoke-interface {v0}, Llgr;->onCompleted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    iget-object v0, p0, Lrx/internal/operators/CompletableFromEmitter$FromEmitter;->resource:Lrx/internal/subscriptions/SequentialSubscription;

    invoke-virtual {v0}, Lrx/internal/subscriptions/SequentialSubscription;->unsubscribe()V

    .line 76
    :cond_0
    return-void

    .line 73
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lrx/internal/operators/CompletableFromEmitter$FromEmitter;->resource:Lrx/internal/subscriptions/SequentialSubscription;

    invoke-virtual {v1}, Lrx/internal/subscriptions/SequentialSubscription;->unsubscribe()V

    throw v0
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 80
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/CompletableFromEmitter$FromEmitter;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/CompletableFromEmitter$FromEmitter;->actual:Llgr;

    invoke-interface {v0, p1}, Llgr;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    iget-object v0, p0, Lrx/internal/operators/CompletableFromEmitter$FromEmitter;->resource:Lrx/internal/subscriptions/SequentialSubscription;

    invoke-virtual {v0}, Lrx/internal/subscriptions/SequentialSubscription;->unsubscribe()V

    .line 89
    :goto_0
    return-void

    .line 84
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lrx/internal/operators/CompletableFromEmitter$FromEmitter;->resource:Lrx/internal/subscriptions/SequentialSubscription;

    invoke-virtual {v1}, Lrx/internal/subscriptions/SequentialSubscription;->unsubscribe()V

    throw v0

    .line 87
    :cond_0
    invoke-static {p1}, Llkm;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final setCancellation(Llhi;)V
    .locals 1
    .param p1, "c"    # Llhi;

    .prologue
    .line 98
    new-instance v0, Lrx/internal/subscriptions/CancellableSubscription;

    invoke-direct {v0, p1}, Lrx/internal/subscriptions/CancellableSubscription;-><init>(Llhi;)V

    invoke-virtual {p0, v0}, Lrx/internal/operators/CompletableFromEmitter$FromEmitter;->setSubscription(Llgz;)V

    .line 99
    return-void
.end method

.method public final setSubscription(Llgz;)V
    .locals 1
    .param p1, "s"    # Llgz;

    .prologue
    .line 93
    iget-object v0, p0, Lrx/internal/operators/CompletableFromEmitter$FromEmitter;->resource:Lrx/internal/subscriptions/SequentialSubscription;

    invoke-virtual {v0, p1}, Lrx/internal/subscriptions/SequentialSubscription;->update(Llgz;)Z

    .line 94
    return-void
.end method

.method public final unsubscribe()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 103
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/CompletableFromEmitter$FromEmitter;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lrx/internal/operators/CompletableFromEmitter$FromEmitter;->resource:Lrx/internal/subscriptions/SequentialSubscription;

    invoke-virtual {v0}, Lrx/internal/subscriptions/SequentialSubscription;->unsubscribe()V

    .line 106
    :cond_0
    return-void
.end method
