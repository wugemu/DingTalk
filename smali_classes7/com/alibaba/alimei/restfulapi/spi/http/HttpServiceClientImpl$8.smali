.class Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$8;
.super Lcom/alibaba/alimei/restfulapi/spi/http/InnerHttpRequestTask;
.source "HttpServiceClientImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->executeWithAsyncTask(Lorg/apache/http/client/HttpClient;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private httpResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mThrowable:Ljava/lang/Throwable;

.field final synthetic this$0:Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;

.field final synthetic val$callback:Lcom/alibaba/alimei/restfulapi/service/RpcCallback;

.field final synthetic val$httpClient:Lorg/apache/http/client/HttpClient;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;Landroid/os/Handler;Lorg/apache/http/client/HttpClient;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 599
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$8;->this$0:Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;

    iput-object p3, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$8;->val$httpClient:Lorg/apache/http/client/HttpClient;

    iput-object p4, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$8;->val$callback:Lcom/alibaba/alimei/restfulapi/service/RpcCallback;

    invoke-direct {p0, p2}, Lcom/alibaba/alimei/restfulapi/spi/http/InnerHttpRequestTask;-><init>(Landroid/os/Handler;)V

    .line 600
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$8;->mThrowable:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method protected doInBackground()V
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const-wide/16 v12, 0x0

    .line 606
    iget-object v2, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$8;->this$0:Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;

    invoke-static {v2}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->access$200(Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;)Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;->getDefaultMethodName()Ljava/lang/String;

    move-result-object v1

    .line 607
    .local v1, "monitorPoint":Ljava/lang/String;
    const-string/jumbo v2, "Alimei.RPC"

    invoke-static {v2, v1}, Lcom/alibaba/alimei/restfulapi/tracker/RpcTrackerWriter;->registerMonitorPointDynamic(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    const-string/jumbo v2, "Alimei.RPC"

    invoke-static {v2, v1}, Lcom/alibaba/alimei/restfulapi/tracker/RpcTrackerWriter;->startTrackDuration(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    const/4 v11, 0x0

    .line 611
    .local v11, "shouldEndStatisitc":Z
    iget-object v2, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$8;->this$0:Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;

    invoke-static {v2}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->access$300(Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$8;->this$0:Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;

    invoke-static {v3}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->access$200(Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;)Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    move-result-object v3

    iget v3, v3, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;->domainType:I

    invoke-static {v2, v3}, Lcom/alibaba/alimei/restfulapi/support/Settings;->getHostUrl(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 614
    .local v0, "domain":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$8;->this$0:Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;

    iget-object v3, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$8;->this$0:Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;

    invoke-static {v3}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->access$500(Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;)J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->access$402(Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;J)J

    .line 615
    invoke-static {v0, v1}, Lcom/alibaba/alimei/restfulapi/tracker/RpcTrackerWriter;->startTraffic(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    iget-object v2, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$8;->val$httpClient:Lorg/apache/http/client/HttpClient;

    iget-object v3, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$8;->this$0:Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;

    invoke-static {v3}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->access$600(Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v10

    .line 617
    .local v10, "response":Lorg/apache/http/HttpResponse;
    iget-object v2, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$8;->this$0:Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;

    iget-object v3, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$8;->val$callback:Lcom/alibaba/alimei/restfulapi/service/RpcCallback;

    invoke-virtual {v2, v10, v3}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->readHttpResponseContent(Lorg/apache/http/HttpResponse;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$8;->httpResult:Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/alibaba/alimei/restfulapi/exception/ServiceException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/alibaba/alimei/restfulapi/exception/NetworkException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/alibaba/alimei/restfulapi/exception/TimestampOutoftimeException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/alibaba/alimei/restfulapi/exception/SignCheckException; {:try_start_0 .. :try_end_0} :catch_8

    .line 651
    .end local v10    # "response":Lorg/apache/http/HttpResponse;
    :goto_0
    iget-object v2, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$8;->mThrowable:Ljava/lang/Throwable;

    if-eqz v2, :cond_5

    .line 653
    iget-object v2, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$8;->this$0:Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;

    invoke-static {v2}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->access$900(Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;)V

    .line 654
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/support/ARFLogger;->isLogE()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 655
    iget-object v2, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$8;->mThrowable:Ljava/lang/Throwable;

    instance-of v2, v2, Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    if-eqz v2, :cond_3

    .line 656
    iget-object v9, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$8;->mThrowable:Ljava/lang/Throwable;

    check-cast v9, Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    .line 657
    .local v9, "ex":Lcom/alibaba/alimei/restfulapi/exception/ServiceException;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Service is not available errorCode: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/alibaba/alimei/restfulapi/exception/ServiceException;->getResultCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", errorMsg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Lcom/alibaba/alimei/restfulapi/exception/ServiceException;->getResultMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/alimei/restfulapi/support/ARFLogger;->e(Ljava/lang/String;)I

    .line 669
    .end local v9    # "ex":Lcom/alibaba/alimei/restfulapi/exception/ServiceException;
    :cond_0
    :goto_1
    if-eqz v11, :cond_6

    .line 670
    const-string/jumbo v2, "Alimei.RPC"

    invoke-static {v2, v1}, Lcom/alibaba/alimei/restfulapi/tracker/RpcTrackerWriter;->endTrackDuration(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    :goto_2
    invoke-static {v0, v1}, Lcom/alibaba/alimei/restfulapi/tracker/RpcTrackerWriter;->endTraffic(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    iget-object v2, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$8;->this$0:Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;

    invoke-static {v2}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->access$400(Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;)J

    move-result-wide v2

    cmp-long v2, v2, v12

    if-gtz v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$8;->this$0:Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;

    invoke-static {v2}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->access$1000(Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;)J

    move-result-wide v2

    cmp-long v2, v2, v12

    if-lez v2, :cond_2

    .line 678
    :cond_1
    iget-object v2, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$8;->this$0:Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;

    invoke-static {v2}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->access$400(Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$8;->this$0:Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;

    invoke-static {v4}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->access$1000(Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;)J

    move-result-wide v4

    iget-object v6, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$8;->this$0:Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;

    invoke-static {v6}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->access$1100(Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;)I

    move-result v6

    invoke-static/range {v0 .. v6}, Lcom/alibaba/alimei/restfulapi/tracker/RpcTrackerWriter;->reportTraffic(Ljava/lang/String;Ljava/lang/String;JJI)V

    .line 680
    :cond_2
    :goto_3
    return-void

    .line 618
    :catch_0
    move-exception v7

    .line 619
    .local v7, "e":Lorg/apache/http/client/ClientProtocolException;
    iput-object v7, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$8;->mThrowable:Ljava/lang/Throwable;

    .line 621
    iget-object v2, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$8;->this$0:Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;

    invoke-static {v2}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->access$700(Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;)V

    goto :goto_0

    .line 622
    .end local v7    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_1
    move-exception v7

    .line 623
    .local v7, "e":Ljava/io/IOException;
    const/4 v11, 0x1

    .line 624
    iput-object v7, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$8;->mThrowable:Ljava/lang/Throwable;

    .line 626
    iget-object v2, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$8;->this$0:Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;

    invoke-static {v2}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->access$700(Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;)V

    goto/16 :goto_0

    .line 627
    .end local v7    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v7

    .line 628
    .local v7, "e":Lcom/alibaba/alimei/restfulapi/exception/ServiceException;
    iput-object v7, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$8;->mThrowable:Ljava/lang/Throwable;

    .line 629
    const/4 v11, 0x1

    .line 649
    goto/16 :goto_0

    .line 630
    .end local v7    # "e":Lcom/alibaba/alimei/restfulapi/exception/ServiceException;
    :catch_3
    move-exception v7

    .line 631
    .local v7, "e":Lcom/alibaba/alimei/restfulapi/exception/NetworkException;
    iput-object v7, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$8;->mThrowable:Ljava/lang/Throwable;

    .line 633
    iget-object v2, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$8;->this$0:Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;

    invoke-static {v2}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->access$700(Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;)V

    goto/16 :goto_0

    .end local v7    # "e":Lcom/alibaba/alimei/restfulapi/exception/NetworkException;
    :catch_4
    move-exception v2

    .line 636
    :try_start_1
    iget-object v2, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$8;->this$0:Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;

    invoke-static {v2}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->access$800(Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;)V

    .line 637
    const-string/jumbo v2, "Alimei.RPC"

    invoke-static {v2, v1}, Lcom/alibaba/alimei/restfulapi/tracker/RpcTrackerWriter;->removeTrackDuration(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/alibaba/alimei/restfulapi/exception/ServiceException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lcom/alibaba/alimei/restfulapi/exception/NetworkException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    goto :goto_3

    .line 639
    :catch_5
    move-exception v8

    .line 640
    .local v8, "e1":Lcom/alibaba/alimei/restfulapi/exception/ServiceException;
    const/4 v11, 0x1

    .line 641
    iput-object v8, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$8;->mThrowable:Ljava/lang/Throwable;

    goto/16 :goto_0

    .line 642
    .end local v8    # "e1":Lcom/alibaba/alimei/restfulapi/exception/ServiceException;
    :catch_6
    move-exception v8

    .line 643
    .local v8, "e1":Lcom/alibaba/alimei/restfulapi/exception/NetworkException;
    iput-object v8, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$8;->mThrowable:Ljava/lang/Throwable;

    goto/16 :goto_0

    .line 644
    .end local v8    # "e1":Lcom/alibaba/alimei/restfulapi/exception/NetworkException;
    :catch_7
    move-exception v8

    .line 645
    .local v8, "e1":Ljava/io/IOException;
    iput-object v8, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$8;->mThrowable:Ljava/lang/Throwable;

    goto/16 :goto_0

    .line 658
    .end local v8    # "e1":Ljava/io/IOException;
    :cond_3
    iget-object v2, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$8;->mThrowable:Ljava/lang/Throwable;

    instance-of v2, v2, Lcom/alibaba/alimei/restfulapi/exception/NetworkException;

    if-eqz v2, :cond_4

    .line 659
    const-string/jumbo v2, "Network is not available "

    invoke-static {v2}, Lcom/alibaba/alimei/restfulapi/support/ARFLogger;->e(Ljava/lang/String;)I

    goto/16 :goto_1

    .line 661
    :cond_4
    const-string/jumbo v2, " executeWithAsyncTask error--->>>"

    iget-object v3, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$8;->mThrowable:Ljava/lang/Throwable;

    invoke-static {v2, v3}, Lcom/alibaba/alimei/restfulapi/support/ARFLogger;->i(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 665
    :cond_5
    iget-object v2, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$8;->val$callback:Lcom/alibaba/alimei/restfulapi/service/RpcCallback;

    iget-object v3, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$8;->httpResult:Ljava/lang/Object;

    invoke-interface {v2, v3}, Lcom/alibaba/alimei/restfulapi/service/RpcCallback;->onSuccess(Ljava/lang/Object;)V

    .line 666
    const/4 v11, 0x1

    goto/16 :goto_1

    .line 672
    :cond_6
    const-string/jumbo v2, "Alimei.RPC"

    invoke-static {v2, v1}, Lcom/alibaba/alimei/restfulapi/tracker/RpcTrackerWriter;->removeTrackDuration(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :catch_8
    move-exception v2

    goto/16 :goto_0
.end method

.method protected onPostExecute()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 684
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$8;->mThrowable:Ljava/lang/Throwable;

    if-eqz v0, :cond_2

    .line 685
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$8;->mThrowable:Ljava/lang/Throwable;

    instance-of v0, v0, Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    if-eqz v0, :cond_0

    .line 686
    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$8;->val$callback:Lcom/alibaba/alimei/restfulapi/service/RpcCallback;

    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$8;->mThrowable:Ljava/lang/Throwable;

    check-cast v0, Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    invoke-interface {v1, v0}, Lcom/alibaba/alimei/restfulapi/service/RpcCallback;->onServiceException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)V

    .line 695
    :goto_0
    return-void

    .line 687
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$8;->mThrowable:Ljava/lang/Throwable;

    instance-of v0, v0, Lcom/alibaba/alimei/restfulapi/exception/NetworkException;

    if-eqz v0, :cond_1

    .line 688
    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$8;->val$callback:Lcom/alibaba/alimei/restfulapi/service/RpcCallback;

    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$8;->mThrowable:Ljava/lang/Throwable;

    check-cast v0, Lcom/alibaba/alimei/restfulapi/exception/NetworkException;

    invoke-interface {v1, v0}, Lcom/alibaba/alimei/restfulapi/service/RpcCallback;->onNetworkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)V

    goto :goto_0

    .line 690
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$8;->val$callback:Lcom/alibaba/alimei/restfulapi/service/RpcCallback;

    new-instance v1, Lcom/alibaba/alimei/restfulapi/exception/NetworkException;

    iget-object v2, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$8;->mThrowable:Ljava/lang/Throwable;

    invoke-direct {v1, v2}, Lcom/alibaba/alimei/restfulapi/exception/NetworkException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lcom/alibaba/alimei/restfulapi/service/RpcCallback;->onNetworkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)V

    goto :goto_0

    .line 693
    :cond_2
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$8;->val$callback:Lcom/alibaba/alimei/restfulapi/service/RpcCallback;

    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$8;->httpResult:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/alibaba/alimei/restfulapi/service/RpcCallback;->onPostExecute(Ljava/lang/Object;)V

    goto :goto_0
.end method
