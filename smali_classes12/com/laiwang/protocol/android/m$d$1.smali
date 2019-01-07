.class Lcom/laiwang/protocol/android/m$d$1;
.super Ljava/lang/Object;
.source "LwpConnection.java"

# interfaces
.implements Lcom/laiwang/protocol/android/Reply;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laiwang/protocol/android/m$d;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/laiwang/protocol/android/Reply",
        "<",
        "Lcom/laiwang/protocol/core/Response;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/laiwang/protocol/android/m$d;


# direct methods
.method constructor <init>(Lcom/laiwang/protocol/android/m$d;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/laiwang/protocol/android/m$d;

    .prologue
    .line 420
    iput-object p1, p0, Lcom/laiwang/protocol/android/m$d$1;->b:Lcom/laiwang/protocol/android/m$d;

    iput-object p2, p0, Lcom/laiwang/protocol/android/m$d$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/laiwang/protocol/core/Response;)V
    .locals 8
    .param p1, "response"    # Lcom/laiwang/protocol/core/Response;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 424
    :try_start_0
    iget-object v2, p0, Lcom/laiwang/protocol/android/m$d$1;->b:Lcom/laiwang/protocol/android/m$d;

    iget-object v2, v2, Lcom/laiwang/protocol/android/m$d;->a:Lcom/laiwang/protocol/android/m;

    invoke-static {v2}, Lcom/laiwang/protocol/android/m;->k(Lcom/laiwang/protocol/android/m;)Lcom/laiwang/protocol/android/j;

    move-result-object v2

    iget-object v2, v2, Lcom/laiwang/protocol/android/j;->d:Lcom/laiwang/protocol/android/j$a;

    invoke-virtual {v2}, Lcom/laiwang/protocol/android/j$a;->b()V

    .line 426
    invoke-virtual {p1}, Lcom/laiwang/protocol/core/Response;->status()Lcom/laiwang/protocol/core/Constants$Status;

    move-result-object v2

    sget-object v3, Lcom/laiwang/protocol/core/Constants$Status;->OK:Lcom/laiwang/protocol/core/Constants$Status;

    if-ne v2, v3, :cond_5

    .line 427
    const-string/jumbo v2, "[LwpConn] dev reg succ"

    invoke-static {v2}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;)V

    .line 428
    iget-object v2, p0, Lcom/laiwang/protocol/android/m$d$1;->b:Lcom/laiwang/protocol/android/m$d;

    iget-object v2, v2, Lcom/laiwang/protocol/android/m$d;->a:Lcom/laiwang/protocol/android/m;

    invoke-static {v2}, Lcom/laiwang/protocol/android/m;->k(Lcom/laiwang/protocol/android/m;)Lcom/laiwang/protocol/android/j;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/laiwang/protocol/android/j;->a(Z)V

    .line 429
    iget-object v2, p0, Lcom/laiwang/protocol/android/m$d$1;->b:Lcom/laiwang/protocol/android/m$d;

    iget-object v2, v2, Lcom/laiwang/protocol/android/m$d;->a:Lcom/laiwang/protocol/android/m;

    sget-object v3, Lcom/laiwang/protocol/android/k$d;->d:Lcom/laiwang/protocol/android/k$d;

    invoke-static {v2, v3}, Lcom/laiwang/protocol/android/m;->a(Lcom/laiwang/protocol/android/m;Lcom/laiwang/protocol/android/k$d;)Lcom/laiwang/protocol/android/k$d;

    .line 430
    iget-object v2, p0, Lcom/laiwang/protocol/android/m$d$1;->b:Lcom/laiwang/protocol/android/m$d;

    iget-object v2, v2, Lcom/laiwang/protocol/android/m$d;->a:Lcom/laiwang/protocol/android/m;

    invoke-static {v2}, Lcom/laiwang/protocol/android/m;->i(Lcom/laiwang/protocol/android/m;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/laiwang/protocol/android/m$e;

    .line 431
    .local v1, "listener":Lcom/laiwang/protocol/android/m$e;
    if-eqz v1, :cond_0

    .line 432
    iget-object v3, p0, Lcom/laiwang/protocol/android/m$d$1;->b:Lcom/laiwang/protocol/android/m$d;

    iget-object v3, v3, Lcom/laiwang/protocol/android/m$d;->a:Lcom/laiwang/protocol/android/m;

    invoke-virtual {v1, v3}, Lcom/laiwang/protocol/android/m$e;->d(Lcom/laiwang/protocol/android/k;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 470
    .end local v1    # "listener":Lcom/laiwang/protocol/android/m$e;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/laiwang/protocol/android/m$d$1;->b:Lcom/laiwang/protocol/android/m$d;

    invoke-static {v3}, Lcom/laiwang/protocol/android/m$d;->a(Lcom/laiwang/protocol/android/m$d;)Lcom/laiwang/protocol/android/Reply;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 471
    iget-object v3, p0, Lcom/laiwang/protocol/android/m$d$1;->b:Lcom/laiwang/protocol/android/m$d;

    invoke-static {v3}, Lcom/laiwang/protocol/android/m$d;->a(Lcom/laiwang/protocol/android/m$d;)Lcom/laiwang/protocol/android/Reply;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/laiwang/protocol/android/Reply;->on(Ljava/lang/Object;)V

    :cond_1
    throw v2

    .line 434
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/laiwang/protocol/android/m$d$1;->b:Lcom/laiwang/protocol/android/m$d;

    iget-object v2, v2, Lcom/laiwang/protocol/android/m$d;->a:Lcom/laiwang/protocol/android/m;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/laiwang/protocol/android/m;->a(Lcom/laiwang/protocol/android/m;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 470
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/laiwang/protocol/android/m$d$1;->b:Lcom/laiwang/protocol/android/m$d;

    invoke-static {v2}, Lcom/laiwang/protocol/android/m$d;->a(Lcom/laiwang/protocol/android/m$d;)Lcom/laiwang/protocol/android/Reply;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 471
    iget-object v2, p0, Lcom/laiwang/protocol/android/m$d$1;->b:Lcom/laiwang/protocol/android/m$d;

    invoke-static {v2}, Lcom/laiwang/protocol/android/m$d;->a(Lcom/laiwang/protocol/android/m$d;)Lcom/laiwang/protocol/android/Reply;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/laiwang/protocol/android/Reply;->on(Ljava/lang/Object;)V

    .line 473
    :cond_4
    :goto_2
    return-void

    .line 435
    :cond_5
    :try_start_2
    invoke-virtual {p1}, Lcom/laiwang/protocol/core/Response;->status()Lcom/laiwang/protocol/core/Constants$Status;

    move-result-object v2

    sget-object v3, Lcom/laiwang/protocol/core/Constants$Status;->UNAUTHORIZED:Lcom/laiwang/protocol/core/Constants$Status;

    if-ne v2, v3, :cond_7

    .line 436
    const-string/jumbo v2, "[LwpConn] dev reg inval"

    invoke-static {v2}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;)V

    .line 437
    iget-object v2, p0, Lcom/laiwang/protocol/android/m$d$1;->b:Lcom/laiwang/protocol/android/m$d;

    iget-object v2, v2, Lcom/laiwang/protocol/android/m$d;->a:Lcom/laiwang/protocol/android/m;

    invoke-static {v2}, Lcom/laiwang/protocol/android/m;->k(Lcom/laiwang/protocol/android/m;)Lcom/laiwang/protocol/android/j;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/laiwang/protocol/android/j;->a(Z)V

    .line 438
    iget-object v2, p0, Lcom/laiwang/protocol/android/m$d$1;->b:Lcom/laiwang/protocol/android/m$d;

    iget-object v2, v2, Lcom/laiwang/protocol/android/m$d;->a:Lcom/laiwang/protocol/android/m;

    sget-object v3, Lcom/laiwang/protocol/android/k$d;->d:Lcom/laiwang/protocol/android/k$d;

    invoke-static {v2, v3}, Lcom/laiwang/protocol/android/m;->a(Lcom/laiwang/protocol/android/m;Lcom/laiwang/protocol/android/k$d;)Lcom/laiwang/protocol/android/k$d;

    .line 439
    invoke-static {}, Lcom/laiwang/protocol/android/m;->l()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v2

    iget-object v3, p0, Lcom/laiwang/protocol/android/m$d$1;->a:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 440
    .local v0, "deviceTokenIsInval":Z
    iget-object v2, p0, Lcom/laiwang/protocol/android/m$d$1;->b:Lcom/laiwang/protocol/android/m$d;

    iget-object v2, v2, Lcom/laiwang/protocol/android/m$d;->a:Lcom/laiwang/protocol/android/m;

    invoke-static {v2}, Lcom/laiwang/protocol/android/m;->i(Lcom/laiwang/protocol/android/m;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/laiwang/protocol/android/m$e;

    .line 441
    .restart local v1    # "listener":Lcom/laiwang/protocol/android/m$e;
    if-eqz v1, :cond_6

    .line 442
    if-eqz v0, :cond_6

    .line 443
    iget-object v3, p0, Lcom/laiwang/protocol/android/m$d$1;->b:Lcom/laiwang/protocol/android/m$d;

    iget-object v3, v3, Lcom/laiwang/protocol/android/m$d;->a:Lcom/laiwang/protocol/android/m;

    invoke-virtual {v1, v3}, Lcom/laiwang/protocol/android/m$e;->h(Lcom/laiwang/protocol/android/k;)V

    goto :goto_3

    .line 447
    .end local v0    # "deviceTokenIsInval":Z
    .end local v1    # "listener":Lcom/laiwang/protocol/android/m$e;
    :cond_7
    invoke-virtual {p1}, Lcom/laiwang/protocol/core/Response;->status()Lcom/laiwang/protocol/core/Constants$Status;

    move-result-object v2

    sget-object v3, Lcom/laiwang/protocol/core/Constants$Status;->TRY_LATER:Lcom/laiwang/protocol/core/Constants$Status;

    if-eq v2, v3, :cond_8

    invoke-virtual {p1}, Lcom/laiwang/protocol/core/Response;->status()Lcom/laiwang/protocol/core/Constants$Status;

    move-result-object v2

    sget-object v3, Lcom/laiwang/protocol/core/Constants$Status;->INTERNAL_SERVER_ERROR:Lcom/laiwang/protocol/core/Constants$Status;

    if-ne v2, v3, :cond_a

    .line 448
    :cond_8
    const-string/jumbo v2, "[LwpConn] dev reg server resp try later"

    invoke-static {v2}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;)V

    .line 449
    iget-object v2, p0, Lcom/laiwang/protocol/android/m$d$1;->b:Lcom/laiwang/protocol/android/m$d;

    iget-wide v2, v2, Lcom/laiwang/protocol/android/m$d;->delay:J

    const-wide/16 v4, 0x7530

    cmp-long v2, v2, v4

    if-lez v2, :cond_9

    .line 450
    iget-object v2, p0, Lcom/laiwang/protocol/android/m$d$1;->b:Lcom/laiwang/protocol/android/m$d;

    iget-object v2, v2, Lcom/laiwang/protocol/android/m$d;->a:Lcom/laiwang/protocol/android/m;

    sget-object v3, Lcom/laiwang/protocol/android/ab;->j:Lcom/laiwang/protocol/android/ab$g;

    invoke-virtual {v2, v3}, Lcom/laiwang/protocol/android/m;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 470
    iget-object v2, p0, Lcom/laiwang/protocol/android/m$d$1;->b:Lcom/laiwang/protocol/android/m$d;

    invoke-static {v2}, Lcom/laiwang/protocol/android/m$d;->a(Lcom/laiwang/protocol/android/m$d;)Lcom/laiwang/protocol/android/Reply;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 471
    iget-object v2, p0, Lcom/laiwang/protocol/android/m$d$1;->b:Lcom/laiwang/protocol/android/m$d;

    invoke-static {v2}, Lcom/laiwang/protocol/android/m$d;->a(Lcom/laiwang/protocol/android/m$d;)Lcom/laiwang/protocol/android/Reply;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/laiwang/protocol/android/Reply;->on(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 453
    :cond_9
    :try_start_3
    iget-object v2, p0, Lcom/laiwang/protocol/android/m$d$1;->b:Lcom/laiwang/protocol/android/m$d;

    iget-wide v4, v2, Lcom/laiwang/protocol/android/m$d;->delay:J

    const-wide/16 v6, 0x2710

    add-long/2addr v4, v6

    iput-wide v4, v2, Lcom/laiwang/protocol/android/m$d;->delay:J

    .line 454
    iget-object v2, p0, Lcom/laiwang/protocol/android/m$d$1;->b:Lcom/laiwang/protocol/android/m$d;

    iget-object v2, v2, Lcom/laiwang/protocol/android/m$d;->a:Lcom/laiwang/protocol/android/m;

    iget-object v3, p0, Lcom/laiwang/protocol/android/m$d$1;->b:Lcom/laiwang/protocol/android/m$d;

    iget-wide v4, v3, Lcom/laiwang/protocol/android/m$d;->delay:J

    long-to-int v3, v4

    iget-object v4, p0, Lcom/laiwang/protocol/android/m$d$1;->b:Lcom/laiwang/protocol/android/m$d;

    invoke-static {v4}, Lcom/laiwang/protocol/android/m$d;->a(Lcom/laiwang/protocol/android/m$d;)Lcom/laiwang/protocol/android/Reply;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/laiwang/protocol/android/m;->b(Lcom/laiwang/protocol/android/m;ILcom/laiwang/protocol/android/Reply;)Z

    goto/16 :goto_1

    .line 455
    :cond_a
    invoke-virtual {p1}, Lcom/laiwang/protocol/core/Response;->status()Lcom/laiwang/protocol/core/Constants$Status;

    move-result-object v2

    iget v2, v2, Lcom/laiwang/protocol/core/Constants$Status;->code:I

    const/16 v3, 0x190

    if-lt v2, v3, :cond_b

    .line 456
    iget-object v2, p0, Lcom/laiwang/protocol/android/m$d$1;->b:Lcom/laiwang/protocol/android/m$d;

    iget-object v2, v2, Lcom/laiwang/protocol/android/m$d;->a:Lcom/laiwang/protocol/android/m;

    invoke-static {v2}, Lcom/laiwang/protocol/android/m;->k(Lcom/laiwang/protocol/android/m;)Lcom/laiwang/protocol/android/j;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/laiwang/protocol/android/j;->a(Z)V

    .line 457
    const-string/jumbo v2, "[LwpConn] dev reg server resp try later"

    invoke-static {v2}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;)V

    .line 458
    iget-object v2, p0, Lcom/laiwang/protocol/android/m$d$1;->b:Lcom/laiwang/protocol/android/m$d;

    iget-object v2, v2, Lcom/laiwang/protocol/android/m$d;->a:Lcom/laiwang/protocol/android/m;

    sget-object v3, Lcom/laiwang/protocol/android/ab;->j:Lcom/laiwang/protocol/android/ab$g;

    invoke-virtual {v2, v3}, Lcom/laiwang/protocol/android/m;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 460
    :cond_b
    iget-object v2, p0, Lcom/laiwang/protocol/android/m$d$1;->b:Lcom/laiwang/protocol/android/m$d;

    iget-object v2, v2, Lcom/laiwang/protocol/android/m$d;->a:Lcom/laiwang/protocol/android/m;

    invoke-static {v2}, Lcom/laiwang/protocol/android/m;->k(Lcom/laiwang/protocol/android/m;)Lcom/laiwang/protocol/android/j;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/laiwang/protocol/android/j;->a(Z)V

    .line 461
    const-string/jumbo v2, "[LwpConn] dev reg server resp try later"

    invoke-static {v2}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;)V

    .line 462
    iget-object v2, p0, Lcom/laiwang/protocol/android/m$d$1;->b:Lcom/laiwang/protocol/android/m$d;

    iget-object v2, v2, Lcom/laiwang/protocol/android/m$d;->a:Lcom/laiwang/protocol/android/m;

    invoke-static {v2}, Lcom/laiwang/protocol/android/m;->i(Lcom/laiwang/protocol/android/m;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_c
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/laiwang/protocol/android/m$e;

    .line 463
    .restart local v1    # "listener":Lcom/laiwang/protocol/android/m$e;
    if-eqz v1, :cond_c

    .line 464
    iget-object v3, p0, Lcom/laiwang/protocol/android/m$d$1;->b:Lcom/laiwang/protocol/android/m$d;

    iget-object v3, v3, Lcom/laiwang/protocol/android/m$d;->a:Lcom/laiwang/protocol/android/m;

    invoke-virtual {v1, v3}, Lcom/laiwang/protocol/android/m$e;->j(Lcom/laiwang/protocol/android/k;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4
.end method

.method public synthetic on(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 420
    check-cast p1, Lcom/laiwang/protocol/core/Response;

    invoke-virtual {p0, p1}, Lcom/laiwang/protocol/android/m$d$1;->a(Lcom/laiwang/protocol/core/Response;)V

    return-void
.end method
