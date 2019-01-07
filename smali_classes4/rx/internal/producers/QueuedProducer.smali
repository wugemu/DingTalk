.class public final Lrx/internal/producers/QueuedProducer;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "QueuedProducer.java"

# interfaces
.implements Llgt;
.implements Llgu;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Llgt",
        "<TT;>;",
        "Llgu;"
    }
.end annotation


# static fields
.field static final NULL_SENTINEL:Ljava/lang/Object;

.field private static final serialVersionUID:J = 0x64fd87a3da19de97L


# instance fields
.field final child:Llgy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llgy",
            "<-TT;>;"
        }
    .end annotation
.end field

.field volatile done:Z

.field error:Ljava/lang/Throwable;

.field final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final wip:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lrx/internal/producers/QueuedProducer;->NULL_SENTINEL:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Llgy;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llgy",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lrx/internal/producers/QueuedProducer;, "Lrx/internal/producers/QueuedProducer<TT;>;"
    .local p1, "child":Llgy;, "Llgy<-TT;>;"
    invoke-static {}, Llkb;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Llju;

    invoke-direct {v0}, Llju;-><init>()V

    :goto_0
    invoke-direct {p0, p1, v0}, Lrx/internal/producers/QueuedProducer;-><init>(Llgy;Ljava/util/Queue;)V

    .line 55
    return-void

    .line 53
    :cond_0
    new-instance v0, Lliu;

    invoke-direct {v0}, Lliu;-><init>()V

    goto :goto_0
.end method

