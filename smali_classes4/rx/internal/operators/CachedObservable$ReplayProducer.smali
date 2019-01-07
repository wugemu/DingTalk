.class final Lrx/internal/operators/CachedObservable$ReplayProducer;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "CachedObservable.java"

# interfaces
.implements Llgu;
.implements Llgz;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/CachedObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ReplayProducer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Llgu;",
        "Llgz;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x237e491daced6e1dL


# instance fields
.field final child:Llgy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llgy",
            "<-TT;>;"
        }
    .end annotation
.end field

.field currentBuffer:[Ljava/lang/Object;

.field currentIndexInBuffer:I

.field emitting:Z

.field index:I

.field missed:Z

.field final state:Lrx/internal/operators/CachedObservable$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/CachedObservable$a",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Llgy;Lrx/internal/operators/CachedObservable$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llgy",
            "<-TT;>;",
            "Lrx/internal/operators/CachedObservable$a",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 288
    .local p0, "this":Lrx/internal/operators/CachedObservable$ReplayProducer;, "Lrx/internal/operators/CachedObservable$ReplayProducer<TT;>;"
    .local p1, "child":Llgy;, "Llgy<-TT;>;"
    .local p2, "state":Lrx/internal/operators/CachedObservable$a;, "Lrx/internal/operators/CachedObservable$a<TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 289
    iput-object p1, p0, Lrx/internal/operators/CachedObservable$ReplayProducer;->child:Llgy;

    .line 290
    iput-object p2, p0, Lrx/internal/operators/CachedObservable$ReplayProducer;->state:Lrx/internal/operators/CachedObservable$a;

    .line 291
    return-void
.end method


# virtual methods
.method public final isUnsubscribed()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 320
    .local p0, "this":Lrx/internal/operators/CachedObservable$ReplayProducer;, "Lrx/internal/operators/CachedObservable$ReplayProducer<TT;>;"
    invoke-virtual {p0}, Lrx/internal/operators/CachedObservable$ReplayProducer;->get()J

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

.method public final produced(J)J
    .locals 3
    .param p1, "n"    # J

    .prologue
    .line 315
    .local p0, "this":Lrx/internal/operators/CachedObservable$ReplayProducer;, "Lrx/internal/operators/CachedObservable$ReplayProducer<TT;>;"
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/CachedObservable$ReplayProducer;->addAndGet(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final replay()V
    .locals 16

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 338
    .local p0, "this":Lrx/internal/operators/CachedObservable$ReplayProducer;, "Lrx/internal/operators/CachedObservable$ReplayProducer<TT;>;"
    monitor-enter p0

    .line 339
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lrx/internal/operators/CachedObservable$ReplayProducer;->emitting:Z

    if-eqz v14, :cond_1

    .line 340
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lrx/internal/operators/CachedObservable$ReplayProducer;->missed:Z

    .line 341
    monitor-exit p0

    .line 440
    :cond_0
    :goto_0
    return-void

    .line 343
    :cond_1
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lrx/internal/operators/CachedObservable$ReplayProducer;->emitting:Z

    .line 344
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 345
    const/4 v12, 0x0

    .line 347
    .local v12, "skipFinal":Z
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lrx/internal/operators/CachedObservable$ReplayProducer;->child:Llgy;

    .line 351
    .local v3, "child":Llgy;, "Llgy<-TT;>;"
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/CachedObservable$ReplayProducer;->get()J

    move-result-wide v10

    .line 353
    .local v10, "r":J
    const-wide/16 v14, 0x0

    cmp-long v14, v10, v14

    if-ltz v14, :cond_0

    .line 360
    move-object/from16 v0, p0

    iget-object v14, v0, Lrx/internal/operators/CachedObservable$ReplayProducer;->state:Lrx/internal/operators/CachedObservable$a;

    .line 2097
    iget v9, v14, Llik;->j:I

    .line 361
    .local v9, "s":I
    if-eqz v9, :cond_9

    .line 362
    move-object/from16 v0, p0

    iget-object v2, v0, Lrx/internal/operators/CachedObservable$ReplayProducer;->currentBuffer:[Ljava/lang/Object;

    .line 365
    .local v2, "b":[Ljava/lang/Object;
    if-nez v2, :cond_2

    .line 366
    move-object/from16 v0, p0

    iget-object v14, v0, Lrx/internal/operators/CachedObservable$ReplayProducer;->state:Lrx/internal/operators/CachedObservable$a;

    .line 3083
    iget-object v2, v14, Llik;->h:[Ljava/lang/Object;

    .line 367
    move-object/from16 v0, p0

    iput-object v2, v0, Lrx/internal/operators/CachedObservable$ReplayProducer;->currentBuffer:[Ljava/lang/Object;

    .line 369
    :cond_2
    array-length v14, v2

    add-int/lit8 v7, v14, -0x1

    .line 370
    .local v7, "n":I
    move-object/from16 v0, p0

    iget v5, v0, Lrx/internal/operators/CachedObservable$ReplayProducer;->index:I

    .line 371
    .local v5, "j":I
    move-object/from16 v0, p0

    iget v6, v0, Lrx/internal/operators/CachedObservable$ReplayProducer;->currentIndexInBuffer:I

    .line 373
    .local v6, "k":I
    const-wide/16 v14, 0x0

    cmp-long v14, v10, v14

    if-nez v14, :cond_5

    .line 374
    aget-object v8, v2, v6

    .line 375
    .local v8, "o":Ljava/lang/Object;
    invoke-static {v8}, Lrx/internal/operators/NotificationLite;->b(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 376
    invoke-virtual {v3}, Llgy;->onCompleted()V

    .line 377
    const/4 v12, 0x1

    .line 378
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/CachedObservable$ReplayProducer;->unsubscribe()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 446
    .end local v2    # "b":[Ljava/lang/Object;
    .end local v3    # "child":Llgy;, "Llgy<-TT;>;"
    .end local v5    # "j":I
    .end local v6    # "k":I
    .end local v7    # "n":I
    .end local v8    # "o":Ljava/lang/Object;
    .end local v9    # "s":I
    .end local v10    # "r":J
    :catchall_0
    move-exception v14

    if-nez v12, :cond_3

    .line 447
    monitor-enter p0

    .line 448
    const/4 v15, 0x0

    :try_start_2
    move-object/from16 v0, p0

    iput-boolean v15, v0, Lrx/internal/operators/CachedObservable$ReplayProducer;->emitting:Z

    .line 449
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :cond_3
    throw v14

    .line 344
    .end local v12    # "skipFinal":Z
    :catchall_1
    move-exception v14

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v14

    .line 381
    .restart local v2    # "b":[Ljava/lang/Object;
    .restart local v3    # "child":Llgy;, "Llgy<-TT;>;"
    .restart local v5    # "j":I
    .restart local v6    # "k":I
    .restart local v7    # "n":I
    .restart local v8    # "o":Ljava/lang/Object;
    .restart local v9    # "s":I
    .restart local v10    # "r":J
    .restart local v12    # "skipFinal":Z
    :cond_4
    :try_start_4
    invoke-static {v8}, Lrx/internal/operators/NotificationLite;->c(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 382
    invoke-static {v8}, Lrx/internal/operators/NotificationLite;->e(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v14

    invoke-virtual {v3, v14}, Llgy;->onError(Ljava/lang/Throwable;)V

    .line 383
    const/4 v12, 0x1

    .line 384
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/CachedObservable$ReplayProducer;->unsubscribe()V

    goto :goto_0

    .line 388
    .end local v8    # "o":Ljava/lang/Object;
    :cond_5
    const-wide/16 v14, 0x0

    cmp-long v14, v10, v14

    if-lez v14, :cond_9

    .line 389
    const/4 v13, 0x0

    .line 391
    .local v13, "valuesProduced":I
    :goto_2
    if-ge v5, v9, :cond_8

    const-wide/16 v14, 0x0

    cmp-long v14, v10, v14

    if-lez v14, :cond_8

    .line 392
    invoke-virtual {v3}, Llgy;->isUnsubscribed()Z

    move-result v14

    if-nez v14, :cond_0

    .line 396
    if-ne v6, v7, :cond_6

    .line 397
    aget-object v14, v2, v7

    check-cast v14, [Ljava/lang/Object;

    move-object v0, v14

    check-cast v0, [Ljava/lang/Object;

    move-object v2, v0

    .line 398
    const/4 v6, 0x0

    .line 400
    :cond_6
    aget-object v8, v2, v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 403
    .restart local v8    # "o":Ljava/lang/Object;
    :try_start_5
    invoke-static {v3, v8}, Lrx/internal/operators/NotificationLite;->a(Llgt;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 404
    const/4 v12, 0x1

    .line 405
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/CachedObservable$ReplayProducer;->unsubscribe()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 408
    :catch_0
    move-exception v4

    .line 409
    .local v4, "err":Ljava/lang/Throwable;
    :try_start_6
    invoke-static {v4}, Llhe;->a(Ljava/lang/Throwable;)V

    .line 410
    const/4 v12, 0x1

    .line 411
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/CachedObservable$ReplayProducer;->unsubscribe()V

    .line 412
    invoke-static {v8}, Lrx/internal/operators/NotificationLite;->c(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    invoke-static {v8}, Lrx/internal/operators/NotificationLite;->b(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 413
    invoke-static {v8}, Lrx/internal/operators/NotificationLite;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-static {v4, v14}, Lrx/exceptions/OnErrorThrowable;->addValueAsLastCause(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v14

    invoke-virtual {v3, v14}, Llgy;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 418
    .end local v4    # "err":Ljava/lang/Throwable;
    :cond_7
    add-int/lit8 v6, v6, 0x1

    .line 419
    add-int/lit8 v5, v5, 0x1

    .line 420
    const-wide/16 v14, 0x1

    sub-long/2addr v10, v14

    .line 421
    add-int/lit8 v13, v13, 0x1

    .line 422
    goto :goto_2

    .line 424
    .end local v8    # "o":Ljava/lang/Object;
    :cond_8
    invoke-virtual {v3}, Llgy;->isUnsubscribed()Z

    move-result v14

    if-nez v14, :cond_0

    .line 429
    move-object/from16 v0, p0

    iput v5, v0, Lrx/internal/operators/CachedObservable$ReplayProducer;->index:I

    .line 430
    move-object/from16 v0, p0

    iput v6, v0, Lrx/internal/operators/CachedObservable$ReplayProducer;->currentIndexInBuffer:I

    .line 431
    move-object/from16 v0, p0

    iput-object v2, v0, Lrx/internal/operators/CachedObservable$ReplayProducer;->currentBuffer:[Ljava/lang/Object;

    .line 432
    int-to-long v14, v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lrx/internal/operators/CachedObservable$ReplayProducer;->produced(J)J

    .line 436
    .end local v2    # "b":[Ljava/lang/Object;
    .end local v5    # "j":I
    .end local v6    # "k":I
    .end local v7    # "n":I
    .end local v13    # "valuesProduced":I
    :cond_9
    monitor-enter p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 437
    :try_start_7
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lrx/internal/operators/CachedObservable$ReplayProducer;->missed:Z

    if-nez v14, :cond_a

    .line 438
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lrx/internal/operators/CachedObservable$ReplayProducer;->emitting:Z

    .line 439
    const/4 v12, 0x1

    .line 440
    monitor-exit p0

    goto/16 :goto_0

    .line 443
    :catchall_2
    move-exception v14

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v14
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 442
    :cond_a
    const/4 v14, 0x0

    :try_start_9
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lrx/internal/operators/CachedObservable$ReplayProducer;->missed:Z

    .line 443
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto/16 :goto_1

    .line 449
    .end local v3    # "child":Llgy;, "Llgy<-TT;>;"
    .end local v9    # "s":I
    .end local v10    # "r":J
    :catchall_3
    move-exception v14

    :try_start_a
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw v14
.end method

.method public final request(J)V
    .locals 9
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/internal/operators/CachedObservable$ReplayProducer;, "Lrx/internal/operators/CachedObservable$ReplayProducer<TT;>;"
    const-wide/16 v6, 0x0

    .line 295
    :cond_0
    invoke-virtual {p0}, Lrx/internal/operators/CachedObservable$ReplayProducer;->get()J

    move-result-wide v0

    .line 296
    .local v0, "r":J
    cmp-long v4, v0, v6

    if-gez v4, :cond_1

    .line 305
    :goto_0
    return-void

    .line 299
    :cond_1
    add-long v2, v0, p1

    .line 300
    .local v2, "u":J
    cmp-long v4, v2, v6

    if-gez v4, :cond_2

    .line 301
    const-wide v2, 0x7fffffffffffffffL

    .line 303
    :cond_2
    invoke-virtual {p0, v0, v1, v2, v3}, Lrx/internal/operators/CachedObservable$ReplayProducer;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 304
    invoke-virtual {p0}, Lrx/internal/operators/CachedObservable$ReplayProducer;->replay()V

    goto :goto_0
.end method

.method public final unsubscribe()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .local p0, "this":Lrx/internal/operators/CachedObservable$ReplayProducer;, "Lrx/internal/operators/CachedObservable$ReplayProducer<TT;>;"
    const-wide/16 v6, 0x0

    const/4 v2, 0x0

    .line 324
    invoke-virtual {p0}, Lrx/internal/operators/CachedObservable$ReplayProducer;->get()J

    move-result-wide v0

    .line 325
    .local v0, "r":J
    cmp-long v3, v0, v6

    if-ltz v3, :cond_0

    .line 326
    const-wide/16 v4, -0x1

    invoke-virtual {p0, v4, v5}, Lrx/internal/operators/CachedObservable$ReplayProducer;->getAndSet(J)J

    move-result-wide v0

    .line 327
    cmp-long v3, v0, v6

    if-ltz v3, :cond_0

    .line 328
    iget-object v4, p0, Lrx/internal/operators/CachedObservable$ReplayProducer;->state:Lrx/internal/operators/CachedObservable$a;

    .line 1140
    iget-object v5, v4, Lrx/internal/operators/CachedObservable$a;->b:Llky;

    monitor-enter v5

    .line 1141
    :try_start_0
    iget-object v6, v4, Lrx/internal/operators/CachedObservable$a;->c:[Lrx/internal/operators/CachedObservable$ReplayProducer;

    .line 1142
    array-length v7, v6

    .line 1143
    const/4 v3, -0x1

    .line 1144
    :goto_0
    if-ge v2, v7, :cond_4

    .line 1145
    aget-object v8, v6, v2

    invoke-virtual {v8, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1150
    :goto_1
    if-gez v2, :cond_2

    .line 1151
    monitor-exit v5

    .line 1161
    :cond_0
    :goto_2
    return-void

    .line 1144
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1153
    :cond_2
    const/4 v3, 0x1

    if-ne v7, v3, :cond_3

    .line 1154
    sget-object v2, Lrx/internal/operators/CachedObservable$a;->d:[Lrx/internal/operators/CachedObservable$ReplayProducer;

    iput-object v2, v4, Lrx/internal/operators/CachedObservable$a;->c:[Lrx/internal/operators/CachedObservable$ReplayProducer;

    .line 1155
    monitor-exit v5

    goto :goto_2

    .line 1161
    :catchall_0
    move-exception v2

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1157
    :cond_3
    add-int/lit8 v3, v7, -0x1

    :try_start_1
    new-array v3, v3, [Lrx/internal/operators/CachedObservable$ReplayProducer;

    .line 1158
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v6, v8, v3, v9, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1159
    add-int/lit8 v8, v2, 0x1

    sub-int/2addr v7, v2

    add-int/lit8 v7, v7, -0x1

    invoke-static {v6, v8, v3, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1160
    iput-object v3, v4, Lrx/internal/operators/CachedObservable$a;->c:[Lrx/internal/operators/CachedObservable$ReplayProducer;

    .line 1161
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_4
    move v2, v3

    goto :goto_1
.end method
