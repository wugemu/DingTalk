.class public Lcom/alibaba/doraemon/image/memory/NativePooledByteBufferFactory;
.super Ljava/lang/Object;
.source "NativePooledByteBufferFactory.java"

# interfaces
.implements Lcom/alibaba/doraemon/image/memory/PooledByteBufferFactory;


# instance fields
.field private final mPool:Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkPool;

.field private final mPooledByteStreams:Lcom/alibaba/doraemon/image/memory/PooledByteStreams;


# direct methods
.method public constructor <init>(Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkPool;Lcom/alibaba/doraemon/image/memory/PooledByteStreams;)V
    .locals 0
    .param p1, "pool"    # Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkPool;
    .param p2, "pooledByteStreams"    # Lcom/alibaba/doraemon/image/memory/PooledByteStreams;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/alibaba/doraemon/image/memory/NativePooledByteBufferFactory;->mPool:Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkPool;

    .line 33
    iput-object p2, p0, Lcom/alibaba/doraemon/image/memory/NativePooledByteBufferFactory;->mPooledByteStreams:Lcom/alibaba/doraemon/image/memory/PooledByteStreams;

    .line 34
    return-void
.end method


# virtual methods
.method newByteBuf(Ljava/io/InputStream;Lcom/alibaba/doraemon/image/memory/NativePooledByteBufferOutputStream;)Lcom/alibaba/doraemon/image/memory/NativePooledByteBuffer;
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "outputStream"    # Lcom/alibaba/doraemon/image/memory/NativePooledByteBufferOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 196
    iget-object v0, p0, Lcom/alibaba/doraemon/image/memory/NativePooledByteBufferFactory;->mPooledByteStreams:Lcom/alibaba/doraemon/image/memory/PooledByteStreams;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/doraemon/image/memory/PooledByteStreams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 197
    invoke-virtual {p2}, Lcom/alibaba/doraemon/image/memory/NativePooledByteBufferOutputStream;->toByteBuffer()Lcom/alibaba/doraemon/image/memory/NativePooledByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public newByteBuffer(I)Lcom/alibaba/doraemon/image/memory/NativePooledByteBuffer;
    .locals 3
    .param p1, "size"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 38
    if-lez p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/alibaba/doraemon/utils/Preconditions;->checkArgument(Z)V

    .line 39
    iget-object v1, p0, Lcom/alibaba/doraemon/image/memory/NativePooledByteBufferFactory;->mPool:Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkPool;

    invoke-virtual {v1, p1}, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkPool;->get(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/doraemon/image/memory/NativePooledByteBufferFactory;->mPool:Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkPool;

    invoke-static {v1, v2}, Lcom/alibaba/doraemon/image/memory/references/CloseableReference;->of(Ljava/lang/Object;Lcom/alibaba/doraemon/image/memory/references/ResourceReleaser;)Lcom/alibaba/doraemon/image/memory/references/CloseableReference;

    move-result-object v0

    .line 41
    .local v0, "chunkRef":Lcom/alibaba/doraemon/image/memory/references/CloseableReference;, "Lcom/alibaba/doraemon/image/memory/references/CloseableReference<Lcom/alibaba/doraemon/image/memory/NativeMemoryChunk;>;"
    :try_start_0
    new-instance v1, Lcom/alibaba/doraemon/image/memory/NativePooledByteBuffer;

    invoke-direct {v1, v0, p1}, Lcom/alibaba/doraemon/image/memory/NativePooledByteBuffer;-><init>(Lcom/alibaba/doraemon/image/memory/references/CloseableReference;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    invoke-virtual {v0}, Lcom/alibaba/doraemon/image/memory/references/CloseableReference;->close()V

    return-object v1

    .line 38
    .end local v0    # "chunkRef":Lcom/alibaba/doraemon/image/memory/references/CloseableReference;, "Lcom/alibaba/doraemon/image/memory/references/CloseableReference<Lcom/alibaba/doraemon/image/memory/NativeMemoryChunk;>;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 43
    .restart local v0    # "chunkRef":Lcom/alibaba/doraemon/image/memory/references/CloseableReference;, "Lcom/alibaba/doraemon/image/memory/references/CloseableReference<Lcom/alibaba/doraemon/image/memory/NativeMemoryChunk;>;"
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/alibaba/doraemon/image/memory/references/CloseableReference;->close()V

    throw v1
.end method

.method public newByteBuffer(Ljava/io/InputStream;)Lcom/alibaba/doraemon/image/memory/NativePooledByteBuffer;
    .locals 2
    .param p1, "inputStream"    # Ljava/io/InputStream;
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
    new-instance v0, Lcom/alibaba/doraemon/image/memory/NativePooledByteBufferOutputStream;

    iget-object v1, p0, Lcom/alibaba/doraemon/image/memory/NativePooledByteBufferFactory;->mPool:Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkPool;

    invoke-direct {v0, v1}, Lcom/alibaba/doraemon/image/memory/NativePooledByteBufferOutputStream;-><init>(Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkPool;)V

    .line 80
    .local v0, "outputStream":Lcom/alibaba/doraemon/image/memory/NativePooledByteBufferOutputStream;
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/doraemon/image/memory/NativePooledByteBufferFactory;->newByteBuf(Ljava/io/InputStream;Lcom/alibaba/doraemon/image/memory/NativePooledByteBufferOutputStream;)Lcom/alibaba/doraemon/image/memory/NativePooledByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 82
    invoke-virtual {v0}, Lcom/alibaba/doraemon/image/memory/NativePooledByteBufferOutputStream;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/alibaba/doraemon/image/memory/NativePooledByteBufferOutputStream;->close()V

    throw v1
.end method

.method public newByteBuffer(Ljava/io/InputStream;I)Lcom/alibaba/doraemon/image/memory/NativePooledByteBuffer;
    .locals 2
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "initialCapacity"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 162
    new-instance v0, Lcom/alibaba/doraemon/image/memory/NativePooledByteBufferOutputStream;

    iget-object v1, p0, Lcom/alibaba/doraemon/image/memory/NativePooledByteBufferFactory;->mPool:Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkPool;

    invoke-direct {v0, v1, p2}, Lcom/alibaba/doraemon/image/memory/NativePooledByteBufferOutputStream;-><init>(Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkPool;I)V

    .line 165
    .local v0, "outputStream":Lcom/alibaba/doraemon/image/memory/NativePooledByteBufferOutputStream;
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/doraemon/image/memory/NativePooledByteBufferFactory;->newByteBuf(Ljava/io/InputStream;Lcom/alibaba/doraemon/image/memory/NativePooledByteBufferOutputStream;)Lcom/alibaba/doraemon/image/memory/NativePooledByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 167
    invoke-virtual {v0}, Lcom/alibaba/doraemon/image/memory/NativePooledByteBufferOutputStream;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/alibaba/doraemon/image/memory/NativePooledByteBufferOutputStream;->close()V

    throw v1
.end method

.method public newByteBuffer([B)Lcom/alibaba/doraemon/image/memory/NativePooledByteBuffer;
    .locals 4
    .param p1, "bytes"    # [B

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 104
    new-instance v1, Lcom/alibaba/doraemon/image/memory/NativePooledByteBufferOutputStream;

    iget-object v2, p0, Lcom/alibaba/doraemon/image/memory/NativePooledByteBufferFactory;->mPool:Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkPool;

    array-length v3, p1

    invoke-direct {v1, v2, v3}, Lcom/alibaba/doraemon/image/memory/NativePooledByteBufferOutputStream;-><init>(Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkPool;I)V

    .line 107
    .local v1, "outputStream":Lcom/alibaba/doraemon/image/memory/NativePooledByteBufferOutputStream;
    const/4 v2, 0x0

    :try_start_0
    array-length v3, p1

    invoke-virtual {v1, p1, v2, v3}, Lcom/alibaba/doraemon/image/memory/NativePooledByteBufferOutputStream;->write([BII)V

    .line 108
    invoke-virtual {v1}, Lcom/alibaba/doraemon/image/memory/NativePooledByteBufferOutputStream;->toByteBuffer()Lcom/alibaba/doraemon/image/memory/NativePooledByteBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 112
    invoke-virtual {v1}, Lcom/alibaba/doraemon/image/memory/NativePooledByteBufferOutputStream;->close()V

    return-object v2

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "ioe":Ljava/io/IOException;
    :try_start_1
    invoke-static {v0}, Lcom/alibaba/doraemon/image/utils/Throwables;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    .end local v0    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Lcom/alibaba/doraemon/image/memory/NativePooledByteBufferOutputStream;->close()V

    throw v2
.end method

.method public newByteBuffer([BI)Lcom/alibaba/doraemon/image/memory/NativePooledByteBuffer;
    .locals 3
    .param p1, "bytes"    # [B
    .param p2, "size"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 139
    new-instance v1, Lcom/alibaba/doraemon/image/memory/NativePooledByteBufferOutputStream;

    iget-object v2, p0, Lcom/alibaba/doraemon/image/memory/NativePooledByteBufferFactory;->mPool:Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkPool;

    invoke-direct {v1, v2, p2}, Lcom/alibaba/doraemon/image/memory/NativePooledByteBufferOutputStream;-><init>(Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkPool;I)V

    .line 142
    .local v1, "outputStream":Lcom/alibaba/doraemon/image/memory/NativePooledByteBufferOutputStream;
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, p1, v2, p2}, Lcom/alibaba/doraemon/image/memory/NativePooledByteBufferOutputStream;->write([BII)V

    .line 143
    invoke-virtual {v1}, Lcom/alibaba/doraemon/image/memory/NativePooledByteBufferOutputStream;->toByteBuffer()Lcom/alibaba/doraemon/image/memory/NativePooledByteBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 147
    invoke-virtual {v1}, Lcom/alibaba/doraemon/image/memory/NativePooledByteBufferOutputStream;->close()V

    return-object v2

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, "ioe":Ljava/io/IOException;
    :try_start_1
    invoke-static {v0}, Lcom/alibaba/doraemon/image/utils/Throwables;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    .end local v0    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Lcom/alibaba/doraemon/image/memory/NativePooledByteBufferOutputStream;->close()V

    throw v2
.end method

.method public bridge synthetic newByteBuffer(I)Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lcom/alibaba/doraemon/image/memory/NativePooledByteBufferFactory;->newByteBuffer(I)Lcom/alibaba/doraemon/image/memory/NativePooledByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newByteBuffer(Ljava/io/InputStream;)Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lcom/alibaba/doraemon/image/memory/NativePooledByteBufferFactory;->newByteBuffer(Ljava/io/InputStream;)Lcom/alibaba/doraemon/image/memory/NativePooledByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newByteBuffer(Ljava/io/InputStream;I)Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/doraemon/image/memory/NativePooledByteBufferFactory;->newByteBuffer(Ljava/io/InputStream;I)Lcom/alibaba/doraemon/image/memory/NativePooledByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newByteBuffer([B)Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lcom/alibaba/doraemon/image/memory/NativePooledByteBufferFactory;->newByteBuffer([B)Lcom/alibaba/doraemon/image/memory/NativePooledByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newByteBuffer([BI)Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/doraemon/image/memory/NativePooledByteBufferFactory;->newByteBuffer([BI)Lcom/alibaba/doraemon/image/memory/NativePooledByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public newOutputStream()Lcom/alibaba/doraemon/image/memory/NativePooledByteBufferOutputStream;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 206
    new-instance v0, Lcom/alibaba/doraemon/image/memory/NativePooledByteBufferOutputStream;

    iget-object v1, p0, Lcom/alibaba/doraemon/image/memory/NativePooledByteBufferFactory;->mPool:Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkPool;

    invoke-direct {v0, v1}, Lcom/alibaba/doraemon/image/memory/NativePooledByteBufferOutputStream;-><init>(Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkPool;)V

    return-object v0
.end method

.method public newOutputStream(I)Lcom/alibaba/doraemon/image/memory/NativePooledByteBufferOutputStream;
    .locals 2
    .param p1, "initialCapacity"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 222
    new-instance v0, Lcom/alibaba/doraemon/image/memory/NativePooledByteBufferOutputStream;

    iget-object v1, p0, Lcom/alibaba/doraemon/image/memory/NativePooledByteBufferFactory;->mPool:Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkPool;

    invoke-direct {v0, v1, p1}, Lcom/alibaba/doraemon/image/memory/NativePooledByteBufferOutputStream;-><init>(Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkPool;I)V

    return-object v0
.end method

.method public bridge synthetic newOutputStream()Lcom/alibaba/doraemon/image/memory/PooledByteBufferOutputStream;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/alibaba/doraemon/image/memory/NativePooledByteBufferFactory;->newOutputStream()Lcom/alibaba/doraemon/image/memory/NativePooledByteBufferOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newOutputStream(I)Lcom/alibaba/doraemon/image/memory/PooledByteBufferOutputStream;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lcom/alibaba/doraemon/image/memory/NativePooledByteBufferFactory;->newOutputStream(I)Lcom/alibaba/doraemon/image/memory/NativePooledByteBufferOutputStream;

    move-result-object v0

    return-object v0
.end method