.method public constructor <init>(Llgy;Ljava/util/Queue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llgy",
            "<-TT;>;",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "this":Lrx/internal/producers/QueuedProducer;, "Lrx/internal/producers/QueuedProducer<TT;>;"
    .local p1, "child":Llgy;, "Llgy<-TT;>;"
    .local p2, "queue":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 62
    iput-object p1, p0, Lrx/internal/producers/QueuedProducer;->child:Llgy;

    .line 63
    iput-object p2, p0, Lrx/internal/producers/QueuedProducer;->queue:Ljava/util/Queue;

    .line 64
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lrx/internal/producers/QueuedProducer;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 65
    return-void
.end method

.method private checkTerminated(ZZ)Z
    .locals 3
    .param p1, "isDone"    # Z
    .param p2, "isEmpty"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .local p0, "this":Lrx/internal/producers/QueuedProducer;, "Lrx/internal/producers/QueuedProducer<TT;>;"
    const/4 v1, 0x1

    .line 120
    iget-object v2, p0, Lrx/internal/producers/QueuedProducer;->child:Llgy;

    invoke-virtual {v2}, Llgy;->isUnsubscribed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 135
    :goto_0
    return v1

    .line 123
    :cond_0
    if-eqz p1, :cond_2

    .line 124
    iget-object v0, p0, Lrx/internal/producers/QueuedProducer;->error:Ljava/lang/Throwable;

    .line 125
    .local v0, "e":Ljava/lang/Throwable;
    if-eqz v0, :cond_1

    .line 126
    iget-object v2, p0, Lrx/internal/producers/QueuedProducer;->queue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->clear()V

    .line 127
    iget-object v2, p0, Lrx/internal/producers/QueuedProducer;->child:Llgy;

    invoke-virtual {v2, v0}, Llgy;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 130
    :cond_1
    if-eqz p2, :cond_2

    .line 131
    iget-object v2, p0, Lrx/internal/producers/QueuedProducer;->child:Llgy;

    invoke-virtual {v2}, Llgy;->onCompleted()V

    goto :goto_0

    .line 135
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private drain()V
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 139
    .local p0, "this":Lrx/internal/producers/QueuedProducer;, "Lrx/internal/producers/QueuedProducer<TT;>;"
    iget-object v10, p0, Lrx/internal/producers/QueuedProducer;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v10

    if-nez v10, :cond_1

    .line 140
    iget-object v0, p0, Lrx/internal/producers/QueuedProducer;->child:Llgy;

    .line 141
    .local v0, "c":Llgy;, "Llgy<-TT;>;"
    iget-object v5, p0, Lrx/internal/producers/QueuedProducer;->queue:Ljava/util/Queue;

    .line 144
    .local v5, "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    :cond_0
    iget-boolean v10, p0, Lrx/internal/producers/QueuedProducer;->done:Z

    invoke-interface {v5}, Ljava/util/Queue;->isEmpty()Z

    move-result v11

    invoke-direct {p0, v10, v11}, Lrx/internal/producers/QueuedProducer;->checkTerminated(ZZ)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 184
    .end local v0    # "c":Llgy;, "Llgy<-TT;>;"
    .end local v5    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    :cond_1
    :goto_0
    return-void

    .line 148
    .restart local v0    # "c":Llgy;, "Llgy<-TT;>;"
    .restart local v5    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    :cond_2
    iget-object v10, p0, Lrx/internal/producers/QueuedProducer;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Ljava/util/concurrent/atomic/AtomicInteger;->lazySet(I)V

    .line 150
    invoke-virtual {p0}, Lrx/internal/producers/QueuedProducer;->get()J

    move-result-wide v6

    .line 151
    .local v6, "r":J
    const-wide/16 v2, 0x0

    .line 153
    .local v2, "e":J
    :goto_1
    const-wide/16 v10, 0x0

    cmp-long v10, v6, v10

    if-eqz v10, :cond_6

    .line 154
    iget-boolean v1, p0, Lrx/internal/producers/QueuedProducer;->done:Z

    .line 155
    .local v1, "d":Z
    invoke-interface {v5}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v9

    .line 156
    .local v9, "v":Ljava/lang/Object;
    if-nez v9, :cond_3

    const/4 v10, 0x1

    :goto_2
    invoke-direct {p0, v1, v10}, Lrx/internal/producers/QueuedProducer;->checkTerminated(ZZ)Z

    move-result v10

    if-nez v10, :cond_1

    .line 159
    if-eqz v9, :cond_6

    .line 164
    :try_start_0
    sget-object v10, Lrx/internal/producers/QueuedProducer;->NULL_SENTINEL:Ljava/lang/Object;

    if-ne v9, v10, :cond_4

    .line 165
    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Llgy;->onNext(Ljava/lang/Object;)V

    .line 175
    :goto_3
    const-wide/16 v10, 0x1

    sub-long/2addr v6, v10

    .line 176
    const-wide/16 v10, 0x1

    add-long/2addr v2, v10

    .line 177
    goto :goto_1

    .line 156
    :cond_3
    const/4 v10, 0x0

    goto :goto_2

    .line 168
    :cond_4
    move-object v8, v9

    .line 169
    .local v8, "t":Ljava/lang/Object;, "TT;"
    invoke-virtual {v0, v8}, Llgy;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 171
    .end local v8    # "t":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v4

    .line 172
    .local v4, "ex":Ljava/lang/Throwable;
    sget-object v10, Lrx/internal/producers/QueuedProducer;->NULL_SENTINEL:Ljava/lang/Object;

    if-eq v9, v10, :cond_5

    .end local v9    # "v":Ljava/lang/Object;
    :goto_4
    invoke-static {v4, v0, v9}, Llhe;->a(Ljava/lang/Throwable;Llgt;Ljava/lang/Object;)V

    goto :goto_0

    .restart local v9    # "v":Ljava/lang/Object;
    :cond_5
    const/4 v9, 0x0

    goto :goto_4

    .line 179
    .end local v1    # "d":Z
    .end local v4    # "ex":Ljava/lang/Throwable;
    .end local v9    # "v":Ljava/lang/Object;
    :cond_6
    const-wide/16 v10, 0x0

    cmp-long v10, v2, v10

    if-eqz v10, :cond_7

    invoke-virtual {p0}, Lrx/internal/producers/QueuedProducer;->get()J

    move-result-wide v10

    const-wide v12, 0x7fffffffffffffffL

    cmp-long v10, v10, v12

    if-eqz v10, :cond_7

    .line 180
    neg-long v10, v2

    invoke-virtual {p0, v10, v11}, Lrx/internal/producers/QueuedProducer;->addAndGet(J)J

    .line 182
    :cond_7
    iget-object v10, p0, Lrx/internal/producers/QueuedProducer;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v10

    if-nez v10, :cond_0

    goto :goto_0
.end method


# virtual methods
.method public final offer(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .local p0, "this":Lrx/internal/producers/QueuedProducer;, "Lrx/internal/producers/QueuedProducer<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    .line 85
    if-nez p1, :cond_1

    .line 86
    iget-object v1, p0, Lrx/internal/producers/QueuedProducer;->queue:Ljava/util/Queue;

    sget-object v2, Lrx/internal/producers/QueuedProducer;->NULL_SENTINEL:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 95
    :cond_0
    :goto_0
    return v0

    .line 90
    :cond_1
    iget-object v1, p0, Lrx/internal/producers/QueuedProducer;->queue:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    :cond_2
    invoke-direct {p0}, Lrx/internal/producers/QueuedProducer;->drain()V

    .line 95
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final onCompleted()V
    .locals 1

    .prologue
    .line 114
    .local p0, "this":Lrx/internal/producers/QueuedProducer;, "Lrx/internal/producers/QueuedProducer<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/producers/QueuedProducer;->done:Z

    .line 115
    invoke-direct {p0}, Lrx/internal/producers/QueuedProducer;->drain()V

    .line 116
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 107
    .local p0, "this":Lrx/internal/producers/QueuedProducer;, "Lrx/internal/producers/QueuedProducer<TT;>;"
    iput-object p1, p0, Lrx/internal/producers/QueuedProducer;->error:Ljava/lang/Throwable;

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/producers/QueuedProducer;->done:Z

    .line 109
    invoke-direct {p0}, Lrx/internal/producers/QueuedProducer;->drain()V

    .line 110
    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, "this":Lrx/internal/producers/QueuedProducer;, "Lrx/internal/producers/QueuedProducer<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1}, Lrx/internal/producers/QueuedProducer;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Lrx/exceptions/MissingBackpressureException;

    invoke-direct {v0}, Lrx/exceptions/MissingBackpressureException;-><init>()V

    invoke-virtual {p0, v0}, Lrx/internal/producers/QueuedProducer;->onError(Ljava/lang/Throwable;)V

    .line 103
    :cond_0
    return-void
.end method

.method public final request(J)V
    .locals 5
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/internal/producers/QueuedProducer;, "Lrx/internal/producers/QueuedProducer<TT;>;"
    const-wide/16 v2, 0x0

    .line 69
    cmp-long v0, p1, v2

    if-gez v0, :cond_0

    .line 70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "n >= 0 required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_0
    cmp-long v0, p1, v2

    if-lez v0, :cond_1

    .line 73
    invoke-static {p0, p1, p2}, Llhn;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 74
    invoke-direct {p0}, Lrx/internal/producers/QueuedProducer;->drain()V

    .line 76
    :cond_1
    return-void
.end method
