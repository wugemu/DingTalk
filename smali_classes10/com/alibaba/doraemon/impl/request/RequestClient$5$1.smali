.class Lcom/alibaba/doraemon/impl/request/RequestClient$5$1;
.super Ljava/lang/Object;
.source "RequestClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/impl/request/RequestClient$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/doraemon/impl/request/RequestClient$5;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/impl/request/RequestClient$5;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/doraemon/impl/request/RequestClient$5;

    .prologue
    .line 354
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/request/RequestClient$5$1;->this$1:Lcom/alibaba/doraemon/impl/request/RequestClient$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 358
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/request/RequestClient$5$1;->this$1:Lcom/alibaba/doraemon/impl/request/RequestClient$5;

    iget-object v2, v2, Lcom/alibaba/doraemon/impl/request/RequestClient$5;->this$0:Lcom/alibaba/doraemon/impl/request/RequestClient;

    invoke-static {v2}, Lcom/alibaba/doraemon/impl/request/RequestClient;->access$500(Lcom/alibaba/doraemon/impl/request/RequestClient;)Lcom/alibaba/doraemon/request/ResponseReceiver;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/request/RequestClient$5$1;->this$1:Lcom/alibaba/doraemon/impl/request/RequestClient$5;

    iget-object v2, v2, Lcom/alibaba/doraemon/impl/request/RequestClient$5;->this$0:Lcom/alibaba/doraemon/impl/request/RequestClient;

    invoke-virtual {v2}, Lcom/alibaba/doraemon/impl/request/RequestClient;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 360
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/request/RequestClient$5$1;->this$1:Lcom/alibaba/doraemon/impl/request/RequestClient$5;

    iget-object v2, v2, Lcom/alibaba/doraemon/impl/request/RequestClient$5;->this$0:Lcom/alibaba/doraemon/impl/request/RequestClient;

    iget-object v2, v2, Lcom/alibaba/doraemon/impl/request/RequestClient;->mResponse:Lcom/alibaba/doraemon/request/Response;

    if-nez v2, :cond_0

    .line 361
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/request/RequestClient$5$1;->this$1:Lcom/alibaba/doraemon/impl/request/RequestClient$5;

    iget-object v2, v2, Lcom/alibaba/doraemon/impl/request/RequestClient$5;->this$0:Lcom/alibaba/doraemon/impl/request/RequestClient;

    new-instance v3, Lcom/alibaba/doraemon/impl/request/RequestClient$5$1$1;

    invoke-direct {v3, p0}, Lcom/alibaba/doraemon/impl/request/RequestClient$5$1$1;-><init>(Lcom/alibaba/doraemon/impl/request/RequestClient$5$1;)V

    iput-object v3, v2, Lcom/alibaba/doraemon/impl/request/RequestClient;->mResponse:Lcom/alibaba/doraemon/request/Response;

    .line 403
    :cond_0
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "Request mReceiver onRequestFinsh url="

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/alibaba/doraemon/impl/request/RequestClient$5$1;->this$1:Lcom/alibaba/doraemon/impl/request/RequestClient$5;

    iget-object v4, v4, Lcom/alibaba/doraemon/impl/request/RequestClient$5;->this$0:Lcom/alibaba/doraemon/impl/request/RequestClient;

    invoke-virtual {v4}, Lcom/alibaba/doraemon/impl/request/RequestClient;->getRequestUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/doraemon/utils/UrlUtil;->getDesensitizationData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/alibaba/doraemon/impl/request/Util;->networkLog([Ljava/lang/Object;)V

    .line 404
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/request/RequestClient$5$1;->this$1:Lcom/alibaba/doraemon/impl/request/RequestClient$5;

    iget-object v2, v2, Lcom/alibaba/doraemon/impl/request/RequestClient$5;->this$0:Lcom/alibaba/doraemon/impl/request/RequestClient;

    invoke-static {v2}, Lcom/alibaba/doraemon/impl/request/RequestClient;->access$500(Lcom/alibaba/doraemon/impl/request/RequestClient;)Lcom/alibaba/doraemon/request/ResponseReceiver;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/doraemon/impl/request/RequestClient$5$1;->this$1:Lcom/alibaba/doraemon/impl/request/RequestClient$5;

    iget-object v3, v3, Lcom/alibaba/doraemon/impl/request/RequestClient$5;->this$0:Lcom/alibaba/doraemon/impl/request/RequestClient;

    iget-object v4, p0, Lcom/alibaba/doraemon/impl/request/RequestClient$5$1;->this$1:Lcom/alibaba/doraemon/impl/request/RequestClient$5;

    iget-object v4, v4, Lcom/alibaba/doraemon/impl/request/RequestClient$5;->this$0:Lcom/alibaba/doraemon/impl/request/RequestClient;

    iget-object v4, v4, Lcom/alibaba/doraemon/impl/request/RequestClient;->mResponse:Lcom/alibaba/doraemon/request/Response;

    invoke-interface {v2, v3, v4}, Lcom/alibaba/doraemon/request/ResponseReceiver;->onRequestFinsh(Lcom/alibaba/doraemon/request/Request;Lcom/alibaba/doraemon/request/Response;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 408
    :cond_1
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/request/RequestClient$5$1;->this$1:Lcom/alibaba/doraemon/impl/request/RequestClient$5;

    iget-object v2, v2, Lcom/alibaba/doraemon/impl/request/RequestClient$5;->this$0:Lcom/alibaba/doraemon/impl/request/RequestClient;

    iget-object v2, v2, Lcom/alibaba/doraemon/impl/request/RequestClient;->mResponse:Lcom/alibaba/doraemon/request/Response;

    if-eqz v2, :cond_2

    .line 409
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/request/RequestClient$5$1;->this$1:Lcom/alibaba/doraemon/impl/request/RequestClient$5;

    iget-object v2, v2, Lcom/alibaba/doraemon/impl/request/RequestClient$5;->this$0:Lcom/alibaba/doraemon/impl/request/RequestClient;

    iget-object v2, v2, Lcom/alibaba/doraemon/impl/request/RequestClient;->mResponse:Lcom/alibaba/doraemon/request/Response;

    invoke-interface {v2}, Lcom/alibaba/doraemon/request/Response;->getResponseBody()Lcom/alibaba/doraemon/request/RequestInputStream;

    move-result-object v1

    .line 410
    .local v1, "stream":Lcom/alibaba/doraemon/request/RequestInputStream;
    if-eqz v1, :cond_2

    .line 412
    :try_start_1
    invoke-virtual {v1}, Lcom/alibaba/doraemon/request/RequestInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 419
    .end local v1    # "stream":Lcom/alibaba/doraemon/request/RequestInputStream;
    :cond_2
    :goto_0
    return-void

    .line 413
    .restart local v1    # "stream":Lcom/alibaba/doraemon/request/RequestInputStream;
    :catch_0
    move-exception v0

    .line 414
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 408
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "stream":Lcom/alibaba/doraemon/request/RequestInputStream;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/alibaba/doraemon/impl/request/RequestClient$5$1;->this$1:Lcom/alibaba/doraemon/impl/request/RequestClient$5;

    iget-object v3, v3, Lcom/alibaba/doraemon/impl/request/RequestClient$5;->this$0:Lcom/alibaba/doraemon/impl/request/RequestClient;

    iget-object v3, v3, Lcom/alibaba/doraemon/impl/request/RequestClient;->mResponse:Lcom/alibaba/doraemon/request/Response;

    if-eqz v3, :cond_3

    .line 409
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/request/RequestClient$5$1;->this$1:Lcom/alibaba/doraemon/impl/request/RequestClient$5;

    iget-object v3, v3, Lcom/alibaba/doraemon/impl/request/RequestClient$5;->this$0:Lcom/alibaba/doraemon/impl/request/RequestClient;

    iget-object v3, v3, Lcom/alibaba/doraemon/impl/request/RequestClient;->mResponse:Lcom/alibaba/doraemon/request/Response;

    invoke-interface {v3}, Lcom/alibaba/doraemon/request/Response;->getResponseBody()Lcom/alibaba/doraemon/request/RequestInputStream;

    move-result-object v1

    .line 410
    .restart local v1    # "stream":Lcom/alibaba/doraemon/request/RequestInputStream;
    if-eqz v1, :cond_3

    .line 412
    :try_start_2
    invoke-virtual {v1}, Lcom/alibaba/doraemon/request/RequestInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 417
    .end local v1    # "stream":Lcom/alibaba/doraemon/request/RequestInputStream;
    :cond_3
    :goto_1
    throw v2

    .line 413
    .restart local v1    # "stream":Lcom/alibaba/doraemon/request/RequestInputStream;
    :catch_1
    move-exception v0

    .line 414
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method
