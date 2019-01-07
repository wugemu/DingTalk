.class final Lrx/observables/SyncOnSubscribe$SubscriptionProducer;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "SyncOnSubscribe.java"

# interfaces
.implements Llgt;
.implements Llgu;
.implements Llgz;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/observables/SyncOnSubscribe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SubscriptionProducer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Llgt",
        "<TT;>;",
        "Llgu;",
        "Llgz;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x33dc0208097b2408L


# instance fields
.field private final actualSubscriber:Llgy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llgy",
            "<-TT;>;"
        }
    .end annotation
.end field

.field private hasTerminated:Z

.field private onNextCalled:Z

.field private final parent:Lrx/observables/SyncOnSubscribe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/observables/SyncOnSubscribe",
            "<TS;TT;>;"
        }
    .end annotation
.end field

.field private state:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Llgy;Lrx/observables/SyncOnSubscribe;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llgy",
            "<-TT;>;",
            "Lrx/observables/SyncOnSubscribe",
            "<TS;TT;>;TS;)V"
        }
    .end annotation

    .prologue
    .line 339
    .local p0, "this":Lrx/observables/SyncOnSubscribe$SubscriptionProducer;, "Lrx/observables/SyncOnSubscribe$SubscriptionProducer<TS;TT;>;"
    .local p1, "subscriber":Llgy;, "Llgy<-TT;>;"
    .local p2, "parent":Lrx/observables/SyncOnSubscribe;, "Lrx/observables/SyncOnSubscribe<TS;TT;>;"
    .local p3, "state":Ljava/lang/Object;, "TS;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 340
    iput-object p1, p0, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->actualSubscriber:Llgy;

    .line 341
    iput-object p2, p0, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->parent:Lrx/observables/SyncOnSubscribe;

    .line 342
    iput-object p3, p0, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->state:Ljava/lang/Object;

    .line 343
    return-void
.end method

.method private doUnsubscribe()V
    .locals 0

    .prologue
    .line 385
    .local p0, "this":Lrx/observables/SyncOnSubscribe$SubscriptionProducer;, "Lrx/observables/SyncOnSubscribe$SubscriptionProducer<TS;TT;>;"
    return-void
.end method

