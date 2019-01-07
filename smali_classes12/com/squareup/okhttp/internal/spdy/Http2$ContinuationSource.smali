.class final Lcom/squareup/okhttp/internal/spdy/Http2$ContinuationSource;
.super Ljava/lang/Object;
.source "Http2.java"

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/spdy/Http2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ContinuationSource"
.end annotation


# instance fields
.field flags:B

.field left:I

.field length:I

.field padding:S

.field private final source:Lokio/BufferedSource;

.field streamId:I


# direct methods
.method public constructor <init>(Lokio/BufferedSource;)V
    .locals 0
    .param p1, "source"    # Lokio/BufferedSource;

    .prologue
    .line 604
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 605
    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/Http2$ContinuationSource;->source:Lokio/BufferedSource;

    .line 606
    return-void
.end method

.method private readContinuationHeader()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 631
    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$ContinuationSource;->streamId:I

    .line 633
    .local v0, "previousStreamId":I
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/Http2$ContinuationSource;->source:Lokio/BufferedSource;

    invoke-static {v2}, Lcom/squareup/okhttp/internal/spdy/Http2;->access$300(Lokio/BufferedSource;)I

    move-result v2

    iput v2, p0, Lcom/squareup/okhttp/internal/spdy/Http2$ContinuationSource;->left:I

    iput v2, p0, Lcom/squareup/okhttp/internal/spdy/Http2$ContinuationSource;->length:I

    .line 634
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/Http2$ContinuationSource;->source:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->readByte()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v1, v2

    .line 635
    .local v1, "type":B
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/Http2$ContinuationSource;->source:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->readByte()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/squareup/okhttp/internal/spdy/Http2$ContinuationSource;->flags:B

    .line 636
    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/Http2;->access$100()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/Http2;->access$100()Ljava/util/logging/Logger;

    move-result-object v2

    iget v3, p0, Lcom/squareup/okhttp/internal/spdy/Http2$ContinuationSource;->streamId:I

    iget v4, p0, Lcom/squareup/okhttp/internal/spdy/Http2$ContinuationSource;->length:I

    iget-byte v5, p0, Lcom/squareup/okhttp/internal/spdy/Http2$ContinuationSource;->flags:B

    invoke-static {v7, v3, v4, v1, v5}, Lcom/squareup/okhttp/internal/spdy/Http2$FrameLogger;->formatHeader(ZIIBB)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 637
    :cond_0
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/Http2$ContinuationSource;->source:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->readInt()I

    move-result v2

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    iput v2, p0, Lcom/squareup/okhttp/internal/spdy/Http2$ContinuationSource;->streamId:I

    .line 638
    const/16 v2, 0x9

    if-eq v1, v2, :cond_1

    const-string/jumbo v2, "%s != TYPE_CONTINUATION"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/squareup/okhttp/internal/spdy/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 639
    :cond_1
    iget v2, p0, Lcom/squareup/okhttp/internal/spdy/Http2$ContinuationSource;->streamId:I

    if-eq v2, v0, :cond_2

    const-string/jumbo v2, "TYPE_CONTINUATION streamId changed"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/squareup/okhttp/internal/spdy/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 640
    :cond_2
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 628
    return-void
.end method

.method public final read(Lokio/Buffer;J)J
    .locals 8
    .param p1, "sink"    # Lokio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, -0x1

    .line 609
    :goto_0
    iget v4, p0, Lcom/squareup/okhttp/internal/spdy/Http2$ContinuationSource;->left:I

    if-nez v4, :cond_1

    .line 610
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/Http2$ContinuationSource;->source:Lokio/BufferedSource;

    iget-short v5, p0, Lcom/squareup/okhttp/internal/spdy/Http2$ContinuationSource;->padding:S

    int-to-long v6, v5

    invoke-interface {v4, v6, v7}, Lokio/BufferedSource;->skip(J)V

    .line 611
    const/4 v4, 0x0

    iput-short v4, p0, Lcom/squareup/okhttp/internal/spdy/Http2$ContinuationSource;->padding:S

    .line 612
    iget-byte v4, p0, Lcom/squareup/okhttp/internal/spdy/Http2$ContinuationSource;->flags:B

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_0

    move-wide v0, v2

    .line 620
    :goto_1
    return-wide v0

    .line 613
    :cond_0
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/spdy/Http2$ContinuationSource;->readContinuationHeader()V

    goto :goto_0

    .line 617
    :cond_1
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/Http2$ContinuationSource;->source:Lokio/BufferedSource;

    iget v5, p0, Lcom/squareup/okhttp/internal/spdy/Http2$ContinuationSource;->left:I

    int-to-long v6, v5

    invoke-static {p2, p3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    invoke-interface {v4, p1, v6, v7}, Lokio/BufferedSource;->read(Lokio/Buffer;J)J

    move-result-wide v0

    .line 618
    .local v0, "read":J
    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    move-wide v0, v2

    goto :goto_1

    .line 619
    :cond_2
    iget v2, p0, Lcom/squareup/okhttp/internal/spdy/Http2$ContinuationSource;->left:I

    int-to-long v2, v2

    sub-long/2addr v2, v0

    long-to-int v2, v2

    iput v2, p0, Lcom/squareup/okhttp/internal/spdy/Http2$ContinuationSource;->left:I

    goto :goto_1
.end method

.method public final timeout()Lokio/Timeout;
    .locals 1

    .prologue
    .line 624
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$ContinuationSource;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->timeout()Lokio/Timeout;

    move-result-object v0

    return-object v0
.end method
