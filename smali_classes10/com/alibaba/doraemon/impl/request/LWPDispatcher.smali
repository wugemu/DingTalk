.class public Lcom/alibaba/doraemon/impl/request/LWPDispatcher;
.super Ljava/lang/Object;
.source "LWPDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final LWP_PREFIX:Ljava/lang/String;

.field mDelivery:Lcom/alibaba/doraemon/impl/request/ResponseDelivery;

.field private mDownloader:Lcom/alibaba/doraemon/lwp/LWPFileDownloader;

.field private final mExceptionHandler:Lcom/alibaba/doraemon/impl/request/DownloaderHandler$ExceptionHandler;

.field private final mRequest:Lcom/alibaba/doraemon/impl/request/VolleyRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/doraemon/impl/request/VolleyRequest",
            "<",
            "Lcom/alibaba/doraemon/request/RequestInputStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/alibaba/doraemon/impl/request/VolleyRequest;Lcom/alibaba/doraemon/impl/request/ResponseDelivery;Lcom/alibaba/doraemon/impl/request/DownloaderHandler$ExceptionHandler;)V
    .locals 1
    .param p2, "delivery"    # Lcom/alibaba/doraemon/impl/request/ResponseDelivery;
    .param p3, "exceptionHandler"    # Lcom/alibaba/doraemon/impl/request/DownloaderHandler$ExceptionHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/doraemon/impl/request/VolleyRequest",
            "<",
            "Lcom/alibaba/doraemon/request/RequestInputStream;",
            ">;",
            "Lcom/alibaba/doraemon/impl/request/ResponseDelivery;",
            "Lcom/alibaba/doraemon/impl/request/DownloaderHandler$ExceptionHandler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 35
    .local p1, "request":Lcom/alibaba/doraemon/impl/request/VolleyRequest;, "Lcom/alibaba/doraemon/impl/request/VolleyRequest<Lcom/alibaba/doraemon/request/RequestInputStream;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string/jumbo v0, "lwp://"

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/request/LWPDispatcher;->LWP_PREFIX:Ljava/lang/String;

    .line 36
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/request/LWPDispatcher;->mRequest:Lcom/alibaba/doraemon/impl/request/VolleyRequest;

    .line 37
    iput-object p2, p0, Lcom/alibaba/doraemon/impl/request/LWPDispatcher;->mDelivery:Lcom/alibaba/doraemon/impl/request/ResponseDelivery;

    .line 38
    iput-object p3, p0, Lcom/alibaba/doraemon/impl/request/LWPDispatcher;->mExceptionHandler:Lcom/alibaba/doraemon/impl/request/DownloaderHandler$ExceptionHandler;

    .line 39
    const-string/jumbo v0, "LWPFILEDOWNLOADER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/lwp/LWPFileDownloader;

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/request/LWPDispatcher;->mDownloader:Lcom/alibaba/doraemon/lwp/LWPFileDownloader;

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/doraemon/impl/request/LWPDispatcher;)Lcom/alibaba/doraemon/impl/request/VolleyRequest;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/request/LWPDispatcher;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/LWPDispatcher;->mRequest:Lcom/alibaba/doraemon/impl/request/VolleyRequest;

    return-object v0
.end method

