.class final Llhu$a;
.super Llgy;
.source "OperatorObserveOn.java"

# interfaces
.implements Llhf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llhu;
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
        "Llhf;"
    }
.end annotation


# instance fields
.field final a:Llgy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llgy",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final b:Llgv$a;

.field final c:Z

.field final d:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final e:I

.field volatile f:Z

.field final g:Ljava/util/concurrent/atomic/AtomicLong;

.field final h:Ljava/util/concurrent/atomic/AtomicLong;

.field i:Ljava/lang/Throwable;

.field j:J


# direct methods
.method public constructor <init>(Llgv;Llgy;ZI)V
    .locals 4
    .param p1, "scheduler"    # Llgv;
    .param p3, "delayError"    # Z
    .param p4, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llgv;",
            "Llgy",
            "<-TT;>;ZI)V"
        }
    .end annotation

    .prologue
    .line 118
    .local p0, "this":Llhu$a;, "Llhu$a<TT;>;"
    .local p2, "child":Llgy;, "Llgy<-TT;>;"
    invoke-direct {p0}, Llgy;-><init>()V

    .line 103
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v1, p0, Llhu$a;->g:Ljava/util/concurrent/atomic/AtomicLong;

    .line 105
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v1, p0, Llhu$a;->h:Ljava/util/concurrent/atomic/AtomicLong;

    .line 119
    iput-object p2, p0, Llhu$a;->a:Llgy;

    .line 120
    invoke-virtual {p1}, Llgv;->a()Llgv$a;

    move-result-object v1

    iput-object v1, p0, Llhu$a;->b:Llgv$a;

    .line 121
    iput-boolean p3, p0, Llhu$a;->c:Z

    .line 122
    if-lez p4, :cond_0

    move v0, p4

    .line 124
    .local v0, "calculatedSize":I
    :goto_0
    shr-int/lit8 v1, v0, 0x2

    sub-int v1, v0, v1

    iput v1, p0, Llhu$a;->e:I

    .line 125
    invoke-static {}, Llkb;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 126
    new-instance v1, Lljn;

    invoke-direct {v1, v0}, Lljn;-><init>(I)V

    iput-object v1, p0, Llhu$a;->d:Ljava/util/Queue;

    .line 131
    :goto_1
    int-to-long v2, v0

    invoke-virtual {p0, v2, v3}, Llhu$a;->a(J)V

    .line 132
    return-void

    .line 122
    .end local v0    # "calculatedSize":I
    :cond_0
    sget v0, Llin;->b:I

    goto :goto_0

    .line 128
    .restart local v0    # "calculatedSize":I
    :cond_1
    new-instance v1, Llis;

    invoke-direct {v1, v0}, Llis;-><init>(I)V

    iput-object v1, p0, Llhu$a;->d:Ljava/util/Queue;

    goto :goto_1
.end method

