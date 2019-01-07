.class final Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;
.super Llgy;
.source "OperatorWindowWithSize.java"

# interfaces
.implements Llhf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorWindowWithSize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WindowOverlap"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap$WindowOverlapProducer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Llgy",
        "<TT;>;",
        "Llhf;"
    }
.end annotation


# instance fields
.field final a:Llgy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llgy",
            "<-",
            "Llgs",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field final b:I

.field final c:I

.field final d:Ljava/util/concurrent/atomic/AtomicInteger;

.field final e:Llgz;

.field final f:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Llkv",
            "<TT;TT;>;>;"
        }
    .end annotation
.end field

.field final g:Ljava/util/concurrent/atomic/AtomicLong;

.field final h:Ljava/util/concurrent/atomic/AtomicInteger;

.field final i:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Llkv",
            "<TT;TT;>;>;"
        }
    .end annotation
.end field

.field j:Ljava/lang/Throwable;

.field volatile k:Z

.field l:I

.field m:I


# direct methods
.method public constructor <init>(Llgy;II)V
    .locals 4
    .param p2, "size"    # I
    .param p3, "skip"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llgy",
            "<-",
            "Llgs",
            "<TT;>;>;II)V"
        }
    .end annotation

    .prologue
    .line 313
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;, "Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap<TT;>;"
    .local p1, "actual":Llgy;, "Llgy<-Llgs<TT;>;>;"
    invoke-direct {p0}, Llgy;-><init>()V

    .line 314
    iput-object p1, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->a:Llgy;

    .line 315
    iput p2, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->b:I

    .line 316
    iput p3, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->c:I

    .line 317
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 318
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->f:Ljava/util/ArrayDeque;

    .line 319
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v1, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 320
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v1, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->g:Ljava/util/concurrent/atomic/AtomicLong;

    .line 321
    invoke-static {p0}, Llkz;->a(Llhf;)Llgz;

    move-result-object v1

    iput-object v1, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->e:Llgz;

    .line 322
    iget-object v1, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->e:Llgz;

    invoke-virtual {p0, v1}, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->a(Llgz;)V

    .line 323
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v2, v3}, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->a(J)V

    .line 324
    add-int/lit8 v1, p3, -0x1

    add-int/2addr v1, p2

    div-int v0, v1, p3

    .line 325
    .local v0, "maxWindows":I
    new-instance v1, Llit;

    invoke-direct {v1, v0}, Llit;-><init>(I)V

    iput-object v1, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->i:Ljava/util/Queue;

    .line 326
    return-void
.end method

.method static synthetic a(Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;J)V
    .locals 1
    .param p0, "x0"    # Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;
    .param p1, "x1"    # J

    .prologue
    .line 286
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->a(J)V

    return-void
.end method

.method private a(ZZLlgy;Ljava/util/Queue;)Z
    .locals 3
    .param p1, "d"    # Z
    .param p2, "empty"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Llgy",
            "<-",
            "Llkv",
            "<TT;TT;>;>;",
            "Ljava/util/Queue",
            "<",
            "Llkv",
            "<TT;TT;>;>;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;, "Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap<TT;>;"
    .local p3, "a":Llgy;, "Llgy<-Llkv<TT;TT;>;>;"
    .local p4, "q":Ljava/util/Queue;, "Ljava/util/Queue<Llkv<TT;TT;>;>;"
    const/4 v1, 0x1

    .line 455
    invoke-virtual {p3}, Llgy;->isUnsubscribed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 456
    invoke-interface {p4}, Ljava/util/Queue;->clear()V

    .line 471
    :goto_0
    return v1

    .line 459
    :cond_0
    if-eqz p1, :cond_2

    .line 460
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->j:Ljava/lang/Throwable;

    .line 461
    .local v0, "e":Ljava/lang/Throwable;
    if-eqz v0, :cond_1

    .line 462
    invoke-interface {p4}, Ljava/util/Queue;->clear()V

    .line 463
    invoke-virtual {p3, v0}, Llgy;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 466
    :cond_1
    if-eqz p2, :cond_2

    .line 467
    invoke-virtual {p3}, Llgy;->onCompleted()V

    goto :goto_0

    .line 471
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;J)V
    .locals 1
    .param p0, "x0"    # Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;
    .param p1, "x1"    # J

    .prologue
    .line 286
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->a(J)V

    return-void
.end method