.method private deliveryDataFromCache()Z
    .locals 15

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 156
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/LWPDispatcher;->mRequest:Lcom/alibaba/doraemon/impl/request/VolleyRequest;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->getCacheClient()Lcom/alibaba/doraemon/request/CacheClient;

    move-result-object v6

    .line 158
    .local v6, "cc":Lcom/alibaba/doraemon/request/CacheClient;
    if-eqz v6, :cond_1

    .line 159
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/LWPDispatcher;->mRequest:Lcom/alibaba/doraemon/impl/request/VolleyRequest;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->getRequest()Lcom/alibaba/doraemon/request/Request;

    move-result-object v0

    invoke-interface {v6, v0}, Lcom/alibaba/doraemon/request/CacheClient;->onReadData(Lcom/alibaba/doraemon/request/Request;)Lcom/alibaba/doraemon/request/Response;

    move-result-object v11

    .line 162
    .local v11, "response":Lcom/alibaba/doraemon/request/Response;
    if-eqz v11, :cond_1

    .line 163
    invoke-interface {v11}, Lcom/alibaba/doraemon/request/Response;->getResponseBody()Lcom/alibaba/doraemon/request/RequestInputStream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/doraemon/request/RequestInputStream;->length()I

    move-result v0

    int-to-long v12, v0

    .line 164
    .local v12, "streamLen":J
    invoke-interface {v11}, Lcom/alibaba/doraemon/request/Response;->dataLength()J

    move-result-wide v8

    .line 165
    .local v8, "dataLen":J
    const-wide/16 v0, -0x1

    cmp-long v0, v8, v0

    if-eqz v0, :cond_1

    cmp-long v0, v12, v8

    if-nez v0, :cond_1

    .line 166
    iget-object v14, p0, Lcom/alibaba/doraemon/impl/request/LWPDispatcher;->mRequest:Lcom/alibaba/doraemon/impl/request/VolleyRequest;

    new-instance v0, Lcom/alibaba/doraemon/impl/request/NetworkResponse;

    const/16 v1, 0xc8

    const/4 v4, 0x0

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/doraemon/impl/request/NetworkResponse;-><init>(IZLcom/alibaba/doraemon/image/memory/PooledByteBuffer;ILjava/util/Map;)V

    invoke-virtual {v14, v0}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->parseNetworkResponse(Lcom/alibaba/doraemon/impl/request/NetworkResponse;)Lcom/alibaba/doraemon/impl/request/VolleyResponse;

    move-result-object v10

    .line 167
    .local v10, "res":Lcom/alibaba/doraemon/impl/request/VolleyResponse;, "Lcom/alibaba/doraemon/impl/request/VolleyResponse<*>;"
    if-eqz v10, :cond_1

    .line 168
    invoke-virtual {v10}, Lcom/alibaba/doraemon/impl/request/VolleyResponse;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/LWPDispatcher;->mDelivery:Lcom/alibaba/doraemon/impl/request/ResponseDelivery;

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/request/LWPDispatcher;->mRequest:Lcom/alibaba/doraemon/impl/request/VolleyRequest;

    invoke-interface {v0, v1, v10}, Lcom/alibaba/doraemon/impl/request/ResponseDelivery;->postResponse(Lcom/alibaba/doraemon/impl/request/VolleyRequest;Lcom/alibaba/doraemon/impl/request/VolleyResponse;)V

    .line 186
    .end local v8    # "dataLen":J
    .end local v10    # "res":Lcom/alibaba/doraemon/impl/request/VolleyResponse;, "Lcom/alibaba/doraemon/impl/request/VolleyResponse<*>;"
    .end local v11    # "response":Lcom/alibaba/doraemon/request/Response;
    .end local v12    # "streamLen":J
    :goto_0
    return v2

    .line 173
    .restart local v8    # "dataLen":J
    .restart local v10    # "res":Lcom/alibaba/doraemon/impl/request/VolleyResponse;, "Lcom/alibaba/doraemon/impl/request/VolleyResponse<*>;"
    .restart local v11    # "response":Lcom/alibaba/doraemon/request/Response;
    .restart local v12    # "streamLen":J
    :cond_0
    invoke-interface {v11}, Lcom/alibaba/doraemon/request/Response;->getResponseBody()Lcom/alibaba/doraemon/request/RequestInputStream;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 175
    :try_start_0
    invoke-interface {v11}, Lcom/alibaba/doraemon/request/Response;->getResponseBody()Lcom/alibaba/doraemon/request/RequestInputStream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/doraemon/request/RequestInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    .end local v8    # "dataLen":J
    .end local v10    # "res":Lcom/alibaba/doraemon/impl/request/VolleyResponse;, "Lcom/alibaba/doraemon/impl/request/VolleyResponse<*>;"
    .end local v11    # "response":Lcom/alibaba/doraemon/request/Response;
    .end local v12    # "streamLen":J
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/LWPDispatcher;->mRequest:Lcom/alibaba/doraemon/impl/request/VolleyRequest;

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/request/LWPDispatcher;->mDelivery:Lcom/alibaba/doraemon/impl/request/ResponseDelivery;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/doraemon/impl/request/LWPDispatcher;->deliveryFromDefaultCache(Lcom/alibaba/doraemon/impl/request/VolleyRequest;Lcom/alibaba/doraemon/impl/request/ResponseDelivery;)Z

    move-result v2

    goto :goto_0

    .line 176
    .restart local v8    # "dataLen":J
    .restart local v10    # "res":Lcom/alibaba/doraemon/impl/request/VolleyResponse;, "Lcom/alibaba/doraemon/impl/request/VolleyResponse<*>;"
    .restart local v11    # "response":Lcom/alibaba/doraemon/request/Response;
    .restart local v12    # "streamLen":J
    :catch_0
    move-exception v7

    .line 177
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private downloadFile(Ljava/lang/String;JJZLjava/util/Map;Lcom/alibaba/doraemon/impl/request/DownloaderHandler;)V
    .locals 14
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "fileStart"    # J
    .param p4, "fileEnd"    # J
    .param p6, "isLarge"    # Z
    .param p8, "downloaderHandler"    # Lcom/alibaba/doraemon/impl/request/DownloaderHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJZ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/doraemon/impl/request/DownloaderHandler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 86
    .local p7, "authInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 88
    .local v12, "start":J
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/request/LWPDispatcher;->mDownloader:Lcom/alibaba/doraemon/lwp/LWPFileDownloader;

    new-instance v10, Lcom/alibaba/doraemon/impl/request/LWPDispatcher$1;

    move-object/from16 v0, p8

    invoke-direct {v10, p0, v0, v12, v13}, Lcom/alibaba/doraemon/impl/request/LWPDispatcher$1;-><init>(Lcom/alibaba/doraemon/impl/request/LWPDispatcher;Lcom/alibaba/doraemon/impl/request/DownloaderHandler;J)V

    move-object v3, p1

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-interface/range {v2 .. v10}, Lcom/alibaba/doraemon/lwp/LWPFileDownloader;->download(Ljava/lang/String;JJZLjava/util/Map;Lcom/alibaba/doraemon/lwp/LWPFileDownloadListener;)V

    .line 136
    return-void
