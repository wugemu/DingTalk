.class final Lrx/internal/operators/OnSubscribeFlatMapCompletable$FlatMapCompletableSubscriber;
.super Llgy;
.source "OnSubscribeFlatMapCompletable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeFlatMapCompletable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlatMapCompletableSubscriber"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OnSubscribeFlatMapCompletable$FlatMapCompletableSubscriber$InnerSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Llgy",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:Llgy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llgy",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final b:Llhk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llhk",
            "<-TT;+",
            "Llgq;",
            ">;"
        }
    .end annotation
.end field

.field final c:Z

.field final d:I

.field final e:Ljava/util/concurrent/atomic/AtomicInteger;

.field final f:Llkx;

.field final g:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Llgy;Llhk;ZI)V
    .locals 2
    .param p3, "delayErrors"    # Z
    .param p4, "maxConcurrency"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llgy",
            "<-TT;>;",
            "Llhk",
            "<-TT;+",
            "Llgq;",
            ">;ZI)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, "this":Lrx/internal/operators/OnSubscribeFlatMapCompletable$FlatMapCompletableSubscriber;, "Lrx/internal/operators/OnSubscribeFlatMapCompletable$FlatMapCompletableSubscriber<TT;>;"
    .local p1, "actual":Llgy;, "Llgy<-TT;>;"
    .local p2, "mapper":Llhk;, "Llhk<-TT;+Llgq;>;"
    invoke-direct {p0}, Llgy;-><init>()V

    .line 84
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeFlatMapCompletable$FlatMapCompletableSubscriber;->a:Llgy;

    .line 85
    iput-object p2, p0, Lrx/internal/operators/OnSubscribeFlatMapCompletable$FlatMapCompletableSubscriber;->b:Llhk;

    .line 86
    iput-boolean p3, p0, Lrx/internal/operators/OnSubscribeFlatMapCompletable$FlatMapCompletableSubscriber;->c:Z

    .line 87
    iput p4, p0, Lrx/internal/operators/OnSubscribeFlatMapCompletable$FlatMapCompletableSubscriber;->d:I

    .line 88
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeFlatMapCompletable$FlatMapCompletableSubscriber;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 89
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeFlatMapCompletable$FlatMapCompletableSubscriber;->g:Ljava/util/concurrent/atomic/AtomicReference;

    .line 90
    new-instance v0, Llkx;

    invoke-direct {v0}, Llkx;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeFlatMapCompletable$FlatMapCompletableSubscriber;->f:Llkx;

    .line 91
    const v0, 0x7fffffff

    if-eq p4, v0, :cond_0

    int-to-long v0, p4

    :goto_0
    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OnSubscribeFlatMapCompletable$FlatMapCompletableSubscriber;->a(J)V

    .line 92
    return-void

    .line 91
    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0
.end method

