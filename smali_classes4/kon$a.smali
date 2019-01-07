.class final Lkon$a;
.super Ljava/lang/Object;
.source "Http2Reader.java"

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:B

.field c:I

.field d:I

.field e:S

.field private final f:Lokio/BufferedSource;


# direct methods
.method constructor <init>(Lokio/BufferedSource;)V
    .locals 0
    .param p1, "source"    # Lokio/BufferedSource;

    .prologue
    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 360
    iput-object p1, p0, Lkon$a;->f:Lokio/BufferedSource;

    .line 361
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
    .line 383
    return-void
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
    const/4 v11, 0x1

    const-wide/16 v2, -0x1

    const/4 v10, 0x0

    .line 364
    :cond_0
    iget v4, p0, Lkon$a;->d:I

    if-nez v4, :cond_4

    .line 365
    iget-object v4, p0, Lkon$a;->f:Lokio/BufferedSource;

    iget-short v5, p0, Lkon$a;->e:S

    int-to-long v6, v5

    invoke-interface {v4, v6, v7}, Lokio/BufferedSource;->skip(J)V

    .line 366
    iput-short v10, p0, Lkon$a;->e:S

    .line 367
    iget-byte v4, p0, Lkon$a;->b:B

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_1

    move-wide v0, v2

    .line 375
    :goto_0
    return-wide v0

    .line 1386
    :cond_1
    iget v4, p0, Lkon$a;->c:I

    .line 1388
    iget-object v5, p0, Lkon$a;->f:Lokio/BufferedSource;

    invoke-static {v5}, Lkon;->a(Lokio/BufferedSource;)I

    move-result v5

    iput v5, p0, Lkon$a;->d:I

    iput v5, p0, Lkon$a;->a:I

    .line 1389
    iget-object v5, p0, Lkon$a;->f:Lokio/BufferedSource;

    invoke-interface {v5}, Lokio/BufferedSource;->readByte()B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    .line 1390
    iget-object v6, p0, Lkon$a;->f:Lokio/BufferedSource;

    invoke-interface {v6}, Lokio/BufferedSource;->readByte()B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    iput-byte v6, p0, Lkon$a;->b:B

    .line 1391
    sget-object v6, Lkon;->a:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v6

    if-eqz v6, :cond_2

    sget-object v6, Lkon;->a:Ljava/util/logging/Logger;

    iget v7, p0, Lkon$a;->c:I

    iget v8, p0, Lkon$a;->a:I

    iget-byte v9, p0, Lkon$a;->b:B

    invoke-static {v11, v7, v8, v5, v9}, Lkok;->a(ZIIBB)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 1392
    :cond_2
    iget-object v6, p0, Lkon$a;->f:Lokio/BufferedSource;

    invoke-interface {v6}, Lokio/BufferedSource;->readInt()I

    move-result v6

    const v7, 0x7fffffff

    and-int/2addr v6, v7

    iput v6, p0, Lkon$a;->c:I

    .line 1393
    const/16 v6, 0x9

    if-eq v5, v6, :cond_3

    const-string/jumbo v2, "%s != TYPE_CONTINUATION"

    new-array v3, v11, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v3, v10

    invoke-static {v2, v3}, Lkok;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 1394
    :cond_3
    iget v5, p0, Lkon$a;->c:I

    if-eq v5, v4, :cond_0

    const-string/jumbo v2, "TYPE_CONTINUATION streamId changed"

    new-array v3, v10, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lkok;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 372
    :cond_4
    iget-object v4, p0, Lkon$a;->f:Lokio/BufferedSource;

    iget v5, p0, Lkon$a;->d:I

    int-to-long v6, v5

    invoke-static {p2, p3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    invoke-interface {v4, p1, v6, v7}, Lokio/BufferedSource;->read(Lokio/Buffer;J)J

    move-result-wide v0

    .line 373
    .local v0, "read":J
    cmp-long v4, v0, v2

    if-nez v4, :cond_5

    move-wide v0, v2

    goto :goto_0

    .line 374
    :cond_5
    iget v2, p0, Lkon$a;->d:I

    int-to-long v2, v2

    sub-long/2addr v2, v0

    long-to-int v2, v2

    iput v2, p0, Lkon$a;->d:I

    goto/16 :goto_0
.end method

.method public final timeout()Lokio/Timeout;
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lkon$a;->f:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->timeout()Lokio/Timeout;

    move-result-object v0

    return-object v0
.end method
