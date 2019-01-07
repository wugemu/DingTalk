.class final Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "OnSubscribeCombineLatest.java"

# interfaces
.implements Llgu;
.implements Llgz;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeCombineLatest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LatestCoordinator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Llgu;",
        "Llgz;"
    }
.end annotation


# static fields
.field static final MISSING:Ljava/lang/Object;

.field private static final serialVersionUID:J = 0x76e7117251786db1L


# instance fields
.field active:I

.field final actual:Llgy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llgy",
            "<-TR;>;"
        }
    .end annotation
.end field

.field final bufferSize:I

.field volatile cancelled:Z

.field final combiner:Llhm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llhm",
            "<+TR;>;"
        }
    .end annotation
.end field

.field complete:I

.field final delayError:Z

.field volatile done:Z

.field final error:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field final latest:[Ljava/lang/Object;

.field final queue:Llit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llit",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final requested:Ljava/util/concurrent/atomic/AtomicLong;

.field final subscribers:[Lrx/internal/operators/OnSubscribeCombineLatest$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lrx/internal/operators/OnSubscribeCombineLatest$a",
            "<TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 110
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->MISSING:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Llgy;Llhm;IIZ)V
    .locals 2
    .param p3, "count"    # I
    .param p4, "bufferSize"    # I
    .param p5, "delayError"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llgy",
            "<-TR;>;",
            "Llhm",
            "<+TR;>;IIZ)V"
        }
    .end annotation

    .prologue
    .line 115
    .local p0, "this":Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;, "Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator<TT;TR;>;"
    .local p1, "actual":Llgy;, "Llgy<-TR;>;"
    .local p2, "combiner":Llhm;, "Llhm<+TR;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 116
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->actual:Llgy;

    .line 117
    iput-object p2, p0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->combiner:Llhm;

    .line 118
    iput p4, p0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->bufferSize:I

    .line 119
    iput-boolean p5, p0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->delayError:Z

    .line 120
    new-array v0, p3, [Ljava/lang/Object;

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->latest:[Ljava/lang/Object;

    .line 121
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->latest:[Ljava/lang/Object;

    sget-object v1, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->MISSING:Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 122
    new-array v0, p3, [Lrx/internal/operators/OnSubscribeCombineLatest$a;

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->subscribers:[Lrx/internal/operators/OnSubscribeCombineLatest$a;

    .line 123
    new-instance v0, Llit;

    invoke-direct {v0, p4}, Llit;-><init>(I)V

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->queue:Llit;

    .line 124
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 125
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->error:Ljava/util/concurrent/atomic/AtomicReference;

    .line 126
    return-void
.end method


# virtual methods
.method final cancel(Ljava/util/Queue;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue",
            "<*>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 174
    .local p0, "this":Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;, "Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator<TT;TR;>;"
    .local p1, "q":Ljava/util/Queue;, "Ljava/util/Queue<*>;"
    invoke-interface {p1}, Ljava/util/Queue;->clear()V

    .line 175
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->subscribers:[Lrx/internal/operators/OnSubscribeCombineLatest$a;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 176
    .local v0, "s":Lrx/internal/operators/OnSubscribeCombineLatest$a;, "Lrx/internal/operators/OnSubscribeCombineLatest$a<TT;TR;>;"
    invoke-virtual {v0}, Lrx/internal/operators/OnSubscribeCombineLatest$a;->unsubscribe()V

    .line 175
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 178
    .end local v0    # "s":Lrx/internal/operators/OnSubscribeCombineLatest$a;, "Lrx/internal/operators/OnSubscribeCombineLatest$a<TT;TR;>;"
    :cond_0
    return-void
.end method

.method final checkTerminated(ZZLlgy;Ljava/util/Queue;Z)Z
    .locals 3
    .param p1, "mainDone"    # Z
    .param p2, "queueEmpty"    # Z
    .param p5, "delayError"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Llgy",
            "<*>;",
            "Ljava/util/Queue",
            "<*>;Z)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .local p0, "this":Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;, "Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator<TT;TR;>;"
    .local p3, "childSubscriber":Llgy;, "Llgy<*>;"
    .local p4, "q":Ljava/util/Queue;, "Ljava/util/Queue<*>;"
    const/4 v1, 0x1

    .line 303
    iget-boolean v2, p0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->cancelled:Z

    if-eqz v2, :cond_0

    .line 304
    invoke-virtual {p0, p4}, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->cancel(Ljava/util/Queue;)V

    .line 331
    :goto_0
    return v1

    .line 307
    :cond_0
    if-eqz p1, :cond_4

    .line 308
    if-eqz p5, :cond_2

    .line 309
    if-eqz p2, :cond_4

    .line 310
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->error:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .line 311
    .local v0, "e":Ljava/lang/Throwable;
    if-eqz v0, :cond_1

    .line 312
    invoke-virtual {p3, v0}, Llgy;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 314
    :cond_1
    invoke-virtual {p3}, Llgy;->onCompleted()V

    goto :goto_0

    .line 319
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_2
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->error:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .line 320
    .restart local v0    # "e":Ljava/lang/Throwable;
    if-eqz v0, :cond_3

    .line 321
    invoke-virtual {p0, p4}, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->cancel(Ljava/util/Queue;)V

    .line 322
    invoke-virtual {p3, v0}, Llgy;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 325
    :cond_3
    if-eqz p2, :cond_4

    .line 326
    invoke-virtual {p3}, Llgy;->onCompleted()V

    goto :goto_0

    .line 331
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method final combine(Ljava/lang/Object;I)V
    .locals 18
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "index"    # I

    .prologue
    .line 187
    .local p0, "this":Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;, "Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator<TT;TR;>;"
    move-object/from16 v0, p0

    iget-object v9, v0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->subscribers:[Lrx/internal/operators/OnSubscribeCombineLatest$a;

    aget-object v4, v9, p2

    .line 194
    .local v4, "combinerSubscriber":Lrx/internal/operators/OnSubscribeCombineLatest$a;, "Lrx/internal/operators/OnSubscribeCombineLatest$a<TT;TR;>;"
    monitor-enter p0

    .line 195
    :try_start_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->latest:[Ljava/lang/Object;

    array-length v8, v9

    .line 196
    .local v8, "sourceCount":I
    move-object/from16 v0, p0

    iget-object v9, v0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->latest:[Ljava/lang/Object;

    aget-object v7, v9, p2

    .line 197
    .local v7, "o":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget v2, v0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->active:I

    .line 198
    .local v2, "activeCount":I
    sget-object v9, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->MISSING:Ljava/lang/Object;

    if-ne v7, v9, :cond_0

    .line 199
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->active:I

    .line 201
    :cond_0
    move-object/from16 v0, p0

    iget v5, v0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->complete:I

    .line 202
    .local v5, "completedCount":I
    if-nez p1, :cond_3

    .line 203
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->complete:I

    .line 207
    :goto_0
    if-ne v2, v8, :cond_4

    const/4 v3, 0x1

    .line 209
    .local v3, "allSourcesFinished":Z
    :goto_1
    if-eq v5, v8, :cond_1

    if-nez p1, :cond_5

    sget-object v9, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->MISSING:Ljava/lang/Object;

    if-ne v7, v9, :cond_5

    :cond_1
    const/4 v6, 0x1

    .line 211
    .local v6, "empty":Z
    :goto_2
    if-nez v6, :cond_9

    .line 212
    if-eqz p1, :cond_7

    if-eqz v3, :cond_7

    .line 213
    move-object/from16 v0, p0

    iget-object v9, v0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->queue:Llit;

    move-object/from16 v0, p0

    iget-object v10, v0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->latest:[Ljava/lang/Object;

    invoke-virtual {v10}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v10

    .line 11325
    iget-object v11, v9, Llit;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 12220
    iget-object v12, v9, Llit;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v12

    .line 11327
    iget v14, v9, Llit;->e:I

    .line 11329
    const-wide/16 v16, 0x2

    add-long v16, v16, v12

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v14}, Llit;->a(JI)I

    move-result v15

    .line 11331
    invoke-static {v11, v15}, Llit;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v15

    if-nez v15, :cond_6

    .line 11332
    invoke-static {v12, v13, v14}, Llit;->a(JI)I

    move-result v14

    .line 11333
    add-int/lit8 v15, v14, 0x1

    invoke-static {v11, v15, v10}, Llit;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 11334
    invoke-static {v11, v14, v4}, Llit;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 11335
    const-wide/16 v10, 0x2

    add-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Llit;->a(J)V

    .line 221
    :cond_2
    :goto_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    if-nez v3, :cond_a

    if-eqz p1, :cond_a

    .line 223
    const-wide/16 v10, 0x1

    invoke-virtual {v4, v10, v11}, Lrx/internal/operators/OnSubscribeCombineLatest$a;->b(J)V

    .line 227
    :goto_4
    return-void

    .line 205
    .end local v3    # "allSourcesFinished":Z
    .end local v6    # "empty":Z
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->latest:[Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lrx/internal/operators/NotificationLite;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v9, p2

    goto :goto_0

    .line 221
    .end local v2    # "activeCount":I
    .end local v5    # "completedCount":I
    .end local v7    # "o":Ljava/lang/Object;
    .end local v8    # "sourceCount":I
    :catchall_0
    move-exception v9

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v9

    .line 207
    .restart local v2    # "activeCount":I
    .restart local v5    # "completedCount":I
    .restart local v7    # "o":Ljava/lang/Object;
    .restart local v8    # "sourceCount":I
    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    .line 209
    .restart local v3    # "allSourcesFinished":Z
    :cond_5
    const/4 v6, 0x0

    goto :goto_2

    .line 11337
    .restart local v6    # "empty":Z
    :cond_6
    :try_start_2
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v15

    .line 11338
    new-instance v16, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-object/from16 v0, v16

    invoke-direct {v0, v15}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    .line 11339
    move-object/from16 v0, v16

    iput-object v0, v9, Llit;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 11341
    invoke-static {v12, v13, v14}, Llit;->a(JI)I

    move-result v14

    .line 11342
    add-int/lit8 v15, v14, 0x1

    move-object/from16 v0, v16

    invoke-static {v0, v15, v10}, Llit;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 11343
    move-object/from16 v0, v16

    invoke-static {v0, v14, v4}, Llit;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 11344
    move-object/from16 v0, v16

    invoke-static {v11, v0}, Llit;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;Ljava/util/concurrent/atomic/AtomicReferenceArray;)V

    .line 11346
    sget-object v10, Llit;->j:Ljava/lang/Object;

    invoke-static {v11, v14, v10}, Llit;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 11348
    const-wide/16 v10, 0x2

    add-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Llit;->a(J)V

    goto :goto_3

    .line 215
    :cond_7
    if-nez p1, :cond_2

    move-object/from16 v0, p0

    iget-object v9, v0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->error:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_2

    sget-object v9, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->MISSING:Ljava/lang/Object;

    if-eq v7, v9, :cond_8

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->delayError:Z

    if-nez v9, :cond_2

    .line 216
    :cond_8
    const/4 v9, 0x1

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->done:Z

    goto :goto_3

    .line 219
    :cond_9
    const/4 v9, 0x1

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->done:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 226
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->drain()V

    goto :goto_4
.end method

.method final drain()V
    .locals 20

    .prologue
    .line 229
    .local p0, "this":Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;, "Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator<TT;TR;>;"
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->getAndIncrement()I

    move-result v2

    if-eqz v2, :cond_1

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->queue:Llit;

    .line 234
    .local v6, "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->actual:Llgy;

    .line 235
    .local v5, "a":Llgy;, "Llgy<-TR;>;"
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->delayError:Z

    .line 236
    .local v7, "delayError":Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 238
    .local v13, "localRequested":Ljava/util/concurrent/atomic/AtomicLong;
    const/4 v14, 0x1

    .line 241
    .local v14, "missed":I
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->done:Z

    invoke-interface {v6}, Ljava/util/Queue;->isEmpty()Z

    move-result v4

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->checkTerminated(ZZLlgy;Ljava/util/Queue;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 245
    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v16

    .line 246
    .local v16, "requestAmount":J
    const-wide/16 v10, 0x0

    .line 248
    .local v10, "emitted":J
    :goto_2
    cmp-long v2, v10, v16

    if-eqz v2, :cond_4

    .line 250
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->done:Z

    .line 252
    .local v3, "d":Z
    invoke-interface {v6}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lrx/internal/operators/OnSubscribeCombineLatest$a;

    .line 253
    .local v9, "cs":Lrx/internal/operators/OnSubscribeCombineLatest$a;, "Lrx/internal/operators/OnSubscribeCombineLatest$a<TT;TR;>;"
    if-nez v9, :cond_2

    const/4 v4, 0x1

    .local v4, "empty":Z
    :goto_3
    move-object/from16 v2, p0

    .line 255
    invoke-virtual/range {v2 .. v7}, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->checkTerminated(ZZLlgy;Ljava/util/Queue;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 259
    if-nez v4, :cond_4

    .line 263
    invoke-interface {v6}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 264
    invoke-interface {v6}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object v8, v2

    check-cast v8, [Ljava/lang/Object;

    .line 266
    .local v8, "array":[Ljava/lang/Object;
    if-nez v8, :cond_3

    .line 267
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->cancelled:Z

    .line 268
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->cancel(Ljava/util/Queue;)V

    .line 269
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v18, "Broken queue?! Sender received but not the array."

    move-object/from16 v0, v18

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Llgy;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 253
    .end local v4    # "empty":Z
    .end local v8    # "array":[Ljava/lang/Object;
    :cond_2
    const/4 v4, 0x0

    goto :goto_3

    .line 275
    .restart local v4    # "empty":Z
    .restart local v8    # "array":[Ljava/lang/Object;
    :cond_3
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->combiner:Llhm;

    invoke-interface {v2}, Llhm;->a()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v15

    .line 283
    .local v15, "v":Ljava/lang/Object;, "TR;"
    invoke-virtual {v5, v15}, Llgy;->onNext(Ljava/lang/Object;)V

    .line 285
    const-wide/16 v18, 0x1

    move-wide/from16 v0, v18

    invoke-virtual {v9, v0, v1}, Lrx/internal/operators/OnSubscribeCombineLatest$a;->b(J)V

    .line 287
    const-wide/16 v18, 0x1

    add-long v10, v10, v18

    .line 288
    goto :goto_2

    .line 276
    .end local v15    # "v":Ljava/lang/Object;, "TR;"
    :catch_0
    move-exception v12

    .line 277
    .local v12, "ex":Ljava/lang/Throwable;
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->cancelled:Z

    .line 278
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->cancel(Ljava/util/Queue;)V

    .line 279
    invoke-virtual {v5, v12}, Llgy;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 290
    .end local v3    # "d":Z
    .end local v4    # "empty":Z
    .end local v8    # "array":[Ljava/lang/Object;
    .end local v9    # "cs":Lrx/internal/operators/OnSubscribeCombineLatest$a;, "Lrx/internal/operators/OnSubscribeCombineLatest$a<TT;TR;>;"
    .end local v12    # "ex":Ljava/lang/Throwable;
    :cond_4
    const-wide/16 v18, 0x0

    cmp-long v2, v10, v18

    if-eqz v2, :cond_5

    const-wide v18, 0x7fffffffffffffffL

    cmp-long v2, v16, v18

    if-eqz v2, :cond_5

    .line 291
    invoke-static {v13, v10, v11}, Llhn;->b(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 294
    :cond_5
    neg-int v2, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->addAndGet(I)I

    move-result v14

    .line 295
    if-eqz v14, :cond_0

    goto/16 :goto_1
.end method

.method public final isUnsubscribed()Z
    .locals 1

    .prologue
    .line 170
    .local p0, "this":Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;, "Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator<TT;TR;>;"
    iget-boolean v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->cancelled:Z

    return v0
.end method

.method final onError(Ljava/lang/Throwable;)V
    .locals 7
    .param p1, "e"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 335
    .local p0, "this":Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;, "Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator<TT;TR;>;"
    iget-object v3, p0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->error:Ljava/util/concurrent/atomic/AtomicReference;

    .line 337
    .local v3, "localError":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Throwable;>;"
    :cond_0
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    .line 339
    .local v1, "curr":Ljava/lang/Throwable;
    if-eqz v1, :cond_2

    .line 340
    instance-of v5, v1, Lrx/exceptions/CompositeException;

    if-eqz v5, :cond_1

    move-object v0, v1

    .line 341
    check-cast v0, Lrx/exceptions/CompositeException;

    .line 342
    .local v0, "ce":Lrx/exceptions/CompositeException;
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lrx/exceptions/CompositeException;->getExceptions()Ljava/util/List;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 343
    .local v2, "es":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 344
    new-instance v4, Lrx/exceptions/CompositeException;

    invoke-direct {v4, v2}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    .line 351
    .end local v0    # "ce":Lrx/exceptions/CompositeException;
    .end local v2    # "es":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    .local v4, "next":Ljava/lang/Throwable;
    :goto_0
    invoke-virtual {v3, v1, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 352
    return-void

    .line 346
    .end local v4    # "next":Ljava/lang/Throwable;
    :cond_1
    new-instance v4, Lrx/exceptions/CompositeException;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Throwable;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    .restart local v4    # "next":Ljava/lang/Throwable;
    goto :goto_0

    .line 349
    .end local v4    # "next":Ljava/lang/Throwable;
    :cond_2
    move-object v4, p1

    .restart local v4    # "next":Ljava/lang/Throwable;
    goto :goto_0
.end method

.method public final request(J)V
    .locals 5
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;, "Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator<TT;TR;>;"
    const-wide/16 v2, 0x0

    .line 148
    cmp-long v0, p1, v2

    if-gez v0, :cond_0

    .line 149
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

    .line 151
    :cond_0
    cmp-long v0, p1, v2

    if-eqz v0, :cond_1

    .line 152
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Llhn;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 153
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->drain()V

    .line 155
    :cond_1
    return-void
.end method

.method public final subscribe([Llgs;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Llgs",
            "<+TT;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 130
    .local p0, "this":Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;, "Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator<TT;TR;>;"
    .local p1, "sources":[Llgs;, "[Llgs<+TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->subscribers:[Lrx/internal/operators/OnSubscribeCombineLatest$a;

    .line 131
    .local v0, "as":[Llgy;, "[Llgy<TT;>;"
    array-length v2, v0

    .line 132
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 133
    new-instance v3, Lrx/internal/operators/OnSubscribeCombineLatest$a;

    invoke-direct {v3, p0, v1}, Lrx/internal/operators/OnSubscribeCombineLatest$a;-><init>(Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;I)V

    aput-object v3, v0, v1

    .line 132
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 135
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->lazySet(I)V

    .line 136
    iget-object v3, p0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->actual:Llgy;

    invoke-virtual {v3, p0}, Llgy;->a(Llgz;)V

    .line 137
    iget-object v3, p0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->actual:Llgy;

    invoke-virtual {v3, p0}, Llgy;->a(Llgu;)V

    .line 138
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_1

    .line 139
    iget-boolean v3, p0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->cancelled:Z

    if-eqz v3, :cond_2

    .line 144
    :cond_1
    return-void

    .line 142
    :cond_2
    aget-object v3, p1, v1

    aget-object v4, v0, v1

    .line 11319
    invoke-static {v4, v3}, Llgs;->a(Llgy;Llgs;)Llgz;

    .line 138
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public final unsubscribe()V
    .locals 1

    .prologue
    .line 159
    .local p0, "this":Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;, "Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator<TT;TR;>;"
    iget-boolean v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->cancelled:Z

    if-nez v0, :cond_0

    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->cancelled:Z

    .line 162
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 163
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->queue:Llit;

    invoke-virtual {p0, v0}, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->cancel(Ljava/util/Queue;)V

    .line 166
    :cond_0
    return-void
.end method
