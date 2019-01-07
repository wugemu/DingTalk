.class Lcom/alibaba/doraemon/impl/request/RequestQueue$5;
.super Ljava/lang/Object;
.source "RequestQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/impl/request/RequestQueue;->onRequestFinished(Lcom/alibaba/doraemon/impl/request/RequestClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/doraemon/impl/request/RequestQueue;

.field final synthetic val$request:Lcom/alibaba/doraemon/impl/request/RequestClient;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/impl/request/RequestQueue;Lcom/alibaba/doraemon/impl/request/RequestClient;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/impl/request/RequestQueue;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/request/RequestQueue$5;->this$0:Lcom/alibaba/doraemon/impl/request/RequestQueue;

    iput-object p2, p0, Lcom/alibaba/doraemon/impl/request/RequestQueue$5;->val$request:Lcom/alibaba/doraemon/impl/request/RequestClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 197
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/request/RequestQueue$5;->val$request:Lcom/alibaba/doraemon/impl/request/RequestClient;

    invoke-virtual {v4}, Lcom/alibaba/doraemon/impl/request/RequestClient;->getRequestUrl()Ljava/lang/String;

    move-result-object v3

    .line 198
    .local v3, "url":Ljava/lang/String;
    const-string/jumbo v4, ""

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "RequestQueue onRequestFinished url="

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v3}, Lcom/alibaba/doraemon/utils/UrlUtil;->getDesensitizationData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v6}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/alibaba/doraemon/DoraemonLog;->outLogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/request/RequestQueue$5;->this$0:Lcom/alibaba/doraemon/impl/request/RequestQueue;

    invoke-static {v4}, Lcom/alibaba/doraemon/impl/request/RequestQueue;->access$100(Lcom/alibaba/doraemon/impl/request/RequestQueue;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/impl/request/RequestClient;

    .line 202
    .local v1, "requestLaunched":Lcom/alibaba/doraemon/impl/request/RequestClient;
    if-eqz v1, :cond_1

    iget-object v4, p0, Lcom/alibaba/doraemon/impl/request/RequestQueue$5;->val$request:Lcom/alibaba/doraemon/impl/request/RequestClient;

    if-eq v1, v4, :cond_1

    invoke-virtual {v1}, Lcom/alibaba/doraemon/impl/request/RequestClient;->isReadCacheOnly()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/alibaba/doraemon/impl/request/RequestQueue$5;->val$request:Lcom/alibaba/doraemon/impl/request/RequestClient;

    invoke-virtual {v4}, Lcom/alibaba/doraemon/impl/request/RequestClient;->isReadCacheOnly()Z

    move-result v4

    if-nez v4, :cond_1

    .line 204
    :cond_0
    sget-object v4, Lcom/alibaba/doraemon/Priority;->LOW:Lcom/alibaba/doraemon/Priority;

    invoke-static {v4}, Lcom/alibaba/doraemon/impl/request/RequestThreadFactory;->getDeliverThread(Lcom/alibaba/doraemon/Priority;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v6

    iget-object v4, p0, Lcom/alibaba/doraemon/impl/request/RequestQueue$5;->val$request:Lcom/alibaba/doraemon/impl/request/RequestClient;

    iget-object v4, v4, Lcom/alibaba/doraemon/impl/request/RequestClient;->mResponse:Lcom/alibaba/doraemon/request/Response;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/alibaba/doraemon/impl/request/RequestQueue$5;->val$request:Lcom/alibaba/doraemon/impl/request/RequestClient;

    iget-object v4, v4, Lcom/alibaba/doraemon/impl/request/RequestClient;->mResponse:Lcom/alibaba/doraemon/request/Response;

    .line 205
    invoke-interface {v4}, Lcom/alibaba/doraemon/request/Response;->clone()Lcom/alibaba/doraemon/request/Response;

    move-result-object v4

    .line 204
    :goto_0
    invoke-virtual {v1, v6, v4}, Lcom/alibaba/doraemon/impl/request/RequestClient;->deliverWithResponse(Lcom/alibaba/doraemon/threadpool/Thread;Lcom/alibaba/doraemon/request/Response;)V

    .line 209
    :cond_1
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/request/RequestQueue$5;->this$0:Lcom/alibaba/doraemon/impl/request/RequestQueue;

    invoke-static {v4}, Lcom/alibaba/doraemon/impl/request/RequestQueue;->access$200(Lcom/alibaba/doraemon/impl/request/RequestQueue;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 210
    .local v2, "requests":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/doraemon/impl/request/RequestClient;>;"
    if-eqz v2, :cond_6

    .line 211
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/impl/request/RequestClient;

    .line 212
    .local v0, "requestClient":Lcom/alibaba/doraemon/impl/request/RequestClient;
    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/request/RequestClient;->isReadCacheOnly()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/alibaba/doraemon/impl/request/RequestQueue$5;->val$request:Lcom/alibaba/doraemon/impl/request/RequestClient;

    invoke-virtual {v4}, Lcom/alibaba/doraemon/impl/request/RequestClient;->isReadCacheOnly()Z

    move-result v4

    if-nez v4, :cond_2

    .line 214
    :cond_3
    sget-object v4, Lcom/alibaba/doraemon/Priority;->LOW:Lcom/alibaba/doraemon/Priority;

    invoke-static {v4}, Lcom/alibaba/doraemon/impl/request/RequestThreadFactory;->getDeliverThread(Lcom/alibaba/doraemon/Priority;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v7

    iget-object v4, p0, Lcom/alibaba/doraemon/impl/request/RequestQueue$5;->val$request:Lcom/alibaba/doraemon/impl/request/RequestClient;

    iget-object v4, v4, Lcom/alibaba/doraemon/impl/request/RequestClient;->mResponse:Lcom/alibaba/doraemon/request/Response;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/alibaba/doraemon/impl/request/RequestQueue$5;->val$request:Lcom/alibaba/doraemon/impl/request/RequestClient;

    iget-object v4, v4, Lcom/alibaba/doraemon/impl/request/RequestClient;->mResponse:Lcom/alibaba/doraemon/request/Response;

    .line 215
    invoke-interface {v4}, Lcom/alibaba/doraemon/request/Response;->clone()Lcom/alibaba/doraemon/request/Response;

    move-result-object v4

    .line 214
    :goto_2
    invoke-virtual {v0, v7, v4}, Lcom/alibaba/doraemon/impl/request/RequestClient;->deliverWithResponse(Lcom/alibaba/doraemon/threadpool/Thread;Lcom/alibaba/doraemon/request/Response;)V

    goto :goto_1

    .end local v0    # "requestClient":Lcom/alibaba/doraemon/impl/request/RequestClient;
    .end local v2    # "requests":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/doraemon/impl/request/RequestClient;>;"
    :cond_4
    move-object v4, v5

    .line 205
    goto :goto_0

    .restart local v0    # "requestClient":Lcom/alibaba/doraemon/impl/request/RequestClient;
    .restart local v2    # "requests":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/doraemon/impl/request/RequestClient;>;"
    :cond_5
    move-object v4, v5

    .line 215
    goto :goto_2

    .line 220
    .end local v0    # "requestClient":Lcom/alibaba/doraemon/impl/request/RequestClient;
    :cond_6
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/request/RequestQueue$5;->val$request:Lcom/alibaba/doraemon/impl/request/RequestClient;

    sget-object v5, Lcom/alibaba/doraemon/Priority;->LOW:Lcom/alibaba/doraemon/Priority;

    invoke-static {v5}, Lcom/alibaba/doraemon/impl/request/RequestThreadFactory;->getDeliverThread(Lcom/alibaba/doraemon/Priority;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alibaba/doraemon/impl/request/RequestClient;->deliver(Lcom/alibaba/doraemon/threadpool/Thread;)V

    .line 221
    return-void
.end method
