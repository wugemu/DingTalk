.class final Lrx/internal/operators/SingleFromEmitter$SingleEmitterImpl;
.super Ljava/util/concurrent/atomic/AtomicBoolean;
.source "SingleFromEmitter.java"

# interfaces
.implements Llgz;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/SingleFromEmitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SingleEmitterImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "Llgz;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x702bfed8d3c68cb9L


# instance fields
.field final actual:Llgx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llgx",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final resource:Lrx/internal/subscriptions/SequentialSubscription;


# direct methods
.method constructor <init>(Llgx;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llgx",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "this":Lrx/internal/operators/SingleFromEmitter$SingleEmitterImpl;, "Lrx/internal/operators/SingleFromEmitter$SingleEmitterImpl<TT;>;"
    .local p1, "actual":Llgx;, "Llgx<-TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 65
    iput-object p1, p0, Lrx/internal/operators/SingleFromEmitter$SingleEmitterImpl;->actual:Llgx;

    .line 66
    new-instance v0, Lrx/internal/subscriptions/SequentialSubscription;

    invoke-direct {v0}, Lrx/internal/subscriptions/SequentialSubscription;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/SingleFromEmitter$SingleEmitterImpl;->resource:Lrx/internal/subscriptions/SequentialSubscription;

    .line 67
    return-void
.end method


# virtual methods
.method public final isUnsubscribed()Z
    .locals 1

    .prologue
    .line 78
    .local p0, "this":Lrx/internal/operators/SingleFromEmitter$SingleEmitterImpl;, "Lrx/internal/operators/SingleFromEmitter$SingleEmitterImpl<TT;>;"
    invoke-virtual {p0}, Lrx/internal/operators/SingleFromEmitter$SingleEmitterImpl;->get()Z

    move-result v0

    return v0
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 94
    .local p0, "this":Lrx/internal/operators/SingleFromEmitter$SingleEmitterImpl;, "Lrx/internal/operators/SingleFromEmitter$SingleEmitterImpl<TT;>;"
    if-nez p1, :cond_0

    .line 95
    new-instance p1, Ljava/lang/NullPointerException;

    .end local p1    # "t":Ljava/lang/Throwable;
    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    .line 97
    .restart local p1    # "t":Ljava/lang/Throwable;
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/SingleFromEmitter$SingleEmitterImpl;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/SingleFromEmitter$SingleEmitterImpl;->actual:Llgx;

    invoke-virtual {v0, p1}, Llgx;->a(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    iget-object v0, p0, Lrx/internal/operators/SingleFromEmitter$SingleEmitterImpl;->resource:Lrx/internal/subscriptions/SequentialSubscription;

    invoke-virtual {v0}, Lrx/internal/subscriptions/SequentialSubscription;->unsubscribe()V

    .line 106
    :goto_0
    return-void

    .line 101
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lrx/internal/operators/SingleFromEmitter$SingleEmitterImpl;->resource:Lrx/internal/subscriptions/SequentialSubscription;

    invoke-virtual {v1}, Lrx/internal/subscriptions/SequentialSubscription;->unsubscribe()V

    throw v0

    .line 104
    :cond_1
    invoke-static {p1}, Llkm;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 83
    .local p0, "this":Lrx/internal/operators/SingleFromEmitter$SingleEmitterImpl;, "Lrx/internal/operators/SingleFromEmitter$SingleEmitterImpl<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/SingleFromEmitter$SingleEmitterImpl;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/SingleFromEmitter$SingleEmitterImpl;->actual:Llgx;

    invoke-virtual {v0, p1}, Llgx;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    iget-object v0, p0, Lrx/internal/operators/SingleFromEmitter$SingleEmitterImpl;->resource:Lrx/internal/subscriptions/SequentialSubscription;

    invoke-virtual {v0}, Lrx/internal/subscriptions/SequentialSubscription;->unsubscribe()V

    .line 90
    :cond_0
    return-void

    .line 87
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lrx/internal/operators/SingleFromEmitter$SingleEmitterImpl;->resource:Lrx/internal/subscriptions/SequentialSubscription;

    invoke-virtual {v1}, Lrx/internal/subscriptions/SequentialSubscription;->unsubscribe()V

    throw v0
.end method

.method public final setCancellation(Llhi;)V
    .locals 1
    .param p1, "c"    # Llhi;

    .prologue
    .line 115
    .local p0, "this":Lrx/internal/operators/SingleFromEmitter$SingleEmitterImpl;, "Lrx/internal/operators/SingleFromEmitter$SingleEmitterImpl<TT;>;"
    new-instance v0, Lrx/internal/subscriptions/CancellableSubscription;

    invoke-direct {v0, p1}, Lrx/internal/subscriptions/CancellableSubscription;-><init>(Llhi;)V

    invoke-virtual {p0, v0}, Lrx/internal/operators/SingleFromEmitter$SingleEmitterImpl;->setSubscription(Llgz;)V

    .line 116
    return-void
.end method

.method public final setSubscription(Llgz;)V
    .locals 1
    .param p1, "s"    # Llgz;

    .prologue
    .line 110
    .local p0, "this":Lrx/internal/operators/SingleFromEmitter$SingleEmitterImpl;, "Lrx/internal/operators/SingleFromEmitter$SingleEmitterImpl<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/SingleFromEmitter$SingleEmitterImpl;->resource:Lrx/internal/subscriptions/SequentialSubscription;

    invoke-virtual {v0, p1}, Lrx/internal/subscriptions/SequentialSubscription;->update(Llgz;)Z

    .line 111
    return-void
.end method

.method public final unsubscribe()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 71
    .local p0, "this":Lrx/internal/operators/SingleFromEmitter$SingleEmitterImpl;, "Lrx/internal/operators/SingleFromEmitter$SingleEmitterImpl<TT;>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/SingleFromEmitter$SingleEmitterImpl;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lrx/internal/operators/SingleFromEmitter$SingleEmitterImpl;->resource:Lrx/internal/subscriptions/SequentialSubscription;

    invoke-virtual {v0}, Lrx/internal/subscriptions/SequentialSubscription;->unsubscribe()V

    .line 74
    :cond_0
    return-void
.end method
