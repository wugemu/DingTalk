.class final Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber;
.super Llgy;
.source "OnSubscribeFlatMapSingle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeFlatMapSingle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlatMapSingleSubscriber"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber$a;,
        Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber$Requested;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Llgy",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:Llgy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llgy",
            "<-TR;>;"
        }
    .end annotation
.end field

.field final b:Llhk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llhk",
            "<-TT;+",
            "Llgw",
            "<+TR;>;>;"
        }
    .end annotation
.end field

.field final c:Z

.field final d:I

.field final e:Ljava/util/concurrent/atomic/AtomicInteger;

.field final f:Ljava/util/concurrent/atomic/AtomicInteger;

.field final g:Llkx;

.field final h:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field final i:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final j:Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber$Requested;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber",
            "<TT;TR;>.Requested;"
        }
    .end annotation
.end field

.field volatile k:Z

.field volatile l:Z


# direct methods
.method constructor <init>(Llgy;Llhk;ZI)V
    .locals 2
    .param p3, "delayErrors"    # Z
    .param p4, "maxConcurrency"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llgy",
            "<-TR;>;",
            "Llhk",
            "<-TT;+",
            "Llgw",
            "<+TR;>;>;ZI)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, "this":Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber;, "Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber<TT;TR;>;"
    .local p1, "actual":Llgy;, "Llgy<-TR;>;"
    .local p2, "mapper":Llhk;, "Llhk<-TT;+Llgw<+TR;>;>;"
    invoke-direct {p0}, Llgy;-><init>()V

    .line 101
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber;->a:Llgy;

    .line 102
    iput-object p2, p0, Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber;->b:Llhk;

    .line 103
    iput-boolean p3, p0, Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber;->c:Z

    .line 104
    iput p4, p0, Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber;->d:I

    .line 105
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 106
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber;->h:Ljava/util/concurrent/atomic/AtomicReference;

    .line 107
    new-instance v0, Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber$Requested;

    invoke-direct {v0, p0}, Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber$Requested;-><init>(Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber;)V

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber;->j:Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber$Requested;

    .line 108
    new-instance v0, Llkx;

    invoke-direct {v0}, Llkx;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber;->g:Llkx;

    .line 109
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 110
    invoke-static {}, Llkb;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    new-instance v0, Lljd;

    invoke-direct {v0}, Lljd;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber;->i:Ljava/util/Queue;

    .line 115
    :goto_0
    const v0, 0x7fffffff

    if-eq p4, v0, :cond_1

    int-to-long v0, p4

    :goto_1
    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber;->a(J)V

    .line 116
    return-void

    .line 113
    :cond_0
    new-instance v0, Llir;

    invoke-direct {v0}, Llir;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber;->i:Ljava/util/Queue;

    goto :goto_0

    .line 115
    :cond_1
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_1
.end method


