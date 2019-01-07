.class public final Lrx/internal/operators/OperatorGroupBy$b;
.super Llgy;
.source "OperatorGroupBy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorGroupBy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorGroupBy$b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Llgy",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final j:Ljava/lang/Object;


# instance fields
.field final a:Llgy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llgy",
            "<-",
            "Llkd",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field final b:Llhk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llhk",
            "<-TT;+TK;>;"
        }
    .end annotation
.end field

.field final c:Llhk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llhk",
            "<-TT;+TV;>;"
        }
    .end annotation
.end field

.field final d:I

.field final e:Z

.field final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lrx/internal/operators/OperatorGroupBy$c",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field final g:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Llkd",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field final h:Lrx/internal/operators/OperatorGroupBy$a;

.field final i:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<TK;>;"
        }
    .end annotation
.end field

.field final k:Llhz;

.field final l:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final m:Ljava/util/concurrent/atomic/AtomicLong;

.field final n:Ljava/util/concurrent/atomic/AtomicInteger;

.field o:Ljava/lang/Throwable;

.field volatile p:Z

.field final q:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 123
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lrx/internal/operators/OperatorGroupBy$b;->j:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Llgy;Llhk;Llhk;IZLlhk;)V
    .locals 4
    .param p4, "bufferSize"    # I
    .param p5, "delayError"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llgy",
            "<-",
            "Llkd",
            "<TK;TV;>;>;",
            "Llhk",
            "<-TT;+TK;>;",
            "Llhk",
            "<-TT;+TV;>;IZ",
            "Llhk",
            "<",
            "Llhg",
            "<TK;>;",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 140
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$b;, "Lrx/internal/operators/OperatorGroupBy$b<TT;TK;TV;>;"
    .local p1, "actual":Llgy;, "Llgy<-Llkd<TK;TV;>;>;"
    .local p2, "keySelector":Llhk;, "Llhk<-TT;+TK;>;"
    .local p3, "valueSelector":Llhk;, "Llhk<-TT;+TV;>;"
    .local p6, "mapFactory":Llhk;, "Llhk<Llhg<TK;>;Ljava/util/Map<TK;Ljava/lang/Object;>;>;"
    invoke-direct {p0}, Llgy;-><init>()V

    .line 141
    iput-object p1, p0, Lrx/internal/operators/OperatorGroupBy$b;->a:Llgy;

    .line 142
    iput-object p2, p0, Lrx/internal/operators/OperatorGroupBy$b;->b:Llhk;

    .line 143
    iput-object p3, p0, Lrx/internal/operators/OperatorGroupBy$b;->c:Llhk;

    .line 144
    iput p4, p0, Lrx/internal/operators/OperatorGroupBy$b;->d:I

    .line 145
    iput-boolean p5, p0, Lrx/internal/operators/OperatorGroupBy$b;->e:Z

    .line 146
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorGroupBy$b;->g:Ljava/util/Queue;

    .line 147
    new-instance v0, Llhz;

    invoke-direct {v0}, Llhz;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorGroupBy$b;->k:Llhz;

    .line 148
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$b;->k:Llhz;

    int-to-long v2, p4

    invoke-virtual {v0, v2, v3}, Llhz;->request(J)V

    .line 149
    new-instance v0, Lrx/internal/operators/OperatorGroupBy$a;

    invoke-direct {v0, p0}, Lrx/internal/operators/OperatorGroupBy$a;-><init>(Lrx/internal/operators/OperatorGroupBy$b;)V

    iput-object v0, p0, Lrx/internal/operators/OperatorGroupBy$b;->h:Lrx/internal/operators/OperatorGroupBy$a;

    .line 150
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorGroupBy$b;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 151
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorGroupBy$b;->m:Ljava/util/concurrent/atomic/AtomicLong;

    .line 152
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lrx/internal/operators/OperatorGroupBy$b;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 153
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorGroupBy$b;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 154
    if-nez p6, :cond_0

    .line 155
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorGroupBy$b;->f:Ljava/util/Map;

    .line 156
    const/4 v0, 0x0

    iput-object v0, p0, Lrx/internal/operators/OperatorGroupBy$b;->i:Ljava/util/Queue;

    .line 161
    :goto_0
    return-void

    .line 158
    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorGroupBy$b;->i:Ljava/util/Queue;

    .line 159
    new-instance v0, Lrx/internal/operators/OperatorGroupBy$b$a;

    iget-object v1, p0, Lrx/internal/operators/OperatorGroupBy$b;->i:Ljava/util/Queue;

    invoke-direct {v0, v1}, Lrx/internal/operators/OperatorGroupBy$b$a;-><init>(Ljava/util/Queue;)V

    .line 1179
    invoke-interface {p6, v0}, Llhk;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 159
    iput-object v0, p0, Lrx/internal/operators/OperatorGroupBy$b;->f:Ljava/util/Map;

    goto :goto_0
