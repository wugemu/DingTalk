.class Lcom/alibaba/doraemon/impl/image/ImageCache$ImageRequestInputStream;
.super Lcom/alibaba/doraemon/request/RequestInputStream;
.source "ImageCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/impl/image/ImageCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImageRequestInputStream"
.end annotation


# instance fields
.field private mInputStream:Ljava/io/InputStream;

.field private mLength:I

.field final synthetic this$0:Lcom/alibaba/doraemon/impl/image/ImageCache;


# direct methods
.method public constructor <init>(Lcom/alibaba/doraemon/impl/image/ImageCache;Ljava/io/InputStream;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/impl/image/ImageCache;
    .param p2, "inputStream"    # Ljava/io/InputStream;
    .param p3, "length"    # I

    .prologue
    .line 294
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/image/ImageCache$ImageRequestInputStream;->this$0:Lcom/alibaba/doraemon/impl/image/ImageCache;

    invoke-direct {p0}, Lcom/alibaba/doraemon/request/RequestInputStream;-><init>()V

    .line 295
    iput-object p2, p0, Lcom/alibaba/doraemon/impl/image/ImageCache$ImageRequestInputStream;->mInputStream:Ljava/io/InputStream;

    .line 296
    iput p3, p0, Lcom/alibaba/doraemon/impl/image/ImageCache$ImageRequestInputStream;->mLength:I

    .line 297
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
    .line 334
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/ImageCache$ImageRequestInputStream;->mInputStream:Ljava/io/InputStream;

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
    .line 339
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/ImageCache$ImageRequestInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 340
    return-void
.end method

.method public length()I
    .locals 1

    .prologue
    .line 329
    iget v0, p0, Lcom/alibaba/doraemon/impl/image/ImageCache$ImageRequestInputStream;->mLength:I

    return v0
.end method

.method public mark(I)V
    .locals 1
    .param p1, "readlimit"    # I

    .prologue
    .line 344
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/ImageCache$ImageRequestInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    .line 345
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/ImageCache$ImageRequestInputStream;->mInputStream:Ljava/io/InputStream;

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
    .line 354
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/ImageCache$ImageRequestInputStream;->mInputStream:Ljava/io/InputStream;

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
    .line 360
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/ImageCache$ImageRequestInputStream;->mInputStream:Ljava/io/InputStream;

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
    .line 366
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/ImageCache$ImageRequestInputStream;->mInputStream:Ljava/io/InputStream;

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
    .line 371
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/ImageCache$ImageRequestInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 372
    monitor-exit p0

    return-void

    .line 371
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
    .line 376
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/ImageCache$ImageRequestInputStream;->mInputStream:Ljava/io/InputStream;

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
    .line 301
    const/4 v0, 0x0

    .line 302
    .local v0, "byteBuffer":Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;
    const/4 v2, 0x0

    .line 303
    .local v2, "ret":[B
    iget v3, p0, Lcom/alibaba/doraemon/impl/image/ImageCache$ImageRequestInputStream;->mLength:I

    const v4, 0x7d000

    if-ge v3, v4, :cond_0

    iget v3, p0, Lcom/alibaba/doraemon/impl/image/ImageCache$ImageRequestInputStream;->mLength:I

    if-lez v3, :cond_0

    .line 306
    :try_start_0
    iget v3, p0, Lcom/alibaba/doraemon/impl/image/ImageCache$ImageRequestInputStream;->mLength:I

    invoke-virtual {p0, v3}, Lcom/alibaba/doraemon/impl/image/ImageCache$ImageRequestInputStream;->mark(I)V

    .line 307
    invoke-static {}, Lcom/alibaba/doraemon/image/memory/PoolFactory;->getInstance()Lcom/alibaba/doraemon/image/memory/PoolFactory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/doraemon/image/memory/PoolFactory;->getPooledByteBufferFactory()Lcom/alibaba/doraemon/image/memory/PooledByteBufferFactory;

    move-result-object v3

    iget v4, p0, Lcom/alibaba/doraemon/impl/image/ImageCache$ImageRequestInputStream;->mLength:I

    invoke-interface {v3, p0, v4}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferFactory;->newByteBuffer(Ljava/io/InputStream;I)Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;

    move-result-object v0

    .line 309
    iget v3, p0, Lcom/alibaba/doraemon/impl/image/ImageCache$ImageRequestInputStream;->mLength:I

    new-array v2, v3, [B

    .line 310
    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Lcom/alibaba/doraemon/impl/image/ImageCache$ImageRequestInputStream;->mLength:I

    invoke-interface {v0, v3, v2, v4, v5}, Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;->read(I[BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/doraemon/impl/image/ImageCache$ImageRequestInputStream;->reset()V

    .line 316
    if-eqz v0, :cond_0

    .line 317
    invoke-interface {v0}, Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 324
    :cond_0
    :goto_0
    return-object v2

    .line 318
    :catch_0
    move-exception v1

    .line 319
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 311
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 312
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 315
    :try_start_3
    invoke-virtual {p0}, Lcom/alibaba/doraemon/impl/image/ImageCache$ImageRequestInputStream;->reset()V

    .line 316
    if-eqz v0, :cond_0

    .line 317
    invoke-interface {v0}, Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 318
    :catch_2
    move-exception v1

    .line 319
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 314
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 315
    :try_start_4
    invoke-virtual {p0}, Lcom/alibaba/doraemon/impl/image/ImageCache$ImageRequestInputStream;->reset()V

    .line 316
    if-eqz v0, :cond_1

    .line 317
    invoke-interface {v0}, Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 320
    :cond_1
    :goto_1
    throw v3

    .line 318
    :catch_3
    move-exception v1

    .line 319
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method