.method private fastPath()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 400
    .local p0, "this":Lrx/observables/SyncOnSubscribe$SubscriptionProducer;, "Lrx/observables/SyncOnSubscribe$SubscriptionProducer<TS;TT;>;"
    iget-object v2, p0, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->parent:Lrx/observables/SyncOnSubscribe;

    .line 401
    .local v2, "p":Lrx/observables/SyncOnSubscribe;, "Lrx/observables/SyncOnSubscribe<TS;TT;>;"
    iget-object v0, p0, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->actualSubscriber:Llgy;

    .line 405
    .local v0, "a":Llgy;, "Llgy<-TT;>;"
    :cond_0
    const/4 v3, 0x0

    :try_start_0
    iput-boolean v3, p0, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->onNextCalled:Z

    .line 406
    invoke-direct {p0, v2}, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->nextIteration(Lrx/observables/SyncOnSubscribe;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 411
    invoke-direct {p0}, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->tryUnsubscribe()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 412
    :goto_0
    return-void

    .line 407
    :catch_0
    move-exception v1

    .line 408
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-direct {p0, v0, v1}, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->handleThrownError(Llgy;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private handleThrownError(Llgy;Ljava/lang/Throwable;)V
    .locals 1
    .param p2, "ex"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llgy",
            "<-TT;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 418
    .local p0, "this":Lrx/observables/SyncOnSubscribe$SubscriptionProducer;, "Lrx/observables/SyncOnSubscribe$SubscriptionProducer<TS;TT;>;"
    .local p1, "a":Llgy;, "Llgy<-TT;>;"
    iget-boolean v0, p0, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->hasTerminated:Z

    if-eqz v0, :cond_0

    .line 419
    invoke-static {p2}, Llkm;->a(Ljava/lang/Throwable;)V

    .line 425
    :goto_0
    return-void

    .line 421
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->hasTerminated:Z

    .line 422
    invoke-virtual {p1, p2}, Llgy;->onError(Ljava/lang/Throwable;)V

    .line 423
    invoke-virtual {p0}, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->unsubscribe()V

    goto :goto_0
.end method

.method private nextIteration(Lrx/observables/SyncOnSubscribe;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/observables/SyncOnSubscribe",
            "<TS;TT;>;)V"
        }
    .end annotation

    .prologue
    .line 458
    .local p0, "this":Lrx/observables/SyncOnSubscribe$SubscriptionProducer;, "Lrx/observables/SyncOnSubscribe$SubscriptionProducer<TS;TT;>;"
    .local p1, "parent":Lrx/observables/SyncOnSubscribe;, "Lrx/observables/SyncOnSubscribe<TS;TT;>;"
    invoke-virtual {p1}, Lrx/observables/SyncOnSubscribe;->a()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->state:Ljava/lang/Object;

    .line 459
    return-void
.end method

.method private slowPath(J)V
    .locals 13
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/observables/SyncOnSubscribe$SubscriptionProducer;, "Lrx/observables/SyncOnSubscribe$SubscriptionProducer<TS;TT;>;"
    const-wide/16 v10, 0x0

    .line 428
    iget-object v6, p0, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->parent:Lrx/observables/SyncOnSubscribe;

    .line 429
    .local v6, "p":Lrx/observables/SyncOnSubscribe;, "Lrx/observables/SyncOnSubscribe<TS;TT;>;"
    iget-object v0, p0, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->actualSubscriber:Llgy;

    .line 430
    .local v0, "a":Llgy;, "Llgy<-TT;>;"
    move-wide v4, p1

    .line 432
    .local v4, "numRequested":J
    :cond_0
    move-wide v2, v4

    .line 435
    .local v2, "numRemaining":J
    :cond_1
    const/4 v7, 0x0

    :try_start_0
    iput-boolean v7, p0, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->onNextCalled:Z

    .line 436
    invoke-direct {p0, v6}, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->nextIteration(Lrx/observables/SyncOnSubscribe;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 441
    invoke-direct {p0}, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->tryUnsubscribe()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 455
    :goto_0
    return-void

    .line 437
    :catch_0
    move-exception v1

    .line 438
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-direct {p0, v0, v1}, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->handleThrownError(Llgy;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 444
    .end local v1    # "ex":Ljava/lang/Throwable;
    :cond_2
    iget-boolean v7, p0, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->onNextCalled:Z

    if-eqz v7, :cond_3

    .line 445
    const-wide/16 v8, 0x1

    sub-long/2addr v2, v8

    .line 447
    :cond_3
    cmp-long v7, v2, v10

    if-nez v7, :cond_1

    .line 448
    neg-long v8, v4

    invoke-virtual {p0, v8, v9}, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->addAndGet(J)J

    move-result-wide v4

    .line 449
    cmp-long v7, v4, v10

    if-gtz v7, :cond_0

    .line 454
    invoke-direct {p0}, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->tryUnsubscribe()Z

    goto :goto_0
.end method

.method private tryUnsubscribe()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .local p0, "this":Lrx/observables/SyncOnSubscribe$SubscriptionProducer;, "Lrx/observables/SyncOnSubscribe$SubscriptionProducer<TS;TT;>;"
    const-wide/16 v2, -0x1

    .line 371
    iget-boolean v0, p0, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->hasTerminated:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->get()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 372
    :cond_0
    invoke-virtual {p0, v2, v3}, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->set(J)V

    .line 373
    invoke-direct {p0}, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->doUnsubscribe()V

    .line 374
    const/4 v0, 0x1

    .line 376
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final isUnsubscribed()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 347
    .local p0, "this":Lrx/observables/SyncOnSubscribe$SubscriptionProducer;, "Lrx/observables/SyncOnSubscribe$SubscriptionProducer<TS;TT;>;"
    invoke-virtual {p0}, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onCompleted()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 463
    .local p0, "this":Lrx/observables/SyncOnSubscribe$SubscriptionProducer;, "Lrx/observables/SyncOnSubscribe$SubscriptionProducer<TS;TT;>;"
    iget-boolean v0, p0, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->hasTerminated:Z

    if-eqz v0, :cond_0

    .line 464
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Terminal event already emitted."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 466
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->hasTerminated:Z

    .line 467
    iget-object v0, p0, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->actualSubscriber:Llgy;

    invoke-virtual {v0}, Llgy;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 468
    iget-object v0, p0, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->actualSubscriber:Llgy;

    invoke-virtual {v0}, Llgy;->onCompleted()V

    .line 470
    :cond_1
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 474
    .local p0, "this":Lrx/observables/SyncOnSubscribe$SubscriptionProducer;, "Lrx/observables/SyncOnSubscribe$SubscriptionProducer<TS;TT;>;"
    iget-boolean v0, p0, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->hasTerminated:Z

    if-eqz v0, :cond_0

    .line 475
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Terminal event already emitted."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 477
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->hasTerminated:Z

    .line 478
    iget-object v0, p0, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->actualSubscriber:Llgy;

    invoke-virtual {v0}, Llgy;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 479
    iget-object v0, p0, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->actualSubscriber:Llgy;

    invoke-virtual {v0, p1}, Llgy;->onError(Ljava/lang/Throwable;)V

    .line 481
    :cond_1
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
    .line 485
    .local p0, "this":Lrx/observables/SyncOnSubscribe$SubscriptionProducer;, "Lrx/observables/SyncOnSubscribe$SubscriptionProducer<TS;TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->onNextCalled:Z

    if-eqz v0, :cond_0

    .line 486
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "onNext called multiple times!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 488
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->onNextCalled:Z

    .line 489
    iget-object v0, p0, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->actualSubscriber:Llgy;

    invoke-virtual {v0, p1}, Llgy;->onNext(Ljava/lang/Object;)V

    .line 490
    return-void
.end method

.method public final request(J)V
    .locals 5
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/observables/SyncOnSubscribe$SubscriptionProducer;, "Lrx/observables/SyncOnSubscribe$SubscriptionProducer<TS;TT;>;"
    const-wide/16 v2, 0x0

    .line 390
    cmp-long v0, p1, v2

    if-lez v0, :cond_0

    invoke-static {p0, p1, p2}, Llhn;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 391
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 392
    invoke-direct {p0}, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->fastPath()V

    .line 397
    :cond_0
    :goto_0
    return-void

    .line 394
    :cond_1
    invoke-direct {p0, p1, p2}, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->slowPath(J)V

    goto :goto_0
.end method

.method public final unsubscribe()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 353
    .local p0, "this":Lrx/observables/SyncOnSubscribe$SubscriptionProducer;, "Lrx/observables/SyncOnSubscribe$SubscriptionProducer<TS;TT;>;"
    :cond_0
    invoke-virtual {p0}, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->get()J

    move-result-wide v0

    .line 354
    .local v0, "requestCount":J
    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    invoke-virtual {p0, v2, v3, v4, v5}, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->compareAndSet(JJ)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 355
    invoke-direct {p0}, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->doUnsubscribe()V

    .line 362
    :goto_0
    return-void

    .line 358
    :cond_1
    const-wide/16 v2, -0x2

    invoke-virtual {p0, v0, v1, v2, v3}, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->compareAndSet(JJ)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method
