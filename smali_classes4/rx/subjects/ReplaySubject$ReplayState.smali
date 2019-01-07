.class final Lrx/subjects/ReplaySubject$ReplayState;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "ReplaySubject.java"

# interfaces
.implements Llgs$a;
.implements Llgt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/subjects/ReplaySubject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ReplayState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference",
        "<[",
        "Lrx/subjects/ReplaySubject$ReplayProducer",
        "<TT;>;>;",
        "Llgs$a",
        "<TT;>;",
        "Llgt",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final EMPTY:[Lrx/subjects/ReplaySubject$ReplayProducer;

.field static final TERMINATED:[Lrx/subjects/ReplaySubject$ReplayProducer;

.field private static final serialVersionUID:J = 0x529b0a217109d450L


# instance fields
.field final buffer:Lrx/subjects/ReplaySubject$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/ReplaySubject$a",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 370
    new-array v0, v1, [Lrx/subjects/ReplaySubject$ReplayProducer;

    sput-object v0, Lrx/subjects/ReplaySubject$ReplayState;->EMPTY:[Lrx/subjects/ReplaySubject$ReplayProducer;

    .line 372
    new-array v0, v1, [Lrx/subjects/ReplaySubject$ReplayProducer;

    sput-object v0, Lrx/subjects/ReplaySubject$ReplayState;->TERMINATED:[Lrx/subjects/ReplaySubject$ReplayProducer;

    return-void
.end method

.method public constructor <init>(Lrx/subjects/ReplaySubject$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/subjects/ReplaySubject$a",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 375
    .local p0, "this":Lrx/subjects/ReplaySubject$ReplayState;, "Lrx/subjects/ReplaySubject$ReplayState<TT;>;"
    .local p1, "buffer":Lrx/subjects/ReplaySubject$a;, "Lrx/subjects/ReplaySubject$a<TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 376
    iput-object p1, p0, Lrx/subjects/ReplaySubject$ReplayState;->buffer:Lrx/subjects/ReplaySubject$a;

    .line 377
    sget-object v0, Lrx/subjects/ReplaySubject$ReplayState;->EMPTY:[Lrx/subjects/ReplaySubject$ReplayProducer;

    invoke-virtual {p0, v0}, Lrx/subjects/ReplaySubject$ReplayState;->lazySet(Ljava/lang/Object;)V

    .line 378
    return-void
.end method


# virtual methods
.method final add(Lrx/subjects/ReplaySubject$ReplayProducer;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/subjects/ReplaySubject$ReplayProducer",
            "<TT;>;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .local p0, "this":Lrx/subjects/ReplaySubject$ReplayState;, "Lrx/subjects/ReplaySubject$ReplayState<TT;>;"
    .local p1, "rp":Lrx/subjects/ReplaySubject$ReplayProducer;, "Lrx/subjects/ReplaySubject$ReplayProducer<TT;>;"
    const/4 v3, 0x0

    .line 397
    :cond_0
    invoke-virtual {p0}, Lrx/subjects/ReplaySubject$ReplayState;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/subjects/ReplaySubject$ReplayProducer;

    .line 398
    .local v0, "a":[Lrx/subjects/ReplaySubject$ReplayProducer;, "[Lrx/subjects/ReplaySubject$ReplayProducer<TT;>;"
    sget-object v4, Lrx/subjects/ReplaySubject$ReplayState;->TERMINATED:[Lrx/subjects/ReplaySubject$ReplayProducer;

    if-ne v0, v4, :cond_1

    .line 410
    :goto_0
    return v3

    .line 402
    :cond_1
    array-length v2, v0

    .line 405
    .local v2, "n":I
    add-int/lit8 v4, v2, 0x1

    new-array v1, v4, [Lrx/subjects/ReplaySubject$ReplayProducer;

    .line 406
    .local v1, "b":[Lrx/subjects/ReplaySubject$ReplayProducer;, "[Lrx/subjects/ReplaySubject$ReplayProducer<TT;>;"
    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 407
    aput-object p1, v1, v2

    .line 409
    invoke-virtual {p0, v0, v1}, Lrx/subjects/ReplaySubject$ReplayState;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 410
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 360
    .local p0, "this":Lrx/subjects/ReplaySubject$ReplayState;, "Lrx/subjects/ReplaySubject$ReplayState<TT;>;"
    check-cast p1, Llgy;

    invoke-virtual {p0, p1}, Lrx/subjects/ReplaySubject$ReplayState;->call(Llgy;)V

    return-void
.end method

.method public final call(Llgy;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llgy",
            "<-TT;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 382
    .local p0, "this":Lrx/subjects/ReplaySubject$ReplayState;, "Lrx/subjects/ReplaySubject$ReplayState<TT;>;"
    .local p1, "t":Llgy;, "Llgy<-TT;>;"
    new-instance v0, Lrx/subjects/ReplaySubject$ReplayProducer;

    invoke-direct {v0, p1, p0}, Lrx/subjects/ReplaySubject$ReplayProducer;-><init>(Llgy;Lrx/subjects/ReplaySubject$ReplayState;)V

    .line 383
    .local v0, "rp":Lrx/subjects/ReplaySubject$ReplayProducer;, "Lrx/subjects/ReplaySubject$ReplayProducer<TT;>;"
    invoke-virtual {p1, v0}, Llgy;->a(Llgz;)V

    .line 384
    invoke-virtual {p1, v0}, Llgy;->a(Llgu;)V

    .line 386
    invoke-virtual {p0, v0}, Lrx/subjects/ReplaySubject$ReplayState;->add(Lrx/subjects/ReplaySubject$ReplayProducer;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 387
    invoke-virtual {v0}, Lrx/subjects/ReplaySubject$ReplayProducer;->isUnsubscribed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 388
    invoke-virtual {p0, v0}, Lrx/subjects/ReplaySubject$ReplayState;->remove(Lrx/subjects/ReplaySubject$ReplayProducer;)V

    .line 393
    :goto_0
    return-void

    .line 392
    :cond_0
    iget-object v1, p0, Lrx/subjects/ReplaySubject$ReplayState;->buffer:Lrx/subjects/ReplaySubject$a;

    invoke-interface {v1, v0}, Lrx/subjects/ReplaySubject$a;->a(Lrx/subjects/ReplaySubject$ReplayProducer;)V

    goto :goto_0
.end method

.method final isTerminated()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 495
    .local p0, "this":Lrx/subjects/ReplaySubject$ReplayState;, "Lrx/subjects/ReplaySubject$ReplayState<TT;>;"
    invoke-virtual {p0}, Lrx/subjects/ReplaySubject$ReplayState;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lrx/subjects/ReplaySubject$ReplayState;->TERMINATED:[Lrx/subjects/ReplaySubject$ReplayProducer;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onCompleted()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 485
    .local p0, "this":Lrx/subjects/ReplaySubject$ReplayState;, "Lrx/subjects/ReplaySubject$ReplayState<TT;>;"
    iget-object v0, p0, Lrx/subjects/ReplaySubject$ReplayState;->buffer:Lrx/subjects/ReplaySubject$a;

    .line 487
    .local v0, "b":Lrx/subjects/ReplaySubject$a;, "Lrx/subjects/ReplaySubject$a<TT;>;"
    invoke-interface {v0}, Lrx/subjects/ReplaySubject$a;->a()V

    .line 488
    sget-object v2, Lrx/subjects/ReplaySubject$ReplayState;->TERMINATED:[Lrx/subjects/ReplaySubject$ReplayProducer;

    invoke-virtual {p0, v2}, Lrx/subjects/ReplaySubject$ReplayState;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lrx/subjects/ReplaySubject$ReplayProducer;

    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v2, v3

    .line 489
    .local v1, "rp":Lrx/subjects/ReplaySubject$ReplayProducer;, "Lrx/subjects/ReplaySubject$ReplayProducer<TT;>;"
    invoke-interface {v0, v1}, Lrx/subjects/ReplaySubject$a;->a(Lrx/subjects/ReplaySubject$ReplayProducer;)V

    .line 488
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 491
    .end local v1    # "rp":Lrx/subjects/ReplaySubject$ReplayProducer;, "Lrx/subjects/ReplaySubject$ReplayProducer<TT;>;"
    :cond_0
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 7
    .param p1, "e"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 464
    .local p0, "this":Lrx/subjects/ReplaySubject$ReplayState;, "Lrx/subjects/ReplaySubject$ReplayState<TT;>;"
    iget-object v0, p0, Lrx/subjects/ReplaySubject$ReplayState;->buffer:Lrx/subjects/ReplaySubject$a;

    .line 466
    .local v0, "b":Lrx/subjects/ReplaySubject$a;, "Lrx/subjects/ReplaySubject$a<TT;>;"
    invoke-interface {v0, p1}, Lrx/subjects/ReplaySubject$a;->a(Ljava/lang/Throwable;)V

    .line 467
    const/4 v1, 0x0

    .line 468
    .local v1, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    sget-object v4, Lrx/subjects/ReplaySubject$ReplayState;->TERMINATED:[Lrx/subjects/ReplaySubject$ReplayProducer;

    invoke-virtual {p0, v4}, Lrx/subjects/ReplaySubject$ReplayState;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lrx/subjects/ReplaySubject$ReplayProducer;

    array-length v6, v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v3, v4, v5

    .line 470
    .local v3, "rp":Lrx/subjects/ReplaySubject$ReplayProducer;, "Lrx/subjects/ReplaySubject$ReplayProducer<TT;>;"
    :try_start_0
    invoke-interface {v0, v3}, Lrx/subjects/ReplaySubject$a;->a(Lrx/subjects/ReplaySubject$ReplayProducer;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 468
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 471
    :catch_0
    move-exception v2

    .line 472
    .local v2, "ex":Ljava/lang/Throwable;
    if-nez v1, :cond_0

    .line 473
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 475
    .restart local v1    # "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    :cond_0
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 479
    .end local v2    # "ex":Ljava/lang/Throwable;
    .end local v3    # "rp":Lrx/subjects/ReplaySubject$ReplayProducer;, "Lrx/subjects/ReplaySubject$ReplayProducer<TT;>;"
    :cond_1
    invoke-static {v1}, Llhe;->a(Ljava/util/List;)V

    .line 480
    return-void
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
    .line 453
    .local p0, "this":Lrx/subjects/ReplaySubject$ReplayState;, "Lrx/subjects/ReplaySubject$ReplayState<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/subjects/ReplaySubject$ReplayState;->buffer:Lrx/subjects/ReplaySubject$a;

    .line 455
    .local v0, "b":Lrx/subjects/ReplaySubject$a;, "Lrx/subjects/ReplaySubject$a<TT;>;"
    invoke-interface {v0, p1}, Lrx/subjects/ReplaySubject$a;->a(Ljava/lang/Object;)V

    .line 456
    invoke-virtual {p0}, Lrx/subjects/ReplaySubject$ReplayState;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lrx/subjects/ReplaySubject$ReplayProducer;

    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v2, v3

    .line 457
    .local v1, "rp":Lrx/subjects/ReplaySubject$ReplayProducer;, "Lrx/subjects/ReplaySubject$ReplayProducer<TT;>;"
    invoke-interface {v0, v1}, Lrx/subjects/ReplaySubject$a;->a(Lrx/subjects/ReplaySubject$ReplayProducer;)V

    .line 456
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 459
    .end local v1    # "rp":Lrx/subjects/ReplaySubject$ReplayProducer;, "Lrx/subjects/ReplaySubject$ReplayProducer<TT;>;"
    :cond_0
    return-void
.end method

.method final remove(Lrx/subjects/ReplaySubject$ReplayProducer;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/subjects/ReplaySubject$ReplayProducer",
            "<TT;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .local p0, "this":Lrx/subjects/ReplaySubject$ReplayState;, "Lrx/subjects/ReplaySubject$ReplayState<TT;>;"
    .local p1, "rp":Lrx/subjects/ReplaySubject$ReplayProducer;, "Lrx/subjects/ReplaySubject$ReplayProducer<TT;>;"
    const/4 v7, 0x0

    .line 418
    :cond_0
    invoke-virtual {p0}, Lrx/subjects/ReplaySubject$ReplayState;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/subjects/ReplaySubject$ReplayProducer;

    .line 419
    .local v0, "a":[Lrx/subjects/ReplaySubject$ReplayProducer;, "[Lrx/subjects/ReplaySubject$ReplayProducer<TT;>;"
    sget-object v5, Lrx/subjects/ReplaySubject$ReplayState;->TERMINATED:[Lrx/subjects/ReplaySubject$ReplayProducer;

    if-eq v0, v5, :cond_1

    sget-object v5, Lrx/subjects/ReplaySubject$ReplayState;->EMPTY:[Lrx/subjects/ReplaySubject$ReplayProducer;

    if-ne v0, v5, :cond_2

    .line 446
    :cond_1
    :goto_0
    return-void

    .line 423
    :cond_2
    array-length v4, v0

    .line 425
    .local v4, "n":I
    const/4 v3, -0x1

    .line 426
    .local v3, "j":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_3

    .line 427
    aget-object v5, v0, v2

    if-ne v5, p1, :cond_4

    .line 428
    move v3, v2

    .line 433
    :cond_3
    if-ltz v3, :cond_1

    .line 438
    const/4 v5, 0x1

    if-ne v4, v5, :cond_5

    .line 439
    sget-object v1, Lrx/subjects/ReplaySubject$ReplayState;->EMPTY:[Lrx/subjects/ReplaySubject$ReplayProducer;

    .line 445
    .local v1, "b":[Lrx/subjects/ReplaySubject$ReplayProducer;, "[Lrx/subjects/ReplaySubject$ReplayProducer<TT;>;"
    :goto_2
    invoke-virtual {p0, v0, v1}, Lrx/subjects/ReplaySubject$ReplayState;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    .line 426
    .end local v1    # "b":[Lrx/subjects/ReplaySubject$ReplayProducer;, "[Lrx/subjects/ReplaySubject$ReplayProducer<TT;>;"
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 441
    :cond_5
    add-int/lit8 v5, v4, -0x1

    new-array v1, v5, [Lrx/subjects/ReplaySubject$ReplayProducer;

    .line 442
    .restart local v1    # "b":[Lrx/subjects/ReplaySubject$ReplayProducer;, "[Lrx/subjects/ReplaySubject$ReplayProducer<TT;>;"
    invoke-static {v0, v7, v1, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 443
    add-int/lit8 v5, v3, 0x1

    sub-int v6, v4, v3

    add-int/lit8 v6, v6, -0x1

    invoke-static {v0, v5, v1, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2
.end method
