.class Lcom/alibaba/doraemon/impl/request/RequestClient$6;
.super Ljava/lang/Object;
.source "RequestClient.java"

# interfaces
.implements Lcom/alibaba/doraemon/impl/request/VolleyResponse$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/impl/request/RequestClient;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/doraemon/impl/request/RequestClient;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/impl/request/RequestClient;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/impl/request/RequestClient;

    .prologue
    .line 443
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/request/RequestClient$6;->this$0:Lcom/alibaba/doraemon/impl/request/RequestClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/alibaba/doraemon/impl/request/VolleyError;)V
    .locals 8
    .param p1, "error"    # Lcom/alibaba/doraemon/impl/request/VolleyError;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 447
    const-string/jumbo v2, "lwp"

    iget-object v5, p0, Lcom/alibaba/doraemon/impl/request/RequestClient$6;->this$0:Lcom/alibaba/doraemon/impl/request/RequestClient;

    invoke-static {v5}, Lcom/alibaba/doraemon/impl/request/RequestClient;->access$100(Lcom/alibaba/doraemon/impl/request/RequestClient;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 448
    sget-object v5, Lcom/alibaba/doraemon/impl/request/RequestClient;->sLwpRequests:Ljava/util/List;

    monitor-enter v5

    .line 449
    :try_start_0
    sget-object v2, Lcom/alibaba/doraemon/impl/request/RequestClient;->sLwpRequests:Ljava/util/List;

    iget-object v6, p0, Lcom/alibaba/doraemon/impl/request/RequestClient$6;->this$0:Lcom/alibaba/doraemon/impl/request/RequestClient;

    invoke-static {v6}, Lcom/alibaba/doraemon/impl/request/RequestClient;->access$000(Lcom/alibaba/doraemon/impl/request/RequestClient;)Lcom/alibaba/doraemon/impl/request/InputStreamRequest;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 450
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 453
    :cond_0
    iget-object v2, p1, Lcom/alibaba/doraemon/impl/request/VolleyError;->networkResponse:Lcom/alibaba/doraemon/impl/request/NetworkResponse;

    if-nez v2, :cond_1

    move v1, v4

    .line 456
    .local v1, "statusCode":I
    :goto_0
    iget-object v2, p1, Lcom/alibaba/doraemon/impl/request/VolleyError;->networkResponse:Lcom/alibaba/doraemon/impl/request/NetworkResponse;

    if-eqz v2, :cond_3

    iget-object v2, p1, Lcom/alibaba/doraemon/impl/request/VolleyError;->networkResponse:Lcom/alibaba/doraemon/impl/request/NetworkResponse;

    iget-object v2, v2, Lcom/alibaba/doraemon/impl/request/NetworkResponse;->data:Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;

    if-eqz v2, :cond_3

    .line 457
    iget-object v2, p1, Lcom/alibaba/doraemon/impl/request/VolleyError;->networkResponse:Lcom/alibaba/doraemon/impl/request/NetworkResponse;

    iget-object v2, v2, Lcom/alibaba/doraemon/impl/request/NetworkResponse;->data:Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;

    iget-object v5, p1, Lcom/alibaba/doraemon/impl/request/VolleyError;->networkResponse:Lcom/alibaba/doraemon/impl/request/NetworkResponse;

    iget-object v5, v5, Lcom/alibaba/doraemon/impl/request/NetworkResponse;->data:Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;

    invoke-interface {v5}, Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;->size()I

    move-result v5

    int-to-long v6, v5

    invoke-static {v2, v6, v7}, Lcom/alibaba/doraemon/impl/request/OutInputStream;->fromPooledByteBuffer(Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;J)Lcom/alibaba/doraemon/impl/request/OutInputStream;

    move-result-object v3

    .line 458
    .local v3, "response":Lcom/alibaba/doraemon/request/RequestInputStream;
    new-instance v0, Lcom/alibaba/doraemon/impl/request/RequestResponse;

    invoke-virtual {p1}, Lcom/alibaba/doraemon/impl/request/VolleyError;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    if-nez v3, :cond_2

    :goto_1
    int-to-long v4, v4

    iget-object v6, p1, Lcom/alibaba/doraemon/impl/request/VolleyError;->networkResponse:Lcom/alibaba/doraemon/impl/request/NetworkResponse;

    iget-object v6, v6, Lcom/alibaba/doraemon/impl/request/NetworkResponse;->headers:Ljava/util/Map;

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/doraemon/impl/request/RequestResponse;-><init>(ILjava/lang/String;Lcom/alibaba/doraemon/request/RequestInputStream;JLjava/util/Map;)V

    .line 463
    .end local v3    # "response":Lcom/alibaba/doraemon/request/RequestInputStream;
    .local v0, "res":Lcom/alibaba/doraemon/request/Response;
    :goto_2
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/request/RequestClient$6;->this$0:Lcom/alibaba/doraemon/impl/request/RequestClient;

    invoke-static {v2, v0}, Lcom/alibaba/doraemon/impl/request/RequestClient;->access$600(Lcom/alibaba/doraemon/impl/request/RequestClient;Lcom/alibaba/doraemon/request/Response;)V

    .line 464
    return-void

    .line 450
    .end local v0    # "res":Lcom/alibaba/doraemon/request/Response;
    .end local v1    # "statusCode":I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 453
    :cond_1
    iget-object v2, p1, Lcom/alibaba/doraemon/impl/request/VolleyError;->networkResponse:Lcom/alibaba/doraemon/impl/request/NetworkResponse;

    iget v1, v2, Lcom/alibaba/doraemon/impl/request/NetworkResponse;->statusCode:I

    goto :goto_0

    .line 458
    .restart local v1    # "statusCode":I
    .restart local v3    # "response":Lcom/alibaba/doraemon/request/RequestInputStream;
    :cond_2
    invoke-virtual {v3}, Lcom/alibaba/doraemon/request/RequestInputStream;->length()I

    move-result v4

    goto :goto_1

    .line 460
    .end local v3    # "response":Lcom/alibaba/doraemon/request/RequestInputStream;
    :cond_3
    new-instance v0, Lcom/alibaba/doraemon/impl/request/RequestResponse;

    invoke-virtual {p1}, Lcom/alibaba/doraemon/impl/request/VolleyError;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/alibaba/doraemon/impl/request/RequestResponse;-><init>(ILjava/lang/String;)V

    .restart local v0    # "res":Lcom/alibaba/doraemon/request/Response;
    goto :goto_2
.end method
