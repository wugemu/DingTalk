.class final Lrx/subjects/UnicastSubject$State;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "UnicastSubject.java"

# interfaces
.implements Llgs$a;
.implements Llgt;
.implements Llgu;
.implements Llgz;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/subjects/UnicastSubject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Llgs$a",
        "<TT;>;",
        "Llgt",
        "<TT;>;",
        "Llgu;",
        "Llgz;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x7d831d73a4227baaL


# instance fields
.field volatile caughtUp:Z

.field final delayError:Z

.field volatile done:Z

.field emitting:Z

.field error:Ljava/lang/Throwable;

.field missed:Z

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

.field final subscriber:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Llgy",
            "<-TT;>;>;"
        }
    .end annotation
.end field

.field final terminateOnce:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Llhf;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IZLlhf;)V
    .locals 2
    .param p1, "capacityHint"    # I
    .param p2, "delayError"    # Z
    .param p3, "onTerminated"    # Llhf;

    .prologue
    .line 178
    .local p0, "this":Lrx/subjects/UnicastSubject$State;, "Lrx/subjects/UnicastSubject$State<TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 179
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v1, p0, Lrx/subjects/UnicastSubject$State;->subscriber:Ljava/util/concurrent/atomic/AtomicReference;

    .line 180
    if-eqz p3, :cond_0

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1, p3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    :goto_0
    iput-object v1, p0, Lrx/subjects/UnicastSubject$State;->terminateOnce:Ljava/util/concurrent/atomic/AtomicReference;

    .line 181
    iput-boolean p2, p0, Lrx/subjects/UnicastSubject$State;->delayError:Z

    .line 184
    const/4 v1, 0x1

    if-le p1, v1, :cond_2

    .line 185
    invoke-static {}, Llkb;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lljv;

    invoke-direct {v0, p1}, Lljv;-><init>(I)V

    .line 193
    .local v0, "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    :goto_1
    iput-object v0, p0, Lrx/subjects/UnicastSubject$State;->queue:Ljava/util/Queue;

    .line 194
    return-void

    .line 180
    .end local v0    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 185
    :cond_1
    new-instance v0, Lliv;

    invoke-direct {v0, p1}, Lliv;-><init>(I)V

    goto :goto_1

    .line 189
    :cond_2
    invoke-static {}, Llkb;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Llju;

    invoke-direct {v0}, Llju;-><init>()V

    .restart local v0    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    :goto_2
    goto :goto_1

    .end local v0    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    :cond_3
    new-instance v0, Lliu;

    invoke-direct {v0}, Lliu;-><init>()V

    goto :goto_2
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 149
    .local p0, "this":Lrx/subjects/UnicastSubject$State;, "Lrx/subjects/UnicastSubject$State<TT;>;"
    check-cast p1, Llgy;

    invoke-virtual {p0, p1}, Lrx/subjects/UnicastSubject$State;->call(Llgy;)V

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
    .line 288
    .local p0, "this":Lrx/subjects/UnicastSubject$State;, "Lrx/subjects/UnicastSubject$State<TT;>;"
    .local p1, "subscriber":Llgy;, "Llgy<-TT;>;"
    iget-object v0, p0, Lrx/subjects/UnicastSubject$State;->subscriber:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    invoke-virtual {p1, p0}, Llgy;->a(Llgz;)V

    .line 290
    invoke-virtual {p1, p0}, Llgy;->a(Llgu;)V

    .line 294
    :goto_0
    return-void

    .line 292
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Only a single subscriber is allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Llgy;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method final checkTerminated(ZZZLlgy;)Z
    .locals 3
    .param p1, "done"    # Z
    .param p2, "empty"    # Z
    .param p3, "delayError"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZ",
            "Llgy",
            "<-TT;>;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .local p0, "this":Lrx/subjects/UnicastSubject$State;, "Lrx/subjects/UnicastSubject$State<TT;>;"
    .local p4, "s":Llgy;, "Llgy<-TT;>;"
    const/4 v1, 0x1

    .line 394
    invoke-virtual {p4}, Llgy;->isUnsubscribed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 395
    iget-object v2, p0, Lrx/subjects/UnicastSubject$State;->queue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->clear()V

    .line 414
    :goto_0
    return v1

    .line 398
    :cond_0
    if-eqz p1, :cond_3

    .line 399
    iget-object v0, p0, Lrx/subjects/UnicastSubject$State;->error:Ljava/lang/Throwable;

    .line 400
    .local v0, "e":Ljava/lang/Throwable;
    if-eqz v0, :cond_1

    if-nez p3, :cond_1

    .line 401
    iget-object v2, p0, Lrx/subjects/UnicastSubject$State;->queue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->clear()V

    .line 402
    invoke-virtual {p4, v0}, Llgy;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 405
    :cond_1
    if-eqz p2, :cond_3

    .line 406
    if-eqz v0, :cond_2

    .line 407
    invoke-virtual {p4, v0}, Llgy;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 409
    :cond_2
    invoke-virtual {p4}, Llgy;->onCompleted()V

    goto :goto_0

    .line 414
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method final doTerminate()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 421
    .local p0, "this":Lrx/subjects/UnicastSubject$State;, "Lrx/subjects/UnicastSubject$State<TT;>;"
    iget-object v1, p0, Lrx/subjects/UnicastSubject$State;->terminateOnce:Ljava/util/concurrent/atomic/AtomicReference;

    .line 422
    .local v1, "ref":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Llhf;>;"
    if-eqz v1, :cond_0

    .line 423
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llhf;

    .line 424
    .local v0, "a":Llhf;
    if-eqz v0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 425
    invoke-interface {v0}, Llhf;->call()V

    .line 428
    .end local v0    # "a":Llhf;
    :cond_0
    return-void
