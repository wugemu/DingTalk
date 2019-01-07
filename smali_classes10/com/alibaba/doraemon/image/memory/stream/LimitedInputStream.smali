.class public Lcom/alibaba/doraemon/image/memory/stream/LimitedInputStream;
.super Ljava/io/FilterInputStream;
.source "LimitedInputStream.java"


# instance fields
.field private mBytesToRead:I

.field private mBytesToReadWhenMarked:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 2
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "limit"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 25
    if-nez p1, :cond_0

    .line 26
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 28
    :cond_0
    if-gez p2, :cond_1

    .line 29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "limit must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_1
    iput p2, p0, Lcom/alibaba/doraemon/image/memory/stream/LimitedInputStream;->mBytesToRead:I

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/doraemon/image/memory/stream/LimitedInputStream;->mBytesToReadWhenMarked:I

    .line 33
    return-void
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 74
    iget-object v0, p0, Lcom/alibaba/doraemon/image/memory/stream/LimitedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    iget v1, p0, Lcom/alibaba/doraemon/image/memory/stream/LimitedInputStream;->mBytesToRead:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public mark(I)V
    .locals 1
    .param p1, "readLimit"    # I

    .prologue
    .line 79
    iget-object v0, p0, Lcom/alibaba/doraemon/image/memory/stream/LimitedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/alibaba/doraemon/image/memory/stream/LimitedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    .line 81
    iget v0, p0, Lcom/alibaba/doraemon/image/memory/stream/LimitedInputStream;->mBytesToRead:I

    iput v0, p0, Lcom/alibaba/doraemon/image/memory/stream/LimitedInputStream;->mBytesToReadWhenMarked:I

    .line 83
    :cond_0
    return-void
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, -0x1

    .line 37
    iget v2, p0, Lcom/alibaba/doraemon/image/memory/stream/LimitedInputStream;->mBytesToRead:I

    if-nez v2, :cond_1

    move v0, v1

    .line 46
    :cond_0
    :goto_0
    return v0

    .line 41
    :cond_1
    iget-object v2, p0, Lcom/alibaba/doraemon/image/memory/stream/LimitedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 42
    .local v0, "readByte":I
    if-eq v0, v1, :cond_0

    .line 43
    iget v1, p0, Lcom/alibaba/doraemon/image/memory/stream/LimitedInputStream;->mBytesToRead:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/alibaba/doraemon/image/memory/stream/LimitedInputStream;->mBytesToRead:I

    goto :goto_0
.end method

.method public read([BII)I
    .locals 3
    .param p1, "buffer"    # [B
    .param p2, "byteOffset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 51
    iget v2, p0, Lcom/alibaba/doraemon/image/memory/stream/LimitedInputStream;->mBytesToRead:I

    if-nez v2, :cond_1

    .line 52
    const/4 v0, -0x1

    .line 61
    :cond_0
    :goto_0
    return v0

    .line 55
    :cond_1
    iget v2, p0, Lcom/alibaba/doraemon/image/memory/stream/LimitedInputStream;->mBytesToRead:I

    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 56
    .local v1, "maxBytesToRead":I
    iget-object v2, p0, Lcom/alibaba/doraemon/image/memory/stream/LimitedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2, p1, p2, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 57
    .local v0, "bytesRead":I
    if-lez v0, :cond_0

    .line 58
    iget v2, p0, Lcom/alibaba/doraemon/image/memory/stream/LimitedInputStream;->mBytesToRead:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/alibaba/doraemon/image/memory/stream/LimitedInputStream;->mBytesToRead:I

    goto :goto_0
.end method

.method public reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 87
    iget-object v0, p0, Lcom/alibaba/doraemon/image/memory/stream/LimitedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "mark is not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_0
    iget v0, p0, Lcom/alibaba/doraemon/image/memory/stream/LimitedInputStream;->mBytesToReadWhenMarked:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 92
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "mark not set"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/alibaba/doraemon/image/memory/stream/LimitedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 96
    iget v0, p0, Lcom/alibaba/doraemon/image/memory/stream/LimitedInputStream;->mBytesToReadWhenMarked:I

    iput v0, p0, Lcom/alibaba/doraemon/image/memory/stream/LimitedInputStream;->mBytesToRead:I

    .line 97
    return-void
.end method

.method public skip(J)J
    .locals 7
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    iget v4, p0, Lcom/alibaba/doraemon/image/memory/stream/LimitedInputStream;->mBytesToRead:I

    int-to-long v4, v4

    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 67
    .local v2, "maxBytesToSkip":J
    iget-object v4, p0, Lcom/alibaba/doraemon/image/memory/stream/LimitedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v4, v2, v3}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .line 68
    .local v0, "bytesSkipped":J
    iget v4, p0, Lcom/alibaba/doraemon/image/memory/stream/LimitedInputStream;->mBytesToRead:I

    int-to-long v4, v4

    sub-long/2addr v4, v0

    long-to-int v4, v4

    iput v4, p0, Lcom/alibaba/doraemon/image/memory/stream/LimitedInputStream;->mBytesToRead:I

    .line 69
    return-wide v0
.end method
