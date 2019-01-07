.class Lcom/squareup/okhttp/internal/http/HttpConnection$FixedLengthSource;
.super Lcom/squareup/okhttp/internal/http/HttpConnection$AbstractSource;
.source "HttpConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/http/HttpConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FixedLengthSource"
.end annotation


# instance fields
.field private bytesRemaining:J

.field final synthetic this$0:Lcom/squareup/okhttp/internal/http/HttpConnection;


# direct methods
.method public constructor <init>(Lcom/squareup/okhttp/internal/http/HttpConnection;J)V
    .locals 4
    .param p2, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 378
    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/HttpConnection$FixedLengthSource;->this$0:Lcom/squareup/okhttp/internal/http/HttpConnection;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/squareup/okhttp/internal/http/HttpConnection$AbstractSource;-><init>(Lcom/squareup/okhttp/internal/http/HttpConnection;Lcom/squareup/okhttp/internal/http/HttpConnection$1;)V

    .line 379
    iput-wide p2, p0, Lcom/squareup/okhttp/internal/http/HttpConnection$FixedLengthSource;->bytesRemaining:J

    .line 380
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection$FixedLengthSource;->bytesRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 381
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/squareup/okhttp/internal/http/HttpConnection$FixedLengthSource;->endOfInput(Z)V

    .line 383
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 404
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection$FixedLengthSource;->closed:Z

    if-eqz v0, :cond_0

    .line 412
    :goto_0
    return-void

    .line 406
    :cond_0
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection$FixedLengthSource;->bytesRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const/16 v0, 0x64

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 407
    invoke-static {p0, v0, v1}, Lcom/squareup/okhttp/internal/Util;->discard(Lokio/Source;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 408
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/HttpConnection$FixedLengthSource;->unexpectedEndOfInput()V

    .line 411
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection$FixedLengthSource;->closed:Z

    goto :goto_0
.end method

.method public read(Lokio/Buffer;J)J
    .locals 10
    .param p1, "sink"    # Lokio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, -0x1

    const-wide/16 v8, 0x0

    .line 386
    cmp-long v4, p2, v8

    if-gez v4, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "byteCount < 0: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 387
    :cond_0
    iget-boolean v4, p0, Lcom/squareup/okhttp/internal/http/HttpConnection$FixedLengthSource;->closed:Z

    if-eqz v4, :cond_1

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "closed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 388
    :cond_1
    iget-wide v4, p0, Lcom/squareup/okhttp/internal/http/HttpConnection$FixedLengthSource;->bytesRemaining:J

    cmp-long v4, v4, v8

    if-nez v4, :cond_3

    move-wide v0, v2

    .line 400
    :cond_2
    :goto_0
    return-wide v0

    .line 390
    :cond_3
    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/HttpConnection$FixedLengthSource;->this$0:Lcom/squareup/okhttp/internal/http/HttpConnection;

    invoke-static {v4}, Lcom/squareup/okhttp/internal/http/HttpConnection;->access$500(Lcom/squareup/okhttp/internal/http/HttpConnection;)Lokio/BufferedSource;

    move-result-object v4

    iget-wide v6, p0, Lcom/squareup/okhttp/internal/http/HttpConnection$FixedLengthSource;->bytesRemaining:J

    invoke-static {v6, v7, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    invoke-interface {v4, p1, v6, v7}, Lokio/BufferedSource;->read(Lokio/Buffer;J)J

    move-result-wide v0

    .line 391
    .local v0, "read":J
    cmp-long v2, v0, v2

    if-nez v2, :cond_4

    .line 392
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/HttpConnection$FixedLengthSource;->unexpectedEndOfInput()V

    .line 393
    new-instance v2, Ljava/net/ProtocolException;

    const-string/jumbo v3, "unexpected end of stream"

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 396
    :cond_4
    iget-wide v2, p0, Lcom/squareup/okhttp/internal/http/HttpConnection$FixedLengthSource;->bytesRemaining:J

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcom/squareup/okhttp/internal/http/HttpConnection$FixedLengthSource;->bytesRemaining:J

    .line 397
    iget-wide v2, p0, Lcom/squareup/okhttp/internal/http/HttpConnection$FixedLengthSource;->bytesRemaining:J

    cmp-long v2, v2, v8

    if-nez v2, :cond_2

    .line 398
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/squareup/okhttp/internal/http/HttpConnection$FixedLengthSource;->endOfInput(Z)V

    goto :goto_0
.end method
