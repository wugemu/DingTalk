.class final Lcom/squareup/okhttp/internal/spdy/Http2$Reader;
.super Ljava/lang/Object;
.source "Http2.java"

# interfaces
.implements Lcom/squareup/okhttp/internal/spdy/FrameReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/spdy/Http2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Reader"
.end annotation


# instance fields
.field private final client:Z

.field private final continuation:Lcom/squareup/okhttp/internal/spdy/Http2$ContinuationSource;

.field final hpackReader:Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;

.field private final source:Lokio/BufferedSource;


# direct methods
.method constructor <init>(Lokio/BufferedSource;IZ)V
    .locals 2
    .param p1, "source"    # Lokio/BufferedSource;
    .param p2, "headerTableSize"    # I
    .param p3, "client"    # Z

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Reader;->source:Lokio/BufferedSource;

    .line 97
    iput-boolean p3, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Reader;->client:Z

    .line 98
    new-instance v0, Lcom/squareup/okhttp/internal/spdy/Http2$ContinuationSource;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-direct {v0, v1}, Lcom/squareup/okhttp/internal/spdy/Http2$ContinuationSource;-><init>(Lokio/BufferedSource;)V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Reader;->continuation:Lcom/squareup/okhttp/internal/spdy/Http2$ContinuationSource;

    .line 99
    new-instance v0, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Reader;->continuation:Lcom/squareup/okhttp/internal/spdy/Http2$ContinuationSource;

    invoke-direct {v0, p2, v1}, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;-><init>(ILokio/Source;)V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Reader;->hpackReader:Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;

    .line 100
    return-void
.end method

.method private readData(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;IBI)V
    .locals 6
    .param p1, "handler"    # Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;
    .param p2, "length"    # I
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 219
    and-int/lit8 v3, p3, 0x1

    if-eqz v3, :cond_0

    move v1, v0

    .line 220
    .local v1, "inFinished":Z
    :goto_0
    and-int/lit8 v3, p3, 0x20

    if-eqz v3, :cond_1

    .line 221
    .local v0, "gzipped":Z
    :goto_1
    if-eqz v0, :cond_2

    .line 222
    const-string/jumbo v3, "PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/squareup/okhttp/internal/spdy/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    .end local v0    # "gzipped":Z
    .end local v1    # "inFinished":Z
    :cond_0
    move v1, v2

    .line 219
    goto :goto_0

    .restart local v1    # "inFinished":Z
    :cond_1
    move v0, v2

    .line 220
    goto :goto_1

    .line 225
    .restart local v0    # "gzipped":Z
    :cond_2
    and-int/lit8 v3, p3, 0x8

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->readByte()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-short v2, v3

    .line 226
    .local v2, "padding":S
    :cond_3
    invoke-static {p2, p3, v2}, Lcom/squareup/okhttp/internal/spdy/Http2;->access$400(IBS)I

    move-result p2

    .line 228
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-interface {p1, v1, p4, v3, p2}, Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;->data(ZILokio/BufferedSource;I)V

    .line 229
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Reader;->source:Lokio/BufferedSource;

    int-to-long v4, v2

    invoke-interface {v3, v4, v5}, Lokio/BufferedSource;->skip(J)V

    .line 230
    return-void
.end method

