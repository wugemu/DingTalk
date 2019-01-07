.class final Ldse$a;
.super Lcom/alibaba/doraemon/request/RequestInputStream;
.source "VideoCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Ldse;

.field private b:Ljava/io/InputStream;

.field private c:I


# direct methods
.method public constructor <init>(Ldse;Ljava/io/InputStream;I)V
    .locals 0
    .param p1, "this$0"    # Ldse;
    .param p2, "inputStream"    # Ljava/io/InputStream;
    .param p3, "length"    # I

    .prologue
    .line 173
    iput-object p1, p0, Ldse$a;->a:Ldse;

    invoke-direct {p0}, Lcom/alibaba/doraemon/request/RequestInputStream;-><init>()V

    .line 174
    iput-object p2, p0, Ldse$a;->b:Ljava/io/InputStream;

    .line 175
    iput p3, p0, Ldse$a;->c:I

    .line 176
    return-void
.end method


# virtual methods
.method public final available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 212
    iget-object v0, p0, Ldse$a;->b:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Ldse$a;->b:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    .line 217
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/alibaba/doraemon/request/RequestInputStream;->available()I

    move-result v0

    goto :goto_0
.end method

.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 222
    iget-object v0, p0, Ldse$a;->b:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Ldse$a;->b:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 225
    :cond_0
    return-void
.end method

.method public final length()I
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Ldse$a;->c:I

    return v0
.end method

.method public final mark(I)V
    .locals 1
    .param p1, "readlimit"    # I

    .prologue
    .line 229
    iget-object v0, p0, Ldse$a;->b:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Ldse$a;->b:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    .line 232
    :cond_0
    return-void
.end method

.method public final markSupported()Z
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Ldse$a;->b:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Ldse$a;->b:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    .line 240
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/alibaba/doraemon/request/RequestInputStream;->markSupported()Z

    move-result v0

    goto :goto_0
.end method

.method public final read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 245
    iget-object v0, p0, Ldse$a;->b:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Ldse$a;->b:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 249
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final read([B)I
    .locals 1
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 255
    iget-object v0, p0, Ldse$a;->b:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Ldse$a;->b:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 259
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final read([BII)I
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
    .line 265
    iget-object v0, p0, Ldse$a;->b:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Ldse$a;->b:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 269
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final declared-synchronized reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 274
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldse$a;->b:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Ldse$a;->b:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    :cond_0
    monitor-exit p0

    return-void

    .line 274
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final skip(J)J
    .locals 3
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 281
    iget-object v0, p0, Ldse$a;->b:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Ldse$a;->b:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .line 285
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public final toBytes()[B
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 179
    const/4 v0, 0x0

    .line 180
    .local v0, "byteBuffer":Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;
    const/4 v2, 0x0

    .line 181
    .local v2, "ret":[B
    iget v3, p0, Ldse$a;->c:I

    const v4, 0x7d000

    if-ge v3, v4, :cond_0

    iget v3, p0, Ldse$a;->c:I

    if-lez v3, :cond_0

    .line 184
    :try_start_0
    iget v3, p0, Ldse$a;->c:I

    invoke-virtual {p0, v3}, Ldse$a;->mark(I)V

    .line 185
    invoke-static {}, Lcom/alibaba/doraemon/image/memory/PoolFactory;->getInstance()Lcom/alibaba/doraemon/image/memory/PoolFactory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/doraemon/image/memory/PoolFactory;->getPooledByteBufferFactory()Lcom/alibaba/doraemon/image/memory/PooledByteBufferFactory;

    move-result-object v3

    iget v4, p0, Ldse$a;->c:I

    invoke-interface {v3, p0, v4}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferFactory;->newByteBuffer(Ljava/io/InputStream;I)Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;

    move-result-object v0

    .line 187
    iget v3, p0, Ldse$a;->c:I

    new-array v2, v3, [B

    .line 188
    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Ldse$a;->c:I

    invoke-interface {v0, v3, v2, v4, v5}, Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;->read(I[BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    :try_start_1
    invoke-virtual {p0}, Ldse$a;->reset()V

    .line 194
    if-eqz v0, :cond_0

    .line 195
    invoke-interface {v0}, Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 202
    :cond_0
    :goto_0
    return-object v2

    .line 196
    :catch_0
    move-exception v1

    .line 197
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 189
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 190
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 193
    :try_start_3
    invoke-virtual {p0}, Ldse$a;->reset()V

    .line 194
    if-eqz v0, :cond_0

    .line 195
    invoke-interface {v0}, Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 196
    :catch_2
    move-exception v1

    .line 197
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 192
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 193
    :try_start_4
    invoke-virtual {p0}, Ldse$a;->reset()V

    .line 194
    if-eqz v0, :cond_1

    .line 195
    invoke-interface {v0}, Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 198
    :cond_1
    :goto_1
    throw v3

    .line 196
    :catch_3
    move-exception v1

    .line 197
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method
