.class public Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;
.super Ljava/io/InputStream;
.source "PooledByteBufferInputStream.java"


# instance fields
.field mMark:I

.field mOffset:I

.field final mPooledByteBuffer:Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;


# direct methods
.method public constructor <init>(Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;)V
    .locals 2
    .param p1, "pooledByteBuffer"    # Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 31
    invoke-interface {p1}, Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/Preconditions;->checkArgument(Z)V

    .line 32
    invoke-static {p1}, Lcom/alibaba/doraemon/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;

    iput-object v0, p0, Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;->mPooledByteBuffer:Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;

    .line 33
    iput v1, p0, Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;->mOffset:I

    .line 34
    iput v1, p0, Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;->mMark:I

    .line 35
    return-void

    :cond_0
    move v0, v1

    .line 31
    goto :goto_0
.end method


# virtual methods
.method public available()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;->mPooledByteBuffer:Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;

    invoke-interface {v0}, Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;->size()I

    move-result v0

    iget v1, p0, Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;->mOffset:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public closeByteBuffer()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 139
    iget-object v0, p0, Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;->mPooledByteBuffer:Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;

    invoke-interface {v0}, Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;->close()V

    .line 140
    iput v1, p0, Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;->mOffset:I

    .line 141
    iput v1, p0, Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;->mMark:I

    .line 142
    return-void
.end method

.method public mark(I)V
    .locals 1
    .param p1, "readlimit"    # I

    .prologue
    .line 53
    iget v0, p0, Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;->mOffset:I

    iput v0, p0, Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;->mMark:I

    .line 54
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;->available()I

    move-result v0

    if-gtz v0, :cond_0

    .line 68
    const/4 v0, -0x1

    .line 70
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;->mPooledByteBuffer:Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;

    iget v1, p0, Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;->mOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;->mOffset:I

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;->read(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method public read([B)I
    .locals 2
    .param p1, "buffer"    # [B

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 75
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 5
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 88
    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    add-int v2, p2, p3

    array-length v3, p1

    if-le v2, v3, :cond_1

    .line 89
    :cond_0
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "length="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "; regionStart="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "; regionLength="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 95
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;->available()I

    move-result v0

    .line 96
    .local v0, "available":I
    if-gtz v0, :cond_2

    .line 97
    const/4 v1, -0x1

    .line 107
    :goto_0
    return v1

    .line 100
    :cond_2
    if-gtz p3, :cond_3

    .line 101
    const/4 v1, 0x0

    goto :goto_0

    .line 104
    :cond_3
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 105
    .local v1, "numToRead":I
    iget-object v2, p0, Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;->mPooledByteBuffer:Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;

    iget v3, p0, Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;->mOffset:I

    invoke-interface {v2, v3, p1, p2, v1}, Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;->read(I[BII)V

    .line 106
    iget v2, p0, Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;->mOffset:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;->mOffset:I

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;->mMark:I

    iput v0, p0, Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;->mOffset:I

    .line 118
    return-void
.end method

.method public skip(J)J
    .locals 5
    .param p1, "byteCount"    # J

    .prologue
    .line 127
    const/4 v0, 0x0

    .line 129
    .local v0, "skipped":I
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-ltz v1, :cond_0

    .line 130
    long-to-int v1, p1

    invoke-virtual {p0}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;->available()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 131
    iget v1, p0, Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;->mOffset:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;->mOffset:I

    .line 134
    :cond_0
    int-to-long v2, v0

    return-wide v2
.end method
