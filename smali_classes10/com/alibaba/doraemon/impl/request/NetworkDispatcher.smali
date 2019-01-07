.class public Lcom/alibaba/doraemon/impl/request/NetworkDispatcher;
.super Ljava/lang/Object;
.source "NetworkDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mCache:Lcom/alibaba/doraemon/impl/request/Cache;

.field private final mDelivery:Lcom/alibaba/doraemon/impl/request/ResponseDelivery;

.field private final mNetwork:Lcom/alibaba/doraemon/impl/request/Network;

.field private final mRequest:Lcom/alibaba/doraemon/impl/request/VolleyRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/doraemon/impl/request/VolleyRequest",
            "<*>;"
        }
    .end annotation
.end field

.field private final mRequestClient:Lcom/alibaba/doraemon/impl/request/RequestClient;


# direct methods
.method public constructor <init>(Lcom/alibaba/doraemon/impl/request/VolleyRequest;Lcom/alibaba/doraemon/impl/request/RequestClient;Lcom/alibaba/doraemon/impl/request/Network;Lcom/alibaba/doraemon/impl/request/Cache;Lcom/alibaba/doraemon/impl/request/ResponseDelivery;)V
    .locals 0
    .param p2, "requestClient"    # Lcom/alibaba/doraemon/impl/request/RequestClient;
    .param p3, "network"    # Lcom/alibaba/doraemon/impl/request/Network;
    .param p4, "cache"    # Lcom/alibaba/doraemon/impl/request/Cache;
    .param p5, "delivery"    # Lcom/alibaba/doraemon/impl/request/ResponseDelivery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/doraemon/impl/request/VolleyRequest",
            "<*>;",
            "Lcom/alibaba/doraemon/impl/request/RequestClient;",
            "Lcom/alibaba/doraemon/impl/request/Network;",
            "Lcom/alibaba/doraemon/impl/request/Cache;",
            "Lcom/alibaba/doraemon/impl/request/ResponseDelivery;",
            ")V"
        }
    .end annotation

    .prologue
    .line 68
    .local p1, "request":Lcom/alibaba/doraemon/impl/request/VolleyRequest;, "Lcom/alibaba/doraemon/impl/request/VolleyRequest<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/request/NetworkDispatcher;->mRequest:Lcom/alibaba/doraemon/impl/request/VolleyRequest;

    .line 70
    iput-object p2, p0, Lcom/alibaba/doraemon/impl/request/NetworkDispatcher;->mRequestClient:Lcom/alibaba/doraemon/impl/request/RequestClient;

    .line 71
    iput-object p3, p0, Lcom/alibaba/doraemon/impl/request/NetworkDispatcher;->mNetwork:Lcom/alibaba/doraemon/impl/request/Network;

    .line 72
    iput-object p4, p0, Lcom/alibaba/doraemon/impl/request/NetworkDispatcher;->mCache:Lcom/alibaba/doraemon/impl/request/Cache;

    .line 73
    iput-object p5, p0, Lcom/alibaba/doraemon/impl/request/NetworkDispatcher;->mDelivery:Lcom/alibaba/doraemon/impl/request/ResponseDelivery;

    .line 74
    return-void
.end method

