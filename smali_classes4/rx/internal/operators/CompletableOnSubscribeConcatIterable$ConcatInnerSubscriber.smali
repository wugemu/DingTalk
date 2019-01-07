.class final Lrx/internal/operators/CompletableOnSubscribeConcatIterable$ConcatInnerSubscriber;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "CompletableOnSubscribeConcatIterable.java"

# interfaces
.implements Llgr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/CompletableOnSubscribeConcatIterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ConcatInnerSubscriber"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x6e8ac9652ad7cd50L


# instance fields
.field final actual:Llgr;

.field final sd:Llky;

.field final sources:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<+",
            "Llgq;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Llgr;Ljava/util/Iterator;)V
    .locals 1
    .param p1, "actual"    # Llgr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llgr;",
            "Ljava/util/Iterator",
            "<+",
            "Llgq;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p2, "sources":Ljava/util/Iterator;, "Ljava/util/Iterator<+Llgq;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 67
    iput-object p1, p0, Lrx/internal/operators/CompletableOnSubscribeConcatIterable$ConcatInnerSubscriber;->actual:Llgr;

    .line 68
    iput-object p2, p0, Lrx/internal/operators/CompletableOnSubscribeConcatIterable$ConcatInnerSubscriber;->sources:Ljava/util/Iterator;

    .line 69
    new-instance v0, Llky;

    invoke-direct {v0}, Llky;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeConcatIterable$ConcatInnerSubscriber;->sd:Llky;

    .line 70
    return-void
.end method


# virtual methods
.method final next()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 88
    iget-object v4, p0, Lrx/internal/operators/CompletableOnSubscribeConcatIterable$ConcatInnerSubscriber;->sd:Llky;

    invoke-virtual {v4}, Llky;->isUnsubscribed()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    invoke-virtual {p0}, Lrx/internal/operators/CompletableOnSubscribeConcatIterable$ConcatInnerSubscriber;->getAndIncrement()I

    move-result v4

    if-nez v4, :cond_0

    .line 96
    iget-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeConcatIterable$ConcatInnerSubscriber;->sources:Ljava/util/Iterator;

    .line 98
    .local v0, "a":Ljava/util/Iterator;, "Ljava/util/Iterator<+Llgq;>;"
    :cond_2
    iget-object v4, p0, Lrx/internal/operators/CompletableOnSubscribeConcatIterable$ConcatInnerSubscriber;->sd:Llky;

    invoke-virtual {v4}, Llky;->isUnsubscribed()Z

    move-result v4

    if-nez v4, :cond_0

    .line 104
    :try_start_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 110
    .local v1, "b":Z
    if-nez v1, :cond_3

    .line 111
    iget-object v4, p0, Lrx/internal/operators/CompletableOnSubscribeConcatIterable$ConcatInnerSubscriber;->actual:Llgr;

    invoke-interface {v4}, Llgr;->onCompleted()V

    goto :goto_0

    .line 105
    .end local v1    # "b":Z
    :catch_0
    move-exception v3

    .line 106
    .local v3, "ex":Ljava/lang/Throwable;
    iget-object v4, p0, Lrx/internal/operators/CompletableOnSubscribeConcatIterable$ConcatInnerSubscriber;->actual:Llgr;

    invoke-interface {v4, v3}, Llgr;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 118
    .end local v3    # "ex":Ljava/lang/Throwable;
    .restart local v1    # "b":Z
    :cond_3
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Llgq;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 124
    .local v2, "c":Llgq;
    if-nez v2, :cond_4

    .line 125
    iget-object v4, p0, Lrx/internal/operators/CompletableOnSubscribeConcatIterable$ConcatInnerSubscriber;->actual:Llgr;

    new-instance v5, Ljava/lang/NullPointerException;

    const-string/jumbo v6, "The completable returned is null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v5}, Llgr;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 119
    .end local v2    # "c":Llgq;
    :catch_1
    move-exception v3

    .line 120
    .restart local v3    # "ex":Ljava/lang/Throwable;
    iget-object v4, p0, Lrx/internal/operators/CompletableOnSubscribeConcatIterable$ConcatInnerSubscriber;->actual:Llgr;

    invoke-interface {v4, v3}, Llgr;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 129
    .end local v3    # "ex":Ljava/lang/Throwable;
    .restart local v2    # "c":Llgq;
    :cond_4
    invoke-virtual {v2, p0}, Llgq;->a(Llgr;)V

    .line 130
    invoke-virtual {p0}, Lrx/internal/operators/CompletableOnSubscribeConcatIterable$ConcatInnerSubscriber;->decrementAndGet()I

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0
.end method

.method public final onCompleted()V
    .locals 0

    .prologue
    .line 84
    invoke-virtual {p0}, Lrx/internal/operators/CompletableOnSubscribeConcatIterable$ConcatInnerSubscriber;->next()V

    .line 85
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 79
    iget-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeConcatIterable$ConcatInnerSubscriber;->actual:Llgr;

    invoke-interface {v0, p1}, Llgr;->onError(Ljava/lang/Throwable;)V

    .line 80
    return-void
.end method

.method public final onSubscribe(Llgz;)V
    .locals 1
    .param p1, "d"    # Llgz;

    .prologue
    .line 74
    iget-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeConcatIterable$ConcatInnerSubscriber;->sd:Llky;

    invoke-virtual {v0, p1}, Llky;->a(Llgz;)V

    .line 75
    return-void
.end method
