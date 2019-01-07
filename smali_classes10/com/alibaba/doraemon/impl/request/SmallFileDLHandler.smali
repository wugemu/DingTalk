.class public Lcom/alibaba/doraemon/impl/request/SmallFileDLHandler;
.super Lcom/alibaba/doraemon/impl/request/DownloaderHandler;
.source "SmallFileDLHandler.java"


# direct methods
.method public constructor <init>(Lcom/alibaba/doraemon/impl/request/DownloaderHandler$ExceptionHandler;J)V
    .locals 0
    .param p1, "exceptionHandler"    # Lcom/alibaba/doraemon/impl/request/DownloaderHandler$ExceptionHandler;
    .param p2, "start"    # J

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/doraemon/impl/request/DownloaderHandler;-><init>(Lcom/alibaba/doraemon/impl/request/DownloaderHandler$ExceptionHandler;J)V

    .line 25
    return-void
.end method


# virtual methods
.method public deliveryException(Lcom/alibaba/doraemon/impl/request/VolleyRequest;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p2, "code"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/doraemon/impl/request/VolleyRequest",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 116
    .local p1, "request":Lcom/alibaba/doraemon/impl/request/VolleyRequest;, "Lcom/alibaba/doraemon/impl/request/VolleyRequest<*>;"
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/doraemon/impl/request/DownloaderHandler;->deliveryException(Lcom/alibaba/doraemon/impl/request/VolleyRequest;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/SmallFileDLHandler;->mPBOutputStream:Lcom/alibaba/doraemon/image/memory/PooledByteBufferOutputStream;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/SmallFileDLHandler;->mPBOutputStream:Lcom/alibaba/doraemon/image/memory/PooledByteBufferOutputStream;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferOutputStream;->close()V

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/SmallFileDLHandler;->mExceptionHandler:Lcom/alibaba/doraemon/impl/request/DownloaderHandler$ExceptionHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lcom/alibaba/doraemon/impl/request/DownloaderHandler$ExceptionHandler;->onExceptionHandle(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public finishSegment(Lcom/alibaba/doraemon/impl/request/ResponseDelivery;Lcom/alibaba/doraemon/impl/request/VolleyRequest;Lcom/alibaba/doraemon/lwp/LWPFileSegment;)Z
    .locals 10
    .param p1, "delivery"    # Lcom/alibaba/doraemon/impl/request/ResponseDelivery;
    .param p3, "fileSegment"    # Lcom/alibaba/doraemon/lwp/LWPFileSegment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/doraemon/impl/request/ResponseDelivery;",
            "Lcom/alibaba/doraemon/impl/request/VolleyRequest",
            "<*>;",
            "Lcom/alibaba/doraemon/lwp/LWPFileSegment;",
            ")Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p2, "request":Lcom/alibaba/doraemon/impl/request/VolleyRequest;, "Lcom/alibaba/doraemon/impl/request/VolleyRequest<*>;"
    const/4 v8, 0x0

    .line 71
    iget-boolean v0, p0, Lcom/alibaba/doraemon/impl/request/SmallFileDLHandler;->mInvalid:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/SmallFileDLHandler;->mPBOutputStream:Lcom/alibaba/doraemon/image/memory/PooledByteBufferOutputStream;

    if-nez v0, :cond_1

    .line 72
    :cond_0
    const-string/jumbo v0, "0"

    const-string/jumbo v1, "SmallFileDLHandler request range is error!"

    invoke-virtual {p0, p2, v0, v1}, Lcom/alibaba/doraemon/impl/request/SmallFileDLHandler;->deliveryException(Lcom/alibaba/doraemon/impl/request/VolleyRequest;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v8

    .line 106
    :goto_0
    return v0

    .line 77
    :cond_1
    :try_start_0
    invoke-interface {p3}, Lcom/alibaba/doraemon/lwp/LWPFileSegment;->getData()[B

    move-result-object v6

    .line 78
    .local v6, "data":[B
    if-eqz v6, :cond_2

    .line 79
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/SmallFileDLHandler;->mPBOutputStream:Lcom/alibaba/doraemon/image/memory/PooledByteBufferOutputStream;

    invoke-virtual {v0, v6}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferOutputStream;->write([B)V

    .line 82
    :cond_2
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/SmallFileDLHandler;->mPBOutputStream:Lcom/alibaba/doraemon/image/memory/PooledByteBufferOutputStream;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferOutputStream;->size()I

    move-result v5

    .line 84
    .local v5, "size":I
    const/16 v0, 0xc8

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/request/SmallFileDLHandler;->mPBOutputStream:Lcom/alibaba/doraemon/image/memory/PooledByteBufferOutputStream;

    .line 85
    invoke-virtual {v1}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferOutputStream;->toByteBuffer()Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;

    move-result-object v1

    int-to-long v2, v5

    invoke-static {v1, v2, v3}, Lcom/alibaba/doraemon/impl/request/OutInputStream;->fromPooledByteBuffer(Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;J)Lcom/alibaba/doraemon/impl/request/OutInputStream;

    move-result-object v1

    int-to-long v2, v5

    const/4 v9, 0x0

    .line 84
    invoke-static {v0, v1, v2, v3, v9}, Lcom/alibaba/doraemon/impl/request/VolleyResponse;->success(ILjava/lang/Object;JLjava/util/Map;)Lcom/alibaba/doraemon/impl/request/VolleyResponse;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lcom/alibaba/doraemon/impl/request/ResponseDelivery;->postResponse(Lcom/alibaba/doraemon/impl/request/VolleyRequest;Lcom/alibaba/doraemon/impl/request/VolleyResponse;)V

    .line 87
    new-instance v4, Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;

    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/SmallFileDLHandler;->mPBOutputStream:Lcom/alibaba/doraemon/image/memory/PooledByteBufferOutputStream;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferOutputStream;->toByteBuffer()Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;-><init>(Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;)V

    .line 88
    .local v4, "inputStream":Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;
    invoke-virtual {p0}, Lcom/alibaba/doraemon/impl/request/SmallFileDLHandler;->getDownloadThread()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v9

    new-instance v0, Lcom/alibaba/doraemon/impl/request/SmallFileDLHandler$1;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/doraemon/impl/request/SmallFileDLHandler$1;-><init>(Lcom/alibaba/doraemon/impl/request/SmallFileDLHandler;Lcom/alibaba/doraemon/lwp/LWPFileSegment;Lcom/alibaba/doraemon/impl/request/VolleyRequest;Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;I)V

    invoke-interface {v9, v0}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/SmallFileDLHandler;->mPBOutputStream:Lcom/alibaba/doraemon/image/memory/PooledByteBufferOutputStream;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferOutputStream;->close()V

    .line 106
    const/4 v0, 0x1

    goto :goto_0

    .line 99
    .end local v4    # "inputStream":Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;
    .end local v5    # "size":I
    .end local v6    # "data":[B
    :catch_0
    move-exception v7

    .line 100
    .local v7, "e":Ljava/io/IOException;
    :try_start_1
    const-string/jumbo v0, "0"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "SmallFileDLHandler "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p2, v0, v1}, Lcom/alibaba/doraemon/impl/request/SmallFileDLHandler;->deliveryException(Lcom/alibaba/doraemon/impl/request/VolleyRequest;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/SmallFileDLHandler;->mPBOutputStream:Lcom/alibaba/doraemon/image/memory/PooledByteBufferOutputStream;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferOutputStream;->close()V

    move v0, v8

    goto :goto_0

    .end local v7    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/request/SmallFileDLHandler;->mPBOutputStream:Lcom/alibaba/doraemon/image/memory/PooledByteBufferOutputStream;

    invoke-virtual {v1}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferOutputStream;->close()V

    throw v0
.end method

.method public isHuge()Z
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public processSegment(Lcom/alibaba/doraemon/impl/request/VolleyRequest;Lcom/alibaba/doraemon/lwp/LWPFileSegment;)Z
    .locals 10
    .param p2, "fileSegment"    # Lcom/alibaba/doraemon/lwp/LWPFileSegment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/doraemon/impl/request/VolleyRequest",
            "<*>;",
            "Lcom/alibaba/doraemon/lwp/LWPFileSegment;",
            ")Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p1, "request":Lcom/alibaba/doraemon/impl/request/VolleyRequest;, "Lcom/alibaba/doraemon/impl/request/VolleyRequest<*>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v8, 0x3a

    .line 29
    iget-boolean v5, p0, Lcom/alibaba/doraemon/impl/request/SmallFileDLHandler;->mInvalid:Z

    if-eqz v5, :cond_0

    .line 30
    const-string/jumbo v4, "0"

    const-string/jumbo v5, "SmallFileDLHandler request range is error!"

    invoke-virtual {p0, p1, v4, v5}, Lcom/alibaba/doraemon/impl/request/SmallFileDLHandler;->deliveryException(Lcom/alibaba/doraemon/impl/request/VolleyRequest;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :goto_0
    return v3

    .line 34
    :cond_0
    invoke-virtual {p0, p2}, Lcom/alibaba/doraemon/impl/request/SmallFileDLHandler;->isInvalidFileSegment(Lcom/alibaba/doraemon/lwp/LWPFileSegment;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 35
    iput-boolean v4, p0, Lcom/alibaba/doraemon/impl/request/SmallFileDLHandler;->mInvalid:Z

    .line 37
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/request/SmallFileDLHandler;->mPBOutputStream:Lcom/alibaba/doraemon/image/memory/PooledByteBufferOutputStream;

    if-eqz v4, :cond_1

    .line 38
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/request/SmallFileDLHandler;->mPBOutputStream:Lcom/alibaba/doraemon/image/memory/PooledByteBufferOutputStream;

    invoke-virtual {v4}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferOutputStream;->close()V

    .line 41
    :cond_1
    invoke-virtual {p0, p1}, Lcom/alibaba/doraemon/impl/request/SmallFileDLHandler;->getCacheClient(Lcom/alibaba/doraemon/impl/request/VolleyRequest;)Lcom/alibaba/doraemon/request/CacheClient;

    move-result-object v0

    .line 42
    .local v0, "cacheClient":Lcom/alibaba/doraemon/request/CacheClient;
    invoke-virtual {p1}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->getRequest()Lcom/alibaba/doraemon/request/Request;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/alibaba/doraemon/request/CacheClient;->onRemoveData(Lcom/alibaba/doraemon/request/Request;)Z

    .line 44
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    .line 45
    .local v2, "stringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v4, "invalid segment "

    invoke-virtual {v2, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    .line 46
    invoke-virtual {v4, v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(C)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    const-string/jumbo v5, "path"

    invoke-virtual {v4, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(C)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    .line 47
    invoke-virtual {v4, v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(C)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    const-string/jumbo v5, "start"

    invoke-virtual {v4, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(C)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/alibaba/doraemon/impl/request/SmallFileDLHandler;->mStart:J

    invoke-virtual {v4, v6, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(J)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    .line 48
    invoke-virtual {v4, v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(C)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    const-string/jumbo v5, "fstart"

    invoke-virtual {v4, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(C)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    invoke-interface {p2}, Lcom/alibaba/doraemon/lwp/LWPFileSegment;->getStart()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(J)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 50
    const-string/jumbo v4, "0"

    const-string/jumbo v5, "SmallFileDLHandler request range is error!"

    invoke-virtual {p0, p1, v4, v5}, Lcom/alibaba/doraemon/impl/request/SmallFileDLHandler;->deliveryException(Lcom/alibaba/doraemon/impl/request/VolleyRequest;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 54
    .end local v0    # "cacheClient":Lcom/alibaba/doraemon/request/CacheClient;
    .end local v2    # "stringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :cond_2
    iget-object v5, p0, Lcom/alibaba/doraemon/impl/request/SmallFileDLHandler;->mPBOutputStream:Lcom/alibaba/doraemon/image/memory/PooledByteBufferOutputStream;

    if-nez v5, :cond_3

    .line 55
    invoke-static {}, Lcom/alibaba/doraemon/image/memory/PoolFactory;->getInstance()Lcom/alibaba/doraemon/image/memory/PoolFactory;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/doraemon/image/memory/PoolFactory;->getPooledByteBufferFactory()Lcom/alibaba/doraemon/image/memory/PooledByteBufferFactory;

    move-result-object v5

    const/high16 v6, 0x10000

    invoke-interface {v5, v6}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferFactory;->newOutputStream(I)Lcom/alibaba/doraemon/image/memory/PooledByteBufferOutputStream;

    move-result-object v5

    iput-object v5, p0, Lcom/alibaba/doraemon/impl/request/SmallFileDLHandler;->mPBOutputStream:Lcom/alibaba/doraemon/image/memory/PooledByteBufferOutputStream;

    .line 59
    :cond_3
    :try_start_0
    iget-object v5, p0, Lcom/alibaba/doraemon/impl/request/SmallFileDLHandler;->mPBOutputStream:Lcom/alibaba/doraemon/image/memory/PooledByteBufferOutputStream;

    invoke-interface {p2}, Lcom/alibaba/doraemon/lwp/LWPFileSegment;->getData()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    invoke-interface {p2}, Lcom/alibaba/doraemon/lwp/LWPFileSegment;->getEnd()J

    move-result-wide v6

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/alibaba/doraemon/impl/request/SmallFileDLHandler;->mStart:J

    move v3, v4

    .line 66
    goto/16 :goto_0

    .line 60
    :catch_0
    move-exception v1

    .line 61
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v4, "0"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "SmallFileDLHandler "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p1, v4, v5}, Lcom/alibaba/doraemon/impl/request/SmallFileDLHandler;->deliveryException(Lcom/alibaba/doraemon/impl/request/VolleyRequest;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
