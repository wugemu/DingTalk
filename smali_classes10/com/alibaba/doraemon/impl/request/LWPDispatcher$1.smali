.class Lcom/alibaba/doraemon/impl/request/LWPDispatcher$1;
.super Ljava/lang/Object;
.source "LWPDispatcher.java"

# interfaces
.implements Lcom/alibaba/doraemon/lwp/LWPFileDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/impl/request/LWPDispatcher;->downloadFile(Ljava/lang/String;JJZLjava/util/Map;Lcom/alibaba/doraemon/impl/request/DownloaderHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/doraemon/impl/request/LWPDispatcher;

.field final synthetic val$downloaderHandler:Lcom/alibaba/doraemon/impl/request/DownloaderHandler;

.field final synthetic val$start:J


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/impl/request/LWPDispatcher;Lcom/alibaba/doraemon/impl/request/DownloaderHandler;J)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/doraemon/impl/request/LWPDispatcher;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/request/LWPDispatcher$1;->this$0:Lcom/alibaba/doraemon/impl/request/LWPDispatcher;

    iput-object p2, p0, Lcom/alibaba/doraemon/impl/request/LWPDispatcher$1;->val$downloaderHandler:Lcom/alibaba/doraemon/impl/request/DownloaderHandler;

    iput-wide p3, p0, Lcom/alibaba/doraemon/impl/request/LWPDispatcher$1;->val$start:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 131
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/LWPDispatcher$1;->val$downloaderHandler:Lcom/alibaba/doraemon/impl/request/DownloaderHandler;

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/request/LWPDispatcher$1;->this$0:Lcom/alibaba/doraemon/impl/request/LWPDispatcher;

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/request/LWPDispatcher;->access$000(Lcom/alibaba/doraemon/impl/request/LWPDispatcher;)Lcom/alibaba/doraemon/impl/request/VolleyRequest;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/alibaba/doraemon/impl/request/DownloaderHandler;->deliveryException(Lcom/alibaba/doraemon/impl/request/VolleyRequest;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/alibaba/doraemon/impl/request/LWPDispatcher$1;->val$start:J

    sub-long/2addr v2, v4

    iget-object v4, p0, Lcom/alibaba/doraemon/impl/request/LWPDispatcher$1;->this$0:Lcom/alibaba/doraemon/impl/request/LWPDispatcher;

    invoke-static {v4}, Lcom/alibaba/doraemon/impl/request/LWPDispatcher;->access$000(Lcom/alibaba/doraemon/impl/request/LWPDispatcher;)Lcom/alibaba/doraemon/impl/request/VolleyRequest;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->getUrl()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "lwp://"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/alibaba/doraemon/impl/request/LWPDispatcher$1;->this$0:Lcom/alibaba/doraemon/impl/request/LWPDispatcher;

    invoke-static {v6}, Lcom/alibaba/doraemon/impl/request/LWPDispatcher;->access$000(Lcom/alibaba/doraemon/impl/request/LWPDispatcher;)Lcom/alibaba/doraemon/impl/request/VolleyRequest;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->getTag()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, p2

    .line 132
    invoke-static/range {v0 .. v6}, Lcom/alibaba/doraemon/impl/request/RequestClient;->notifyResultFailed(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method public onFinish(Lcom/alibaba/doraemon/lwp/LWPFileSegment;)V
    .locals 7
    .param p1, "fileSegment"    # Lcom/alibaba/doraemon/lwp/LWPFileSegment;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 112
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/LWPDispatcher$1;->val$downloaderHandler:Lcom/alibaba/doraemon/impl/request/DownloaderHandler;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/request/DownloaderHandler;->isHuge()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/LWPDispatcher$1;->this$0:Lcom/alibaba/doraemon/impl/request/LWPDispatcher;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/request/LWPDispatcher;->access$000(Lcom/alibaba/doraemon/impl/request/LWPDispatcher;)Lcom/alibaba/doraemon/impl/request/VolleyRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    if-eqz p1, :cond_0

    .line 119
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/LWPDispatcher$1;->val$downloaderHandler:Lcom/alibaba/doraemon/impl/request/DownloaderHandler;

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/request/LWPDispatcher$1;->this$0:Lcom/alibaba/doraemon/impl/request/LWPDispatcher;

    iget-object v1, v1, Lcom/alibaba/doraemon/impl/request/LWPDispatcher;->mDelivery:Lcom/alibaba/doraemon/impl/request/ResponseDelivery;

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/request/LWPDispatcher$1;->this$0:Lcom/alibaba/doraemon/impl/request/LWPDispatcher;

    invoke-static {v2}, Lcom/alibaba/doraemon/impl/request/LWPDispatcher;->access$000(Lcom/alibaba/doraemon/impl/request/LWPDispatcher;)Lcom/alibaba/doraemon/impl/request/VolleyRequest;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/alibaba/doraemon/impl/request/DownloaderHandler;->finishSegment(Lcom/alibaba/doraemon/impl/request/ResponseDelivery;Lcom/alibaba/doraemon/impl/request/VolleyRequest;Lcom/alibaba/doraemon/lwp/LWPFileSegment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    invoke-interface {p1}, Lcom/alibaba/doraemon/lwp/LWPFileSegment;->getTotalLength()J

    move-result-wide v0

    .line 124
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/alibaba/doraemon/impl/request/LWPDispatcher$1;->val$start:J

    sub-long/2addr v2, v4

    iget-object v4, p0, Lcom/alibaba/doraemon/impl/request/LWPDispatcher$1;->this$0:Lcom/alibaba/doraemon/impl/request/LWPDispatcher;

    invoke-static {v4}, Lcom/alibaba/doraemon/impl/request/LWPDispatcher;->access$000(Lcom/alibaba/doraemon/impl/request/LWPDispatcher;)Lcom/alibaba/doraemon/impl/request/VolleyRequest;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->getUrl()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "lwp://"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/alibaba/doraemon/impl/request/LWPDispatcher$1;->this$0:Lcom/alibaba/doraemon/impl/request/LWPDispatcher;

    invoke-static {v6}, Lcom/alibaba/doraemon/impl/request/LWPDispatcher;->access$000(Lcom/alibaba/doraemon/impl/request/LWPDispatcher;)Lcom/alibaba/doraemon/impl/request/VolleyRequest;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->getTag()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 123
    invoke-static/range {v0 .. v5}, Lcom/alibaba/doraemon/impl/request/RequestClient;->notifyResultSuccess(JJLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onProgress(Lcom/alibaba/doraemon/lwp/LWPFileSegment;I)V
    .locals 6
    .param p1, "fileSegment"    # Lcom/alibaba/doraemon/lwp/LWPFileSegment;
    .param p2, "progress"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 92
    if-eqz p1, :cond_0

    .line 94
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/LWPDispatcher$1;->val$downloaderHandler:Lcom/alibaba/doraemon/impl/request/DownloaderHandler;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/request/DownloaderHandler;->isHuge()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/LWPDispatcher$1;->this$0:Lcom/alibaba/doraemon/impl/request/LWPDispatcher;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/request/LWPDispatcher;->access$000(Lcom/alibaba/doraemon/impl/request/LWPDispatcher;)Lcom/alibaba/doraemon/impl/request/VolleyRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    invoke-interface {p1}, Lcom/alibaba/doraemon/lwp/LWPFileSegment;->cancel()V

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/LWPDispatcher$1;->val$downloaderHandler:Lcom/alibaba/doraemon/impl/request/DownloaderHandler;

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/request/LWPDispatcher$1;->this$0:Lcom/alibaba/doraemon/impl/request/LWPDispatcher;

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/request/LWPDispatcher;->access$000(Lcom/alibaba/doraemon/impl/request/LWPDispatcher;)Lcom/alibaba/doraemon/impl/request/VolleyRequest;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/doraemon/impl/request/DownloaderHandler;->processSegment(Lcom/alibaba/doraemon/impl/request/VolleyRequest;Lcom/alibaba/doraemon/lwp/LWPFileSegment;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 101
    invoke-interface {p1}, Lcom/alibaba/doraemon/lwp/LWPFileSegment;->cancel()V

    goto :goto_0

    .line 106
    :cond_2
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/LWPDispatcher$1;->this$0:Lcom/alibaba/doraemon/impl/request/LWPDispatcher;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/request/LWPDispatcher;->access$000(Lcom/alibaba/doraemon/impl/request/LWPDispatcher;)Lcom/alibaba/doraemon/impl/request/VolleyRequest;

    move-result-object v0

    invoke-interface {p1}, Lcom/alibaba/doraemon/lwp/LWPFileSegment;->getTotalLength()J

    move-result-wide v2

    invoke-interface {p1}, Lcom/alibaba/doraemon/lwp/LWPFileSegment;->getEnd()J

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->deliverProgress(JJ)V

    goto :goto_0
.end method
