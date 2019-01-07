.class public Lcom/alibaba/doraemon/impl/image/ImageInputStreamImpl;
.super Lcom/alibaba/doraemon/image/ImageInputStream;
.source "ImageInputStreamImpl.java"


# instance fields
.field private mLen:I

.field private mPooledByteBufferInputStream:Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;

.field private mRequestInputStream:Lcom/alibaba/doraemon/request/RequestInputStream;


# direct methods
.method public constructor <init>(Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;)V
    .locals 1
    .param p1, "byteBuffer"    # Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/alibaba/doraemon/image/ImageInputStream;-><init>()V

    .line 26
    new-instance v0, Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;

    invoke-direct {v0, p1}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;-><init>(Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;)V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/image/ImageInputStreamImpl;->mPooledByteBufferInputStream:Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;

    .line 27
    invoke-interface {p1}, Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;->size()I

    move-result v0

    iput v0, p0, Lcom/alibaba/doraemon/impl/image/ImageInputStreamImpl;->mLen:I

    .line 28
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/doraemon/request/RequestInputStream;I)V
    .locals 0
    .param p1, "inputStream"    # Lcom/alibaba/doraemon/request/RequestInputStream;
    .param p2, "length"    # I

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/alibaba/doraemon/image/ImageInputStream;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/image/ImageInputStreamImpl;->mRequestInputStream:Lcom/alibaba/doraemon/request/RequestInputStream;

    .line 22
    iput p2, p0, Lcom/alibaba/doraemon/impl/image/ImageInputStreamImpl;->mLen:I

    .line 23
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/ImageInputStreamImpl;->mRequestInputStream:Lcom/alibaba/doraemon/request/RequestInputStream;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/ImageInputStreamImpl;->mRequestInputStream:Lcom/alibaba/doraemon/request/RequestInputStream;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/request/RequestInputStream;->available()I

    move-result v0

    .line 65
    :goto_0
    return v0

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/ImageInputStreamImpl;->mPooledByteBufferInputStream:Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;

    if-eqz v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/ImageInputStreamImpl;->mPooledByteBufferInputStream:Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;->available()I

    move-result v0

    goto :goto_0

    .line 65
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/ImageInputStreamImpl;->mRequestInputStream:Lcom/alibaba/doraemon/request/RequestInputStream;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/ImageInputStreamImpl;->mRequestInputStream:Lcom/alibaba/doraemon/request/RequestInputStream;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/request/RequestInputStream;->close()V

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/ImageInputStreamImpl;->mPooledByteBufferInputStream:Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;

    if-eqz v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/ImageInputStreamImpl;->mPooledByteBufferInputStream:Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;->closeByteBuffer()V

    .line 76
    :cond_1
    return-void
.end method

.method public isTooLarge2Bytes()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 32
    iget v0, p0, Lcom/alibaba/doraemon/impl/image/ImageInputStreamImpl;->mLen:I

    const v1, 0x7d000

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/alibaba/doraemon/impl/image/ImageInputStreamImpl;->mLen:I

    return v0
.end method

