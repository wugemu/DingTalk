.class public Lcom/alibaba/doraemon/image/memory/PooledByteStreams;
.super Ljava/lang/Object;
.source "PooledByteStreams.java"


# static fields
.field private static final DEFAULT_TEMP_BUF_SIZE:I = 0x4000


# instance fields
.field private final mTempBufSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    const/16 v0, 0x4000

    invoke-direct {p0, v0}, Lcom/alibaba/doraemon/image/memory/PooledByteStreams;-><init>(I)V

    .line 33
    return-void
.end method

.method constructor <init>(I)V
    .locals 1
    .param p1, "tempBufSize"    # I

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    if-lez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/Preconditions;->checkArgument(Z)V

    .line 37
    iput p1, p0, Lcom/alibaba/doraemon/image/memory/PooledByteStreams;->mTempBufSize:I

    .line 38
    return-void

    .line 36
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 6
    .param p1, "from"    # Ljava/io/InputStream;
    .param p2, "to"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 48
    const-wide/16 v0, 0x0

    .line 49
    .local v0, "count":J
    iget v4, p0, Lcom/alibaba/doraemon/image/memory/PooledByteStreams;->mTempBufSize:I

    invoke-static {v4}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->getBuf(I)[B

    move-result-object v3

    .line 53
    .local v3, "tmp":[B
    :goto_0
    const/4 v4, 0x0

    :try_start_0
    iget v5, p0, Lcom/alibaba/doraemon/image/memory/PooledByteStreams;->mTempBufSize:I

    invoke-virtual {p1, v3, v4, v5}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 54
    .local v2, "read":I
    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    .line 61
    invoke-static {v3}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    return-wide v0

    .line 57
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {p2, v3, v4, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    int-to-long v4, v2

    add-long/2addr v0, v4

    .line 59
    goto :goto_0

    .line 61
    .end local v2    # "read":I
    :catchall_0
    move-exception v4

    invoke-static {v3}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    throw v4
.end method

.method public copy(Ljava/io/InputStream;Ljava/io/OutputStream;J)J
    .locals 11
    .param p1, "from"    # Ljava/io/InputStream;
    .param p2, "to"    # Ljava/io/OutputStream;
    .param p3, "bytesToCopy"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 77
    const-wide/16 v6, 0x0

    cmp-long v5, p3, v6

    if-lez v5, :cond_0

    const/4 v4, 0x1

    :cond_0
    invoke-static {v4}, Lcom/alibaba/doraemon/utils/Preconditions;->checkState(Z)V

    .line 78
    const-wide/16 v0, 0x0

    .line 79
    .local v0, "copied":J
    iget v4, p0, Lcom/alibaba/doraemon/image/memory/PooledByteStreams;->mTempBufSize:I

    invoke-static {v4}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->getBuf(I)[B

    move-result-object v3

    .line 82
    .local v3, "tmp":[B
    :goto_0
    cmp-long v4, v0, p3

    if-gez v4, :cond_2

    .line 83
    const/4 v4, 0x0

    :try_start_0
    iget v5, p0, Lcom/alibaba/doraemon/image/memory/PooledByteStreams;->mTempBufSize:I

    int-to-long v6, v5

    sub-long v8, p3, v0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v5, v6

    invoke-virtual {p1, v3, v4, v5}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 84
    .local v2, "read":I
    const/4 v4, -0x1

    if-ne v2, v4, :cond_1

    .line 92
    invoke-static {v3}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    .end local v2    # "read":I
    :goto_1
    return-wide v0

    .line 87
    .restart local v2    # "read":I
    :cond_1
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {p2, v3, v4, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    int-to-long v4, v2

    add-long/2addr v0, v4

    .line 89
    goto :goto_0

    .line 92
    .end local v2    # "read":I
    :cond_2
    invoke-static {v3}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    goto :goto_1

    :catchall_0
    move-exception v4

    invoke-static {v3}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    throw v4
.end method
