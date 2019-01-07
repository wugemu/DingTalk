.class public Lcom/alibaba/doraemon/impl/request/CacheFileDispatcher;
.super Ljava/lang/Object;
.source "CacheFileDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mDelivery:Lcom/alibaba/doraemon/impl/request/ResponseDelivery;

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
.method public constructor <init>(Lcom/alibaba/doraemon/impl/request/VolleyRequest;Lcom/alibaba/doraemon/impl/request/ResponseDelivery;)V
    .locals 0
    .param p2, "delivery"    # Lcom/alibaba/doraemon/impl/request/ResponseDelivery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/doraemon/impl/request/VolleyRequest",
            "<",
            "Lcom/alibaba/doraemon/request/RequestInputStream;",
            ">;",
            "Lcom/alibaba/doraemon/impl/request/ResponseDelivery;",
            ")V"
        }
    .end annotation

    .prologue
    .line 27
    .local p1, "request":Lcom/alibaba/doraemon/impl/request/VolleyRequest;, "Lcom/alibaba/doraemon/impl/request/VolleyRequest<Lcom/alibaba/doraemon/request/RequestInputStream;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/request/CacheFileDispatcher;->mRequest:Lcom/alibaba/doraemon/impl/request/VolleyRequest;

    .line 29
    iput-object p2, p0, Lcom/alibaba/doraemon/impl/request/CacheFileDispatcher;->mDelivery:Lcom/alibaba/doraemon/impl/request/ResponseDelivery;

    .line 30
    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 36
    :try_start_0
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/request/CacheFileDispatcher;->mRequest:Lcom/alibaba/doraemon/impl/request/VolleyRequest;

    invoke-virtual {v4}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->getUrl()Ljava/lang/String;

    move-result-object v3

    .line 38
    .local v3, "url":Ljava/lang/String;
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/request/CacheFileDispatcher;->mRequest:Lcom/alibaba/doraemon/impl/request/VolleyRequest;

    invoke-virtual {v4}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->getCacheClient()Lcom/alibaba/doraemon/request/CacheClient;

    move-result-object v0

    .line 39
    .local v0, "cacheClient":Lcom/alibaba/doraemon/request/CacheClient;
    if-nez v0, :cond_0

    .line 40
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/request/CacheFileDispatcher;->mDelivery:Lcom/alibaba/doraemon/impl/request/ResponseDelivery;

    iget-object v5, p0, Lcom/alibaba/doraemon/impl/request/CacheFileDispatcher;->mRequest:Lcom/alibaba/doraemon/impl/request/VolleyRequest;

    new-instance v6, Lcom/alibaba/doraemon/impl/request/VolleyError;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " cacheClient is null"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/alibaba/doraemon/impl/request/VolleyError;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v5, v6}, Lcom/alibaba/doraemon/impl/request/ResponseDelivery;->postError(Lcom/alibaba/doraemon/impl/request/VolleyRequest;Lcom/alibaba/doraemon/impl/request/VolleyError;)V

    .line 43
    :cond_0
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/request/CacheFileDispatcher;->mRequest:Lcom/alibaba/doraemon/impl/request/VolleyRequest;

    invoke-virtual {v4}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->getRequest()Lcom/alibaba/doraemon/request/Request;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/alibaba/doraemon/request/CacheClient;->onReadData(Lcom/alibaba/doraemon/request/Request;)Lcom/alibaba/doraemon/request/Response;

    move-result-object v2

    .line 44
    .local v2, "response":Lcom/alibaba/doraemon/request/Response;
    if-nez v2, :cond_1

    .line 45
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/request/CacheFileDispatcher;->mDelivery:Lcom/alibaba/doraemon/impl/request/ResponseDelivery;

    iget-object v5, p0, Lcom/alibaba/doraemon/impl/request/CacheFileDispatcher;->mRequest:Lcom/alibaba/doraemon/impl/request/VolleyRequest;

    new-instance v6, Lcom/alibaba/doraemon/impl/request/VolleyError;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " cacheClient read data is null"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/alibaba/doraemon/impl/request/VolleyError;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v5, v6}, Lcom/alibaba/doraemon/impl/request/ResponseDelivery;->postError(Lcom/alibaba/doraemon/impl/request/VolleyRequest;Lcom/alibaba/doraemon/impl/request/VolleyError;)V

    .line 48
    :cond_1
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/request/CacheFileDispatcher;->mDelivery:Lcom/alibaba/doraemon/impl/request/ResponseDelivery;

    iget-object v5, p0, Lcom/alibaba/doraemon/impl/request/CacheFileDispatcher;->mRequest:Lcom/alibaba/doraemon/impl/request/VolleyRequest;

    const/16 v6, 0xc8

    invoke-interface {v2}, Lcom/alibaba/doraemon/request/Response;->getResponseBody()Lcom/alibaba/doraemon/request/RequestInputStream;

    move-result-object v7

    invoke-interface {v2}, Lcom/alibaba/doraemon/request/Response;->dataLength()J

    move-result-wide v8

    const/4 v10, 0x0

    invoke-static {v6, v7, v8, v9, v10}, Lcom/alibaba/doraemon/impl/request/VolleyResponse;->success(ILjava/lang/Object;JLjava/util/Map;)Lcom/alibaba/doraemon/impl/request/VolleyResponse;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/alibaba/doraemon/impl/request/ResponseDelivery;->postResponse(Lcom/alibaba/doraemon/impl/request/VolleyRequest;Lcom/alibaba/doraemon/impl/request/VolleyResponse;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .end local v0    # "cacheClient":Lcom/alibaba/doraemon/request/CacheClient;
    .end local v2    # "response":Lcom/alibaba/doraemon/request/Response;
    .end local v3    # "url":Ljava/lang/String;
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v1

    .line 51
    .local v1, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/request/CacheFileDispatcher;->mDelivery:Lcom/alibaba/doraemon/impl/request/ResponseDelivery;

    iget-object v5, p0, Lcom/alibaba/doraemon/impl/request/CacheFileDispatcher;->mRequest:Lcom/alibaba/doraemon/impl/request/VolleyRequest;

    new-instance v6, Lcom/alibaba/doraemon/impl/request/VolleyError;

    invoke-direct {v6, v1}, Lcom/alibaba/doraemon/impl/request/VolleyError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v4, v5, v6}, Lcom/alibaba/doraemon/impl/request/ResponseDelivery;->postError(Lcom/alibaba/doraemon/impl/request/VolleyRequest;Lcom/alibaba/doraemon/impl/request/VolleyError;)V

    goto :goto_0
.end method