.method private b()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 138
    .local p0, "this":Lrx/internal/operators/OnSubscribeFlatMapCompletable$FlatMapCompletableSubscriber;, "Lrx/internal/operators/OnSubscribeFlatMapCompletable$FlatMapCompletableSubscriber<TT;>;"
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeFlatMapCompletable$FlatMapCompletableSubscriber;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    if-nez v1, :cond_1

    .line 139
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeFlatMapCompletable$FlatMapCompletableSubscriber;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v1}, Lrx/internal/util/ExceptionsUtils;->terminate(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v0

    .line 140
    .local v0, "ex":Ljava/lang/Throwable;
    if-eqz v0, :cond_0

    .line 141
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeFlatMapCompletable$FlatMapCompletableSubscriber;->a:Llgy;

    invoke-virtual {v1, v0}, Llgy;->onError(Ljava/lang/Throwable;)V

    .line 145
    :goto_0
    const/4 v1, 0x1

    .line 147
    .end local v0    # "ex":Ljava/lang/Throwable;
    :goto_1
    return v1

    .line 143
    .restart local v0    # "ex":Ljava/lang/Throwable;
    :cond_0
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeFlatMapCompletable$FlatMapCompletableSubscriber;->a:Llgy;

    invoke-virtual {v1}, Llgy;->onCompleted()V

    goto :goto_0

    .line 147
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public final a(Lrx/internal/operators/OnSubscribeFlatMapCompletable$FlatMapCompletableSubscriber$InnerSubscriber;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OnSubscribeFlatMapCompletable$FlatMapCompletableSubscriber",
            "<TT;>.InnerSubscriber;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 169
    .local p0, "this":Lrx/internal/operators/OnSubscribeFlatMapCompletable$FlatMapCompletableSubscriber;, "Lrx/internal/operators/OnSubscribeFlatMapCompletable$FlatMapCompletableSubscriber<TT;>;"
    .local p1, "inner":Lrx/internal/operators/OnSubscribeFlatMapCompletable$FlatMapCompletableSubscriber$InnerSubscriber;, "Lrx/internal/operators/OnSubscribeFlatMapCompletable$FlatMapCompletableSubscriber<TT;>.InnerSubscriber;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFlatMapCompletable$FlatMapCompletableSubscriber;->f:Llkx;

    invoke-virtual {v0, p1}, Llkx;->b(Llgz;)V

    .line 170
    invoke-direct {p0}, Lrx/internal/operators/OnSubscribeFlatMapCompletable$FlatMapCompletableSubscriber;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lrx/internal/operators/OnSubscribeFlatMapCompletable$FlatMapCompletableSubscriber;->d:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    .line 171
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OnSubscribeFlatMapCompletable$FlatMapCompletableSubscriber;->a(J)V

    .line 173
    :cond_0
    return-void
.end method

.method public final a(Lrx/internal/operators/OnSubscribeFlatMapCompletable$FlatMapCompletableSubscriber$InnerSubscriber;Ljava/lang/Throwable;)V
    .locals 2
    .param p2, "e"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OnSubscribeFlatMapCompletable$FlatMapCompletableSubscriber",
            "<TT;>.InnerSubscriber;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 151
    .local p0, "this":Lrx/internal/operators/OnSubscribeFlatMapCompletable$FlatMapCompletableSubscriber;, "Lrx/internal/operators/OnSubscribeFlatMapCompletable$FlatMapCompletableSubscriber<TT;>;"
    .local p1, "inner":Lrx/internal/operators/OnSubscribeFlatMapCompletable$FlatMapCompletableSubscriber$InnerSubscriber;, "Lrx/internal/operators/OnSubscribeFlatMapCompletable$FlatMapCompletableSubscriber<TT;>.InnerSubscriber;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFlatMapCompletable$FlatMapCompletableSubscriber;->f:Llkx;

    invoke-virtual {v0, p1}, Llkx;->b(Llgz;)V

    .line 152
    iget-boolean v0, p0, Lrx/internal/operators/OnSubscribeFlatMapCompletable$FlatMapCompletableSubscriber;->c:Z

    if-eqz v0, :cond_1

    .line 153
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFlatMapCompletable$FlatMapCompletableSubscriber;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p2}, Lrx/internal/util/ExceptionsUtils;->addThrowable(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    .line 154
    invoke-direct {p0}, Lrx/internal/operators/OnSubscribeFlatMapCompletable$FlatMapCompletableSubscriber;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lrx/internal/operators/OnSubscribeFlatMapCompletable$FlatMapCompletableSubscriber;->d:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    .line 155
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OnSubscribeFlatMapCompletable$FlatMapCompletableSubscriber;->a(J)V

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFlatMapCompletable$FlatMapCompletableSubscriber;->f:Llkx;

    invoke-virtual {v0}, Llkx;->unsubscribe()V

    .line 159
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeFlatMapCompletable$FlatMapCompletableSubscriber;->unsubscribe()V

    .line 160
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFlatMapCompletable$FlatMapCompletableSubscriber;->g:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 161
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFlatMapCompletable$FlatMapCompletableSubscriber;->a:Llgy;

    iget-object v1, p0, Lrx/internal/operators/OnSubscribeFlatMapCompletable$FlatMapCompletableSubscriber;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v1}, Lrx/internal/util/ExceptionsUtils;->terminate(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0, v1}, Llgy;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 163
    :cond_2
    invoke-static {p2}, Llkm;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final onCompleted()V
    .locals 0

    .prologue
    .line 134
    .local p0, "this":Lrx/internal/operators/OnSubscribeFlatMapCompletable$FlatMapCompletableSubscriber;, "Lrx/internal/operators/OnSubscribeFlatMapCompletable$FlatMapCompletableSubscriber<TT;>;"
    invoke-direct {p0}, Lrx/internal/operators/OnSubscribeFlatMapCompletable$FlatMapCompletableSubscriber;->b()Z

    .line 135
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 119
    .local p0, "this":Lrx/internal/operators/OnSubscribeFlatMapCompletable$FlatMapCompletableSubscriber;, "Lrx/internal/operators/OnSubscribeFlatMapCompletable$FlatMapCompletableSubscriber<TT;>;"
    iget-boolean v0, p0, Lrx/internal/operators/OnSubscribeFlatMapCompletable$FlatMapCompletableSubscriber;->c:Z

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFlatMapCompletable$FlatMapCompletableSubscriber;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lrx/internal/util/ExceptionsUtils;->addThrowable(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    .line 121
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeFlatMapCompletable$FlatMapCompletableSubscriber;->onCompleted()V

    .line 130
    :goto_0
    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFlatMapCompletable$FlatMapCompletableSubscriber;->f:Llkx;

    invoke-virtual {v0}, Llkx;->unsubscribe()V

    .line 124
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFlatMapCompletable$FlatMapCompletableSubscriber;->g:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFlatMapCompletable$FlatMapCompletableSubscriber;->a:Llgy;

    iget-object v1, p0, Lrx/internal/operators/OnSubscribeFlatMapCompletable$FlatMapCompletableSubscriber;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v1}, Lrx/internal/util/ExceptionsUtils;->terminate(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0, v1}, Llgy;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 127
    :cond_1
    invoke-static {p1}, Llkm;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 99
    .local p0, "this":Lrx/internal/operators/OnSubscribeFlatMapCompletable$FlatMapCompletableSubscriber;, "Lrx/internal/operators/OnSubscribeFlatMapCompletable$FlatMapCompletableSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v3, p0, Lrx/internal/operators/OnSubscribeFlatMapCompletable$FlatMapCompletableSubscriber;->b:Llhk;

    invoke-interface {v3, p1}, Llhk;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llgq;

    .line 100
    .local v0, "c":Llgq;
    if-nez v0, :cond_0

    .line 101
    new-instance v3, Ljava/lang/NullPointerException;

    const-string/jumbo v4, "The mapper returned a null Completable"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .end local v0    # "c":Llgq;
    :catch_0
    move-exception v1

    .line 104
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-static {v1}, Llhe;->a(Ljava/lang/Throwable;)V

    .line 105
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeFlatMapCompletable$FlatMapCompletableSubscriber;->unsubscribe()V

    .line 106
    invoke-virtual {p0, v1}, Lrx/internal/operators/OnSubscribeFlatMapCompletable$FlatMapCompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 115
    .end local v1    # "ex":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 110
    .restart local v0    # "c":Llgq;
    :cond_0
    new-instance v2, Lrx/internal/operators/OnSubscribeFlatMapCompletable$FlatMapCompletableSubscriber$InnerSubscriber;

    invoke-direct {v2, p0}, Lrx/internal/operators/OnSubscribeFlatMapCompletable$FlatMapCompletableSubscriber$InnerSubscriber;-><init>(Lrx/internal/operators/OnSubscribeFlatMapCompletable$FlatMapCompletableSubscriber;)V

    .line 111
    .local v2, "inner":Lrx/internal/operators/OnSubscribeFlatMapCompletable$FlatMapCompletableSubscriber$InnerSubscriber;, "Lrx/internal/operators/OnSubscribeFlatMapCompletable$FlatMapCompletableSubscriber<TT;>.InnerSubscriber;"
    iget-object v3, p0, Lrx/internal/operators/OnSubscribeFlatMapCompletable$FlatMapCompletableSubscriber;->f:Llkx;

    invoke-virtual {v3, v2}, Llkx;->a(Llgz;)V

    .line 112
    iget-object v3, p0, Lrx/internal/operators/OnSubscribeFlatMapCompletable$FlatMapCompletableSubscriber;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 114
    invoke-virtual {v0, v2}, Llgq;->a(Llgr;)V

    goto :goto_0
.end method
