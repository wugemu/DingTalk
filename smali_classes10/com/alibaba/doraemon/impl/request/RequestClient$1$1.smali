.class Lcom/alibaba/doraemon/impl/request/RequestClient$1$1;
.super Ljava/lang/Object;
.source "RequestClient.java"

# interfaces
.implements Lcom/alibaba/doraemon/impl/request/DownloaderHandler$ExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/impl/request/RequestClient$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/doraemon/impl/request/RequestClient$1;

.field final synthetic val$tmpUrl:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/impl/request/RequestClient$1;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/doraemon/impl/request/RequestClient$1;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/request/RequestClient$1$1;->this$1:Lcom/alibaba/doraemon/impl/request/RequestClient$1;

    iput-object p2, p0, Lcom/alibaba/doraemon/impl/request/RequestClient$1$1;->val$tmpUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/doraemon/impl/request/RequestClient$1$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExceptionHandle(Ljava/lang/String;Ljava/lang/String;)V
    .locals 14
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 159
    sget-object v9, Lcom/alibaba/doraemon/impl/request/RequestClient;->sLwpRequests:Ljava/util/List;

    monitor-enter v9

    .line 160
    :try_start_0
    sget-object v8, Lcom/alibaba/doraemon/impl/request/RequestClient;->sLwpRequests:Ljava/util/List;

    iget-object v10, p0, Lcom/alibaba/doraemon/impl/request/RequestClient$1$1;->this$1:Lcom/alibaba/doraemon/impl/request/RequestClient$1;

    iget-object v10, v10, Lcom/alibaba/doraemon/impl/request/RequestClient$1;->this$0:Lcom/alibaba/doraemon/impl/request/RequestClient;

    invoke-static {v10}, Lcom/alibaba/doraemon/impl/request/RequestClient;->access$000(Lcom/alibaba/doraemon/impl/request/RequestClient;)Lcom/alibaba/doraemon/impl/request/InputStreamRequest;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 161
    iget-object v8, p0, Lcom/alibaba/doraemon/impl/request/RequestClient$1$1;->this$1:Lcom/alibaba/doraemon/impl/request/RequestClient$1;

    iget-object v8, v8, Lcom/alibaba/doraemon/impl/request/RequestClient$1;->this$0:Lcom/alibaba/doraemon/impl/request/RequestClient;

    const-string/jumbo v10, "http"

    invoke-static {v8, v10}, Lcom/alibaba/doraemon/impl/request/RequestClient;->access$102(Lcom/alibaba/doraemon/impl/request/RequestClient;Ljava/lang/String;)Ljava/lang/String;

    .line 162
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    const-string/jumbo v8, "LWPFILEDOWNLOADER"

    .line 165
    invoke-static {v8}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/doraemon/lwp/LWPFileDownloader;

    .line 167
    .local v5, "lwpFileDownloader":Lcom/alibaba/doraemon/lwp/LWPFileDownloader;
    invoke-interface {v5}, Lcom/alibaba/doraemon/lwp/LWPFileDownloader;->getSessionId()Ljava/lang/String;

    move-result-object v4

    .line 168
    .local v4, "lwpCookie":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 169
    const-string/jumbo v8, "RequestClient"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "lwp sId is null url:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/alibaba/doraemon/impl/request/RequestClient$1$1;->val$tmpUrl:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alibaba/doraemon/DoraemonLog;->outLogError(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    :cond_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 173
    const/4 v6, 0x0

    .line 175
    .local v6, "originCookie":Ljava/lang/String;
    :try_start_1
    iget-object v8, p0, Lcom/alibaba/doraemon/impl/request/RequestClient$1$1;->this$1:Lcom/alibaba/doraemon/impl/request/RequestClient$1;

    iget-object v8, v8, Lcom/alibaba/doraemon/impl/request/RequestClient$1;->this$0:Lcom/alibaba/doraemon/impl/request/RequestClient;

    invoke-static {v8}, Lcom/alibaba/doraemon/impl/request/RequestClient;->access$000(Lcom/alibaba/doraemon/impl/request/RequestClient;)Lcom/alibaba/doraemon/impl/request/InputStreamRequest;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alibaba/doraemon/impl/request/InputStreamRequest;->getHeaders()Ljava/util/Map;

    move-result-object v3

    .line 177
    .local v3, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v3, :cond_1

    .line 178
    const-string/jumbo v8, "Cookie"

    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/lang/String;

    move-object v6, v0
    :try_end_1
    .catch Lcom/alibaba/doraemon/impl/request/AuthFailureError; {:try_start_1 .. :try_end_1} :catch_0

    .line 185
    .end local v3    # "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    :goto_0
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    .line 186
    .local v2, "ddStringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 187
    invoke-virtual {v2, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v8

    const-string/jumbo v9, ";"

    .line 188
    invoke-virtual {v8, v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v8

    const-string/jumbo v9, "dd_sid"

    invoke-virtual {v8, v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v8

    const-string/jumbo v9, "="

    invoke-virtual {v8, v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 193
    :goto_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 194
    .restart local v3    # "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v8, "Cookie"

    invoke-virtual {v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    iget-object v8, p0, Lcom/alibaba/doraemon/impl/request/RequestClient$1$1;->this$1:Lcom/alibaba/doraemon/impl/request/RequestClient$1;

    iget-object v8, v8, Lcom/alibaba/doraemon/impl/request/RequestClient$1;->this$0:Lcom/alibaba/doraemon/impl/request/RequestClient;

    invoke-static {v8}, Lcom/alibaba/doraemon/impl/request/RequestClient;->access$000(Lcom/alibaba/doraemon/impl/request/RequestClient;)Lcom/alibaba/doraemon/impl/request/InputStreamRequest;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/alibaba/doraemon/impl/request/InputStreamRequest;->addRequestHeaders(Ljava/util/Map;)V

    .line 198
    const-string/jumbo v8, "RequestClient"

    new-array v9, v13, [Ljava/lang/Object;

    const-string/jumbo v10, "lwpCookie="

    aput-object v10, v9, v11

    aput-object v4, v9, v12

    invoke-static {v9}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alibaba/doraemon/DoraemonLog;->outLogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    .end local v2    # "ddStringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .end local v3    # "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "originCookie":Ljava/lang/String;
    :cond_2
    iget-object v8, p0, Lcom/alibaba/doraemon/impl/request/RequestClient$1$1;->this$1:Lcom/alibaba/doraemon/impl/request/RequestClient$1;

    iget-object v8, v8, Lcom/alibaba/doraemon/impl/request/RequestClient$1;->this$0:Lcom/alibaba/doraemon/impl/request/RequestClient;

    iget-object v9, p0, Lcom/alibaba/doraemon/impl/request/RequestClient$1$1;->this$1:Lcom/alibaba/doraemon/impl/request/RequestClient$1;

    iget-object v9, v9, Lcom/alibaba/doraemon/impl/request/RequestClient$1;->this$0:Lcom/alibaba/doraemon/impl/request/RequestClient;

    invoke-static {v9}, Lcom/alibaba/doraemon/impl/request/RequestClient;->access$000(Lcom/alibaba/doraemon/impl/request/RequestClient;)Lcom/alibaba/doraemon/impl/request/InputStreamRequest;

    move-result-object v9

    invoke-virtual {v9}, Lcom/alibaba/doraemon/impl/request/InputStreamRequest;->getUrl()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/alibaba/doraemon/impl/request/RequestClient$1$1;->this$1:Lcom/alibaba/doraemon/impl/request/RequestClient$1;

    iget-object v10, v10, Lcom/alibaba/doraemon/impl/request/RequestClient$1;->this$0:Lcom/alibaba/doraemon/impl/request/RequestClient;

    invoke-static {v10}, Lcom/alibaba/doraemon/impl/request/RequestClient;->access$000(Lcom/alibaba/doraemon/impl/request/RequestClient;)Lcom/alibaba/doraemon/impl/request/InputStreamRequest;

    move-result-object v10

    invoke-virtual {v10}, Lcom/alibaba/doraemon/impl/request/InputStreamRequest;->getRequest()Lcom/alibaba/doraemon/request/Request;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/alibaba/doraemon/impl/request/RequestClient;->access$200(Lcom/alibaba/doraemon/impl/request/RequestClient;Ljava/lang/String;Lcom/alibaba/doraemon/request/Request;)Ljava/lang/String;

    move-result-object v7

    .line 202
    .local v7, "requestUrl":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 203
    iget-object v8, p0, Lcom/alibaba/doraemon/impl/request/RequestClient$1$1;->this$1:Lcom/alibaba/doraemon/impl/request/RequestClient$1;

    iget-object v8, v8, Lcom/alibaba/doraemon/impl/request/RequestClient$1;->this$0:Lcom/alibaba/doraemon/impl/request/RequestClient;

    invoke-static {v8}, Lcom/alibaba/doraemon/impl/request/RequestClient;->access$000(Lcom/alibaba/doraemon/impl/request/RequestClient;)Lcom/alibaba/doraemon/impl/request/InputStreamRequest;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/alibaba/doraemon/impl/request/InputStreamRequest;->setUrl(Ljava/lang/String;)V

    .line 205
    const-string/jumbo v8, "RequestClient"

    new-array v9, v13, [Ljava/lang/Object;

    const-string/jumbo v10, "downgrade requestUrl="

    aput-object v10, v9, v11

    aput-object v7, v9, v12

    invoke-static {v9}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alibaba/doraemon/DoraemonLog;->outLogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    :cond_3
    iget-object v8, p0, Lcom/alibaba/doraemon/impl/request/RequestClient$1$1;->this$1:Lcom/alibaba/doraemon/impl/request/RequestClient$1;

    iget-object v8, v8, Lcom/alibaba/doraemon/impl/request/RequestClient$1;->this$0:Lcom/alibaba/doraemon/impl/request/RequestClient;

    iget-object v9, p0, Lcom/alibaba/doraemon/impl/request/RequestClient$1$1;->val$url:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alibaba/doraemon/impl/request/RequestClient;->access$300(Lcom/alibaba/doraemon/impl/request/RequestClient;Ljava/lang/String;)V

    .line 209
    return-void

    .line 162
    .end local v4    # "lwpCookie":Ljava/lang/String;
    .end local v5    # "lwpFileDownloader":Lcom/alibaba/doraemon/lwp/LWPFileDownloader;
    .end local v7    # "requestUrl":Ljava/lang/String;
    :catchall_0
    move-exception v8

    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v8

    .line 180
    .restart local v4    # "lwpCookie":Ljava/lang/String;
    .restart local v5    # "lwpFileDownloader":Lcom/alibaba/doraemon/lwp/LWPFileDownloader;
    .restart local v6    # "originCookie":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 181
    .local v1, "authFailureError":Lcom/alibaba/doraemon/impl/request/AuthFailureError;
    const-string/jumbo v8, "RequestClient"

    invoke-static {v1}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alibaba/doraemon/DoraemonLog;->outLogError(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 190
    .end local v1    # "authFailureError":Lcom/alibaba/doraemon/impl/request/AuthFailureError;
    .restart local v2    # "ddStringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :cond_4
    const-string/jumbo v8, "dd_sid"

    invoke-virtual {v2, v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v8

    const-string/jumbo v9, "="

    invoke-virtual {v8, v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto/16 :goto_1
.end method
