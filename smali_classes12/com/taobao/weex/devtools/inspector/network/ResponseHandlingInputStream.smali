.class public final Lcom/taobao/weex/devtools/inspector/network/ResponseHandlingInputStream;
.super Ljava/io/FilterInputStream;
.source "ResponseHandlingInputStream.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x400

.field public static final TAG:Ljava/lang/String; = "ResponseHandlingInputStream"


# instance fields
.field private mClosed:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mDecompressedCounter:Lcom/taobao/weex/devtools/inspector/network/CountingOutputStream;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mEofSeen:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mLastDecompressedCount:J

.field private final mNetworkPeerManager:Lcom/taobao/weex/devtools/inspector/helper/ChromePeerManager;

.field private final mOutputStream:Ljava/io/OutputStream;

.field private final mRequestId:Ljava/lang/String;

.field private final mResponseHandler:Lcom/taobao/weex/devtools/inspector/network/ResponseHandler;

.field private mSkipBuffer:[B
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/io/OutputStream;Lcom/taobao/weex/devtools/inspector/network/CountingOutputStream;Lcom/taobao/weex/devtools/inspector/helper/ChromePeerManager;Lcom/taobao/weex/devtools/inspector/network/ResponseHandler;)V
    .locals 2
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "requestId"    # Ljava/lang/String;
    .param p3, "outputStream"    # Ljava/io/OutputStream;
    .param p4, "decompressedCounter"    # Lcom/taobao/weex/devtools/inspector/network/CountingOutputStream;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "networkPeerManager"    # Lcom/taobao/weex/devtools/inspector/helper/ChromePeerManager;
    .param p6, "responseHandler"    # Lcom/taobao/weex/devtools/inspector/network/ResponseHandler;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 57
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/taobao/weex/devtools/inspector/network/ResponseHandlingInputStream;->mLastDecompressedCount:J

    .line 79
    iput-object p2, p0, Lcom/taobao/weex/devtools/inspector/network/ResponseHandlingInputStream;->mRequestId:Ljava/lang/String;

    .line 80
    iput-object p3, p0, Lcom/taobao/weex/devtools/inspector/network/ResponseHandlingInputStream;->mOutputStream:Ljava/io/OutputStream;

    .line 81
    iput-object p4, p0, Lcom/taobao/weex/devtools/inspector/network/ResponseHandlingInputStream;->mDecompressedCounter:Lcom/taobao/weex/devtools/inspector/network/CountingOutputStream;

    .line 82
    iput-object p5, p0, Lcom/taobao/weex/devtools/inspector/network/ResponseHandlingInputStream;->mNetworkPeerManager:Lcom/taobao/weex/devtools/inspector/helper/ChromePeerManager;

    .line 83
    iput-object p6, p0, Lcom/taobao/weex/devtools/inspector/network/ResponseHandlingInputStream;->mResponseHandler:Lcom/taobao/weex/devtools/inspector/network/ResponseHandler;

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taobao/weex/devtools/inspector/network/ResponseHandlingInputStream;->mClosed:Z

    .line 85
    return-void
.end method

