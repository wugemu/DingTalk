.class final Lrx/internal/operators/OperatorGroupBy$State;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "OperatorGroupBy.java"

# interfaces
.implements Llgs$a;
.implements Llgu;
.implements Llgz;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorGroupBy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Llgs$a",
        "<TT;>;",
        "Llgu;",
        "Llgz;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x35762a4bbab31538L


# instance fields
.field final actual:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Llgy",
            "<-TT;>;>;"
        }
    .end annotation
.end field

.field final cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final delayError:Z

.field volatile done:Z

.field error:Ljava/lang/Throwable;

.field final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final once:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final parent:Lrx/internal/operators/OperatorGroupBy$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorGroupBy$b",
            "<*TK;TT;>;"
        }
    .end annotation
.end field

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

.field final requested:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>(ILrx/internal/operators/OperatorGroupBy$b;Ljava/lang/Object;Z)V
    .locals 1
    .param p1, "bufferSize"    # I
    .param p4, "delayError"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lrx/internal/operators/OperatorGroupBy$b",
            "<*TK;TT;>;TK;Z)V"
        }
    .end annotation

    .prologue
    .line 442
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$State;, "Lrx/internal/operators/OperatorGroupBy$State<TT;TK;>;"
    .local p2, "parent":Lrx/internal/operators/OperatorGroupBy$b;, "Lrx/internal/operators/OperatorGroupBy$b<*TK;TT;>;"
    .local p3, "key":Ljava/lang/Object;, "TK;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 443
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorGroupBy$State;->queue:Ljava/util/Queue;

    .line 444
    iput-object p2, p0, Lrx/internal/operators/OperatorGroupBy$State;->parent:Lrx/internal/operators/OperatorGroupBy$b;

    .line 445
    iput-object p3, p0, Lrx/internal/operators/OperatorGroupBy$State;->key:Ljava/lang/Object;

    .line 446
    iput-boolean p4, p0, Lrx/internal/operators/OperatorGroupBy$State;->delayError:Z

    .line 447
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorGroupBy$State;->cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 448
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorGroupBy$State;->actual:Ljava/util/concurrent/atomic/AtomicReference;

    .line 449
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorGroupBy$State;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 450
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorGroupBy$State;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 451
    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 421
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$State;, "Lrx/internal/operators/OperatorGroupBy$State<TT;TK;>;"
    check-cast p1, Llgy;

    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorGroupBy$State;->call(Llgy;)V

    return-void
.end method