.method private readGoAway(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;IBI)V
    .locals 9
    .param p1, "handler"    # Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;
    .param p2, "length"    # I
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 334
    const/16 v5, 0x8

    if-ge p2, v5, :cond_0

    const-string/jumbo v5, "TYPE_GOAWAY length < 8: %s"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Lcom/squareup/okhttp/internal/spdy/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v5

    throw v5

    .line 335
    :cond_0
    if-eqz p4, :cond_1

    const-string/jumbo v5, "TYPE_GOAWAY streamId != 0"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/squareup/okhttp/internal/spdy/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v5

    throw v5

    .line 336
    :cond_1
    iget-object v5, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v5}, Lokio/BufferedSource;->readInt()I

    move-result v3

    .line 337
    .local v3, "lastStreamId":I
    iget-object v5, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v5}, Lokio/BufferedSource;->readInt()I

    move-result v2

    .line 338
    .local v2, "errorCodeInt":I
    add-int/lit8 v4, p2, -0x8

    .line 339
    .local v4, "opaqueDataLength":I
    invoke-static {v2}, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->fromHttp2(I)Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    move-result-object v1

    .line 340
    .local v1, "errorCode":Lcom/squareup/okhttp/internal/spdy/ErrorCode;
    if-nez v1, :cond_2

    .line 341
    const-string/jumbo v5, "TYPE_GOAWAY unexpected error code: %d"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Lcom/squareup/okhttp/internal/spdy/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v5

    throw v5

    .line 343
    :cond_2
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 344
    .local v0, "debugData":Lokio/ByteString;
    if-lez v4, :cond_3

    .line 345
    iget-object v5, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Reader;->source:Lokio/BufferedSource;

    int-to-long v6, v4

    invoke-interface {v5, v6, v7}, Lokio/BufferedSource;->readByteString(J)Lokio/ByteString;

    move-result-object v0

    .line 347
    :cond_3
    invoke-interface {p1, v3, v1, v0}, Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;->goAway(ILcom/squareup/okhttp/internal/spdy/ErrorCode;Lokio/ByteString;)V

    .line 348
    return-void
.end method

.method private readHeaderBlock(ISBI)Ljava/util/List;
    .locals 2
    .param p1, "length"    # I
    .param p2, "padding"    # S
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ISBI)",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/internal/spdy/Header;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 205
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Reader;->continuation:Lcom/squareup/okhttp/internal/spdy/Http2$ContinuationSource;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Reader;->continuation:Lcom/squareup/okhttp/internal/spdy/Http2$ContinuationSource;

    iput p1, v1, Lcom/squareup/okhttp/internal/spdy/Http2$ContinuationSource;->left:I

    iput p1, v0, Lcom/squareup/okhttp/internal/spdy/Http2$ContinuationSource;->length:I

    .line 206
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Reader;->continuation:Lcom/squareup/okhttp/internal/spdy/Http2$ContinuationSource;

    iput-short p2, v0, Lcom/squareup/okhttp/internal/spdy/Http2$ContinuationSource;->padding:S

    .line 207
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Reader;->continuation:Lcom/squareup/okhttp/internal/spdy/Http2$ContinuationSource;

    iput-byte p3, v0, Lcom/squareup/okhttp/internal/spdy/Http2$ContinuationSource;->flags:B

    .line 208
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Reader;->continuation:Lcom/squareup/okhttp/internal/spdy/Http2$ContinuationSource;

    iput p4, v0, Lcom/squareup/okhttp/internal/spdy/Http2$ContinuationSource;->streamId:I

    .line 212
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Reader;->hpackReader:Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->readHeaders()V

    .line 213
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Reader;->hpackReader:Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->getAndResetHeaderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private readHeaders(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;IBI)V
    .locals 8
    .param p1, "handler"    # Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;
    .param p2, "length"    # I
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 185
    if-nez p4, :cond_0

    const-string/jumbo v0, "PROTOCOL_ERROR: TYPE_HEADERS streamId == 0"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/spdy/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 187
    :cond_0
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    .line 189
    .local v2, "endStream":Z
    :goto_0
    and-int/lit8 v0, p3, 0x8

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v7, v0

    .line 191
    .local v7, "padding":S
    :goto_1
    and-int/lit8 v0, p3, 0x20

    if-eqz v0, :cond_1

    .line 192
    invoke-direct {p0, p1, p4}, Lcom/squareup/okhttp/internal/spdy/Http2$Reader;->readPriority(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;I)V

    .line 193
    add-int/lit8 p2, p2, -0x5

    .line 196
    :cond_1
    invoke-static {p2, p3, v7}, Lcom/squareup/okhttp/internal/spdy/Http2;->access$400(IBS)I

    move-result p2

    .line 198
    invoke-direct {p0, p2, v7, p3, p4}, Lcom/squareup/okhttp/internal/spdy/Http2$Reader;->readHeaderBlock(ISBI)Ljava/util/List;

    move-result-object v5

    .line 200
    .local v5, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/spdy/Header;>;"
    const/4 v4, -0x1

    sget-object v6, Lcom/squareup/okhttp/internal/spdy/HeadersMode;->HTTP_20_HEADERS:Lcom/squareup/okhttp/internal/spdy/HeadersMode;

    move-object v0, p1

    move v3, p4

    invoke-interface/range {v0 .. v6}, Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;->headers(ZZIILjava/util/List;Lcom/squareup/okhttp/internal/spdy/HeadersMode;)V

    .line 201
    return-void

    .end local v2    # "endStream":Z
    .end local v5    # "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/spdy/Header;>;"
    .end local v7    # "padding":S
    :cond_2
    move v2, v1

    .line 187
    goto :goto_0

    .restart local v2    # "endStream":Z
    :cond_3
    move v7, v1

    .line 189
    goto :goto_1
