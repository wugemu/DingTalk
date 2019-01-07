.class public Lcom/alibaba/doraemon/impl/request/InputStreamRequest;
.super Lcom/alibaba/doraemon/impl/request/VolleyRequest;
.source "InputStreamRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/doraemon/impl/request/VolleyRequest",
        "<",
        "Lcom/alibaba/doraemon/request/RequestInputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private mRequestBody:[B

.field private mRequestHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;-><init>()V

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/request/InputStreamRequest;->mRequestBody:[B

    .line 121
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/request/InputStreamRequest;->mRequestParams:Ljava/util/Map;

    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/request/InputStreamRequest;->mRequestHeaders:Ljava/util/Map;

    .line 16
    new-instance v0, Lcom/alibaba/doraemon/impl/request/DefaultRetryPolicy;

    invoke-direct {v0}, Lcom/alibaba/doraemon/impl/request/DefaultRetryPolicy;-><init>()V

    invoke-virtual {p0, v0}, Lcom/alibaba/doraemon/impl/request/InputStreamRequest;->setRetryPolicy(Lcom/alibaba/doraemon/request/RetryPolicy;)Lcom/alibaba/doraemon/impl/request/VolleyRequest;

    .line 17
    return-void
.end method


# virtual methods
.method public addReqeustParams(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/InputStreamRequest;->mRequestParams:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 93
    return-void
.end method

.method public addRequestHeaders(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/InputStreamRequest;->mRequestHeaders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 100
    return-void
.end method

.method public addRequestParams(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/InputStreamRequest;->mRequestParams:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    return-void
.end method

.method protected deliverResponse(ILcom/alibaba/doraemon/request/RequestInputStream;JLjava/util/Map;)V
    .locals 7
    .param p1, "statusCode"    # I
    .param p2, "response"    # Lcom/alibaba/doraemon/request/RequestInputStream;
    .param p3, "length"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/alibaba/doraemon/request/RequestInputStream;",
            "J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p5, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/InputStreamRequest;->mListener:Lcom/alibaba/doraemon/impl/request/VolleyResponse$Listener;

    if-eqz v0, :cond_0

    .line 70
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/request/InputStreamRequest;->mListener:Lcom/alibaba/doraemon/impl/request/VolleyResponse$Listener;

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/alibaba/doraemon/impl/request/VolleyResponse$Listener;->onResponse(ILjava/lang/Object;JLjava/util/Map;)V

    .line 72
    :cond_0
    return-void
.end method

.method protected bridge synthetic deliverResponse(ILjava/lang/Object;JLjava/util/Map;)V
    .locals 7

    .prologue
    .line 10
    move-object v3, p2

    check-cast v3, Lcom/alibaba/doraemon/request/RequestInputStream;

    move-object v1, p0

    move v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/doraemon/impl/request/InputStreamRequest;->deliverResponse(ILcom/alibaba/doraemon/request/RequestInputStream;JLjava/util/Map;)V

    return-void
.end method

.method public getBody()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/doraemon/impl/request/AuthFailureError;
        }
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/InputStreamRequest;->mRequestBody:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/InputStreamRequest;->mRequestBody:[B

    array-length v0, v0

    if-lez v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/InputStreamRequest;->mRequestBody:[B

    .line 131
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->getBody()[B

    move-result-object v0

    goto :goto_0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/doraemon/impl/request/AuthFailureError;
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/InputStreamRequest;->mRequestHeaders:Ljava/util/Map;

    return-object v0
.end method

.method protected getParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/InputStreamRequest;->mRequestParams:Ljava/util/Map;

    return-object v0
.end method

.method public getPostBody()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/doraemon/impl/request/AuthFailureError;
        }
    .end annotation

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/alibaba/doraemon/impl/request/InputStreamRequest;->getBody()[B

    move-result-object v0

    return-object v0
.end method

.method protected parseNetworkResponse(Lcom/alibaba/doraemon/impl/request/NetworkResponse;)Lcom/alibaba/doraemon/impl/request/VolleyResponse;
    .locals 10
    .param p1, "response"    # Lcom/alibaba/doraemon/impl/request/NetworkResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/doraemon/impl/request/NetworkResponse;",
            ")",
            "Lcom/alibaba/doraemon/impl/request/VolleyResponse",
            "<",
            "Lcom/alibaba/doraemon/request/RequestInputStream;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 24
    if-eqz p1, :cond_5

    iget-boolean v5, p1, Lcom/alibaba/doraemon/impl/request/NetworkResponse;->isSuccess:Z

    if-eqz v5, :cond_5

    .line 25
    iget-object v5, p1, Lcom/alibaba/doraemon/impl/request/NetworkResponse;->data:Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;

    if-eqz v5, :cond_0

    .line 26
    iget-object v5, p1, Lcom/alibaba/doraemon/impl/request/NetworkResponse;->data:Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;

    invoke-interface {v5}, Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;->size()I

    move-result v4

    .line 28
    .local v4, "size":I
    iget-object v5, p1, Lcom/alibaba/doraemon/impl/request/NetworkResponse;->data:Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;

    int-to-long v6, v4

    invoke-static {v5, v6, v7}, Lcom/alibaba/doraemon/impl/request/OutInputStream;->fromPooledByteBuffer(Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;J)Lcom/alibaba/doraemon/impl/request/OutInputStream;

    move-result-object v2

    .line 29
    .local v2, "inputStream":Lcom/alibaba/doraemon/request/RequestInputStream;
    iget v5, p1, Lcom/alibaba/doraemon/impl/request/NetworkResponse;->statusCode:I

    int-to-long v6, v4

    iget-object v8, p1, Lcom/alibaba/doraemon/impl/request/NetworkResponse;->headers:Ljava/util/Map;

    invoke-static {v5, v2, v6, v7, v8}, Lcom/alibaba/doraemon/impl/request/VolleyResponse;->success(ILjava/lang/Object;JLjava/util/Map;)Lcom/alibaba/doraemon/impl/request/VolleyResponse;

    move-result-object v3

    .line 63
    .end local v2    # "inputStream":Lcom/alibaba/doraemon/request/RequestInputStream;
    .end local v4    # "size":I
    .local v3, "ret":Lcom/alibaba/doraemon/impl/request/VolleyResponse;, "Lcom/alibaba/doraemon/impl/request/VolleyResponse<Lcom/alibaba/doraemon/request/RequestInputStream;>;"
    :goto_0
    return-object v3

    .line 31
    .end local v3    # "ret":Lcom/alibaba/doraemon/impl/request/VolleyResponse;, "Lcom/alibaba/doraemon/impl/request/VolleyResponse<Lcom/alibaba/doraemon/request/RequestInputStream;>;"
    :cond_0
    const/4 v1, 0x0

    .line 32
    .local v1, "cacheResponse":Lcom/alibaba/doraemon/request/Response;
    invoke-virtual {p0}, Lcom/alibaba/doraemon/impl/request/InputStreamRequest;->getCacheClient()Lcom/alibaba/doraemon/request/CacheClient;

    move-result-object v0

    .line 33
    .local v0, "cacheClient":Lcom/alibaba/doraemon/request/CacheClient;
    if-eqz v0, :cond_1

    .line 34
    invoke-virtual {p0}, Lcom/alibaba/doraemon/impl/request/InputStreamRequest;->getRequest()Lcom/alibaba/doraemon/request/Request;

    move-result-object v5

    invoke-interface {v0, v5}, Lcom/alibaba/doraemon/request/CacheClient;->onReadData(Lcom/alibaba/doraemon/request/Request;)Lcom/alibaba/doraemon/request/Response;

    move-result-object v1

    .line 37
    :cond_1
    if-nez v1, :cond_3

    .line 38
    invoke-virtual {p0}, Lcom/alibaba/doraemon/impl/request/InputStreamRequest;->shouldCache()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 39
    invoke-static {}, Lcom/alibaba/doraemon/impl/request/CacheClientManager;->getInstance()Lcom/alibaba/doraemon/impl/request/CacheClientManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/doraemon/impl/request/CacheClientManager;->getDefaultCacheClient()Lcom/alibaba/doraemon/request/CacheClient;

    move-result-object v0

    .line 40
    invoke-virtual {p0}, Lcom/alibaba/doraemon/impl/request/InputStreamRequest;->getRequest()Lcom/alibaba/doraemon/request/Request;

    move-result-object v5

    invoke-interface {v0, v5}, Lcom/alibaba/doraemon/request/CacheClient;->onReadData(Lcom/alibaba/doraemon/request/Request;)Lcom/alibaba/doraemon/request/Response;

    move-result-object v1

    .line 43
    :cond_2
    if-nez v1, :cond_3

    .line 44
    invoke-static {}, Lcom/alibaba/doraemon/impl/request/CacheClientManager;->getInstance()Lcom/alibaba/doraemon/impl/request/CacheClientManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/doraemon/impl/request/CacheClientManager;->getTmpCacheClient()Lcom/alibaba/doraemon/request/CacheClient;

    move-result-object v0

    .line 45
    invoke-virtual {p0}, Lcom/alibaba/doraemon/impl/request/InputStreamRequest;->getRequest()Lcom/alibaba/doraemon/request/Request;

    move-result-object v5

    invoke-interface {v0, v5}, Lcom/alibaba/doraemon/request/CacheClient;->onReadData(Lcom/alibaba/doraemon/request/Request;)Lcom/alibaba/doraemon/request/Response;

    move-result-object v1

    .line 49
    :cond_3
    if-eqz v1, :cond_4

    .line 50
    iget v5, p1, Lcom/alibaba/doraemon/impl/request/NetworkResponse;->statusCode:I

    invoke-interface {v1}, Lcom/alibaba/doraemon/request/Response;->getResponseBody()Lcom/alibaba/doraemon/request/RequestInputStream;

    move-result-object v6

    invoke-interface {v1}, Lcom/alibaba/doraemon/request/Response;->dataLength()J

    move-result-wide v8

    invoke-interface {v1}, Lcom/alibaba/doraemon/request/Response;->getResponseHeaders()Ljava/util/Map;

    move-result-object v7

    invoke-static {v5, v6, v8, v9, v7}, Lcom/alibaba/doraemon/impl/request/VolleyResponse;->success(ILjava/lang/Object;JLjava/util/Map;)Lcom/alibaba/doraemon/impl/request/VolleyResponse;

    move-result-object v3

    .restart local v3    # "ret":Lcom/alibaba/doraemon/impl/request/VolleyResponse;, "Lcom/alibaba/doraemon/impl/request/VolleyResponse<Lcom/alibaba/doraemon/request/RequestInputStream;>;"
    goto :goto_0

    .line 52
    .end local v3    # "ret":Lcom/alibaba/doraemon/impl/request/VolleyResponse;, "Lcom/alibaba/doraemon/impl/request/VolleyResponse<Lcom/alibaba/doraemon/request/RequestInputStream;>;"
    :cond_4
    new-instance v5, Lcom/alibaba/doraemon/impl/request/ParseError;

    invoke-direct {v5}, Lcom/alibaba/doraemon/impl/request/ParseError;-><init>()V

    invoke-static {v5}, Lcom/alibaba/doraemon/impl/request/VolleyResponse;->error(Lcom/alibaba/doraemon/impl/request/VolleyError;)Lcom/alibaba/doraemon/impl/request/VolleyResponse;

    move-result-object v3

    .line 54
    .restart local v3    # "ret":Lcom/alibaba/doraemon/impl/request/VolleyResponse;, "Lcom/alibaba/doraemon/impl/request/VolleyResponse<Lcom/alibaba/doraemon/request/RequestInputStream;>;"
    goto :goto_0

    .line 56
    .end local v0    # "cacheClient":Lcom/alibaba/doraemon/request/CacheClient;
    .end local v1    # "cacheResponse":Lcom/alibaba/doraemon/request/Response;
    .end local v3    # "ret":Lcom/alibaba/doraemon/impl/request/VolleyResponse;, "Lcom/alibaba/doraemon/impl/request/VolleyResponse<Lcom/alibaba/doraemon/request/RequestInputStream;>;"
    :cond_5
    if-eqz p1, :cond_6

    .line 57
    new-instance v5, Lcom/alibaba/doraemon/impl/request/ParseError;

    invoke-direct {v5, p1}, Lcom/alibaba/doraemon/impl/request/ParseError;-><init>(Lcom/alibaba/doraemon/impl/request/NetworkResponse;)V

    invoke-static {v5}, Lcom/alibaba/doraemon/impl/request/VolleyResponse;->error(Lcom/alibaba/doraemon/impl/request/VolleyError;)Lcom/alibaba/doraemon/impl/request/VolleyResponse;

    move-result-object v3

    .restart local v3    # "ret":Lcom/alibaba/doraemon/impl/request/VolleyResponse;, "Lcom/alibaba/doraemon/impl/request/VolleyResponse<Lcom/alibaba/doraemon/request/RequestInputStream;>;"
    goto :goto_0

    .line 59
    .end local v3    # "ret":Lcom/alibaba/doraemon/impl/request/VolleyResponse;, "Lcom/alibaba/doraemon/impl/request/VolleyResponse<Lcom/alibaba/doraemon/request/RequestInputStream;>;"
    :cond_6
    new-instance v5, Lcom/alibaba/doraemon/impl/request/ParseError;

    invoke-direct {v5}, Lcom/alibaba/doraemon/impl/request/ParseError;-><init>()V

    invoke-static {v5}, Lcom/alibaba/doraemon/impl/request/VolleyResponse;->error(Lcom/alibaba/doraemon/impl/request/VolleyError;)Lcom/alibaba/doraemon/impl/request/VolleyResponse;

    move-result-object v3

    .restart local v3    # "ret":Lcom/alibaba/doraemon/impl/request/VolleyResponse;, "Lcom/alibaba/doraemon/impl/request/VolleyResponse<Lcom/alibaba/doraemon/request/RequestInputStream;>;"
    goto :goto_0
.end method

.method public setRequestBody([B)V
    .locals 0
    .param p1, "body"    # [B

    .prologue
    .line 78
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/request/InputStreamRequest;->mRequestBody:[B

    .line 79
    return-void
.end method