.method private declared-synchronized checkEOF(I)I
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 88
    monitor-enter p0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 89
    :try_start_0
    invoke-direct {p0}, Lcom/taobao/weex/devtools/inspector/network/ResponseHandlingInputStream;->closeOutputStreamQuietly()V

    .line 90
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/network/ResponseHandlingInputStream;->mResponseHandler:Lcom/taobao/weex/devtools/inspector/network/ResponseHandler;

    invoke-interface {v0}, Lcom/taobao/weex/devtools/inspector/network/ResponseHandler;->onEOF()V

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/weex/devtools/inspector/network/ResponseHandlingInputStream;->mEofSeen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :cond_0
    monitor-exit p0

    return p1

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized closeOutputStreamQuietly()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 199
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/taobao/weex/devtools/inspector/network/ResponseHandlingInputStream;->mClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 201
    :try_start_1
    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/network/ResponseHandlingInputStream;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 202
    invoke-direct {p0}, Lcom/taobao/weex/devtools/inspector/network/ResponseHandlingInputStream;->reportDecodedSizeIfApplicable()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 210
    const/4 v1, 0x1

    :try_start_2
    iput-boolean v1, p0, Lcom/taobao/weex/devtools/inspector/network/ResponseHandlingInputStream;->mClosed:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 213
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/network/ResponseHandlingInputStream;->mNetworkPeerManager:Lcom/taobao/weex/devtools/inspector/helper/ChromePeerManager;

    sget-object v2, Lcom/taobao/weex/devtools/inspector/protocol/module/Console$MessageLevel;->ERROR:Lcom/taobao/weex/devtools/inspector/protocol/module/Console$MessageLevel;

    sget-object v3, Lcom/taobao/weex/devtools/inspector/protocol/module/Console$MessageSource;->NETWORK:Lcom/taobao/weex/devtools/inspector/protocol/module/Console$MessageSource;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Could not close the output stream"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/taobao/weex/devtools/inspector/console/CLog;->writeToConsole(Lcom/taobao/weex/devtools/inspector/helper/ChromePeerManager;Lcom/taobao/weex/devtools/inspector/protocol/module/Console$MessageLevel;Lcom/taobao/weex/devtools/inspector/protocol/module/Console$MessageSource;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 210
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/taobao/weex/devtools/inspector/network/ResponseHandlingInputStream;->mClosed:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 199
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 210
    :catchall_1
    move-exception v1

    const/4 v2, 0x1

    :try_start_5
    iput-boolean v2, p0, Lcom/taobao/weex/devtools/inspector/network/ResponseHandlingInputStream;->mClosed:Z

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method private getSkipBufferLocked()[B
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 147
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/network/ResponseHandlingInputStream;->mSkipBuffer:[B

    if-nez v0, :cond_0

    .line 148
    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/taobao/weex/devtools/inspector/network/ResponseHandlingInputStream;->mSkipBuffer:[B

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/network/ResponseHandlingInputStream;->mSkipBuffer:[B

    return-object v0
.end method

.method private handleIOException(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 1
    .param p1, "ex"    # Ljava/io/IOException;

    .prologue
    .line 222
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/network/ResponseHandlingInputStream;->mResponseHandler:Lcom/taobao/weex/devtools/inspector/network/ResponseHandler;

    invoke-interface {v0, p1}, Lcom/taobao/weex/devtools/inspector/network/ResponseHandler;->onError(Ljava/io/IOException;)V

    .line 223
    return-object p1
.end method

.method private handleIOExceptionWritingToStream(Ljava/io/IOException;)V
    .locals 5
    .param p1, "e"    # Ljava/io/IOException;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 270
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/network/ResponseHandlingInputStream;->mNetworkPeerManager:Lcom/taobao/weex/devtools/inspector/helper/ChromePeerManager;

    sget-object v1, Lcom/taobao/weex/devtools/inspector/protocol/module/Console$MessageLevel;->ERROR:Lcom/taobao/weex/devtools/inspector/protocol/module/Console$MessageLevel;

    sget-object v2, Lcom/taobao/weex/devtools/inspector/protocol/module/Console$MessageSource;->NETWORK:Lcom/taobao/weex/devtools/inspector/protocol/module/Console$MessageSource;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Could not write response body to the stream "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/taobao/weex/devtools/inspector/console/CLog;->writeToConsole(Lcom/taobao/weex/devtools/inspector/helper/ChromePeerManager;Lcom/taobao/weex/devtools/inspector/protocol/module/Console$MessageLevel;Lcom/taobao/weex/devtools/inspector/protocol/module/Console$MessageSource;Ljava/lang/String;)V

    .line 276
    invoke-direct {p0}, Lcom/taobao/weex/devtools/inspector/network/ResponseHandlingInputStream;->closeOutputStreamQuietly()V

    .line 277
    return-void
.end method

.method private reportDecodedSizeIfApplicable()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 227
    iget-object v3, p0, Lcom/taobao/weex/devtools/inspector/network/ResponseHandlingInputStream;->mDecompressedCounter:Lcom/taobao/weex/devtools/inspector/network/CountingOutputStream;

    if-eqz v3, :cond_0

    .line 228
    iget-object v3, p0, Lcom/taobao/weex/devtools/inspector/network/ResponseHandlingInputStream;->mDecompressedCounter:Lcom/taobao/weex/devtools/inspector/network/CountingOutputStream;

    invoke-virtual {v3}, Lcom/taobao/weex/devtools/inspector/network/CountingOutputStream;->getCount()J

    move-result-wide v0

    .line 229
    .local v0, "currentCount":J
    iget-wide v4, p0, Lcom/taobao/weex/devtools/inspector/network/ResponseHandlingInputStream;->mLastDecompressedCount:J

    sub-long v4, v0, v4

    long-to-int v2, v4

    .line 230
    .local v2, "delta":I
    iget-object v3, p0, Lcom/taobao/weex/devtools/inspector/network/ResponseHandlingInputStream;->mResponseHandler:Lcom/taobao/weex/devtools/inspector/network/ResponseHandler;

    invoke-interface {v3, v2}, Lcom/taobao/weex/devtools/inspector/network/ResponseHandler;->onReadDecoded(I)V

    .line 231
    iput-wide v0, p0, Lcom/taobao/weex/devtools/inspector/network/ResponseHandlingInputStream;->mLastDecompressedCount:J

    .line 233
    .end local v0    # "currentCount":J
    .end local v2    # "delta":I
    :cond_0
    return-void
.end method

.method private declared-synchronized writeToOutputStream(I)V
    .locals 2
    .param p1, "oneByte"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 241
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/taobao/weex/devtools/inspector/network/ResponseHandlingInputStream;->mClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 251
    :goto_0
    monitor-exit p0

    return-void

    .line 246
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/network/ResponseHandlingInputStream;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write(I)V

    .line 247
    invoke-direct {p0}, Lcom/taobao/weex/devtools/inspector/network/ResponseHandlingInputStream;->reportDecodedSizeIfApplicable()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 248
    :catch_0
    move-exception v0

    .line 249
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    invoke-direct {p0, v0}, Lcom/taobao/weex/devtools/inspector/network/ResponseHandlingInputStream;->handleIOExceptionWritingToStream(Ljava/io/IOException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 241
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized writeToOutputStream([BII)V
    .locals 2
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 257
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/taobao/weex/devtools/inspector/network/ResponseHandlingInputStream;->mClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 267
    :goto_0
    monitor-exit p0

    return-void

    .line 262
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/network/ResponseHandlingInputStream;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 263
    invoke-direct {p0}, Lcom/taobao/weex/devtools/inspector/network/ResponseHandlingInputStream;->reportDecodedSizeIfApplicable()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 264
    :catch_0
    move-exception v0

    .line 265
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    invoke-direct {p0, v0}, Lcom/taobao/weex/devtools/inspector/network/ResponseHandlingInputStream;->handleIOExceptionWritingToStream(Ljava/io/IOException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 257
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public final close()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 173
    const-wide/16 v2, 0x0

    .line 174
    .local v2, "bytesRead":J
    :try_start_0
    iget-boolean v4, p0, Lcom/taobao/weex/devtools/inspector/network/ResponseHandlingInputStream;->mEofSeen:Z

    if-nez v4, :cond_0

    .line 175
    const/16 v4, 0x400

    new-array v0, v4, [B

    .line 177
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {p0, v0}, Lcom/taobao/weex/devtools/inspector/network/ResponseHandlingInputStream;->read([B)I

    move-result v1

    .local v1, "count":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 178
    int-to-long v4, v1

    add-long/2addr v2, v4

    goto :goto_0

    .line 181
    .end local v0    # "buffer":[B
    .end local v1    # "count":I
    :cond_0
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    .line 182
    iget-object v4, p0, Lcom/taobao/weex/devtools/inspector/network/ResponseHandlingInputStream;->mNetworkPeerManager:Lcom/taobao/weex/devtools/inspector/helper/ChromePeerManager;

    sget-object v5, Lcom/taobao/weex/devtools/inspector/protocol/module/Console$MessageLevel;->ERROR:Lcom/taobao/weex/devtools/inspector/protocol/module/Console$MessageLevel;

    sget-object v6, Lcom/taobao/weex/devtools/inspector/protocol/module/Console$MessageSource;->NETWORK:Lcom/taobao/weex/devtools/inspector/protocol/module/Console$MessageSource;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "There were "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 186
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " bytes that were not consumed while processing request "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/taobao/weex/devtools/inspector/network/ResponseHandlingInputStream;->mRequestId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 182
    invoke-static {v4, v5, v6, v7}, Lcom/taobao/weex/devtools/inspector/console/CLog;->writeToConsole(Lcom/taobao/weex/devtools/inspector/helper/ChromePeerManager;Lcom/taobao/weex/devtools/inspector/protocol/module/Console$MessageLevel;Lcom/taobao/weex/devtools/inspector/protocol/module/Console$MessageSource;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    :cond_1
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    .line 191
    invoke-direct {p0}, Lcom/taobao/weex/devtools/inspector/network/ResponseHandlingInputStream;->closeOutputStreamQuietly()V

    .line 192
    return-void

    .line 190
    :catchall_0
    move-exception v4

    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    .line 191
    invoke-direct {p0}, Lcom/taobao/weex/devtools/inspector/network/ResponseHandlingInputStream;->closeOutputStreamQuietly()V

    throw v4
.end method

.method public final mark(I)V
    .locals 0
    .param p1, "readlimit"    # I

    .prologue
    .line 163
    return-void
.end method

.method public final markSupported()Z
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x0

    return v0
.end method

.method public final read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 99
    :try_start_0
    iget-object v2, p0, Lcom/taobao/weex/devtools/inspector/network/ResponseHandlingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/taobao/weex/devtools/inspector/network/ResponseHandlingInputStream;->checkEOF(I)I

    move-result v1

    .line 100
    .local v1, "result":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 101
    iget-object v2, p0, Lcom/taobao/weex/devtools/inspector/network/ResponseHandlingInputStream;->mResponseHandler:Lcom/taobao/weex/devtools/inspector/network/ResponseHandler;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/taobao/weex/devtools/inspector/network/ResponseHandler;->onRead(I)V

    .line 102
    invoke-direct {p0, v1}, Lcom/taobao/weex/devtools/inspector/network/ResponseHandlingInputStream;->writeToOutputStream(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :cond_0
    return v1

    .line 105
    .end local v1    # "result":I
    :catch_0
    move-exception v0

    .line 106
    .local v0, "ex":Ljava/io/IOException;
    invoke-direct {p0, v0}, Lcom/taobao/weex/devtools/inspector/network/ResponseHandlingInputStream;->handleIOException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v2

    throw v2
.end method

.method public final read([B)I
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 112
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/taobao/weex/devtools/inspector/network/ResponseHandlingInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public final read([BII)I
    .locals 3
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 118
    :try_start_0
    iget-object v2, p0, Lcom/taobao/weex/devtools/inspector/network/ResponseHandlingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/taobao/weex/devtools/inspector/network/ResponseHandlingInputStream;->checkEOF(I)I

    move-result v1

    .line 119
    .local v1, "result":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 120
    iget-object v2, p0, Lcom/taobao/weex/devtools/inspector/network/ResponseHandlingInputStream;->mResponseHandler:Lcom/taobao/weex/devtools/inspector/network/ResponseHandler;

    invoke-interface {v2, v1}, Lcom/taobao/weex/devtools/inspector/network/ResponseHandler;->onRead(I)V

    .line 121
    invoke-direct {p0, p1, p2, v1}, Lcom/taobao/weex/devtools/inspector/network/ResponseHandlingInputStream;->writeToOutputStream([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :cond_0
    return v1

    .line 124
    .end local v1    # "result":I
    :catch_0
    move-exception v0

    .line 125
    .local v0, "ex":Ljava/io/IOException;
    invoke-direct {p0, v0}, Lcom/taobao/weex/devtools/inspector/network/ResponseHandlingInputStream;->handleIOException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v2

    throw v2
.end method

.method public final reset()V
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
    .line 167
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Mark not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final declared-synchronized skip(J)J
    .locals 11
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/taobao/weex/devtools/inspector/network/ResponseHandlingInputStream;->getSkipBufferLocked()[B

    move-result-object v0

    .line 132
    .local v0, "buffer":[B
    const-wide/16 v6, 0x0

    .line 133
    .local v6, "total":J
    :goto_0
    cmp-long v5, v6, p1

    if-gez v5, :cond_0

    .line 134
    sub-long v2, p1, v6

    .line 135
    .local v2, "bytesDiff":J
    array-length v5, v0

    int-to-long v8, v5

    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    long-to-int v1, v8

    .line 136
    .local v1, "bytesToRead":I
    const/4 v5, 0x0

    invoke-virtual {p0, v0, v5, v1}, Lcom/taobao/weex/devtools/inspector/network/ResponseHandlingInputStream;->read([BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 137
    .local v4, "result":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 140
    int-to-long v8, v4

    add-long/2addr v6, v8

    .line 141
    goto :goto_0

    .line 142
    .end local v1    # "bytesToRead":I
    .end local v2    # "bytesDiff":J
    .end local v4    # "result":I
    :cond_0
    monitor-exit p0

    return-wide v6

    .line 131
    .end local v0    # "buffer":[B
    .end local v6    # "total":J
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method
