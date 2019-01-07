.class final Ljt$a;
.super Ljp;
.source "TnetSpdySession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Ljt;

.field private b:Lanet/channel/request/Request;

.field private c:Lie;

.field private d:J

.field private e:J

.field private f:J


# direct methods
.method public constructor <init>(Ljt;Lanet/channel/request/Request;Lie;)V
    .locals 2
    .param p2, "request"    # Lanet/channel/request/Request;
    .param p3, "cb"    # Lie;

    .prologue
    const-wide/16 v0, 0x0

    .line 421
    iput-object p1, p0, Ljt$a;->a:Ljt;

    invoke-direct {p0}, Ljp;-><init>()V

    .line 418
    iput-wide v0, p0, Ljt$a;->d:J

    .line 419
    iput-wide v0, p0, Ljt$a;->e:J

    .line 420
    iput-wide v0, p0, Ljt$a;->f:J

    .line 422
    iput-object p2, p0, Ljt$a;->b:Lanet/channel/request/Request;

    .line 423
    iput-object p3, p0, Ljt$a;->c:Lie;

    .line 424
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ljt$a;->d:J

    .line 425
    return-void
.end method


# virtual methods
.method public final spdyDataChunkRecvCB(Lorg/android/spdy/SpdySession;ZJLorg/android/spdy/SpdyByteArray;Ljava/lang/Object;)V
    .locals 8
    .param p1, "session"    # Lorg/android/spdy/SpdySession;
    .param p2, "fin"    # Z
    .param p3, "streamId"    # J
    .param p5, "data"    # Lorg/android/spdy/SpdyByteArray;
    .param p6, "streamUserData"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x0

    .line 430
    const-string/jumbo v1, "awcn.TnetSpdySession"

    const-string/jumbo v2, "spdyDataChunkRecvCB"

    iget-object v3, p0, Ljt$a;->a:Ljt;

    invoke-static {v3}, Ljt;->b(Ljt;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "len"

    aput-object v5, v4, v7

    const/4 v5, 0x1

    invoke-virtual {p5}, Lorg/android/spdy/SpdyByteArray;->getDataLength()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, "fin"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v2, v3, v4}, Lanet/channel/util/ALog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 431
    iget-object v1, p0, Ljt$a;->b:Lanet/channel/request/Request;

    iget-object v1, v1, Lanet/channel/request/Request;->k:Lanet/channel/statist/RequestStatistic;

    iget-wide v2, v1, Lanet/channel/statist/RequestStatistic;->firstDataTime:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 432
    iget-object v1, p0, Ljt$a;->b:Lanet/channel/request/Request;

    iget-object v1, v1, Lanet/channel/request/Request;->k:Lanet/channel/statist/RequestStatistic;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lanet/channel/statist/RequestStatistic;->firstDataTime:J

    .line 435
    :cond_0
    iget-object v1, p0, Ljt$a;->c:Lie;

    if-eqz v1, :cond_1

    .line 1024
    sget-object v1, Lil$a;->a:Lil;

    .line 436
    invoke-virtual {p5}, Lorg/android/spdy/SpdyByteArray;->getByteArray()[B

    move-result-object v2

    invoke-virtual {p5}, Lorg/android/spdy/SpdyByteArray;->getDataLength()I

    move-result v3

    .line 1076
    invoke-virtual {v1, v3}, Lil;->a(I)Lik;

    move-result-object v0

    .line 1077
    iget-object v1, v0, Lik;->a:[B

    invoke-static {v2, v7, v1, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1078
    iput v3, v0, Lik;->c:I

    .line 437
    .local v0, "byteArray":Lik;
    invoke-virtual {p5}, Lorg/android/spdy/SpdyByteArray;->recycle()V

    .line 438
    iget-object v1, p0, Ljt$a;->c:Lie;

    invoke-interface {v1, v0, p2}, Lie;->a(Lik;Z)V

    .line 440
    .end local v0    # "byteArray":Lik;
    :cond_1
    iget-object v1, p0, Ljt$a;->a:Ljt;

    sget-object v2, Lanet/channel/entity/EventType;->DATA_RECEIVE:Lanet/channel/entity/EventType;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ljt;->a(Ljt;Lanet/channel/entity/EventType;Lip;)V

    .line 441
    return-void
.end method

.method public final spdyOnStreamResponse(Lorg/android/spdy/SpdySession;JLjava/util/Map;Ljava/lang/Object;)V
    .locals 9
    .param p1, "session"    # Lorg/android/spdy/SpdySession;
    .param p2, "streamId"    # J
    .param p5, "streamUserData"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/android/spdy/SpdySession;",
            "J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .local p4, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 508
    const/4 v0, 0x0

    .line 511
    .local v0, "httpStatusCode":I
    :try_start_0
    const-string/jumbo v2, ":status"

    invoke-interface {p4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 512
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 513
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 518
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    if-lez v0, :cond_1

    .line 519
    iget-object v2, p0, Ljt$a;->b:Lanet/channel/request/Request;

    iget-object v2, v2, Lanet/channel/request/Request;->k:Lanet/channel/statist/RequestStatistic;

    iput-boolean v8, v2, Lanet/channel/statist/RequestStatistic;->ret:Z

    .line 520
    iget-object v2, p0, Ljt$a;->a:Ljt;

    invoke-static {v2, v7}, Ljt;->a(Ljt;I)I

    .line 523
    :cond_1
    const-string/jumbo v2, "awcn.TnetSpdySession"

    const-string/jumbo v3, "spdyOnStreamResponse"

    iget-object v4, p0, Ljt$a;->a:Ljt;

    invoke-static {v4}, Ljt;->f(Ljt;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "httpStatusCode:"

    aput-object v6, v5, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v2, v3, v4, v5}, Lanet/channel/util/ALog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 524
    iget-object v2, p0, Ljt$a;->c:Lie;

    if-eqz v2, :cond_2

    .line 525
    iget-object v2, p0, Ljt$a;->c:Lie;

    invoke-static {p4}, Lku;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lie;->a(ILjava/util/Map;)V

    .line 528
    :cond_2
    iget-object v2, p0, Ljt$a;->a:Ljt;

    sget-object v3, Lanet/channel/entity/EventType;->HEADER_RECEIVE:Lanet/channel/entity/EventType;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Ljt;->b(Ljt;Lanet/channel/entity/EventType;Lip;)V

    .line 531
    :try_start_1
    const-string/jumbo v2, "s-rt"

    invoke-interface {p4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 532
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 533
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Ljt$a;->f:J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 538
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    :goto_1
    iget-object v2, p0, Ljt$a;->a:Ljt;

    invoke-static {v2}, Ljt;->g(Ljt;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkg;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 539
    invoke-static {}, Ljf;->a()Ljf;

    move-result-object v2

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v2, v7, v3}, Ljf;->a(I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    :cond_4
    return-void

    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public final spdyStreamCloseCallback(Lorg/android/spdy/SpdySession;JILjava/lang/Object;Lorg/android/spdy/SuperviseData;)V
    .locals 8
    .param p1, "session"    # Lorg/android/spdy/SpdySession;
    .param p2, "streamId"    # J
    .param p4, "statusCode"    # I
    .param p5, "streamUserData"    # Ljava/lang/Object;
    .param p6, "data"    # Lorg/android/spdy/SuperviseData;

    .prologue
    .line 445
    const-string/jumbo v1, "awcn.TnetSpdySession"

    const-string/jumbo v2, "spdyStreamCloseCallback"

    iget-object v3, p0, Ljt$a;->a:Ljt;

    invoke-static {v3}, Ljt;->c(Ljt;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "streamId"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v2, v3, v4}, Lanet/channel/util/ALog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 446
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Ljt$a;->e:J

    .line 1479
    :try_start_0
    iget-wide v2, p0, Ljt$a;->e:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    iget-wide v2, p0, Ljt$a;->d:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_6

    .line 449
    :cond_0
    :goto_0
    const-string/jumbo v0, "SUCCESS"

    .line 450
    .local v0, "msg":Ljava/lang/String;
    if-eqz p4, :cond_2

    .line 451
    const/16 v1, -0x7d5

    if-eq p4, v1, :cond_1

    .line 452
    const/16 v1, -0x12c

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "statusCode="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lks;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 453
    invoke-static {}, Lih;->a()Lij;

    move-result-object v1

    new-instance v2, Lanet/channel/statist/ExceptionStatistic;

    const/16 v3, -0x12c

    iget-object v4, p0, Ljt$a;->b:Lanet/channel/request/Request;

    iget-object v4, v4, Lanet/channel/request/Request;->k:Lanet/channel/statist/RequestStatistic;

    const/4 v5, 0x0

    invoke-direct {v2, v3, v0, v4, v5}, Lanet/channel/statist/ExceptionStatistic;-><init>(ILjava/lang/String;Lanet/channel/statist/RequestStatistic;Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Lij;->a(Lanet/channel/statist/StatObject;)V

    .line 456
    :cond_1
    const-string/jumbo v1, "awcn.TnetSpdySession"

    const-string/jumbo v2, "spdyStreamCloseCallback error"

    iget-object v3, p0, Ljt$a;->a:Ljt;

    invoke-static {v3}, Ljt;->d(Ljt;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "status code"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v2, v3, v4}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 459
    :cond_2
    iget-object v1, p0, Ljt$a;->c:Lie;

    if-eqz v1, :cond_3

    .line 460
    iget-object v1, p0, Ljt$a;->c:Lie;

    iget-object v2, p0, Ljt$a;->b:Lanet/channel/request/Request;

    iget-object v2, v2, Lanet/channel/request/Request;->k:Lanet/channel/statist/RequestStatistic;

    invoke-interface {v1, p4, v0, v2}, Lie;->a(ILjava/lang/String;Lanet/channel/statist/RequestStatistic;)V

    .line 464
    :cond_3
    const/16 v1, -0x7d4

    if-ne p4, v1, :cond_4

    .line 465
    iget-object v1, p0, Ljt$a;->a:Ljt;

    invoke-static {v1}, Ljt;->e(Ljt;)I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_4

    .line 466
    iget-object v1, p0, Ljt$a;->a:Ljt;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljt;->b(Z)V

    .line 471
    :cond_4
    const/16 v1, -0xbb8

    if-gt p4, v1, :cond_5

    const/16 v1, -0xfa0

    if-le p4, v1, :cond_5

    .line 472
    invoke-static {}, Ljf;->a()Ljf;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Ljt$a;->b:Lanet/channel/request/Request;

    invoke-virtual {v5}, Lanet/channel/request/Request;->b()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljf;->a(I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    :cond_5
    return-void

    .line 1483
    .end local v0    # "msg":Ljava/lang/String;
    :cond_6
    :try_start_1
    iget-object v1, p0, Ljt$a;->b:Lanet/channel/request/Request;

    iget-object v1, v1, Lanet/channel/request/Request;->k:Lanet/channel/statist/RequestStatistic;

    iget-wide v2, p0, Ljt$a;->f:J

    iput-wide v2, v1, Lanet/channel/statist/RequestStatistic;->serverRT:J

    .line 1484
    iget-object v1, p0, Ljt$a;->b:Lanet/channel/request/Request;

    iget-object v1, v1, Lanet/channel/request/Request;->k:Lanet/channel/statist/RequestStatistic;

    iget-object v2, p0, Ljt$a;->b:Lanet/channel/request/Request;

    iget-object v2, v2, Lanet/channel/request/Request;->k:Lanet/channel/statist/RequestStatistic;

    iget-wide v2, v2, Lanet/channel/statist/RequestStatistic;->firstDataTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_7

    iget-wide v2, p0, Ljt$a;->e:J

    iget-object v4, p0, Ljt$a;->b:Lanet/channel/request/Request;

    iget-object v4, v4, Lanet/channel/request/Request;->k:Lanet/channel/statist/RequestStatistic;

    iget-wide v4, v4, Lanet/channel/statist/RequestStatistic;->firstDataTime:J

    sub-long/2addr v2, v4

    :goto_1
    iput-wide v2, v1, Lanet/channel/statist/RequestStatistic;->recDataTime:J

    .line 1485
    iget-object v1, p0, Ljt$a;->b:Lanet/channel/request/Request;

    iget-object v1, v1, Lanet/channel/request/Request;->k:Lanet/channel/statist/RequestStatistic;

    iget-wide v2, p0, Ljt$a;->e:J

    iget-object v4, p0, Ljt$a;->b:Lanet/channel/request/Request;

    iget-object v4, v4, Lanet/channel/request/Request;->k:Lanet/channel/statist/RequestStatistic;

    iget-wide v4, v4, Lanet/channel/statist/RequestStatistic;->start:J

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lanet/channel/statist/RequestStatistic;->oneWayTime:J

    .line 1486
    iget-object v1, p0, Ljt$a;->b:Lanet/channel/request/Request;

    iget-object v1, v1, Lanet/channel/request/Request;->k:Lanet/channel/statist/RequestStatistic;

    iget-object v2, p0, Ljt$a;->b:Lanet/channel/request/Request;

    iget-object v2, v2, Lanet/channel/request/Request;->k:Lanet/channel/statist/RequestStatistic;

    iget-wide v2, v2, Lanet/channel/statist/RequestStatistic;->oneWayTime:J

    iput-wide v2, v1, Lanet/channel/statist/RequestStatistic;->waitingTime:J

    .line 1488
    if-eqz p6, :cond_0

    .line 1489
    iget-object v1, p0, Ljt$a;->b:Lanet/channel/request/Request;

    iget-object v1, v1, Lanet/channel/request/Request;->k:Lanet/channel/statist/RequestStatistic;

    iget-wide v2, p6, Lorg/android/spdy/SuperviseData;->responseStart:J

    iget-wide v4, p6, Lorg/android/spdy/SuperviseData;->sendStart:J

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lanet/channel/statist/RequestStatistic;->firstDataTime:J

    .line 1491
    iget-object v1, p0, Ljt$a;->b:Lanet/channel/request/Request;

    iget-object v1, v1, Lanet/channel/request/Request;->k:Lanet/channel/statist/RequestStatistic;

    iget-wide v2, p6, Lorg/android/spdy/SuperviseData;->responseEnd:J

    iget-wide v4, p6, Lorg/android/spdy/SuperviseData;->responseStart:J

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lanet/channel/statist/RequestStatistic;->recDataTime:J

    .line 1492
    iget-object v1, p0, Ljt$a;->b:Lanet/channel/request/Request;

    iget-object v1, v1, Lanet/channel/request/Request;->k:Lanet/channel/statist/RequestStatistic;

    iget-wide v2, p6, Lorg/android/spdy/SuperviseData;->sendStart:J

    iget-wide v4, p0, Ljt$a;->d:J

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lanet/channel/statist/RequestStatistic;->sendBeforeTime:J

    .line 1493
    iget-object v1, p0, Ljt$a;->b:Lanet/channel/request/Request;

    iget-object v1, v1, Lanet/channel/request/Request;->k:Lanet/channel/statist/RequestStatistic;

    iget-wide v2, p6, Lorg/android/spdy/SuperviseData;->sendEnd:J

    iget-wide v4, p6, Lorg/android/spdy/SuperviseData;->sendStart:J

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lanet/channel/statist/RequestStatistic;->sendDataTime:J

    .line 1494
    iget-object v1, p0, Ljt$a;->b:Lanet/channel/request/Request;

    iget-object v1, v1, Lanet/channel/request/Request;->k:Lanet/channel/statist/RequestStatistic;

    iget v2, p6, Lorg/android/spdy/SuperviseData;->bodySize:I

    iget v3, p6, Lorg/android/spdy/SuperviseData;->compressSize:I

    add-int/2addr v2, v3

    int-to-long v2, v2

    iput-wide v2, v1, Lanet/channel/statist/RequestStatistic;->sendDataSize:J

    .line 1495
    iget-object v1, p0, Ljt$a;->b:Lanet/channel/request/Request;

    iget-object v1, v1, Lanet/channel/request/Request;->k:Lanet/channel/statist/RequestStatistic;

    iget v2, p6, Lorg/android/spdy/SuperviseData;->recvBodySize:I

    iget v3, p6, Lorg/android/spdy/SuperviseData;->recvCompressSize:I

    add-int/2addr v2, v3

    int-to-long v2, v2

    iput-wide v2, v1, Lanet/channel/statist/RequestStatistic;->recDataSize:J

    .line 1498
    iget-object v1, p0, Ljt$a;->a:Ljt;

    iget-object v1, v1, Ljt;->k:Lanet/channel/statist/SessionStatistic;

    iget-wide v2, v1, Lanet/channel/statist/SessionStatistic;->recvSizeCount:J

    iget v4, p6, Lorg/android/spdy/SuperviseData;->recvBodySize:I

    iget v5, p6, Lorg/android/spdy/SuperviseData;->recvCompressSize:I

    add-int/2addr v4, v5

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, v1, Lanet/channel/statist/SessionStatistic;->recvSizeCount:J

    .line 1499
    iget-object v1, p0, Ljt$a;->a:Ljt;

    iget-object v1, v1, Ljt;->k:Lanet/channel/statist/SessionStatistic;

    iget-wide v2, v1, Lanet/channel/statist/SessionStatistic;->sendSizeCount:J

    iget v4, p6, Lorg/android/spdy/SuperviseData;->bodySize:I

    iget v5, p6, Lorg/android/spdy/SuperviseData;->compressSize:I

    add-int/2addr v4, v5

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, v1, Lanet/channel/statist/SessionStatistic;->sendSizeCount:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto/16 :goto_0

    .line 1484
    :cond_7
    const-wide/16 v2, 0x0

    goto/16 :goto_1
.end method
