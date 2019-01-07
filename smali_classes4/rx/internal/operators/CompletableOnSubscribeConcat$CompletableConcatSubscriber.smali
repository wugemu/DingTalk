.class final Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber;
.super Llgy;
.source "CompletableOnSubscribeConcat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/CompletableOnSubscribeConcat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CompletableConcatSubscriber"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber$ConcatInnerSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llgy",
        "<",
        "Llgq;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Llgr;

.field final b:Lrx/internal/subscriptions/SequentialSubscription;

.field final c:Lljn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lljn",
            "<",
            "Llgq;",
            ">;"
        }
    .end annotation
.end field

.field final d:Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber$ConcatInnerSubscriber;

.field final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field volatile f:Z

.field volatile g:Z


# direct methods
.method public constructor <init>(Llgr;I)V
    .locals 2
    .param p1, "actual"    # Llgr;
    .param p2, "prefetch"    # I

    .prologue
    .line 60
    invoke-direct {p0}, Llgy;-><init>()V

    .line 61
    iput-object p1, p0, Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber;->a:Llgr;

    .line 62
    new-instance v0, Lljn;

    invoke-direct {v0, p2}, Lljn;-><init>(I)V

    iput-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber;->c:Lljn;

    .line 63
    new-instance v0, Lrx/internal/subscriptions/SequentialSubscription;

    invoke-direct {v0}, Lrx/internal/subscriptions/SequentialSubscription;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber;->b:Lrx/internal/subscriptions/SequentialSubscription;

    .line 64
    new-instance v0, Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber$ConcatInnerSubscriber;

    invoke-direct {v0, p0}, Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber$ConcatInnerSubscriber;-><init>(Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber;)V

    iput-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber;->d:Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber$ConcatInnerSubscriber;

    .line 65
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 66
    iget-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber;->b:Lrx/internal/subscriptions/SequentialSubscription;

    invoke-virtual {p0, v0}, Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber;->a(Llgz;)V

    .line 67
    int-to-long v0, p2

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber;->a(J)V

    .line 68
    return-void
.end method

.method private c()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v5, 0x1

    .line 108
    iget-object v3, p0, Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber;->d:Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber$ConcatInnerSubscriber;

    .line 109
    .local v3, "inner":Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber$ConcatInnerSubscriber;
    invoke-virtual {v3}, Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber$ConcatInnerSubscriber;->getAndIncrement()I

    move-result v4

    if-eqz v4, :cond_1

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    invoke-virtual {p0}, Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber;->isUnsubscribed()Z

    move-result v4

    if-nez v4, :cond_0

    .line 117
    iget-boolean v4, p0, Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber;->g:Z

    if-nez v4, :cond_4

    .line 118
    iget-boolean v1, p0, Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber;->f:Z

    .line 119
    .local v1, "d":Z
    iget-object v4, p0, Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber;->c:Lljn;

    invoke-virtual {v4}, Lljn;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llgq;

    .line 120
    .local v0, "c":Llgq;
    if-nez v0, :cond_2

    move v2, v5

    .line 122
    .local v2, "empty":Z
    :goto_1
    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    .line 123
    iget-object v4, p0, Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber;->a:Llgr;

    invoke-interface {v4}, Llgr;->onCompleted()V

    goto :goto_0

    .line 120
    .end local v2    # "empty":Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 127
    .restart local v2    # "empty":Z
    :cond_3
    if-nez v2, :cond_4

    .line 128
    iput-boolean v5, p0, Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber;->g:Z

    .line 3053
    instance-of v4, v3, Llkf;

    if-nez v4, :cond_5

    .line 3054
    new-instance v4, Llkf;

    invoke-direct {v4, v3}, Llkf;-><init>(Llgr;)V

    .line 3056
    :goto_2
    invoke-virtual {v0, v4}, Llgq;->a(Llgr;)V

    .line 131
    const-wide/16 v6, 0x1

    invoke-virtual {p0, v6, v7}, Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber;->a(J)V

    .line 134
    .end local v0    # "c":Llgq;
    .end local v1    # "d":Z
    .end local v2    # "empty":Z
    :cond_4
    invoke-virtual {v3}, Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber$ConcatInnerSubscriber;->decrementAndGet()I

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    .restart local v0    # "c":Llgq;
    .restart local v1    # "d":Z
    .restart local v2    # "empty":Z
    :cond_5
    move-object v4, v3

    goto :goto_2
.end method


# virtual methods
.method final b()V
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber;->g:Z

    .line 104
    invoke-direct {p0}, Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber;->c()V

    .line 105
    return-void
.end method

.method public final onCompleted()V
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber;->f:Z

    if-eqz v0, :cond_0

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber;->f:Z

    .line 94
    invoke-direct {p0}, Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber;->c()V

    goto :goto_0
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "t"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 81
    iget-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber;->a:Llgr;

    invoke-interface {v0, p1}, Llgr;->onError(Ljava/lang/Throwable;)V

    .line 86
    :goto_0
    return-void

    .line 85
    :cond_0
    invoke-static {p1}, Llkm;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final synthetic onNext(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 45
    check-cast p1, Llgq;

    .line 3072
    iget-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber;->c:Lljn;

    invoke-virtual {v0, p1}, Lljn;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3073
    new-instance v0, Lrx/exceptions/MissingBackpressureException;

    invoke-direct {v0}, Lrx/exceptions/MissingBackpressureException;-><init>()V

    invoke-virtual {p0, v0}, Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 3074
    :goto_0
    return-void

    .line 3076
    :cond_0
    invoke-direct {p0}, Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber;->c()V

    goto :goto_0
.end method
