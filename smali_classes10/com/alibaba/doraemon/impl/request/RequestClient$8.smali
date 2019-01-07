.class Lcom/alibaba/doraemon/impl/request/RequestClient$8;
.super Ljava/lang/Object;
.source "RequestClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/impl/request/RequestClient;->clearProtocolRequest(Ljava/lang/String;)V
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
    .line 851
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/request/RequestClient$8;->this$0:Lcom/alibaba/doraemon/impl/request/RequestClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 854
    sget-object v4, Lcom/alibaba/doraemon/impl/request/RequestClient;->sLwpRequests:Ljava/util/List;

    monitor-enter v4

    .line 855
    :try_start_0
    sget-object v3, Lcom/alibaba/doraemon/impl/request/RequestClient;->sLwpRequests:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 856
    new-instance v2, Ljava/util/ArrayList;

    sget-object v3, Lcom/alibaba/doraemon/impl/request/RequestClient;->sLwpRequests:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 857
    .local v2, "requests":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/doraemon/impl/request/VolleyRequest;>;"
    sget-object v3, Lcom/alibaba/doraemon/impl/request/RequestClient;->sLwpRequests:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 859
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 860
    .local v0, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 861
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/impl/request/VolleyRequest;

    .line 862
    .local v1, "request":Lcom/alibaba/doraemon/impl/request/VolleyRequest;
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/alibaba/doraemon/impl/request/Volley;->instance(Landroid/content/Context;)Lcom/alibaba/doraemon/impl/request/Volley;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/doraemon/impl/request/Volley;->delivery()Lcom/alibaba/doraemon/impl/request/ResponseDelivery;

    move-result-object v3

    new-instance v5, Lcom/alibaba/doraemon/impl/request/VolleyError;

    const-string/jumbo v6, "request error because of logout!"

    invoke-direct {v5, v6}, Lcom/alibaba/doraemon/impl/request/VolleyError;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v1, v5}, Lcom/alibaba/doraemon/impl/request/ResponseDelivery;->postError(Lcom/alibaba/doraemon/impl/request/VolleyRequest;Lcom/alibaba/doraemon/impl/request/VolleyError;)V

    .line 864
    invoke-virtual {v1}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->getRequest()Lcom/alibaba/doraemon/request/Request;

    move-result-object v3

    const/4 v5, 0x1

    invoke-interface {v3, v5}, Lcom/alibaba/doraemon/request/Request;->cancel(Z)Z

    goto :goto_0

    .line 867
    .end local v0    # "iterator":Ljava/util/Iterator;
    .end local v1    # "request":Lcom/alibaba/doraemon/impl/request/VolleyRequest;
    .end local v2    # "requests":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/doraemon/impl/request/VolleyRequest;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