.end method

.method private a(Llgy;Ljava/util/Queue;Ljava/lang/Throwable;)V
    .locals 4
    .param p3, "ex"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llgy",
            "<-",
            "Llkd",
            "<TK;TV;>;>;",
            "Ljava/util/Queue",
            "<*>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 363
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$b;, "Lrx/internal/operators/OperatorGroupBy$b<TT;TK;TV;>;"
    .local p1, "a":Llgy;, "Llgy<-Llkd<TK;TV;>;>;"
    .local p2, "q":Ljava/util/Queue;, "Ljava/util/Queue<*>;"
    invoke-interface {p2}, Ljava/util/Queue;->clear()V

    .line 364
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lrx/internal/operators/OperatorGroupBy$b;->f:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 365
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lrx/internal/operators/OperatorGroupBy$c<TK;TV;>;>;"
    iget-object v2, p0, Lrx/internal/operators/OperatorGroupBy$b;->f:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 366
    iget-object v2, p0, Lrx/internal/operators/OperatorGroupBy$b;->i:Ljava/util/Queue;

    if-eqz v2, :cond_0

    .line 367
    iget-object v2, p0, Lrx/internal/operators/OperatorGroupBy$b;->i:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->clear()V

    .line 370
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/operators/OperatorGroupBy$c;

    .line 4413
    .local v0, "e":Lrx/internal/operators/OperatorGroupBy$c;, "Lrx/internal/operators/OperatorGroupBy$c<TK;TV;>;"
    iget-object v3, v0, Lrx/internal/operators/OperatorGroupBy$c;->b:Lrx/internal/operators/OperatorGroupBy$State;

    invoke-virtual {v3, p3}, Lrx/internal/operators/OperatorGroupBy$State;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 374
    .end local v0    # "e":Lrx/internal/operators/OperatorGroupBy$c;, "Lrx/internal/operators/OperatorGroupBy$c<TK;TV;>;"
    :cond_1
    invoke-virtual {p1, p3}, Llgy;->onError(Ljava/lang/Throwable;)V

    .line 375
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
            "Llkd",
            "<TK;TV;>;>;",
            "Ljava/util/Queue",
            "<*>;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$b;, "Lrx/internal/operators/OperatorGroupBy$b<TT;TK;TV;>;"
    .local p3, "a":Llgy;, "Llgy<-Llkd<TK;TV;>;>;"
    .local p4, "q":Ljava/util/Queue;, "Ljava/util/Queue<*>;"
    const/4 v1, 0x1

    .line 379
    if-eqz p1, :cond_1

    .line 380
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$b;->o:Ljava/lang/Throwable;

    .line 381
    .local v0, "err":Ljava/lang/Throwable;
    if-eqz v0, :cond_0

    .line 382
    invoke-direct {p0, p3, p4, v0}, Lrx/internal/operators/OperatorGroupBy$b;->a(Llgy;Ljava/util/Queue;Ljava/lang/Throwable;)V

    .line 390
    .end local v0    # "err":Ljava/lang/Throwable;
    :goto_0
    return v1

    .line 385
    .restart local v0    # "err":Ljava/lang/Throwable;
    :cond_0
    if-eqz p2, :cond_1

    .line 386
    iget-object v2, p0, Lrx/internal/operators/OperatorGroupBy$b;->a:Llgy;

    invoke-virtual {v2}, Llgy;->onCompleted()V

    goto :goto_0

    .line 390
    .end local v0    # "err":Ljava/lang/Throwable;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 301
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$b;, "Lrx/internal/operators/OperatorGroupBy$b<TT;TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    if-eqz p1, :cond_1

    move-object v0, p1

    .line 302
    .local v0, "mapKey":Ljava/lang/Object;
    :goto_0
    iget-object v1, p0, Lrx/internal/operators/OperatorGroupBy$b;->f:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 303
    iget-object v1, p0, Lrx/internal/operators/OperatorGroupBy$b;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    if-nez v1, :cond_0

    .line 304
    invoke-virtual {p0}, Lrx/internal/operators/OperatorGroupBy$b;->unsubscribe()V

    .line 307
    :cond_0
    return-void

    .line 301
    .end local v0    # "mapKey":Ljava/lang/Object;
    :cond_1
    sget-object v0, Lrx/internal/operators/OperatorGroupBy$b;->j:Ljava/lang/Object;

    goto :goto_0