.end method

.method private getDownloadLength(Lcom/alibaba/doraemon/impl/request/VolleyRequest;)J
    .locals 5
    .param p1, "request"    # Lcom/alibaba/doraemon/impl/request/VolleyRequest;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 139
    const-wide/16 v2, 0x0

    .line 140
    .local v2, "fileLen":J
    invoke-virtual {p1}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->getCacheClient()Lcom/alibaba/doraemon/request/CacheClient;

    move-result-object v0

    .line 141
    .local v0, "cacheClient":Lcom/alibaba/doraemon/request/CacheClient;
    if-nez v0, :cond_0

    .line 142
    invoke-static {}, Lcom/alibaba/doraemon/impl/request/CacheClientManager;->getInstance()Lcom/alibaba/doraemon/impl/request/CacheClientManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/doraemon/impl/request/CacheClientManager;->getDefaultCacheClient()Lcom/alibaba/doraemon/request/CacheClient;

    move-result-object v0

    .line 145
    :cond_0
    if-eqz v0, :cond_1

    .line 146
    invoke-virtual {p1}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->getRequest()Lcom/alibaba/doraemon/request/Request;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/alibaba/doraemon/request/CacheClient;->onReadData(Lcom/alibaba/doraemon/request/Request;)Lcom/alibaba/doraemon/request/Response;

    move-result-object v1

    .line 147
    .local v1, "existResponse":Lcom/alibaba/doraemon/request/Response;
    if-eqz v1, :cond_1

    .line 148
    invoke-interface {v1}, Lcom/alibaba/doraemon/request/Response;->getResponseBody()Lcom/alibaba/doraemon/request/RequestInputStream;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/doraemon/request/RequestInputStream;->length()I

    move-result v4

    int-to-long v2, v4

    .line 152
    .end local v1    # "existResponse":Lcom/alibaba/doraemon/request/Response;
    :cond_1
    return-wide v2
