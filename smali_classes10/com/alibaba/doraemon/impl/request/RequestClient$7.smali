.class Lcom/alibaba/doraemon/impl/request/RequestClient$7;
.super Ljava/lang/Object;
.source "RequestClient.java"

# interfaces
.implements Lcom/alibaba/doraemon/impl/request/VolleyResponse$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/impl/request/RequestClient;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/doraemon/impl/request/VolleyResponse$Listener",
        "<",
        "Lcom/alibaba/doraemon/request/RequestInputStream;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/doraemon/impl/request/RequestClient;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/impl/request/RequestClient;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/impl/request/RequestClient;

    .prologue
    .line 467
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/request/RequestClient$7;->this$0:Lcom/alibaba/doraemon/impl/request/RequestClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChange(JJ)V
    .locals 7
    .param p1, "totalSize"    # J
    .param p3, "downloadSize"    # J

    .prologue
    .line 484
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/RequestClient$7;->this$0:Lcom/alibaba/doraemon/impl/request/RequestClient;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/request/RequestClient;->access$500(Lcom/alibaba/doraemon/impl/request/RequestClient;)Lcom/alibaba/doraemon/request/ResponseReceiver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/RequestClient$7;->this$0:Lcom/alibaba/doraemon/impl/request/RequestClient;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/request/RequestClient;->access$500(Lcom/alibaba/doraemon/impl/request/RequestClient;)Lcom/alibaba/doraemon/request/ResponseReceiver;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/request/RequestClient$7;->this$0:Lcom/alibaba/doraemon/impl/request/RequestClient;

    move-wide v2, p1

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/doraemon/request/ResponseReceiver;->onProgressChange(Lcom/alibaba/doraemon/request/Request;JJ)V

    .line 487
    :cond_0
    return-void
.end method

.method public onResponse(ILcom/alibaba/doraemon/request/RequestInputStream;JLjava/util/Map;)V
    .locals 9
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
    .line 472
    .local p5, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "lwp"

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/request/RequestClient$7;->this$0:Lcom/alibaba/doraemon/impl/request/RequestClient;

    invoke-static {v2}, Lcom/alibaba/doraemon/impl/request/RequestClient;->access$100(Lcom/alibaba/doraemon/impl/request/RequestClient;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 473
    sget-object v2, Lcom/alibaba/doraemon/impl/request/RequestClient;->sLwpRequests:Ljava/util/List;

    monitor-enter v2

    .line 474
    :try_start_0
    sget-object v0, Lcom/alibaba/doraemon/impl/request/RequestClient;->sLwpRequests:Ljava/util/List;

    iget-object v3, p0, Lcom/alibaba/doraemon/impl/request/RequestClient$7;->this$0:Lcom/alibaba/doraemon/impl/request/RequestClient;

    invoke-static {v3}, Lcom/alibaba/doraemon/impl/request/RequestClient;->access$000(Lcom/alibaba/doraemon/impl/request/RequestClient;)Lcom/alibaba/doraemon/impl/request/InputStreamRequest;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 475
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 478
    :cond_0
    new-instance v1, Lcom/alibaba/doraemon/impl/request/RequestResponse;

    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/RequestClient$7;->this$0:Lcom/alibaba/doraemon/impl/request/RequestClient;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/request/RequestClient;->access$000(Lcom/alibaba/doraemon/impl/request/RequestClient;)Lcom/alibaba/doraemon/impl/request/InputStreamRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/request/InputStreamRequest;->getCacheClient()Lcom/alibaba/doraemon/request/CacheClient;

    move-result-object v7

    iget-object v8, p0, Lcom/alibaba/doraemon/impl/request/RequestClient$7;->this$0:Lcom/alibaba/doraemon/impl/request/RequestClient;

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v1 .. v8}, Lcom/alibaba/doraemon/impl/request/RequestResponse;-><init>(ILcom/alibaba/doraemon/request/RequestInputStream;JLjava/util/Map;Lcom/alibaba/doraemon/request/CacheClient;Lcom/alibaba/doraemon/request/Request;)V

    .line 479
    .local v1, "res":Lcom/alibaba/doraemon/request/Response;
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/RequestClient$7;->this$0:Lcom/alibaba/doraemon/impl/request/RequestClient;

    invoke-static {v0, v1}, Lcom/alibaba/doraemon/impl/request/RequestClient;->access$600(Lcom/alibaba/doraemon/impl/request/RequestClient;Lcom/alibaba/doraemon/request/Response;)V

    .line 480
    return-void

    .line 475
    .end local v1    # "res":Lcom/alibaba/doraemon/request/Response;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public bridge synthetic onResponse(ILjava/lang/Object;JLjava/util/Map;)V
    .locals 7

    .prologue
    .line 467
    move-object v3, p2

    check-cast v3, Lcom/alibaba/doraemon/request/RequestInputStream;

    move-object v1, p0

    move v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/doraemon/impl/request/RequestClient$7;->onResponse(ILcom/alibaba/doraemon/request/RequestInputStream;JLjava/util/Map;)V

    return-void
.end method