# virtual methods
.method final a(Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber$a;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber",
            "<TT;TR;>.a;TR;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 163
    .local p0, "this":Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber;, "Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber<TT;TR;>;"
    .local p1, "inner":Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber$a;, "Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber<TT;TR;>.a;"
    .local p2, "value":Ljava/lang/Object;, "TR;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber;->i:Ljava/util/Queue;

    invoke-static {p2}, Lrx/internal/operators/NotificationLite;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 164
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber;->g:Llkx;

    invoke-virtual {v0, p1}, Llkx;->b(Llgz;)V

    .line 165
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 166
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber;->b()V

    .line 167
    return-void
.end method

.method final a(Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber$a;Ljava/lang/Throwable;)V
    .locals 2
    .param p2, "e"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber",
            "<TT;TR;>.a;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 170
    .local p0, "this":Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber;, "Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber<TT;TR;>;"
    .local p1, "inner":Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber$a;, "Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber<TT;TR;>.a;"
    iget-boolean v0, p0, Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber;->c:Z

    if-eqz v0, :cond_1

    .line 171
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p2}, Lrx/internal/util/ExceptionsUtils;->addThrowable(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    .line 172
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber;->g:Llkx;

    invoke-virtual {v0, p1}, Llkx;->b(Llgz;)V

    .line 173
    iget-boolean v0, p0, Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber;->k:Z

    if-nez v0, :cond_0

    iget v0, p0, Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber;->d:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    .line 174
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber;->a(J)V

    .line 185
    :cond_0
    :goto_0
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 186
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber;->b()V

    .line 187
    :goto_1
    return-void

    .line 177
    :cond_1
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber;->g:Llkx;

    invoke-virtual {v0}, Llkx;->unsubscribe()V

    .line 178
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber;->unsubscribe()V

    .line 179
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber;->h:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 180
    invoke-static {p2}, Llkm;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 183
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber;->k:Z

    goto :goto_0
.end method

.method final b()V
    .locals 18

    .prologue
    .line 190
    .local p0, "this":Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber;, "Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber<TT;TR;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v13

    if-eqz v13, :cond_1

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    const/4 v10, 0x1

    .line 195
    .local v10, "missed":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber;->a:Llgy;

    .line 196
    .local v2, "a":Llgy;, "Llgy<-TR;>;"
    move-object/from16 v0, p0

    iget-object v12, v0, Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber;->i:Ljava/util/Queue;

    .line 197
    .local v12, "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber;->c:Z

    .line 198
    .local v5, "delayError":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 201
    .local v3, "act":Ljava/util/concurrent/atomic/AtomicInteger;
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber;->j:Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber$Requested;

    invoke-virtual {v13}, Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber$Requested;->get()J

    move-result-wide v14

    .line 202
    .local v14, "r":J
    const-wide/16 v6, 0x0

    .line 204
    .local v6, "e":J
    :goto_2
    cmp-long v13, v6, v14

    if-eqz v13, :cond_7

    .line 205
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber;->l:Z

    if-eqz v13, :cond_2

    .line 206
    invoke-interface {v12}, Ljava/util/Queue;->clear()V

    goto :goto_0

    .line 210
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber;->k:Z

    .line 212
    .local v4, "d":Z
    if-nez v5, :cond_3

    if-eqz v4, :cond_3

    .line 213
    move-object/from16 v0, p0

    iget-object v13, v0, Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Throwable;

    .line 214
    .local v9, "ex":Ljava/lang/Throwable;
    if-eqz v9, :cond_3

    .line 215
    invoke-interface {v12}, Ljava/util/Queue;->clear()V

    .line 216
    move-object/from16 v0, p0

    iget-object v13, v0, Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v13}, Lrx/internal/util/ExceptionsUtils;->terminate(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v13

    invoke-virtual {v2, v13}, Llgy;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 221
    .end local v9    # "ex":Ljava/lang/Throwable;
    :cond_3
    invoke-interface {v12}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v11

    .line 223
    .local v11, "o":Ljava/lang/Object;
    if-nez v11, :cond_4

    const/4 v8, 0x1

    .line 225
    .local v8, "empty":Z
    :goto_3
    if-eqz v4, :cond_6

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v13

    if-nez v13, :cond_6

    if-eqz v8, :cond_6

    .line 226
    move-object/from16 v0, p0

    iget-object v13, v0, Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Throwable;

    .line 227
    .restart local v9    # "ex":Ljava/lang/Throwable;
    if-eqz v9, :cond_5

    .line 228
    move-object/from16 v0, p0

    iget-object v13, v0, Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v13}, Lrx/internal/util/ExceptionsUtils;->terminate(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v13

    invoke-virtual {v2, v13}, Llgy;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 223
    .end local v8    # "empty":Z
    .end local v9    # "ex":Ljava/lang/Throwable;
    :cond_4
    const/4 v8, 0x0

    goto :goto_3

    .line 230
    .restart local v8    # "empty":Z
    .restart local v9    # "ex":Ljava/lang/Throwable;
    :cond_5
    invoke-virtual {v2}, Llgy;->onCompleted()V

    goto/16 :goto_0

    .line 235
    .end local v9    # "ex":Ljava/lang/Throwable;
    :cond_6
    if-nez v8, :cond_7

    .line 239
    invoke-static {v11}, Lrx/internal/operators/NotificationLite;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v2, v13}, Llgy;->onNext(Ljava/lang/Object;)V

    .line 241
    const-wide/16 v16, 0x1

    add-long v6, v6, v16

    .line 242
    goto :goto_2

    .line 244
    .end local v4    # "d":Z
    .end local v8    # "empty":Z
    .end local v11    # "o":Ljava/lang/Object;
    :cond_7
    cmp-long v13, v6, v14

    if-nez v13, :cond_c

    .line 245
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber;->l:Z

    if-eqz v13, :cond_8

    .line 246
    invoke-interface {v12}, Ljava/util/Queue;->clear()V

    goto/16 :goto_0

    .line 250
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber;->k:Z

    if-eqz v13, :cond_c

    .line 251
    if-eqz v5, :cond_a

    .line 252
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v13

    if-nez v13, :cond_c

    invoke-interface {v12}, Ljava/util/Queue;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_c

    .line 253
    move-object/from16 v0, p0

    iget-object v13, v0, Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Throwable;

    .line 254
    .restart local v9    # "ex":Ljava/lang/Throwable;
    if-eqz v9, :cond_9

    .line 255
    move-object/from16 v0, p0

    iget-object v13, v0, Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v13}, Lrx/internal/util/ExceptionsUtils;->terminate(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v13

    invoke-virtual {v2, v13}, Llgy;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 257
    :cond_9
    invoke-virtual {v2}, Llgy;->onCompleted()V

    goto/16 :goto_0

    .line 262
    .end local v9    # "ex":Ljava/lang/Throwable;
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Throwable;

    .line 263
    .restart local v9    # "ex":Ljava/lang/Throwable;
    if-eqz v9, :cond_b

    .line 264
    invoke-interface {v12}, Ljava/util/Queue;->clear()V

    .line 265
    move-object/from16 v0, p0

    iget-object v13, v0, Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v13}, Lrx/internal/util/ExceptionsUtils;->terminate(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v13

    invoke-virtual {v2, v13}, Llgy;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 268
    :cond_b
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v13

    if-nez v13, :cond_c

    invoke-interface {v12}, Ljava/util/Queue;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_c

    .line 269
    invoke-virtual {v2}, Llgy;->onCompleted()V

    goto/16 :goto_0

    .line 276
    .end local v9    # "ex":Ljava/lang/Throwable;
    :cond_c
    const-wide/16 v16, 0x0

    cmp-long v13, v6, v16

    if-eqz v13, :cond_d

    .line 277
    move-object/from16 v0, p0

    iget-object v13, v0, Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber;->j:Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber$Requested;

    invoke-virtual {v13, v6, v7}, Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber$Requested;->produced(J)V

    .line 278
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber;->k:Z

    if-nez v13, :cond_d

    move-object/from16 v0, p0

    iget v13, v0, Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber;->d:I

    const v16, 0x7fffffff

    move/from16 v0, v16

    if-eq v13, v0, :cond_d

    .line 279
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber;->a(J)V

    .line 283
    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v0, v10

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v10

    .line 284
    if-eqz v10, :cond_0

    goto/16 :goto_1
.end method

.method public final onCompleted()V
    .locals 1

    .prologue
    .line 158
    .local p0, "this":Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber;, "Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber<TT;TR;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber;->k:Z

    .line 159
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber;->b()V

    .line 160
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 143
    .local p0, "this":Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber;, "Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber<TT;TR;>;"
    iget-boolean v0, p0, Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber;->c:Z

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lrx/internal/util/ExceptionsUtils;->addThrowable(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    .line 152
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber;->k:Z

    .line 153
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber;->b()V

    .line 154
    :goto_0
    return-void

    .line 146
    :cond_1
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber;->g:Llkx;

    invoke-virtual {v0}, Llkx;->unsubscribe()V

    .line 147
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber;->h:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    invoke-static {p1}, Llkm;->a(Ljava/lang/Throwable;)V

    goto :goto_0
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
    .line 123
    .local p0, "this":Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber;, "Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber<TT;TR;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v3, p0, Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber;->b:Llhk;

    invoke-interface {v3, p1}, Llhk;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llgw;

    .line 124
    .local v0, "c":Llgw;, "Llgw<+TR;>;"
    if-nez v0, :cond_0

    .line 125
    new-instance v3, Ljava/lang/NullPointerException;

    const-string/jumbo v4, "The mapper returned a null Single"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    .end local v0    # "c":Llgw;, "Llgw<+TR;>;"
    :catch_0
    move-exception v1

    .line 128
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-static {v1}, Llhe;->a(Ljava/lang/Throwable;)V

    .line 129
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber;->unsubscribe()V

    .line 130
    invoke-virtual {p0, v1}, Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 139
    .end local v1    # "ex":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 134
    .restart local v0    # "c":Llgw;, "Llgw<+TR;>;"
    :cond_0
    new-instance v2, Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber$a;

    invoke-direct {v2, p0}, Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber$a;-><init>(Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber;)V

    .line 135
    .local v2, "inner":Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber$a;, "Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber<TT;TR;>.a;"
    iget-object v3, p0, Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber;->g:Llkx;

    invoke-virtual {v3, v2}, Llkx;->a(Llgz;)V

    .line 136
    iget-object v3, p0, Lrx/internal/operators/OnSubscribeFlatMapSingle$FlatMapSingleSubscriber;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 138
    invoke-virtual {v0, v2}, Llgw;->a(Llgx;)Llgz;

    goto :goto_0
.end method