.end method

.method private readPing(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;IBI)V
    .locals 7
    .param p1, "handler"    # Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;
    .param p2, "length"    # I
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 324
    const/16 v4, 0x8

    if-eq p2, v4, :cond_0

    const-string/jumbo v4, "TYPE_PING length != 8: %s"

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v4, v5}, Lcom/squareup/okhttp/internal/spdy/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 325
    :cond_0
    if-eqz p4, :cond_1

    const-string/jumbo v4, "TYPE_PING streamId != 0"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4, v3}, Lcom/squareup/okhttp/internal/spdy/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 326
    :cond_1
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v4}, Lokio/BufferedSource;->readInt()I

    move-result v1

    .line 327
    .local v1, "payload1":I
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v4}, Lokio/BufferedSource;->readInt()I

    move-result v2

    .line 328
    .local v2, "payload2":I
    and-int/lit8 v4, p3, 0x1

    if-eqz v4, :cond_2

    .line 329
    .local v0, "ack":Z
    :goto_0
    invoke-interface {p1, v0, v1, v2}, Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;->ping(ZII)V

    .line 330
    return-void

    .end local v0    # "ack":Z
    :cond_2
    move v0, v3

    .line 328
    goto :goto_0
.end method

.method private readPriority(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;I)V
    .locals 5
    .param p1, "handler"    # Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;
    .param p2, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 240
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v4}, Lokio/BufferedSource;->readInt()I

    move-result v2

    .line 241
    .local v2, "w1":I
    const/high16 v4, -0x80000000

    and-int/2addr v4, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 242
    .local v0, "exclusive":Z
    :goto_0
    const v4, 0x7fffffff

    and-int v1, v2, v4

    .line 243
    .local v1, "streamDependency":I
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v4}, Lokio/BufferedSource;->readByte()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v3, v4, 0x1

    .line 244
    .local v3, "weight":I
    invoke-interface {p1, p2, v1, v3, v0}, Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;->priority(IIIZ)V

    .line 245
    return-void

    .line 241
    .end local v0    # "exclusive":Z
    .end local v1    # "streamDependency":I
    .end local v3    # "weight":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private readPriority(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;IBI)V
    .locals 4
    .param p1, "handler"    # Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;
    .param p2, "length"    # I
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 234
    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    const-string/jumbo v0, "TYPE_PRIORITY length: %d != 5"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/spdy/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 235
    :cond_0
    if-nez p4, :cond_1

    const-string/jumbo v0, "TYPE_PRIORITY streamId == 0"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/spdy/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 236
    :cond_1
    invoke-direct {p0, p1, p4}, Lcom/squareup/okhttp/internal/spdy/Http2$Reader;->readPriority(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;I)V

    .line 237
    return-void
.end method

