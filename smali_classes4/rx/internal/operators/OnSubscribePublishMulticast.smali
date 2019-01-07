.class public final Lrx/internal/operators/OnSubscribePublishMulticast;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "OnSubscribePublishMulticast.java"

# interfaces
.implements Llgs$a;
.implements Llgt;
.implements Llgz;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;,
        Lrx/internal/operators/OnSubscribePublishMulticast$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Llgs$a",
        "<TT;>;",
        "Llgt",
        "<TT;>;",
        "Llgz;"
    }
.end annotation


# static fields
.field static final EMPTY:[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer",
            "<*>;"
        }
    .end annotation
.end field

.field static final TERMINATED:[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer",
            "<*>;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x33eddf69c4461997L


# instance fields
.field final delayError:Z

.field volatile done:Z

.field error:Ljava/lang/Throwable;

.field final parent:Lrx/internal/operators/OnSubscribePublishMulticast$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OnSubscribePublishMulticast$a",
            "<TT;>;"
        }
    .end annotation
.end field

.field final prefetch:I

.field volatile producer:Llgu;

.field final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<TT;>;"
        }
    .end annotation
.end field

.field volatile subscribers:[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 86
    new-array v0, v1, [Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;

    sput-object v0, Lrx/internal/operators/OnSubscribePublishMulticast;->EMPTY:[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;

    .line 92
    new-array v0, v1, [Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;

    sput-object v0, Lrx/internal/operators/OnSubscribePublishMulticast;->TERMINATED:[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 3
    .param p1, "prefetch"    # I
    .param p2, "delayError"    # Z

    .prologue
    .line 101
    .local p0, "this":Lrx/internal/operators/OnSubscribePublishMulticast;, "Lrx/internal/operators/OnSubscribePublishMulticast<TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 102
    if-gtz p1, :cond_0

    .line 103
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "prefetch > 0 required but it was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_0
    iput p1, p0, Lrx/internal/operators/OnSubscribePublishMulticast;->prefetch:I

    .line 106
    iput-boolean p2, p0, Lrx/internal/operators/OnSubscribePublishMulticast;->delayError:Z

    .line 107
    invoke-static {}, Llkb;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    new-instance v0, Lljn;

    invoke-direct {v0, p1}, Lljn;-><init>(I)V

    iput-object v0, p0, Lrx/internal/operators/OnSubscribePublishMulticast;->queue:Ljava/util/Queue;

    .line 112
    :goto_0
    sget-object v0, Lrx/internal/operators/OnSubscribePublishMulticast;->EMPTY:[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;

    check-cast v0, [Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;

    iput-object v0, p0, Lrx/internal/operators/OnSubscribePublishMulticast;->subscribers:[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;

    .line 113
    new-instance v0, Lrx/internal/operators/OnSubscribePublishMulticast$a;

    invoke-direct {v0, p0}, Lrx/internal/operators/OnSubscribePublishMulticast$a;-><init>(Lrx/internal/operators/OnSubscribePublishMulticast;)V

    iput-object v0, p0, Lrx/internal/operators/OnSubscribePublishMulticast;->parent:Lrx/internal/operators/OnSubscribePublishMulticast$a;

    .line 114
    return-void

    .line 110
    :cond_1
    new-instance v0, Llis;

    invoke-direct {v0, p1}, Llis;-><init>(I)V

    iput-object v0, p0, Lrx/internal/operators/OnSubscribePublishMulticast;->queue:Ljava/util/Queue;

    goto :goto_0
.end method


# virtual methods
.method final add(Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer",
            "<TT;>;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .local p0, "this":Lrx/internal/operators/OnSubscribePublishMulticast;, "Lrx/internal/operators/OnSubscribePublishMulticast<TT;>;"
    .local p1, "inner":Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;, "Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer<TT;>;"
    const/4 v3, 0x0

    .line 316
    iget-object v0, p0, Lrx/internal/operators/OnSubscribePublishMulticast;->subscribers:[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;

    .line 317
    .local v0, "a":[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;, "[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer<TT;>;"
    sget-object v4, Lrx/internal/operators/OnSubscribePublishMulticast;->TERMINATED:[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;

    if-ne v0, v4, :cond_0

    .line 332
    :goto_0
    return v3

    .line 320
    :cond_0
    monitor-enter p0

    .line 321
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/OnSubscribePublishMulticast;->subscribers:[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;

    .line 322
    sget-object v4, Lrx/internal/operators/OnSubscribePublishMulticast;->TERMINATED:[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;

    if-ne v0, v4, :cond_1

    .line 323
    monitor-exit p0

    goto :goto_0

    .line 333
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 326
    :cond_1
    :try_start_1
    array-length v2, v0

    .line 328
    .local v2, "n":I
    add-int/lit8 v3, v2, 0x1

    new-array v1, v3, [Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;

    .line 329
    .local v1, "b":[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;, "[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer<TT;>;"
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 330
    aput-object p1, v1, v2

    .line 331
    iput-object v1, p0, Lrx/internal/operators/OnSubscribePublishMulticast;->subscribers:[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;

    .line 332
    const/4 v3, 0x1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 42
    .local p0, "this":Lrx/internal/operators/OnSubscribePublishMulticast;, "Lrx/internal/operators/OnSubscribePublishMulticast<TT;>;"
    check-cast p1, Llgy;

    invoke-virtual {p0, p1}, Lrx/internal/operators/OnSubscribePublishMulticast;->call(Llgy;)V

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
    .line 118
    .local p0, "this":Lrx/internal/operators/OnSubscribePublishMulticast;, "Lrx/internal/operators/OnSubscribePublishMulticast<TT;>;"
    .local p1, "t":Llgy;, "Llgy<-TT;>;"
    new-instance v1, Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;

    invoke-direct {v1, p1, p0}, Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;-><init>(Llgy;Lrx/internal/operators/OnSubscribePublishMulticast;)V

    .line 119
    .local v1, "pp":Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;, "Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer<TT;>;"
    invoke-virtual {p1, v1}, Llgy;->a(Llgz;)V

    .line 120
    invoke-virtual {p1, v1}, Llgy;->a(Llgu;)V

    .line 122
    invoke-virtual {p0, v1}, Lrx/internal/operators/OnSubscribePublishMulticast;->add(Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 123
    invoke-virtual {v1}, Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;->isUnsubscribed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 124
    invoke-virtual {p0, v1}, Lrx/internal/operators/OnSubscribePublishMulticast;->remove(Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;)V

    .line 136
    :goto_0
    return-void

    .line 126
    :cond_0
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribePublishMulticast;->drain()V

    goto :goto_0

    .line 129
    :cond_1
    iget-object v0, p0, Lrx/internal/operators/OnSubscribePublishMulticast;->error:Ljava/lang/Throwable;

    .line 130
    .local v0, "e":Ljava/lang/Throwable;
    if-eqz v0, :cond_2

    .line 131
    invoke-virtual {p1, v0}, Llgy;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 133
    :cond_2
    invoke-virtual {p1}, Llgy;->onCompleted()V

    goto :goto_0
.end method

.method final checkTerminated(ZZ)Z
    .locals 7
    .param p1, "d"    # Z
    .param p2, "empty"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .local p0, "this":Lrx/internal/operators/OnSubscribePublishMulticast;, "Lrx/internal/operators/OnSubscribePublishMulticast<TT;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 254
    if-eqz p1, :cond_3

    .line 255
    iget-boolean v5, p0, Lrx/internal/operators/OnSubscribePublishMulticast;->delayError:Z

    if-eqz v5, :cond_1

    .line 256
    if-eqz p2, :cond_3

    .line 257
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribePublishMulticast;->terminate()[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;

    move-result-object v0

    .line 258
    .local v0, "a":[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;, "[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer<TT;>;"
    iget-object v1, p0, Lrx/internal/operators/OnSubscribePublishMulticast;->error:Ljava/lang/Throwable;

    .line 259
    .local v1, "ex":Ljava/lang/Throwable;
    if-eqz v1, :cond_0

    .line 260
    array-length v5, v0

    :goto_0
    if-ge v4, v5, :cond_4

    aget-object v2, v0, v4

    .line 261
    .local v2, "inner":Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;, "Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer<TT;>;"
    iget-object v6, v2, Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;->actual:Llgy;

    invoke-virtual {v6, v1}, Llgy;->onError(Ljava/lang/Throwable;)V

    .line 260
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 264
    .end local v2    # "inner":Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;, "Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer<TT;>;"
    :cond_0
    array-length v5, v0

    :goto_1
    if-ge v4, v5, :cond_4

    aget-object v2, v0, v4

    .line 265
    .restart local v2    # "inner":Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;, "Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer<TT;>;"
    iget-object v6, v2, Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;->actual:Llgy;

    invoke-virtual {v6}, Llgy;->onCompleted()V

    .line 264
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 271
    .end local v0    # "a":[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;, "[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer<TT;>;"
    .end local v1    # "ex":Ljava/lang/Throwable;
    .end local v2    # "inner":Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;, "Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer<TT;>;"
    :cond_1
    iget-object v1, p0, Lrx/internal/operators/OnSubscribePublishMulticast;->error:Ljava/lang/Throwable;

    .line 272
    .restart local v1    # "ex":Ljava/lang/Throwable;
    if-eqz v1, :cond_2

    .line 273
    iget-object v5, p0, Lrx/internal/operators/OnSubscribePublishMulticast;->queue:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->clear()V

    .line 274
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribePublishMulticast;->terminate()[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;

    move-result-object v0

    .line 275
    .restart local v0    # "a":[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;, "[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer<TT;>;"
    array-length v5, v0

    :goto_2
    if-ge v4, v5, :cond_4

    aget-object v2, v0, v4

    .line 276
    .restart local v2    # "inner":Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;, "Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer<TT;>;"
    iget-object v6, v2, Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;->actual:Llgy;

    invoke-virtual {v6, v1}, Llgy;->onError(Ljava/lang/Throwable;)V

    .line 275
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 280
    .end local v0    # "a":[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;, "[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer<TT;>;"
    .end local v2    # "inner":Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;, "Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer<TT;>;"
    :cond_2
    if-eqz p2, :cond_3

    .line 281
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribePublishMulticast;->terminate()[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;

    move-result-object v0

    .line 282
    .restart local v0    # "a":[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;, "[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer<TT;>;"
    array-length v5, v0

    :goto_3
    if-ge v4, v5, :cond_4

    aget-object v2, v0, v4

    .line 283
    .restart local v2    # "inner":Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;, "Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer<TT;>;"
    iget-object v6, v2, Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;->actual:Llgy;

    invoke-virtual {v6}, Llgy;->onCompleted()V

    .line 282
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .end local v0    # "a":[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;, "[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer<TT;>;"
    .end local v1    # "ex":Ljava/lang/Throwable;
    .end local v2    # "inner":Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;, "Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer<TT;>;"
    :cond_3
    move v3, v4

    .line 289
    :cond_4
    return v3
.end method

.method final drain()V
    .locals 20

    .prologue
    .line 179
    .local p0, "this":Lrx/internal/operators/OnSubscribePublishMulticast;, "Lrx/internal/operators/OnSubscribePublishMulticast<TT;>;"
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/OnSubscribePublishMulticast;->getAndIncrement()I

    move-result v15

    if-eqz v15, :cond_1

    .line 245
    :cond_0
    return-void

    .line 183
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lrx/internal/operators/OnSubscribePublishMulticast;->queue:Ljava/util/Queue;

    .line 185
    .local v11, "q":Ljava/util/Queue;, "Ljava/util/Queue<TT;>;"
    const/4 v8, 0x0

    .line 189
    .local v8, "missed":I
    :goto_0
    const-wide v12, 0x7fffffffffffffffL

    .line 190
    .local v12, "r":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lrx/internal/operators/OnSubscribePublishMulticast;->subscribers:[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;

    .line 191
    .local v2, "a":[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;, "[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer<TT;>;"
    array-length v9, v2

    .line 193
    .local v9, "n":I
    array-length v0, v2

    move/from16 v16, v0

    const/4 v15, 0x0

    :goto_1
    move/from16 v0, v16

    if-ge v15, v0, :cond_2

    aget-object v7, v2, v15

    .line 194
    .local v7, "inner":Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;, "Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer<TT;>;"
    invoke-virtual {v7}, Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;->get()J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    .line 193
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 197
    .end local v7    # "inner":Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;, "Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer<TT;>;"
    :cond_2
    if-eqz v9, :cond_8

    .line 198
    const-wide/16 v4, 0x0

    .line 200
    .local v4, "e":J
    :goto_2
    cmp-long v15, v4, v12

    if-eqz v15, :cond_5

    .line 201
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lrx/internal/operators/OnSubscribePublishMulticast;->done:Z

    .line 203
    .local v3, "d":Z
    invoke-interface {v11}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v14

    .line 205
    .local v14, "v":Ljava/lang/Object;, "TT;"
    if-nez v14, :cond_3

    const/4 v6, 0x1

    .line 207
    .local v6, "empty":Z
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6}, Lrx/internal/operators/OnSubscribePublishMulticast;->checkTerminated(ZZ)Z

    move-result v15

    if-nez v15, :cond_0

    .line 211
    if-nez v6, :cond_5

    .line 215
    array-length v0, v2

    move/from16 v16, v0

    const/4 v15, 0x0

    :goto_4
    move/from16 v0, v16

    if-ge v15, v0, :cond_4

    aget-object v7, v2, v15

    .line 216
    .restart local v7    # "inner":Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;, "Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer<TT;>;"
    iget-object v0, v7, Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;->actual:Llgy;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Llgy;->onNext(Ljava/lang/Object;)V

    .line 215
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 205
    .end local v6    # "empty":Z
    .end local v7    # "inner":Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;, "Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer<TT;>;"
    :cond_3
    const/4 v6, 0x0

    goto :goto_3

    .line 219
    .restart local v6    # "empty":Z
    :cond_4
    const-wide/16 v16, 0x1

    add-long v4, v4, v16

    .line 220
    goto :goto_2

    .line 222
    .end local v3    # "d":Z
    .end local v6    # "empty":Z
    .end local v14    # "v":Ljava/lang/Object;, "TT;"
    :cond_5
    cmp-long v15, v4, v12

    if-nez v15, :cond_6

    .line 223
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lrx/internal/operators/OnSubscribePublishMulticast;->done:Z

    invoke-interface {v11}, Ljava/util/Queue;->isEmpty()Z

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lrx/internal/operators/OnSubscribePublishMulticast;->checkTerminated(ZZ)Z

    move-result v15

    if-nez v15, :cond_0

    .line 228
    :cond_6
    const-wide/16 v16, 0x0

    cmp-long v15, v4, v16

    if-eqz v15, :cond_8

    .line 229
    move-object/from16 v0, p0

    iget-object v10, v0, Lrx/internal/operators/OnSubscribePublishMulticast;->producer:Llgu;

    .line 230
    .local v10, "p":Llgu;
    if-eqz v10, :cond_7

    .line 231
    invoke-interface {v10, v4, v5}, Llgu;->request(J)V

    .line 233
    :cond_7
    array-length v0, v2

    move/from16 v16, v0

    const/4 v15, 0x0

    :goto_5
    move/from16 v0, v16

    if-ge v15, v0, :cond_8

    aget-object v7, v2, v15

    .line 234
    .restart local v7    # "inner":Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;, "Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer<TT;>;"
    invoke-static {v7, v4, v5}, Llhn;->b(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 233
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 240
    .end local v4    # "e":J
    .end local v7    # "inner":Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;, "Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer<TT;>;"
    .end local v10    # "p":Llgu;
    :cond_8
    neg-int v15, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lrx/internal/operators/OnSubscribePublishMulticast;->addAndGet(I)I

    move-result v8

    .line 241
    if-eqz v8, :cond_0

    goto/16 :goto_0
.end method

.method public final isUnsubscribed()Z
    .locals 1

    .prologue
    .line 428
    .local p0, "this":Lrx/internal/operators/OnSubscribePublishMulticast;, "Lrx/internal/operators/OnSubscribePublishMulticast<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribePublishMulticast;->parent:Lrx/internal/operators/OnSubscribePublishMulticast$a;

    invoke-virtual {v0}, Lrx/internal/operators/OnSubscribePublishMulticast$a;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public final onCompleted()V
    .locals 1

    .prologue
    .line 158
    .local p0, "this":Lrx/internal/operators/OnSubscribePublishMulticast;, "Lrx/internal/operators/OnSubscribePublishMulticast<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OnSubscribePublishMulticast;->done:Z

    .line 159
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribePublishMulticast;->drain()V

    .line 160
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 151
    .local p0, "this":Lrx/internal/operators/OnSubscribePublishMulticast;, "Lrx/internal/operators/OnSubscribePublishMulticast<TT;>;"
    iput-object p1, p0, Lrx/internal/operators/OnSubscribePublishMulticast;->error:Ljava/lang/Throwable;

    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OnSubscribePublishMulticast;->done:Z

    .line 153
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribePublishMulticast;->drain()V

    .line 154
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
    .line 140
    .local p0, "this":Lrx/internal/operators/OnSubscribePublishMulticast;, "Lrx/internal/operators/OnSubscribePublishMulticast<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribePublishMulticast;->queue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    iget-object v0, p0, Lrx/internal/operators/OnSubscribePublishMulticast;->parent:Lrx/internal/operators/OnSubscribePublishMulticast$a;

    invoke-virtual {v0}, Lrx/internal/operators/OnSubscribePublishMulticast$a;->unsubscribe()V

    .line 143
    new-instance v0, Lrx/exceptions/MissingBackpressureException;

    const-string/jumbo v1, "Queue full?!"

    invoke-direct {v0, v1}, Lrx/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lrx/internal/operators/OnSubscribePublishMulticast;->error:Ljava/lang/Throwable;

    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OnSubscribePublishMulticast;->done:Z

    .line 146
    :cond_0
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribePublishMulticast;->drain()V

    .line 147
    return-void
.end method

.method final remove(Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer",
            "<TT;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 342
    .local p0, "this":Lrx/internal/operators/OnSubscribePublishMulticast;, "Lrx/internal/operators/OnSubscribePublishMulticast<TT;>;"
    .local p1, "inner":Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;, "Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribePublishMulticast;->subscribers:[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;

    .line 343
    .local v0, "a":[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;, "[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer<TT;>;"
    sget-object v5, Lrx/internal/operators/OnSubscribePublishMulticast;->TERMINATED:[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;

    if-eq v0, v5, :cond_0

    sget-object v5, Lrx/internal/operators/OnSubscribePublishMulticast;->EMPTY:[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;

    if-ne v0, v5, :cond_1

    .line 375
    :cond_0
    :goto_0
    return-void

    .line 346
    :cond_1
    monitor-enter p0

    .line 347
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/OnSubscribePublishMulticast;->subscribers:[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;

    .line 348
    sget-object v5, Lrx/internal/operators/OnSubscribePublishMulticast;->TERMINATED:[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;

    if-eq v0, v5, :cond_2

    sget-object v5, Lrx/internal/operators/OnSubscribePublishMulticast;->EMPTY:[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;

    if-ne v0, v5, :cond_3

    .line 349
    :cond_2
    monitor-exit p0

    goto :goto_0

    .line 375
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 352
    :cond_3
    const/4 v3, -0x1

    .line 353
    .local v3, "j":I
    :try_start_1
    array-length v4, v0

    .line 355
    .local v4, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_4

    .line 356
    aget-object v5, v0, v2

    if-ne v5, p1, :cond_5

    .line 357
    move v3, v2

    .line 362
    :cond_4
    if-gez v3, :cond_6

    .line 363
    monitor-exit p0

    goto :goto_0

    .line 355
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 367
    :cond_6
    const/4 v5, 0x1

    if-ne v4, v5, :cond_7

    .line 368
    sget-object v1, Lrx/internal/operators/OnSubscribePublishMulticast;->EMPTY:[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;

    check-cast v1, [Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;

    .line 374
    .local v1, "b":[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;, "[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer<TT;>;"
    :goto_2
    iput-object v1, p0, Lrx/internal/operators/OnSubscribePublishMulticast;->subscribers:[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;

    .line 375
    monitor-exit p0

    goto :goto_0

    .line 370
    .end local v1    # "b":[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;, "[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer<TT;>;"
    :cond_7
    add-int/lit8 v5, v4, -0x1

    new-array v1, v5, [Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;

    .line 371
    .restart local v1    # "b":[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;, "[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer<TT;>;"
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v0, v5, v1, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 372
    add-int/lit8 v5, v3, 0x1

    sub-int v6, v4, v3

    add-int/lit8 v6, v6, -0x1

    invoke-static {v0, v5, v1, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method final setProducer(Llgu;)V
    .locals 2
    .param p1, "p"    # Llgu;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 167
    .local p0, "this":Lrx/internal/operators/OnSubscribePublishMulticast;, "Lrx/internal/operators/OnSubscribePublishMulticast<TT;>;"
    iput-object p1, p0, Lrx/internal/operators/OnSubscribePublishMulticast;->producer:Llgu;

    .line 168
    iget v0, p0, Lrx/internal/operators/OnSubscribePublishMulticast;->prefetch:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Llgu;->request(J)V

    .line 169
    return-void
.end method

.method public final subscriber()Llgy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Llgy",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 418
    .local p0, "this":Lrx/internal/operators/OnSubscribePublishMulticast;, "Lrx/internal/operators/OnSubscribePublishMulticast<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribePublishMulticast;->parent:Lrx/internal/operators/OnSubscribePublishMulticast$a;

    return-object v0
.end method

.method final terminate()[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer",
            "<TT;>;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 298
    .local p0, "this":Lrx/internal/operators/OnSubscribePublishMulticast;, "Lrx/internal/operators/OnSubscribePublishMulticast<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribePublishMulticast;->subscribers:[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;

    .line 299
    .local v0, "a":[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;, "[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer<TT;>;"
    sget-object v1, Lrx/internal/operators/OnSubscribePublishMulticast;->TERMINATED:[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;

    if-eq v0, v1, :cond_1

    .line 300
    monitor-enter p0

    .line 301
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/OnSubscribePublishMulticast;->subscribers:[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;

    .line 302
    sget-object v1, Lrx/internal/operators/OnSubscribePublishMulticast;->TERMINATED:[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;

    if-eq v0, v1, :cond_0

    .line 303
    sget-object v1, Lrx/internal/operators/OnSubscribePublishMulticast;->TERMINATED:[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;

    check-cast v1, [Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;

    iput-object v1, p0, Lrx/internal/operators/OnSubscribePublishMulticast;->subscribers:[Lrx/internal/operators/OnSubscribePublishMulticast$PublishProducer;

    .line 305
    :cond_0
    monitor-exit p0

    .line 307
    :cond_1
    return-object v0

    .line 305
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final unsubscribe()V
    .locals 1

    .prologue
    .line 423
    .local p0, "this":Lrx/internal/operators/OnSubscribePublishMulticast;, "Lrx/internal/operators/OnSubscribePublishMulticast<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribePublishMulticast;->parent:Lrx/internal/operators/OnSubscribePublishMulticast$a;

    invoke-virtual {v0}, Lrx/internal/operators/OnSubscribePublishMulticast$a;->unsubscribe()V

    .line 424
    return-void
.end method
