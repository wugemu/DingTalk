.class public Lcom/alibaba/doraemon/impl/request/CacheDispatcher;
.super Ljava/lang/Object;
.source "CacheDispatcher.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deliveryFromCache(Lcom/alibaba/doraemon/impl/request/VolleyRequest;Lcom/alibaba/doraemon/impl/request/Cache;Lcom/alibaba/doraemon/impl/request/ResponseDelivery;)Z
    .locals 16
    .param p1, "cache"    # Lcom/alibaba/doraemon/impl/request/Cache;
    .param p2, "delivery"    # Lcom/alibaba/doraemon/impl/request/ResponseDelivery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/doraemon/impl/request/VolleyRequest",
            "<*>;",
            "Lcom/alibaba/doraemon/impl/request/Cache;",
            "Lcom/alibaba/doraemon/impl/request/ResponseDelivery;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "request":Lcom/alibaba/doraemon/impl/request/VolleyRequest;, "Lcom/alibaba/doraemon/impl/request/VolleyRequest<*>;"
    const-string/jumbo v2, "cache-queue-take"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->addMarker(Ljava/lang/String;)V

    .line 43
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->isCanceled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 44
    const-string/jumbo v2, "cache-discard-canceled"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->finish(Ljava/lang/String;)V

    .line 45
    const/4 v2, 0x1

    .line 103
    :goto_0
    return v2

    .line 50
    :cond_0
    invoke-static {}, Lcom/alibaba/doraemon/impl/request/CacheClientManager;->getInstance()Lcom/alibaba/doraemon/impl/request/CacheClientManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/doraemon/impl/request/CacheClientManager;->getDefaultCacheClient()Lcom/alibaba/doraemon/request/CacheClient;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->getRequest()Lcom/alibaba/doraemon/request/Request;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/request/CacheClient;->onReadData(Lcom/alibaba/doraemon/request/Request;)Lcom/alibaba/doraemon/request/Response;

    move-result-object v11

    .line 52
    .local v11, "existResponse":Lcom/alibaba/doraemon/request/Response;
    if-nez v11, :cond_1

    .line 53
    const/4 v2, 0x0

    goto :goto_0

    .line 55
    :cond_1
    invoke-interface {v11}, Lcom/alibaba/doraemon/request/Response;->getResponseBody()Lcom/alibaba/doraemon/request/RequestInputStream;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/doraemon/request/RequestInputStream;->length()I

    move-result v2

    int-to-long v14, v2

    .line 56
    .local v14, "streamLen":J
    invoke-interface {v11}, Lcom/alibaba/doraemon/request/Response;->dataLength()J

    move-result-wide v8

    .line 57
    .local v8, "dataLen":J
    const-wide/16 v2, -0x1

    cmp-long v2, v8, v2

    if-eqz v2, :cond_2

    cmp-long v2, v8, v14

    if-eqz v2, :cond_3

    .line 58
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 62
    :cond_3
    invoke-interface {v11}, Lcom/alibaba/doraemon/request/Response;->getResponseHeaders()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/doraemon/impl/request/HttpHeaderParser;->parseCacheHeaders(Ljava/util/Map;)Lcom/alibaba/doraemon/impl/request/Cache$Entry;

    move-result-object v10

    .line 64
    .local v10, "entry":Lcom/alibaba/doraemon/impl/request/Cache$Entry;
    if-nez v10, :cond_4

    .line 65
    const-string/jumbo v2, "cache-miss"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->addMarker(Ljava/lang/String;)V

    .line 66
    const/4 v2, 0x0

    goto :goto_0

    .line 70
    :cond_4
    invoke-virtual {v10}, Lcom/alibaba/doraemon/impl/request/Cache$Entry;->isExpired()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 71
    const-string/jumbo v2, "cache-hit-expired"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->addMarker(Ljava/lang/String;)V

    .line 73
    invoke-static {}, Lcom/alibaba/doraemon/impl/request/CacheClientManager;->getInstance()Lcom/alibaba/doraemon/impl/request/CacheClientManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/doraemon/impl/request/CacheClientManager;->getDefaultCacheClient()Lcom/alibaba/doraemon/request/CacheClient;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->getRequest()Lcom/alibaba/doraemon/request/Request;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/request/CacheClient;->onRemoveData(Lcom/alibaba/doraemon/request/Request;)Z

    .line 74
    const/4 v2, 0x0

    goto :goto_0

    .line 78
    :cond_5
    const-string/jumbo v2, "cache-hit"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->addMarker(Ljava/lang/String;)V

    .line 80
    new-instance v2, Lcom/alibaba/doraemon/impl/request/NetworkResponse;

    const/16 v3, 0xc8

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/alibaba/doraemon/impl/request/NetworkResponse;-><init>(IZLcom/alibaba/doraemon/image/memory/PooledByteBuffer;ILjava/util/Map;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->parseNetworkResponse(Lcom/alibaba/doraemon/impl/request/NetworkResponse;)Lcom/alibaba/doraemon/impl/request/VolleyResponse;

    move-result-object v12

    .line 83
    .local v12, "response":Lcom/alibaba/doraemon/impl/request/VolleyResponse;, "Lcom/alibaba/doraemon/impl/request/VolleyResponse<*>;"
    const-string/jumbo v2, "cache-hit-parsed"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->addMarker(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v10}, Lcom/alibaba/doraemon/impl/request/Cache$Entry;->refreshNeeded()Z

    move-result v2

    if-nez v2, :cond_6

    if-eqz v12, :cond_6

    invoke-virtual {v12}, Lcom/alibaba/doraemon/impl/request/VolleyResponse;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 87
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-interface {v0, v1, v12}, Lcom/alibaba/doraemon/impl/request/ResponseDelivery;->postResponse(Lcom/alibaba/doraemon/impl/request/VolleyRequest;Lcom/alibaba/doraemon/impl/request/VolleyResponse;)V

    .line 88
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 94
    :cond_6
    const-string/jumbo v2, "cache-hit-refresh-needed"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->addMarker(Ljava/lang/String;)V

    .line 97
    if-eqz v12, :cond_7

    .line 98
    const/4 v2, 0x1

    iput-boolean v2, v12, Lcom/alibaba/doraemon/impl/request/VolleyResponse;->intermediate:Z

    .line 100
    :cond_7
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-interface {v0, v1, v12}, Lcom/alibaba/doraemon/impl/request/ResponseDelivery;->postResponse(Lcom/alibaba/doraemon/impl/request/VolleyRequest;Lcom/alibaba/doraemon/impl/request/VolleyResponse;)V

    .line 103
    const/4 v2, 0x0

    goto/16 :goto_0
.end method