.method private a(ZZLlgy;Ljava/util/Queue;)Z
    .locals 3
    .param p1, "done"    # Z
    .param p2, "isEmpty"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Llgy",
            "<-TT;>;",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .local p0, "this":Llhu$a;, "Llhu$a<TT;>;"
    .local p3, "a":Llgy;, "Llgy<-TT;>;"
    .local p4, "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    const/4 v1, 0x1

    .line 249
    invoke-virtual {p3}, Llgy;->isUnsubscribed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 250
    invoke-interface {p4}, Ljava/util/Queue;->clear()V

    .line 291
    :goto_0
    return v1

    .line 254
    :cond_0
    if-eqz p1, :cond_1

    .line 255
    iget-boolean v2, p0, Llhu$a;->c:Z

    if-eqz v2, :cond_3

    .line 256
    if-eqz p2, :cond_1

    .line 257
    iget-object v0, p0, Llhu$a;->i:Ljava/lang/Throwable;

    .line 259
    .local v0, "e":Ljava/lang/Throwable;
    if-eqz v0, :cond_2

    .line 260
    :try_start_0
    invoke-virtual {p3, v0}, Llgy;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    :goto_1
    iget-object v1, p0, Llhu$a;->b:Llgv$a;

    invoke-virtual {v1}, Llgv$a;->unsubscribe()V

    .line 291
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 262
    .restart local v0    # "e":Ljava/lang/Throwable;
    :cond_2
    :try_start_1
    invoke-virtual {p3}, Llgy;->onCompleted()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 265
    :catchall_0
    move-exception v1

    iget-object v2, p0, Llhu$a;->b:Llgv$a;

    invoke-virtual {v2}, Llgv$a;->unsubscribe()V

    throw v1

    .line 269
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_3
    iget-object v0, p0, Llhu$a;->i:Ljava/lang/Throwable;

    .line 270
    .restart local v0    # "e":Ljava/lang/Throwable;
    if-eqz v0, :cond_4

    .line 271
    invoke-interface {p4}, Ljava/util/Queue;->clear()V

    .line 273
    :try_start_2
    invoke-virtual {p3, v0}, Llgy;->onError(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 275
    iget-object v2, p0, Llhu$a;->b:Llgv$a;

    invoke-virtual {v2}, Llgv$a;->unsubscribe()V

    goto :goto_0

    :catchall_1
    move-exception v1

    iget-object v2, p0, Llhu$a;->b:Llgv$a;

    invoke-virtual {v2}, Llgv$a;->unsubscribe()V

    throw v1

    .line 279
    :cond_4
    if-eqz p2, :cond_1

    .line 281
    :try_start_3
    invoke-virtual {p3}, Llgy;->onCompleted()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 283
    iget-object v2, p0, Llhu$a;->b:Llgv$a;

    invoke-virtual {v2}, Llgv$a;->unsubscribe()V

    goto :goto_0

    :catchall_2
    move-exception v1

    iget-object v2, p0, Llhu$a;->b:Llgv$a;

    invoke-virtual {v2}, Llgv$a;->unsubscribe()V

    throw v1
.end method


# virtual methods
.method protected final b()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 187
    .local p0, "this":Llhu$a;, "Llhu$a<TT;>;"
    iget-object v0, p0, Llhu$a;->h:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 188
    iget-object v0, p0, Llhu$a;->b:Llgv$a;

    invoke-virtual {v0, p0}, Llgv$a;->a(Llhf;)Llgz;

    .line 190
    :cond_0
    return-void
.end method

.method public final call()V
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 195
    .local p0, "this":Llhu$a;, "Llhu$a<TT;>;"
    const-wide/16 v6, 0x1

    .line 196
    .local v6, "missed":J
    iget-wide v0, p0, Llhu$a;->j:J

    .line 201
    .local v0, "currentEmission":J
    iget-object v5, p0, Llhu$a;->d:Ljava/util/Queue;

    .line 202
    .local v5, "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    iget-object v4, p0, Llhu$a;->a:Llgy;

    .line 209
    .local v4, "localChild":Llgy;, "Llgy<-TT;>;"
    :goto_0
    iget-object v11, p0, Llhu$a;->g:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8

    .line 211
    .local v8, "requestAmount":J
    :cond_0
    :goto_1
    cmp-long v11, v8, v0

    if-eqz v11, :cond_4

    .line 212
    iget-boolean v2, p0, Llhu$a;->f:Z

    .line 213
    .local v2, "done":Z
    invoke-interface {v5}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v10

    .line 214
    .local v10, "v":Ljava/lang/Object;
    if-nez v10, :cond_2

    const/4 v3, 0x1

    .line 216
    .local v3, "empty":Z
    :goto_2
    invoke-direct {p0, v2, v3, v4, v5}, Llhu$a;->a(ZZLlgy;Ljava/util/Queue;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 246
    .end local v2    # "done":Z
    .end local v3    # "empty":Z
    .end local v10    # "v":Ljava/lang/Object;
    :cond_1
    return-void

    .line 214
    .restart local v2    # "done":Z
    .restart local v10    # "v":Ljava/lang/Object;
    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    .line 220
    .restart local v3    # "empty":Z
    :cond_3
    if-nez v3, :cond_4

    .line 224
    invoke-static {v10}, Lrx/internal/operators/NotificationLite;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v4, v11}, Llgy;->onNext(Ljava/lang/Object;)V

    .line 226
    const-wide/16 v12, 0x1

    add-long/2addr v0, v12

    .line 227
    iget v11, p0, Llhu$a;->e:I

    int-to-long v12, v11

    cmp-long v11, v0, v12

    if-nez v11, :cond_0

    .line 228
    iget-object v11, p0, Llhu$a;->g:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v11, v0, v1}, Llhn;->b(Ljava/util/concurrent/atomic/AtomicLong;J)J

    move-result-wide v8

    .line 229
    invoke-virtual {p0, v0, v1}, Llhu$a;->a(J)V

    .line 230
    const-wide/16 v0, 0x0

    goto :goto_1

    .line 234
    .end local v2    # "done":Z
    .end local v3    # "empty":Z
    .end local v10    # "v":Ljava/lang/Object;
    :cond_4
    cmp-long v11, v8, v0

    if-nez v11, :cond_5

    .line 235
    iget-boolean v11, p0, Llhu$a;->f:Z

    invoke-interface {v5}, Ljava/util/Queue;->isEmpty()Z

    move-result v12

    invoke-direct {p0, v11, v12, v4, v5}, Llhu$a;->a(ZZLlgy;Ljava/util/Queue;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 240
    :cond_5
    iput-wide v0, p0, Llhu$a;->j:J

    .line 241
    iget-object v11, p0, Llhu$a;->h:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v12, v6

    invoke-virtual {v11, v12, v13}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide v6

    .line 242
    const-wide/16 v12, 0x0

    cmp-long v11, v6, v12

    if-eqz v11, :cond_1

    goto :goto_0
.end method

.method public final onCompleted()V
    .locals 1

    .prologue
    .line 168
    .local p0, "this":Llhu$a;, "Llhu$a<TT;>;"
    invoke-virtual {p0}, Llhu$a;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Llhu$a;->f:Z

    if-eqz v0, :cond_1

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Llhu$a;->f:Z

    .line 172
    invoke-virtual {p0}, Llhu$a;->b()V

    goto :goto_0
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 177
    .local p0, "this":Llhu$a;, "Llhu$a<TT;>;"
    invoke-virtual {p0}, Llhu$a;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Llhu$a;->f:Z

    if-eqz v0, :cond_1

    .line 178
    :cond_0
    invoke-static {p1}, Llkm;->a(Ljava/lang/Throwable;)V

    .line 184
    :goto_0
    return-void

    .line 181
    :cond_1
    iput-object p1, p0, Llhu$a;->i:Ljava/lang/Throwable;

    .line 182
    const/4 v0, 0x1

    iput-boolean v0, p0, Llhu$a;->f:Z

    .line 183
    invoke-virtual {p0}, Llhu$a;->b()V

    goto :goto_0
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
    .line 156
    .local p0, "this":Llhu$a;, "Llhu$a<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Llhu$a;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Llhu$a;->f:Z

    if-eqz v0, :cond_1

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    iget-object v0, p0, Llhu$a;->d:Ljava/util/Queue;

    invoke-static {p1}, Lrx/internal/operators/NotificationLite;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 160
    new-instance v0, Lrx/exceptions/MissingBackpressureException;

    invoke-direct {v0}, Lrx/exceptions/MissingBackpressureException;-><init>()V

    invoke-virtual {p0, v0}, Llhu$a;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 163
    :cond_2
    invoke-virtual {p0}, Llhu$a;->b()V

    goto :goto_0
.end method
