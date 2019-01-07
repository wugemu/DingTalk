.class final Lrx/internal/operators/OperatorPublish$a;
.super Llgy;
.source "OperatorPublish.java"

# interfaces
.implements Llgz;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorPublish;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Llgy",
        "<TT;>;",
        "Llgz;"
    }
.end annotation


# static fields
.field static final d:[Lrx/internal/operators/OperatorPublish$InnerProducer;

.field static final e:[Lrx/internal/operators/OperatorPublish$InnerProducer;


# instance fields
.field final a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lrx/internal/operators/OperatorPublish$a",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field volatile c:Ljava/lang/Object;

.field final f:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<[",
            "Lrx/internal/operators/OperatorPublish$InnerProducer;",
            ">;"
        }
    .end annotation
.end field

.field final g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field h:Z

.field i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 228
    new-array v0, v1, [Lrx/internal/operators/OperatorPublish$InnerProducer;

    sput-object v0, Lrx/internal/operators/OperatorPublish$a;->d:[Lrx/internal/operators/OperatorPublish$InnerProducer;

    .line 230
    new-array v0, v1, [Lrx/internal/operators/OperatorPublish$InnerProducer;

    sput-object v0, Lrx/internal/operators/OperatorPublish$a;->e:[Lrx/internal/operators/OperatorPublish$InnerProducer;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lrx/internal/operators/OperatorPublish$a",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 245
    .local p0, "this":Lrx/internal/operators/OperatorPublish$a;, "Lrx/internal/operators/OperatorPublish$a<TT;>;"
    .local p1, "current":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lrx/internal/operators/OperatorPublish$a<TT;>;>;"
    invoke-direct {p0}, Llgy;-><init>()V

    .line 246
    invoke-static {}, Llkb;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lljn;

    sget v1, Llin;->b:I

    invoke-direct {v0, v1}, Lljn;-><init>(I)V

    :goto_0
    iput-object v0, p0, Lrx/internal/operators/OperatorPublish$a;->a:Ljava/util/Queue;

    .line 250
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lrx/internal/operators/OperatorPublish$a;->d:[Lrx/internal/operators/OperatorPublish$InnerProducer;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lrx/internal/operators/OperatorPublish$a;->f:Ljava/util/concurrent/atomic/AtomicReference;

    .line 251
    iput-object p1, p0, Lrx/internal/operators/OperatorPublish$a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 252
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorPublish$a;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 253
    return-void

    .line 246
    :cond_0
    new-instance v0, Llis;

    sget v1, Llin;->b:I

    invoke-direct {v0, v1}, Llis;-><init>(I)V

    goto :goto_0
.end method

.method private a(Ljava/lang/Object;Z)Z
    .locals 7
    .param p1, "term"    # Ljava/lang/Object;
    .param p2, "empty"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorPublish$a;, "Lrx/internal/operators/OperatorPublish$a<TT;>;"
    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 401
    if-eqz p1, :cond_3

    .line 403
    invoke-static {p1}, Lrx/internal/operators/NotificationLite;->b(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 405
    if-eqz p2, :cond_3

    .line 408
    iget-object v2, p0, Lrx/internal/operators/OperatorPublish$a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, p0, v5}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 422
    :try_start_0
    iget-object v2, p0, Lrx/internal/operators/OperatorPublish$a;->f:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v5, Lrx/internal/operators/OperatorPublish$a;->e:[Lrx/internal/operators/OperatorPublish$InnerProducer;

    invoke-virtual {v2, v5}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lrx/internal/operators/OperatorPublish$InnerProducer;

    array-length v5, v2

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v0, v2, v4

    .line 423
    .local v0, "ip":Lrx/internal/operators/OperatorPublish$InnerProducer;, "Lrx/internal/operators/OperatorPublish$InnerProducer<*>;"
    iget-object v6, v0, Lrx/internal/operators/OperatorPublish$InnerProducer;->child:Llgy;

    invoke-virtual {v6}, Llgy;->onCompleted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 422
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 428
    .end local v0    # "ip":Lrx/internal/operators/OperatorPublish$InnerProducer;, "Lrx/internal/operators/OperatorPublish$InnerProducer<*>;"
    :cond_0
    invoke-virtual {p0}, Lrx/internal/operators/OperatorPublish$a;->unsubscribe()V

    move v2, v3

    .line 455
    :goto_1
    return v2

    .line 428
    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Lrx/internal/operators/OperatorPublish$a;->unsubscribe()V

    throw v2

    .line 434
    :cond_1
    invoke-static {p1}, Lrx/internal/operators/NotificationLite;->e(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    .line 437
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lrx/internal/operators/OperatorPublish$a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, p0, v5}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 442
    :try_start_1
    iget-object v2, p0, Lrx/internal/operators/OperatorPublish$a;->f:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v5, Lrx/internal/operators/OperatorPublish$a;->e:[Lrx/internal/operators/OperatorPublish$InnerProducer;

    invoke-virtual {v2, v5}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lrx/internal/operators/OperatorPublish$InnerProducer;

    array-length v5, v2

    :goto_2
    if-ge v4, v5, :cond_2

    aget-object v0, v2, v4

    .line 443
    .restart local v0    # "ip":Lrx/internal/operators/OperatorPublish$InnerProducer;, "Lrx/internal/operators/OperatorPublish$InnerProducer<*>;"
    iget-object v6, v0, Lrx/internal/operators/OperatorPublish$InnerProducer;->child:Llgy;

    invoke-virtual {v6, v1}, Llgy;->onError(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 442
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 448
    .end local v0    # "ip":Lrx/internal/operators/OperatorPublish$InnerProducer;, "Lrx/internal/operators/OperatorPublish$InnerProducer<*>;"
    :cond_2
    invoke-virtual {p0}, Lrx/internal/operators/OperatorPublish$a;->unsubscribe()V

    move v2, v3

    .line 451
    goto :goto_1

    .line 448
    :catchall_1
    move-exception v2

    invoke-virtual {p0}, Lrx/internal/operators/OperatorPublish$a;->unsubscribe()V

    throw v2

    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_3
    move v2, v4

    .line 455
    goto :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 272
    .local p0, "this":Lrx/internal/operators/OperatorPublish$a;, "Lrx/internal/operators/OperatorPublish$a<TT;>;"
    sget v0, Llin;->b:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorPublish$a;->a(J)V

    .line 273
    return-void
.end method

.method final b()V
    .locals 26

    .prologue
    .line 466
    .local p0, "this":Lrx/internal/operators/OperatorPublish$a;, "Lrx/internal/operators/OperatorPublish$a<TT;>;"
    monitor-enter p0

    .line 467
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lrx/internal/operators/OperatorPublish$a;->h:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1

    .line 468
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/OperatorPublish$a;->i:Z

    .line 469
    monitor-exit p0

    .line 623
    :cond_0
    :goto_0
    return-void

    .line 472
    :cond_1
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/OperatorPublish$a;->h:Z

    .line 473
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/OperatorPublish$a;->i:Z

    .line 474
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 483
    const/4 v11, 0x0

    .line 494
    .local v11, "skipFinal":Z
    :cond_2
    :goto_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lrx/internal/operators/OperatorPublish$a;->c:Ljava/lang/Object;

    .line 501
    .local v15, "term":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/OperatorPublish$a;->a:Ljava/util/Queue;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/Queue;->isEmpty()Z

    move-result v5

    .line 505
    .local v5, "empty":Z
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v5}, Lrx/internal/operators/OperatorPublish$a;->a(Ljava/lang/Object;Z)Z

    move-result v19

    if-nez v19, :cond_0

    .line 513
    if-nez v5, :cond_e

    .line 517
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/OperatorPublish$a;->f:Ljava/util/concurrent/atomic/AtomicReference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Lrx/internal/operators/OperatorPublish$InnerProducer;

    .line 519
    .local v10, "ps":[Lrx/internal/operators/OperatorPublish$InnerProducer;, "[Lrx/internal/operators/OperatorPublish$InnerProducer<TT;>;"
    array-length v7, v10

    .line 521
    .local v7, "len":I
    const-wide v8, 0x7fffffffffffffffL

    .line 523
    .local v8, "maxRequested":J
    const/16 v16, 0x0

    .line 528
    .local v16, "unsubscribed":I
    array-length v0, v10

    move/from16 v20, v0

    const/16 v19, 0x0

    :goto_2
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_5

    aget-object v6, v10, v19

    .line 529
    .local v6, "ip":Lrx/internal/operators/OperatorPublish$InnerProducer;, "Lrx/internal/operators/OperatorPublish$InnerProducer<TT;>;"
    invoke-virtual {v6}, Lrx/internal/operators/OperatorPublish$InnerProducer;->get()J

    move-result-wide v12

    .line 532
    .local v12, "r":J
    const-wide/16 v22, 0x0

    cmp-long v21, v12, v22

    if-ltz v21, :cond_4

    .line 533
    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->min(JJ)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v8

    .line 528
    :cond_3
    :goto_3
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 474
    .end local v5    # "empty":Z
    .end local v6    # "ip":Lrx/internal/operators/OperatorPublish$InnerProducer;, "Lrx/internal/operators/OperatorPublish$InnerProducer<TT;>;"
    .end local v7    # "len":I
    .end local v8    # "maxRequested":J
    .end local v10    # "ps":[Lrx/internal/operators/OperatorPublish$InnerProducer;, "[Lrx/internal/operators/OperatorPublish$InnerProducer<TT;>;"
    .end local v11    # "skipFinal":Z
    .end local v12    # "r":J
    .end local v15    # "term":Ljava/lang/Object;
    .end local v16    # "unsubscribed":I
    :catchall_0
    move-exception v19

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v19

    .line 536
    .restart local v5    # "empty":Z
    .restart local v6    # "ip":Lrx/internal/operators/OperatorPublish$InnerProducer;, "Lrx/internal/operators/OperatorPublish$InnerProducer<TT;>;"
    .restart local v7    # "len":I
    .restart local v8    # "maxRequested":J
    .restart local v10    # "ps":[Lrx/internal/operators/OperatorPublish$InnerProducer;, "[Lrx/internal/operators/OperatorPublish$InnerProducer<TT;>;"
    .restart local v11    # "skipFinal":Z
    .restart local v12    # "r":J
    .restart local v15    # "term":Ljava/lang/Object;
    .restart local v16    # "unsubscribed":I
    :cond_4
    const-wide/high16 v22, -0x8000000000000000L

    cmp-long v21, v12, v22

    if-nez v21, :cond_3

    .line 537
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 544
    .end local v6    # "ip":Lrx/internal/operators/OperatorPublish$InnerProducer;, "Lrx/internal/operators/OperatorPublish$InnerProducer<TT;>;"
    .end local v12    # "r":J
    :cond_5
    move/from16 v0, v16

    if-ne v7, v0, :cond_8

    .line 545
    :try_start_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lrx/internal/operators/OperatorPublish$a;->c:Ljava/lang/Object;

    .line 547
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/OperatorPublish$a;->a:Ljava/util/Queue;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v17

    .line 549
    .local v17, "v":Ljava/lang/Object;
    if-nez v17, :cond_7

    const/16 v19, 0x1

    :goto_4
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v15, v1}, Lrx/internal/operators/OperatorPublish$a;->a(Ljava/lang/Object;Z)Z

    move-result v19

    if-nez v19, :cond_0

    .line 554
    const-wide/16 v20, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lrx/internal/operators/OperatorPublish$a;->a(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_1

    .line 631
    .end local v5    # "empty":Z
    .end local v7    # "len":I
    .end local v8    # "maxRequested":J
    .end local v10    # "ps":[Lrx/internal/operators/OperatorPublish$InnerProducer;, "[Lrx/internal/operators/OperatorPublish$InnerProducer<TT;>;"
    .end local v15    # "term":Ljava/lang/Object;
    .end local v16    # "unsubscribed":I
    .end local v17    # "v":Ljava/lang/Object;
    :catchall_1
    move-exception v19

    if-nez v11, :cond_6

    .line 633
    monitor-enter p0

    .line 634
    const/16 v20, 0x0

    :try_start_4
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/OperatorPublish$a;->h:Z

    .line 635
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :cond_6
    throw v19

    .line 549
    .restart local v5    # "empty":Z
    .restart local v7    # "len":I
    .restart local v8    # "maxRequested":J
    .restart local v10    # "ps":[Lrx/internal/operators/OperatorPublish$InnerProducer;, "[Lrx/internal/operators/OperatorPublish$InnerProducer<TT;>;"
    .restart local v15    # "term":Ljava/lang/Object;
    .restart local v16    # "unsubscribed":I
    .restart local v17    # "v":Ljava/lang/Object;
    :cond_7
    const/16 v19, 0x0

    goto :goto_4

    .line 561
    .end local v17    # "v":Ljava/lang/Object;
    :cond_8
    const/4 v4, 0x0

    .line 562
    .local v4, "d":I
    :goto_5
    int-to-long v0, v4

    move-wide/from16 v20, v0

    cmp-long v19, v20, v8

    if-gez v19, :cond_c

    .line 563
    :try_start_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lrx/internal/operators/OperatorPublish$a;->c:Ljava/lang/Object;

    .line 564
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/OperatorPublish$a;->a:Ljava/util/Queue;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v17

    .line 565
    .restart local v17    # "v":Ljava/lang/Object;
    if-nez v17, :cond_a

    const/4 v5, 0x1

    .line 567
    :goto_6
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v5}, Lrx/internal/operators/OperatorPublish$a;->a(Ljava/lang/Object;Z)Z

    move-result v19

    if-nez v19, :cond_0

    .line 572
    if-nez v5, :cond_c

    .line 576
    invoke-static/range {v17 .. v17}, Lrx/internal/operators/NotificationLite;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .line 578
    .local v18, "value":Ljava/lang/Object;, "TT;"
    array-length v0, v10

    move/from16 v20, v0

    const/16 v19, 0x0

    :goto_7
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_b

    aget-object v6, v10, v19

    .line 583
    .restart local v6    # "ip":Lrx/internal/operators/OperatorPublish$InnerProducer;, "Lrx/internal/operators/OperatorPublish$InnerProducer<TT;>;"
    invoke-virtual {v6}, Lrx/internal/operators/OperatorPublish$InnerProducer;->get()J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-wide v22

    const-wide/16 v24, 0x0

    cmp-long v21, v22, v24

    if-lez v21, :cond_9

    .line 585
    :try_start_6
    iget-object v0, v6, Lrx/internal/operators/OperatorPublish$InnerProducer;->child:Llgy;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Llgy;->onNext(Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 593
    const-wide/16 v22, 0x1

    :try_start_7
    move-wide/from16 v0, v22

    invoke-virtual {v6, v0, v1}, Lrx/internal/operators/OperatorPublish$InnerProducer;->produced(J)J

    .line 578
    :cond_9
    :goto_8
    add-int/lit8 v19, v19, 0x1

    goto :goto_7

    .line 565
    .end local v6    # "ip":Lrx/internal/operators/OperatorPublish$InnerProducer;, "Lrx/internal/operators/OperatorPublish$InnerProducer<TT;>;"
    .end local v18    # "value":Ljava/lang/Object;, "TT;"
    :cond_a
    const/4 v5, 0x0

    goto :goto_6

    .line 586
    .restart local v6    # "ip":Lrx/internal/operators/OperatorPublish$InnerProducer;, "Lrx/internal/operators/OperatorPublish$InnerProducer<TT;>;"
    .restart local v18    # "value":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v14

    .line 588
    .local v14, "t":Ljava/lang/Throwable;
    invoke-virtual {v6}, Lrx/internal/operators/OperatorPublish$InnerProducer;->unsubscribe()V

    .line 589
    iget-object v0, v6, Lrx/internal/operators/OperatorPublish$InnerProducer;->child:Llgy;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-static {v14, v0, v1}, Llhe;->a(Ljava/lang/Throwable;Llgt;Ljava/lang/Object;)V

    goto :goto_8

    .line 597
    .end local v6    # "ip":Lrx/internal/operators/OperatorPublish$InnerProducer;, "Lrx/internal/operators/OperatorPublish$InnerProducer<TT;>;"
    .end local v14    # "t":Ljava/lang/Throwable;
    :cond_b
    add-int/lit8 v4, v4, 0x1

    .line 598
    goto :goto_5

    .line 601
    .end local v17    # "v":Ljava/lang/Object;
    .end local v18    # "value":Ljava/lang/Object;, "TT;"
    :cond_c
    if-lez v4, :cond_d

    .line 602
    int-to-long v0, v4

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lrx/internal/operators/OperatorPublish$a;->a(J)V

    .line 607
    :cond_d
    const-wide/16 v20, 0x0

    cmp-long v19, v8, v20

    if-eqz v19, :cond_e

    if-eqz v5, :cond_2

    .line 614
    .end local v4    # "d":I
    .end local v7    # "len":I
    .end local v8    # "maxRequested":J
    .end local v10    # "ps":[Lrx/internal/operators/OperatorPublish$InnerProducer;, "[Lrx/internal/operators/OperatorPublish$InnerProducer<TT;>;"
    .end local v16    # "unsubscribed":I
    :cond_e
    monitor-enter p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 618
    :try_start_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lrx/internal/operators/OperatorPublish$a;->i:Z

    move/from16 v19, v0

    if-nez v19, :cond_f

    .line 620
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/OperatorPublish$a;->h:Z

    .line 622
    const/4 v11, 0x1

    .line 623
    monitor-exit p0

    goto/16 :goto_0

    .line 627
    :catchall_2
    move-exception v19

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v19
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 626
    :cond_f
    const/16 v19, 0x0

    :try_start_a
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/OperatorPublish$a;->i:Z

    .line 627
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto/16 :goto_1

    .line 635
    .end local v5    # "empty":Z
    .end local v15    # "term":Ljava/lang/Object;
    :catchall_3
    move-exception v19

    :try_start_b
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    throw v19
.end method

.method public final onCompleted()V
    .locals 1

    .prologue
    .line 301
    .local p0, "this":Lrx/internal/operators/OperatorPublish$a;, "Lrx/internal/operators/OperatorPublish$a<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorPublish$a;->c:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 302
    invoke-static {}, Lrx/internal/operators/NotificationLite;->a()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorPublish$a;->c:Ljava/lang/Object;

    .line 305
    invoke-virtual {p0}, Lrx/internal/operators/OperatorPublish$a;->b()V

    .line 307
    :cond_0
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 290
    .local p0, "this":Lrx/internal/operators/OperatorPublish$a;, "Lrx/internal/operators/OperatorPublish$a<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorPublish$a;->c:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 291
    invoke-static {p1}, Lrx/internal/operators/NotificationLite;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorPublish$a;->c:Ljava/lang/Object;

    .line 294
    invoke-virtual {p0}, Lrx/internal/operators/OperatorPublish$a;->b()V

    .line 296
    :cond_0
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
    .line 278
    .local p0, "this":Lrx/internal/operators/OperatorPublish$a;, "Lrx/internal/operators/OperatorPublish$a<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OperatorPublish$a;->a:Ljava/util/Queue;

    invoke-static {p1}, Lrx/internal/operators/NotificationLite;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 279
    new-instance v0, Lrx/exceptions/MissingBackpressureException;

    invoke-direct {v0}, Lrx/exceptions/MissingBackpressureException;-><init>()V

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorPublish$a;->onError(Ljava/lang/Throwable;)V

    .line 285
    :goto_0
    return-void

    .line 283
    :cond_0
    invoke-virtual {p0}, Lrx/internal/operators/OperatorPublish$a;->b()V

    goto :goto_0
.end method
