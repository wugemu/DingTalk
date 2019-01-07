.class final Lrx/internal/operators/OperatorMerge$b;
.super Llgy;
.source "OperatorMerge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorMerge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Llgy",
        "<",
        "Llgs",
        "<+TT;>;>;"
    }
.end annotation


# static fields
.field static final p:[Lrx/internal/operators/OperatorMerge$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lrx/internal/operators/OperatorMerge$a",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field final a:Llgy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llgy",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final b:Z

.field final c:I

.field d:Lrx/internal/operators/OperatorMerge$MergeProducer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorMerge$MergeProducer",
            "<TT;>;"
        }
    .end annotation
.end field

.field volatile e:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field volatile f:Llkx;

.field volatile g:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field volatile h:Z

.field i:Z

.field j:Z

.field final k:Ljava/lang/Object;

.field volatile l:[Lrx/internal/operators/OperatorMerge$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lrx/internal/operators/OperatorMerge$a",
            "<*>;"
        }
    .end annotation
.end field

.field m:J

.field n:J

.field o:I

.field final q:I

.field r:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x0

    new-array v0, v0, [Lrx/internal/operators/OperatorMerge$a;

    sput-object v0, Lrx/internal/operators/OperatorMerge$b;->p:[Lrx/internal/operators/OperatorMerge$a;

    return-void
.end method

.method public constructor <init>(Llgy;ZI)V
    .locals 2
    .param p2, "delayErrors"    # Z
    .param p3, "maxConcurrent"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llgy",
            "<-TT;>;ZI)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorMerge$b;, "Lrx/internal/operators/OperatorMerge$b<TT;>;"
    .local p1, "child":Llgy;, "Llgy<-TT;>;"
    const v1, 0x7fffffff

    .line 188
    invoke-direct {p0}, Llgy;-><init>()V

    .line 189
    iput-object p1, p0, Lrx/internal/operators/OperatorMerge$b;->a:Llgy;

    .line 190
    iput-boolean p2, p0, Lrx/internal/operators/OperatorMerge$b;->b:Z

    .line 191
    iput p3, p0, Lrx/internal/operators/OperatorMerge$b;->c:I

    .line 192
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorMerge$b;->k:Ljava/lang/Object;

    .line 193
    sget-object v0, Lrx/internal/operators/OperatorMerge$b;->p:[Lrx/internal/operators/OperatorMerge$a;

    iput-object v0, p0, Lrx/internal/operators/OperatorMerge$b;->l:[Lrx/internal/operators/OperatorMerge$a;

    .line 194
    if-ne p3, v1, :cond_0

    .line 195
    iput v1, p0, Lrx/internal/operators/OperatorMerge$b;->q:I

    .line 196
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorMerge$b;->a(J)V

    .line 201
    :goto_0
    return-void

    .line 198
    :cond_0
    const/4 v0, 0x1

    shr-int/lit8 v1, p3, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lrx/internal/operators/OperatorMerge$b;->q:I

    .line 199
    int-to-long v0, p3

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorMerge$b;->a(J)V

    goto :goto_0
.end method

.method private a(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 483
    .local p0, "this":Lrx/internal/operators/OperatorMerge$b;, "Lrx/internal/operators/OperatorMerge$b<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lrx/internal/operators/OperatorMerge$b;->e:Ljava/util/Queue;

    .line 484
    .local v1, "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    if-nez v1, :cond_0

    .line 485
    iget v0, p0, Lrx/internal/operators/OperatorMerge$b;->c:I

    .line 486
    .local v0, "mc":I
    const v2, 0x7fffffff

    if-ne v0, v2, :cond_2

    .line 487
    new-instance v1, Lliv;

    .end local v1    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    sget v2, Llin;->b:I

    invoke-direct {v1, v2}, Lliv;-><init>(I)V

    .line 499
    .restart local v1    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    :goto_0
    iput-object v1, p0, Lrx/internal/operators/OperatorMerge$b;->e:Ljava/util/Queue;

    .line 501
    .end local v0    # "mc":I
    :cond_0
    invoke-static {p1}, Lrx/internal/operators/NotificationLite;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 502
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMerge$b;->unsubscribe()V

    .line 503
    new-instance v2, Lrx/exceptions/MissingBackpressureException;

    invoke-direct {v2}, Lrx/exceptions/MissingBackpressureException;-><init>()V

    invoke-static {v2, p1}, Lrx/exceptions/OnErrorThrowable;->addValueAsLastCause(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lrx/internal/operators/OperatorMerge$b;->onError(Ljava/lang/Throwable;)V

    .line 505
    :cond_1
    return-void

    .line 3042
    .restart local v0    # "mc":I
    :cond_2
    add-int/lit8 v2, v0, -0x1

    and-int/2addr v2, v0

    if-nez v2, :cond_3

    const/4 v2, 0x1

    .line 489
    :goto_1
    if-eqz v2, :cond_5

    .line 490
    invoke-static {}, Llkb;->a()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 491
    new-instance v1, Lljn;

    .end local v1    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    invoke-direct {v1, v0}, Lljn;-><init>(I)V

    .restart local v1    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    goto :goto_0

    .line 3042
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 493
    :cond_4
    new-instance v1, Llis;

    .end local v1    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    invoke-direct {v1, v0}, Llis;-><init>(I)V

    .restart local v1    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    goto :goto_0

    .line 496
    :cond_5
    new-instance v1, Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;

    .end local v1    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    invoke-direct {v1, v0}, Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;-><init>(I)V

    .restart local v1    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    goto :goto_0
.end method

.method private a(Ljava/lang/Object;J)V
    .locals 6
    .param p2, "r"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)V"
        }
    .end annotation

    .prologue
    .line 508
    .local p0, "this":Lrx/internal/operators/OperatorMerge$b;, "Lrx/internal/operators/OperatorMerge$b<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x0

    .line 511
    .local v1, "skipFinal":Z
    :try_start_0
    iget-object v3, p0, Lrx/internal/operators/OperatorMerge$b;->a:Llgy;

    invoke-virtual {v3, p1}, Llgy;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 522
    :goto_0
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v3, p2, v4

    if-eqz v3, :cond_0

    .line 523
    :try_start_1
    iget-object v3, p0, Lrx/internal/operators/OperatorMerge$b;->d:Lrx/internal/operators/OperatorMerge$MergeProducer;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lrx/internal/operators/OperatorMerge$MergeProducer;->produced(I)J

    .line 526
    :cond_0
    iget v3, p0, Lrx/internal/operators/OperatorMerge$b;->r:I

    add-int/lit8 v0, v3, 0x1

    .line 527
    .local v0, "produced":I
    iget v3, p0, Lrx/internal/operators/OperatorMerge$b;->q:I

    if-ne v0, v3, :cond_3

    .line 528
    const/4 v3, 0x0

    iput v3, p0, Lrx/internal/operators/OperatorMerge$b;->r:I

    .line 529
    int-to-long v4, v0

    .line 3437
    invoke-virtual {p0, v4, v5}, Lrx/internal/operators/OperatorMerge$b;->a(J)V

    .line 535
    :goto_1
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 536
    const/4 v1, 0x1

    .line 537
    :try_start_2
    iget-boolean v3, p0, Lrx/internal/operators/OperatorMerge$b;->j:Z

    if-nez v3, :cond_4

    .line 538
    const/4 v3, 0x0

    iput-boolean v3, p0, Lrx/internal/operators/OperatorMerge$b;->i:Z

    .line 539
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 558
    .end local v0    # "produced":I
    :goto_2
    return-void

    .line 512
    :catch_0
    move-exception v2

    .line 513
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_3
    iget-boolean v3, p0, Lrx/internal/operators/OperatorMerge$b;->b:Z

    if-nez v3, :cond_2

    .line 514
    invoke-static {v2}, Llhe;->a(Ljava/lang/Throwable;)V

    .line 515
    const/4 v1, 0x1

    .line 516
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMerge$b;->unsubscribe()V

    .line 517
    invoke-virtual {p0, v2}, Lrx/internal/operators/OperatorMerge$b;->onError(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 544
    .end local v2    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    if-nez v1, :cond_1

    .line 545
    monitor-enter p0

    .line 546
    const/4 v4, 0x0

    :try_start_4
    iput-boolean v4, p0, Lrx/internal/operators/OperatorMerge$b;->i:Z

    .line 547
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_1
    throw v3

    .line 520
    .restart local v2    # "t":Ljava/lang/Throwable;
    :cond_2
    :try_start_5
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMerge$b;->b()Ljava/util/Queue;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    .line 531
    .end local v2    # "t":Ljava/lang/Throwable;
    .restart local v0    # "produced":I
    :cond_3
    iput v0, p0, Lrx/internal/operators/OperatorMerge$b;->r:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 541
    :cond_4
    const/4 v3, 0x0

    :try_start_6
    iput-boolean v3, p0, Lrx/internal/operators/OperatorMerge$b;->j:Z

    .line 542
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 557
    invoke-direct {p0}, Lrx/internal/operators/OperatorMerge$b;->f()V

    goto :goto_2

    .line 542
    :catchall_1
    move-exception v3

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 547
    .end local v0    # "produced":I
    :catchall_2
    move-exception v3

    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v3
.end method

.method private static b(Lrx/internal/operators/OperatorMerge$a;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorMerge$a",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 372
    .local p0, "subscriber":Lrx/internal/operators/OperatorMerge$a;, "Lrx/internal/operators/OperatorMerge$a<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lrx/internal/operators/OperatorMerge$a;->d:Llin;

    .line 373
    .local v1, "q":Llin;
    if-nez v1, :cond_0

    .line 374
    invoke-static {}, Llin;->a()Llin;

    move-result-object v1

    .line 375
    invoke-virtual {p0, v1}, Lrx/internal/operators/OperatorMerge$a;->a(Llgz;)V

    .line 376
    iput-object v1, p0, Lrx/internal/operators/OperatorMerge$a;->d:Llin;

    .line 379
    :cond_0
    :try_start_0
    invoke-static {p1}, Lrx/internal/operators/NotificationLite;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Llin;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Lrx/exceptions/MissingBackpressureException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 389
    :cond_1
    :goto_0
    return-void

    .line 380
    :catch_0
    move-exception v0

    .line 381
    .local v0, "ex":Lrx/exceptions/MissingBackpressureException;
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMerge$a;->unsubscribe()V

    .line 382
    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorMerge$a;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 383
    .end local v0    # "ex":Lrx/exceptions/MissingBackpressureException;
    :catch_1
    move-exception v0

    .line 384
    .local v0, "ex":Ljava/lang/IllegalStateException;
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMerge$a;->isUnsubscribed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 385
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMerge$a;->unsubscribe()V

    .line 386
    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorMerge$a;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private d()Llkx;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 217
    .local p0, "this":Lrx/internal/operators/OperatorMerge$b;, "Lrx/internal/operators/OperatorMerge$b<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorMerge$b;->f:Llkx;

    .line 218
    .local v0, "c":Llkx;
    if-nez v0, :cond_1

    .line 219
    const/4 v2, 0x0

    .line 220
    .local v2, "shouldAdd":Z
    monitor-enter p0

    .line 221
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/OperatorMerge$b;->f:Llkx;

    .line 222
    if-nez v0, :cond_0

    .line 223
    new-instance v1, Llkx;

    invoke-direct {v1}, Llkx;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    .end local v0    # "c":Llkx;
    .local v1, "c":Llkx;
    :try_start_1
    iput-object v1, p0, Lrx/internal/operators/OperatorMerge$b;->f:Llkx;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 225
    const/4 v2, 0x1

    move-object v0, v1

    .line 227
    .end local v1    # "c":Llkx;
    .restart local v0    # "c":Llkx;
    :cond_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 228
    if-eqz v2, :cond_1

    .line 229
    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorMerge$b;->a(Llgz;)V

    .line 232
    .end local v2    # "shouldAdd":Z
    :cond_1
    return-object v0

    .line 227
    .restart local v2    # "shouldAdd":Z
    :catchall_0
    move-exception v3

    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .end local v0    # "c":Llkx;
    .restart local v1    # "c":Llkx;
    :catchall_1
    move-exception v3

    move-object v0, v1

    .end local v1    # "c":Llkx;
    .restart local v0    # "c":Llkx;
    goto :goto_0
.end method

.method private e()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 264
    .local p0, "this":Lrx/internal/operators/OperatorMerge$b;, "Lrx/internal/operators/OperatorMerge$b<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lrx/internal/operators/OperatorMerge$b;->g:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 265
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 266
    iget-object v2, p0, Lrx/internal/operators/OperatorMerge$b;->a:Llgy;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    invoke-virtual {v2, v1}, Llgy;->onError(Ljava/lang/Throwable;)V

    .line 270
    :goto_0
    return-void

    .line 268
    :cond_0
    iget-object v1, p0, Lrx/internal/operators/OperatorMerge$b;->a:Llgy;

    new-instance v2, Lrx/exceptions/CompositeException;

    invoke-direct {v2, v0}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2}, Llgy;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private f()V
    .locals 39

    .prologue
    .line 574
    .local p0, "this":Lrx/internal/operators/OperatorMerge$b;, "Lrx/internal/operators/OperatorMerge$b<TT;>;"
    const/16 v25, 0x0

    .line 576
    .local v25, "skipFinal":Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lrx/internal/operators/OperatorMerge$b;->a:Llgy;

    .line 579
    .local v6, "child":Llgy;, "Llgy<-TT;>;"
    :cond_0
    :goto_0
    invoke-direct/range {p0 .. p0}, Lrx/internal/operators/OperatorMerge$b;->g()Z

    move-result v32

    if-eqz v32, :cond_2

    .line 804
    :cond_1
    :goto_1
    return-void

    .line 583
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/OperatorMerge$b;->e:Ljava/util/Queue;

    move-object/from16 v28, v0

    .line 585
    .local v28, "svq":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/OperatorMerge$b;->d:Lrx/internal/operators/OperatorMerge$MergeProducer;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lrx/internal/operators/OperatorMerge$MergeProducer;->get()J

    move-result-wide v22

    .line 586
    .local v22, "r":J
    const-wide v32, 0x7fffffffffffffffL

    cmp-long v32, v22, v32

    if-nez v32, :cond_4

    const/16 v30, 0x1

    .line 589
    .local v30, "unbounded":Z
    :goto_2
    const/16 v21, 0x0

    .line 592
    .local v21, "replenishMain":I
    if-eqz v28, :cond_9

    .line 594
    :cond_3
    const/16 v24, 0x0

    .line 595
    .local v24, "scalarEmission":I
    const/16 v18, 0x0

    .line 596
    :goto_3
    const-wide/16 v32, 0x0

    cmp-long v32, v22, v32

    if-lez v32, :cond_7

    .line 597
    invoke-interface/range {v28 .. v28}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v18

    .line 599
    .local v18, "o":Ljava/lang/Object;
    invoke-direct/range {p0 .. p0}, Lrx/internal/operators/OperatorMerge$b;->g()Z

    move-result v32

    if-nez v32, :cond_1

    .line 603
    if-eqz v18, :cond_7

    .line 606
    invoke-static/range {v18 .. v18}, Lrx/internal/operators/NotificationLite;->d(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v31

    .line 609
    .local v31, "v":Ljava/lang/Object;, "TT;"
    :try_start_1
    move-object/from16 v0, v31

    invoke-virtual {v6, v0}, Llgy;->onNext(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 620
    :goto_4
    add-int/lit8 v21, v21, 0x1

    .line 621
    add-int/lit8 v24, v24, 0x1

    .line 622
    const-wide/16 v32, 0x1

    sub-long v22, v22, v32

    .line 623
    goto :goto_3

    .line 586
    .end local v18    # "o":Ljava/lang/Object;
    .end local v21    # "replenishMain":I
    .end local v24    # "scalarEmission":I
    .end local v30    # "unbounded":Z
    .end local v31    # "v":Ljava/lang/Object;, "TT;"
    :cond_4
    const/16 v30, 0x0

    goto :goto_2

    .line 610
    .restart local v18    # "o":Ljava/lang/Object;
    .restart local v21    # "replenishMain":I
    .restart local v24    # "scalarEmission":I
    .restart local v30    # "unbounded":Z
    .restart local v31    # "v":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v29

    .line 611
    .local v29, "t":Ljava/lang/Throwable;
    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lrx/internal/operators/OperatorMerge$b;->b:Z

    move/from16 v32, v0

    if-nez v32, :cond_6

    .line 612
    invoke-static/range {v29 .. v29}, Llhe;->a(Ljava/lang/Throwable;)V

    .line 613
    const/16 v25, 0x1

    .line 614
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/OperatorMerge$b;->unsubscribe()V

    .line 615
    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Llgy;->onError(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 798
    .end local v6    # "child":Llgy;, "Llgy<-TT;>;"
    .end local v18    # "o":Ljava/lang/Object;
    .end local v21    # "replenishMain":I
    .end local v22    # "r":J
    .end local v24    # "scalarEmission":I
    .end local v28    # "svq":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    .end local v29    # "t":Ljava/lang/Throwable;
    .end local v30    # "unbounded":Z
    .end local v31    # "v":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception v32

    if-nez v25, :cond_5

    .line 799
    monitor-enter p0

    .line 800
    const/16 v33, 0x0

    :try_start_3
    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/OperatorMerge$b;->i:Z

    .line 801
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :cond_5
    throw v32

    .line 618
    .restart local v6    # "child":Llgy;, "Llgy<-TT;>;"
    .restart local v18    # "o":Ljava/lang/Object;
    .restart local v21    # "replenishMain":I
    .restart local v22    # "r":J
    .restart local v24    # "scalarEmission":I
    .restart local v28    # "svq":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    .restart local v29    # "t":Ljava/lang/Throwable;
    .restart local v30    # "unbounded":Z
    .restart local v31    # "v":Ljava/lang/Object;, "TT;"
    :cond_6
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/OperatorMerge$b;->b()Ljava/util/Queue;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_4

    .line 624
    .end local v18    # "o":Ljava/lang/Object;
    .end local v29    # "t":Ljava/lang/Throwable;
    .end local v31    # "v":Ljava/lang/Object;, "TT;"
    :cond_7
    if-lez v24, :cond_8

    .line 625
    if-eqz v30, :cond_c

    .line 626
    const-wide v22, 0x7fffffffffffffffL

    .line 631
    :cond_8
    :goto_5
    const-wide/16 v32, 0x0

    cmp-long v32, v22, v32

    if-eqz v32, :cond_9

    if-nez v18, :cond_3

    .line 643
    .end local v24    # "scalarEmission":I
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lrx/internal/operators/OperatorMerge$b;->h:Z

    .line 646
    .local v7, "d":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/OperatorMerge$b;->e:Ljava/util/Queue;

    move-object/from16 v28, v0

    .line 648
    move-object/from16 v0, p0

    iget-object v11, v0, Lrx/internal/operators/OperatorMerge$b;->l:[Lrx/internal/operators/OperatorMerge$a;

    .line 649
    .local v11, "inner":[Lrx/internal/operators/OperatorMerge$a;, "[Lrx/internal/operators/OperatorMerge$a<*>;"
    array-length v0, v11

    move/from16 v17, v0

    .line 653
    .local v17, "n":I
    if-eqz v7, :cond_e

    if-eqz v28, :cond_a

    invoke-interface/range {v28 .. v28}, Ljava/util/Queue;->isEmpty()Z

    move-result v32

    if-eqz v32, :cond_e

    :cond_a
    if-nez v17, :cond_e

    .line 654
    move-object/from16 v0, p0

    iget-object v8, v0, Lrx/internal/operators/OperatorMerge$b;->g:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 655
    .local v8, "e":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Throwable;>;"
    if-eqz v8, :cond_b

    invoke-interface {v8}, Ljava/util/Queue;->isEmpty()Z

    move-result v32

    if-eqz v32, :cond_d

    .line 656
    :cond_b
    invoke-virtual {v6}, Llgy;->onCompleted()V

    goto/16 :goto_1

    .line 628
    .end local v7    # "d":Z
    .end local v8    # "e":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Throwable;>;"
    .end local v11    # "inner":[Lrx/internal/operators/OperatorMerge$a;, "[Lrx/internal/operators/OperatorMerge$a<*>;"
    .end local v17    # "n":I
    .restart local v24    # "scalarEmission":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/OperatorMerge$b;->d:Lrx/internal/operators/OperatorMerge$MergeProducer;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lrx/internal/operators/OperatorMerge$MergeProducer;->produced(I)J

    move-result-wide v22

    goto :goto_5

    .line 658
    .end local v24    # "scalarEmission":I
    .restart local v7    # "d":Z
    .restart local v8    # "e":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Throwable;>;"
    .restart local v11    # "inner":[Lrx/internal/operators/OperatorMerge$a;, "[Lrx/internal/operators/OperatorMerge$a<*>;"
    .restart local v17    # "n":I
    :cond_d
    invoke-direct/range {p0 .. p0}, Lrx/internal/operators/OperatorMerge$b;->e()V

    goto/16 :goto_1

    .line 664
    .end local v8    # "e":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Throwable;>;"
    :cond_e
    const/4 v12, 0x0

    .line 665
    .local v12, "innerCompleted":Z
    if-lez v17, :cond_21

    .line 667
    move-object/from16 v0, p0

    iget-wide v0, v0, Lrx/internal/operators/OperatorMerge$b;->n:J

    move-wide/from16 v26, v0

    .line 668
    .local v26, "startId":J
    move-object/from16 v0, p0

    iget v10, v0, Lrx/internal/operators/OperatorMerge$b;->o:I

    .line 672
    .local v10, "index":I
    move/from16 v0, v17

    if-le v0, v10, :cond_f

    aget-object v32, v11, v10

    move-object/from16 v0, v32

    iget-wide v0, v0, Lrx/internal/operators/OperatorMerge$a;->b:J

    move-wide/from16 v32, v0

    cmp-long v32, v32, v26

    if-eqz v32, :cond_13

    .line 673
    :cond_f
    move/from16 v0, v17

    if-gt v0, v10, :cond_10

    .line 674
    const/4 v10, 0x0

    .line 677
    :cond_10
    move/from16 v16, v10

    .line 678
    .local v16, "j":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_6
    move/from16 v0, v17

    if-ge v9, v0, :cond_12

    .line 679
    aget-object v32, v11, v16

    move-object/from16 v0, v32

    iget-wide v0, v0, Lrx/internal/operators/OperatorMerge$a;->b:J

    move-wide/from16 v32, v0

    cmp-long v32, v32, v26

    if-eqz v32, :cond_12

    .line 683
    add-int/lit8 v16, v16, 0x1

    .line 684
    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_11

    .line 685
    const/16 v16, 0x0

    .line 678
    :cond_11
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 690
    :cond_12
    move/from16 v10, v16

    .line 691
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lrx/internal/operators/OperatorMerge$b;->o:I

    .line 692
    aget-object v32, v11, v16

    move-object/from16 v0, v32

    iget-wide v0, v0, Lrx/internal/operators/OperatorMerge$a;->b:J

    move-wide/from16 v32, v0

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lrx/internal/operators/OperatorMerge$b;->n:J

    .line 695
    .end local v9    # "i":I
    .end local v16    # "j":I
    :cond_13
    move/from16 v16, v10

    .line 697
    .restart local v16    # "j":I
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_7
    move/from16 v0, v17

    if-ge v9, v0, :cond_20

    .line 699
    invoke-direct/range {p0 .. p0}, Lrx/internal/operators/OperatorMerge$b;->g()Z

    move-result v32

    if-nez v32, :cond_1

    .line 704
    aget-object v15, v11, v16

    .line 706
    .local v15, "is":Lrx/internal/operators/OperatorMerge$a;, "Lrx/internal/operators/OperatorMerge$a<TT;>;"
    const/16 v18, 0x0

    .line 708
    :cond_14
    const/16 v19, 0x0

    .line 709
    .local v19, "produced":I
    :goto_8
    const-wide/16 v32, 0x0

    cmp-long v32, v22, v32

    if-lez v32, :cond_15

    .line 711
    invoke-direct/range {p0 .. p0}, Lrx/internal/operators/OperatorMerge$b;->g()Z

    move-result v32

    if-nez v32, :cond_1

    .line 715
    iget-object v0, v15, Lrx/internal/operators/OperatorMerge$a;->d:Llin;

    move-object/from16 v20, v0

    .line 716
    .local v20, "q":Llin;
    if-eqz v20, :cond_15

    .line 719
    invoke-virtual/range {v20 .. v20}, Llin;->e()Ljava/lang/Object;

    move-result-object v18

    .line 720
    .restart local v18    # "o":Ljava/lang/Object;
    if-eqz v18, :cond_15

    .line 723
    invoke-static/range {v18 .. v18}, Lrx/internal/operators/NotificationLite;->d(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v31

    .line 726
    .restart local v31    # "v":Ljava/lang/Object;, "TT;"
    :try_start_5
    move-object/from16 v0, v31

    invoke-virtual {v6, v0}, Llgy;->onNext(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 737
    const-wide/16 v32, 0x1

    sub-long v22, v22, v32

    .line 738
    add-int/lit8 v19, v19, 0x1

    .line 739
    goto :goto_8

    .line 727
    :catch_1
    move-exception v29

    .line 728
    .restart local v29    # "t":Ljava/lang/Throwable;
    const/16 v25, 0x1

    .line 729
    :try_start_6
    invoke-static/range {v29 .. v29}, Llhe;->a(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 731
    :try_start_7
    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Llgy;->onError(Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 733
    :try_start_8
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/OperatorMerge$b;->unsubscribe()V

    goto/16 :goto_1

    :catchall_1
    move-exception v32

    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/OperatorMerge$b;->unsubscribe()V

    throw v32

    .line 740
    .end local v18    # "o":Ljava/lang/Object;
    .end local v20    # "q":Llin;
    .end local v29    # "t":Ljava/lang/Throwable;
    .end local v31    # "v":Ljava/lang/Object;, "TT;"
    :cond_15
    if-lez v19, :cond_16

    .line 741
    if-nez v30, :cond_1c

    .line 742
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/OperatorMerge$b;->d:Lrx/internal/operators/OperatorMerge$MergeProducer;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lrx/internal/operators/OperatorMerge$MergeProducer;->produced(I)J

    move-result-wide v22

    .line 746
    :goto_9
    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v32, v0

    move-wide/from16 v0, v32

    invoke-virtual {v15, v0, v1}, Lrx/internal/operators/OperatorMerge$a;->b(J)V

    .line 749
    :cond_16
    const-wide/16 v32, 0x0

    cmp-long v32, v22, v32

    if-eqz v32, :cond_17

    if-nez v18, :cond_14

    .line 753
    :cond_17
    iget-boolean v13, v15, Lrx/internal/operators/OperatorMerge$a;->c:Z

    .line 754
    .local v13, "innerDone":Z
    iget-object v14, v15, Lrx/internal/operators/OperatorMerge$a;->d:Llin;

    .line 755
    .local v14, "innerQueue":Llin;
    if-eqz v13, :cond_1a

    if-eqz v14, :cond_18

    invoke-virtual {v14}, Llin;->d()Z

    move-result v32

    if-eqz v32, :cond_1a

    .line 4296
    :cond_18
    iget-object v0, v15, Lrx/internal/operators/OperatorMerge$a;->d:Llin;

    move-object/from16 v32, v0

    .line 4297
    if-eqz v32, :cond_19

    .line 4298
    invoke-virtual/range {v32 .. v32}, Llin;->c()V

    .line 4302
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/OperatorMerge$b;->f:Llkx;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v15}, Llkx;->b(Llgz;)V

    .line 4303
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/OperatorMerge$b;->k:Ljava/lang/Object;

    move-object/from16 v34, v0

    monitor-enter v34
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 4304
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/OperatorMerge$b;->l:[Lrx/internal/operators/OperatorMerge$a;

    move-object/from16 v35, v0

    .line 4305
    move-object/from16 v0, v35

    array-length v0, v0

    move/from16 v36, v0

    .line 4306
    const/16 v33, -0x1

    .line 4308
    const/16 v32, 0x0

    :goto_a
    move/from16 v0, v32

    move/from16 v1, v36

    if-ge v0, v1, :cond_24

    .line 4309
    aget-object v37, v35, v32

    move-object/from16 v0, v37

    invoke-virtual {v15, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_1d

    .line 4314
    :goto_b
    if-gez v32, :cond_1e

    .line 4315
    monitor-exit v34
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 757
    :goto_c
    :try_start_a
    invoke-direct/range {p0 .. p0}, Lrx/internal/operators/OperatorMerge$b;->g()Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result v32

    if-nez v32, :cond_1

    .line 761
    add-int/lit8 v21, v21, 0x1

    .line 762
    const/4 v12, 0x1

    .line 765
    :cond_1a
    const-wide/16 v32, 0x0

    cmp-long v32, v22, v32

    if-eqz v32, :cond_20

    .line 770
    add-int/lit8 v16, v16, 0x1

    .line 771
    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_1b

    .line 772
    const/16 v16, 0x0

    .line 697
    :cond_1b
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_7

    .line 744
    .end local v13    # "innerDone":Z
    .end local v14    # "innerQueue":Llin;
    :cond_1c
    const-wide v22, 0x7fffffffffffffffL

    goto :goto_9

    .line 4308
    .restart local v13    # "innerDone":Z
    .restart local v14    # "innerQueue":Llin;
    :cond_1d
    add-int/lit8 v32, v32, 0x1

    goto :goto_a

    .line 4317
    :cond_1e
    const/16 v33, 0x1

    move/from16 v0, v36

    move/from16 v1, v33

    if-ne v0, v1, :cond_1f

    .line 4318
    :try_start_b
    sget-object v32, Lrx/internal/operators/OperatorMerge$b;->p:[Lrx/internal/operators/OperatorMerge$a;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lrx/internal/operators/OperatorMerge$b;->l:[Lrx/internal/operators/OperatorMerge$a;

    .line 4319
    monitor-exit v34

    goto :goto_c

    .line 4325
    :catchall_2
    move-exception v32

    monitor-exit v34
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    throw v32
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 4321
    :cond_1f
    add-int/lit8 v33, v36, -0x1

    :try_start_d
    move/from16 v0, v33

    new-array v0, v0, [Lrx/internal/operators/OperatorMerge$a;

    move-object/from16 v33, v0

    .line 4322
    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v0, v35

    move/from16 v1, v37

    move-object/from16 v2, v33

    move/from16 v3, v38

    move/from16 v4, v32

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4323
    add-int/lit8 v37, v32, 0x1

    sub-int v36, v36, v32

    add-int/lit8 v36, v36, -0x1

    move-object/from16 v0, v35

    move/from16 v1, v37

    move-object/from16 v2, v33

    move/from16 v3, v32

    move/from16 v4, v36

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4324
    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lrx/internal/operators/OperatorMerge$b;->l:[Lrx/internal/operators/OperatorMerge$a;

    .line 4325
    monitor-exit v34
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto :goto_c

    .line 776
    .end local v13    # "innerDone":Z
    .end local v14    # "innerQueue":Llin;
    .end local v15    # "is":Lrx/internal/operators/OperatorMerge$a;, "Lrx/internal/operators/OperatorMerge$a<TT;>;"
    .end local v19    # "produced":I
    :cond_20
    :try_start_e
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lrx/internal/operators/OperatorMerge$b;->o:I

    .line 777
    aget-object v32, v11, v16

    move-object/from16 v0, v32

    iget-wide v0, v0, Lrx/internal/operators/OperatorMerge$a;->b:J

    move-wide/from16 v32, v0

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lrx/internal/operators/OperatorMerge$b;->n:J

    .line 780
    .end local v9    # "i":I
    .end local v10    # "index":I
    .end local v16    # "j":I
    .end local v26    # "startId":J
    :cond_21
    if-lez v21, :cond_22

    .line 781
    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v32, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Lrx/internal/operators/OperatorMerge$b;->a(J)V

    .line 784
    :cond_22
    if-nez v12, :cond_0

    .line 788
    monitor-enter p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 789
    :try_start_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lrx/internal/operators/OperatorMerge$b;->j:Z

    move/from16 v32, v0

    if-nez v32, :cond_23

    .line 790
    const/16 v25, 0x1

    .line 791
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/OperatorMerge$b;->i:Z

    .line 792
    monitor-exit p0

    goto/16 :goto_1

    .line 795
    :catchall_3
    move-exception v32

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    :try_start_10
    throw v32
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 794
    :cond_23
    const/16 v32, 0x0

    :try_start_11
    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/OperatorMerge$b;->j:Z

    .line 795
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    goto/16 :goto_0

    .line 801
    .end local v6    # "child":Llgy;, "Llgy<-TT;>;"
    .end local v7    # "d":Z
    .end local v11    # "inner":[Lrx/internal/operators/OperatorMerge$a;, "[Lrx/internal/operators/OperatorMerge$a<*>;"
    .end local v12    # "innerCompleted":Z
    .end local v17    # "n":I
    .end local v21    # "replenishMain":I
    .end local v22    # "r":J
    .end local v28    # "svq":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    .end local v30    # "unbounded":Z
    :catchall_4
    move-exception v32

    :try_start_12
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    throw v32

    .restart local v6    # "child":Llgy;, "Llgy<-TT;>;"
    .restart local v7    # "d":Z
    .restart local v9    # "i":I
    .restart local v10    # "index":I
    .restart local v11    # "inner":[Lrx/internal/operators/OperatorMerge$a;, "[Lrx/internal/operators/OperatorMerge$a<*>;"
    .restart local v12    # "innerCompleted":Z
    .restart local v13    # "innerDone":Z
    .restart local v14    # "innerQueue":Llin;
    .restart local v15    # "is":Lrx/internal/operators/OperatorMerge$a;, "Lrx/internal/operators/OperatorMerge$a<TT;>;"
    .restart local v16    # "j":I
    .restart local v17    # "n":I
    .restart local v19    # "produced":I
    .restart local v21    # "replenishMain":I
    .restart local v22    # "r":J
    .restart local v26    # "startId":J
    .restart local v28    # "svq":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    .restart local v30    # "unbounded":Z
    :cond_24
    move/from16 v32, v33

    goto/16 :goto_b
.end method

.method private g()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorMerge$b;, "Lrx/internal/operators/OperatorMerge$b<TT;>;"
    const/4 v1, 0x1

    .line 812
    iget-object v2, p0, Lrx/internal/operators/OperatorMerge$b;->a:Llgy;

    invoke-virtual {v2}, Llgy;->isUnsubscribed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 824
    :goto_0
    return v1

    .line 815
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/OperatorMerge$b;->g:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 816
    .local v0, "e":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Throwable;>;"
    iget-boolean v2, p0, Lrx/internal/operators/OperatorMerge$b;->b:Z

    if-nez v2, :cond_1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 818
    :try_start_0
    invoke-direct {p0}, Lrx/internal/operators/OperatorMerge$b;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 820
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMerge$b;->unsubscribe()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lrx/internal/operators/OperatorMerge$b;->unsubscribe()V

    throw v1

    .line 824
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method final a(Lrx/internal/operators/OperatorMerge$a;Ljava/lang/Object;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorMerge$a",
            "<TT;>;TT;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorMerge$b;, "Lrx/internal/operators/OperatorMerge$b<TT;>;"
    .local p1, "subscriber":Lrx/internal/operators/OperatorMerge$a;, "Lrx/internal/operators/OperatorMerge$a<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    const-wide/16 v8, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 340
    const/4 v3, 0x0

    .line 341
    .local v3, "success":Z
    iget-object v4, p0, Lrx/internal/operators/OperatorMerge$b;->d:Lrx/internal/operators/OperatorMerge$MergeProducer;

    invoke-virtual {v4}, Lrx/internal/operators/OperatorMerge$MergeProducer;->get()J

    move-result-wide v0

    .line 342
    .local v0, "r":J
    cmp-long v4, v0, v8

    if-eqz v4, :cond_1

    .line 343
    monitor-enter p0

    .line 345
    :try_start_0
    iget-object v4, p0, Lrx/internal/operators/OperatorMerge$b;->d:Lrx/internal/operators/OperatorMerge$MergeProducer;

    invoke-virtual {v4}, Lrx/internal/operators/OperatorMerge$MergeProducer;->get()J

    move-result-wide v0

    .line 346
    iget-boolean v4, p0, Lrx/internal/operators/OperatorMerge$b;->i:Z

    if-nez v4, :cond_0

    cmp-long v4, v0, v8

    if-eqz v4, :cond_0

    .line 347
    const/4 v4, 0x1

    iput-boolean v4, p0, Lrx/internal/operators/OperatorMerge$b;->i:Z

    .line 348
    const/4 v3, 0x1

    .line 350
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 352
    :cond_1
    if-eqz v3, :cond_8

    .line 353
    iget-object v2, p1, Lrx/internal/operators/OperatorMerge$a;->d:Llin;

    .line 354
    .local v2, "subscriberQueue":Llin;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Llin;->d()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2395
    :cond_2
    :try_start_1
    iget-object v4, p0, Lrx/internal/operators/OperatorMerge$b;->a:Llgy;

    invoke-virtual {v4, p2}, Llgy;->onNext(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 2406
    :goto_0
    const-wide v8, 0x7fffffffffffffffL

    cmp-long v4, v0, v8

    if-eqz v4, :cond_3

    .line 2407
    :try_start_2
    iget-object v4, p0, Lrx/internal/operators/OperatorMerge$b;->d:Lrx/internal/operators/OperatorMerge$MergeProducer;

    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Lrx/internal/operators/OperatorMerge$MergeProducer;->produced(I)J

    .line 2409
    :cond_3
    const-wide/16 v8, 0x1

    invoke-virtual {p1, v8, v9}, Lrx/internal/operators/OperatorMerge$a;->b(J)V

    .line 2411
    monitor-enter p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 2413
    :try_start_3
    iget-boolean v4, p0, Lrx/internal/operators/OperatorMerge$b;->j:Z

    if-nez v4, :cond_6

    .line 2414
    const/4 v4, 0x0

    iput-boolean v4, p0, Lrx/internal/operators/OperatorMerge$b;->i:Z

    .line 2415
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 364
    .end local v2    # "subscriberQueue":Llin;
    :goto_1
    return-void

    .line 350
    :catchall_0
    move-exception v4

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    .line 2396
    .restart local v2    # "subscriberQueue":Llin;
    :catch_0
    move-exception v4

    .line 2397
    :try_start_5
    iget-boolean v7, p0, Lrx/internal/operators/OperatorMerge$b;->b:Z

    if-nez v7, :cond_5

    .line 2398
    invoke-static {v4}, Llhe;->a(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 2400
    :try_start_6
    invoke-virtual {p1}, Lrx/internal/operators/OperatorMerge$a;->unsubscribe()V

    .line 2401
    invoke-virtual {p1, v4}, Lrx/internal/operators/OperatorMerge$a;->onError(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    .line 2420
    :catchall_1
    move-exception v4

    move v5, v6

    :goto_2
    if-nez v5, :cond_4

    .line 2421
    monitor-enter p0

    .line 2422
    const/4 v5, 0x0

    :try_start_7
    iput-boolean v5, p0, Lrx/internal/operators/OperatorMerge$b;->i:Z

    .line 2423
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :cond_4
    throw v4

    .line 2404
    :cond_5
    :try_start_8
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMerge$b;->b()Ljava/util/Queue;

    move-result-object v7

    invoke-interface {v7, v4}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_0

    .line 2420
    :catchall_2
    move-exception v4

    goto :goto_2

    .line 2417
    :cond_6
    const/4 v4, 0x0

    :try_start_9
    iput-boolean v4, p0, Lrx/internal/operators/OperatorMerge$b;->j:Z

    .line 2418
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 2433
    invoke-direct {p0}, Lrx/internal/operators/OperatorMerge$b;->f()V

    goto :goto_1

    .line 2418
    :catchall_3
    move-exception v4

    :try_start_a
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    throw v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 2423
    :catchall_4
    move-exception v4

    :try_start_c
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    throw v4

    .line 357
    :cond_7
    invoke-static {p1, p2}, Lrx/internal/operators/OperatorMerge$b;->b(Lrx/internal/operators/OperatorMerge$a;Ljava/lang/Object;)V

    .line 358
    invoke-direct {p0}, Lrx/internal/operators/OperatorMerge$b;->f()V

    goto :goto_1

    .line 361
    .end local v2    # "subscriberQueue":Llin;
    :cond_8
    invoke-static {p1, p2}, Lrx/internal/operators/OperatorMerge$b;->b(Lrx/internal/operators/OperatorMerge$a;Ljava/lang/Object;)V

    .line 362
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMerge$b;->c()V

    goto :goto_1
.end method

.method final b()Ljava/util/Queue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 204
    .local p0, "this":Lrx/internal/operators/OperatorMerge$b;, "Lrx/internal/operators/OperatorMerge$b<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorMerge$b;->g:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 205
    .local v0, "q":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<Ljava/lang/Throwable;>;"
    if-nez v0, :cond_1

    .line 206
    monitor-enter p0

    .line 207
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/OperatorMerge$b;->g:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 208
    if-nez v0, :cond_0

    .line 209
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    .end local v0    # "q":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<Ljava/lang/Throwable;>;"
    .local v1, "q":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<Ljava/lang/Throwable;>;"
    :try_start_1
    iput-object v1, p0, Lrx/internal/operators/OperatorMerge$b;->g:Ljava/util/concurrent/ConcurrentLinkedQueue;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 212
    .end local v1    # "q":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<Ljava/lang/Throwable;>;"
    .restart local v0    # "q":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<Ljava/lang/Throwable;>;"
    :cond_0
    :try_start_2
    monitor-exit p0

    .line 214
    :cond_1
    return-object v0

    .line 212
    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "q":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<Ljava/lang/Throwable;>;"
    .restart local v1    # "q":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<Ljava/lang/Throwable;>;"
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "q":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<Ljava/lang/Throwable;>;"
    .restart local v0    # "q":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<Ljava/lang/Throwable;>;"
    goto :goto_0
.end method

.method final c()V
    .locals 1

    .prologue
    .line 561
    .local p0, "this":Lrx/internal/operators/OperatorMerge$b;, "Lrx/internal/operators/OperatorMerge$b<TT;>;"
    monitor-enter p0

    .line 562
    :try_start_0
    iget-boolean v0, p0, Lrx/internal/operators/OperatorMerge$b;->i:Z

    if-eqz v0, :cond_0

    .line 563
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorMerge$b;->j:Z

    .line 564
    monitor-exit p0

    .line 569
    :goto_0
    return-void

    .line 566
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorMerge$b;->i:Z

    .line 567
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 568
    invoke-direct {p0}, Lrx/internal/operators/OperatorMerge$b;->f()V

    goto :goto_0

    .line 567
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final onCompleted()V
    .locals 1

    .prologue
    .line 280
    .local p0, "this":Lrx/internal/operators/OperatorMerge$b;, "Lrx/internal/operators/OperatorMerge$b<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorMerge$b;->h:Z

    .line 281
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMerge$b;->c()V

    .line 282
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 274
    .local p0, "this":Lrx/internal/operators/OperatorMerge$b;, "Lrx/internal/operators/OperatorMerge$b<TT;>;"
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMerge$b;->b()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 275
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorMerge$b;->h:Z

    .line 276
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMerge$b;->c()V

    .line 277
    return-void
.end method

.method public final synthetic onNext(Ljava/lang/Object;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorMerge$b;, "Lrx/internal/operators/OperatorMerge$b<TT;>;"
    const-wide/16 v6, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 148
    check-cast p1, Llgs;

    .line 5237
    if-eqz p1, :cond_0

    .line 5837
    invoke-static {}, Lrx/internal/operators/EmptyObservableHolder;->instance()Llgs;

    move-result-object v0

    .line 5240
    if-ne p1, v0, :cond_2

    .line 6254
    iget v0, p0, Lrx/internal/operators/OperatorMerge$b;->r:I

    add-int/lit8 v0, v0, 0x1

    .line 6255
    iget v1, p0, Lrx/internal/operators/OperatorMerge$b;->q:I

    if-ne v0, v1, :cond_1

    .line 6256
    iput v2, p0, Lrx/internal/operators/OperatorMerge$b;->r:I

    .line 6257
    int-to-long v0, v0

    .line 6437
    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorMerge$b;->a(J)V

    .line 5244
    :cond_0
    :goto_0
    return-void

    .line 6259
    :cond_1
    iput v0, p0, Lrx/internal/operators/OperatorMerge$b;->r:I

    goto :goto_0

    .line 5243
    :cond_2
    instance-of v0, p1, Lrx/internal/util/ScalarSynchronousObservable;

    if-eqz v0, :cond_8

    .line 5244
    check-cast p1, Lrx/internal/util/ScalarSynchronousObservable;

    .line 7085
    iget-object v4, p1, Lrx/internal/util/ScalarSynchronousObservable;->b:Ljava/lang/Object;

    .line 7452
    iget-object v0, p0, Lrx/internal/operators/OperatorMerge$b;->d:Lrx/internal/operators/OperatorMerge$MergeProducer;

    invoke-virtual {v0}, Lrx/internal/operators/OperatorMerge$MergeProducer;->get()J

    move-result-wide v0

    .line 7453
    cmp-long v5, v0, v6

    if-eqz v5, :cond_4

    .line 7454
    monitor-enter p0

    .line 7456
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/OperatorMerge$b;->d:Lrx/internal/operators/OperatorMerge$MergeProducer;

    invoke-virtual {v0}, Lrx/internal/operators/OperatorMerge$MergeProducer;->get()J

    move-result-wide v0

    .line 7457
    iget-boolean v5, p0, Lrx/internal/operators/OperatorMerge$b;->i:Z

    if-nez v5, :cond_3

    cmp-long v5, v0, v6

    if-eqz v5, :cond_3

    .line 7458
    const/4 v2, 0x1

    iput-boolean v2, p0, Lrx/internal/operators/OperatorMerge$b;->i:Z

    move v2, v3

    .line 7461
    :cond_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7463
    :cond_4
    if-eqz v2, :cond_7

    .line 7464
    iget-object v2, p0, Lrx/internal/operators/OperatorMerge$b;->e:Ljava/util/Queue;

    .line 7465
    if-eqz v2, :cond_5

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 7466
    :cond_5
    invoke-direct {p0, v4, v0, v1}, Lrx/internal/operators/OperatorMerge$b;->a(Ljava/lang/Object;J)V

    goto :goto_0

    .line 7461
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 7468
    :cond_6
    invoke-direct {p0, v4}, Lrx/internal/operators/OperatorMerge$b;->a(Ljava/lang/Object;)V

    .line 7469
    invoke-direct {p0}, Lrx/internal/operators/OperatorMerge$b;->f()V

    goto :goto_0

    .line 7472
    :cond_7
    invoke-direct {p0, v4}, Lrx/internal/operators/OperatorMerge$b;->a(Ljava/lang/Object;)V

    .line 7473
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMerge$b;->c()V

    goto :goto_0

    .line 5246
    :cond_8
    new-instance v0, Lrx/internal/operators/OperatorMerge$a;

    iget-wide v2, p0, Lrx/internal/operators/OperatorMerge$b;->m:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    iput-wide v4, p0, Lrx/internal/operators/OperatorMerge$b;->m:J

    invoke-direct {v0, p0, v2, v3}, Lrx/internal/operators/OperatorMerge$a;-><init>(Lrx/internal/operators/OperatorMerge$b;J)V

    .line 8285
    invoke-direct {p0}, Lrx/internal/operators/OperatorMerge$b;->d()Llkx;

    move-result-object v1

    invoke-virtual {v1, v0}, Llkx;->a(Llgz;)V

    .line 8286
    iget-object v1, p0, Lrx/internal/operators/OperatorMerge$b;->k:Ljava/lang/Object;

    monitor-enter v1

    .line 8287
    :try_start_2
    iget-object v2, p0, Lrx/internal/operators/OperatorMerge$b;->l:[Lrx/internal/operators/OperatorMerge$a;

    .line 8288
    array-length v3, v2

    .line 8289
    add-int/lit8 v4, v3, 0x1

    new-array v4, v4, [Lrx/internal/operators/OperatorMerge$a;

    .line 8290
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v2, v5, v4, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8291
    aput-object v0, v4, v3

    .line 8292
    iput-object v4, p0, Lrx/internal/operators/OperatorMerge$b;->l:[Lrx/internal/operators/OperatorMerge$a;

    .line 8293
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5248
    invoke-virtual {p1, v0}, Llgs;->a(Llgy;)Llgz;

    .line 5249
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMerge$b;->c()V

    goto :goto_0

    .line 8293
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method
