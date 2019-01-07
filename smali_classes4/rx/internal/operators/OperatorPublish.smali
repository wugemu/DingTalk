.class public final Lrx/internal/operators/OperatorPublish;
.super Llkc;
.source "OperatorPublish.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorPublish$InnerProducer;,
        Lrx/internal/operators/OperatorPublish$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Llkc",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final b:Llgs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llgs",
            "<+TT;>;"
        }
    .end annotation
.end field

.field final c:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lrx/internal/operators/OperatorPublish$a",
            "<TT;>;>;"
        }
    .end annotation
.end field


# virtual methods
.method public final a(Llhg;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llhg",
            "<-",
            "Llgz;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorPublish;, "Lrx/internal/operators/OperatorPublish<TT;>;"
    .local p1, "connection":Llhg;, "Llhg<-Llgz;>;"
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 179
    :cond_0
    iget-object v4, p0, Lrx/internal/operators/OperatorPublish;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/internal/operators/OperatorPublish$a;

    .line 181
    .local v1, "ps":Lrx/internal/operators/OperatorPublish$a;, "Lrx/internal/operators/OperatorPublish$a<TT;>;"
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lrx/internal/operators/OperatorPublish$a;->isUnsubscribed()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 183
    :cond_1
    new-instance v2, Lrx/internal/operators/OperatorPublish$a;

    iget-object v4, p0, Lrx/internal/operators/OperatorPublish;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2, v4}, Lrx/internal/operators/OperatorPublish$a;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 1257
    .local v2, "u":Lrx/internal/operators/OperatorPublish$a;, "Lrx/internal/operators/OperatorPublish$a<TT;>;"
    new-instance v4, Lrx/internal/operators/OperatorPublish$a$1;

    invoke-direct {v4, v2}, Lrx/internal/operators/OperatorPublish$a$1;-><init>(Lrx/internal/operators/OperatorPublish$a;)V

    invoke-static {v4}, Llkz;->a(Llhf;)Llgz;

    move-result-object v4

    invoke-virtual {v2, v4}, Lrx/internal/operators/OperatorPublish$a;->a(Llgz;)V

    .line 187
    iget-object v4, p0, Lrx/internal/operators/OperatorPublish;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 192
    move-object v1, v2

    .line 196
    .end local v2    # "u":Lrx/internal/operators/OperatorPublish$a;, "Lrx/internal/operators/OperatorPublish$a<TT;>;"
    :cond_2
    iget-object v4, v1, Lrx/internal/operators/OperatorPublish$a;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, v1, Lrx/internal/operators/OperatorPublish$a;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 212
    .local v0, "doConnect":Z
    :goto_0
    invoke-interface {p1, v1}, Llhg;->call(Ljava/lang/Object;)V

    .line 213
    if-eqz v0, :cond_3

    .line 214
    iget-object v3, p0, Lrx/internal/operators/OperatorPublish;->b:Llgs;

    invoke-virtual {v3, v1}, Llgs;->a(Llgy;)Llgz;

    .line 216
    :cond_3
    return-void

    .end local v0    # "doConnect":Z
    :cond_4
    move v0, v3

    .line 196
    goto :goto_0
.end method