# virtual methods
.method final b()V
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 404
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;, "Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap<TT;>;"
    iget-object v2, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 405
    .local v2, "dw":Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v11

    if-eqz v11, :cond_1

    .line 452
    :cond_0
    return-void

    .line 409
    :cond_1
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->a:Llgy;

    .line 410
    .local v0, "a":Llgy;, "Llgy<-Llkv<TT;TT;>;>;"
    iget-object v7, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->i:Ljava/util/Queue;

    .line 412
    .local v7, "q":Ljava/util/Queue;, "Ljava/util/Queue<Llkv<TT;TT;>;>;"
    const/4 v6, 0x1

    .line 416
    .local v6, "missed":I
    :goto_0
    iget-object v11, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->g:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8

    .line 417
    .local v8, "r":J
    const-wide/16 v4, 0x0

    .line 419
    .local v4, "e":J
    :goto_1
    cmp-long v11, v4, v8

    if-eqz v11, :cond_3

    .line 420
    iget-boolean v1, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->k:Z

    .line 421
    .local v1, "d":Z
    invoke-interface {v7}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Llkv;

    .line 422
    .local v10, "v":Llkv;, "Llkv<TT;TT;>;"
    if-nez v10, :cond_2

    const/4 v3, 0x1

    .line 424
    .local v3, "empty":Z
    :goto_2
    invoke-direct {p0, v1, v3, v0, v7}, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->a(ZZLlgy;Ljava/util/Queue;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 428
    if-nez v3, :cond_3

    .line 432
    invoke-virtual {v0, v10}, Llgy;->onNext(Ljava/lang/Object;)V

    .line 434
    const-wide/16 v12, 0x1

    add-long/2addr v4, v12

    .line 435
    goto :goto_1

    .line 422
    .end local v3    # "empty":Z
    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    .line 437
    .end local v1    # "d":Z
    .end local v10    # "v":Llkv;, "Llkv<TT;TT;>;"
    :cond_3
    cmp-long v11, v4, v8

    if-nez v11, :cond_4

    .line 438
    iget-boolean v11, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->k:Z

    invoke-interface {v7}, Ljava/util/Queue;->isEmpty()Z

    move-result v12

    invoke-direct {p0, v11, v12, v0, v7}, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->a(ZZLlgy;Ljava/util/Queue;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 443
    :cond_4
    const-wide/16 v12, 0x0

    cmp-long v11, v4, v12

    if-eqz v11, :cond_5

    const-wide v12, 0x7fffffffffffffffL

    cmp-long v11, v8, v12

    if-eqz v11, :cond_5

    .line 444
    iget-object v11, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->g:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v12, v4

    invoke-virtual {v11, v12, v13}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 447
    :cond_5
    neg-int v11, v6

    invoke-virtual {v2, v11}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v6

    .line 448
    if-eqz v6, :cond_0

    goto :goto_0
.end method

.method public final call()V
    .locals 1

    .prologue
    .line 398
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;, "Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 399
    invoke-virtual {p0}, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->unsubscribe()V

    .line 401
    :cond_0
    return-void
.end method

.method public final onCompleted()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 383
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;, "Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap<TT;>;"
    iget-object v1, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llkv;

    .line 384
    .local v0, "w":Llkv;, "Llkv<TT;TT;>;"
    invoke-virtual {v0}, Llkv;->onCompleted()V

    goto :goto_0

    .line 386
    .end local v0    # "w":Llkv;, "Llkv<TT;TT;>;"
    :cond_0
    iget-object v1, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V

    .line 388
    const/4 v1, 0x1

    iput-boolean v1, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->k:Z

    .line 389
    invoke-virtual {p0}, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->b()V

    .line 390
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 371
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;, "Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap<TT;>;"
    iget-object v1, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llkv;

    .line 372
    .local v0, "w":Llkv;, "Llkv<TT;TT;>;"
    invoke-virtual {v0, p1}, Llkv;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 374
    .end local v0    # "w":Llkv;, "Llkv<TT;TT;>;"
    :cond_0
    iget-object v1, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V

    .line 376
    iput-object p1, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->j:Ljava/lang/Throwable;

    .line 377
    const/4 v1, 0x1

    iput-boolean v1, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->k:Z

    .line 378
    invoke-virtual {p0}, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->b()V

    .line 379
    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 330
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;, "Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget v0, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->l:I

    .line 332
    .local v0, "i":I
    iget-object v2, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->f:Ljava/util/ArrayDeque;

    .line 334
    .local v2, "q":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Llkv<TT;TT;>;>;"
    if-nez v0, :cond_0

    iget-object v4, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->a:Llgy;

    invoke-virtual {v4}, Llgy;->isUnsubscribed()Z

    move-result v4

    if-nez v4, :cond_0

    .line 335
    iget-object v4, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 337
    const/16 v4, 0x10

    invoke-static {v4, p0}, Lrx/subjects/UnicastSubject;->a(ILlhf;)Lrx/subjects/UnicastSubject;

    move-result-object v3

    .line 338
    .local v3, "w":Llkv;, "Llkv<TT;TT;>;"
    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 340
    iget-object v4, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->i:Ljava/util/Queue;

    invoke-interface {v4, v3}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 341
    invoke-virtual {p0}, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->b()V

    .line 344
    .end local v3    # "w":Llkv;, "Llkv<TT;TT;>;"
    :cond_0
    iget-object v4, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Llkv;

    .line 345
    .restart local v3    # "w":Llkv;, "Llkv<TT;TT;>;"
    invoke-virtual {v3, p1}, Llkv;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 348
    .end local v3    # "w":Llkv;, "Llkv<TT;TT;>;"
    :cond_1
    iget v4, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->m:I

    add-int/lit8 v1, v4, 0x1

    .line 350
    .local v1, "p":I
    iget v4, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->b:I

    if-ne v1, v4, :cond_3

    .line 351
    iget v4, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->c:I

    sub-int v4, v1, v4

    iput v4, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->m:I

    .line 353
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Llkv;

    .line 354
    .restart local v3    # "w":Llkv;, "Llkv<TT;TT;>;"
    if-eqz v3, :cond_2

    .line 355
    invoke-virtual {v3}, Llkv;->onCompleted()V

    .line 361
    .end local v3    # "w":Llkv;, "Llkv<TT;TT;>;"
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 362
    iget v4, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->c:I

    if-ne v0, v4, :cond_4

    .line 363
    const/4 v4, 0x0

    iput v4, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->l:I

    .line 367
    :goto_2
    return-void

    .line 358
    :cond_3
    iput v1, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->m:I

    goto :goto_1

    .line 365
    :cond_4
    iput v0, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->l:I

    goto :goto_2
.end method
