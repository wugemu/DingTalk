.class Lcom/alibaba/doraemon/impl/audio/AudioCache$AudioRequestInputStream;
.super Lcom/alibaba/doraemon/request/RequestInputStream;
.source "AudioCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/impl/audio/AudioCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AudioRequestInputStream"
.end annotation


# instance fields
.field private mInputStream:Ljava/io/InputStream;

.field private mLength:I

.field final synthetic this$0:Lcom/alibaba/doraemon/impl/audio/AudioCache;


# direct methods
.method public constructor <init>(Lcom/alibaba/doraemon/impl/audio/AudioCache;Ljava/io/InputStream;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/impl/audio/AudioCache;
    .param p2, "inputStream"    # Ljava/io/InputStream;
    .param p3, "length"    # I

    .prologue
    .line 180
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/audio/AudioCache$AudioRequestInputStream;->this$0:Lcom/alibaba/doraemon/impl/audio/AudioCache;

    invoke-direct {p0}, Lcom/alibaba/doraemon/request/RequestInputStream;-><init>()V

    .line 181
    iput-object p2, p0, Lcom/alibaba/doraemon/impl/audio/AudioCache$AudioRequestInputStream;->mInputStream:Ljava/io/InputStream;

    .line 182
    iput p3, p0, Lcom/alibaba/doraemon/impl/audio/AudioCache$AudioRequestInputStream;->mLength:I

    .line 183
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
    .line 219
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/audio/AudioCache$AudioRequestInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 224
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/audio/AudioCache$AudioRequestInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 225
    return-void
.end method

.method public length()I
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Lcom/alibaba/doraemon/impl/audio/AudioCache$AudioRequestInputStream;->mLength:I

    return v0
.end method

.method public mark(I)V
    .locals 1
    .param p1, "readlimit"    # I

    .prologue
    .line 229
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/audio/AudioCache$AudioRequestInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    .line 230
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/audio/AudioCache$AudioRequestInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 239
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/audio/AudioCache$AudioRequestInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
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
    .line 245
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/audio/AudioCache$AudioRequestInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    return v0
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
    .line 251
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/audio/AudioCache$AudioRequestInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public declared-synchronized reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 256
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/audio/AudioCache$AudioRequestInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    monitor-exit p0

    return-void

    .line 256
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
    .line 261
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/audio/AudioCache$AudioRequestInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public toBytes()[B
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 186
    const/4 v0, 0x0

    .line 187
    .local v0, "byteBuffer":Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;
    const/4 v2, 0x0

    .line 188
    .local v2, "ret":[B
    iget v3, p0, Lcom/alibaba/doraemon/impl/audio/AudioCache$AudioRequestInputStream;->mLength:I

    const v4, 0x7d000

    if-ge v3, v4, :cond_0

    iget v3, p0, Lcom/alibaba/doraemon/impl/audio/AudioCache$AudioRequestInputStream;->mLength:I

    if-lez v3, :cond_0

    .line 191
    :try_start_0
    iget v3, p0, Lcom/alibaba/doraemon/impl/audio/AudioCache$AudioRequestInputStream;->mLength:I

    invoke-virtual {p0, v3}, Lcom/alibaba/doraemon/impl/audio/AudioCache$AudioRequestInputStream;->mark(I)V

    .line 192
    invoke-static {}, Lcom/alibaba/doraemon/image/memory/PoolFactory;->getInstance()Lcom/alibaba/doraemon/image/memory/PoolFactory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/doraemon/image/memory/PoolFactory;->getPooledByteBufferFactory()Lcom/alibaba/doraemon/image/memory/PooledByteBufferFactory;

    move-result-object v3

    iget v4, p0, Lcom/alibaba/doraemon/impl/audio/AudioCache$AudioRequestInputStream;->mLength:I

    invoke-interface {v3, p0, v4}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferFactory;->newByteBuffer(Ljava/io/InputStream;I)Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;

    move-result-object v0

    .line 194
    iget v3, p0, Lcom/alibaba/doraemon/impl/audio/AudioCache$AudioRequestInputStream;->mLength:I

    new-array v2, v3, [B

    .line 195
    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Lcom/alibaba/doraemon/impl/audio/AudioCache$AudioRequestInputStream;->mLength:I

    invoke-interface {v0, v3, v2, v4, v5}, Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;->read(I[BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/doraemon/impl/audio/AudioCache$AudioRequestInputStream;->reset()V

    .line 201
    if-eqz v0, :cond_0

    .line 202
    invoke-interface {v0}, Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 209
    :cond_0
    :goto_0
    return-object v2

    .line 203
    :catch_0
    move-exception v1

    .line 204
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 196
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 197
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 200
    :try_start_3
    invoke-virtual {p0}, Lcom/alibaba/doraemon/impl/audio/AudioCache$AudioRequestInputStream;->reset()V

    .line 201
    if-eqz v0, :cond_0

    .line 202
    invoke-interface {v0}, Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 203
    :catch_2
    move-exception v1

    .line 204
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 199
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 200
    :try_start_4
    invoke-virtual {p0}, Lcom/alibaba/doraemon/impl/audio/AudioCache$AudioRequestInputStream;->reset()V

    .line 201
    if-eqz v0, :cond_1

    .line 202
    invoke-interface {v0}, Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 205
    :cond_1
    :goto_1
    throw v3

    .line 203
    :catch_3
    move-exception v1

    .line 204
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method
