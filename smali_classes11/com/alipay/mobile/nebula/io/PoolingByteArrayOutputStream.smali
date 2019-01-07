.class public Lcom/alipay/mobile/nebula/io/PoolingByteArrayOutputStream;
.super Ljava/io/ByteArrayOutputStream;
.source "PoolingByteArrayOutputStream.java"


# static fields
.field private static final DEFAULT_SIZE:I = 0x400


# instance fields
.field private final mPool:Lcom/alipay/mobile/nebula/io/ByteArrayPool;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 46
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->getByteArrayPool()Lcom/alipay/mobile/nebula/io/ByteArrayPool;

    move-result-object v0

    const/16 v1, 0x400

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/nebula/io/PoolingByteArrayOutputStream;-><init>(Lcom/alipay/mobile/nebula/io/ByteArrayPool;I)V

    .line 47
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 53
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->getByteArrayPool()Lcom/alipay/mobile/nebula/io/ByteArrayPool;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/alipay/mobile/nebula/io/PoolingByteArrayOutputStream;-><init>(Lcom/alipay/mobile/nebula/io/ByteArrayPool;I)V

    .line 54
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/nebula/io/ByteArrayPool;)V
    .locals 1
    .param p1, "pool"    # Lcom/alipay/mobile/nebula/io/ByteArrayPool;

    .prologue
    .line 60
    const/16 v0, 0x400

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/nebula/io/PoolingByteArrayOutputStream;-><init>(Lcom/alipay/mobile/nebula/io/ByteArrayPool;I)V

    .line 61
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/nebula/io/ByteArrayPool;I)V
    .locals 2
    .param p1, "pool"    # Lcom/alipay/mobile/nebula/io/ByteArrayPool;
    .param p2, "size"    # I

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/alipay/mobile/nebula/io/PoolingByteArrayOutputStream;->mPool:Lcom/alipay/mobile/nebula/io/ByteArrayPool;

    .line 73
    iget-object v0, p0, Lcom/alipay/mobile/nebula/io/PoolingByteArrayOutputStream;->mPool:Lcom/alipay/mobile/nebula/io/ByteArrayPool;

    const/16 v1, 0x400

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/io/ByteArrayPool;->getBuf(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebula/io/PoolingByteArrayOutputStream;->buf:[B

    .line 74
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

    .line 93
    iget v1, p0, Lcom/alipay/mobile/nebula/io/PoolingByteArrayOutputStream;->count:I

    add-int/2addr v1, p1

    iget-object v2, p0, Lcom/alipay/mobile/nebula/io/PoolingByteArrayOutputStream;->buf:[B

    array-length v2, v2

    if-gt v1, v2, :cond_0

    .line 100
    :goto_0
    return-void

    .line 96
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/nebula/io/PoolingByteArrayOutputStream;->mPool:Lcom/alipay/mobile/nebula/io/ByteArrayPool;

    iget v2, p0, Lcom/alipay/mobile/nebula/io/PoolingByteArrayOutputStream;->count:I

    add-int/2addr v2, p1

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebula/io/ByteArrayPool;->getBuf(I)[B

    move-result-object v0

    .line 97
    .local v0, "newbuf":[B
    iget-object v1, p0, Lcom/alipay/mobile/nebula/io/PoolingByteArrayOutputStream;->buf:[B

    iget v2, p0, Lcom/alipay/mobile/nebula/io/PoolingByteArrayOutputStream;->count:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    iget-object v1, p0, Lcom/alipay/mobile/nebula/io/PoolingByteArrayOutputStream;->mPool:Lcom/alipay/mobile/nebula/io/ByteArrayPool;

    iget-object v2, p0, Lcom/alipay/mobile/nebula/io/PoolingByteArrayOutputStream;->buf:[B

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebula/io/ByteArrayPool;->returnBuf([B)V

    .line 99
    iput-object v0, p0, Lcom/alipay/mobile/nebula/io/PoolingByteArrayOutputStream;->buf:[B

    goto :goto_0
.end method


# virtual methods
.method public close()V
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
    .line 78
    iget-object v0, p0, Lcom/alipay/mobile/nebula/io/PoolingByteArrayOutputStream;->mPool:Lcom/alipay/mobile/nebula/io/ByteArrayPool;

    iget-object v1, p0, Lcom/alipay/mobile/nebula/io/PoolingByteArrayOutputStream;->buf:[B

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/io/ByteArrayPool;->returnBuf([B)V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebula/io/PoolingByteArrayOutputStream;->buf:[B

    .line 80
    invoke-super {p0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 81
    return-void
.end method

.method public finalize()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 85
    iget-object v0, p0, Lcom/alipay/mobile/nebula/io/PoolingByteArrayOutputStream;->mPool:Lcom/alipay/mobile/nebula/io/ByteArrayPool;

    iget-object v1, p0, Lcom/alipay/mobile/nebula/io/PoolingByteArrayOutputStream;->buf:[B

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/io/ByteArrayPool;->returnBuf([B)V

    .line 86
    return-void
.end method

.method public declared-synchronized write(I)V
    .locals 1
    .param p1, "oneByte"    # I

    .prologue
    .line 110
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebula/io/PoolingByteArrayOutputStream;->expand(I)V

    .line 111
    invoke-super {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    monitor-exit p0

    return-void

    .line 110
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
    .line 104
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p3}, Lcom/alipay/mobile/nebula/io/PoolingByteArrayOutputStream;->expand(I)V

    .line 105
    invoke-super {p0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    monitor-exit p0

    return-void

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
