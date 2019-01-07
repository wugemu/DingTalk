.class Lcom/laiwang/protocol/android/o$1;
.super Ljava/lang/Object;
.source "LwsConnection.java"

# interfaces
.implements Lizx;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laiwang/protocol/android/o;->b(Ljava/nio/ByteBuffer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/laiwang/protocol/android/o;


# direct methods
.method constructor <init>(Lcom/laiwang/protocol/android/o;)V
    .locals 0
    .param p1, "this$0"    # Lcom/laiwang/protocol/android/o;

    .prologue
    .line 404
    iput-object p1, p0, Lcom/laiwang/protocol/android/o$1;->a:Lcom/laiwang/protocol/android/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onControl([B)V
    .locals 6
    .param p1, "body"    # [B

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x1

    .line 484
    const-string/jumbo v1, "[Wtls] %s server control"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/laiwang/protocol/android/o$1;->a:Lcom/laiwang/protocol/android/o;

    invoke-virtual {v4}, Lcom/laiwang/protocol/android/o;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 485
    if-eqz p1, :cond_0

    array-length v1, p1

    if-gt v1, v5, :cond_1

    .line 491
    :cond_0
    return-void

    .line 486
    :cond_1
    iget-object v1, p0, Lcom/laiwang/protocol/android/o$1;->a:Lcom/laiwang/protocol/android/o;

    invoke-static {v1}, Lcom/laiwang/protocol/android/o;->e(Lcom/laiwang/protocol/android/o;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laiwang/protocol/android/ab$h;

    .line 487
    .local v0, "listener":Lcom/laiwang/protocol/android/ab$h;
    if-eqz v0, :cond_2

    .line 488
    iget-object v2, p0, Lcom/laiwang/protocol/android/o$1;->a:Lcom/laiwang/protocol/android/o;

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/laiwang/protocol/android/ab$h;->b(Lcom/laiwang/protocol/android/k;Ljava/nio/ByteBuffer;)V

    goto :goto_0
.end method

.method public onFailed(Ljava/lang/String;)V
    .locals 3
    .param p1, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 495
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[Wtls] "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/laiwang/protocol/android/o$1;->a:Lcom/laiwang/protocol/android/o;

    invoke-virtual {v2}, Lcom/laiwang/protocol/android/o;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " onFailed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;)V

    .line 496
    iget-object v1, p0, Lcom/laiwang/protocol/android/o$1;->a:Lcom/laiwang/protocol/android/o;

    invoke-static {v1}, Lcom/laiwang/protocol/android/o;->i(Lcom/laiwang/protocol/android/o;)Lcom/laiwang/protocol/android/ay;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 497
    iget-object v1, p0, Lcom/laiwang/protocol/android/o$1;->a:Lcom/laiwang/protocol/android/o;

    invoke-static {v1}, Lcom/laiwang/protocol/android/o;->i(Lcom/laiwang/protocol/android/o;)Lcom/laiwang/protocol/android/ay;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/laiwang/protocol/android/ay;->a(Lcom/laiwang/lws/protocol/LwsSession;)V

    .line 499
    :cond_0
    new-instance v0, Lcom/laiwang/lws/protocol/LwsException;

    invoke-direct {v0, p1}, Lcom/laiwang/lws/protocol/LwsException;-><init>(Ljava/lang/String;)V

    .line 500
    .local v0, "lwsException":Lcom/laiwang/lws/protocol/LwsException;
    iget-object v1, p0, Lcom/laiwang/protocol/android/o$1;->a:Lcom/laiwang/protocol/android/o;

    invoke-static {v1}, Lcom/laiwang/protocol/android/o;->a(Lcom/laiwang/protocol/android/o;)Lcom/laiwang/protocol/android/k;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/laiwang/protocol/android/k;->a(Ljava/lang/Throwable;)V

    .line 501
    return-void
.end method

.method public onHandshakeDone()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 422
    iget-object v3, p0, Lcom/laiwang/protocol/android/o$1;->a:Lcom/laiwang/protocol/android/o;

    invoke-static {v3}, Lcom/laiwang/protocol/android/o;->f(Lcom/laiwang/protocol/android/o;)Lcom/laiwang/protocol/android/j;

    move-result-object v3

    iget-object v3, v3, Lcom/laiwang/protocol/android/j;->c:Lcom/laiwang/protocol/android/j$a;

    invoke-virtual {v3}, Lcom/laiwang/protocol/android/j$a;->b()V

    .line 423
    iget-object v3, p0, Lcom/laiwang/protocol/android/o$1;->a:Lcom/laiwang/protocol/android/o;

    invoke-static {v3}, Lcom/laiwang/protocol/android/o;->c(Lcom/laiwang/protocol/android/o;)Lcom/laiwang/protocol/android/bu;

    move-result-object v3

    iget-object v4, p0, Lcom/laiwang/protocol/android/o$1;->a:Lcom/laiwang/protocol/android/o;

    invoke-static {v4}, Lcom/laiwang/protocol/android/o;->g(Lcom/laiwang/protocol/android/o;)Lcom/laiwang/protocol/android/bu$a;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/laiwang/protocol/android/bu;->b(Ljava/lang/Runnable;)V

    .line 424
    iget-object v3, p0, Lcom/laiwang/protocol/android/o$1;->a:Lcom/laiwang/protocol/android/o;

    invoke-static {v3}, Lcom/laiwang/protocol/android/o;->j(Lcom/laiwang/protocol/android/o;)Lizo;

    move-result-object v3

    .line 2185
    iget-object v1, v3, Lizo;->b:Lcom/laiwang/lws/protocol/LwsSession;

    .line 425
    .local v1, "session":Lcom/laiwang/lws/protocol/LwsSession;
    iget-object v3, p0, Lcom/laiwang/protocol/android/o$1;->a:Lcom/laiwang/protocol/android/o;

    invoke-virtual {v1}, Lcom/laiwang/lws/protocol/LwsSession;->getId()[B

    move-result-object v4

    invoke-static {v4}, Lcom/laiwang/protocol/android/cj;->b([B)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/laiwang/protocol/android/o;->a(Lcom/laiwang/protocol/android/o;Ljava/lang/String;)Ljava/lang/String;

    .line 426
    const-string/jumbo v4, "[Wtls] %s lws handshake done, sid %s"

    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v6, p0, Lcom/laiwang/protocol/android/o$1;->a:Lcom/laiwang/protocol/android/o;

    invoke-virtual {v6}, Lcom/laiwang/protocol/android/o;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    const/4 v6, 0x1

    iget-object v3, p0, Lcom/laiwang/protocol/android/o$1;->a:Lcom/laiwang/protocol/android/o;

    invoke-static {v3}, Lcom/laiwang/protocol/android/o;->k(Lcom/laiwang/protocol/android/o;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    const-string/jumbo v3, ""

    :goto_0
    aput-object v3, v5, v6

    invoke-static {v4, v5}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 428
    new-instance v2, Lcom/laiwang/protocol/android/ay;

    invoke-direct {v2}, Lcom/laiwang/protocol/android/ay;-><init>()V

    .line 429
    .local v2, "sessionBuf":Lcom/laiwang/protocol/android/ay;
    invoke-virtual {v2, v1}, Lcom/laiwang/protocol/android/ay;->a(Lcom/laiwang/lws/protocol/LwsSession;)V

    .line 430
    iget-object v3, p0, Lcom/laiwang/protocol/android/o$1;->a:Lcom/laiwang/protocol/android/o;

    invoke-static {v3}, Lcom/laiwang/protocol/android/o;->j(Lcom/laiwang/protocol/android/o;)Lizo;

    move-result-object v3

    .line 3173
    iget-object v3, v3, Lizo;->a:Ljava/lang/String;

    .line 430
    invoke-virtual {v2, v3}, Lcom/laiwang/protocol/android/ay;->a(Ljava/lang/String;)V

    .line 431
    invoke-static {}, Lcom/laiwang/protocol/android/o;->j()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 433
    iget-object v3, p0, Lcom/laiwang/protocol/android/o$1;->a:Lcom/laiwang/protocol/android/o;

    invoke-static {v3}, Lcom/laiwang/protocol/android/o;->i(Lcom/laiwang/protocol/android/o;)Lcom/laiwang/protocol/android/ay;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 434
    iget-object v3, p0, Lcom/laiwang/protocol/android/o$1;->a:Lcom/laiwang/protocol/android/o;

    invoke-static {v3}, Lcom/laiwang/protocol/android/o;->k(Lcom/laiwang/protocol/android/o;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/laiwang/protocol/Config;->e:Ljava/lang/String;

    .line 435
    iget-object v3, p0, Lcom/laiwang/protocol/android/o$1;->a:Lcom/laiwang/protocol/android/o;

    invoke-static {v3}, Lcom/laiwang/protocol/android/o;->i(Lcom/laiwang/protocol/android/o;)Lcom/laiwang/protocol/android/ay;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/laiwang/protocol/android/ay;->a(Lcom/laiwang/lws/protocol/LwsSession;)V

    .line 437
    :cond_0
    iget-object v3, p0, Lcom/laiwang/protocol/android/o$1;->a:Lcom/laiwang/protocol/android/o;

    sget-object v4, Lcom/laiwang/protocol/android/k$d;->d:Lcom/laiwang/protocol/android/k$d;

    invoke-static {v3, v4}, Lcom/laiwang/protocol/android/o;->a(Lcom/laiwang/protocol/android/o;Lcom/laiwang/protocol/android/k$d;)Lcom/laiwang/protocol/android/k$d;

    .line 439
    iget-object v3, p0, Lcom/laiwang/protocol/android/o$1;->a:Lcom/laiwang/protocol/android/o;

    invoke-static {v3}, Lcom/laiwang/protocol/android/o;->e(Lcom/laiwang/protocol/android/o;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laiwang/protocol/android/ab$h;

    .line 440
    .local v0, "listener":Lcom/laiwang/protocol/android/ab$h;
    if-eqz v0, :cond_1

    .line 441
    iget-object v4, p0, Lcom/laiwang/protocol/android/o$1;->a:Lcom/laiwang/protocol/android/o;

    invoke-interface {v0, v4}, Lcom/laiwang/protocol/android/ab$h;->b(Lcom/laiwang/protocol/android/k;)V

    .line 442
    iget-object v4, p0, Lcom/laiwang/protocol/android/o$1;->a:Lcom/laiwang/protocol/android/o;

    invoke-interface {v0, v4}, Lcom/laiwang/protocol/android/ab$h;->a(Lcom/laiwang/protocol/android/k;)V

    goto :goto_1

    .line 426
    .end local v0    # "listener":Lcom/laiwang/protocol/android/ab$h;
    .end local v2    # "sessionBuf":Lcom/laiwang/protocol/android/ay;
    :cond_2
    iget-object v3, p0, Lcom/laiwang/protocol/android/o$1;->a:Lcom/laiwang/protocol/android/o;

    invoke-static {v3}, Lcom/laiwang/protocol/android/o;->k(Lcom/laiwang/protocol/android/o;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    .line 445
    .restart local v2    # "sessionBuf":Lcom/laiwang/protocol/android/ay;
    :cond_3
    return-void
.end method

.method public onPing()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 472
    const-string/jumbo v0, "[Wtls] %s receive ping & reply pong"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/laiwang/protocol/android/o$1;->a:Lcom/laiwang/protocol/android/o;

    invoke-virtual {v3}, Lcom/laiwang/protocol/android/o;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 473
    iget-object v0, p0, Lcom/laiwang/protocol/android/o$1;->a:Lcom/laiwang/protocol/android/o;

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/o;->h()V

    .line 474
    return-void
.end method

.method public onPong()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 478
    const-string/jumbo v0, "[Wtls] %s server pong"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/laiwang/protocol/android/o$1;->a:Lcom/laiwang/protocol/android/o;

    invoke-virtual {v3}, Lcom/laiwang/protocol/android/o;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 479
    iget-object v0, p0, Lcom/laiwang/protocol/android/o$1;->a:Lcom/laiwang/protocol/android/o;

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/o;->f()V

    .line 480
    return-void
.end method

.method public reAuth()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 449
    iget-object v2, p0, Lcom/laiwang/protocol/android/o$1;->a:Lcom/laiwang/protocol/android/o;

    invoke-static {v2}, Lcom/laiwang/protocol/android/o;->f(Lcom/laiwang/protocol/android/o;)Lcom/laiwang/protocol/android/j;

    move-result-object v2

    iget-object v2, v2, Lcom/laiwang/protocol/android/j;->c:Lcom/laiwang/protocol/android/j$a;

    invoke-virtual {v2}, Lcom/laiwang/protocol/android/j$a;->b()V

    .line 450
    iget-object v2, p0, Lcom/laiwang/protocol/android/o$1;->a:Lcom/laiwang/protocol/android/o;

    invoke-static {v2}, Lcom/laiwang/protocol/android/o;->c(Lcom/laiwang/protocol/android/o;)Lcom/laiwang/protocol/android/bu;

    move-result-object v2

    iget-object v3, p0, Lcom/laiwang/protocol/android/o$1;->a:Lcom/laiwang/protocol/android/o;

    invoke-static {v3}, Lcom/laiwang/protocol/android/o;->g(Lcom/laiwang/protocol/android/o;)Lcom/laiwang/protocol/android/bu$a;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/laiwang/protocol/android/bu;->b(Ljava/lang/Runnable;)V

    .line 451
    iget-object v2, p0, Lcom/laiwang/protocol/android/o$1;->a:Lcom/laiwang/protocol/android/o;

    invoke-static {v2}, Lcom/laiwang/protocol/android/o;->j(Lcom/laiwang/protocol/android/o;)Lizo;

    move-result-object v2

    .line 3185
    iget-object v1, v2, Lizo;->b:Lcom/laiwang/lws/protocol/LwsSession;

    .line 452
    .local v1, "session":Lcom/laiwang/lws/protocol/LwsSession;
    iget-object v2, p0, Lcom/laiwang/protocol/android/o$1;->a:Lcom/laiwang/protocol/android/o;

    invoke-virtual {v1}, Lcom/laiwang/lws/protocol/LwsSession;->getId()[B

    move-result-object v3

    invoke-static {v3}, Lcom/laiwang/protocol/android/cj;->b([B)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/laiwang/protocol/android/o;->a(Lcom/laiwang/protocol/android/o;Ljava/lang/String;)Ljava/lang/String;

    .line 453
    const-string/jumbo v3, "[Wtls] %s lws handshake done, need reAuth, sid %s"

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/laiwang/protocol/android/o$1;->a:Lcom/laiwang/protocol/android/o;

    invoke-virtual {v5}, Lcom/laiwang/protocol/android/o;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v5, 0x1

    iget-object v2, p0, Lcom/laiwang/protocol/android/o$1;->a:Lcom/laiwang/protocol/android/o;

    invoke-static {v2}, Lcom/laiwang/protocol/android/o;->k(Lcom/laiwang/protocol/android/o;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    const-string/jumbo v2, ""

    :goto_0
    aput-object v2, v4, v5

    invoke-static {v3, v4}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 455
    iget-object v2, p0, Lcom/laiwang/protocol/android/o$1;->a:Lcom/laiwang/protocol/android/o;

    invoke-static {v2}, Lcom/laiwang/protocol/android/o;->i(Lcom/laiwang/protocol/android/o;)Lcom/laiwang/protocol/android/ay;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 456
    iget-object v2, p0, Lcom/laiwang/protocol/android/o$1;->a:Lcom/laiwang/protocol/android/o;

    invoke-static {v2}, Lcom/laiwang/protocol/android/o;->k(Lcom/laiwang/protocol/android/o;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/laiwang/protocol/Config;->e:Ljava/lang/String;

    .line 457
    iget-object v2, p0, Lcom/laiwang/protocol/android/o$1;->a:Lcom/laiwang/protocol/android/o;

    invoke-static {v2}, Lcom/laiwang/protocol/android/o;->i(Lcom/laiwang/protocol/android/o;)Lcom/laiwang/protocol/android/ay;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/laiwang/protocol/android/ay;->a(Lcom/laiwang/lws/protocol/LwsSession;)V

    .line 461
    :cond_0
    iget-object v2, p0, Lcom/laiwang/protocol/android/o$1;->a:Lcom/laiwang/protocol/android/o;

    sget-object v3, Lcom/laiwang/protocol/android/k$d;->d:Lcom/laiwang/protocol/android/k$d;

    invoke-static {v2, v3}, Lcom/laiwang/protocol/android/o;->a(Lcom/laiwang/protocol/android/o;Lcom/laiwang/protocol/android/k$d;)Lcom/laiwang/protocol/android/k$d;

    .line 462
    iget-object v2, p0, Lcom/laiwang/protocol/android/o$1;->a:Lcom/laiwang/protocol/android/o;

    invoke-static {v2}, Lcom/laiwang/protocol/android/o;->e(Lcom/laiwang/protocol/android/o;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laiwang/protocol/android/ab$h;

    .line 463
    .local v0, "listener":Lcom/laiwang/protocol/android/ab$h;
    if-eqz v0, :cond_1

    .line 464
    iget-object v3, p0, Lcom/laiwang/protocol/android/o$1;->a:Lcom/laiwang/protocol/android/o;

    invoke-interface {v0, v3}, Lcom/laiwang/protocol/android/ab$h;->b(Lcom/laiwang/protocol/android/k;)V

    .line 465
    iget-object v3, p0, Lcom/laiwang/protocol/android/o$1;->a:Lcom/laiwang/protocol/android/o;

    invoke-interface {v0, v3}, Lcom/laiwang/protocol/android/ab$h;->a(Lcom/laiwang/protocol/android/k;)V

    goto :goto_1

    .line 453
    .end local v0    # "listener":Lcom/laiwang/protocol/android/ab$h;
    :cond_2
    iget-object v2, p0, Lcom/laiwang/protocol/android/o$1;->a:Lcom/laiwang/protocol/android/o;

    invoke-static {v2}, Lcom/laiwang/protocol/android/o;->k(Lcom/laiwang/protocol/android/o;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    .line 468
    :cond_3
    return-void
.end method

.method public refreshSession()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 407
    const-string/jumbo v1, "[Wtls] %s lws handshake session refresh"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/laiwang/protocol/android/o$1;->a:Lcom/laiwang/protocol/android/o;

    invoke-virtual {v4}, Lcom/laiwang/protocol/android/o;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 408
    iget-object v1, p0, Lcom/laiwang/protocol/android/o$1;->a:Lcom/laiwang/protocol/android/o;

    invoke-static {v1}, Lcom/laiwang/protocol/android/o;->c(Lcom/laiwang/protocol/android/o;)Lcom/laiwang/protocol/android/bu;

    move-result-object v1

    iget-object v2, p0, Lcom/laiwang/protocol/android/o$1;->a:Lcom/laiwang/protocol/android/o;

    invoke-static {v2}, Lcom/laiwang/protocol/android/o;->g(Lcom/laiwang/protocol/android/o;)Lcom/laiwang/protocol/android/bu$a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/laiwang/protocol/android/bu;->b(Ljava/lang/Runnable;)V

    .line 410
    iget-object v1, p0, Lcom/laiwang/protocol/android/o$1;->a:Lcom/laiwang/protocol/android/o;

    invoke-static {v1}, Lcom/laiwang/protocol/android/o;->i(Lcom/laiwang/protocol/android/o;)Lcom/laiwang/protocol/android/ay;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 411
    iget-object v1, p0, Lcom/laiwang/protocol/android/o$1;->a:Lcom/laiwang/protocol/android/o;

    invoke-static {v1}, Lcom/laiwang/protocol/android/o;->i(Lcom/laiwang/protocol/android/o;)Lcom/laiwang/protocol/android/ay;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/laiwang/protocol/android/ay;->a(Lcom/laiwang/lws/protocol/LwsSession;)V

    .line 413
    :cond_0
    invoke-static {}, Lcom/laiwang/protocol/android/o;->j()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laiwang/protocol/android/ay;

    .line 414
    .local v0, "session":Lcom/laiwang/protocol/android/ay;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/ay;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/laiwang/protocol/android/o$1;->a:Lcom/laiwang/protocol/android/o;

    invoke-static {v1}, Lcom/laiwang/protocol/android/o;->j(Lcom/laiwang/protocol/android/o;)Lizo;

    move-result-object v1

    .line 1173
    iget-object v1, v1, Lizo;->a:Ljava/lang/String;

    .line 414
    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/laiwang/protocol/android/o$1;->a:Lcom/laiwang/protocol/android/o;

    .line 415
    invoke-static {v1}, Lcom/laiwang/protocol/android/o;->j(Lcom/laiwang/protocol/android/o;)Lizo;

    move-result-object v1

    .line 2173
    iget-object v1, v1, Lizo;->a:Ljava/lang/String;

    .line 415
    invoke-virtual {v0}, Lcom/laiwang/protocol/android/ay;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 416
    invoke-static {}, Lcom/laiwang/protocol/android/o;->j()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 417
    :cond_1
    iget-object v1, p0, Lcom/laiwang/protocol/android/o$1;->a:Lcom/laiwang/protocol/android/o;

    iget-object v2, p0, Lcom/laiwang/protocol/android/o$1;->a:Lcom/laiwang/protocol/android/o;

    invoke-static {v2}, Lcom/laiwang/protocol/android/o;->a(Lcom/laiwang/protocol/android/o;)Lcom/laiwang/protocol/android/k;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/laiwang/protocol/android/o;->a(Lcom/laiwang/protocol/android/k;)V

    .line 418
    return-void
.end method
