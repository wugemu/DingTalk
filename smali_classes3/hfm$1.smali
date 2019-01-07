.class final Lhfm$1;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Lcom/alibaba/doraemon/request/ResponseReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhfm;->a(Ljava/lang/String;Ljava/lang/String;Lhfl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhfl;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lhfm;


# direct methods
.method constructor <init>(Lhfm;Lhfl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lhfm;

    .prologue
    .line 54
    iput-object p1, p0, Lhfm$1;->d:Lhfm;

    iput-object p2, p0, Lhfm$1;->a:Lhfl;

    iput-object p3, p0, Lhfm$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lhfm$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChange(Lcom/alibaba/doraemon/request/Request;JJ)V
    .locals 0
    .param p1, "request"    # Lcom/alibaba/doraemon/request/Request;
    .param p2, "l"    # J
    .param p4, "l1"    # J

    .prologue
    .line 131
    return-void
.end method

.method public final onRequestFinsh(Lcom/alibaba/doraemon/request/Request;Lcom/alibaba/doraemon/request/Response;)V
    .locals 9
    .param p1, "request"    # Lcom/alibaba/doraemon/request/Request;
    .param p2, "response"    # Lcom/alibaba/doraemon/request/Response;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 57
    if-nez p2, :cond_1

    .line 58
    iget-object v5, p0, Lhfm$1;->a:Lhfl;

    if-eqz v5, :cond_0

    .line 59
    iget-object v5, p0, Lhfm$1;->a:Lhfl;

    const-string/jumbo v6, "0000002"

    const-string/jumbo v7, "response is null"

    const/4 v8, 0x0

    invoke-interface {v5, v6, v7, v8}, Lhfl;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    const-string/jumbo v5, "DownloadManager"

    const/4 v6, 0x7

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "downloadApp"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string/jumbo v8, "onRequestFinsh"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    iget-object v8, p0, Lhfm$1;->b:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-string/jumbo v8, "success="

    aput-object v8, v6, v7

    const/4 v7, 0x4

    .line 66
    invoke-interface {p2}, Lcom/alibaba/doraemon/request/Response;->isSuccess()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x5

    const-string/jumbo v8, "statusCode="

    aput-object v8, v6, v7

    const/4 v7, 0x6

    .line 67
    invoke-interface {p2}, Lcom/alibaba/doraemon/request/Response;->getStatusCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    .line 65
    invoke-static {v5, v6}, Lcom/alibaba/lightapp/runtime/weex/monitor/WeexLogger;->traceApp(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    invoke-interface {p2}, Lcom/alibaba/doraemon/request/Response;->isSuccess()Z

    move-result v5

    if-nez v5, :cond_2

    .line 70
    iget-object v5, p0, Lhfm$1;->a:Lhfl;

    if-eqz v5, :cond_0

    .line 71
    iget-object v5, p0, Lhfm$1;->a:Lhfl;

    const-string/jumbo v6, "0000002"

    invoke-interface {p2}, Lcom/alibaba/doraemon/request/Response;->getErrorDescription()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v5, v6, v7, v8}, Lhfl;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 76
    :cond_2
    invoke-interface {p2}, Lcom/alibaba/doraemon/request/Response;->getStatusCode()I

    move-result v4

    .line 78
    .local v4, "statusCode":I
    const/16 v5, 0xc8

    if-lt v4, v5, :cond_5

    const/16 v5, 0x12c

    if-ge v4, v5, :cond_5

    .line 79
    invoke-interface {p2}, Lcom/alibaba/doraemon/request/Response;->getResponseBody()Lcom/alibaba/doraemon/request/RequestInputStream;

    move-result-object v0

    .line 80
    .local v0, "data":Ljava/io/InputStream;
    if-nez v0, :cond_3

    .line 81
    iget-object v5, p0, Lhfm$1;->a:Lhfl;

    if-eqz v5, :cond_0

    .line 82
    iget-object v5, p0, Lhfm$1;->a:Lhfl;

    const-string/jumbo v6, "0000002"

    const-string/jumbo v7, "response body is null"

    const/4 v8, 0x0

    invoke-interface {v5, v6, v7, v8}, Lhfl;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 89
    :cond_3
    :try_start_0
    iget-object v5, p0, Lhfm$1;->d:Lhfm;

    iget-object v6, p0, Lhfm$1;->c:Ljava/lang/String;

    invoke-static {v5, v6, v0}, Lhfm;->a(Lhfm;Ljava/lang/String;Ljava/io/InputStream;)Ljava/io/File;

    move-result-object v2

    .line 90
    .local v2, "file":Ljava/io/File;
    if-nez v2, :cond_4

    .line 91
    iget-object v5, p0, Lhfm$1;->a:Lhfl;

    if-eqz v5, :cond_0

    .line 92
    iget-object v5, p0, Lhfm$1;->a:Lhfl;

    const-string/jumbo v6, "0000002"

    const-string/jumbo v7, "cannot create local file"

    const/4 v8, 0x0

    invoke-interface {v5, v6, v7, v8}, Lhfl;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 104
    .end local v2    # "file":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 105
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 106
    const-string/jumbo v5, "DownloadManager"

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "downloadApp"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string/jumbo v8, "onRequestFinsh"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    iget-object v8, p0, Lhfm$1;->b:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-string/jumbo v8, "Exception="

    aput-object v8, v6, v7

    const/4 v7, 0x4

    .line 107
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 106
    invoke-static {v5, v6}, Lcom/alibaba/lightapp/runtime/weex/monitor/WeexLogger;->traceApp(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    iget-object v5, p0, Lhfm$1;->a:Lhfl;

    if-eqz v5, :cond_0

    .line 110
    iget-object v5, p0, Lhfm$1;->a:Lhfl;

    const-string/jumbo v6, "0000002"

    .line 111
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    .line 110
    invoke-interface {v5, v6, v7, v1}, Lhfl;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 98
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "file":Ljava/io/File;
    :cond_4
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 100
    .local v3, "path":Ljava/lang/String;
    const-string/jumbo v5, "DownloadManager"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "download"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string/jumbo v8, "success"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    aput-object v3, v6, v7

    invoke-static {v5, v6}, Lcom/alibaba/lightapp/runtime/weex/monitor/WeexLogger;->traceApp(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    iget-object v5, p0, Lhfm$1;->a:Lhfl;

    if-eqz v5, :cond_0

    .line 102
    iget-object v5, p0, Lhfm$1;->a:Lhfl;

    invoke-interface {v5, v3}, Lhfl;->onSuccess(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 116
    .end local v0    # "data":Ljava/io/InputStream;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "path":Ljava/lang/String;
    :cond_5
    iget-object v5, p0, Lhfm$1;->a:Lhfl;

    if-eqz v5, :cond_0

    .line 117
    iget-object v5, p0, Lhfm$1;->a:Lhfl;

    const-string/jumbo v6, "0000002"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "download failed statusCode="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v5, v6, v7, v8}, Lhfl;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method public final onRequestStarted(Lcom/alibaba/doraemon/request/Request;)V
    .locals 4
    .param p1, "request"    # Lcom/alibaba/doraemon/request/Request;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 125
    const-string/jumbo v0, "DownloadManager"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "downloadApp"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "onRequestStarted"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lhfm$1;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/weex/monitor/WeexLogger;->traceApp(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    return-void
.end method
