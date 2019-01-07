.class public Lcom/alibaba/doraemon/impl/request/HugeFileDLHandler;
.super Lcom/alibaba/doraemon/impl/request/DownloaderHandler;
.source "HugeFileDLHandler.java"


# instance fields
.field private mSkip:J


# direct methods
.method public constructor <init>(Lcom/alibaba/doraemon/impl/request/DownloaderHandler$ExceptionHandler;J)V
    .locals 2
    .param p1, "exceptionHandler"    # Lcom/alibaba/doraemon/impl/request/DownloaderHandler$ExceptionHandler;
    .param p2, "start"    # J

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/doraemon/impl/request/DownloaderHandler;-><init>(Lcom/alibaba/doraemon/impl/request/DownloaderHandler$ExceptionHandler;J)V

    .line 24
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/doraemon/impl/request/HugeFileDLHandler;->mSkip:J

    .line 27
    iput-wide p2, p0, Lcom/alibaba/doraemon/impl/request/HugeFileDLHandler;->mSkip:J

    .line 28
    return-void
.end method


# virtual methods
.method public deliveryException(Lcom/alibaba/doraemon/impl/request/VolleyRequest;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
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

    .prologue
    .line 139
    .local p1, "request":Lcom/alibaba/doraemon/impl/request/VolleyRequest;, "Lcom/alibaba/doraemon/impl/request/VolleyRequest<*>;"
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/doraemon/impl/request/DownloaderHandler;->deliveryException(Lcom/alibaba/doraemon/impl/request/VolleyRequest;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/HugeFileDLHandler;->mPBOutputStream:Lcom/alibaba/doraemon/image/memory/PooledByteBufferOutputStream;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/HugeFileDLHandler;->mPBOutputStream:Lcom/alibaba/doraemon/image/memory/PooledByteBufferOutputStream;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferOutputStream;->close()V

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/HugeFileDLHandler;->mExceptionHandler:Lcom/alibaba/doraemon/impl/request/DownloaderHandler$ExceptionHandler;

    invoke-interface {v0, p2, p3}, Lcom/alibaba/doraemon/impl/request/DownloaderHandler$ExceptionHandler;->onExceptionHandle(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public finishSegment(Lcom/alibaba/doraemon/impl/request/ResponseDelivery;Lcom/alibaba/doraemon/impl/request/VolleyRequest;Lcom/alibaba/doraemon/lwp/LWPFileSegment;)Z
    .locals 16
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

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 89
    .local p2, "request":Lcom/alibaba/doraemon/impl/request/VolleyRequest;, "Lcom/alibaba/doraemon/impl/request/VolleyRequest<*>;"
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/alibaba/doraemon/impl/request/HugeFileDLHandler;->mInvalid:Z

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/doraemon/impl/request/HugeFileDLHandler;->mPBOutputStream:Lcom/alibaba/doraemon/image/memory/PooledByteBufferOutputStream;

    if-nez v2, :cond_1

    .line 90
    :cond_0
    const-string/jumbo v2, "0"

    const-string/jumbo v4, "File Segment range error !!!"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v2, v4}, Lcom/alibaba/doraemon/impl/request/HugeFileDLHandler;->deliveryException(Lcom/alibaba/doraemon/impl/request/VolleyRequest;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const/4 v2, 0x0

    .line 129
    :goto_0
    return v2

    .line 94
    :cond_1
    const/4 v13, 0x0

    .line 96
    .local v13, "pbInputStream":Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;
    :try_start_0
    invoke-interface/range {p3 .. p3}, Lcom/alibaba/doraemon/lwp/LWPFileSegment;->getData()[B

    move-result-object v11

    .line 97
    .local v11, "data":[B
    if-eqz v11, :cond_2

    .line 98
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/doraemon/impl/request/HugeFileDLHandler;->mPBOutputStream:Lcom/alibaba/doraemon/image/memory/PooledByteBufferOutputStream;

    invoke-virtual {v2, v11}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferOutputStream;->write([B)V

    .line 101
    :cond_2
    new-instance v3, Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/doraemon/impl/request/HugeFileDLHandler;->mPBOutputStream:Lcom/alibaba/doraemon/image/memory/PooledByteBufferOutputStream;

    invoke-virtual {v2}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferOutputStream;->toByteBuffer()Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;-><init>(Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 102
    .end local v13    # "pbInputStream":Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;
    .local v3, "pbInputStream":Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;
    :try_start_1
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/alibaba/doraemon/impl/request/HugeFileDLHandler;->mSkip:J

    invoke-interface/range {p3 .. p3}, Lcom/alibaba/doraemon/lwp/LWPFileSegment;->getTotalLength()J

    move-result-wide v6

    long-to-int v2, v6

    int-to-long v6, v2

    const/4 v9, 0x1

    move-object/from16 v2, p0

    move-object/from16 v8, p2

    invoke-virtual/range {v2 .. v9}, Lcom/alibaba/doraemon/impl/request/HugeFileDLHandler;->putSegToCache(Ljava/io/InputStream;JJLcom/alibaba/doraemon/impl/request/VolleyRequest;Z)Z

    move-result v2

    if-nez v2, :cond_5

    .line 103
    const-string/jumbo v2, "0"

    const-string/jumbo v4, "HugeFileDLHandler putSegToCache fail!"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v2, v4}, Lcom/alibaba/doraemon/impl/request/HugeFileDLHandler;->deliveryException(Lcom/alibaba/doraemon/impl/request/VolleyRequest;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 112
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/doraemon/impl/request/HugeFileDLHandler;->mPBOutputStream:Lcom/alibaba/doraemon/image/memory/PooledByteBufferOutputStream;

    invoke-virtual {v2}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 114
    if-eqz v3, :cond_3

    .line 115
    invoke-virtual {v3}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;->closeByteBuffer()V

    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 114
    :catchall_0
    move-exception v2

    if-eqz v3, :cond_4

    .line 115
    invoke-virtual {v3}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;->closeByteBuffer()V

    :cond_4
    throw v2

    .line 112
    :cond_5
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/doraemon/impl/request/HugeFileDLHandler;->mPBOutputStream:Lcom/alibaba/doraemon/image/memory/PooledByteBufferOutputStream;

    invoke-virtual {v2}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 114
    if-eqz v3, :cond_6

    .line 115
    invoke-virtual {v3}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;->closeByteBuffer()V

    .line 120
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/impl/request/HugeFileDLHandler;->getCacheClient(Lcom/alibaba/doraemon/impl/request/VolleyRequest;)Lcom/alibaba/doraemon/request/CacheClient;

    move-result-object v10

    .line 121
    .local v10, "cacheClient":Lcom/alibaba/doraemon/request/CacheClient;
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->getRequest()Lcom/alibaba/doraemon/request/Request;

    move-result-object v2

    invoke-interface {v10, v2}, Lcom/alibaba/doraemon/request/CacheClient;->onReadData(Lcom/alibaba/doraemon/request/Request;)Lcom/alibaba/doraemon/request/Response;

    move-result-object v14

    .line 122
    .local v14, "response":Lcom/alibaba/doraemon/request/Response;
    if-eqz v14, :cond_c

    .line 123
    invoke-interface {v14}, Lcom/alibaba/doraemon/request/Response;->getResponseBody()Lcom/alibaba/doraemon/request/RequestInputStream;

    move-result-object v15

    .line 124
    .local v15, "responseBody":Lcom/alibaba/doraemon/request/RequestInputStream;
    const/16 v2, 0xc8

    invoke-virtual {v15}, Lcom/alibaba/doraemon/request/RequestInputStream;->length()I

    move-result v4

    int-to-long v4, v4

    const/4 v6, 0x0

    invoke-static {v2, v15, v4, v5, v6}, Lcom/alibaba/doraemon/impl/request/VolleyResponse;->success(ILjava/lang/Object;JLjava/util/Map;)Lcom/alibaba/doraemon/impl/request/VolleyResponse;

    move-result-object v2

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/impl/request/ResponseDelivery;->postResponse(Lcom/alibaba/doraemon/impl/request/VolleyRequest;Lcom/alibaba/doraemon/impl/request/VolleyResponse;)V

    .line 129
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 114
    .end local v10    # "cacheClient":Lcom/alibaba/doraemon/request/CacheClient;
    .end local v14    # "response":Lcom/alibaba/doraemon/request/Response;
    .end local v15    # "responseBody":Lcom/alibaba/doraemon/request/RequestInputStream;
    :catchall_1
    move-exception v2

    if-eqz v3, :cond_7

    .line 115
    invoke-virtual {v3}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;->closeByteBuffer()V

    :cond_7
    throw v2

    .line 107
    .end local v3    # "pbInputStream":Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;
    .end local v11    # "data":[B
    .restart local v13    # "pbInputStream":Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;
    :catch_0
    move-exception v12

    move-object v3, v13

    .line 108
    .end local v13    # "pbInputStream":Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;
    .restart local v3    # "pbInputStream":Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;
    .local v12, "e":Ljava/io/IOException;
    :goto_1
    :try_start_4
    const-string/jumbo v2, "0"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "HugeFileDLHandler "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v2, v4}, Lcom/alibaba/doraemon/impl/request/HugeFileDLHandler;->deliveryException(Lcom/alibaba/doraemon/impl/request/VolleyRequest;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 112
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/doraemon/impl/request/HugeFileDLHandler;->mPBOutputStream:Lcom/alibaba/doraemon/image/memory/PooledByteBufferOutputStream;

    invoke-virtual {v2}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 114
    if-eqz v3, :cond_8

    .line 115
    invoke-virtual {v3}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;->closeByteBuffer()V

    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 114
    :catchall_2
    move-exception v2

    if-eqz v3, :cond_9

    .line 115
    invoke-virtual {v3}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;->closeByteBuffer()V

    :cond_9
    throw v2

    .line 111
    .end local v3    # "pbInputStream":Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;
    .end local v12    # "e":Ljava/io/IOException;
    .restart local v13    # "pbInputStream":Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;
    :catchall_3
    move-exception v2

    move-object v3, v13

    .line 112
    .end local v13    # "pbInputStream":Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;
    .restart local v3    # "pbInputStream":Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;
    :goto_2
    :try_start_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/doraemon/impl/request/HugeFileDLHandler;->mPBOutputStream:Lcom/alibaba/doraemon/image/memory/PooledByteBufferOutputStream;

    invoke-virtual {v4}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferOutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 114
    if-eqz v3, :cond_a

    .line 115
    invoke-virtual {v3}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;->closeByteBuffer()V

    :cond_a
    throw v2

    .line 114
    :catchall_4
    move-exception v2

    if-eqz v3, :cond_b

    .line 115
    invoke-virtual {v3}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;->closeByteBuffer()V

    :cond_b
    throw v2

    .line 126
    .restart local v10    # "cacheClient":Lcom/alibaba/doraemon/request/CacheClient;
    .restart local v11    # "data":[B
    .restart local v14    # "response":Lcom/alibaba/doraemon/request/Response;
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/doraemon/impl/request/HugeFileDLHandler;->mExceptionHandler:Lcom/alibaba/doraemon/impl/request/DownloaderHandler$ExceptionHandler;

    const-string/jumbo v4, "0"

    const-string/jumbo v5, "response body is null !!"

    invoke-interface {v2, v4, v5}, Lcom/alibaba/doraemon/impl/request/DownloaderHandler$ExceptionHandler;->onExceptionHandle(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 111
    .end local v10    # "cacheClient":Lcom/alibaba/doraemon/request/CacheClient;
    .end local v11    # "data":[B
    .end local v14    # "response":Lcom/alibaba/doraemon/request/Response;
    :catchall_5
    move-exception v2

    goto :goto_2

    .line 107
    .restart local v11    # "data":[B
    :catch_1
    move-exception v12

    goto :goto_1
.end method

.method public isHuge()Z
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x1

    return v0
.end method

.method public processSegment(Lcom/alibaba/doraemon/impl/request/VolleyRequest;Lcom/alibaba/doraemon/lwp/LWPFileSegment;)Z
    .locals 13
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

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 32
    .local p1, "request":Lcom/alibaba/doraemon/impl/request/VolleyRequest;, "Lcom/alibaba/doraemon/impl/request/VolleyRequest<*>;"
    iget-boolean v0, p0, Lcom/alibaba/doraemon/impl/request/HugeFileDLHandler;->mInvalid:Z

    if-eqz v0, :cond_0

    .line 33
    const-string/jumbo v0, "0"

    const-string/jumbo v2, "File Segment range error !!!"

    invoke-virtual {p0, p1, v0, v2}, Lcom/alibaba/doraemon/impl/request/HugeFileDLHandler;->deliveryException(Lcom/alibaba/doraemon/impl/request/VolleyRequest;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const/4 v0, 0x0

    .line 84
    :goto_0
    return v0

    .line 37
    :cond_0
    invoke-virtual {p0, p2}, Lcom/alibaba/doraemon/impl/request/HugeFileDLHandler;->isInvalidFileSegment(Lcom/alibaba/doraemon/lwp/LWPFileSegment;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/doraemon/impl/request/HugeFileDLHandler;->mInvalid:Z

    .line 40
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/HugeFileDLHandler;->mPBOutputStream:Lcom/alibaba/doraemon/image/memory/PooledByteBufferOutputStream;

    if-eqz v0, :cond_1

    .line 41
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/HugeFileDLHandler;->mPBOutputStream:Lcom/alibaba/doraemon/image/memory/PooledByteBufferOutputStream;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferOutputStream;->close()V

    .line 43
    :cond_1
    invoke-virtual {p0, p1}, Lcom/alibaba/doraemon/impl/request/HugeFileDLHandler;->getCacheClient(Lcom/alibaba/doraemon/impl/request/VolleyRequest;)Lcom/alibaba/doraemon/request/CacheClient;

    move-result-object v8

    .line 44
    .local v8, "cacheClient":Lcom/alibaba/doraemon/request/CacheClient;
    invoke-virtual {p1}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->getRequest()Lcom/alibaba/doraemon/request/Request;

    move-result-object v0

    invoke-interface {v8, v0}, Lcom/alibaba/doraemon/request/CacheClient;->onRemoveData(Lcom/alibaba/doraemon/request/Request;)Z

    .line 46
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v12

    .line 47
    .local v12, "stringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v0, "invalid segment "

    invoke-virtual {v12, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const/16 v2, 0x3a

    .line 48
    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(C)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v2, "path"

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(C)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const/16 v2, 0x3a

    .line 49
    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(C)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v2, "start"

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(C)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/alibaba/doraemon/impl/request/HugeFileDLHandler;->mStart:J

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(J)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const/16 v2, 0x3a

    .line 50
    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(C)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v2, "fstart"

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(C)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    invoke-interface {p2}, Lcom/alibaba/doraemon/lwp/LWPFileSegment;->getStart()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(J)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 52
    const-string/jumbo v0, "0"

    invoke-virtual {v12}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v2}, Lcom/alibaba/doraemon/impl/request/HugeFileDLHandler;->deliveryException(Lcom/alibaba/doraemon/impl/request/VolleyRequest;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 56
    .end local v8    # "cacheClient":Lcom/alibaba/doraemon/request/CacheClient;
    .end local v12    # "stringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :cond_2
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/HugeFileDLHandler;->mPBOutputStream:Lcom/alibaba/doraemon/image/memory/PooledByteBufferOutputStream;

    if-nez v0, :cond_3

    .line 57
    invoke-static {}, Lcom/alibaba/doraemon/image/memory/PoolFactory;->getInstance()Lcom/alibaba/doraemon/image/memory/PoolFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/doraemon/image/memory/PoolFactory;->getPooledByteBufferFactory()Lcom/alibaba/doraemon/image/memory/PooledByteBufferFactory;

    move-result-object v0

    const/high16 v2, 0x10000

    invoke-interface {v0, v2}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferFactory;->newOutputStream(I)Lcom/alibaba/doraemon/image/memory/PooledByteBufferOutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/request/HugeFileDLHandler;->mPBOutputStream:Lcom/alibaba/doraemon/image/memory/PooledByteBufferOutputStream;

    .line 60
    :cond_3
    const/4 v10, 0x0

    .line 62
    .local v10, "pbInputStream":Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/HugeFileDLHandler;->mPBOutputStream:Lcom/alibaba/doraemon/image/memory/PooledByteBufferOutputStream;

    invoke-interface {p2}, Lcom/alibaba/doraemon/lwp/LWPFileSegment;->getData()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferOutputStream;->write([B)V

    .line 63
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/HugeFileDLHandler;->mPBOutputStream:Lcom/alibaba/doraemon/image/memory/PooledByteBufferOutputStream;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferOutputStream;->size()I

    move-result v11

    .line 64
    .local v11, "size":I
    const v0, 0xf000

    if-lt v11, v0, :cond_9

    .line 65
    new-instance v1, Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;

    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/HugeFileDLHandler;->mPBOutputStream:Lcom/alibaba/doraemon/image/memory/PooledByteBufferOutputStream;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferOutputStream;->toByteBuffer()Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;-><init>(Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .end local v10    # "pbInputStream":Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;
    .local v1, "pbInputStream":Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;
    :try_start_1
    iget-wide v2, p0, Lcom/alibaba/doraemon/impl/request/HugeFileDLHandler;->mSkip:J

    invoke-interface {p2}, Lcom/alibaba/doraemon/lwp/LWPFileSegment;->getTotalLength()J

    move-result-wide v4

    long-to-int v0, v4

    int-to-long v4, v0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v6, p1

    invoke-virtual/range {v0 .. v7}, Lcom/alibaba/doraemon/impl/request/HugeFileDLHandler;->putSegToCache(Ljava/io/InputStream;JJLcom/alibaba/doraemon/impl/request/VolleyRequest;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 67
    invoke-interface {p2}, Lcom/alibaba/doraemon/lwp/LWPFileSegment;->getEnd()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/alibaba/doraemon/impl/request/HugeFileDLHandler;->mSkip:J

    .line 68
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/HugeFileDLHandler;->mPBOutputStream:Lcom/alibaba/doraemon/image/memory/PooledByteBufferOutputStream;

    const/high16 v2, 0x10000

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferOutputStream;->reset(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 78
    :goto_1
    if-eqz v1, :cond_4

    .line 79
    invoke-virtual {v1}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;->closeByteBuffer()V

    .line 83
    :cond_4
    invoke-interface {p2}, Lcom/alibaba/doraemon/lwp/LWPFileSegment;->getEnd()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/alibaba/doraemon/impl/request/HugeFileDLHandler;->mStart:J

    .line 84
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 70
    :cond_5
    :try_start_2
    const-string/jumbo v0, "0"

    const-string/jumbo v2, "HugeFileDLHandler putSegToCache fail!"

    invoke-virtual {p0, p1, v0, v2}, Lcom/alibaba/doraemon/impl/request/HugeFileDLHandler;->deliveryException(Lcom/alibaba/doraemon/impl/request/VolleyRequest;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 78
    if-eqz v1, :cond_6

    .line 79
    invoke-virtual {v1}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;->closeByteBuffer()V

    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 74
    .end local v1    # "pbInputStream":Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;
    .end local v11    # "size":I
    .restart local v10    # "pbInputStream":Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;
    :catch_0
    move-exception v9

    move-object v1, v10

    .line 75
    .end local v10    # "pbInputStream":Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;
    .restart local v1    # "pbInputStream":Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;
    .local v9, "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string/jumbo v0, "0"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "HugeFileDLHandler "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v2}, Lcom/alibaba/doraemon/impl/request/HugeFileDLHandler;->deliveryException(Lcom/alibaba/doraemon/impl/request/VolleyRequest;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 78
    if-eqz v1, :cond_7

    .line 79
    invoke-virtual {v1}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;->closeByteBuffer()V

    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 78
    .end local v1    # "pbInputStream":Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;
    .end local v9    # "e":Ljava/io/IOException;
    .restart local v10    # "pbInputStream":Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;
    :catchall_0
    move-exception v0

    move-object v1, v10

    .end local v10    # "pbInputStream":Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;
    .restart local v1    # "pbInputStream":Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;
    :goto_3
    if-eqz v1, :cond_8

    .line 79
    invoke-virtual {v1}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;->closeByteBuffer()V

    :cond_8
    throw v0

    .line 78
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 74
    .restart local v11    # "size":I
    :catch_1
    move-exception v9

    goto :goto_2

    .end local v1    # "pbInputStream":Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;
    .restart local v10    # "pbInputStream":Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;
    :cond_9
    move-object v1, v10

    .end local v10    # "pbInputStream":Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;
    .restart local v1    # "pbInputStream":Lcom/alibaba/doraemon/image/memory/PooledByteBufferInputStream;
    goto :goto_1
.end method
