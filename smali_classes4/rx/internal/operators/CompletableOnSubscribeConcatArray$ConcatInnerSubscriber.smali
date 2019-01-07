.class final Lrx/internal/operators/CompletableOnSubscribeConcatArray$ConcatInnerSubscriber;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "CompletableOnSubscribeConcatArray.java"

# interfaces
.implements Llgr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/CompletableOnSubscribeConcatArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ConcatInnerSubscriber"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x6e8ac9652ad7cd50L


# instance fields
.field final actual:Llgr;

.field index:I

.field final sd:Llky;

.field final sources:[Llgq;


# direct methods
.method public constructor <init>(Llgr;[Llgq;)V
    .locals 1
    .param p1, "actual"    # Llgr;
    .param p2, "sources"    # [Llgq;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 51
    iput-object p1, p0, Lrx/internal/operators/CompletableOnSubscribeConcatArray$ConcatInnerSubscriber;->actual:Llgr;

    .line 52
    iput-object p2, p0, Lrx/internal/operators/CompletableOnSubscribeConcatArray$ConcatInnerSubscriber;->sources:[Llgq;

    .line 53
    new-instance v0, Llky;

    invoke-direct {v0}, Llky;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeConcatArray$ConcatInnerSubscriber;->sd:Llky;

    .line 54
    return-void
.end method


# virtual methods
.method final next()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 72
    iget-object v2, p0, Lrx/internal/operators/CompletableOnSubscribeConcatArray$ConcatInnerSubscriber;->sd:Llky;

    invoke-virtual {v2}, Llky;->isUnsubscribed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    invoke-virtual {p0}, Lrx/internal/operators/CompletableOnSubscribeConcatArray$ConcatInnerSubscriber;->getAndIncrement()I

    move-result v2

    if-nez v2, :cond_0

    .line 80
    iget-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeConcatArray$ConcatInnerSubscriber;->sources:[Llgq;

    .line 82
    .local v0, "a":[Llgq;
    :cond_2
    iget-object v2, p0, Lrx/internal/operators/CompletableOnSubscribeConcatArray$ConcatInnerSubscriber;->sd:Llky;

    invoke-virtual {v2}, Llky;->isUnsubscribed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 86
    iget v1, p0, Lrx/internal/operators/CompletableOnSubscribeConcatArray$ConcatInnerSubscriber;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lrx/internal/operators/CompletableOnSubscribeConcatArray$ConcatInnerSubscriber;->index:I

    .line 87
    .local v1, "idx":I
    array-length v2, v0

    if-ne v1, v2, :cond_3

    .line 88
    iget-object v2, p0, Lrx/internal/operators/CompletableOnSubscribeConcatArray$ConcatInnerSubscriber;->actual:Llgr;

    invoke-interface {v2}, Llgr;->onCompleted()V

    goto :goto_0

    .line 92
    :cond_3
    aget-object v2, v0, v1

    invoke-virtual {v2, p0}, Llgq;->a(Llgr;)V

    .line 93
    invoke-virtual {p0}, Lrx/internal/operators/CompletableOnSubscribeConcatArray$ConcatInnerSubscriber;->decrementAndGet()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0
.end method

.method public final onCompleted()V
    .locals 0

    .prologue
    .line 68
    invoke-virtual {p0}, Lrx/internal/operators/CompletableOnSubscribeConcatArray$ConcatInnerSubscriber;->next()V

    .line 69
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 63
    iget-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeConcatArray$ConcatInnerSubscriber;->actual:Llgr;

    invoke-interface {v0, p1}, Llgr;->onError(Ljava/lang/Throwable;)V

    .line 64
    return-void
.end method

.method public final onSubscribe(Llgz;)V
    .locals 1
    .param p1, "d"    # Llgz;

    .prologue
    .line 58
    iget-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeConcatArray$ConcatInnerSubscriber;->sd:Llky;

    invoke-virtual {v0, p1}, Llky;->a(Llgz;)V

    .line 59
    return-void
.end method
