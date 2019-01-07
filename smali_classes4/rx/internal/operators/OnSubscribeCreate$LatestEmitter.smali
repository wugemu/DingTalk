.class final Lrx/internal/operators/OnSubscribeCreate$LatestEmitter;
.super Lrx/internal/operators/OnSubscribeCreate$BaseEmitter;
.source "OnSubscribeCreate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeCreate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LatestEmitter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/operators/OnSubscribeCreate$BaseEmitter",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x37d61f4a35bdda6fL


# instance fields
.field volatile done:Z

.field error:Ljava/lang/Throwable;

.field final queue:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final wip:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
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
    .line 417
    .local p0, "this":Lrx/internal/operators/OnSubscribeCreate$LatestEmitter;, "Lrx/internal/operators/OnSubscribeCreate$LatestEmitter<TT;>;"
    .local p1, "actual":Llgy;, "Llgy<-TT;>;"
    invoke-direct {p0, p1}, Lrx/internal/operators/OnSubscribeCreate$BaseEmitter;-><init>(Llgy;)V

    .line 418
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeCreate$LatestEmitter;->queue:Ljava/util/concurrent/atomic/AtomicReference;

    .line 419
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeCreate$LatestEmitter;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 420
    return-void
.end method


# virtual methods
.method final drain()V
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 454
    .local p0, "this":Lrx/internal/operators/OnSubscribeCreate$LatestEmitter;, "Lrx/internal/operators/OnSubscribeCreate$LatestEmitter<TT;>;"
    iget-object v9, p0, Lrx/internal/operators/OnSubscribeCreate$LatestEmitter;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v9

    if-eqz v9, :cond_1

    .line 527
    :cond_0
    :goto_0
    return-void

    .line 458
    :cond_1
    const/4 v6, 0x1

    .line 459
    .local v6, "missed":I
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeCreate$LatestEmitter;->actual:Llgy;

    .line 460
    .local v0, "a":Llgy;, "Llgy<-TT;>;"
    iget-object v8, p0, Lrx/internal/operators/OnSubscribeCreate$LatestEmitter;->queue:Ljava/util/concurrent/atomic/AtomicReference;

    .line 463
    .local v8, "q":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Object;>;"
    :goto_1
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeCreate$LatestEmitter;->get()J

    move-result-wide v10

    .line 464
    .local v10, "r":J
    const-wide/16 v2, 0x0

    .line 466
    .local v2, "e":J
    :goto_2
    cmp-long v9, v2, v10

    if-eqz v9, :cond_6

    .line 467
    invoke-virtual {v0}, Llgy;->isUnsubscribed()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 468
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    goto :goto_0

    .line 472
    :cond_2
    iget-boolean v1, p0, Lrx/internal/operators/OnSubscribeCreate$LatestEmitter;->done:Z

    .line 474
    .local v1, "d":Z
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 476
    .local v7, "o":Ljava/lang/Object;
    if-nez v7, :cond_3

    const/4 v4, 0x1

    .line 478
    .local v4, "empty":Z
    :goto_3
    if-eqz v1, :cond_5

    if-eqz v4, :cond_5

    .line 479
    iget-object v5, p0, Lrx/internal/operators/OnSubscribeCreate$LatestEmitter;->error:Ljava/lang/Throwable;

    .line 480
    .local v5, "ex":Ljava/lang/Throwable;
    if-eqz v5, :cond_4

    .line 481
    invoke-super {p0, v5}, Lrx/internal/operators/OnSubscribeCreate$BaseEmitter;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 476
    .end local v4    # "empty":Z
    .end local v5    # "ex":Ljava/lang/Throwable;
    :cond_3
    const/4 v4, 0x0

    goto :goto_3

    .line 483
    .restart local v4    # "empty":Z
    .restart local v5    # "ex":Ljava/lang/Throwable;
    :cond_4
    invoke-super {p0}, Lrx/internal/operators/OnSubscribeCreate$BaseEmitter;->onCompleted()V

    goto :goto_0

    .line 488
    .end local v5    # "ex":Ljava/lang/Throwable;
    :cond_5
    if-nez v4, :cond_6

    .line 492
    invoke-static {v7}, Lrx/internal/operators/NotificationLite;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v0, v9}, Llgy;->onNext(Ljava/lang/Object;)V

    .line 494
    const-wide/16 v12, 0x1

    add-long/2addr v2, v12

    .line 495
    goto :goto_2

    .line 497
    .end local v1    # "d":Z
    .end local v4    # "empty":Z
    .end local v7    # "o":Ljava/lang/Object;
    :cond_6
    cmp-long v9, v2, v10

    if-nez v9, :cond_a

    .line 498
    invoke-virtual {v0}, Llgy;->isUnsubscribed()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 499
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    goto :goto_0

    .line 503
    :cond_7
    iget-boolean v1, p0, Lrx/internal/operators/OnSubscribeCreate$LatestEmitter;->done:Z

    .line 505
    .restart local v1    # "d":Z
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_8

    const/4 v4, 0x1

    .line 507
    .restart local v4    # "empty":Z
    :goto_4
    if-eqz v1, :cond_a

    if-eqz v4, :cond_a

    .line 508
    iget-object v5, p0, Lrx/internal/operators/OnSubscribeCreate$LatestEmitter;->error:Ljava/lang/Throwable;

    .line 509
    .restart local v5    # "ex":Ljava/lang/Throwable;
    if-eqz v5, :cond_9

    .line 510
    invoke-super {p0, v5}, Lrx/internal/operators/OnSubscribeCreate$BaseEmitter;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 505
    .end local v4    # "empty":Z
    .end local v5    # "ex":Ljava/lang/Throwable;
    :cond_8
    const/4 v4, 0x0

    goto :goto_4

    .line 512
    .restart local v4    # "empty":Z
    .restart local v5    # "ex":Ljava/lang/Throwable;
    :cond_9
    invoke-super {p0}, Lrx/internal/operators/OnSubscribeCreate$BaseEmitter;->onCompleted()V

    goto :goto_0

    .line 518
    .end local v1    # "d":Z
    .end local v4    # "empty":Z
    .end local v5    # "ex":Ljava/lang/Throwable;
    :cond_a
    const-wide/16 v12, 0x0

    cmp-long v9, v2, v12

    if-eqz v9, :cond_b

    .line 519
    invoke-static {p0, v2, v3}, Llhn;->b(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 522
    :cond_b
    iget-object v9, p0, Lrx/internal/operators/OnSubscribeCreate$LatestEmitter;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v12, v6

    invoke-virtual {v9, v12}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v6

    .line 523
    if-eqz v6, :cond_0

    goto/16 :goto_1
.end method

.method public final onCompleted()V
    .locals 1

    .prologue
    .line 437
    .local p0, "this":Lrx/internal/operators/OnSubscribeCreate$LatestEmitter;, "Lrx/internal/operators/OnSubscribeCreate$LatestEmitter<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OnSubscribeCreate$LatestEmitter;->done:Z

    .line 438
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeCreate$LatestEmitter;->drain()V

    .line 439
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 430
    .local p0, "this":Lrx/internal/operators/OnSubscribeCreate$LatestEmitter;, "Lrx/internal/operators/OnSubscribeCreate$LatestEmitter<TT;>;"
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeCreate$LatestEmitter;->error:Ljava/lang/Throwable;

    .line 431
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OnSubscribeCreate$LatestEmitter;->done:Z

    .line 432
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeCreate$LatestEmitter;->drain()V

    .line 433
    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
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
    .line 424
    .local p0, "this":Lrx/internal/operators/OnSubscribeCreate$LatestEmitter;, "Lrx/internal/operators/OnSubscribeCreate$LatestEmitter<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeCreate$LatestEmitter;->queue:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1}, Lrx/internal/operators/NotificationLite;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 425
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeCreate$LatestEmitter;->drain()V

    .line 426
    return-void
.end method

.method final onRequested()V
    .locals 0

    .prologue
    .line 443
    .local p0, "this":Lrx/internal/operators/OnSubscribeCreate$LatestEmitter;, "Lrx/internal/operators/OnSubscribeCreate$LatestEmitter<TT;>;"
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeCreate$LatestEmitter;->drain()V

    .line 444
    return-void
.end method

.method final onUnsubscribed()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 448
    .local p0, "this":Lrx/internal/operators/OnSubscribeCreate$LatestEmitter;, "Lrx/internal/operators/OnSubscribeCreate$LatestEmitter<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeCreate$LatestEmitter;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 449
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeCreate$LatestEmitter;->queue:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 451
    :cond_0
    return-void
.end method
