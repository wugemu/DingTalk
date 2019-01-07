.class public Lcom/alibaba/doraemon/impl/request/OutInputStream;
.super Lcom/alibaba/doraemon/request/RequestInputStream;
.source "OutInputStream.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/doraemon/impl/request/OutInputStream$LocalFileInputStream;,
        Lcom/alibaba/doraemon/impl/request/OutInputStream$ByteBufferInputStream;
    }
.end annotation


# static fields
.field public static final MAX_BUFFER_STREAM_SIZE:I = 0x400

.field public static final MaxBufferedSize:I = 0x2000


# instance fields
.field protected mInputStream:Ljava/io/InputStream;

.field protected mLength:I


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 26
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/alibaba/doraemon/impl/request/OutInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 27
    return-void
.end method

.method protected constructor <init>(Ljava/io/InputStream;I)V
    .locals 1
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "length"    # I

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/alibaba/doraemon/request/RequestInputStream;-><init>()V

    .line 479
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/request/OutInputStream;->mInputStream:Ljava/io/InputStream;

    .line 33
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/request/OutInputStream;->mInputStream:Ljava/io/InputStream;

    .line 34
    iput p2, p0, Lcom/alibaba/doraemon/impl/request/OutInputStream;->mLength:I

    .line 35
    return-void
.end method

