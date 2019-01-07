.class Lcom/alibaba/doraemon/impl/request/RequestClient$1;
.super Ljava/lang/Object;
.source "RequestClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/impl/request/RequestClient;->launch(Lcom/alibaba/doraemon/threadpool/Thread;)V
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
    .line 136
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/request/RequestClient$1;->this$0:Lcom/alibaba/doraemon/impl/request/RequestClient;

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
    const/4 v6, 0x0

    .line 139
    invoke-static {v6}, Lcom/alibaba/doraemon/impl/request/Volley;->instance(Landroid/content/Context;)Lcom/alibaba/doraemon/impl/request/Volley;

    move-result-object v4

    .line 140
    .local v4, "volley":Lcom/alibaba/doraemon/impl/request/Volley;
    iget-object v5, p0, Lcom/alibaba/doraemon/impl/request/RequestClient$1;->this$0:Lcom/alibaba/doraemon/impl/request/RequestClient;

    invoke-static {v5}, Lcom/alibaba/doraemon/impl/request/RequestClient;->access$000(Lcom/alibaba/doraemon/impl/request/RequestClient;)Lcom/alibaba/doraemon/impl/request/InputStreamRequest;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/doraemon/impl/request/InputStreamRequest;->getUrl()Ljava/lang/String;

    move-result-object v3

    .line 142
    .local v3, "url":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 143
    move-object v0, v3

    .line 144
    .local v0, "newUrl":Ljava/lang/String;
    invoke-static {v6}, Lcom/alibaba/doraemon/impl/request/Volley;->instance(Landroid/content/Context;)Lcom/alibaba/doraemon/impl/request/Volley;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/doraemon/impl/request/Volley;->getUrlRewriter()Lcom/alibaba/doraemon/request/UrlRewriter;

    move-result-object v1

    .line 145
    .local v1, "rewriter":Lcom/alibaba/doraemon/request/UrlRewriter;
    if-eqz v1, :cond_0

    .line 146
    invoke-interface {v1, v3}, Lcom/alibaba/doraemon/request/UrlRewriter;->rewriteProtocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 149
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 151
    .local v2, "tmpUrl":Ljava/lang/String;
    const-string/jumbo v5, "lwp://"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->isMainProcess()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 152
    sget-object v6, Lcom/alibaba/doraemon/impl/request/RequestClient;->sLwpRequests:Ljava/util/List;

    monitor-enter v6

    .line 153
    :try_start_0
    sget-object v5, Lcom/alibaba/doraemon/impl/request/RequestClient;->sLwpRequests:Ljava/util/List;

    iget-object v7, p0, Lcom/alibaba/doraemon/impl/request/RequestClient$1;->this$0:Lcom/alibaba/doraemon/impl/request/RequestClient;

    invoke-static {v7}, Lcom/alibaba/doraemon/impl/request/RequestClient;->access$000(Lcom/alibaba/doraemon/impl/request/RequestClient;)Lcom/alibaba/doraemon/impl/request/InputStreamRequest;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    iget-object v5, p0, Lcom/alibaba/doraemon/impl/request/RequestClient$1;->this$0:Lcom/alibaba/doraemon/impl/request/RequestClient;

    const-string/jumbo v7, "lwp"

    invoke-static {v5, v7}, Lcom/alibaba/doraemon/impl/request/RequestClient;->access$102(Lcom/alibaba/doraemon/impl/request/RequestClient;Ljava/lang/String;)Ljava/lang/String;

    .line 155
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    new-instance v5, Lcom/alibaba/doraemon/impl/request/LWPDispatcher;

    iget-object v6, p0, Lcom/alibaba/doraemon/impl/request/RequestClient$1;->this$0:Lcom/alibaba/doraemon/impl/request/RequestClient;

    invoke-static {v6}, Lcom/alibaba/doraemon/impl/request/RequestClient;->access$000(Lcom/alibaba/doraemon/impl/request/RequestClient;)Lcom/alibaba/doraemon/impl/request/InputStreamRequest;

    move-result-object v6

    invoke-virtual {v4}, Lcom/alibaba/doraemon/impl/request/Volley;->delivery()Lcom/alibaba/doraemon/impl/request/ResponseDelivery;

    move-result-object v7

    new-instance v8, Lcom/alibaba/doraemon/impl/request/RequestClient$1$1;

    invoke-direct {v8, p0, v2, v3}, Lcom/alibaba/doraemon/impl/request/RequestClient$1$1;-><init>(Lcom/alibaba/doraemon/impl/request/RequestClient$1;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v5, v6, v7, v8}, Lcom/alibaba/doraemon/impl/request/LWPDispatcher;-><init>(Lcom/alibaba/doraemon/impl/request/VolleyRequest;Lcom/alibaba/doraemon/impl/request/ResponseDelivery;Lcom/alibaba/doraemon/impl/request/DownloaderHandler$ExceptionHandler;)V

    .line 210
    invoke-virtual {v5}, Lcom/alibaba/doraemon/impl/request/LWPDispatcher;->run()V

    .line 218
    .end local v0    # "newUrl":Ljava/lang/String;
    .end local v1    # "rewriter":Lcom/alibaba/doraemon/request/UrlRewriter;
    .end local v2    # "tmpUrl":Ljava/lang/String;
    :goto_0
    return-void

    .line 155
    .restart local v0    # "newUrl":Ljava/lang/String;
    .restart local v1    # "rewriter":Lcom/alibaba/doraemon/request/UrlRewriter;
    .restart local v2    # "tmpUrl":Ljava/lang/String;
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 213
    :cond_1
    iget-object v5, p0, Lcom/alibaba/doraemon/impl/request/RequestClient$1;->this$0:Lcom/alibaba/doraemon/impl/request/RequestClient;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alibaba/doraemon/impl/request/RequestClient;->access$400(Lcom/alibaba/doraemon/impl/request/RequestClient;Ljava/lang/String;)V

    goto :goto_0

    .line 216
    .end local v0    # "newUrl":Ljava/lang/String;
    .end local v1    # "rewriter":Lcom/alibaba/doraemon/request/UrlRewriter;
    .end local v2    # "tmpUrl":Ljava/lang/String;
    :cond_2
    invoke-virtual {v4}, Lcom/alibaba/doraemon/impl/request/Volley;->delivery()Lcom/alibaba/doraemon/impl/request/ResponseDelivery;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/doraemon/impl/request/RequestClient$1;->this$0:Lcom/alibaba/doraemon/impl/request/RequestClient;

    invoke-static {v6}, Lcom/alibaba/doraemon/impl/request/RequestClient;->access$000(Lcom/alibaba/doraemon/impl/request/RequestClient;)Lcom/alibaba/doraemon/impl/request/InputStreamRequest;

    move-result-object v6

    new-instance v7, Lcom/alibaba/doraemon/impl/request/VolleyError;

    const-string/jumbo v8, "request url is null !"

    invoke-direct {v7, v8}, Lcom/alibaba/doraemon/impl/request/VolleyError;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v6, v7}, Lcom/alibaba/doraemon/impl/request/ResponseDelivery;->postError(Lcom/alibaba/doraemon/impl/request/VolleyRequest;Lcom/alibaba/doraemon/impl/request/VolleyError;)V

    goto :goto_0
.end method