.method private readPushPromise(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;IBI)V
    .locals 5
    .param p1, "handler"    # Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;
    .param p2, "length"    # I
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 311
    if-nez p4, :cond_0

    .line 312
    const-string/jumbo v3, "PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/squareup/okhttp/internal/spdy/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 314
    :cond_0
    and-int/lit8 v3, p3, 0x8

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->readByte()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-short v1, v3

    .line 315
    .local v1, "padding":S
    :cond_1
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->readInt()I

    move-result v3

    const v4, 0x7fffffff

    and-int v2, v3, v4

    .line 316
    .local v2, "promisedStreamId":I
    add-int/lit8 p2, p2, -0x4

    .line 317
    invoke-static {p2, p3, v1}, Lcom/squareup/okhttp/internal/spdy/Http2;->access$400(IBS)I

    move-result p2

    .line 318
    invoke-direct {p0, p2, v1, p3, p4}, Lcom/squareup/okhttp/internal/spdy/Http2$Reader;->readHeaderBlock(ISBI)Ljava/util/List;

    move-result-object v0

    .line 319
    .local v0, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/spdy/Header;>;"
    invoke-interface {p1, p4, v2, v0}, Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;->pushPromise(IILjava/util/List;)V

    .line 320
    return-void
.end method

.method private readRstStream(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;IBI)V
    .locals 6
    .param p1, "handler"    # Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;
    .param p2, "length"    # I
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 249
    const/4 v2, 0x4

    if-eq p2, v2, :cond_0

    const-string/jumbo v2, "TYPE_RST_STREAM length: %d != 4"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/squareup/okhttp/internal/spdy/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 250
    :cond_0
    if-nez p4, :cond_1

    const-string/jumbo v2, "TYPE_RST_STREAM streamId == 0"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/squareup/okhttp/internal/spdy/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 251
    :cond_1
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->readInt()I

    move-result v1

    .line 252
    .local v1, "errorCodeInt":I
    invoke-static {v1}, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->fromHttp2(I)Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    move-result-object v0

    .line 253
    .local v0, "errorCode":Lcom/squareup/okhttp/internal/spdy/ErrorCode;
    if-nez v0, :cond_2

    .line 254
    const-string/jumbo v2, "TYPE_RST_STREAM unexpected error code: %d"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/squareup/okhttp/internal/spdy/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 256
    :cond_2
    invoke-interface {p1, p4, v0}, Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;->rstStream(ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    .line 257
    return-void
.end method

.method private readSettings(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;IBI)V
    .locals 8
    .param p1, "handler"    # Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;
    .param p2, "length"    # I
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 261
    if-eqz p4, :cond_0

    const-string/jumbo v4, "TYPE_SETTINGS streamId != 0"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/squareup/okhttp/internal/spdy/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v4

    throw v4

    .line 262
    :cond_0
    and-int/lit8 v4, p3, 0x1

    if-eqz v4, :cond_3

    .line 263
    if-eqz p2, :cond_1

    const-string/jumbo v4, "FRAME_SIZE_ERROR ack frame should be empty!"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/squareup/okhttp/internal/spdy/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v4

    throw v4

    .line 264
    :cond_1
    invoke-interface {p1}, Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;->ackSettings()V

    .line 307
    :cond_2
    :goto_0
    return-void

    .line 268
    :cond_3
    rem-int/lit8 v4, p2, 0x6

    if-eqz v4, :cond_4

    const-string/jumbo v4, "TYPE_SETTINGS length %% 6 != 0: %s"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/squareup/okhttp/internal/spdy/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v4

    throw v4

    .line 269
    :cond_4
    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Settings;

    invoke-direct {v2}, Lcom/squareup/okhttp/internal/spdy/Settings;-><init>()V

    .line 270
    .local v2, "settings":Lcom/squareup/okhttp/internal/spdy/Settings;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p2, :cond_7

    .line 271
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v4}, Lokio/BufferedSource;->readShort()S

    move-result v1

    .line 272
    .local v1, "id":S
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v4}, Lokio/BufferedSource;->readInt()I

    move-result v3

    .line 274
    .local v3, "value":I
    packed-switch v1, :pswitch_data_0

    .line 299
    const-string/jumbo v4, "PROTOCOL_ERROR invalid settings id: %s"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/squareup/okhttp/internal/spdy/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v4

    throw v4

    .line 278
    :pswitch_0
    if-eqz v3, :cond_5

    if-eq v3, v5, :cond_5

    .line 279
    const-string/jumbo v4, "PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/squareup/okhttp/internal/spdy/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v4

    throw v4

    .line 283
    :pswitch_1
    const/4 v1, 0x4

    .line 301
    :cond_5
    :pswitch_2
    invoke-virtual {v2, v1, v7, v3}, Lcom/squareup/okhttp/internal/spdy/Settings;->set(III)Lcom/squareup/okhttp/internal/spdy/Settings;

    .line 270
    add-int/lit8 v0, v0, 0x6

    goto :goto_1

    .line 286
    :pswitch_3
    const/4 v1, 0x7

    .line 287
    if-gez v3, :cond_5

    .line 288
    const-string/jumbo v4, "PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/squareup/okhttp/internal/spdy/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v4

    throw v4

    .line 292
    :pswitch_4
    const/16 v4, 0x4000

    if-lt v3, v4, :cond_6

    const v4, 0xffffff

    if-le v3, v4, :cond_5

    .line 293
    :cond_6
    const-string/jumbo v4, "PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/squareup/okhttp/internal/spdy/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v4

    throw v4

    .line 303
    .end local v1    # "id":S
    .end local v3    # "value":I
    :cond_7
    invoke-interface {p1, v7, v2}, Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;->settings(ZLcom/squareup/okhttp/internal/spdy/Settings;)V

    .line 304
    invoke-virtual {v2}, Lcom/squareup/okhttp/internal/spdy/Settings;->getHeaderTableSize()I

    move-result v4

    if-ltz v4, :cond_2

    .line 305
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Reader;->hpackReader:Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;

    invoke-virtual {v2}, Lcom/squareup/okhttp/internal/spdy/Settings;->getHeaderTableSize()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->headerTableSizeSetting(I)V

    goto/16 :goto_0

    .line 274
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method private readWindowUpdate(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;IBI)V
    .locals 8
    .param p1, "handler"    # Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;
    .param p2, "length"    # I
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
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

    .line 352
    const/4 v2, 0x4

    if-eq p2, v2, :cond_0

    const-string/jumbo v2, "TYPE_WINDOW_UPDATE length !=4: %s"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/squareup/okhttp/internal/spdy/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 353
    :cond_0
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->readInt()I

    move-result v2

    int-to-long v2, v2

    const-wide/32 v4, 0x7fffffff

    and-long v0, v2, v4

    .line 354
    .local v0, "increment":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "windowSizeIncrement was 0"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/squareup/okhttp/internal/spdy/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 355
    :cond_1
    invoke-interface {p1, p4, v0, v1}, Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;->windowUpdate(IJ)V

    .line 356
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 359
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->close()V

    .line 360
    return-void