.method public static fromBytes([B)Lcom/alibaba/doraemon/impl/request/OutInputStream;
    .locals 3
    .param p0, "bytes"    # [B

    .prologue
    .line 38
    const/4 v1, 0x0

    .line 40
    .local v1, "ret":Lcom/alibaba/doraemon/impl/request/OutInputStream;
    if-eqz p0, :cond_0

    array-length v2, p0

    if-lez v2, :cond_0

    .line 43
    new-instance v0, Lcom/alibaba/doraemon/impl/request/OutInputStream$1;

    invoke-direct {v0, p0, p0}, Lcom/alibaba/doraemon/impl/request/OutInputStream$1;-><init>([B[B)V

    .line 50
    .local v0, "bis":Ljava/io/ByteArrayInputStream;
    new-instance v1, Lcom/alibaba/doraemon/impl/request/OutInputStream;

    .end local v1    # "ret":Lcom/alibaba/doraemon/impl/request/OutInputStream;
    array-length v2, p0

    invoke-direct {v1, v0, v2}, Lcom/alibaba/doraemon/impl/request/OutInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 53
    .end local v0    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "ret":Lcom/alibaba/doraemon/impl/request/OutInputStream;
    :cond_0
    return-object v1
.end method

.method public static fromInputStream(Ljava/io/InputStream;J)Lcom/alibaba/doraemon/impl/request/OutInputStream;
    .locals 9
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "length"    # J

    .prologue
    .line 57
    const/4 v0, 0x0

    .line 59
    .local v0, "ret":Lcom/alibaba/doraemon/impl/request/OutInputStream;
    if-eqz p0, :cond_0

    .line 61
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 62
    new-instance v0, Lcom/alibaba/doraemon/impl/request/OutInputStream$2;

    .end local v0    # "ret":Lcom/alibaba/doraemon/impl/request/OutInputStream;
    long-to-int v2, p1

    move-object v1, p0

    move-object v3, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/doraemon/impl/request/OutInputStream$2;-><init>(Ljava/io/InputStream;ILjava/io/InputStream;J)V

    .line 107
    .restart local v0    # "ret":Lcom/alibaba/doraemon/impl/request/OutInputStream;
    :cond_0
    :goto_0
    return-object v0

    .line 69
    :cond_1
    new-instance v2, Lcom/alibaba/doraemon/impl/request/OutInputStream$3;

    long-to-int v4, p1

    move-object v3, p0

    move-object v5, p0

    move-wide v6, p1

    invoke-direct/range {v2 .. v7}, Lcom/alibaba/doraemon/impl/request/OutInputStream$3;-><init>(Ljava/io/InputStream;ILjava/io/InputStream;J)V

    .line 103
    .local v2, "bis":Ljava/io/BufferedInputStream;
    new-instance v0, Lcom/alibaba/doraemon/impl/request/OutInputStream;

    .end local v0    # "ret":Lcom/alibaba/doraemon/impl/request/OutInputStream;
    long-to-int v1, p1

    invoke-direct {v0, v2, v1}, Lcom/alibaba/doraemon/impl/request/OutInputStream;-><init>(Ljava/io/InputStream;I)V

    .restart local v0    # "ret":Lcom/alibaba/doraemon/impl/request/OutInputStream;
    goto :goto_0
.end method

.method public static fromLocalFile(Ljava/lang/String;)Lcom/alibaba/doraemon/impl/request/OutInputStream;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 122
    const/4 v1, 0x0

    .line 124
    .local v1, "ret":Lcom/alibaba/doraemon/impl/request/OutInputStream;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 125
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 126
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 127
    new-instance v1, Lcom/alibaba/doraemon/impl/request/OutInputStream$LocalFileInputStream;

    .end local v1    # "ret":Lcom/alibaba/doraemon/impl/request/OutInputStream;
    invoke-direct {v1, v0}, Lcom/alibaba/doraemon/impl/request/OutInputStream$LocalFileInputStream;-><init>(Ljava/io/File;)V

    .line 129
    .restart local v1    # "ret":Lcom/alibaba/doraemon/impl/request/OutInputStream;
    iget-object v2, v1, Lcom/alibaba/doraemon/impl/request/OutInputStream;->mInputStream:Ljava/io/InputStream;

    if-nez v2, :cond_0

    .line 130
    const/4 v1, 0x0

    .line 135
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    return-object v1
.end method

.method public static fromPooledByteBuffer(Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;J)Lcom/alibaba/doraemon/impl/request/OutInputStream;
    .locals 3
    .param p0, "byteBuffer"    # Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;
    .param p1, "length"    # J

    .prologue
    .line 111
    const/4 v1, 0x0

    .line 113
    .local v1, "ret":Lcom/alibaba/doraemon/impl/request/OutInputStream;
    if-eqz p0, :cond_0

    .line 114
    new-instance v0, Lcom/alibaba/doraemon/impl/request/OutInputStream$ByteBufferInputStream;

    invoke-direct {v0, p0}, Lcom/alibaba/doraemon/impl/request/OutInputStream$ByteBufferInputStream;-><init>(Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;)V

    .line 115
    .local v0, "inputStream":Lcom/alibaba/doraemon/impl/request/OutInputStream$ByteBufferInputStream;
    new-instance v1, Lcom/alibaba/doraemon/impl/request/OutInputStream;

    .end local v1    # "ret":Lcom/alibaba/doraemon/impl/request/OutInputStream;
    long-to-int v2, p1

    invoke-direct {v1, v0, v2}, Lcom/alibaba/doraemon/impl/request/OutInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 118
    .end local v0    # "inputStream":Lcom/alibaba/doraemon/impl/request/OutInputStream$ByteBufferInputStream;
    .restart local v1    # "ret":Lcom/alibaba/doraemon/impl/request/OutInputStream;
    :cond_0
    return-object v1
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
    .line 180
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/OutInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 210
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/OutInputStream;->mInputStream:Ljava/io/InputStream;

    check-cast v0, Lcom/alibaba/doraemon/impl/request/OutInputStream;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/request/OutInputStream;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 185
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/OutInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 186
    return-void
.end method

.method public length()I
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Lcom/alibaba/doraemon/impl/request/OutInputStream;->mLength:I

    return v0
.end method

.method public mark(I)V
    .locals 1
    .param p1, "readlimit"    # I

    .prologue
    .line 190
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/OutInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    .line 191
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/OutInputStream;->mInputStream:Ljava/io/InputStream;

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
    .line 175
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/OutInputStream;->mInputStream:Ljava/io/InputStream;

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
    .line 200
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/OutInputStream;->mInputStream:Ljava/io/InputStream;

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
    .line 205
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/OutInputStream;->mInputStream:Ljava/io/InputStream;

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
    .line 214
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/OutInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    monitor-exit p0

    return-void

    .line 214
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
    .line 218
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/OutInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public toBytes()[B
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 140
    const/4 v0, 0x0

    .line 141
    .local v0, "byteBuffer":Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;
    const/4 v3, 0x0

    .line 142
    .local v3, "ret":[B
    iget v4, p0, Lcom/alibaba/doraemon/impl/request/OutInputStream;->mLength:I

    const v5, 0x7d000

    if-gt v4, v5, :cond_0

    iget v4, p0, Lcom/alibaba/doraemon/impl/request/OutInputStream;->mLength:I

    if-lez v4, :cond_0

    .line 145
    :try_start_0
    iget v4, p0, Lcom/alibaba/doraemon/impl/request/OutInputStream;->mLength:I

    invoke-virtual {p0, v4}, Lcom/alibaba/doraemon/impl/request/OutInputStream;->mark(I)V

    .line 146
    invoke-static {}, Lcom/alibaba/doraemon/image/memory/PoolFactory;->getInstance()Lcom/alibaba/doraemon/image/memory/PoolFactory;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/doraemon/image/memory/PoolFactory;->getPooledByteBufferFactory()Lcom/alibaba/doraemon/image/memory/PooledByteBufferFactory;

    move-result-object v4

    iget v5, p0, Lcom/alibaba/doraemon/impl/request/OutInputStream;->mLength:I

    invoke-interface {v4, p0, v5}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferFactory;->newByteBuffer(Ljava/io/InputStream;I)Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;

    move-result-object v0

    .line 148
    iget v4, p0, Lcom/alibaba/doraemon/impl/request/OutInputStream;->mLength:I

    new-array v3, v4, [B

    .line 149
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v0}, Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;->size()I

    move-result v6

    invoke-interface {v0, v4, v3, v5, v6}, Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;->read(I[BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/alibaba/doraemon/image/memory/PooledByteBuffer$ClosedException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/doraemon/impl/request/OutInputStream;->reset()V

    .line 157
    if-eqz v0, :cond_0

    .line 158
    invoke-interface {v0}, Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 165
    :cond_0
    :goto_0
    return-object v3

    .line 159
    :catch_0
    move-exception v1

    .line 160
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 150
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 151
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 156
    :try_start_3
    invoke-virtual {p0}, Lcom/alibaba/doraemon/impl/request/OutInputStream;->reset()V

    .line 157
    if-eqz v0, :cond_0

    .line 158
    invoke-interface {v0}, Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 159
    :catch_2
    move-exception v1

    .line 160
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 152
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 153
    .local v2, "e2":Lcom/alibaba/doraemon/image/memory/PooledByteBuffer$ClosedException;
    :try_start_4
    invoke-virtual {v2}, Lcom/alibaba/doraemon/image/memory/PooledByteBuffer$ClosedException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 156
    :try_start_5
    invoke-virtual {p0}, Lcom/alibaba/doraemon/impl/request/OutInputStream;->reset()V

    .line 157
    if-eqz v0, :cond_0

    .line 158
    invoke-interface {v0}, Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    .line 159
    :catch_4
    move-exception v1

    .line 160
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 155
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "e2":Lcom/alibaba/doraemon/image/memory/PooledByteBuffer$ClosedException;
    :catchall_0
    move-exception v4

    .line 156
    :try_start_6
    invoke-virtual {p0}, Lcom/alibaba/doraemon/impl/request/OutInputStream;->reset()V

    .line 157
    if-eqz v0, :cond_1

    .line 158
    invoke-interface {v0}, Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 161
    :cond_1
    :goto_1
    throw v4

    .line 159
    :catch_5
    move-exception v1

    .line 160
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method
