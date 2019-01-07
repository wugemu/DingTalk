.class public Lcom/alibaba/doraemon/impl/request/PoolingByteArrayOutputStream;
.super Ljava/io/ByteArrayOutputStream;
.source "PoolingByteArrayOutputStream.java"


# static fields
.field private static final DEFAULT_SIZE:I = 0x100


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    const/16 v0, 0x100

    invoke-direct {p0, v0}, Lcom/alibaba/doraemon/impl/request/PoolingByteArrayOutputStream;-><init>(I)V

    .line 38
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 49
    const/16 v0, 0x100

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->getBuf(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/request/PoolingByteArrayOutputStream;->buf:[B

    .line 50
    return-void
.end method

.method private expand(I)V
    .locals 4
    .param p1, "i"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 69
    iget v1, p0, Lcom/alibaba/doraemon/impl/request/PoolingByteArrayOutputStream;->count:I

    add-int/2addr v1, p1

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/request/PoolingByteArrayOutputStream;->buf:[B

    array-length v2, v2

    if-gt v1, v2, :cond_0

    .line 76
    :goto_0
    return-void

    .line 72
    :cond_0
    iget v1, p0, Lcom/alibaba/doraemon/impl/request/PoolingByteArrayOutputStream;->count:I

    add-int/2addr v1, p1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->getBuf(I)[B

    move-result-object v0

    .line 73
    .local v0, "newbuf":[B
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/request/PoolingByteArrayOutputStream;->buf:[B

    iget v2, p0, Lcom/alibaba/doraemon/impl/request/PoolingByteArrayOutputStream;->count:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/request/PoolingByteArrayOutputStream;->buf:[B

    invoke-static {v1}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    .line 75
    iput-object v0, p0, Lcom/alibaba/doraemon/impl/request/PoolingByteArrayOutputStream;->buf:[B

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/PoolingByteArrayOutputStream;->buf:[B

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/request/PoolingByteArrayOutputStream;->buf:[B

    .line 56
    invoke-super {p0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 57
    return-void
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/PoolingByteArrayOutputStream;->buf:[B

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    .line 62
    return-void
.end method

.method public declared-synchronized write(I)V
    .locals 1
    .param p1, "oneByte"    # I

    .prologue
    .line 86
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Lcom/alibaba/doraemon/impl/request/PoolingByteArrayOutputStream;->expand(I)V

    .line 87
    invoke-super {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    monitor-exit p0

    return-void

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized write([BII)V
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    .line 80
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p3}, Lcom/alibaba/doraemon/impl/request/PoolingByteArrayOutputStream;->expand(I)V

    .line 81
    invoke-super {p0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    monitor-exit p0

    return-void

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