.end method

.method public final a(Llgu;)V
    .locals 4
    .param p1, "s"    # Llgu;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 184
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$b;, "Lrx/internal/operators/OperatorGroupBy$b<TT;TK;TV;>;"
    iget-object v1, p0, Lrx/internal/operators/OperatorGroupBy$b;->k:Llhz;

    .line 2115
    monitor-enter v1

    .line 2116
    :try_start_0
    iget-boolean v0, v1, Llhz;->c:Z

    if-eqz v0, :cond_1

    .line 2117
    if-nez p1, :cond_0

    sget-object p1, Llhz;->g:Llgu;

    .end local p1    # "s":Llgu;
    :cond_0
    iput-object p1, v1, Llhz;->f:Llgu;

    .line 2118
    monitor-exit v1

    .line 2132
    :goto_0
    return-void

    .line 2120
    .restart local p1    # "s":Llgu;
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, v1, Llhz;->c:Z

    .line 2121
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2124
    :try_start_1
    iput-object p1, v1, Llhz;->b:Llgu;

    .line 2125
    if-eqz p1, :cond_2

    .line 2126
    iget-wide v2, v1, Llhz;->a:J

    invoke-interface {p1, v2, v3}, Llgu;->request(J)V

    .line 2129
    :cond_2
    invoke-virtual {v1}, Llhz;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2132
    :catchall_0
    move-exception v0

    .line 2133
    monitor-enter v1

    .line 2134
    const/4 v2, 0x0

    :try_start_2
    iput-boolean v2, v1, Llhz;->c:Z

    .line 2135
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    .line 2121
    .end local p1    # "s":Llgu;
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 2135
    .restart local p1    # "s":Llgu;
    :catchall_2
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0
.end method