.end method


# virtual methods
.method public deliveryFromDefaultCache(Lcom/alibaba/doraemon/impl/request/VolleyRequest;Lcom/alibaba/doraemon/impl/request/ResponseDelivery;)Z
    .locals 16
    .param p2, "delivery"    # Lcom/alibaba/doraemon/impl/request/ResponseDelivery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/doraemon/impl/request/VolleyRequest",
            "<*>;",
            "Lcom/alibaba/doraemon/impl/request/ResponseDelivery;",
            ")Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 195
    .local p1, "request":Lcom/alibaba/doraemon/impl/request/VolleyRequest;, "Lcom/alibaba/doraemon/impl/request/VolleyRequest<*>;"
    const-string/jumbo v2, "cache-queue-take"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->addMarker(Ljava/lang/String;)V

    .line 198
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->isCanceled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 199
    const-string/jumbo v2, "cache-discard-canceled"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->finish(Ljava/lang/String;)V

    .line 200
    const/4 v2, 0x1

    .line 258
    :goto_0
    return v2

    .line 205
    :cond_0
    invoke-static {}, Lcom/alibaba/doraemon/impl/request/CacheClientManager;->getInstance()Lcom/alibaba/doraemon/impl/request/CacheClientManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/doraemon/impl/request/CacheClientManager;->getDefaultCacheClient()Lcom/alibaba/doraemon/request/CacheClient;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->getRequest()Lcom/alibaba/doraemon/request/Request;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/request/CacheClient;->onReadData(Lcom/alibaba/doraemon/request/Request;)Lcom/alibaba/doraemon/request/Response;

    move-result-object v11

    .line 207
    .local v11, "existResponse":Lcom/alibaba/doraemon/request/Response;
    if-nez v11, :cond_1

    .line 208
    const/4 v2, 0x0

    goto :goto_0

    .line 210
    :cond_1
    invoke-interface {v11}, Lcom/alibaba/doraemon/request/Response;->getResponseBody()Lcom/alibaba/doraemon/request/RequestInputStream;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/doraemon/request/RequestInputStream;->length()I

    move-result v2

    int-to-long v14, v2

    .line 211
    .local v14, "streamLen":J
    invoke-interface {v11}, Lcom/alibaba/doraemon/request/Response;->dataLength()J

    move-result-wide v8

    .line 212
    .local v8, "dataLen":J
    const-wide/16 v2, -0x1

    cmp-long v2, v8, v2

    if-eqz v2, :cond_2

    cmp-long v2, v8, v14

    if-eqz v2, :cond_3

    .line 213
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 217
    :cond_3
    invoke-interface {v11}, Lcom/alibaba/doraemon/request/Response;->getResponseHeaders()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/doraemon/impl/request/HttpHeaderParser;->parseCacheHeaders(Ljava/util/Map;)Lcom/alibaba/doraemon/impl/request/Cache$Entry;

    move-result-object v10

    .line 219
    .local v10, "entry":Lcom/alibaba/doraemon/impl/request/Cache$Entry;
    if-nez v10, :cond_4

    .line 220
    const-string/jumbo v2, "cache-miss"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->addMarker(Ljava/lang/String;)V

    .line 221
    const/4 v2, 0x0

    goto :goto_0

    .line 225
    :cond_4
    invoke-virtual {v10}, Lcom/alibaba/doraemon/impl/request/Cache$Entry;->isExpired()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 226
    const-string/jumbo v2, "cache-hit-expired"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->addMarker(Ljava/lang/String;)V

    .line 228
    invoke-static {}, Lcom/alibaba/doraemon/impl/request/CacheClientManager;->getInstance()Lcom/alibaba/doraemon/impl/request/CacheClientManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/doraemon/impl/request/CacheClientManager;->getDefaultCacheClient()Lcom/alibaba/doraemon/request/CacheClient;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->getRequest()Lcom/alibaba/doraemon/request/Request;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/request/CacheClient;->onRemoveData(Lcom/alibaba/doraemon/request/Request;)Z

    .line 229
    const/4 v2, 0x0

    goto :goto_0

    .line 233
    :cond_5
    const-string/jumbo v2, "cache-hit"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->addMarker(Ljava/lang/String;)V

    .line 235
    new-instance v2, Lcom/alibaba/doraemon/impl/request/NetworkResponse;

    const/16 v3, 0xc8

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/alibaba/doraemon/impl/request/NetworkResponse;-><init>(IZLcom/alibaba/doraemon/image/memory/PooledByteBuffer;ILjava/util/Map;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->parseNetworkResponse(Lcom/alibaba/doraemon/impl/request/NetworkResponse;)Lcom/alibaba/doraemon/impl/request/VolleyResponse;

    move-result-object v12

    .line 238
    .local v12, "response":Lcom/alibaba/doraemon/impl/request/VolleyResponse;, "Lcom/alibaba/doraemon/impl/request/VolleyResponse<*>;"
    const-string/jumbo v2, "cache-hit-parsed"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->addMarker(Ljava/lang/String;)V

    .line 240
    invoke-virtual {v10}, Lcom/alibaba/doraemon/impl/request/Cache$Entry;->refreshNeeded()Z

    move-result v2

    if-nez v2, :cond_6

    if-eqz v12, :cond_6

    invoke-virtual {v12}, Lcom/alibaba/doraemon/impl/request/VolleyResponse;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 243
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-interface {v0, v1, v12}, Lcom/alibaba/doraemon/impl/request/ResponseDelivery;->postResponse(Lcom/alibaba/doraemon/impl/request/VolleyRequest;Lcom/alibaba/doraemon/impl/request/VolleyResponse;)V

    .line 244
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 249
    :cond_6
    const-string/jumbo v2, "cache-hit-refresh-needed"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->addMarker(Ljava/lang/String;)V

    .line 252
    if-eqz v12, :cond_7

    .line 253
    const/4 v2, 0x1

    iput-boolean v2, v12, Lcom/alibaba/doraemon/impl/request/VolleyResponse;->intermediate:Z

    .line 255
    :cond_7
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-interface {v0, v1, v12}, Lcom/alibaba/doraemon/impl/request/ResponseDelivery;->postResponse(Lcom/alibaba/doraemon/impl/request/VolleyRequest;Lcom/alibaba/doraemon/impl/request/VolleyResponse;)V

    .line 258
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public run()V
    .locals 13

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/LWPDispatcher;->mRequest:Lcom/alibaba/doraemon/impl/request/VolleyRequest;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->getUrl()Ljava/lang/String;

    move-result-object v12

    .line 45
    .local v12, "requestUrl":Ljava/lang/String;
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/LWPDispatcher;->mRequest:Lcom/alibaba/doraemon/impl/request/VolleyRequest;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 47
    .local v9, "requestTag":Ljava/lang/String;
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/request/LWPDispatcher;->deliveryDataFromCache()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    invoke-static {v12, v9}, Lcom/alibaba/doraemon/impl/request/RequestClient;->notifyHitCacheSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :goto_0
    return-void

    .line 53
    :cond_0
    invoke-static {v12, v9}, Lcom/alibaba/doraemon/impl/request/RequestClient;->notifyHitCacheFailed(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/LWPDispatcher;->mRequest:Lcom/alibaba/doraemon/impl/request/VolleyRequest;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->getRequest()Lcom/alibaba/doraemon/request/Request;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/doraemon/request/Request;->isReadCacheOnly()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/LWPDispatcher;->mExceptionHandler:Lcom/alibaba/doraemon/impl/request/DownloaderHandler$ExceptionHandler;

    const-string/jumbo v4, "0"

    const-string/jumbo v5, "no hit cache!"

    invoke-interface {v0, v4, v5}, Lcom/alibaba/doraemon/impl/request/DownloaderHandler$ExceptionHandler;->onExceptionHandle(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 60
    :cond_1
    invoke-static {v12, v9}, Lcom/alibaba/doraemon/impl/request/RequestClient;->notifyRequestStart(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/LWPDispatcher;->mRequest:Lcom/alibaba/doraemon/impl/request/VolleyRequest;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, "uri":Ljava/lang/String;
    const-wide/16 v2, 0x0

    .line 66
    .local v2, "fileStart":J
    const/4 v6, 0x0

    .line 67
    .local v6, "isLarge":Z
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/LWPDispatcher;->mRequest:Lcom/alibaba/doraemon/impl/request/VolleyRequest;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->getParams()Ljava/util/Map;

    move-result-object v7

    .line 69
    .local v7, "authInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/LWPDispatcher;->mRequest:Lcom/alibaba/doraemon/impl/request/VolleyRequest;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->getRequest()Lcom/alibaba/doraemon/request/Request;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/doraemon/request/Request;->isHugeDownload()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 70
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/LWPDispatcher;->mRequest:Lcom/alibaba/doraemon/impl/request/VolleyRequest;

    invoke-direct {p0, v0}, Lcom/alibaba/doraemon/impl/request/LWPDispatcher;->getDownloadLength(Lcom/alibaba/doraemon/impl/request/VolleyRequest;)J

    move-result-wide v10

    .line 71
    .local v10, "downloadedLen":J
    const/4 v6, 0x1

    .line 72
    move-wide v2, v10

    .line 74
    new-instance v8, Lcom/alibaba/doraemon/impl/request/HugeFileDLHandler;

    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/LWPDispatcher;->mExceptionHandler:Lcom/alibaba/doraemon/impl/request/DownloaderHandler$ExceptionHandler;

    invoke-direct {v8, v0, v2, v3}, Lcom/alibaba/doraemon/impl/request/HugeFileDLHandler;-><init>(Lcom/alibaba/doraemon/impl/request/DownloaderHandler$ExceptionHandler;J)V

    .line 81
    .end local v10    # "downloadedLen":J
    .local v8, "downloaderHandler":Lcom/alibaba/doraemon/impl/request/DownloaderHandler;
    :goto_1
    const-wide/16 v4, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/doraemon/impl/request/LWPDispatcher;->downloadFile(Ljava/lang/String;JJZLjava/util/Map;Lcom/alibaba/doraemon/impl/request/DownloaderHandler;)V

    goto :goto_0

    .line 78
    .end local v8    # "downloaderHandler":Lcom/alibaba/doraemon/impl/request/DownloaderHandler;
    :cond_2
    new-instance v8, Lcom/alibaba/doraemon/impl/request/SmallFileDLHandler;

    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/LWPDispatcher;->mExceptionHandler:Lcom/alibaba/doraemon/impl/request/DownloaderHandler$ExceptionHandler;

    const-wide/16 v4, 0x0

    invoke-direct {v8, v0, v4, v5}, Lcom/alibaba/doraemon/impl/request/SmallFileDLHandler;-><init>(Lcom/alibaba/doraemon/impl/request/DownloaderHandler$ExceptionHandler;J)V

    .restart local v8    # "downloaderHandler":Lcom/alibaba/doraemon/impl/request/DownloaderHandler;
    goto :goto_1
.end method
