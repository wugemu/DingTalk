.class public Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;
.super Lcom/alibaba/alimei/restfulapi/spi/BaseServiceClient;
.source "LWPServiceClientImpl.java"


# static fields
.field private static final ERROR_MSG_MAX_DO:Ljava/lang/String; = "\u5df2\u7ecf\u8fbe\u5230\u6700\u5927\u7684\u91cd\u8bd5\u6b21\u6570"

.field private static final H_CONTENT_LENGTH:Ljava/lang/String; = "Content-Length"

.field private static final MAX_REDO:I = 0x1

.field private static final REFRESH_TOKEN_FAIL:I = 0x2

.field private static final REFRESH_TOKEN_INIT:I = 0x0

.field private static final REFRESH_TOKEN_SUCCESS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "LWPServiceClientImpl"

.field private static final TIMEOUT:J = 0xea60L

.field private static sDefaultHttpResponseParser:Lcom/alibaba/alimei/restfulapi/parser/TextHttpResponseParser;

.field public static sTimestampDiff:J


# instance fields
.field private volatile isAborted:Z

.field private mAccountName:Ljava/lang/String;

.field private mDownstreamLength:J

.field private mDownstreamType:I

.field private mHttpClientFactory:Lcom/alibaba/alimei/restfulapi/spi/http/HttpClientFactory;

.field private mHttpRequest:Lgti;

.field private mHttpRequestBuilder:Lcom/alibaba/alimei/restfulapi/spi/HttpRequestBuilder;

.field private mHttpResponseParser:Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;

.field private mIsAsynchronous:Z

.field private mIsAttachAuthInfo:Z

.field private mOpenApiMethods:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

.field private mRedoTask:Lcom/alibaba/alimei/restfulapi/spi/http/RedoTask;

.field private mRefreshTokenStatus:I

.field private mServiceRequest:Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;

.field private mUpstreamLength:J

.field private final redoCounter:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 75
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->sTimestampDiff:J

    .line 710
    const/4 v0, 0x0

    sput-object v0, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->sDefaultHttpResponseParser:Lcom/alibaba/alimei/restfulapi/parser/TextHttpResponseParser;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;Z)V
    .locals 4
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "isAsynchronous"    # Z
    .param p3, "method"    # Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;
    .param p4, "isAttachAuthInfo"    # Z

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 165
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/spi/BaseServiceClient;-><init>()V

    .line 90
    iput-boolean v1, p0, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->isAborted:Z

    .line 146
    iput-wide v2, p0, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->mUpstreamLength:J

    .line 151
    iput-wide v2, p0, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->mDownstreamLength:J

    .line 156
    iput v1, p0, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->mDownstreamType:I

    .line 159
    iput v1, p0, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->mRefreshTokenStatus:I

    .line 166
    iput-object p1, p0, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->mAccountName:Ljava/lang/String;

    .line 167
    iput-boolean p2, p0, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->mIsAsynchronous:Z

    .line 168
    iput-object p3, p0, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->mOpenApiMethods:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    .line 169
    iput-boolean p4, p0, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->mIsAttachAuthInfo:Z

    .line 170
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->redoCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 171
    invoke-virtual {p0}, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->getHttpClientFactory()Lcom/alibaba/alimei/restfulapi/spi/http/HttpClientFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->mHttpClientFactory:Lcom/alibaba/alimei/restfulapi/spi/http/HttpClientFactory;

    .line 172
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->isRedo()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;)Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->mServiceRequest:Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;Lgtj;Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;
    .param p1, "x1"    # Lgtj;
    .param p2, "x2"    # Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .param p3, "x3"    # Lcom/alibaba/alimei/restfulapi/service/RpcCallback;

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->handleHttpResponseContent(Lgtj;Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)V

    return-void
.end method