.end method

.method public final isUnsubscribed()Z
    .locals 1

    .prologue
    .line 381
    .local p0, "this":Lrx/subjects/UnicastSubject$State;, "Lrx/subjects/UnicastSubject$State<TT;>;"
    iget-boolean v0, p0, Lrx/subjects/UnicastSubject$State;->done:Z

    return v0
.end method

.method public final onCompleted()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .local p0, "this":Lrx/subjects/UnicastSubject$State;, "Lrx/subjects/UnicastSubject$State<TT;>;"
    const/4 v0, 0x1

    .line 249
    iget-boolean v1, p0, Lrx/subjects/UnicastSubject$State;->done:Z

    if-nez v1, :cond_0

    .line 251
    invoke-virtual {p0}, Lrx/subjects/UnicastSubject$State;->doTerminate()V

    .line 253
    iput-boolean v0, p0, Lrx/subjects/UnicastSubject$State;->done:Z

    .line 254
    iget-boolean v1, p0, Lrx/subjects/UnicastSubject$State;->caughtUp:Z

    if-nez v1, :cond_2

    .line 256
    monitor-enter p0

    .line 257
    :try_start_0
    iget-boolean v1, p0, Lrx/subjects/UnicastSubject$State;->caughtUp:Z

    if-nez v1, :cond_1

    .line 258
    .local v0, "stillReplay":Z
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    if-eqz v0, :cond_2

    .line 260
    invoke-virtual {p0}, Lrx/subjects/UnicastSubject$State;->replay()V

    .line 266
    .end local v0    # "stillReplay":Z
    :cond_0
    :goto_1
    return-void

    .line 257
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 258
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 264
    :cond_2
    iget-object v1, p0, Lrx/subjects/UnicastSubject$State;->subscriber:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llgy;

    invoke-virtual {v1}, Llgy;->onCompleted()V

    goto :goto_1
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .local p0, "this":Lrx/subjects/UnicastSubject$State;, "Lrx/subjects/UnicastSubject$State<TT;>;"
    const/4 v0, 0x1

    .line 228
    iget-boolean v1, p0, Lrx/subjects/UnicastSubject$State;->done:Z

    if-nez v1, :cond_0

    .line 230
    invoke-virtual {p0}, Lrx/subjects/UnicastSubject$State;->doTerminate()V

    .line 232
    iput-object p1, p0, Lrx/subjects/UnicastSubject$State;->error:Ljava/lang/Throwable;

    .line 233
    iput-boolean v0, p0, Lrx/subjects/UnicastSubject$State;->done:Z

    .line 234
    iget-boolean v1, p0, Lrx/subjects/UnicastSubject$State;->caughtUp:Z

    if-nez v1, :cond_2

    .line 236
    monitor-enter p0

    .line 237
    :try_start_0
    iget-boolean v1, p0, Lrx/subjects/UnicastSubject$State;->caughtUp:Z

    if-nez v1, :cond_1

    .line 238
    .local v0, "stillReplay":Z
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    if-eqz v0, :cond_2

    .line 240
    invoke-virtual {p0}, Lrx/subjects/UnicastSubject$State;->replay()V

    .line 246
    .end local v0    # "stillReplay":Z
    :cond_0
    :goto_1
    return-void

    .line 237
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 238
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 244
    :cond_2
    iget-object v1, p0, Lrx/subjects/UnicastSubject$State;->subscriber:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llgy;

    invoke-virtual {v1, p1}, Llgy;->onError(Ljava/lang/Throwable;)V

    goto :goto_1
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
    .line 198
    .local p0, "this":Lrx/subjects/UnicastSubject$State;, "Lrx/subjects/UnicastSubject$State<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v3, p0, Lrx/subjects/UnicastSubject$State;->done:Z

    if-nez v3, :cond_1

    .line 199
    iget-boolean v3, p0, Lrx/subjects/UnicastSubject$State;->caughtUp:Z

    if-nez v3, :cond_2

    .line 200
    const/4 v2, 0x0

    .line 207
    .local v2, "stillReplay":Z
    monitor-enter p0

    .line 208
    :try_start_0
    iget-boolean v3, p0, Lrx/subjects/UnicastSubject$State;->caughtUp:Z

    if-nez v3, :cond_0

    .line 209
    iget-object v3, p0, Lrx/subjects/UnicastSubject$State;->queue:Ljava/util/Queue;

    invoke-static {p1}, Lrx/internal/operators/NotificationLite;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 210
    const/4 v2, 0x1

    .line 212
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    if-eqz v2, :cond_2

    .line 214
    invoke-virtual {p0}, Lrx/subjects/UnicastSubject$State;->replay()V

    .line 225
    .end local v2    # "stillReplay":Z
    :cond_1
    :goto_0
    return-void

    .line 212
    .restart local v2    # "stillReplay":Z
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 218
    .end local v2    # "stillReplay":Z
    :cond_2
    iget-object v3, p0, Lrx/subjects/UnicastSubject$State;->subscriber:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llgy;

    .line 220
    .local v1, "s":Llgy;, "Llgy<-TT;>;"
    :try_start_2
    invoke-virtual {v1, p1}, Llgy;->onNext(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 221
    :catch_0
    move-exception v0

    .line 222
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0, v1, p1}, Llhe;->a(Ljava/lang/Throwable;Llgt;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method final replay()V
    .locals 20

    .prologue
    .line 299
    .local p0, "this":Lrx/subjects/UnicastSubject$State;, "Lrx/subjects/UnicastSubject$State<TT;>;"
    monitor-enter p0

    .line 300
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lrx/subjects/UnicastSubject$State;->emitting:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1

    .line 301
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/subjects/UnicastSubject$State;->missed:Z

    .line 302
    monitor-exit p0

    .line 354
    :cond_0
    :goto_0
    return-void

    .line 304
    :cond_1
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/subjects/UnicastSubject$State;->emitting:Z

    .line 305
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    move-object/from16 v0, p0

    iget-object v10, v0, Lrx/subjects/UnicastSubject$State;->queue:Ljava/util/Queue;

    .line 307
    .local v10, "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lrx/subjects/UnicastSubject$State;->delayError:Z

    .line 309
    .local v5, "delayError":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/subjects/UnicastSubject$State;->subscriber:Ljava/util/concurrent/atomic/AtomicReference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Llgy;

    .line 310
    .local v11, "s":Llgy;, "Llgy<-TT;>;"
    const/4 v14, 0x0

    .line 311
    .local v14, "unlimited":Z
    if-eqz v11, :cond_5

    .line 312
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lrx/subjects/UnicastSubject$State;->done:Z

    .line 313
    .local v4, "d":Z
    invoke-interface {v10}, Ljava/util/Queue;->isEmpty()Z

    move-result v8

    .line 314
    .local v8, "empty":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v8, v5, v11}, Lrx/subjects/UnicastSubject$State;->checkTerminated(ZZZLlgy;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 317
    invoke-virtual/range {p0 .. p0}, Lrx/subjects/UnicastSubject$State;->get()J

    move-result-wide v12

    .line 318
    .local v12, "r":J
    const-wide v18, 0x7fffffffffffffffL

    cmp-long v17, v12, v18

    if-nez v17, :cond_2

    const/4 v14, 0x1

    .line 319
    :goto_2
    const-wide/16 v6, 0x0

    .line 321
    .local v6, "e":J
    :goto_3
    const-wide/16 v18, 0x0

    cmp-long v17, v12, v18

    if-eqz v17, :cond_4

    .line 322
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lrx/subjects/UnicastSubject$State;->done:Z

    .line 323
    invoke-interface {v10}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v15

    .line 324
    .local v15, "v":Ljava/lang/Object;
    if-nez v15, :cond_3

    const/4 v8, 0x1

    .line 325
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v8, v5, v11}, Lrx/subjects/UnicastSubject$State;->checkTerminated(ZZZLlgy;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 328
    if-nez v8, :cond_4

    .line 331
    invoke-static {v15}, Lrx/internal/operators/NotificationLite;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    .line 333
    .local v16, "value":Ljava/lang/Object;, "TT;"
    :try_start_1
    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Llgy;->onNext(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 340
    const-wide/16 v18, 0x1

    sub-long v12, v12, v18

    .line 341
    const-wide/16 v18, 0x1

    add-long v6, v6, v18

    .line 342
    goto :goto_3

    .line 305
    .end local v4    # "d":Z
    .end local v5    # "delayError":Z
    .end local v6    # "e":J
    .end local v8    # "empty":Z
    .end local v10    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    .end local v11    # "s":Llgy;, "Llgy<-TT;>;"
    .end local v12    # "r":J
    .end local v14    # "unlimited":Z
    .end local v15    # "v":Ljava/lang/Object;
    .end local v16    # "value":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception v17

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v17

    .line 318
    .restart local v4    # "d":Z
    .restart local v5    # "delayError":Z
    .restart local v8    # "empty":Z
    .restart local v10    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    .restart local v11    # "s":Llgy;, "Llgy<-TT;>;"
    .restart local v12    # "r":J
    .restart local v14    # "unlimited":Z
    :cond_2
    const/4 v14, 0x0

    goto :goto_2

    .line 324
    .restart local v6    # "e":J
    .restart local v15    # "v":Ljava/lang/Object;
    :cond_3
    const/4 v8, 0x0

    goto :goto_4

    .line 334
    .restart local v16    # "value":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v9

    .line 335
    .local v9, "ex":Ljava/lang/Throwable;
    invoke-interface {v10}, Ljava/util/Queue;->clear()V

    .line 336
    invoke-static {v9}, Llhe;->a(Ljava/lang/Throwable;)V

    .line 337
    move-object/from16 v0, v16

    invoke-static {v9, v0}, Lrx/exceptions/OnErrorThrowable;->addValueAsLastCause(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Llgy;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 343
    .end local v9    # "ex":Ljava/lang/Throwable;
    .end local v15    # "v":Ljava/lang/Object;
    .end local v16    # "value":Ljava/lang/Object;, "TT;"
    :cond_4
    if-nez v14, :cond_5

    const-wide/16 v18, 0x0

    cmp-long v17, v6, v18

    if-eqz v17, :cond_5

    .line 344
    neg-long v0, v6

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lrx/subjects/UnicastSubject$State;->addAndGet(J)J

    .line 348
    .end local v4    # "d":Z
    .end local v6    # "e":J
    .end local v8    # "empty":Z
    .end local v12    # "r":J
    :cond_5
    monitor-enter p0

    .line 349
    :try_start_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lrx/subjects/UnicastSubject$State;->missed:Z

    move/from16 v17, v0

    if-nez v17, :cond_7

    .line 350
    if-eqz v14, :cond_6

    invoke-interface {v10}, Ljava/util/Queue;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_6

    .line 351
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/subjects/UnicastSubject$State;->caughtUp:Z

    .line 353
    :cond_6
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/subjects/UnicastSubject$State;->emitting:Z

    .line 354
    monitor-exit p0

    goto/16 :goto_0

    .line 357
    :catchall_1
    move-exception v17

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v17

    .line 356
    :cond_7
    const/16 v17, 0x0

    :try_start_4
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/subjects/UnicastSubject$State;->missed:Z

    .line 357
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_1
.end method

.method public final request(J)V
    .locals 5
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/subjects/UnicastSubject$State;, "Lrx/subjects/UnicastSubject$State<TT;>;"
    const-wide/16 v2, 0x0

    .line 270
    cmp-long v0, p1, v2

    if-gez v0, :cond_0

    .line 271
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "n >= 0 required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 273
    :cond_0
    cmp-long v0, p1, v2

    if-lez v0, :cond_2

    .line 274
    invoke-static {p0, p1, p2}, Llhn;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 275
    invoke-virtual {p0}, Lrx/subjects/UnicastSubject$State;->replay()V

    .line 280
    :cond_1
    :goto_0
    return-void

    .line 277
    :cond_2
    iget-boolean v0, p0, Lrx/subjects/UnicastSubject$State;->done:Z

    if-eqz v0, :cond_1

    .line 278
    invoke-virtual {p0}, Lrx/subjects/UnicastSubject$State;->replay()V

    goto :goto_0
.end method

.method public final unsubscribe()V
    .locals 1

    .prologue
    .local p0, "this":Lrx/subjects/UnicastSubject$State;, "Lrx/subjects/UnicastSubject$State<TT;>;"
    const/4 v0, 0x1

    .line 367
    invoke-virtual {p0}, Lrx/subjects/UnicastSubject$State;->doTerminate()V

    .line 369
    iput-boolean v0, p0, Lrx/subjects/UnicastSubject$State;->done:Z

    .line 370
    monitor-enter p0

    .line 371
    :try_start_0
    iget-boolean v0, p0, Lrx/subjects/UnicastSubject$State;->emitting:Z

    if-eqz v0, :cond_0

    .line 372
    monitor-exit p0

    .line 377
    :goto_0
    return-void

    .line 374
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/subjects/UnicastSubject$State;->emitting:Z

    .line 375
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 376
    iget-object v0, p0, Lrx/subjects/UnicastSubject$State;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    goto :goto_0

    .line 375
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