.method public mark(I)V
    .locals 1
    .param p1, "readlimit"    # I

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/ImageInputStreamImpl;->mRequestInputStream:Lcom/alibaba/doraemon/request/RequestInputStream;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/ImageInputStreamImpl;->mRequestInputStream:Lcom/alibaba/doraemon/request/RequestInputStream;

    invoke-virtual {v0, p1}, Lcom/alibaba/doraemon/request/RequestInputStream;->mark(I)V

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/ImageInputStreamImpl;->mPooledByteBufferInputStream:Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/ImageInputStreamImpl;->mPooledByteBufferInputStream:Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;

    invoke-virtual {v0, p1}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;->mark(I)V

    .line 86
    :cond_1
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/ImageInputStreamImpl;->mRequestInputStream:Lcom/alibaba/doraemon/request/RequestInputStream;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/ImageInputStreamImpl;->mRequestInputStream:Lcom/alibaba/doraemon/request/RequestInputStream;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/request/RequestInputStream;->markSupported()Z

    move-result v0

    .line 96
    :goto_0
    return v0

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/ImageInputStreamImpl;->mPooledByteBufferInputStream:Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/ImageInputStreamImpl;->mPooledByteBufferInputStream:Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;->markSupported()Z

    move-result v0

    goto :goto_0

    .line 96
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/ImageInputStreamImpl;->mRequestInputStream:Lcom/alibaba/doraemon/request/RequestInputStream;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/ImageInputStreamImpl;->mRequestInputStream:Lcom/alibaba/doraemon/request/RequestInputStream;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/request/RequestInputStream;->read()I

    move-result v0

    .line 107
    :goto_0
    return v0

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/ImageInputStreamImpl;->mPooledByteBufferInputStream:Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/ImageInputStreamImpl;->mPooledByteBufferInputStream:Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;->read()I

    move-result v0

    goto :goto_0

    .line 107
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public read([B)I
    .locals 1
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/ImageInputStreamImpl;->mRequestInputStream:Lcom/alibaba/doraemon/request/RequestInputStream;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/ImageInputStreamImpl;->mRequestInputStream:Lcom/alibaba/doraemon/request/RequestInputStream;

    invoke-virtual {v0, p1}, Lcom/alibaba/doraemon/request/RequestInputStream;->read([B)I

    move-result v0

    .line 118
    :goto_0
    return v0

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/ImageInputStreamImpl;->mPooledByteBufferInputStream:Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/ImageInputStreamImpl;->mPooledByteBufferInputStream:Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;

    invoke-virtual {v0, p1}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;->read([B)I

    move-result v0

    goto :goto_0

    .line 118
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public read([BII)I
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "byteOffset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/ImageInputStreamImpl;->mRequestInputStream:Lcom/alibaba/doraemon/request/RequestInputStream;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/ImageInputStreamImpl;->mRequestInputStream:Lcom/alibaba/doraemon/request/RequestInputStream;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alibaba/doraemon/request/RequestInputStream;->read([BII)I

    move-result v0

    .line 129
    :goto_0
    return v0

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/ImageInputStreamImpl;->mPooledByteBufferInputStream:Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/ImageInputStreamImpl;->mPooledByteBufferInputStream:Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;->read([BII)I

    move-result v0

    goto :goto_0

    .line 129
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public read2Bytes()[B
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 37
    iget v1, p0, Lcom/alibaba/doraemon/impl/image/ImageInputStreamImpl;->mLen:I

    const v2, 0x7d000

    if-gt v1, v2, :cond_1

    .line 38
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/image/ImageInputStreamImpl;->mRequestInputStream:Lcom/alibaba/doraemon/request/RequestInputStream;

    if-eqz v1, :cond_0

    .line 39
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/image/ImageInputStreamImpl;->mRequestInputStream:Lcom/alibaba/doraemon/request/RequestInputStream;

    invoke-virtual {v1}, Lcom/alibaba/doraemon/request/RequestInputStream;->toBytes()[B

    move-result-object v0

    .line 49
    :goto_0
    return-object v0

    .line 41
    :cond_0
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/image/ImageInputStreamImpl;->mPooledByteBufferInputStream:Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;

    if-eqz v1, :cond_1

    .line 42
    iget v1, p0, Lcom/alibaba/doraemon/impl/image/ImageInputStreamImpl;->mLen:I

    new-array v0, v1, [B

    .line 43
    .local v0, "bytes":[B
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/image/ImageInputStreamImpl;->mPooledByteBufferInputStream:Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;

    invoke-virtual {v1, v0}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;->read([B)I

    goto :goto_0

    .line 49
    .end local v0    # "bytes":[B
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 134
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/ImageInputStreamImpl;->mRequestInputStream:Lcom/alibaba/doraemon/request/RequestInputStream;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/ImageInputStreamImpl;->mRequestInputStream:Lcom/alibaba/doraemon/request/RequestInputStream;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/request/RequestInputStream;->reset()V

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/ImageInputStreamImpl;->mPooledByteBufferInputStream:Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/ImageInputStreamImpl;->mPooledByteBufferInputStream:Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    :cond_1
    monitor-exit p0

    return-void

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .locals 3
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/ImageInputStreamImpl;->mRequestInputStream:Lcom/alibaba/doraemon/request/RequestInputStream;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/ImageInputStreamImpl;->mRequestInputStream:Lcom/alibaba/doraemon/request/RequestInputStream;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/doraemon/request/RequestInputStream;->skip(J)J

    move-result-wide v0

    .line 149
    :goto_0
    return-wide v0

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/ImageInputStreamImpl;->mPooledByteBufferInputStream:Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/ImageInputStreamImpl;->mPooledByteBufferInputStream:Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;->skip(J)J

    move-result-wide v0

    goto :goto_0

    .line 149
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0
.end method