.method static synthetic access$300(Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;

    .prologue
    .line 62
    iget v0, p0, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->mRefreshTokenStatus:I

    return v0
.end method

.method static synthetic access$302(Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;
    .param p1, "x1"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->mRefreshTokenStatus:I

    return p1
.end method

.method static synthetic access$400(Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->mIsAsynchronous:Z

    return v0
.end method

.method static synthetic access$500(Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;)Lcom/alibaba/alimei/restfulapi/spi/http/RedoTask;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->mRedoTask:Lcom/alibaba/alimei/restfulapi/spi/http/RedoTask;

    return-object v0
.end method

.method static synthetic access$600(Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->mAccountName:Ljava/lang/String;

    return-object v0
.end method

.method private addDefaultHeader(Lgti;)V
    .locals 2
    .param p1, "request"    # Lgti;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 657
    if-nez p1, :cond_0

    .line 664
    :goto_0
    return-void

    .line 661
    :cond_0
    const-string/jumbo v0, "User-Agent"

    const-string/jumbo v1, "dingding android"

    invoke-virtual {p1, v0, v1}, Lgti;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    const-string/jumbo v0, "Connection"

    const-string/jumbo v1, "Keep-Alive"

    invoke-virtual {p1, v0, v1}, Lgti;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    const-string/jumbo v0, "Accept"

    const-string/jumbo v1, "application/json"

    invoke-virtual {p1, v0, v1}, Lgti;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private calculateRequestTrafficLength()J
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const-wide/16 v0, 0x0

    .line 672
    iget-object v2, p0, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->mHttpRequest:Lgti;

    invoke-virtual {v2}, Lgti;->b()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "GET"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 678
    :cond_0
    :goto_0
    return-wide v0

    .line 674
    :cond_1
    iget-object v2, p0, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->mHttpRequest:Lgti;

    invoke-virtual {v2}, Lgti;->b()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "POST"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 675
    iget-object v2, p0, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->mHttpRequest:Lgti;

    invoke-virtual {v2}, Lgti;->d()[B

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->mHttpRequest:Lgti;

    invoke-virtual {v0}, Lgti;->d()[B

    move-result-object v0

    array-length v0, v0

    int-to-long v0, v0

    goto :goto_0
.end method

.method private executeLWPRequest(Lgti;Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)V
    .locals 1
    .param p1, "request"    # Lgti;
    .param p2, "ticket"    # Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lgti;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 311
    .local p3, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<TT;>;"
    iget-boolean v0, p0, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->isAborted:Z

    if-eqz v0, :cond_0

    .line 323
    :goto_0
    return-void

    .line 315
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->startStatics()V

    .line 316
    iget-boolean v0, p0, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->mIsAsynchronous:Z

    if-eqz v0, :cond_1

    .line 318
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->executeWithAsyncTask(Lgti;Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)V

    goto :goto_0

    .line 321
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->executeWithBlockRequest(Lgti;Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)V

    goto :goto_0
.end method

.method private executeWithAsyncTask(Lgti;Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)V
    .locals 2
    .param p1, "request"    # Lgti;
    .param p2, "ticket"    # Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lgti;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<TT;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 351
    .local p3, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<TT;>;"
    :try_start_0
    new-instance v1, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl$3;

    invoke-direct {v1, p0, p2, p3}, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl$3;-><init>(Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)V

    invoke-static {p1, v1}, Lgtg;->a(Lgti;Lgte;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    :goto_0
    return-void

    .line 357
    :catch_0
    move-exception v0

    .line 358
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/alibaba/alimei/restfulapi/exception/NetworkException;

    invoke-direct {v1, v0}, Lcom/alibaba/alimei/restfulapi/exception/NetworkException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p3, v1}, Lcom/alibaba/alimei/restfulapi/service/RpcCallback;->onNetworkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)V

    goto :goto_0
.end method

.method private executeWithBlockRequest(Lgti;Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)V
    .locals 2
    .param p1, "request"    # Lgti;
    .param p2, "ticket"    # Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lgti;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<TT;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 334
    .local p3, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<TT;>;"
    :try_start_0
    invoke-static {p1}, Lgtg;->a(Lgti;)Lgtj;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 340
    .local v0, "response":Lgtj;
    invoke-direct {p0, v0, p2, p3}, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->handleHttpResponseContent(Lgtj;Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)V

    .line 341
    .end local v0    # "response":Lgtj;
    :goto_0
    return-void

    .line 336
    :catch_0
    move-exception v1

    const/4 v1, 0x0

    invoke-interface {p2, v1}, Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;->setSuccess(Z)V

    goto :goto_0
.end method

.method private getHttpRequestBuilder()Lcom/alibaba/alimei/restfulapi/spi/HttpRequestBuilder;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->mHttpRequestBuilder:Lcom/alibaba/alimei/restfulapi/spi/HttpRequestBuilder;

    if-nez v0, :cond_0

    .line 192
    sget-object v0, Lcom/alibaba/alimei/restfulapi/spi/http/DefaultHttpRequestBuilder;->DefaultBuilder:Lcom/alibaba/alimei/restfulapi/spi/http/DefaultHttpRequestBuilder;

    .line 194
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->mHttpRequestBuilder:Lcom/alibaba/alimei/restfulapi/spi/HttpRequestBuilder;

    goto :goto_0
.end method

.method private getHttpResponseParser()Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;
    .locals 1

    .prologue
    .line 713
    iget-object v0, p0, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->mHttpResponseParser:Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;

    if-nez v0, :cond_1

    .line 714
    sget-object v0, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->sDefaultHttpResponseParser:Lcom/alibaba/alimei/restfulapi/parser/TextHttpResponseParser;

    if-nez v0, :cond_0

    .line 715
    new-instance v0, Lcom/alibaba/alimei/restfulapi/parser/TextHttpResponseParser;

    invoke-direct {v0}, Lcom/alibaba/alimei/restfulapi/parser/TextHttpResponseParser;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->sDefaultHttpResponseParser:Lcom/alibaba/alimei/restfulapi/parser/TextHttpResponseParser;

    .line 717
    :cond_0
    sget-object v0, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->sDefaultHttpResponseParser:Lcom/alibaba/alimei/restfulapi/parser/TextHttpResponseParser;

    .line 719
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->mHttpResponseParser:Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;

    goto :goto_0
.end method

.method private handleHttpResponseContent(Lgtj;Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)V
    .locals 10
    .param p1, "response"    # Lgtj;
    .param p2, "ticket"    # Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lgtj;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<TT;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .local p3, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<TT;>;"
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 377
    const/4 v4, 0x0

    .line 378
    .local v4, "mThrowable":Ljava/lang/Throwable;
    const/4 v3, 0x0

    .line 379
    .local v3, "httpResult":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x0

    .line 380
    .local v1, "errCodeStr":Ljava/lang/String;
    const/4 v2, 0x0

    .line 384
    .local v2, "errMsg":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->calculateRequestTrafficLength()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->mUpstreamLength:J

    .line 385
    invoke-virtual {p0, p1, p3}, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->readHttpResponseContent(Lgtj;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Ljava/lang/Object;

    move-result-object v3

    .line 386
    iget v5, p0, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->mRefreshTokenStatus:I
    :try_end_0
    .catch Lcom/alibaba/alimei/restfulapi/exception/ServiceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/alibaba/alimei/restfulapi/exception/NetworkException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/alibaba/alimei/restfulapi/exception/TimestampOutoftimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/alibaba/alimei/restfulapi/exception/SignCheckException; {:try_start_0 .. :try_end_0} :catch_3

    if-ne v5, v8, :cond_0

    .line 436
    .end local v3    # "httpResult":Ljava/lang/Object;, "TT;"
    :goto_0
    return-void

    .line 390
    :catch_0
    move-exception v0

    .line 391
    .local v0, "e":Lcom/alibaba/alimei/restfulapi/exception/ServiceException;
    invoke-interface {p2, v8}, Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;->setSuccess(Z)V

    .line 392
    const-string/jumbo v5, "LWPServiceClientImpl"

    const-string/jumbo v6, "lwp handleHttpResponseContent"

    invoke-static {v5, v6, v0}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 394
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "1001"

    aput-object v6, v5, v9

    const-string/jumbo v6, ":"

    aput-object v6, v5, v8

    const/4 v6, 0x2

    .line 395
    invoke-virtual {v0}, Lcom/alibaba/alimei/restfulapi/exception/ServiceException;->getResultCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 394
    invoke-static {v5}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 396
    invoke-virtual {v0}, Lcom/alibaba/alimei/restfulapi/exception/ServiceException;->getResultMsg()Ljava/lang/String;

    move-result-object v2

    .line 398
    move-object v4, v0

    .line 399
    invoke-interface {p3, v0}, Lcom/alibaba/alimei/restfulapi/service/RpcCallback;->onServiceException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)V

    .line 422
    .end local v0    # "e":Lcom/alibaba/alimei/restfulapi/exception/ServiceException;
    :cond_0
    :goto_1
    if-eqz v4, :cond_2

    .line 424
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/support/ARFLogger;->isLogI()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 425
    const-string/jumbo v5, "LWPServiceClientImpl"

    const-string/jumbo v6, "executeWithIOBlock error--->>>"

    invoke-static {v5, v6, v4}, Lcom/alibaba/alimei/restfulapi/support/ARFLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 427
    :cond_1
    invoke-virtual {p0, v1, v2}, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->setRpcError(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    :goto_2
    invoke-virtual {p0}, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->commitStatics()V

    goto :goto_0

    .line 400
    :catch_1
    move-exception v0

    .line 401
    .local v0, "e":Lcom/alibaba/alimei/restfulapi/exception/NetworkException;
    invoke-interface {p3, v0}, Lcom/alibaba/alimei/restfulapi/service/RpcCallback;->onNetworkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)V

    .line 402
    move-object v4, v0

    .line 404
    invoke-direct {p0}, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->resetTrafficLenth()V

    .line 405
    invoke-interface {p2, v8}, Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;->setSuccess(Z)V

    .line 406
    const-string/jumbo v1, "1000"

    .line 407
    invoke-static {v0}, Lcom/alibaba/alimei/restfulapi/utils/CommonUtils;->getErrorMsg(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    .line 408
    const-string/jumbo v5, "LWPServiceClientImpl"

    const-string/jumbo v6, "lwp handleHttpResponseContent"

    invoke-static {v5, v6, v0}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 409
    .end local v0    # "e":Lcom/alibaba/alimei/restfulapi/exception/NetworkException;
    :catch_2
    move-exception v0

    .line 410
    .local v0, "e":Lcom/alibaba/alimei/restfulapi/exception/TimestampOutoftimeException;
    invoke-interface {p2, v9}, Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;->setSuccess(Z)V

    .line 411
    const-string/jumbo v1, "1002"

    .line 412
    invoke-static {v0}, Lcom/alibaba/alimei/restfulapi/utils/CommonUtils;->getErrorMsg(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    .line 413
    const-string/jumbo v5, "LWPServiceClientImpl"

    const-string/jumbo v6, "lwp handleHttpResponseContent"

    invoke-static {v5, v6, v0}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 414
    .end local v0    # "e":Lcom/alibaba/alimei/restfulapi/exception/TimestampOutoftimeException;
    :catch_3
    move-exception v0

    .line 416
    .local v0, "e":Lcom/alibaba/alimei/restfulapi/exception/SignCheckException;
    const-string/jumbo v1, "1003"

    .line 417
    invoke-static {v0}, Lcom/alibaba/alimei/restfulapi/utils/CommonUtils;->getErrorMsg(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    .line 418
    const-string/jumbo v5, "LWPServiceClientImpl"

    const-string/jumbo v6, "lwp handleHttpResponseContent"

    invoke-static {v5, v6, v0}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 419
    invoke-interface {p2, v9}, Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;->setSuccess(Z)V

    goto :goto_1

    .line 429
    .end local v0    # "e":Lcom/alibaba/alimei/restfulapi/exception/SignCheckException;
    :cond_2
    invoke-interface {p2, v8}, Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;->setSuccess(Z)V

    .line 430
    invoke-virtual {p0}, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->endNetStatics()V

    .line 431
    invoke-interface {p3, v3}, Lcom/alibaba/alimei/restfulapi/service/RpcCallback;->onSuccess(Ljava/lang/Object;)V

    .line 432
    invoke-interface {p3, v3}, Lcom/alibaba/alimei/restfulapi/service/RpcCallback;->onPostExecute(Ljava/lang/Object;)V

    .line 433
    invoke-virtual {p0}, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->endHandleStatics()V

    goto :goto_2
.end method

.method private isAccessTokenInValid(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)Z
    .locals 3
    .param p1, "e"    # Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 643
    if-nez p1, :cond_1

    .line 653
    :cond_0
    :goto_0
    return v1

    .line 647
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/exception/ServiceException;->getResultCode()I

    move-result v0

    .line 648
    .local v0, "resultCode":I
    const/16 v2, 0x1a5

    if-eq v2, v0, :cond_0

    const/16 v2, 0x1a6

    if-eq v2, v0, :cond_0

    const/16 v2, 0x191

    if-eq v2, v0, :cond_0

    const/16 v2, 0x1b0

    if-eq v2, v0, :cond_0

    const/16 v2, 0x1b1

    if-eq v2, v0, :cond_0

    .line 653
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isRedo()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 367
    iget-object v1, p0, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->redoCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    if-gt v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parseResultCode(Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "jsonObj"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lcom/alibaba/alimei/restfulapi/exception/TimestampOutoftimeException;,
            Lcom/alibaba/alimei/restfulapi/exception/SignCheckException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/16 v3, -0x3e7

    .line 725
    if-eqz p1, :cond_1

    const-string/jumbo v2, "resultCode"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 726
    const-string/jumbo v2, "resultCode"

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 727
    .local v1, "resultCode":I
    if-ne v1, v3, :cond_0

    .line 728
    const-string/jumbo v2, "resultCode"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 729
    .local v0, "codeStr":Ljava/lang/String;
    const-string/jumbo v2, "RequestSignCheckFail"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 730
    const-string/jumbo v2, "LWPServiceClientImpl"

    const-string/jumbo v3, "Sign fail"

    invoke-static {v2, v3}, Lcom/alibaba/alimei/restfulapi/support/ARFLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    new-instance v2, Lcom/alibaba/alimei/restfulapi/exception/SignCheckException;

    invoke-direct {v2}, Lcom/alibaba/alimei/restfulapi/exception/SignCheckException;-><init>()V

    throw v2

    .line 734
    .end local v0    # "codeStr":Ljava/lang/String;
    :cond_0
    const/16 v2, 0x4a6

    if-ne v1, v2, :cond_1

    .line 736
    const-string/jumbo v2, "LWPServiceClientImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "local time is not equals to server time, current time sTimestampDiff \uff1d "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v4, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->sTimestampDiff:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/alimei/restfulapi/support/ARFLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    new-instance v2, Lcom/alibaba/alimei/restfulapi/exception/TimestampOutoftimeException;

    invoke-direct {v2}, Lcom/alibaba/alimei/restfulapi/exception/TimestampOutoftimeException;-><init>()V

    throw v2

    .line 742
    .end local v1    # "resultCode":I
    :cond_1
    return-void
.end method

.method private resetTrafficLenth()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const-wide/16 v0, 0x0

    .line 667
    iput-wide v0, p0, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->mUpstreamLength:J

    .line 668
    iput-wide v0, p0, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->mDownstreamLength:J

    .line 669
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->isAborted:Z

    .line 183
    return-void
.end method

.method public doGet(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 7
    .param p1, "request"    # Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<TT;>;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 209
    .local p2, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<TT;>;"
    new-instance v1, Lcom/alibaba/alimei/restfulapi/spi/http/LWPServiceTicket;

    invoke-direct {v1}, Lcom/alibaba/alimei/restfulapi/spi/http/LWPServiceTicket;-><init>()V

    .line 210
    .local v1, "ticket":Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Laix;->b(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 211
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;->setSuccess(Z)V

    .line 242
    :goto_0
    return-object v1

    .line 214
    :cond_0
    new-instance v3, Lgti;

    invoke-direct {v3}, Lgti;-><init>()V

    iput-object v3, p0, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->mHttpRequest:Lgti;

    .line 215
    const/4 v2, 0x0

    .line 217
    .local v2, "url":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->getHttpRequestBuilder()Lcom/alibaba/alimei/restfulapi/spi/HttpRequestBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->mAccountName:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->mHttpClientFactory:Lcom/alibaba/alimei/restfulapi/spi/http/HttpClientFactory;

    iget-object v6, p0, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->mOpenApiMethods:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    invoke-interface {v3, v4, v5, v6, p1}, Lcom/alibaba/alimei/restfulapi/spi/HttpRequestBuilder;->buildHttpGetUrl(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/spi/http/HttpClientFactory;Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 221
    :goto_1
    iget-object v3, p0, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->mHttpRequest:Lgti;

    invoke-virtual {v3, v2}, Lgti;->a(Ljava/lang/String;)V

    .line 222
    iget-object v3, p0, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->mHttpRequest:Lgti;

    const-string/jumbo v4, "GET"

    invoke-virtual {v3, v4}, Lgti;->b(Ljava/lang/String;)V

    .line 223
    iget-object v3, p0, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->mHttpRequest:Lgti;

    const-wide/32 v4, 0xea60

    invoke-virtual {v3, v4, v5}, Lgti;->a(J)V

    .line 224
    iput-object p1, p0, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->mServiceRequest:Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;

    .line 225
    iget-object v3, p0, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->mServiceRequest:Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;

    invoke-virtual {v3}, Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 226
    iget-object v3, p0, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->mHttpRequest:Lgti;

    const-string/jumbo v4, "Cookie"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "token="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->mServiceRequest:Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;

    invoke-virtual {v6}, Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;->getAccessToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lgti;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    :cond_1
    iget-object v3, p0, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->mHttpRequest:Lgti;

    invoke-direct {p0, v3}, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->addDefaultHeader(Lgti;)V

    .line 230
    new-instance v3, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl$1;

    invoke-direct {v3, p0, p2}, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl$1;-><init>(Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)V

    iput-object v3, p0, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->mRedoTask:Lcom/alibaba/alimei/restfulapi/spi/http/RedoTask;

    .line 240
    iget-object v3, p0, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->mHttpRequest:Lgti;

    invoke-direct {p0, v3, v1, p2}, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->executeLWPRequest(Lgti;Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)V

    goto :goto_0

    .line 218
    :catch_0
    move-exception v0

    .line 219
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1
.end method

.method public doGetChunked(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;JJ)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 1
    .param p1, "request"    # Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;
    .param p3, "start"    # J
    .param p5, "end"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<TT;>;JJ)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    .prologue
    .line 247
    .local p2, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public doPost(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 9
    .param p1, "request"    # Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<TT;>;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 252
    .local p2, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<TT;>;"
    new-instance v3, Lcom/alibaba/alimei/restfulapi/spi/http/LWPServiceTicket;

    invoke-direct {v3}, Lcom/alibaba/alimei/restfulapi/spi/http/LWPServiceTicket;-><init>()V

    .line 253
    .local v3, "ticket":Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getAppContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Laix;->b(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 254
    const/4 v5, 0x0

    invoke-interface {v3, v5}, Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;->setSuccess(Z)V

    .line 287
    :goto_0
    return-object v3

    .line 257
    :cond_0
    new-instance v5, Lgti;

    invoke-direct {v5}, Lgti;-><init>()V

    iput-object v5, p0, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->mHttpRequest:Lgti;

    .line 258
    invoke-direct {p0}, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->getHttpRequestBuilder()Lcom/alibaba/alimei/restfulapi/spi/HttpRequestBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->mAccountName:Ljava/lang/String;

    iget-object v7, p0, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->mHttpClientFactory:Lcom/alibaba/alimei/restfulapi/spi/http/HttpClientFactory;

    iget-object v8, p0, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->mOpenApiMethods:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    invoke-interface {v5, v6, v7, v8}, Lcom/alibaba/alimei/restfulapi/spi/HttpRequestBuilder;->buildHttpHost(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/spi/http/HttpClientFactory;Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;)Ljava/lang/String;

    move-result-object v4

    .line 259
    .local v4, "url":Ljava/lang/String;
    const/4 v0, 0x0

    .line 261
    .local v0, "body":[B
    :try_start_0
    invoke-direct {p0}, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->getHttpRequestBuilder()Lcom/alibaba/alimei/restfulapi/spi/HttpRequestBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->mOpenApiMethods:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    invoke-interface {v5, p1, v6}, Lcom/alibaba/alimei/restfulapi/spi/HttpRequestBuilder;->buildHttpPostBody(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 265
    :goto_1
    iget-object v5, p0, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->mHttpRequest:Lgti;

    invoke-virtual {v5, v4}, Lgti;->a(Ljava/lang/String;)V

    .line 266
    iget-object v5, p0, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->mHttpRequest:Lgti;

    const-string/jumbo v6, "POST"

    invoke-virtual {v5, v6}, Lgti;->b(Ljava/lang/String;)V

    .line 267
    iget-object v5, p0, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->mHttpRequest:Lgti;

    invoke-virtual {v5, v0}, Lgti;->a([B)V

    .line 268
    iget-object v5, p0, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->mHttpRequest:Lgti;

    const-wide/32 v6, 0xea60

    invoke-virtual {v5, v6, v7}, Lgti;->a(J)V

    .line 269
    iput-object p1, p0, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->mServiceRequest:Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;

    .line 270
    iget-object v5, p0, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->mHttpRequest:Lgti;

    invoke-direct {p0, v5}, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->addDefaultHeader(Lgti;)V

    .line 271
    iget-object v5, p0, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->mHttpRequest:Lgti;

    const-string/jumbo v6, "Content-Type"

    const-string/jumbo v7, "application/x-www-form-urlencoded"

    invoke-virtual {v5, v6, v7}, Lgti;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    if-nez v0, :cond_1

    const-string/jumbo v1, "0"

    .line 273
    .local v1, "contentLength":Ljava/lang/String;
    :goto_2
    iget-object v5, p0, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->mHttpRequest:Lgti;

    const-string/jumbo v6, "Content-Length"

    invoke-virtual {v5, v6, v1}, Lgti;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    new-instance v5, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl$2;

    invoke-direct {v5, p0, p2}, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl$2;-><init>(Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)V

    iput-object v5, p0, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->mRedoTask:Lcom/alibaba/alimei/restfulapi/spi/http/RedoTask;

    .line 285
    iget-object v5, p0, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->mHttpRequest:Lgti;

    invoke-direct {p0, v5, v3, p2}, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->executeLWPRequest(Lgti;Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)V

    goto :goto_0

    .line 262
    .end local v1    # "contentLength":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 263
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    .line 272
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_1
    array-length v5, v0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2
.end method

.method public doPostWebmailRequest(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 1
    .param p1, "request"    # Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<TT;>;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    .prologue
    .line 307
    .local p2, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public doPostWithAttachmentFile(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Ljava/util/Map;Lcom/alibaba/alimei/restfulapi/spi/http/entity/listener/OnProgressListener;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 1
    .param p1, "request"    # Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;
    .param p3, "listener"    # Lcom/alibaba/alimei/restfulapi/spi/http/entity/listener/OnProgressListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;",
            "Lcom/alibaba/alimei/restfulapi/spi/http/entity/listener/OnProgressListener;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<TT;>;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    .prologue
    .line 297
    .local p2, "files":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/io/File;>;"
    .local p4, "_callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public doPostWithFile(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Ljava/util/Map;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 1
    .param p1, "request"    # Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/restfulapi/spi/FileWrapper;",
            ">;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<TT;>;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    .prologue
    .line 292
    .local p2, "files":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/spi/FileWrapper;>;"
    .local p3, "_callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public doPostWithFiles(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Ljava/util/Map;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 1
    .param p1, "request"    # Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/restfulapi/spi/FileWrapper;",
            ">;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<TT;>;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    .prologue
    .line 302
    .local p2, "files":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/spi/FileWrapper;>;"
    .local p3, "_callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getContentLenth()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 696
    const-string/jumbo v0, "GET"

    iget-object v1, p0, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->mHttpRequest:Lgti;

    invoke-virtual {v1}, Lgti;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 697
    iget-wide v0, p0, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->mDownstreamLength:J

    .line 701
    :goto_0
    return-wide v0

    .line 698
    :cond_0
    const-string/jumbo v0, "POST"

    iget-object v1, p0, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->mHttpRequest:Lgti;

    invoke-virtual {v1}, Lgti;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 699
    iget-wide v0, p0, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->mUpstreamLength:J

    goto :goto_0

    .line 701
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method protected getHttpClientFactory()Lcom/alibaba/alimei/restfulapi/spi/http/HttpClientFactory;
    .locals 1

    .prologue
    .line 204
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getHttpClientFactory()Lcom/alibaba/alimei/restfulapi/spi/http/HttpClientFactory;

    move-result-object v0

    return-object v0
.end method

.method protected getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 706
    iget-object v0, p0, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->mHttpRequest:Lgti;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->mHttpRequest:Lgti;

    invoke-virtual {v0}, Lgti;->b()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method protected getMp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 683
    const-string/jumbo v0, "lwp"

    return-object v0
.end method

.method protected getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 688
    iget-object v0, p0, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->mOpenApiMethods:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    if-eqz v0, :cond_0

    .line 689
    iget-object v0, p0, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->mOpenApiMethods:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    invoke-virtual {v0}, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;->getDefaultMethodName()Ljava/lang/String;

    move-result-object v0

    .line 691
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->isAborted:Z

    return v0
.end method

.method protected readHttpResponseContent(Lgtj;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Ljava/lang/Object;
    .locals 24
    .param p1, "response"    # Lgtj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lgtj;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/restfulapi/exception/ServiceException;,
            Lcom/alibaba/alimei/restfulapi/exception/NetworkException;,
            Lcom/alibaba/alimei/restfulapi/exception/TimestampOutoftimeException;,
            Lcom/alibaba/alimei/restfulapi/exception/SignCheckException;
        }
    .end annotation

    .prologue
    .line 443
    .local p2, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<TT;>;"
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/alibaba/alimei/restfulapi/support/TypeInfo;->getClassGenericType(Ljava/lang/Class;)Lcom/alibaba/alimei/restfulapi/support/TypeInfo;

    move-result-object v20

    .line 444
    .local v20, "typeInfo":Lcom/alibaba/alimei/restfulapi/support/TypeInfo;
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->getHttpResponseParser()Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;

    move-result-object v13

    .line 446
    .local v13, "parser":Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;
    invoke-virtual/range {p1 .. p1}, Lgtj;->a()I

    move-result v19

    .line 450
    .local v19, "statusCode":I
    const/16 v21, 0x1a5

    move/from16 v0, v21

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    const/16 v21, 0x1a6

    move/from16 v0, v21

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    const/16 v21, 0x191

    move/from16 v0, v21

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    const/16 v21, 0x1b0

    move/from16 v0, v21

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    const/16 v21, 0x1b1

    move/from16 v0, v21

    move/from16 v1, v19

    if-ne v0, v1, :cond_c

    .line 451
    :cond_0
    new-instance v15, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl$4;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl$4;-><init>(Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;)V

    .line 481
    .local v15, "refreshTokenListener":Lcom/alibaba/alimei/restfulapi/RPCListener;, "Lcom/alibaba/alimei/restfulapi/RPCListener<Ljava/lang/String;>;"
    const/16 v21, 0x1a5

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    .line 482
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getAuthProvider()Lcom/alibaba/alimei/restfulapi/auth/AuthProvider;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lcom/alibaba/alimei/restfulapi/auth/AuthProvider;->getAuthLifecycleListener()Lcom/alibaba/alimei/restfulapi/auth/AuthLifecycleListener;

    move-result-object v12

    .line 483
    .local v12, "listener":Lcom/alibaba/alimei/restfulapi/auth/AuthLifecycleListener;
    if-eqz v12, :cond_1

    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->mOpenApiMethods:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    move-object/from16 v21, v0

    if-eqz v21, :cond_2

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->mOpenApiMethods:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;->domainType:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->mAccountName:Ljava/lang/String;

    move-object/from16 v22, v0

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v12, v0, v1, v15}, Lcom/alibaba/alimei/restfulapi/auth/AuthLifecycleListener;->onAccessTokenInvalid(ILjava/lang/String;Lcom/alibaba/alimei/restfulapi/RPCListener;)V

    .line 490
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->mRefreshTokenStatus:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_3

    .line 491
    new-instance v21, Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    const-string/jumbo v22, "token\u975e\u6cd5"

    const/16 v23, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v19

    move-object/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/alimei/restfulapi/exception/ServiceException;-><init>(ILjava/lang/String;Z)V

    throw v21

    .line 487
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->mAccountName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v12, v0, v15}, Lcom/alibaba/alimei/restfulapi/auth/AuthLifecycleListener;->onAccessTokenInvalid(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/RPCListener;)V

    goto :goto_0

    .line 493
    :cond_3
    const/4 v14, 0x0

    .line 639
    .end local v12    # "listener":Lcom/alibaba/alimei/restfulapi/auth/AuthLifecycleListener;
    .end local v15    # "refreshTokenListener":Lcom/alibaba/alimei/restfulapi/RPCListener;, "Lcom/alibaba/alimei/restfulapi/RPCListener<Ljava/lang/String;>;"
    :goto_1
    return-object v14

    .line 495
    .restart local v15    # "refreshTokenListener":Lcom/alibaba/alimei/restfulapi/RPCListener;, "Lcom/alibaba/alimei/restfulapi/RPCListener<Ljava/lang/String;>;"
    :cond_4
    const/16 v21, 0x1a6

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_8

    .line 496
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getAuthProvider()Lcom/alibaba/alimei/restfulapi/auth/AuthProvider;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lcom/alibaba/alimei/restfulapi/auth/AuthProvider;->getAuthLifecycleListener()Lcom/alibaba/alimei/restfulapi/auth/AuthLifecycleListener;

    move-result-object v12

    .line 497
    .restart local v12    # "listener":Lcom/alibaba/alimei/restfulapi/auth/AuthLifecycleListener;
    if-eqz v12, :cond_5

    .line 498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->mOpenApiMethods:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    move-object/from16 v21, v0

    if-eqz v21, :cond_6

    .line 499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->mOpenApiMethods:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;->domainType:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->mAccountName:Ljava/lang/String;

    move-object/from16 v22, v0

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v12, v0, v1, v15}, Lcom/alibaba/alimei/restfulapi/auth/AuthLifecycleListener;->onAccessTokenExpired(ILjava/lang/String;Lcom/alibaba/alimei/restfulapi/RPCListener;)V

    .line 504
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->mRefreshTokenStatus:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_7

    .line 505
    new-instance v21, Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    const-string/jumbo v22, "token\u8fc7\u671f"

    const/16 v23, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v19

    move-object/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/alimei/restfulapi/exception/ServiceException;-><init>(ILjava/lang/String;Z)V

    throw v21

    .line 501
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->mAccountName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v12, v0, v15}, Lcom/alibaba/alimei/restfulapi/auth/AuthLifecycleListener;->onAccessTokenExpired(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/RPCListener;)V

    goto :goto_2

    .line 507
    :cond_7
    const/4 v14, 0x0

    goto :goto_1

    .line 509
    .end local v12    # "listener":Lcom/alibaba/alimei/restfulapi/auth/AuthLifecycleListener;
    :cond_8
    const/16 v21, 0x191

    move/from16 v0, v19

    move/from16 v1, v21

    if-eq v0, v1, :cond_9

    const/16 v21, 0x1b1

    move/from16 v0, v19

    move/from16 v1, v21

    if-eq v0, v1, :cond_9

    const/16 v21, 0x1b0

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_c

    .line 510
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->mOpenApiMethods:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    move-object/from16 v21, v0

    if-eqz v21, :cond_c

    .line 511
    const/16 v21, 0x7d0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->mOpenApiMethods:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;->domainType:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_a

    const/16 v21, 0xfa0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->mOpenApiMethods:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;->domainType:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_c

    .line 512
    :cond_a
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getAuthProvider()Lcom/alibaba/alimei/restfulapi/auth/AuthProvider;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lcom/alibaba/alimei/restfulapi/auth/AuthProvider;->getAuthLifecycleListener()Lcom/alibaba/alimei/restfulapi/auth/AuthLifecycleListener;

    move-result-object v12

    .line 513
    .restart local v12    # "listener":Lcom/alibaba/alimei/restfulapi/auth/AuthLifecycleListener;
    if-eqz v12, :cond_b

    .line 514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->mOpenApiMethods:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;->domainType:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->mAccountName:Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v12, v0, v1, v2}, Lcom/alibaba/alimei/restfulapi/auth/AuthLifecycleListener;->onAccessTokenInvalid(ILjava/lang/String;Lcom/alibaba/alimei/restfulapi/RPCListener;)V

    .line 517
    :cond_b
    new-instance v21, Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    const-string/jumbo v22, "token invalid"

    const/16 v23, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v19

    move-object/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/alimei/restfulapi/exception/ServiceException;-><init>(ILjava/lang/String;Z)V

    throw v21

    .line 525
    .end local v12    # "listener":Lcom/alibaba/alimei/restfulapi/auth/AuthLifecycleListener;
    .end local v15    # "refreshTokenListener":Lcom/alibaba/alimei/restfulapi/RPCListener;, "Lcom/alibaba/alimei/restfulapi/RPCListener<Ljava/lang/String;>;"
    :cond_c
    invoke-virtual {v13}, Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;->isHandleResponseIncludeStatus()Z

    move-result v21

    if-eqz v21, :cond_f

    .line 526
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->mDownstreamType:I

    .line 528
    const-string/jumbo v21, "Content-Length"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lgtj;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 529
    .local v6, "contentLength":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_e

    .line 531
    :try_start_0
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->mDownstreamLength:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 546
    :cond_d
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lgtj;->d()[B

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->mServiceRequest:Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;->getRequestResultReference()Ljava/lang/Object;

    move-result-object v22

    move/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v20

    invoke-virtual {v13, v0, v1, v2, v3}, Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;->handleHttpResponseIncludeStatus(I[BLjava/lang/Object;Lcom/alibaba/alimei/restfulapi/support/TypeInfo;)Ljava/lang/Object;

    move-result-object v14

    .line 550
    .local v14, "parserResult":Ljava/lang/Object;, "TT;"
    goto/16 :goto_1

    .line 532
    .end local v14    # "parserResult":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v8

    .line 534
    .local v8, "ex":Ljava/lang/NumberFormatException;
    invoke-virtual {v8}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_3

    .line 537
    .end local v8    # "ex":Ljava/lang/NumberFormatException;
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lgtj;->d()[B

    move-result-object v4

    .line 538
    .local v4, "body":[B
    if-eqz v4, :cond_d

    .line 539
    array-length v0, v4

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v10, v0

    .line 540
    .local v10, "length":J
    const-wide/16 v22, 0x0

    cmp-long v21, v10, v22

    if-lez v21, :cond_d

    .line 541
    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->mDownstreamLength:J

    goto :goto_3

    .line 553
    .end local v4    # "body":[B
    .end local v6    # "contentLength":Ljava/lang/String;
    .end local v10    # "length":J
    :cond_f
    const/16 v21, 0xc8

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_15

    .line 555
    invoke-virtual/range {p1 .. p1}, Lgtj;->d()[B

    move-result-object v16

    .line 556
    .local v16, "responseBytes":[B
    if-nez v16, :cond_10

    .line 557
    new-instance v21, Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    const/16 v22, 0x0

    const-string/jumbo v23, "\u670d\u52a1\u5668\u7aef\u8fd4\u56de\u7684\u5185\u5bb9\u65e0\u6548"

    invoke-direct/range {v21 .. v23}, Lcom/alibaba/alimei/restfulapi/exception/ServiceException;-><init>(ILjava/lang/String;)V

    throw v21

    .line 560
    :cond_10
    const/16 v17, 0x0

    .line 562
    .local v17, "responseContent":Ljava/lang/String;
    if-eqz v16, :cond_11

    .line 563
    :try_start_1
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->mDownstreamLength:J

    .line 564
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/support/Settings;->getDefaultCharset()Ljava/lang/String;

    move-result-object v5

    .line 565
    .local v5, "charset":Ljava/lang/String;
    new-instance v17, Ljava/lang/String;

    .end local v17    # "responseContent":Ljava/lang/String;
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 570
    .end local v5    # "charset":Ljava/lang/String;
    .restart local v17    # "responseContent":Ljava/lang/String;
    :cond_11
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/support/ARFLogger;->isLogI()Z

    move-result v21

    if-eqz v21, :cond_12

    .line 571
    const-string/jumbo v21, "LWPServiceClientImpl"

    const-string/jumbo v22, "responseContent--->>>"

    invoke-static/range {v21 .. v22}, Lcom/alibaba/alimei/restfulapi/support/ARFLogger;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    const-string/jumbo v21, "LWPServiceClientImpl"

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/alibaba/alimei/restfulapi/support/ARFLogger;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    :cond_12
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_13

    .line 579
    :try_start_2
    new-instance v9, Lorg/json/JSONObject;

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 580
    .local v9, "jsonObj":Lorg/json/JSONObject;
    const-string/jumbo v21, "resultCode"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_13

    .line 581
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->parseResultCode(Lorg/json/JSONObject;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 589
    .end local v9    # "jsonObj":Lorg/json/JSONObject;
    :cond_13
    :goto_4
    const-class v21, Ljava/lang/String;

    invoke-virtual/range {v20 .. v20}, Lcom/alibaba/alimei/restfulapi/support/TypeInfo;->getRawType()Ljava/lang/Class;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v21

    if-eqz v21, :cond_14

    .line 590
    move-object/from16 v18, v17

    :goto_5
    move-object/from16 v14, v18

    .line 639
    goto/16 :goto_1

    .line 567
    .end local v17    # "responseContent":Ljava/lang/String;
    :catch_1
    move-exception v7

    .line 568
    .local v7, "e":Ljava/io/IOException;
    new-instance v21, Lcom/alibaba/alimei/restfulapi/exception/NetworkException;

    move-object/from16 v0, v21

    invoke-direct {v0, v7}, Lcom/alibaba/alimei/restfulapi/exception/NetworkException;-><init>(Ljava/lang/Throwable;)V

    throw v21

    .line 583
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v17    # "responseContent":Ljava/lang/String;
    :catch_2
    move-exception v7

    .line 584
    .local v7, "e":Lorg/json/JSONException;
    invoke-virtual {v7}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_4

    .line 592
    .end local v7    # "e":Lorg/json/JSONException;
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->mServiceRequest:Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;->getRequestResultReference()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-virtual {v13, v0, v1, v2}, Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;->handleHttpResponseAsText(Ljava/lang/String;Ljava/lang/Object;Lcom/alibaba/alimei/restfulapi/support/TypeInfo;)Ljava/lang/Object;

    move-result-object v18

    .line 595
    .local v18, "result":Ljava/lang/Object;, "TT;"
    goto :goto_5

    .end local v16    # "responseBytes":[B
    .end local v17    # "responseContent":Ljava/lang/String;
    .end local v18    # "result":Ljava/lang/Object;, "TT;"
    :cond_15
    const/16 v21, 0xce

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_1a

    .line 596
    invoke-virtual/range {p1 .. p1}, Lgtj;->d()[B

    move-result-object v16

    .line 597
    .restart local v16    # "responseBytes":[B
    if-nez v16, :cond_16

    .line 598
    new-instance v21, Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    const/16 v22, 0x0

    const-string/jumbo v23, "\u670d\u52a1\u5668\u7aef\u8fd4\u56de\u7684\u5185\u5bb9\u65e0\u6548"

    invoke-direct/range {v21 .. v23}, Lcom/alibaba/alimei/restfulapi/exception/ServiceException;-><init>(ILjava/lang/String;)V

    throw v21

    .line 601
    :cond_16
    const/16 v17, 0x0

    .line 603
    .restart local v17    # "responseContent":Ljava/lang/String;
    if-eqz v16, :cond_17

    .line 604
    :try_start_3
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->mDownstreamLength:J

    .line 605
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/support/Settings;->getDefaultCharset()Ljava/lang/String;

    move-result-object v5

    .line 606
    .restart local v5    # "charset":Ljava/lang/String;
    new-instance v17, Ljava/lang/String;

    .end local v17    # "responseContent":Ljava/lang/String;
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 611
    .end local v5    # "charset":Ljava/lang/String;
    .restart local v17    # "responseContent":Ljava/lang/String;
    :cond_17
    const-string/jumbo v21, "LWPServiceClientImpl"

    const-string/jumbo v22, "responseContent--->>>"

    invoke-static/range {v21 .. v22}, Lcom/alibaba/alimei/restfulapi/support/ARFLogger;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    const-string/jumbo v21, "LWPServiceClientImpl"

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/alibaba/alimei/restfulapi/support/ARFLogger;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_18

    .line 615
    const-string/jumbo v17, "{\"statusCode\": 206}"

    .line 628
    :goto_6
    const-class v21, Ljava/lang/String;

    invoke-virtual/range {v20 .. v20}, Lcom/alibaba/alimei/restfulapi/support/TypeInfo;->getRawType()Ljava/lang/Class;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v21

    if-eqz v21, :cond_19

    .line 629
    move-object/from16 v18, v17

    .local v18, "result":Ljava/lang/String;, "TT;"
    goto/16 :goto_5

    .line 608
    .end local v17    # "responseContent":Ljava/lang/String;
    .end local v18    # "result":Ljava/lang/String;, "TT;"
    :catch_3
    move-exception v7

    .line 609
    .local v7, "e":Ljava/io/IOException;
    new-instance v21, Lcom/alibaba/alimei/restfulapi/exception/NetworkException;

    move-object/from16 v0, v21

    invoke-direct {v0, v7}, Lcom/alibaba/alimei/restfulapi/exception/NetworkException;-><init>(Ljava/lang/Throwable;)V

    throw v21

    .line 620
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v17    # "responseContent":Ljava/lang/String;
    :cond_18
    :try_start_4
    new-instance v9, Lorg/json/JSONObject;

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 621
    .restart local v9    # "jsonObj":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->parseResultCode(Lorg/json/JSONObject;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_6

    .line 622
    .end local v9    # "jsonObj":Lorg/json/JSONObject;
    :catch_4
    move-exception v7

    .line 623
    .local v7, "e":Lorg/json/JSONException;
    invoke-virtual {v7}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_6

    .line 631
    .end local v7    # "e":Lorg/json/JSONException;
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->mServiceRequest:Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;->getRequestResultReference()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-virtual {v13, v0, v1, v2}, Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;->handleHttpResponseAsText(Ljava/lang/String;Ljava/lang/Object;Lcom/alibaba/alimei/restfulapi/support/TypeInfo;)Ljava/lang/Object;

    move-result-object v18

    .line 634
    .local v18, "result":Ljava/lang/Object;, "TT;"
    goto/16 :goto_5

    .line 636
    .end local v16    # "responseBytes":[B
    .end local v17    # "responseContent":Ljava/lang/String;
    .end local v18    # "result":Ljava/lang/Object;, "TT;"
    :cond_1a
    new-instance v21, Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    invoke-virtual/range {p1 .. p1}, Lgtj;->b()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v19

    move-object/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/alimei/restfulapi/exception/ServiceException;-><init>(ILjava/lang/String;Z)V

    throw v21
.end method

.method public setHttpRequestBuilder(Lcom/alibaba/alimei/restfulapi/spi/HttpRequestBuilder;)V
    .locals 0
    .param p1, "builder"    # Lcom/alibaba/alimei/restfulapi/spi/HttpRequestBuilder;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->mHttpRequestBuilder:Lcom/alibaba/alimei/restfulapi/spi/HttpRequestBuilder;

    .line 188
    return-void
.end method

.method public setHttpResponseParser(Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;)V
    .locals 0
    .param p1, "parser"    # Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->mHttpResponseParser:Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;

    .line 201
    return-void
.end method