.end method

.method public final nextFrame(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;)Z
    .locals 10
    .param p1, "handler"    # Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 113
    :try_start_0
    iget-object v6, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Reader;->source:Lokio/BufferedSource;

    const-wide/16 v8, 0x9

    invoke-interface {v6, v8, v9}, Lokio/BufferedSource;->require(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    iget-object v6, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-static {v6}, Lcom/squareup/okhttp/internal/spdy/Http2;->access$300(Lokio/BufferedSource;)I

    move-result v1

    .line 131
    .local v1, "length":I
    if-ltz v1, :cond_0

    const/16 v6, 0x4000

    if-le v1, v6, :cond_1

    .line 132
    :cond_0
    const-string/jumbo v6, "FRAME_SIZE_ERROR: %s"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-static {v6, v4}, Lcom/squareup/okhttp/internal/spdy/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v4

    throw v4

    .line 115
    .end local v1    # "length":I
    :catch_0
    move-exception v4

    move v4, v5

    .line 180
    :goto_0
    return v4

    .line 134
    .restart local v1    # "length":I
    :cond_1
    iget-object v5, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v5}, Lokio/BufferedSource;->readByte()B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v3, v5

    .line 135
    .local v3, "type":B
    iget-object v5, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v5}, Lokio/BufferedSource;->readByte()B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v0, v5

    .line 136
    .local v0, "flags":B
    iget-object v5, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v5}, Lokio/BufferedSource;->readInt()I

    move-result v5

    const v6, 0x7fffffff

    and-int v2, v5, v6

    .line 137
    .local v2, "streamId":I
    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/Http2;->access$100()Ljava/util/logging/Logger;

    move-result-object v5

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/Http2;->access$100()Ljava/util/logging/Logger;

    move-result-object v5

    invoke-static {v4, v2, v1, v3, v0}, Lcom/squareup/okhttp/internal/spdy/Http2$FrameLogger;->formatHeader(ZIIBB)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 139
    :cond_2
    packed-switch v3, :pswitch_data_0

    .line 178
    iget-object v5, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Reader;->source:Lokio/BufferedSource;

    int-to-long v6, v1

    invoke-interface {v5, v6, v7}, Lokio/BufferedSource;->skip(J)V

    goto :goto_0

    .line 141
    :pswitch_0
    invoke-direct {p0, p1, v1, v0, v2}, Lcom/squareup/okhttp/internal/spdy/Http2$Reader;->readData(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;IBI)V

    goto :goto_0

    .line 145
    :pswitch_1
    invoke-direct {p0, p1, v1, v0, v2}, Lcom/squareup/okhttp/internal/spdy/Http2$Reader;->readHeaders(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;IBI)V

    goto :goto_0

    .line 149
    :pswitch_2
    invoke-direct {p0, p1, v1, v0, v2}, Lcom/squareup/okhttp/internal/spdy/Http2$Reader;->readPriority(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;IBI)V

    goto :goto_0

    .line 153
    :pswitch_3
    invoke-direct {p0, p1, v1, v0, v2}, Lcom/squareup/okhttp/internal/spdy/Http2$Reader;->readRstStream(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;IBI)V

    goto :goto_0

    .line 157
    :pswitch_4
    invoke-direct {p0, p1, v1, v0, v2}, Lcom/squareup/okhttp/internal/spdy/Http2$Reader;->readSettings(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;IBI)V

    goto :goto_0

    .line 161
    :pswitch_5
    invoke-direct {p0, p1, v1, v0, v2}, Lcom/squareup/okhttp/internal/spdy/Http2$Reader;->readPushPromise(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;IBI)V

    goto :goto_0

    .line 165
    :pswitch_6
    invoke-direct {p0, p1, v1, v0, v2}, Lcom/squareup/okhttp/internal/spdy/Http2$Reader;->readPing(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;IBI)V

    goto :goto_0

    .line 169
    :pswitch_7
    invoke-direct {p0, p1, v1, v0, v2}, Lcom/squareup/okhttp/internal/spdy/Http2$Reader;->readGoAway(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;IBI)V

    goto :goto_0

    .line 173
    :pswitch_8
    invoke-direct {p0, p1, v1, v0, v2}, Lcom/squareup/okhttp/internal/spdy/Http2$Reader;->readWindowUpdate(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;IBI)V

    goto :goto_0

    .line 139
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public final readConnectionPreface()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 103
    iget-boolean v1, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Reader;->client:Z

    if-eqz v1, :cond_1

    .line 109
    :cond_0
    return-void

    .line 104
    :cond_1
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/Http2;->access$000()Lokio/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lokio/ByteString;->size()I

    move-result v2

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, Lokio/BufferedSource;->readByteString(J)Lokio/ByteString;

    move-result-object v0

    .line 105
    .local v0, "connectionPreface":Lokio/ByteString;
    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/Http2;->access$100()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/Http2;->access$100()Ljava/util/logging/Logger;

    move-result-object v1

    const-string/jumbo v2, "<< CONNECTION %s"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 106
    :cond_2
    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/Http2;->access$000()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v1, v0}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 107
    const-string/jumbo v1, "Expected a connection header but was %s"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/squareup/okhttp/internal/spdy/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method
