.class final Lrx/internal/operators/OnSubscribeFromArray$FromArrayProducer;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "OnSubscribeFromArray.java"

# interfaces
.implements Llgu;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeFromArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FromArrayProducer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Llgu;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x310c1171070674b3L


# instance fields
.field final array:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field final child:Llgy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llgy",
            "<-TT;>;"
        }
    .end annotation
.end field

.field index:I


# direct methods
.method public constructor <init>(Llgy;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llgy",
            "<-TT;>;[TT;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromArray$FromArrayProducer;, "Lrx/internal/operators/OnSubscribeFromArray$FromArrayProducer<TT;>;"
    .local p1, "child":Llgy;, "Llgy<-TT;>;"
    .local p2, "array":[Ljava/lang/Object;, "[TT;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 47
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeFromArray$FromArrayProducer;->child:Llgy;

    .line 48
    iput-object p2, p0, Lrx/internal/operators/OnSubscribeFromArray$FromArrayProducer;->array:[Ljava/lang/Object;

    .line 49
    return-void
.end method


# virtual methods
.method final fastPath()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 69
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromArray$FromArrayProducer;, "Lrx/internal/operators/OnSubscribeFromArray$FromArrayProducer<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFromArray$FromArrayProducer;->child:Llgy;

    .line 71
    .local v0, "child":Llgy;, "Llgy<-TT;>;"
    iget-object v3, p0, Lrx/internal/operators/OnSubscribeFromArray$FromArrayProducer;->array:[Ljava/lang/Object;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v1, v3, v2

    .line 72
    .local v1, "t":Ljava/lang/Object;, "TT;"
    invoke-virtual {v0}, Llgy;->isUnsubscribed()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 83
    .end local v1    # "t":Ljava/lang/Object;, "TT;"
    :cond_0
    :goto_1
    return-void

    .line 76
    .restart local v1    # "t":Ljava/lang/Object;, "TT;"
    :cond_1
    invoke-virtual {v0, v1}, Llgy;->onNext(Ljava/lang/Object;)V

    .line 71
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 79
    .end local v1    # "t":Ljava/lang/Object;, "TT;"
    :cond_2
    invoke-virtual {v0}, Llgy;->isUnsubscribed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 82
    invoke-virtual {v0}, Llgy;->onCompleted()V

    goto :goto_1
.end method

.method public final request(J)V
    .locals 5
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromArray$FromArrayProducer;, "Lrx/internal/operators/OnSubscribeFromArray$FromArrayProducer<TT;>;"
    const-wide/16 v2, 0x0

    .line 53
    cmp-long v0, p1, v2

    if-gez v0, :cond_0

    .line 54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "n >= 0 required but it was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p1, v0

    if-nez v0, :cond_2

    .line 57
    invoke-static {p0, p1, p2}, Llhn;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 58
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeFromArray$FromArrayProducer;->fastPath()V

    .line 66
    :cond_1
    :goto_0
    return-void

    .line 61
    :cond_2
    cmp-long v0, p1, v2

    if-eqz v0, :cond_1

    .line 62
    invoke-static {p0, p1, p2}, Llhn;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 63
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/OnSubscribeFromArray$FromArrayProducer;->slowPath(J)V

    goto :goto_0
.end method

.method final slowPath(J)V
    .locals 13
    .param p1, "r"    # J

    .prologue
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromArray$FromArrayProducer;, "Lrx/internal/operators/OnSubscribeFromArray$FromArrayProducer<TT;>;"
    const-wide/16 v10, 0x1

    const-wide/16 v8, 0x0

    .line 86
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeFromArray$FromArrayProducer;->child:Llgy;

    .line 87
    .local v1, "child":Llgy;, "Llgy<-TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFromArray$FromArrayProducer;->array:[Ljava/lang/Object;

    .line 88
    .local v0, "array":[Ljava/lang/Object;, "[TT;"
    array-length v5, v0

    .line 90
    .local v5, "n":I
    const-wide/16 v2, 0x0

    .line 91
    .local v2, "e":J
    iget v4, p0, Lrx/internal/operators/OnSubscribeFromArray$FromArrayProducer;->index:I

    .line 95
    .local v4, "i":I
    :cond_0
    :goto_0
    cmp-long v6, p1, v8

    if-eqz v6, :cond_4

    if-eq v4, v5, :cond_4

    .line 96
    invoke-virtual {v1}, Llgy;->isUnsubscribed()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 121
    :cond_1
    :goto_1
    return-void

    .line 100
    :cond_2
    aget-object v6, v0, v4

    invoke-virtual {v1, v6}, Llgy;->onNext(Ljava/lang/Object;)V

    .line 102
    add-int/lit8 v4, v4, 0x1

    .line 104
    if-ne v4, v5, :cond_3

    .line 105
    invoke-virtual {v1}, Llgy;->isUnsubscribed()Z

    move-result v6

    if-nez v6, :cond_1

    .line 106
    invoke-virtual {v1}, Llgy;->onCompleted()V

    goto :goto_1

    .line 111
    :cond_3
    sub-long/2addr p1, v10

    .line 112
    sub-long/2addr v2, v10

    goto :goto_0

    .line 115
    :cond_4
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeFromArray$FromArrayProducer;->get()J

    move-result-wide v6

    add-long p1, v6, v2

    .line 117
    cmp-long v6, p1, v8

    if-nez v6, :cond_0

    .line 118
    iput v4, p0, Lrx/internal/operators/OnSubscribeFromArray$FromArrayProducer;->index:I

    .line 119
    invoke-virtual {p0, v2, v3}, Lrx/internal/operators/OnSubscribeFromArray$FromArrayProducer;->addAndGet(J)J

    move-result-wide p1

    .line 120
    cmp-long v6, p1, v8

    if-eqz v6, :cond_1

    .line 123
    const-wide/16 v2, 0x0

    goto :goto_0
.end method
