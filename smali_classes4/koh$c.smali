.class final Lkoh$c;
.super Lkoh$a;
.source "Http1Codec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkoh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic e:Lkoh;

.field private final f:Lkmw;

.field private g:J

.field private h:Z


# direct methods
.method constructor <init>(Lkoh;Lkmw;)V
    .locals 2
    .param p2, "url"    # Lkmw;

    .prologue
    .line 439
    iput-object p1, p0, Lkoh$c;->e:Lkoh;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lkoh$a;-><init>(Lkoh;B)V

    .line 436
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lkoh$c;->g:J

    .line 437
    const/4 v0, 0x1

    iput-boolean v0, p0, Lkoh$c;->h:Z

    .line 440
    iput-object p2, p0, Lkoh$c;->f:Lkmw;

    .line 441
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 486
    iget-boolean v0, p0, Lkoh$c;->b:Z

    if-eqz v0, :cond_0

    .line 491
    :goto_0
    return-void

    .line 487
    :cond_0
    iget-boolean v0, p0, Lkoh$c;->h:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x64

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0, v1}, Lknj;->a(Lokio/Source;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 488
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lkoh$c;->a(ZLjava/io/IOException;)V

    .line 490
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lkoh$c;->b:Z

    goto :goto_0
.end method

.method public final read(Lokio/Buffer;J)J
    .locals 12
    .param p1, "sink"    # Lokio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v4, -0x1

    .line 444
    cmp-long v1, p2, v8

    if-gez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "byteCount < 0: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 445
    :cond_0
    iget-boolean v1, p0, Lkoh$c;->b:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "closed"

    invoke-direct {v1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 446
    :cond_1
    iget-boolean v1, p0, Lkoh$c;->h:Z

    if-nez v1, :cond_2

    move-wide v2, v4

    .line 460
    :goto_0
    return-wide v2

    .line 448
    :cond_2
    iget-wide v6, p0, Lkoh$c;->g:J

    cmp-long v1, v6, v8

    if-eqz v1, :cond_3

    iget-wide v6, p0, Lkoh$c;->g:J

    cmp-long v1, v6, v4

    if-nez v1, :cond_8

    .line 1465
    :cond_3
    iget-wide v6, p0, Lkoh$c;->g:J

    cmp-long v1, v6, v4

    if-eqz v1, :cond_4

    .line 1466
    iget-object v1, p0, Lkoh$c;->e:Lkoh;

    iget-object v1, v1, Lkoh;->c:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    .line 1469
    :cond_4
    :try_start_0
    iget-object v1, p0, Lkoh$c;->e:Lkoh;

    iget-object v1, v1, Lkoh;->c:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->readHexadecimalUnsignedLong()J

    move-result-wide v6

    iput-wide v6, p0, Lkoh$c;->g:J

    .line 1470
    iget-object v1, p0, Lkoh$c;->e:Lkoh;

    iget-object v1, v1, Lkoh;->c:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1471
    iget-wide v6, p0, Lkoh$c;->g:J

    cmp-long v6, v6, v8

    if-ltz v6, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_6

    const-string/jumbo v6, ";"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 1472
    :cond_5
    new-instance v4, Ljava/net/ProtocolException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "expected chunk size and optional extensions but was \""

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, p0, Lkoh$c;->g:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, "\""

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1475
    :catch_0
    move-exception v1

    .line 1476
    new-instance v4, Ljava/net/ProtocolException;

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1478
    :cond_6
    iget-wide v6, p0, Lkoh$c;->g:J

    cmp-long v1, v6, v8

    if-nez v1, :cond_7

    .line 1479
    iput-boolean v10, p0, Lkoh$c;->h:Z

    .line 1480
    iget-object v1, p0, Lkoh$c;->e:Lkoh;

    iget-object v1, v1, Lkoh;->a:Lkna;

    .line 2319
    iget-object v1, v1, Lkna;->k:Lkmp;

    .line 1480
    iget-object v6, p0, Lkoh$c;->f:Lkmw;

    iget-object v7, p0, Lkoh$c;->e:Lkoh;

    invoke-virtual {v7}, Lkoh;->c()Lkmv;

    move-result-object v7

    invoke-static {v1, v6, v7}, Lknz;->a(Lkmp;Lkmw;Lkmv;)V

    .line 1481
    const/4 v1, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0, v1, v6}, Lkoh$c;->a(ZLjava/io/IOException;)V

    .line 450
    :cond_7
    iget-boolean v1, p0, Lkoh$c;->h:Z

    if-nez v1, :cond_8

    move-wide v2, v4

    goto/16 :goto_0

    .line 453
    :cond_8
    iget-wide v6, p0, Lkoh$c;->g:J

    invoke-static {p2, p3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    invoke-super {p0, p1, v6, v7}, Lkoh$a;->read(Lokio/Buffer;J)J

    move-result-wide v2

    .line 454
    .local v2, "read":J
    cmp-long v1, v2, v4

    if-nez v1, :cond_9

    .line 455
    new-instance v0, Ljava/net/ProtocolException;

    const-string/jumbo v1, "unexpected end of stream"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 456
    .local v0, "e":Ljava/net/ProtocolException;
    invoke-virtual {p0, v10, v0}, Lkoh$c;->a(ZLjava/io/IOException;)V

    .line 457
    throw v0

    .line 459
    .end local v0    # "e":Ljava/net/ProtocolException;
    :cond_9
    iget-wide v4, p0, Lkoh$c;->g:J

    sub-long/2addr v4, v2

    iput-wide v4, p0, Lkoh$c;->g:J

    goto/16 :goto_0
.end method