.method final b()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 310
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$b;, "Lrx/internal/operators/OperatorGroupBy$b<TT;TK;TV;>;"
    iget-object v10, p0, Lrx/internal/operators/OperatorGroupBy$b;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v10

    if-eqz v10, :cond_1

    .line 360
    :cond_0
    return-void

    .line 314
    :cond_1
    const/4 v5, 0x1

    .line 316
    .local v5, "missed":I
    iget-object v6, p0, Lrx/internal/operators/OperatorGroupBy$b;->g:Ljava/util/Queue;

    .line 317
    .local v6, "q":Ljava/util/Queue;, "Ljava/util/Queue<Llkd<TK;TV;>;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$b;->a:Llgy;

    .line 321
    .local v0, "a":Llgy;, "Llgy<-Llkd<TK;TV;>;>;"
    :goto_0
    iget-boolean v10, p0, Lrx/internal/operators/OperatorGroupBy$b;->p:Z

    invoke-interface {v6}, Ljava/util/Queue;->isEmpty()Z

    move-result v11

    invoke-direct {p0, v10, v11, v0, v6}, Lrx/internal/operators/OperatorGroupBy$b;->a(ZZLlgy;Ljava/util/Queue;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 325
    iget-object v10, p0, Lrx/internal/operators/OperatorGroupBy$b;->m:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8

    .line 326
    .local v8, "r":J
    const-wide/16 v2, 0x0

    .line 328
    .local v2, "e":J
    :goto_1
    cmp-long v10, v2, v8

    if-eqz v10, :cond_3

    .line 329
    iget-boolean v1, p0, Lrx/internal/operators/OperatorGroupBy$b;->p:Z

    .line 331
    .local v1, "d":Z
    invoke-interface {v6}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Llkd;

    .line 333
    .local v7, "t":Llkd;, "Llkd<TK;TV;>;"
    if-nez v7, :cond_2

    const/4 v4, 0x1

    .line 335
    .local v4, "empty":Z
    :goto_2
    invoke-direct {p0, v1, v4, v0, v6}, Lrx/internal/operators/OperatorGroupBy$b;->a(ZZLlgy;Ljava/util/Queue;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 339
    if-nez v4, :cond_3

    .line 343
    invoke-virtual {v0, v7}, Llgy;->onNext(Ljava/lang/Object;)V

    .line 345
    const-wide/16 v10, 0x1

    add-long/2addr v2, v10

    .line 346
    goto :goto_1

    .line 333
    .end local v4    # "empty":Z
    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    .line 348
    .end local v1    # "d":Z
    .end local v7    # "t":Llkd;, "Llkd<TK;TV;>;"
    :cond_3
    const-wide/16 v10, 0x0

    cmp-long v10, v2, v10

    if-eqz v10, :cond_5

    .line 349
    const-wide v10, 0x7fffffffffffffffL

    cmp-long v10, v8, v10

    if-eqz v10, :cond_4

    .line 350
    iget-object v10, p0, Lrx/internal/operators/OperatorGroupBy$b;->m:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v10, v2, v3}, Llhn;->b(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 352
    :cond_4
    iget-object v10, p0, Lrx/internal/operators/OperatorGroupBy$b;->k:Llhz;

    invoke-virtual {v10, v2, v3}, Llhz;->request(J)V

    .line 355
    :cond_5
    iget-object v10, p0, Lrx/internal/operators/OperatorGroupBy$b;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v11, v5

    invoke-virtual {v10, v11}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v5

    .line 356
    if-eqz v5, :cond_0

    goto :goto_0
.end method

.method public final onCompleted()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 264
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$b;, "Lrx/internal/operators/OperatorGroupBy$b<TT;TK;TV;>;"
    iget-boolean v1, p0, Lrx/internal/operators/OperatorGroupBy$b;->p:Z

    if-eqz v1, :cond_0

    .line 279
    :goto_0
    return-void

    .line 268
    :cond_0
    iget-object v1, p0, Lrx/internal/operators/OperatorGroupBy$b;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/operators/OperatorGroupBy$c;

    .line 3417
    .local v0, "e":Lrx/internal/operators/OperatorGroupBy$c;, "Lrx/internal/operators/OperatorGroupBy$c<TK;TV;>;"
    iget-object v2, v0, Lrx/internal/operators/OperatorGroupBy$c;->b:Lrx/internal/operators/OperatorGroupBy$State;

    invoke-virtual {v2}, Lrx/internal/operators/OperatorGroupBy$State;->onComplete()V

    goto :goto_1

    .line 271
    .end local v0    # "e":Lrx/internal/operators/OperatorGroupBy$c;, "Lrx/internal/operators/OperatorGroupBy$c<TK;TV;>;"
    :cond_1
    iget-object v1, p0, Lrx/internal/operators/OperatorGroupBy$b;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 272
    iget-object v1, p0, Lrx/internal/operators/OperatorGroupBy$b;->i:Ljava/util/Queue;

    if-eqz v1, :cond_2

    .line 273
    iget-object v1, p0, Lrx/internal/operators/OperatorGroupBy$b;->i:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    .line 276
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lrx/internal/operators/OperatorGroupBy$b;->p:Z

    .line 277
    iget-object v1, p0, Lrx/internal/operators/OperatorGroupBy$b;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 278
    invoke-virtual {p0}, Lrx/internal/operators/OperatorGroupBy$b;->b()V

    goto :goto_0
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 252
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$b;, "Lrx/internal/operators/OperatorGroupBy$b<TT;TK;TV;>;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorGroupBy$b;->p:Z

    if-eqz v0, :cond_0

    .line 253
    invoke-static {p1}, Llkm;->a(Ljava/lang/Throwable;)V

    .line 260
    :goto_0
    return-void

    .line 256
    :cond_0
    iput-object p1, p0, Lrx/internal/operators/OperatorGroupBy$b;->o:Ljava/lang/Throwable;

    .line 257
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorGroupBy$b;->p:Z

    .line 258
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$b;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 259
    invoke-virtual {p0}, Lrx/internal/operators/OperatorGroupBy$b;->b()V

    goto :goto_0
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 189
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$b;, "Lrx/internal/operators/OperatorGroupBy$b<TT;TK;TV;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v10, p0, Lrx/internal/operators/OperatorGroupBy$b;->p:Z

    if-eqz v10, :cond_1

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    iget-object v8, p0, Lrx/internal/operators/OperatorGroupBy$b;->g:Ljava/util/Queue;

    .line 194
    .local v8, "q":Ljava/util/Queue;, "Ljava/util/Queue<Llkd<TK;TV;>;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$b;->a:Llgy;

    .line 198
    .local v0, "a":Llgy;, "Llgy<-Llkd<TK;TV;>;>;"
    :try_start_0
    iget-object v10, p0, Lrx/internal/operators/OperatorGroupBy$b;->b:Llhk;

    invoke-interface {v10, p1}, Llhk;->call(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 205
    .local v5, "key":Ljava/lang/Object;, "TK;"
    const/4 v7, 0x0

    .line 206
    .local v7, "newGroup":Z
    if-eqz v5, :cond_4

    move-object v6, v5

    .line 207
    .local v6, "mapKey":Ljava/lang/Object;
    :goto_1
    iget-object v10, p0, Lrx/internal/operators/OperatorGroupBy$b;->f:Ljava/util/Map;

    invoke-interface {v10, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lrx/internal/operators/OperatorGroupBy$c;

    .line 208
    .local v4, "group":Lrx/internal/operators/OperatorGroupBy$c;, "Lrx/internal/operators/OperatorGroupBy$c<TK;TV;>;"
    if-nez v4, :cond_2

    .line 211
    iget-object v10, p0, Lrx/internal/operators/OperatorGroupBy$b;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v10

    if-nez v10, :cond_0

    .line 212
    iget v10, p0, Lrx/internal/operators/OperatorGroupBy$b;->d:I

    iget-boolean v11, p0, Lrx/internal/operators/OperatorGroupBy$b;->e:Z

    invoke-static {v5, v10, p0, v11}, Lrx/internal/operators/OperatorGroupBy$c;->a(Ljava/lang/Object;ILrx/internal/operators/OperatorGroupBy$b;Z)Lrx/internal/operators/OperatorGroupBy$c;

    move-result-object v4

    .line 213
    iget-object v10, p0, Lrx/internal/operators/OperatorGroupBy$b;->f:Ljava/util/Map;

    invoke-interface {v10, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    iget-object v10, p0, Lrx/internal/operators/OperatorGroupBy$b;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 217
    const/4 v7, 0x1

    .line 225
    :cond_2
    :try_start_1
    iget-object v10, p0, Lrx/internal/operators/OperatorGroupBy$b;->c:Llhk;

    invoke-interface {v10, p1}, Llhk;->call(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v9

    .line 2409
    .local v9, "v":Ljava/lang/Object;, "TV;"
    iget-object v10, v4, Lrx/internal/operators/OperatorGroupBy$c;->b:Lrx/internal/operators/OperatorGroupBy$State;

    invoke-virtual {v10, v9}, Lrx/internal/operators/OperatorGroupBy$State;->onNext(Ljava/lang/Object;)V

    .line 234
    iget-object v10, p0, Lrx/internal/operators/OperatorGroupBy$b;->i:Ljava/util/Queue;

    if-eqz v10, :cond_5

    .line 236
    :cond_3
    :goto_2
    iget-object v10, p0, Lrx/internal/operators/OperatorGroupBy$b;->i:Ljava/util/Queue;

    invoke-interface {v10}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    .local v1, "evictedKey":Ljava/lang/Object;, "TK;"
    if-eqz v1, :cond_5

    .line 237
    iget-object v10, p0, Lrx/internal/operators/OperatorGroupBy$b;->f:Ljava/util/Map;

    invoke-interface {v10, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lrx/internal/operators/OperatorGroupBy$c;

    .line 238
    .local v3, "g":Lrx/internal/operators/OperatorGroupBy$c;, "Lrx/internal/operators/OperatorGroupBy$c<TK;TV;>;"
    if-eqz v3, :cond_3

    .line 2417
    iget-object v10, v3, Lrx/internal/operators/OperatorGroupBy$c;->b:Lrx/internal/operators/OperatorGroupBy$State;

    invoke-virtual {v10}, Lrx/internal/operators/OperatorGroupBy$State;->onComplete()V

    goto :goto_2

    .line 199
    .end local v1    # "evictedKey":Ljava/lang/Object;, "TK;"
    .end local v3    # "g":Lrx/internal/operators/OperatorGroupBy$c;, "Lrx/internal/operators/OperatorGroupBy$c<TK;TV;>;"
    .end local v4    # "group":Lrx/internal/operators/OperatorGroupBy$c;, "Lrx/internal/operators/OperatorGroupBy$c<TK;TV;>;"
    .end local v5    # "key":Ljava/lang/Object;, "TK;"
    .end local v6    # "mapKey":Ljava/lang/Object;
    .end local v7    # "newGroup":Z
    .end local v9    # "v":Ljava/lang/Object;, "TV;"
    :catch_0
    move-exception v2

    .line 200
    .local v2, "ex":Ljava/lang/Throwable;
    invoke-virtual {p0}, Lrx/internal/operators/OperatorGroupBy$b;->unsubscribe()V

    .line 201
    invoke-direct {p0, v0, v8, v2}, Lrx/internal/operators/OperatorGroupBy$b;->a(Llgy;Ljava/util/Queue;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 206
    .end local v2    # "ex":Ljava/lang/Throwable;
    .restart local v5    # "key":Ljava/lang/Object;, "TK;"
    .restart local v7    # "newGroup":Z
    :cond_4
    sget-object v6, Lrx/internal/operators/OperatorGroupBy$b;->j:Ljava/lang/Object;

    goto :goto_1

    .line 226
    .restart local v4    # "group":Lrx/internal/operators/OperatorGroupBy$c;, "Lrx/internal/operators/OperatorGroupBy$c<TK;TV;>;"
    .restart local v6    # "mapKey":Ljava/lang/Object;
    :catch_1
    move-exception v2

    .line 227
    .restart local v2    # "ex":Ljava/lang/Throwable;
    invoke-virtual {p0}, Lrx/internal/operators/OperatorGroupBy$b;->unsubscribe()V

    .line 228
    invoke-direct {p0, v0, v8, v2}, Lrx/internal/operators/OperatorGroupBy$b;->a(Llgy;Ljava/util/Queue;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 244
    .end local v2    # "ex":Ljava/lang/Throwable;
    .restart local v9    # "v":Ljava/lang/Object;, "TV;"
    :cond_5
    if-eqz v7, :cond_0

    .line 245
    invoke-interface {v8, v4}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 246
    invoke-virtual {p0}, Lrx/internal/operators/OperatorGroupBy$b;->b()V

    goto :goto_0
.end method