.method public final call(Llgy;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llgy",
            "<-TT;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 480
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$State;, "Lrx/internal/operators/OperatorGroupBy$State<TT;TK;>;"
    .local p1, "s":Llgy;, "Llgy<-TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$State;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 481
    invoke-virtual {p1, p0}, Llgy;->a(Llgz;)V

    .line 482
    invoke-virtual {p1, p0}, Llgy;->a(Llgu;)V

    .line 483
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$State;->actual:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 484
    invoke-virtual {p0}, Lrx/internal/operators/OperatorGroupBy$State;->drain()V

    .line 488
    :goto_0
    return-void

    .line 486
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Only one Subscriber allowed!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Llgy;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method final checkTerminated(ZZLlgy;Z)Z
    .locals 4
    .param p1, "d"    # Z
    .param p2, "empty"    # Z
    .param p4, "delayError"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Llgy",
            "<-TT;>;Z)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$State;, "Lrx/internal/operators/OperatorGroupBy$State<TT;TK;>;"
    .local p3, "a":Llgy;, "Llgy<-TT;>;"
    const/4 v1, 0x1

    .line 566
    iget-object v2, p0, Lrx/internal/operators/OperatorGroupBy$State;->cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 567
    iget-object v2, p0, Lrx/internal/operators/OperatorGroupBy$State;->queue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->clear()V

    .line 568
    iget-object v2, p0, Lrx/internal/operators/OperatorGroupBy$State;->parent:Lrx/internal/operators/OperatorGroupBy$b;

    iget-object v3, p0, Lrx/internal/operators/OperatorGroupBy$State;->key:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lrx/internal/operators/OperatorGroupBy$b;->a(Ljava/lang/Object;)V

    .line 597
    :goto_0
    return v1

    .line 572
    :cond_0
    if-eqz p1, :cond_4

    .line 573
    if-eqz p4, :cond_2

    .line 574
    if-eqz p2, :cond_4

    .line 575
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$State;->error:Ljava/lang/Throwable;

    .line 576
    .local v0, "e":Ljava/lang/Throwable;
    if-eqz v0, :cond_1

    .line 577
    invoke-virtual {p3, v0}, Llgy;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 579
    :cond_1
    invoke-virtual {p3}, Llgy;->onCompleted()V

    goto :goto_0

    .line 584
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_2
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$State;->error:Ljava/lang/Throwable;

    .line 585
    .restart local v0    # "e":Ljava/lang/Throwable;
    if-eqz v0, :cond_3

    .line 586
    iget-object v2, p0, Lrx/internal/operators/OperatorGroupBy$State;->queue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->clear()V

    .line 587
    invoke-virtual {p3, v0}, Llgy;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 590
    :cond_3
    if-eqz p2, :cond_4

    .line 591
    invoke-virtual {p3}, Llgy;->onCompleted()V

    goto :goto_0

    .line 597
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method final drain()V
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 512
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$State;, "Lrx/internal/operators/OperatorGroupBy$State<TT;TK;>;"
    invoke-virtual {p0}, Lrx/internal/operators/OperatorGroupBy$State;->getAndIncrement()I

    move-result v11

    if-eqz v11, :cond_1

    .line 563
    :cond_0
    return-void

    .line 515
    :cond_1
    const/4 v6, 0x1

    .line 517
    .local v6, "missed":I
    iget-object v7, p0, Lrx/internal/operators/OperatorGroupBy$State;->queue:Ljava/util/Queue;

    .line 518
    .local v7, "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    iget-boolean v2, p0, Lrx/internal/operators/OperatorGroupBy$State;->delayError:Z

    .line 519
    .local v2, "delayError":Z
    iget-object v11, p0, Lrx/internal/operators/OperatorGroupBy$State;->actual:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llgy;

    .line 521
    .local v0, "a":Llgy;, "Llgy<-TT;>;"
    :cond_2
    :goto_0
    if-eqz v0, :cond_6

    .line 522
    iget-boolean v11, p0, Lrx/internal/operators/OperatorGroupBy$State;->done:Z

    invoke-interface {v7}, Ljava/util/Queue;->isEmpty()Z

    move-result v12

    invoke-virtual {p0, v11, v12, v0, v2}, Lrx/internal/operators/OperatorGroupBy$State;->checkTerminated(ZZLlgy;Z)Z

    move-result v11

    if-nez v11, :cond_0

    .line 526
    iget-object v11, p0, Lrx/internal/operators/OperatorGroupBy$State;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8

    .line 527
    .local v8, "r":J
    const-wide/16 v4, 0x0

    .line 529
    .local v4, "e":J
    :goto_1
    cmp-long v11, v4, v8

    if-eqz v11, :cond_4

    .line 530
    iget-boolean v1, p0, Lrx/internal/operators/OperatorGroupBy$State;->done:Z

    .line 531
    .local v1, "d":Z
    invoke-interface {v7}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v10

    .line 532
    .local v10, "v":Ljava/lang/Object;
    if-nez v10, :cond_3

    const/4 v3, 0x1

    .line 534
    .local v3, "empty":Z
    :goto_2
    invoke-virtual {p0, v1, v3, v0, v2}, Lrx/internal/operators/OperatorGroupBy$State;->checkTerminated(ZZLlgy;Z)Z

    move-result v11

    if-nez v11, :cond_0

    .line 538
    if-nez v3, :cond_4

    .line 542
    invoke-static {v10}, Lrx/internal/operators/NotificationLite;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v0, v11}, Llgy;->onNext(Ljava/lang/Object;)V

    .line 544
    const-wide/16 v12, 0x1

    add-long/2addr v4, v12

    .line 545
    goto :goto_1

    .line 532
    .end local v3    # "empty":Z
    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    .line 547
    .end local v1    # "d":Z
    .end local v10    # "v":Ljava/lang/Object;
    :cond_4
    const-wide/16 v12, 0x0

    cmp-long v11, v4, v12

    if-eqz v11, :cond_6

    .line 548
    const-wide v12, 0x7fffffffffffffffL

    cmp-long v11, v8, v12

    if-eqz v11, :cond_5

    .line 549
    iget-object v11, p0, Lrx/internal/operators/OperatorGroupBy$State;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v11, v4, v5}, Llhn;->b(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 551
    :cond_5
    iget-object v11, p0, Lrx/internal/operators/OperatorGroupBy$State;->parent:Lrx/internal/operators/OperatorGroupBy$b;

    iget-object v11, v11, Lrx/internal/operators/OperatorGroupBy$b;->k:Llhz;

    invoke-virtual {v11, v4, v5}, Llhz;->request(J)V

    .line 555
    .end local v4    # "e":J
    .end local v8    # "r":J
    :cond_6
    neg-int v11, v6

    invoke-virtual {p0, v11}, Lrx/internal/operators/OperatorGroupBy$State;->addAndGet(I)I

    move-result v6

    .line 556
    if-eqz v6, :cond_0

    .line 559
    if-nez v0, :cond_2

    .line 560
    iget-object v11, p0, Lrx/internal/operators/OperatorGroupBy$State;->actual:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "a":Llgy;, "Llgy<-TT;>;"
    check-cast v0, Llgy;

    .restart local v0    # "a":Llgy;, "Llgy<-TT;>;"
    goto :goto_0
.end method

.method public final isUnsubscribed()Z
    .locals 1

    .prologue
    .line 466
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$State;, "Lrx/internal/operators/OperatorGroupBy$State<TT;TK;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$State;->cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final onComplete()V
    .locals 1

    .prologue
    .line 507
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$State;, "Lrx/internal/operators/OperatorGroupBy$State<TT;TK;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorGroupBy$State;->done:Z

    .line 508
    invoke-virtual {p0}, Lrx/internal/operators/OperatorGroupBy$State;->drain()V

    .line 509
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 501
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$State;, "Lrx/internal/operators/OperatorGroupBy$State<TT;TK;>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorGroupBy$State;->error:Ljava/lang/Throwable;

    .line 502
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorGroupBy$State;->done:Z

    .line 503
    invoke-virtual {p0}, Lrx/internal/operators/OperatorGroupBy$State;->drain()V

    .line 504
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
    .line 491
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$State;, "Lrx/internal/operators/OperatorGroupBy$State<TT;TK;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_0

    .line 492
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorGroupBy$State;->error:Ljava/lang/Throwable;

    .line 493
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorGroupBy$State;->done:Z

    .line 497
    :goto_0
    invoke-virtual {p0}, Lrx/internal/operators/OperatorGroupBy$State;->drain()V

    .line 498
    return-void

    .line 495
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$State;->queue:Ljava/util/Queue;

    invoke-static {p1}, Lrx/internal/operators/NotificationLite;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final request(J)V
    .locals 5
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$State;, "Lrx/internal/operators/OperatorGroupBy$State<TT;TK;>;"
    const-wide/16 v2, 0x0

    .line 455
    cmp-long v0, p1, v2

    if-gez v0, :cond_0

    .line 456
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "n >= required but it was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 458
    :cond_0
    cmp-long v0, p1, v2

    if-eqz v0, :cond_1

    .line 459
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$State;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Llhn;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 460
    invoke-virtual {p0}, Lrx/internal/operators/OperatorGroupBy$State;->drain()V

    .line 462
    :cond_1
    return-void
.end method

.method public final unsubscribe()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 471
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$State;, "Lrx/internal/operators/OperatorGroupBy$State<TT;TK;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$State;->cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 472
    invoke-virtual {p0}, Lrx/internal/operators/OperatorGroupBy$State;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 473
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$State;->parent:Lrx/internal/operators/OperatorGroupBy$b;

    iget-object v1, p0, Lrx/internal/operators/OperatorGroupBy$State;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lrx/internal/operators/OperatorGroupBy$b;->a(Ljava/lang/Object;)V

    .line 476
    :cond_0
    return-void
.end method
