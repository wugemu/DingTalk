.class Lcom/alibaba/doraemon/impl/request/OutInputStream$ByteBufferInputStream;
.super Lcom/alibaba/doraemon/impl/request/OutInputStream;
.source "OutInputStream.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/impl/request/OutInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ByteBufferInputStream"
.end annotation


# direct methods
.method public constructor <init>(Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;)V
    .locals 1
    .param p1, "byteBuffer"    # Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;

    .prologue
    .line 223
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/request/OutInputStream;-><init>()V

    .line 226
    new-instance v0, Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;

    invoke-direct {v0, p1}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;-><init>(Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;)V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/request/OutInputStream$ByteBufferInputStream;->mInputStream:Ljava/io/InputStream;

    .line 227
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 242
    const/4 v1, 0x0

    .line 244
    .local v1, "inStream":Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;

    invoke-static {}, Lcom/alibaba/doraemon/image/memory/PoolFactory;->getInstance()Lcom/alibaba/doraemon/image/memory/PoolFactory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/doraemon/image/memory/PoolFactory;->getPooledByteBufferFactory()Lcom/alibaba/doraemon/image/memory/PooledByteBufferFactory;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/doraemon/impl/request/OutInputStream$ByteBufferInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-interface {v3, v4}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferFactory;->newByteBuffer(Ljava/io/InputStream;)Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;-><init>(Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "inStream":Ljava/io/InputStream;
    .local v2, "inStream":Ljava/io/InputStream;
    move-object v1, v2

    .line 249
    .end local v2    # "inStream":Ljava/io/InputStream;
    .restart local v1    # "inStream":Ljava/io/InputStream;
    :goto_0
    return-object v1

    .line 245
    :catch_0
    move-exception v0

    .line 246
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

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
    .line 237
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/OutInputStream$ByteBufferInputStream;->mInputStream:Ljava/io/InputStream;

    check-cast v0, Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;->closeByteBuffer()V

    .line 238
    return-void
.end method

.method public declared-synchronized reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 232
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/OutInputStream$ByteBufferInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    monitor-exit p0

    return-void

    .line 232
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