.method private addTrafficStatsTag(Lcom/alibaba/doraemon/impl/request/VolleyRequest;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/doraemon/impl/request/VolleyRequest",
            "<*>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 79
    .local p1, "request":Lcom/alibaba/doraemon/impl/request/VolleyRequest;, "Lcom/alibaba/doraemon/impl/request/VolleyRequest<*>;"
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 80
    invoke-virtual {p1}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->getTrafficStatsTag()I

    move-result v0

    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 82
    :cond_0
    return-void
.end method

.method private deliveryDataFromCache()Z
    .locals 15

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 147
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/NetworkDispatcher;->mRequest:Lcom/alibaba/doraemon/impl/request/VolleyRequest;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->getCacheClient()Lcom/alibaba/doraemon/request/CacheClient;

    move-result-object v6

    .line 149
    .local v6, "cc":Lcom/alibaba/doraemon/request/CacheClient;
    if-eqz v6, :cond_1

    .line 150
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/NetworkDispatcher;->mRequestClient:Lcom/alibaba/doraemon/impl/request/RequestClient;

    invoke-interface {v6, v0}, Lcom/alibaba/doraemon/request/CacheClient;->onReadData(Lcom/alibaba/doraemon/request/Request;)Lcom/alibaba/doraemon/request/Response;

    move-result-object v11

    .line 153
    .local v11, "response":Lcom/alibaba/doraemon/request/Response;
    if-eqz v11, :cond_1

    .line 154
    invoke-interface {v11}, Lcom/alibaba/doraemon/request/Response;->getResponseBody()Lcom/alibaba/doraemon/request/RequestInputStream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/doraemon/request/RequestInputStream;->length()I

    move-result v0

    int-to-long v12, v0

    .line 155
    .local v12, "streamLen":J
    invoke-interface {v11}, Lcom/alibaba/doraemon/request/Response;->dataLength()J

    move-result-wide v8

    .line 156
    .local v8, "dataLen":J
    const-wide/16 v0, -0x1

    cmp-long v0, v8, v0

    if-eqz v0, :cond_1

    cmp-long v0, v12, v8

    if-nez v0, :cond_1

    .line 157
    iget-object v14, p0, Lcom/alibaba/doraemon/impl/request/NetworkDispatcher;->mRequest:Lcom/alibaba/doraemon/impl/request/VolleyRequest;

    new-instance v0, Lcom/alibaba/doraemon/impl/request/NetworkResponse;

    const/16 v1, 0xc8

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/doraemon/impl/request/NetworkResponse;-><init>(IZLcom/alibaba/doraemon/image/memory/PooledByteBuffer;ILjava/util/Map;)V

    invoke-virtual {v14, v0}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->parseNetworkResponse(Lcom/alibaba/doraemon/impl/request/NetworkResponse;)Lcom/alibaba/doraemon/impl/request/VolleyResponse;

    move-result-object v10

    .line 159
    .local v10, "res":Lcom/alibaba/doraemon/impl/request/VolleyResponse;, "Lcom/alibaba/doraemon/impl/request/VolleyResponse<*>;"
    if-eqz v10, :cond_1

    .line 160
    invoke-virtual {v10}, Lcom/alibaba/doraemon/impl/request/VolleyResponse;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "networkDispatcher, url "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/request/NetworkDispatcher;->mRequest:Lcom/alibaba/doraemon/impl/request/VolleyRequest;

    invoke-virtual {v2}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/doraemon/utils/UrlUtil;->getDesensitizationData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, ", from cached success:"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/request/Util;->networkLog([Ljava/lang/Object;)V

    .line 162
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/NetworkDispatcher;->mDelivery:Lcom/alibaba/doraemon/impl/request/ResponseDelivery;

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/request/NetworkDispatcher;->mRequest:Lcom/alibaba/doraemon/impl/request/VolleyRequest;

    invoke-interface {v0, v1, v10}, Lcom/alibaba/doraemon/impl/request/ResponseDelivery;->postResponse(Lcom/alibaba/doraemon/impl/request/VolleyRequest;Lcom/alibaba/doraemon/impl/request/VolleyResponse;)V

    .line 163
    const/4 v0, 0x1

    .line 178
    .end local v8    # "dataLen":J
    .end local v10    # "res":Lcom/alibaba/doraemon/impl/request/VolleyResponse;, "Lcom/alibaba/doraemon/impl/request/VolleyResponse<*>;"
    .end local v11    # "response":Lcom/alibaba/doraemon/request/Response;
    .end local v12    # "streamLen":J
    :goto_0
    return v0

    .line 165
    .restart local v8    # "dataLen":J
    .restart local v10    # "res":Lcom/alibaba/doraemon/impl/request/VolleyResponse;, "Lcom/alibaba/doraemon/impl/request/VolleyResponse<*>;"
    .restart local v11    # "response":Lcom/alibaba/doraemon/request/Response;
    .restart local v12    # "streamLen":J
    :cond_0
    invoke-interface {v11}, Lcom/alibaba/doraemon/request/Response;->getResponseBody()Lcom/alibaba/doraemon/request/RequestInputStream;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 167
    :try_start_0
    invoke-interface {v11}, Lcom/alibaba/doraemon/request/Response;->getResponseBody()Lcom/alibaba/doraemon/request/RequestInputStream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/doraemon/request/RequestInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    .end local v8    # "dataLen":J
    .end local v10    # "res":Lcom/alibaba/doraemon/impl/request/VolleyResponse;, "Lcom/alibaba/doraemon/impl/request/VolleyResponse<*>;"
    .end local v11    # "response":Lcom/alibaba/doraemon/request/Response;
    .end local v12    # "streamLen":J
    :cond_1
    :goto_1
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "networkDispatcher, url "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/request/NetworkDispatcher;->mRequest:Lcom/alibaba/doraemon/impl/request/VolleyRequest;

    invoke-virtual {v2}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/doraemon/utils/UrlUtil;->getDesensitizationData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, ", from cached not success:"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/request/Util;->networkLog([Ljava/lang/Object;)V

    .line 178
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/NetworkDispatcher;->mRequest:Lcom/alibaba/doraemon/impl/request/VolleyRequest;

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/request/NetworkDispatcher;->mCache:Lcom/alibaba/doraemon/impl/request/Cache;

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/request/NetworkDispatcher;->mDelivery:Lcom/alibaba/doraemon/impl/request/ResponseDelivery;

    invoke-static {v0, v1, v2}, Lcom/alibaba/doraemon/impl/request/CacheDispatcher;->deliveryFromCache(Lcom/alibaba/doraemon/impl/request/VolleyRequest;Lcom/alibaba/doraemon/impl/request/Cache;Lcom/alibaba/doraemon/impl/request/ResponseDelivery;)Z

    move-result v0

    goto :goto_0

    .line 168
    .restart local v8    # "dataLen":J
    .restart local v10    # "res":Lcom/alibaba/doraemon/impl/request/VolleyResponse;, "Lcom/alibaba/doraemon/impl/request/VolleyResponse<*>;"
    .restart local v11    # "response":Lcom/alibaba/doraemon/request/Response;
    .restart local v12    # "streamLen":J
    :catch_0
    move-exception v7

    .line 169
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private parseAndDeliverNetworkError(Lcom/alibaba/doraemon/impl/request/VolleyRequest;Lcom/alibaba/doraemon/impl/request/VolleyError;)V
    .locals 1
    .param p2, "error"    # Lcom/alibaba/doraemon/impl/request/VolleyError;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/doraemon/impl/request/VolleyRequest",
            "<*>;",
            "Lcom/alibaba/doraemon/impl/request/VolleyError;",
            ")V"
        }
    .end annotation

    .prologue
    .line 182
    .local p1, "request":Lcom/alibaba/doraemon/impl/request/VolleyRequest;, "Lcom/alibaba/doraemon/impl/request/VolleyRequest<*>;"
    invoke-virtual {p1, p2}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->parseNetworkError(Lcom/alibaba/doraemon/impl/request/VolleyError;)Lcom/alibaba/doraemon/impl/request/VolleyError;

    move-result-object p2

    .line 183
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/NetworkDispatcher;->mDelivery:Lcom/alibaba/doraemon/impl/request/ResponseDelivery;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/doraemon/impl/request/ResponseDelivery;->postError(Lcom/alibaba/doraemon/impl/request/VolleyRequest;Lcom/alibaba/doraemon/impl/request/VolleyError;)V

    .line 184
    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v13, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 87
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/request/NetworkDispatcher;->deliveryDataFromCache()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 88
    new-array v5, v8, [Ljava/lang/Object;

    const-string/jumbo v6, "networkDispatcher, url deliver from cache "

    aput-object v6, v5, v11

    iget-object v6, p0, Lcom/alibaba/doraemon/impl/request/NetworkDispatcher;->mRequest:Lcom/alibaba/doraemon/impl/request/VolleyRequest;

    invoke-virtual {v6}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/doraemon/utils/UrlUtil;->getDesensitizationData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v12

    const-string/jumbo v6, ",result: success"

    aput-object v6, v5, v7

    invoke-static {v5}, Lcom/alibaba/doraemon/impl/request/Util;->networkLog([Ljava/lang/Object;)V

    .line 89
    iget-object v5, p0, Lcom/alibaba/doraemon/impl/request/NetworkDispatcher;->mRequest:Lcom/alibaba/doraemon/impl/request/VolleyRequest;

    invoke-virtual {v5}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->getUrl()Ljava/lang/String;

    move-result-object v6

    iget-object v5, p0, Lcom/alibaba/doraemon/impl/request/NetworkDispatcher;->mRequest:Lcom/alibaba/doraemon/impl/request/VolleyRequest;

    invoke-virtual {v5}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v6, v5}, Lcom/alibaba/doraemon/impl/request/RequestClient;->notifyHitCacheSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :goto_0
    return-void

    .line 94
    :cond_0
    iget-object v5, p0, Lcom/alibaba/doraemon/impl/request/NetworkDispatcher;->mRequest:Lcom/alibaba/doraemon/impl/request/VolleyRequest;

    invoke-virtual {v5}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->getUrl()Ljava/lang/String;

    move-result-object v6

    iget-object v5, p0, Lcom/alibaba/doraemon/impl/request/NetworkDispatcher;->mRequest:Lcom/alibaba/doraemon/impl/request/VolleyRequest;

    invoke-virtual {v5}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v6, v5}, Lcom/alibaba/doraemon/impl/request/RequestClient;->notifyHitCacheFailed(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v5, p0, Lcom/alibaba/doraemon/impl/request/NetworkDispatcher;->mRequest:Lcom/alibaba/doraemon/impl/request/VolleyRequest;

    invoke-virtual {v5}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->getRequest()Lcom/alibaba/doraemon/request/Request;

    move-result-object v5

    invoke-interface {v5}, Lcom/alibaba/doraemon/request/Request;->isReadCacheOnly()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 97
    new-array v5, v8, [Ljava/lang/Object;

    const-string/jumbo v6, "networkDispatcher, url deliver from cache failed "

    aput-object v6, v5, v11

    iget-object v6, p0, Lcom/alibaba/doraemon/impl/request/NetworkDispatcher;->mRequest:Lcom/alibaba/doraemon/impl/request/VolleyRequest;

    invoke-virtual {v6}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/doraemon/utils/UrlUtil;->getDesensitizationData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v12

    const-string/jumbo v6, ",result: success"

    aput-object v6, v5, v7

    invoke-static {v5}, Lcom/alibaba/doraemon/impl/request/Util;->networkLog([Ljava/lang/Object;)V

    .line 98
    iget-object v5, p0, Lcom/alibaba/doraemon/impl/request/NetworkDispatcher;->mDelivery:Lcom/alibaba/doraemon/impl/request/ResponseDelivery;

    iget-object v6, p0, Lcom/alibaba/doraemon/impl/request/NetworkDispatcher;->mRequest:Lcom/alibaba/doraemon/impl/request/VolleyRequest;

    new-instance v7, Lcom/alibaba/doraemon/impl/request/VolleyError;

    new-instance v8, Ljava/lang/Exception;

    const-string/jumbo v9, "no hit cache!"

    invoke-direct {v8, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v8}, Lcom/alibaba/doraemon/impl/request/VolleyError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v5, v6, v7}, Lcom/alibaba/doraemon/impl/request/ResponseDelivery;->postError(Lcom/alibaba/doraemon/impl/request/VolleyRequest;Lcom/alibaba/doraemon/impl/request/VolleyError;)V

    goto :goto_0

    .line 102
    :cond_1
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/request/NetworkDispatcher;->mRequest:Lcom/alibaba/doraemon/impl/request/VolleyRequest;

    .line 104
    .local v2, "request":Lcom/alibaba/doraemon/impl/request/VolleyRequest;, "Lcom/alibaba/doraemon/impl/request/VolleyRequest<*>;"
    :try_start_0
    const-string/jumbo v5, "network-queue-take"

    invoke-virtual {v2, v5}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->addMarker(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v2}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->isCanceled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 109
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v9, "networkDispatcher, url deliver from cache canceled "

    aput-object v9, v5, v6

    const/4 v6, 0x1

    iget-object v9, p0, Lcom/alibaba/doraemon/impl/request/NetworkDispatcher;->mRequest:Lcom/alibaba/doraemon/impl/request/VolleyRequest;

    invoke-virtual {v9}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->getUrl()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/alibaba/doraemon/utils/UrlUtil;->getDesensitizationData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v6

    const/4 v6, 0x2

    const-string/jumbo v9, ",result: success"

    aput-object v9, v5, v6

    invoke-static {v5}, Lcom/alibaba/doraemon/impl/request/Util;->networkLog([Ljava/lang/Object;)V

    .line 110
    const-string/jumbo v5, "network-discard-cancelled"

    invoke-virtual {v2, v5}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->finish(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alibaba/doraemon/impl/request/VolleyError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 135
    :catch_0
    move-exception v4

    .line 136
    .local v4, "volleyError":Lcom/alibaba/doraemon/impl/request/VolleyError;
    new-array v5, v13, [Ljava/lang/Object;

    const-string/jumbo v6, "networkDispatcher, url "

    aput-object v6, v5, v11

    invoke-virtual {v2}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/doraemon/utils/UrlUtil;->getDesensitizationData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v12

    const-string/jumbo v6, ", VolleyError:"

    aput-object v6, v5, v7

    invoke-virtual {v4}, Lcom/alibaba/doraemon/impl/request/VolleyError;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v5}, Lcom/alibaba/doraemon/impl/request/Util;->networkLog([Ljava/lang/Object;)V

    .line 137
    invoke-direct {p0, v2, v4}, Lcom/alibaba/doraemon/impl/request/NetworkDispatcher;->parseAndDeliverNetworkError(Lcom/alibaba/doraemon/impl/request/VolleyRequest;Lcom/alibaba/doraemon/impl/request/VolleyError;)V

    goto/16 :goto_0

    .line 114
    .end local v4    # "volleyError":Lcom/alibaba/doraemon/impl/request/VolleyError;
    :cond_2
    :try_start_1
    invoke-direct {p0, v2}, Lcom/alibaba/doraemon/impl/request/NetworkDispatcher;->addTrafficStatsTag(Lcom/alibaba/doraemon/impl/request/VolleyRequest;)V

    .line 117
    iget-object v5, p0, Lcom/alibaba/doraemon/impl/request/NetworkDispatcher;->mNetwork:Lcom/alibaba/doraemon/impl/request/Network;

    invoke-interface {v5, v2}, Lcom/alibaba/doraemon/impl/request/Network;->performRequest(Lcom/alibaba/doraemon/impl/request/VolleyRequest;)Lcom/alibaba/doraemon/impl/request/NetworkResponse;

    move-result-object v1

    .line 118
    .local v1, "networkResponse":Lcom/alibaba/doraemon/impl/request/NetworkResponse;
    const-string/jumbo v5, "network-http-complete"

    invoke-virtual {v2, v5}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->addMarker(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v2, v1}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->parseNetworkResponse(Lcom/alibaba/doraemon/impl/request/NetworkResponse;)Lcom/alibaba/doraemon/impl/request/VolleyResponse;

    move-result-object v3

    .line 122
    .local v3, "response":Lcom/alibaba/doraemon/impl/request/VolleyResponse;, "Lcom/alibaba/doraemon/impl/request/VolleyResponse<*>;"
    const-string/jumbo v5, "network-parse-complete"

    invoke-virtual {v2, v5}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->addMarker(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v2}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->markDelivered()V

    .line 126
    invoke-virtual {v3}, Lcom/alibaba/doraemon/impl/request/VolleyResponse;->isSuccess()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 127
    const/4 v5, 0x3

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v9, "networkDispatcher, url "

    aput-object v9, v6, v5

    const/4 v5, 0x1

    invoke-virtual {v2}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->getUrl()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/alibaba/doraemon/utils/UrlUtil;->getDesensitizationData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v5

    const-string/jumbo v5, ",result: success"

    move-object v9, v6

    move-object v10, v6

    move v6, v7

    .line 131
    :goto_1
    aput-object v5, v9, v6

    .line 130
    invoke-static {v10}, Lcom/alibaba/doraemon/impl/request/Util;->networkLog([Ljava/lang/Object;)V

    .line 133
    iget-object v5, p0, Lcom/alibaba/doraemon/impl/request/NetworkDispatcher;->mDelivery:Lcom/alibaba/doraemon/impl/request/ResponseDelivery;

    invoke-interface {v5, v2, v3}, Lcom/alibaba/doraemon/impl/request/ResponseDelivery;->postResponse(Lcom/alibaba/doraemon/impl/request/VolleyRequest;Lcom/alibaba/doraemon/impl/request/VolleyResponse;)V
    :try_end_1
    .catch Lcom/alibaba/doraemon/impl/request/VolleyError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 138
    .end local v1    # "networkResponse":Lcom/alibaba/doraemon/impl/request/NetworkResponse;
    .end local v3    # "response":Lcom/alibaba/doraemon/impl/request/VolleyResponse;, "Lcom/alibaba/doraemon/impl/request/VolleyResponse<*>;"
    :catch_1
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/Exception;
    new-array v5, v13, [Ljava/lang/Object;

    const-string/jumbo v6, "networkDispatcher, url "

    aput-object v6, v5, v11

    invoke-virtual {v2}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/doraemon/utils/UrlUtil;->getDesensitizationData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v12

    const-string/jumbo v6, ", exception:"

    aput-object v6, v5, v7

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v5}, Lcom/alibaba/doraemon/impl/request/Util;->networkLog([Ljava/lang/Object;)V

    .line 140
    const-string/jumbo v5, "Unhandled exception %s"

    new-array v6, v12, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v11

    invoke-static {v0, v5, v6}, Lcom/alibaba/doraemon/impl/request/VolleyLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    iget-object v5, p0, Lcom/alibaba/doraemon/impl/request/NetworkDispatcher;->mDelivery:Lcom/alibaba/doraemon/impl/request/ResponseDelivery;

    new-instance v6, Lcom/alibaba/doraemon/impl/request/VolleyError;

    invoke-direct {v6, v0}, Lcom/alibaba/doraemon/impl/request/VolleyError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v5, v2, v6}, Lcom/alibaba/doraemon/impl/request/ResponseDelivery;->postError(Lcom/alibaba/doraemon/impl/request/VolleyRequest;Lcom/alibaba/doraemon/impl/request/VolleyError;)V

    goto/16 :goto_0

    .line 130
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "networkResponse":Lcom/alibaba/doraemon/impl/request/NetworkResponse;
    .restart local v3    # "response":Lcom/alibaba/doraemon/impl/request/VolleyResponse;, "Lcom/alibaba/doraemon/impl/request/VolleyResponse<*>;"
    :cond_3
    const/4 v5, 0x4

    :try_start_2
    new-array v6, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v9, "networkDispatcher, url "

    aput-object v9, v6, v5

    const/4 v5, 0x1

    invoke-virtual {v2}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->getUrl()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/alibaba/doraemon/utils/UrlUtil;->getDesensitizationData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v5

    const/4 v5, 0x2

    const-string/jumbo v9, ",result: failed"

    aput-object v9, v6, v5

    iget-object v5, v3, Lcom/alibaba/doraemon/impl/request/VolleyResponse;->error:Lcom/alibaba/doraemon/impl/request/VolleyError;

    if-eqz v5, :cond_4

    iget-object v5, v3, Lcom/alibaba/doraemon/impl/request/VolleyResponse;->error:Lcom/alibaba/doraemon/impl/request/VolleyError;

    .line 131
    invoke-virtual {v5}, Lcom/alibaba/doraemon/impl/request/VolleyError;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v9, v6

    move-object v10, v6

    move v6, v8

    goto :goto_1

    :cond_4
    const-string/jumbo v5, ""
    :try_end_2
    .catch Lcom/alibaba/doraemon/impl/request/VolleyError; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v9, v6

    move-object v10, v6

    move v6, v8

    goto :goto_1
.end method
