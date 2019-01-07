.class public Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;
.super Lcom/alibaba/alimei/restfulapi/spi/BaseServiceClient;
.source "HttpServiceClientImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$GeneralServiceTicket;
    }
.end annotation


# static fields
.field private static final ERROR_MSG_MAX_DO:Ljava/lang/String; = "\u5df2\u7ecf\u8fbe\u5230\u6700\u5927\u7684\u91cd\u8bd5\u6b21\u6570"

.field private static H_CONTENT_LENGTH:Ljava/lang/String; = null

.field private static final MAX_REDO:I = 0x1

.field private static final METHOD_GET:Ljava/lang/String; = "GET"

.field private static final METHOD_POST:Ljava/lang/String; = "POST"

.field private static final REFRESH_TOKEN_FAIL:I = 0x2

.field private static final REFRESH_TOKEN_INIT:I = 0x0

.field private static final REFRESH_TOKEN_SUCCESS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Alimei.RPC"

.field private static sDefaultHttpResponseParser:Lcom/alibaba/alimei/restfulapi/parser/TextHttpResponseParser;

.field public static sTimestampDiff:J


# instance fields
.field private clientFactory:Lcom/alibaba/alimei/restfulapi/spi/http/HttpClientFactory;

.field private httpClient:Lorg/apache/http/client/HttpClient;

.field private volatile isAborted:Z

.field private final isAsynchronous:Z

.field private isAttachAuthInfo:Z

.field private final mAccountName:Ljava/lang/String;

.field private mDownstreamLength:J

.field private mDownstreamType:I

.field private mHttpRequestBuilder:Lcom/alibaba/alimei/restfulapi/spi/HttpRequestBuilder;

.field private mHttpResponseParser:Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;

.field private final mOpenApiMethods:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

.field private mRedoTask:Lcom/alibaba/alimei/restfulapi/spi/http/RedoTask;

.field private mRefreshTokenStatus:I

.field private mRequestTask:Lcom/alibaba/alimei/restfulapi/spi/http/InnerHttpRequestTask;

.field private mServiceRequest:Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;

.field private mUpstreamLength:J

.field private method:Ljava/lang/String;

.field private final redoCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private request:Lorg/apache/http/client/methods/HttpUriRequest;

.field private requestParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 73
    const-string/jumbo v0, "Content-Length"

    sput-object v0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->H_CONTENT_LENGTH:Ljava/lang/String;

    .line 119
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->sTimestampDiff:J

    .line 975
    const/4 v0, 0x0

    sput-object v0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->sDefaultHttpResponseParser:Lcom/alibaba/alimei/restfulapi/parser/TextHttpResponseParser;

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

    .line 127
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/spi/BaseServiceClient;-><init>()V

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->isAttachAuthInfo:Z

    .line 96
    iput-boolean v1, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->isAborted:Z

    .line 105
    iput v1, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->mRefreshTokenStatus:I

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->mRequestTask:Lcom/alibaba/alimei/restfulapi/spi/http/InnerHttpRequestTask;

    .line 120
    iput-wide v2, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->mUpstreamLength:J

    .line 121
    iput-wide v2, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->mDownstreamLength:J

    .line 122
    iput v1, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->mDownstreamType:I

    .line 128
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->mAccountName:Ljava/lang/String;

    .line 129
    iput-boolean p2, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->isAsynchronous:Z

    .line 130
    iput-object p3, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->mOpenApiMethods:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    .line 131
    iput-boolean p4, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->isAttachAuthInfo:Z

    .line 132
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->redoCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 133
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->getHttpClientFactory()Lcom/alibaba/alimei/restfulapi/spi/http/HttpClientFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->clientFactory:Lcom/alibaba/alimei/restfulapi/spi/http/HttpClientFactory;

    .line 134
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->isRedo()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->mDownstreamLength:J

    return-wide v0
.end method

.method static synthetic access$1100(Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;

    .prologue
    .line 71
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->mDownstreamType:I

    return v0
.end method

.method static synthetic access$1200(Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;

    .prologue
    .line 71
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->mRefreshTokenStatus:I

    return v0
.end method

.method static synthetic access$1202(Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;
    .param p1, "x1"    # I

    .prologue
    .line 71
    iput p1, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->mRefreshTokenStatus:I

    return p1
.end method

.method static synthetic access$1300(Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;)Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->mServiceRequest:Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->isAsynchronous:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;)Lcom/alibaba/alimei/restfulapi/spi/http/RedoTask;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->mRedoTask:Lcom/alibaba/alimei/restfulapi/spi/http/RedoTask;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;Lcom/alibaba/alimei/restfulapi/spi/http/RedoTask;)Lcom/alibaba/alimei/restfulapi/spi/http/RedoTask;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;
    .param p1, "x1"    # Lcom/alibaba/alimei/restfulapi/spi/http/RedoTask;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->mRedoTask:Lcom/alibaba/alimei/restfulapi/spi/http/RedoTask;

    return-object p1
.end method

.method static synthetic access$200(Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;)Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->mOpenApiMethods:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->mAccountName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->mUpstreamLength:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;J)J
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;
    .param p1, "x1"    # J

    .prologue
    .line 71
    iput-wide p1, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->mUpstreamLength:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->calculateRequestTrafficLength()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$600(Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    return-object v0
.end method

.method static synthetic access$700(Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->resetTrafficLenth()V

    return-void
.end method

.method static synthetic access$800(Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/restfulapi/exception/ServiceException;,
            Lcom/alibaba/alimei/restfulapi/exception/NetworkException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->handleTimestampOutoftimeExceptionAndRedo()V

    return-void
.end method

.method static synthetic access$900(Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->releaseHttpConnection()V

    return-void
.end method

.method private final calculateRequestTrafficLength()J
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1106
    iget-object v10, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    if-nez v10, :cond_1

    .line 1107
    const-wide/16 v4, 0x0

    .line 1139
    :cond_0
    :goto_0
    return-wide v4

    .line 1109
    :cond_1
    const-wide/16 v4, 0x0

    .line 1110
    .local v4, "length":J
    iget-object v10, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    sget-object v11, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->H_CONTENT_LENGTH:Ljava/lang/String;

    invoke-interface {v10, v11}, Lorg/apache/http/client/methods/HttpUriRequest;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    .line 1111
    .local v1, "header":Lorg/apache/http/Header;
    if-eqz v1, :cond_3

    .line 1112
    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v9

    .line 1114
    .local v9, "value":Ljava/lang/String;
    :try_start_0
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 1128
    .end local v9    # "value":Ljava/lang/String;
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 1129
    .local v2, "httpUriRequest":Lorg/apache/http/client/methods/HttpUriRequest;
    invoke-interface {v2}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v6

    .line 1130
    .local v6, "uri":Ljava/net/URI;
    if-eqz v6, :cond_0

    .line 1131
    invoke-virtual {v6}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v7

    .line 1132
    .local v7, "url":Ljava/lang/String;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_0

    .line 1133
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    .line 1134
    .local v8, "urlBytes":[B
    if-eqz v8, :cond_0

    .line 1135
    array-length v10, v8

    int-to-long v10, v10

    add-long/2addr v4, v10

    goto :goto_0

    .line 1119
    .end local v2    # "httpUriRequest":Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v6    # "uri":Ljava/net/URI;
    .end local v7    # "url":Ljava/lang/String;
    .end local v8    # "urlBytes":[B
    :cond_3
    iget-object v10, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    instance-of v10, v10, Lorg/apache/http/client/methods/HttpPost;

    if-eqz v10, :cond_2

    .line 1120
    iget-object v3, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    check-cast v3, Lorg/apache/http/client/methods/HttpPost;

    .line 1121
    .local v3, "post":Lorg/apache/http/client/methods/HttpPost;
    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpPost;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 1122
    .local v0, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v0, :cond_2

    .line 1123
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v4

    goto :goto_1

    .line 1118
    .end local v0    # "entity":Lorg/apache/http/HttpEntity;
    .end local v3    # "post":Lorg/apache/http/client/methods/HttpPost;
    .restart local v9    # "value":Ljava/lang/String;
    :catch_0
    move-exception v10

    goto :goto_1
.end method

.method private executeHttpRequest(Lorg/apache/http/client/HttpClient;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)V
    .locals 3
    .param p1, "httpClient"    # Lorg/apache/http/client/HttpClient;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/HttpClient;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<TT;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 497
    .local p2, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<TT;>;"
    iget-boolean v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->isAborted:Z

    if-eqz v0, :cond_0

    .line 513
    :goto_0
    return-void

    .line 502
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->mOpenApiMethods:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    invoke-static {v0}, Lcom/alibaba/alimei/restfulapi/support/Settings;->isHttpDnsSwitchOn(Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 503
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    const-string/jumbo v1, "Host"

    iget-object v2, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->mOpenApiMethods:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    iget v2, v2, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;->domainType:I

    invoke-static {v2}, Lcom/alibaba/alimei/restfulapi/support/Settings;->getHostName(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    :cond_1
    iget-boolean v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->isAsynchronous:Z

    if-eqz v0, :cond_2

    .line 508
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getConfiguration()Lcom/alibaba/alimei/restfulapi/ApiConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/alimei/restfulapi/ApiConfiguration;->getUIHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->executeWithAsyncTask(Lorg/apache/http/client/HttpClient;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;Landroid/os/Handler;)V

    goto :goto_0

    .line 511
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->executeWithIOBlock(Lorg/apache/http/client/HttpClient;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)V

    goto :goto_0
.end method

.method private executePostRequest(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Lorg/apache/http/client/methods/HttpUriRequest;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 3
    .param p1, "serviceRequest"    # Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;
    .param p2, "httpRequest"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<TT;>;)",
            "Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 301
    .local p3, "_callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<TT;>;"
    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->httpClient:Lorg/apache/http/client/HttpClient;

    if-nez v1, :cond_0

    .line 302
    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->mOpenApiMethods:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->mOpenApiMethods:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    iget v1, v1, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;->domainType:I

    const/16 v2, 0x7d0

    if-ne v1, v2, :cond_1

    .line 303
    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->clientFactory:Lcom/alibaba/alimei/restfulapi/spi/http/HttpClientFactory;

    iget-object v2, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->mOpenApiMethods:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    invoke-interface {v1, v2}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpClientFactory;->newHttpClientForAttachment(Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;)Lorg/apache/http/client/HttpClient;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->httpClient:Lorg/apache/http/client/HttpClient;

    .line 308
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->mServiceRequest:Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;

    .line 309
    iput-object p2, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 310
    const-string/jumbo v1, "POST"

    iput-object v1, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->method:Ljava/lang/String;

    .line 312
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->handleServiceRequestBeforeRequest(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;)V

    .line 323
    new-instance v0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$GeneralServiceTicket;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$GeneralServiceTicket;-><init>(Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$1;)V

    .line 332
    .local v0, "ticket":Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->httpClient:Lorg/apache/http/client/HttpClient;

    invoke-direct {p0, v1, p3}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->executeHttpRequest(Lorg/apache/http/client/HttpClient;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)V

    .line 334
    return-object v0

    .line 305
    .end local v0    # "ticket":Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    :cond_1
    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->clientFactory:Lcom/alibaba/alimei/restfulapi/spi/http/HttpClientFactory;

    iget-object v2, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->mOpenApiMethods:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    invoke-interface {v1, v2}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpClientFactory;->newHttpClientForPost(Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;)Lorg/apache/http/client/HttpClient;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->httpClient:Lorg/apache/http/client/HttpClient;

    goto :goto_0
.end method

.method private executeWithAsyncTask(Lorg/apache/http/client/HttpClient;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;Landroid/os/Handler;)V
    .locals 1
    .param p1, "httpClient"    # Lorg/apache/http/client/HttpClient;
    .param p3, "uiHandler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/HttpClient;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<TT;>;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 598
    .local p2, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<TT;>;"
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->mRequestTask:Lcom/alibaba/alimei/restfulapi/spi/http/InnerHttpRequestTask;

    if-nez v0, :cond_0

    .line 599
    new-instance v0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$8;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$8;-><init>(Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;Landroid/os/Handler;Lorg/apache/http/client/HttpClient;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)V

    iput-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->mRequestTask:Lcom/alibaba/alimei/restfulapi/spi/http/InnerHttpRequestTask;

    .line 698
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->mRequestTask:Lcom/alibaba/alimei/restfulapi/spi/http/InnerHttpRequestTask;

    invoke-virtual {v0}, Lcom/alibaba/alimei/restfulapi/spi/http/InnerHttpRequestTask;->execute()V

    .line 699
    return-void
.end method

.method private executeWithIOBlock(Lorg/apache/http/client/HttpClient;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)V
    .locals 10
    .param p1, "httpClient"    # Lorg/apache/http/client/HttpClient;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/HttpClient;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<TT;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 516
    .local p2, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<TT;>;"
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->startStatics()V

    .line 517
    const/4 v5, 0x0

    .line 518
    .local v5, "mThrowable":Ljava/lang/Throwable;
    const/4 v4, 0x0

    .line 519
    .local v4, "httpResult":Ljava/lang/Object;, "TT;"
    const/4 v2, 0x0

    .line 520
    .local v2, "errCodeStr":Ljava/lang/String;
    const/4 v3, 0x0

    .line 524
    .local v3, "errMsg":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->calculateRequestTrafficLength()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->mUpstreamLength:J

    .line 525
    iget-object v7, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {p1, v7}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 526
    .local v6, "response":Lorg/apache/http/HttpResponse;
    invoke-virtual {p0, v6, p2}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->readHttpResponseContent(Lorg/apache/http/HttpResponse;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Ljava/lang/Object;

    move-result-object v4

    .line 527
    const/4 v7, 0x1

    iget v8, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->mRefreshTokenStatus:I
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/alibaba/alimei/restfulapi/exception/ServiceException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/alibaba/alimei/restfulapi/exception/NetworkException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/alibaba/alimei/restfulapi/exception/TimestampOutoftimeException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/alibaba/alimei/restfulapi/exception/SignCheckException; {:try_start_0 .. :try_end_0} :catch_8

    if-ne v7, v8, :cond_0

    .line 593
    .end local v4    # "httpResult":Ljava/lang/Object;, "TT;"
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    :goto_0
    return-void

    .line 530
    :catch_0
    move-exception v0

    .line 531
    .local v0, "e":Lorg/apache/http/client/ClientProtocolException;
    new-instance v7, Lcom/alibaba/alimei/restfulapi/exception/NetworkException;

    invoke-direct {v7, v0}, Lcom/alibaba/alimei/restfulapi/exception/NetworkException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p2, v7}, Lcom/alibaba/alimei/restfulapi/service/RpcCallback;->onNetworkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)V

    .line 532
    move-object v5, v0

    .line 533
    const-string/jumbo v2, "1005"

    .line 534
    invoke-static {v0}, Lcom/alibaba/alimei/restfulapi/utils/CommonUtils;->getErrorMsg(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    .line 536
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->resetTrafficLenth()V

    .line 579
    .end local v0    # "e":Lorg/apache/http/client/ClientProtocolException;
    :cond_0
    :goto_1
    if-eqz v5, :cond_2

    .line 581
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->releaseHttpConnection()V

    .line 582
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/support/ARFLogger;->isLogI()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 583
    const-string/jumbo v7, "executeWithIOBlock error--->>>"

    invoke-static {v7, v5}, Lcom/alibaba/alimei/restfulapi/support/ARFLogger;->i(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 585
    :cond_1
    invoke-virtual {p0, v2, v3}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->setRpcError(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    :goto_2
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->commitStatics()V

    goto :goto_0

    .line 537
    :catch_1
    move-exception v0

    .line 538
    .local v0, "e":Ljava/io/IOException;
    new-instance v7, Lcom/alibaba/alimei/restfulapi/exception/NetworkException;

    invoke-direct {v7, v0}, Lcom/alibaba/alimei/restfulapi/exception/NetworkException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p2, v7}, Lcom/alibaba/alimei/restfulapi/service/RpcCallback;->onNetworkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)V

    .line 539
    move-object v5, v0

    .line 540
    const-string/jumbo v2, "1004"

    .line 541
    invoke-static {v0}, Lcom/alibaba/alimei/restfulapi/utils/CommonUtils;->getErrorMsg(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    .line 543
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->resetTrafficLenth()V

    goto :goto_1

    .line 544
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 545
    .local v0, "e":Lcom/alibaba/alimei/restfulapi/exception/ServiceException;
    invoke-interface {p2, v0}, Lcom/alibaba/alimei/restfulapi/service/RpcCallback;->onServiceException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)V

    .line 546
    move-object v5, v0

    .line 548
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "1001:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 549
    invoke-virtual {v0}, Lcom/alibaba/alimei/restfulapi/exception/ServiceException;->getResultCode()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 550
    invoke-virtual {v0}, Lcom/alibaba/alimei/restfulapi/exception/ServiceException;->getResultMsg()Ljava/lang/String;

    move-result-object v3

    .line 577
    goto :goto_1

    .line 552
    .end local v0    # "e":Lcom/alibaba/alimei/restfulapi/exception/ServiceException;
    :catch_3
    move-exception v0

    .line 553
    .local v0, "e":Lcom/alibaba/alimei/restfulapi/exception/NetworkException;
    invoke-interface {p2, v0}, Lcom/alibaba/alimei/restfulapi/service/RpcCallback;->onNetworkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)V

    .line 554
    move-object v5, v0

    .line 556
    const-string/jumbo v2, "1000"

    .line 557
    invoke-static {v0}, Lcom/alibaba/alimei/restfulapi/utils/CommonUtils;->getErrorMsg(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    .line 558
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->resetTrafficLenth()V

    goto :goto_1

    .line 559
    .end local v0    # "e":Lcom/alibaba/alimei/restfulapi/exception/NetworkException;
    :catch_4
    move-exception v0

    .line 560
    .local v0, "e":Lcom/alibaba/alimei/restfulapi/exception/TimestampOutoftimeException;
    const-string/jumbo v2, "1002"

    .line 561
    invoke-static {v0}, Lcom/alibaba/alimei/restfulapi/utils/CommonUtils;->getErrorMsg(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    .line 563
    :try_start_1
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->handleTimestampOutoftimeExceptionAndRedo()V
    :try_end_1
    .catch Lcom/alibaba/alimei/restfulapi/exception/ServiceException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lcom/alibaba/alimei/restfulapi/exception/NetworkException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    goto/16 :goto_0

    .line 565
    :catch_5
    move-exception v1

    .line 566
    .local v1, "e1":Lcom/alibaba/alimei/restfulapi/exception/ServiceException;
    invoke-interface {p2, v1}, Lcom/alibaba/alimei/restfulapi/service/RpcCallback;->onServiceException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)V

    .line 567
    move-object v5, v1

    .line 574
    goto :goto_1

    .line 568
    .end local v1    # "e1":Lcom/alibaba/alimei/restfulapi/exception/ServiceException;
    :catch_6
    move-exception v1

    .line 569
    .local v1, "e1":Lcom/alibaba/alimei/restfulapi/exception/NetworkException;
    invoke-interface {p2, v1}, Lcom/alibaba/alimei/restfulapi/service/RpcCallback;->onNetworkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)V

    .line 570
    move-object v5, v1

    .line 574
    goto :goto_1

    .line 571
    .end local v1    # "e1":Lcom/alibaba/alimei/restfulapi/exception/NetworkException;
    :catch_7
    move-exception v1

    .line 572
    .local v1, "e1":Ljava/io/IOException;
    new-instance v7, Lcom/alibaba/alimei/restfulapi/exception/NetworkException;

    invoke-direct {v7, v1}, Lcom/alibaba/alimei/restfulapi/exception/NetworkException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p2, v7}, Lcom/alibaba/alimei/restfulapi/service/RpcCallback;->onNetworkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)V

    .line 573
    move-object v5, v1

    .line 577
    goto/16 :goto_1

    .line 587
    .end local v0    # "e":Lcom/alibaba/alimei/restfulapi/exception/TimestampOutoftimeException;
    .end local v1    # "e1":Ljava/io/IOException;
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->endNetStatics()V

    .line 588
    invoke-interface {p2, v4}, Lcom/alibaba/alimei/restfulapi/service/RpcCallback;->onSuccess(Ljava/lang/Object;)V

    .line 589
    invoke-interface {p2, v4}, Lcom/alibaba/alimei/restfulapi/service/RpcCallback;->onPostExecute(Ljava/lang/Object;)V

    .line 590
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->endHandleStatics()V

    goto/16 :goto_2

    :catch_8
    move-exception v7

    goto/16 :goto_1
.end method

.method private getHttpRequestBuilder()Lcom/alibaba/alimei/restfulapi/spi/HttpRequestBuilder;
    .locals 1

    .prologue
    .line 989
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->mHttpRequestBuilder:Lcom/alibaba/alimei/restfulapi/spi/HttpRequestBuilder;

    if-nez v0, :cond_0

    .line 990
    sget-object v0, Lcom/alibaba/alimei/restfulapi/spi/http/DefaultHttpRequestBuilder;->DefaultBuilder:Lcom/alibaba/alimei/restfulapi/spi/http/DefaultHttpRequestBuilder;

    .line 992
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->mHttpRequestBuilder:Lcom/alibaba/alimei/restfulapi/spi/HttpRequestBuilder;

    goto :goto_0
.end method

.method private getHttpResponseParser()Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;
    .locals 1

    .prologue
    .line 978
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->mHttpResponseParser:Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;

    if-nez v0, :cond_1

    .line 979
    sget-object v0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->sDefaultHttpResponseParser:Lcom/alibaba/alimei/restfulapi/parser/TextHttpResponseParser;

    if-nez v0, :cond_0

    .line 980
    new-instance v0, Lcom/alibaba/alimei/restfulapi/parser/TextHttpResponseParser;

    invoke-direct {v0}, Lcom/alibaba/alimei/restfulapi/parser/TextHttpResponseParser;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->sDefaultHttpResponseParser:Lcom/alibaba/alimei/restfulapi/parser/TextHttpResponseParser;

    .line 982
    :cond_0
    sget-object v0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->sDefaultHttpResponseParser:Lcom/alibaba/alimei/restfulapi/parser/TextHttpResponseParser;

    .line 984
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->mHttpResponseParser:Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;

    goto :goto_0
.end method

.method private handleServiceRequestBeforeRequest(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;)V
    .locals 1
    .param p1, "request"    # Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;

    .prologue
    .line 482
    iget-boolean v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->isAttachAuthInfo:Z

    if-eqz v0, :cond_0

    .line 484
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 485
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;->setAccessToken(Ljava/lang/String;)V

    .line 488
    :cond_0
    return-void
.end method

.method private handleTimestampOutoftimeExceptionAndRedo()V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/restfulapi/exception/ServiceException;,
            Lcom/alibaba/alimei/restfulapi/exception/NetworkException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1035
    :try_start_0
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getHttpClientFactory()Lcom/alibaba/alimei/restfulapi/spi/http/HttpClientFactory;

    move-result-object v14

    sget-object v15, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;->METHOD_GET_TIMESTAMP:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    invoke-interface {v14, v15}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpClientFactory;->newHttpClientForGet(Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;)Lorg/apache/http/client/HttpClient;

    move-result-object v5

    .line 1037
    .local v5, "httpClient":Lorg/apache/http/client/HttpClient;
    sget-object v14, Lcom/alibaba/alimei/restfulapi/spi/http/DefaultHttpRequestBuilder;->DefaultBuilder:Lcom/alibaba/alimei/restfulapi/spi/http/DefaultHttpRequestBuilder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->mAccountName:Ljava/lang/String;

    .line 1038
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getHttpClientFactory()Lcom/alibaba/alimei/restfulapi/spi/http/HttpClientFactory;

    move-result-object v16

    sget-object v17, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;->METHOD_GET_TIMESTAMP:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    new-instance v18, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$10;

    invoke-direct/range {v18 .. v19}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$10;-><init>(Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;)V

    .line 1037
    invoke-virtual/range {v14 .. v18}, Lcom/alibaba/alimei/restfulapi/spi/http/DefaultHttpRequestBuilder;->buildHttpGet(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/spi/http/HttpClientFactory;Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v6

    .line 1048
    .local v6, "httpGet":Lorg/apache/http/client/methods/HttpGet;
    invoke-interface {v5, v6}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v8

    .line 1049
    .local v8, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v11

    .line 1050
    .local v11, "statusLine":Lorg/apache/http/StatusLine;
    invoke-interface {v11}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v10

    .line 1051
    .local v10, "statusCode":I
    const/16 v14, 0xc8

    if-ne v10, v14, :cond_4

    .line 1053
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    .line 1054
    .local v4, "entity":Lorg/apache/http/HttpEntity;
    if-nez v4, :cond_0

    .line 1055
    new-instance v14, Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    const/4 v15, 0x0

    const-string/jumbo v16, "\u670d\u52a1\u5668\u7aef\u8fd4\u56de\u7684\u5185\u5bb9\u65e0\u6548"

    invoke-direct/range {v14 .. v16}, Lcom/alibaba/alimei/restfulapi/exception/ServiceException;-><init>(ILjava/lang/String;)V

    throw v14
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1096
    .end local v4    # "entity":Lorg/apache/http/HttpEntity;
    .end local v5    # "httpClient":Lorg/apache/http/client/HttpClient;
    .end local v6    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .end local v8    # "response":Lorg/apache/http/HttpResponse;
    .end local v10    # "statusCode":I
    .end local v11    # "statusLine":Lorg/apache/http/StatusLine;
    :catch_0
    move-exception v3

    .line 1097
    .local v3, "e":Ljava/io/IOException;
    throw v3

    .line 1060
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v4    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v5    # "httpClient":Lorg/apache/http/client/HttpClient;
    .restart local v6    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .restart local v8    # "response":Lorg/apache/http/HttpResponse;
    .restart local v10    # "statusCode":I
    .restart local v11    # "statusLine":Lorg/apache/http/StatusLine;
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/support/Settings;->getDefaultCharset()Ljava/lang/String;

    move-result-object v14

    invoke-static {v4, v14}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/apache/http/ParseException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v9

    .line 1062
    .local v9, "responseContent":Ljava/lang/String;
    :try_start_2
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1063
    .local v7, "json":Lorg/json/JSONObject;
    const-string/jumbo v14, "data"

    invoke-virtual {v7, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 1064
    const-string/jumbo v14, "data"

    invoke-virtual {v7, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 1065
    .local v2, "data":Lorg/json/JSONObject;
    const-string/jumbo v14, "timestamp"

    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 1066
    const-string/jumbo v14, "timestamp"

    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 1069
    .local v12, "timestamp":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long v14, v12, v14

    sput-wide v14, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->sTimestampDiff:J

    .line 1070
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/support/ARFLogger;->isLogI()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 1071
    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "\u670d\u52a1\u5668timestamp \uff1d "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " \u65f6\u95f4\u5dee\u4e3a = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-wide v16, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->sTimestampDiff:J

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/alibaba/alimei/restfulapi/support/ARFLogger;->i(Ljava/lang/String;)I

    .line 1073
    const-string/jumbo v14, "----------------\u91cd\u65b0\u8fdb\u884c\u670d\u52a1\u5668\u8bf7\u6c42-------------------"

    invoke-static {v14}, Lcom/alibaba/alimei/restfulapi/support/ARFLogger;->i(Ljava/lang/String;)I

    .line 1075
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->mRedoTask:Lcom/alibaba/alimei/restfulapi/spi/http/RedoTask;

    invoke-interface {v14}, Lcom/alibaba/alimei/restfulapi/spi/http/RedoTask;->redo()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/apache/http/ParseException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 1086
    .end local v2    # "data":Lorg/json/JSONObject;
    .end local v7    # "json":Lorg/json/JSONObject;
    .end local v12    # "timestamp":J
    :cond_2
    :goto_0
    :try_start_3
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/support/ARFLogger;->isLogI()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 1087
    const-string/jumbo v14, "responseContent--->>>"

    invoke-static {v14}, Lcom/alibaba/alimei/restfulapi/support/ARFLogger;->i(Ljava/lang/String;)I

    .line 1088
    invoke-static {v9}, Lcom/alibaba/alimei/restfulapi/support/ARFLogger;->i(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1099
    :cond_3
    return-void

    .line 1078
    :catch_1
    move-exception v3

    .line 1079
    .local v3, "e":Lorg/json/JSONException;
    :try_start_4
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_4
    .catch Lorg/apache/http/ParseException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    .line 1081
    .end local v3    # "e":Lorg/json/JSONException;
    .end local v9    # "responseContent":Ljava/lang/String;
    :catch_2
    move-exception v3

    .line 1082
    .local v3, "e":Lorg/apache/http/ParseException;
    :try_start_5
    new-instance v14, Lcom/alibaba/alimei/restfulapi/exception/NetworkException;

    invoke-direct {v14, v3}, Lcom/alibaba/alimei/restfulapi/exception/NetworkException;-><init>(Ljava/lang/Throwable;)V

    throw v14

    .line 1083
    .end local v3    # "e":Lorg/apache/http/ParseException;
    :catch_3
    move-exception v3

    .line 1084
    .local v3, "e":Ljava/io/IOException;
    new-instance v14, Lcom/alibaba/alimei/restfulapi/exception/NetworkException;

    invoke-direct {v14, v3}, Lcom/alibaba/alimei/restfulapi/exception/NetworkException;-><init>(Ljava/lang/Throwable;)V

    throw v14

    .line 1093
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "entity":Lorg/apache/http/HttpEntity;
    :cond_4
    new-instance v14, Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    invoke-interface {v11}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-direct {v14, v10, v15, v0}, Lcom/alibaba/alimei/restfulapi/exception/ServiceException;-><init>(ILjava/lang/String;Z)V

    throw v14
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
.end method

.method private isRedo()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 160
    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->redoCounter:Ljava/util/concurrent/atomic/AtomicInteger;

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

    .line 955
    if-eqz p1, :cond_1

    const-string/jumbo v2, "resultCode"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 956
    const-string/jumbo v2, "resultCode"

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 957
    .local v1, "resultCode":I
    if-ne v1, v3, :cond_0

    .line 958
    const-string/jumbo v2, "resultCode"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 959
    .local v0, "codeStr":Ljava/lang/String;
    const-string/jumbo v2, "RequestSignCheckFail"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 960
    const-string/jumbo v2, "\u7b7e\u540d\u5931\u8d25"

    invoke-static {v2}, Lcom/alibaba/alimei/restfulapi/support/ARFLogger;->e(Ljava/lang/String;)I

    .line 961
    new-instance v2, Lcom/alibaba/alimei/restfulapi/exception/SignCheckException;

    invoke-direct {v2}, Lcom/alibaba/alimei/restfulapi/exception/SignCheckException;-><init>()V

    throw v2

    .line 964
    .end local v0    # "codeStr":Ljava/lang/String;
    :cond_0
    const/16 v2, 0x4a6

    if-ne v1, v2, :cond_1

    .line 966
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u672c\u5730\u65f6\u95f4\u548c\u670d\u52a1\u5668\u65f6\u95f4\u4e0d\u4e00\u81f4\uff0c\u51c6\u5907\u548c\u670d\u52a1\u5668\u6821\u65f6, \u5f53\u524dsTimestampDiff \uff1d "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v4, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->sTimestampDiff:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/alimei/restfulapi/support/ARFLogger;->e(Ljava/lang/String;)I

    .line 968
    new-instance v2, Lcom/alibaba/alimei/restfulapi/exception/TimestampOutoftimeException;

    invoke-direct {v2}, Lcom/alibaba/alimei/restfulapi/exception/TimestampOutoftimeException;-><init>()V

    throw v2

    .line 972
    .end local v1    # "resultCode":I
    :cond_1
    return-void
.end method

.method private releaseHttpConnection()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 708
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v2, :cond_0

    .line 709
    iget-object v2, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v2}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 714
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->clientFactory:Lcom/alibaba/alimei/restfulapi/spi/http/HttpClientFactory;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->clientFactory:Lcom/alibaba/alimei/restfulapi/spi/http/HttpClientFactory;

    invoke-interface {v2}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpClientFactory;->isAutoShutDownAfterConnectionExecute()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 716
    :try_start_1
    iget-object v2, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->httpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    .line 717
    .local v0, "mgr":Lorg/apache/http/conn/ClientConnectionManager;
    if-eqz v0, :cond_1

    .line 718
    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 724
    .end local v0    # "mgr":Lorg/apache/http/conn/ClientConnectionManager;
    :cond_1
    :goto_1
    return-void

    .line 711
    :catch_0
    move-exception v1

    .line 712
    .local v1, "tr":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 720
    .end local v1    # "tr":Ljava/lang/Throwable;
    :catch_1
    move-exception v1

    .line 721
    .restart local v1    # "tr":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method private resetTrafficLenth()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const-wide/16 v0, 0x0

    .line 702
    iput-wide v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->mUpstreamLength:J

    .line 703
    iput-wide v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->mDownstreamLength:J

    .line 704
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->isAborted:Z

    .line 171
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->mRequestTask:Lcom/alibaba/alimei/restfulapi/spi/http/InnerHttpRequestTask;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->mRequestTask:Lcom/alibaba/alimei/restfulapi/spi/http/InnerHttpRequestTask;

    invoke-virtual {v0}, Lcom/alibaba/alimei/restfulapi/spi/http/InnerHttpRequestTask;->cancel()V

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    .line 178
    :cond_1
    return-void
.end method

.method public doGet(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
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
    .line 241
    .local p2, "_callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<TT;>;"
    iget-object v4, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->httpClient:Lorg/apache/http/client/HttpClient;

    if-nez v4, :cond_0

    .line 242
    iget-object v4, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->mOpenApiMethods:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->mOpenApiMethods:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    iget v4, v4, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;->domainType:I

    const/16 v5, 0x7d0

    if-ne v4, v5, :cond_3

    .line 243
    iget-object v4, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->clientFactory:Lcom/alibaba/alimei/restfulapi/spi/http/HttpClientFactory;

    iget-object v5, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->mOpenApiMethods:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    invoke-interface {v4, v5}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpClientFactory;->newHttpClientForAttachment(Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;)Lorg/apache/http/client/HttpClient;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->httpClient:Lorg/apache/http/client/HttpClient;

    .line 248
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->mServiceRequest:Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;

    .line 249
    const-string/jumbo v4, "GET"

    iput-object v4, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->method:Ljava/lang/String;

    .line 251
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->handleServiceRequestBeforeRequest(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;)V

    .line 252
    move-object v0, p2

    .line 254
    .local v0, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<TT;>;"
    new-instance v4, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$2;

    invoke-direct {v4, p0, p1, p2}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$2;-><init>(Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)V

    iput-object v4, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->mRedoTask:Lcom/alibaba/alimei/restfulapi/spi/http/RedoTask;

    .line 264
    new-instance v3, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$GeneralServiceTicket;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$GeneralServiceTicket;-><init>(Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$1;)V

    .line 269
    .local v3, "ticket":Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    :try_start_0
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->getHttpRequestBuilder()Lcom/alibaba/alimei/restfulapi/spi/HttpRequestBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->mAccountName:Ljava/lang/String;

    iget-object v6, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->clientFactory:Lcom/alibaba/alimei/restfulapi/spi/http/HttpClientFactory;

    iget-object v7, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->mOpenApiMethods:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    iget-object v8, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->mServiceRequest:Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;

    invoke-interface {v4, v5, v6, v7, v8}, Lcom/alibaba/alimei/restfulapi/spi/HttpRequestBuilder;->buildHttpGet(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/spi/http/HttpClientFactory;Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v2

    .line 270
    .local v2, "httpGet":Lorg/apache/http/client/methods/HttpGet;
    iget-object v4, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->mServiceRequest:Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;

    invoke-virtual {v4}, Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;->getAccessToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 271
    const-string/jumbo v4, "Cookie"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "token="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->mServiceRequest:Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;

    invoke-virtual {v6}, Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;->getAccessToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    :cond_1
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getConfiguration()Lcom/alibaba/alimei/restfulapi/ApiConfiguration;

    move-result-object v4

    invoke-interface {v4}, Lcom/alibaba/alimei/restfulapi/ApiConfiguration;->getDevEnvironment()I

    move-result v4

    sget v5, Lcom/alibaba/alimei/restfulapi/constant/Constant;->DEV_DAILY:I

    if-ne v4, v5, :cond_2

    .line 275
    iget-object v4, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->mServiceRequest:Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;

    invoke-virtual {v4}, Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;->getAccessToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 277
    const-string/jumbo v4, "Cookie"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "ds_daily="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->mServiceRequest:Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;

    invoke-virtual {v6}, Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;->getAccessToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    :cond_2
    iput-object v2, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->request:Lorg/apache/http/client/methods/HttpUriRequest;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    iget-object v4, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->httpClient:Lorg/apache/http/client/HttpClient;

    invoke-direct {p0, v4, v0}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->executeHttpRequest(Lorg/apache/http/client/HttpClient;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)V

    .line 296
    .end local v2    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    :goto_1
    return-object v3

    .line 245
    .end local v0    # "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<TT;>;"
    .end local v3    # "ticket":Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    :cond_3
    iget-object v4, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->clientFactory:Lcom/alibaba/alimei/restfulapi/spi/http/HttpClientFactory;

    iget-object v5, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->mOpenApiMethods:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    invoke-interface {v4, v5}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpClientFactory;->newHttpClientForGet(Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;)Lorg/apache/http/client/HttpClient;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->httpClient:Lorg/apache/http/client/HttpClient;

    goto/16 :goto_0

    .line 281
    .restart local v0    # "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<TT;>;"
    .restart local v3    # "ticket":Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    :catch_0
    move-exception v1

    .line 283
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v4, Lcom/alibaba/alimei/restfulapi/exception/NetworkException;

    invoke-direct {v4, v1}, Lcom/alibaba/alimei/restfulapi/exception/NetworkException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v0, v4}, Lcom/alibaba/alimei/restfulapi/service/RpcCallback;->onNetworkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)V

    goto :goto_1
.end method

.method public doGetChunked(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;JJ)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 11
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
    .line 182
    .local p2, "_callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<TT;>;"
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->httpClient:Lorg/apache/http/client/HttpClient;

    if-nez v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->mOpenApiMethods:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->mOpenApiMethods:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    iget v0, v0, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;->domainType:I

    const/16 v1, 0xfa0

    if-ne v0, v1, :cond_2

    .line 184
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->clientFactory:Lcom/alibaba/alimei/restfulapi/spi/http/HttpClientFactory;

    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->mOpenApiMethods:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    invoke-interface {v0, v1}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpClientFactory;->newHttpClientForAttachment(Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;)Lorg/apache/http/client/HttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->httpClient:Lorg/apache/http/client/HttpClient;

    .line 189
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->mServiceRequest:Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;

    .line 190
    const-string/jumbo v0, "GET"

    iput-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->method:Ljava/lang/String;

    .line 192
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->handleServiceRequestBeforeRequest(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;)V

    .line 193
    move-object v8, p2

    .line 195
    .local v8, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<TT;>;"
    new-instance v0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$1;-><init>(Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;JJ)V

    iput-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->mRedoTask:Lcom/alibaba/alimei/restfulapi/spi/http/RedoTask;

    .line 205
    new-instance v10, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$GeneralServiceTicket;

    const/4 v0, 0x0

    invoke-direct {v10, p0, v0}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$GeneralServiceTicket;-><init>(Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$1;)V

    .line 210
    .local v10, "ticket":Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    :try_start_0
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->getHttpRequestBuilder()Lcom/alibaba/alimei/restfulapi/spi/HttpRequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->mAccountName:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->clientFactory:Lcom/alibaba/alimei/restfulapi/spi/http/HttpClientFactory;

    iget-object v3, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->mOpenApiMethods:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    iget-object v4, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->mServiceRequest:Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/restfulapi/spi/HttpRequestBuilder;->buildHttpGet(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/spi/http/HttpClientFactory;Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 211
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    const-string/jumbo v1, "Range"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "bytes="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide/16 v4, 0x1

    sub-long v4, p5, v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    const-string/jumbo v1, "Cookie"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "token="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->mServiceRequest:Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;

    invoke-virtual {v3}, Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->mOpenApiMethods:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->mOpenApiMethods:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    iget v0, v0, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;->domainType:I

    const/16 v1, 0xfa0

    if-ne v0, v1, :cond_1

    .line 215
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    const-string/jumbo v1, "deviceid"

    invoke-static {}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getConfiguration()Lcom/alibaba/alimei/restfulapi/ApiConfiguration;

    move-result-object v2

    invoke-interface {v2}, Lcom/alibaba/alimei/restfulapi/ApiConfiguration;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getConfiguration()Lcom/alibaba/alimei/restfulapi/ApiConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/alimei/restfulapi/ApiConfiguration;->getDevEnvironment()I

    move-result v0

    sget v1, Lcom/alibaba/alimei/restfulapi/constant/Constant;->DEV_DAILY:I

    if-ne v0, v1, :cond_1

    .line 218
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    const-string/jumbo v1, "Cookie"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ds_daily="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->mServiceRequest:Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;

    invoke-virtual {v3}, Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->httpClient:Lorg/apache/http/client/HttpClient;

    invoke-direct {p0, v0, v8}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->executeHttpRequest(Lorg/apache/http/client/HttpClient;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)V

    .line 236
    :goto_1
    return-object v10

    .line 186
    .end local v8    # "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<TT;>;"
    .end local v10    # "ticket":Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    :cond_2
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->clientFactory:Lcom/alibaba/alimei/restfulapi/spi/http/HttpClientFactory;

    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->mOpenApiMethods:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    invoke-interface {v0, v1}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpClientFactory;->newHttpClientForGet(Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;)Lorg/apache/http/client/HttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->httpClient:Lorg/apache/http/client/HttpClient;

    goto/16 :goto_0

    .line 221
    .restart local v8    # "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<TT;>;"
    .restart local v10    # "ticket":Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    :catch_0
    move-exception v9

    .line 223
    .local v9, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v0, Lcom/alibaba/alimei/restfulapi/exception/NetworkException;

    invoke-direct {v0, v9}, Lcom/alibaba/alimei/restfulapi/exception/NetworkException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v8, v0}, Lcom/alibaba/alimei/restfulapi/service/RpcCallback;->onNetworkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)V

    goto :goto_1
.end method

.method public doPost(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 6
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

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 345
    .local p2, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<TT;>;"
    new-instance v2, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$3;

    invoke-direct {v2, p0, p1, p2}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$3;-><init>(Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)V

    iput-object v2, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->mRedoTask:Lcom/alibaba/alimei/restfulapi/spi/http/RedoTask;

    .line 357
    :try_start_0
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->getHttpRequestBuilder()Lcom/alibaba/alimei/restfulapi/spi/HttpRequestBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->mAccountName:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->clientFactory:Lcom/alibaba/alimei/restfulapi/spi/http/HttpClientFactory;

    iget-object v5, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->mOpenApiMethods:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    invoke-interface {v2, v3, v4, v5, p1}, Lcom/alibaba/alimei/restfulapi/spi/HttpRequestBuilder;->buildHttpPost(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/spi/http/HttpClientFactory;Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v1

    .line 358
    .local v1, "httpRequest":Lorg/apache/http/client/methods/HttpUriRequest;
    invoke-direct {p0, p1, v1, p2}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->executePostRequest(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Lorg/apache/http/client/methods/HttpUriRequest;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 362
    .end local v1    # "httpRequest":Lorg/apache/http/client/methods/HttpUriRequest;
    :goto_0
    return-object v2

    .line 359
    :catch_0
    move-exception v0

    .line 360
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Lcom/alibaba/alimei/restfulapi/exception/NetworkException;

    invoke-direct {v2, v0}, Lcom/alibaba/alimei/restfulapi/exception/NetworkException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p2, v2}, Lcom/alibaba/alimei/restfulapi/service/RpcCallback;->onNetworkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)V

    .line 362
    new-instance v2, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$GeneralServiceTicket;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$GeneralServiceTicket;-><init>(Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$1;)V

    goto :goto_0
.end method

.method public doPostWebmailRequest(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 6
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

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 460
    .local p2, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<TT;>;"
    new-instance v2, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$7;

    invoke-direct {v2, p0, p1, p2}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$7;-><init>(Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)V

    iput-object v2, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->mRedoTask:Lcom/alibaba/alimei/restfulapi/spi/http/RedoTask;

    .line 472
    :try_start_0
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->getHttpRequestBuilder()Lcom/alibaba/alimei/restfulapi/spi/HttpRequestBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->mAccountName:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->clientFactory:Lcom/alibaba/alimei/restfulapi/spi/http/HttpClientFactory;

    iget-object v5, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->mOpenApiMethods:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    invoke-interface {v2, v3, v4, v5, p1}, Lcom/alibaba/alimei/restfulapi/spi/HttpRequestBuilder;->buildWebmailHttpPost(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/spi/http/HttpClientFactory;Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v1

    .line 473
    .local v1, "httpRequest":Lorg/apache/http/client/methods/HttpUriRequest;
    invoke-direct {p0, p1, v1, p2}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->executePostRequest(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Lorg/apache/http/client/methods/HttpUriRequest;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 477
    .end local v1    # "httpRequest":Lorg/apache/http/client/methods/HttpUriRequest;
    :goto_0
    return-object v2

    .line 474
    :catch_0
    move-exception v0

    .line 475
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Lcom/alibaba/alimei/restfulapi/exception/NetworkException;

    invoke-direct {v2, v0}, Lcom/alibaba/alimei/restfulapi/exception/NetworkException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p2, v2}, Lcom/alibaba/alimei/restfulapi/service/RpcCallback;->onNetworkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)V

    .line 477
    new-instance v2, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$GeneralServiceTicket;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$GeneralServiceTicket;-><init>(Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$1;)V

    goto :goto_0
.end method

.method public doPostWithAttachmentFile(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Ljava/util/Map;Lcom/alibaba/alimei/restfulapi/spi/http/entity/listener/OnProgressListener;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 9
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

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 405
    .local p2, "files":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/io/File;>;"
    .local p4, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<TT;>;"
    new-instance v0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$5;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$5;-><init>(Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Ljava/util/Map;Lcom/alibaba/alimei/restfulapi/spi/http/entity/listener/OnProgressListener;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)V

    iput-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->mRedoTask:Lcom/alibaba/alimei/restfulapi/spi/http/RedoTask;

    .line 417
    :try_start_0
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->getHttpRequestBuilder()Lcom/alibaba/alimei/restfulapi/spi/HttpRequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->mAccountName:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->clientFactory:Lcom/alibaba/alimei/restfulapi/spi/http/HttpClientFactory;

    iget-object v3, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->mOpenApiMethods:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-interface/range {v0 .. v6}, Lcom/alibaba/alimei/restfulapi/spi/HttpRequestBuilder;->buildAttachmentHttpPost(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/spi/http/HttpClientFactory;Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Ljava/util/Map;Lcom/alibaba/alimei/restfulapi/spi/http/entity/listener/OnProgressListener;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v8

    .line 418
    .local v8, "httpRequest":Lorg/apache/http/client/methods/HttpUriRequest;
    invoke-direct {p0, p1, v8, p4}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->executePostRequest(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Lorg/apache/http/client/methods/HttpUriRequest;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 424
    .end local v8    # "httpRequest":Lorg/apache/http/client/methods/HttpUriRequest;
    :goto_0
    return-object v0

    .line 419
    :catch_0
    move-exception v7

    .line 420
    .local v7, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v0, Lcom/alibaba/alimei/restfulapi/exception/NetworkException;

    invoke-direct {v0, v7}, Lcom/alibaba/alimei/restfulapi/exception/NetworkException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p4, v0}, Lcom/alibaba/alimei/restfulapi/service/RpcCallback;->onNetworkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)V

    .line 424
    .end local v7    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_1
    new-instance v0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$GeneralServiceTicket;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$GeneralServiceTicket;-><init>(Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$1;)V

    goto :goto_0

    .line 421
    :catch_1
    move-exception v7

    .line 422
    .local v7, "e":Ljava/io/FileNotFoundException;
    new-instance v0, Lcom/alibaba/alimei/restfulapi/exception/NetworkException;

    invoke-direct {v0, v7}, Lcom/alibaba/alimei/restfulapi/exception/NetworkException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p4, v0}, Lcom/alibaba/alimei/restfulapi/service/RpcCallback;->onNetworkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)V

    goto :goto_1
.end method

.method public doPostWithFile(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Ljava/util/Map;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 8
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

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 374
    .local p2, "files":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/spi/FileWrapper;>;"
    .local p3, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<TT;>;"
    new-instance v0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$4;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$4;-><init>(Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Ljava/util/Map;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)V

    iput-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->mRedoTask:Lcom/alibaba/alimei/restfulapi/spi/http/RedoTask;

    .line 386
    :try_start_0
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->getHttpRequestBuilder()Lcom/alibaba/alimei/restfulapi/spi/HttpRequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->mAccountName:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->clientFactory:Lcom/alibaba/alimei/restfulapi/spi/http/HttpClientFactory;

    iget-object v3, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->mOpenApiMethods:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    move-object v4, p1

    move-object v5, p2

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/alimei/restfulapi/spi/HttpRequestBuilder;->buildMultipartHttpPost(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/spi/http/HttpClientFactory;Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Ljava/util/Map;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v7

    .line 387
    .local v7, "httpRequest":Lorg/apache/http/client/methods/HttpUriRequest;
    invoke-direct {p0, p1, v7, p3}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->executePostRequest(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Lorg/apache/http/client/methods/HttpUriRequest;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 393
    .end local v7    # "httpRequest":Lorg/apache/http/client/methods/HttpUriRequest;
    :goto_0
    return-object v0

    .line 388
    :catch_0
    move-exception v6

    .line 389
    .local v6, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v0, Lcom/alibaba/alimei/restfulapi/exception/NetworkException;

    invoke-direct {v0, v6}, Lcom/alibaba/alimei/restfulapi/exception/NetworkException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p3, v0}, Lcom/alibaba/alimei/restfulapi/service/RpcCallback;->onNetworkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)V

    .line 393
    .end local v6    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_1
    new-instance v0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$GeneralServiceTicket;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$GeneralServiceTicket;-><init>(Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$1;)V

    goto :goto_0

    .line 390
    :catch_1
    move-exception v6

    .line 391
    .local v6, "e":Ljava/io/FileNotFoundException;
    new-instance v0, Lcom/alibaba/alimei/restfulapi/exception/NetworkException;

    invoke-direct {v0, v6}, Lcom/alibaba/alimei/restfulapi/exception/NetworkException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p3, v0}, Lcom/alibaba/alimei/restfulapi/service/RpcCallback;->onNetworkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)V

    goto :goto_1
.end method

.method public doPostWithFiles(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Ljava/util/Map;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 8
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

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 436
    .local p2, "files":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/spi/FileWrapper;>;"
    .local p3, "_callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<TT;>;"
    new-instance v0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$6;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$6;-><init>(Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Ljava/util/Map;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)V

    iput-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->mRedoTask:Lcom/alibaba/alimei/restfulapi/spi/http/RedoTask;

    .line 448
    :try_start_0
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->getHttpRequestBuilder()Lcom/alibaba/alimei/restfulapi/spi/HttpRequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->mAccountName:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->clientFactory:Lcom/alibaba/alimei/restfulapi/spi/http/HttpClientFactory;

    iget-object v3, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->mOpenApiMethods:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    move-object v4, p1

    move-object v5, p2

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/alimei/restfulapi/spi/HttpRequestBuilder;->buildFeedbackHttpPost(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/spi/http/HttpClientFactory;Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Ljava/util/Map;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v7

    .line 449
    .local v7, "httpRequest":Lorg/apache/http/client/methods/HttpUriRequest;
    invoke-direct {p0, p1, v7, p3}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->executePostRequest(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Lorg/apache/http/client/methods/HttpUriRequest;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 455
    .end local v7    # "httpRequest":Lorg/apache/http/client/methods/HttpUriRequest;
    :goto_0
    return-object v0

    .line 450
    :catch_0
    move-exception v6

    .line 451
    .local v6, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v0, Lcom/alibaba/alimei/restfulapi/exception/NetworkException;

    invoke-direct {v0, v6}, Lcom/alibaba/alimei/restfulapi/exception/NetworkException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p3, v0}, Lcom/alibaba/alimei/restfulapi/service/RpcCallback;->onNetworkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)V

    .line 455
    .end local v6    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_1
    new-instance v0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$GeneralServiceTicket;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$GeneralServiceTicket;-><init>(Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$1;)V

    goto :goto_0

    .line 452
    :catch_1
    move-exception v6

    .line 453
    .local v6, "e":Ljava/io/FileNotFoundException;
    new-instance v0, Lcom/alibaba/alimei/restfulapi/exception/NetworkException;

    invoke-direct {v0, v6}, Lcom/alibaba/alimei/restfulapi/exception/NetworkException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p3, v0}, Lcom/alibaba/alimei/restfulapi/service/RpcCallback;->onNetworkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)V

    goto :goto_1
.end method

.method protected getAccessToken()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 148
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getAuthProvider()Lcom/alibaba/alimei/restfulapi/auth/AuthProvider;

    move-result-object v0

    .line 149
    .local v0, "authProvider":Lcom/alibaba/alimei/restfulapi/auth/AuthProvider;
    if-eqz v0, :cond_0

    .line 150
    invoke-interface {v0}, Lcom/alibaba/alimei/restfulapi/auth/AuthProvider;->getAuthStore()Lcom/alibaba/alimei/restfulapi/auth/AuthStore;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->mAccountName:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/alibaba/alimei/restfulapi/auth/AuthStore;->getAccessToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 152
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getContentLenth()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1157
    const-string/jumbo v0, "GET"

    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->method:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1158
    iget-wide v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->mDownstreamLength:J

    .line 1162
    :goto_0
    return-wide v0

    .line 1159
    :cond_0
    const-string/jumbo v0, "POST"

    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->method:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1160
    iget-wide v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->mUpstreamLength:J

    goto :goto_0

    .line 1162
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method protected getHttpClientFactory()Lcom/alibaba/alimei/restfulapi/spi/http/HttpClientFactory;
    .locals 1

    .prologue
    .line 156
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getHttpClientFactory()Lcom/alibaba/alimei/restfulapi/spi/http/HttpClientFactory;

    move-result-object v0

    return-object v0
.end method

.method protected getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1167
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->method:Ljava/lang/String;

    return-object v0
.end method

.method protected getMp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1144
    const-string/jumbo v0, "httpClient"

    return-object v0
.end method

.method protected getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1149
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->mOpenApiMethods:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    if-eqz v0, :cond_0

    .line 1150
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->mOpenApiMethods:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    invoke-virtual {v0}, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;->getDefaultMethodName()Ljava/lang/String;

    move-result-object v0

    .line 1152
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getRequestParameters()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 491
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->requestParameters:Ljava/util/Map;

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->isAborted:Z

    return v0
.end method

.method protected readHttpResponseContent(Lorg/apache/http/HttpResponse;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Ljava/lang/Object;
    .locals 26
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/HttpResponse;",
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
    .line 731
    .local p2, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<TT;>;"
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/alibaba/alimei/restfulapi/support/TypeInfo;->getClassGenericType(Ljava/lang/Class;)Lcom/alibaba/alimei/restfulapi/support/TypeInfo;

    move-result-object v21

    .line 732
    .local v21, "typeInfo":Lcom/alibaba/alimei/restfulapi/support/TypeInfo;
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->getHttpResponseParser()Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;

    move-result-object v13

    .line 734
    .local v13, "parser":Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v20

    .line 735
    .local v20, "statusLine":Lorg/apache/http/StatusLine;
    invoke-interface/range {v20 .. v20}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v19

    .line 739
    .local v19, "statusCode":I
    const/16 v23, 0x1a5

    move/from16 v0, v23

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    const/16 v23, 0x1a6

    move/from16 v0, v23

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    const/16 v23, 0x191

    move/from16 v0, v23

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    const/16 v23, 0x1b0

    move/from16 v0, v23

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    const/16 v23, 0x1b1

    move/from16 v0, v23

    move/from16 v1, v19

    if-ne v0, v1, :cond_d

    .line 740
    :cond_0
    new-instance v15, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$9;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl$9;-><init>(Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;)V

    .line 770
    .local v15, "refreshTokenListener":Lcom/alibaba/alimei/restfulapi/RPCListener;, "Lcom/alibaba/alimei/restfulapi/RPCListener<Ljava/lang/String;>;"
    const/16 v23, 0x1a5

    move/from16 v0, v19

    move/from16 v1, v23

    if-ne v0, v1, :cond_5

    .line 771
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getAuthProvider()Lcom/alibaba/alimei/restfulapi/auth/AuthProvider;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Lcom/alibaba/alimei/restfulapi/auth/AuthProvider;->getAuthLifecycleListener()Lcom/alibaba/alimei/restfulapi/auth/AuthLifecycleListener;

    move-result-object v12

    .line 772
    .local v12, "listener":Lcom/alibaba/alimei/restfulapi/auth/AuthLifecycleListener;
    if-eqz v12, :cond_1

    .line 773
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->mOpenApiMethods:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    move-object/from16 v23, v0

    if-eqz v23, :cond_2

    .line 774
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->mOpenApiMethods:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;->domainType:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->mAccountName:Ljava/lang/String;

    move-object/from16 v24, v0

    move/from16 v0, v23

    move-object/from16 v1, v24

    invoke-interface {v12, v0, v1, v15}, Lcom/alibaba/alimei/restfulapi/auth/AuthLifecycleListener;->onAccessTokenInvalid(ILjava/lang/String;Lcom/alibaba/alimei/restfulapi/RPCListener;)V

    .line 779
    :cond_1
    :goto_0
    const/16 v23, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->mRefreshTokenStatus:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_3

    .line 780
    new-instance v23, Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    const-string/jumbo v24, "token\u975e\u6cd5"

    const/16 v25, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v19

    move-object/from16 v2, v24

    move/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/alimei/restfulapi/exception/ServiceException;-><init>(ILjava/lang/String;Z)V

    throw v23

    .line 776
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->mAccountName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v12, v0, v15}, Lcom/alibaba/alimei/restfulapi/auth/AuthLifecycleListener;->onAccessTokenInvalid(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/RPCListener;)V

    goto :goto_0

    .line 782
    :cond_3
    const/4 v14, 0x0

    .line 950
    .end local v12    # "listener":Lcom/alibaba/alimei/restfulapi/auth/AuthLifecycleListener;
    .end local v15    # "refreshTokenListener":Lcom/alibaba/alimei/restfulapi/RPCListener;, "Lcom/alibaba/alimei/restfulapi/RPCListener<Ljava/lang/String;>;"
    :cond_4
    :goto_1
    return-object v14

    .line 784
    .restart local v15    # "refreshTokenListener":Lcom/alibaba/alimei/restfulapi/RPCListener;, "Lcom/alibaba/alimei/restfulapi/RPCListener<Ljava/lang/String;>;"
    :cond_5
    const/16 v23, 0x1a6

    move/from16 v0, v19

    move/from16 v1, v23

    if-ne v0, v1, :cond_9

    .line 785
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getAuthProvider()Lcom/alibaba/alimei/restfulapi/auth/AuthProvider;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Lcom/alibaba/alimei/restfulapi/auth/AuthProvider;->getAuthLifecycleListener()Lcom/alibaba/alimei/restfulapi/auth/AuthLifecycleListener;

    move-result-object v12

    .line 786
    .restart local v12    # "listener":Lcom/alibaba/alimei/restfulapi/auth/AuthLifecycleListener;
    if-eqz v12, :cond_6

    .line 787
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->mOpenApiMethods:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    move-object/from16 v23, v0

    if-eqz v23, :cond_7

    .line 788
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->mOpenApiMethods:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;->domainType:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->mAccountName:Ljava/lang/String;

    move-object/from16 v24, v0

    move/from16 v0, v23

    move-object/from16 v1, v24

    invoke-interface {v12, v0, v1, v15}, Lcom/alibaba/alimei/restfulapi/auth/AuthLifecycleListener;->onAccessTokenExpired(ILjava/lang/String;Lcom/alibaba/alimei/restfulapi/RPCListener;)V

    .line 793
    :cond_6
    :goto_2
    const/16 v23, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->mRefreshTokenStatus:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_8

    .line 794
    new-instance v23, Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    const-string/jumbo v24, "token\u8fc7\u671f"

    const/16 v25, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v19

    move-object/from16 v2, v24

    move/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/alimei/restfulapi/exception/ServiceException;-><init>(ILjava/lang/String;Z)V

    throw v23

    .line 790
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->mAccountName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v12, v0, v15}, Lcom/alibaba/alimei/restfulapi/auth/AuthLifecycleListener;->onAccessTokenExpired(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/RPCListener;)V

    goto :goto_2

    .line 796
    :cond_8
    const/4 v14, 0x0

    goto :goto_1

    .line 798
    .end local v12    # "listener":Lcom/alibaba/alimei/restfulapi/auth/AuthLifecycleListener;
    :cond_9
    const/16 v23, 0x191

    move/from16 v0, v19

    move/from16 v1, v23

    if-eq v0, v1, :cond_a

    const/16 v23, 0x1b1

    move/from16 v0, v19

    move/from16 v1, v23

    if-eq v0, v1, :cond_a

    const/16 v23, 0x1b0

    move/from16 v0, v19

    move/from16 v1, v23

    if-ne v0, v1, :cond_d

    .line 799
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->mOpenApiMethods:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    move-object/from16 v23, v0

    if-eqz v23, :cond_d

    .line 800
    const/16 v23, 0x7d0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->mOpenApiMethods:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;->domainType:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_b

    const/16 v23, 0xfa0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->mOpenApiMethods:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;->domainType:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_d

    .line 801
    :cond_b
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getAuthProvider()Lcom/alibaba/alimei/restfulapi/auth/AuthProvider;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Lcom/alibaba/alimei/restfulapi/auth/AuthProvider;->getAuthLifecycleListener()Lcom/alibaba/alimei/restfulapi/auth/AuthLifecycleListener;

    move-result-object v12

    .line 802
    .restart local v12    # "listener":Lcom/alibaba/alimei/restfulapi/auth/AuthLifecycleListener;
    if-eqz v12, :cond_c

    .line 803
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->mOpenApiMethods:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;->domainType:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->mAccountName:Ljava/lang/String;

    move-object/from16 v24, v0

    move/from16 v0, v23

    move-object/from16 v1, v24

    invoke-interface {v12, v0, v1, v15}, Lcom/alibaba/alimei/restfulapi/auth/AuthLifecycleListener;->onAccessTokenInvalid(ILjava/lang/String;Lcom/alibaba/alimei/restfulapi/RPCListener;)V

    .line 805
    :cond_c
    new-instance v23, Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    const-string/jumbo v24, "token invalid"

    const/16 v25, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v19

    move-object/from16 v2, v24

    move/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/alimei/restfulapi/exception/ServiceException;-><init>(ILjava/lang/String;Z)V

    throw v23

    .line 813
    .end local v12    # "listener":Lcom/alibaba/alimei/restfulapi/auth/AuthLifecycleListener;
    .end local v15    # "refreshTokenListener":Lcom/alibaba/alimei/restfulapi/RPCListener;, "Lcom/alibaba/alimei/restfulapi/RPCListener<Ljava/lang/String;>;"
    :cond_d
    invoke-virtual {v13}, Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;->isHandleResponseIncludeStatus()Z

    move-result v23

    if-eqz v23, :cond_10

    .line 814
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->mDownstreamType:I

    .line 816
    sget-object v23, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->H_CONTENT_LENGTH:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v8

    .line 817
    .local v8, "header":Lorg/apache/http/Header;
    if-eqz v8, :cond_f

    .line 818
    invoke-interface {v8}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v22

    .line 820
    .local v22, "value":Ljava/lang/String;
    :try_start_0
    invoke-static/range {v22 .. v22}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->mDownstreamLength:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 835
    .end local v22    # "value":Ljava/lang/String;
    :cond_e
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->mServiceRequest:Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;->getRequestResultReference()Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v21

    invoke-virtual {v13, v0, v1, v2}, Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;->handleHttpResponseIncludeStatus(Lorg/apache/http/HttpResponse;Ljava/lang/Object;Lcom/alibaba/alimei/restfulapi/support/TypeInfo;)Ljava/lang/Object;

    move-result-object v14

    .line 836
    .local v14, "parserResult":Ljava/lang/Object;, "TT;"
    invoke-virtual {v13}, Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;->isReleaseHttpConnection()Z

    move-result v23

    if-eqz v23, :cond_4

    .line 837
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->releaseHttpConnection()V

    goto/16 :goto_1

    .line 821
    .end local v14    # "parserResult":Ljava/lang/Object;, "TT;"
    .restart local v22    # "value":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 823
    .local v7, "ex":Ljava/lang/NumberFormatException;
    invoke-virtual {v7}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_3

    .line 826
    .end local v7    # "ex":Ljava/lang/NumberFormatException;
    .end local v22    # "value":Ljava/lang/String;
    :cond_f
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    .line 827
    .local v6, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v6, :cond_e

    .line 828
    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v10

    .line 829
    .local v10, "length":J
    const-wide/16 v24, 0x0

    cmp-long v23, v10, v24

    if-lez v23, :cond_e

    .line 830
    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->mDownstreamLength:J

    goto :goto_3

    .line 842
    .end local v6    # "entity":Lorg/apache/http/HttpEntity;
    .end local v8    # "header":Lorg/apache/http/Header;
    .end local v10    # "length":J
    :cond_10
    const/16 v23, 0xc8

    move/from16 v0, v19

    move/from16 v1, v23

    if-ne v0, v1, :cond_18

    .line 844
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    .line 845
    .restart local v6    # "entity":Lorg/apache/http/HttpEntity;
    if-nez v6, :cond_11

    .line 846
    new-instance v23, Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    const/16 v24, 0x0

    const-string/jumbo v25, "\u670d\u52a1\u5668\u7aef\u8fd4\u56de\u7684\u5185\u5bb9\u65e0\u6548"

    invoke-direct/range {v23 .. v25}, Lcom/alibaba/alimei/restfulapi/exception/ServiceException;-><init>(ILjava/lang/String;)V

    throw v23

    .line 850
    :cond_11
    const/16 v17, 0x0

    .line 852
    .local v17, "responseContent":Ljava/lang/String;
    :try_start_1
    invoke-static {v6}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v16

    .line 853
    .local v16, "responseBytes":[B
    if-eqz v16, :cond_14

    .line 854
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->mDownstreamLength:J

    .line 855
    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v8

    .line 856
    .restart local v8    # "header":Lorg/apache/http/Header;
    const/4 v4, 0x0

    .line 857
    .local v4, "charset":Ljava/lang/String;
    if-eqz v8, :cond_12

    .line 858
    invoke-interface {v8}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 860
    :cond_12
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_13

    .line 861
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/support/Settings;->getDefaultCharset()Ljava/lang/String;

    move-result-object v4

    .line 863
    :cond_13
    new-instance v17, Ljava/lang/String;

    .end local v17    # "responseContent":Ljava/lang/String;
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Lorg/apache/http/ParseException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 870
    .end local v4    # "charset":Ljava/lang/String;
    .end local v8    # "header":Lorg/apache/http/Header;
    .restart local v17    # "responseContent":Ljava/lang/String;
    :cond_14
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/support/ARFLogger;->isLogI()Z

    move-result v23

    if-eqz v23, :cond_15

    .line 871
    const-string/jumbo v23, "responseContent--->>>"

    invoke-static/range {v23 .. v23}, Lcom/alibaba/alimei/restfulapi/support/ARFLogger;->i(Ljava/lang/String;)I

    .line 872
    invoke-static/range {v17 .. v17}, Lcom/alibaba/alimei/restfulapi/support/ARFLogger;->i(Ljava/lang/String;)I

    .line 877
    :cond_15
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_16

    .line 879
    :try_start_2
    new-instance v9, Lorg/json/JSONObject;

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 880
    .local v9, "jsonObj":Lorg/json/JSONObject;
    const-string/jumbo v23, "resultCode"

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_16

    .line 881
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->parseResultCode(Lorg/json/JSONObject;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3

    .line 889
    .end local v9    # "jsonObj":Lorg/json/JSONObject;
    :cond_16
    :goto_4
    const-class v23, Ljava/lang/String;

    invoke-virtual/range {v21 .. v21}, Lcom/alibaba/alimei/restfulapi/support/TypeInfo;->getRawType()Ljava/lang/Class;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v23

    if-eqz v23, :cond_17

    .line 890
    move-object/from16 v18, v17

    .line 894
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->releaseHttpConnection()V

    :goto_6
    move-object/from16 v14, v18

    .line 950
    goto/16 :goto_1

    .line 865
    .end local v16    # "responseBytes":[B
    .end local v17    # "responseContent":Ljava/lang/String;
    :catch_1
    move-exception v5

    .line 866
    .local v5, "e":Lorg/apache/http/ParseException;
    new-instance v23, Lcom/alibaba/alimei/restfulapi/exception/NetworkException;

    move-object/from16 v0, v23

    invoke-direct {v0, v5}, Lcom/alibaba/alimei/restfulapi/exception/NetworkException;-><init>(Ljava/lang/Throwable;)V

    throw v23

    .line 867
    .end local v5    # "e":Lorg/apache/http/ParseException;
    :catch_2
    move-exception v5

    .line 868
    .local v5, "e":Ljava/io/IOException;
    new-instance v23, Lcom/alibaba/alimei/restfulapi/exception/NetworkException;

    move-object/from16 v0, v23

    invoke-direct {v0, v5}, Lcom/alibaba/alimei/restfulapi/exception/NetworkException;-><init>(Ljava/lang/Throwable;)V

    throw v23

    .line 883
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v16    # "responseBytes":[B
    .restart local v17    # "responseContent":Ljava/lang/String;
    :catch_3
    move-exception v5

    .line 884
    .local v5, "e":Lorg/json/JSONException;
    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_4

    .line 892
    .end local v5    # "e":Lorg/json/JSONException;
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->mServiceRequest:Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;->getRequestResultReference()Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move-object/from16 v2, v21

    invoke-virtual {v13, v0, v1, v2}, Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;->handleHttpResponseAsText(Ljava/lang/String;Ljava/lang/Object;Lcom/alibaba/alimei/restfulapi/support/TypeInfo;)Ljava/lang/Object;

    move-result-object v18

    .local v18, "result":Ljava/lang/Object;, "TT;"
    goto :goto_5

    .line 895
    .end local v6    # "entity":Lorg/apache/http/HttpEntity;
    .end local v16    # "responseBytes":[B
    .end local v17    # "responseContent":Ljava/lang/String;
    .end local v18    # "result":Ljava/lang/Object;, "TT;"
    :cond_18
    const/16 v23, 0xce

    move/from16 v0, v19

    move/from16 v1, v23

    if-ne v0, v1, :cond_1f

    .line 896
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    .line 897
    .restart local v6    # "entity":Lorg/apache/http/HttpEntity;
    if-nez v6, :cond_19

    .line 898
    new-instance v23, Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    const/16 v24, 0x0

    const-string/jumbo v25, "\u670d\u52a1\u5668\u7aef\u8fd4\u56de\u7684\u5185\u5bb9\u65e0\u6548"

    invoke-direct/range {v23 .. v25}, Lcom/alibaba/alimei/restfulapi/exception/ServiceException;-><init>(ILjava/lang/String;)V

    throw v23

    .line 902
    :cond_19
    const/16 v17, 0x0

    .line 904
    .restart local v17    # "responseContent":Ljava/lang/String;
    :try_start_3
    invoke-static {v6}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v16

    .line 905
    .restart local v16    # "responseBytes":[B
    if-eqz v16, :cond_1c

    .line 906
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->mDownstreamLength:J

    .line 907
    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v8

    .line 908
    .restart local v8    # "header":Lorg/apache/http/Header;
    const/4 v4, 0x0

    .line 909
    .restart local v4    # "charset":Ljava/lang/String;
    if-eqz v8, :cond_1a

    .line 910
    invoke-interface {v8}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 912
    :cond_1a
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_1b

    .line 913
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/support/Settings;->getDefaultCharset()Ljava/lang/String;

    move-result-object v4

    .line 915
    :cond_1b
    new-instance v17, Ljava/lang/String;

    .end local v17    # "responseContent":Ljava/lang/String;
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_3
    .catch Lorg/apache/http/ParseException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 922
    .end local v4    # "charset":Ljava/lang/String;
    .end local v8    # "header":Lorg/apache/http/Header;
    .restart local v17    # "responseContent":Ljava/lang/String;
    :cond_1c
    const-string/jumbo v23, "responseContent--->>>"

    invoke-static/range {v23 .. v23}, Lcom/alibaba/alimei/restfulapi/support/ARFLogger;->i(Ljava/lang/String;)I

    .line 923
    invoke-static/range {v17 .. v17}, Lcom/alibaba/alimei/restfulapi/support/ARFLogger;->i(Ljava/lang/String;)I

    .line 925
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_1d

    .line 926
    const-string/jumbo v17, "{\"statusCode\": 206}"

    .line 939
    :goto_7
    const-class v23, Ljava/lang/String;

    invoke-virtual/range {v21 .. v21}, Lcom/alibaba/alimei/restfulapi/support/TypeInfo;->getRawType()Ljava/lang/Class;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v23

    if-eqz v23, :cond_1e

    .line 940
    move-object/from16 v18, v17

    .line 944
    :goto_8
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->releaseHttpConnection()V

    goto/16 :goto_6

    .line 917
    .end local v16    # "responseBytes":[B
    .end local v17    # "responseContent":Ljava/lang/String;
    :catch_4
    move-exception v5

    .line 918
    .local v5, "e":Lorg/apache/http/ParseException;
    new-instance v23, Lcom/alibaba/alimei/restfulapi/exception/NetworkException;

    move-object/from16 v0, v23

    invoke-direct {v0, v5}, Lcom/alibaba/alimei/restfulapi/exception/NetworkException;-><init>(Ljava/lang/Throwable;)V

    throw v23

    .line 919
    .end local v5    # "e":Lorg/apache/http/ParseException;
    :catch_5
    move-exception v5

    .line 920
    .local v5, "e":Ljava/io/IOException;
    new-instance v23, Lcom/alibaba/alimei/restfulapi/exception/NetworkException;

    move-object/from16 v0, v23

    invoke-direct {v0, v5}, Lcom/alibaba/alimei/restfulapi/exception/NetworkException;-><init>(Ljava/lang/Throwable;)V

    throw v23

    .line 931
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v16    # "responseBytes":[B
    .restart local v17    # "responseContent":Ljava/lang/String;
    :cond_1d
    :try_start_4
    new-instance v9, Lorg/json/JSONObject;

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 932
    .restart local v9    # "jsonObj":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->parseResultCode(Lorg/json/JSONObject;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_6

    goto :goto_7

    .line 933
    .end local v9    # "jsonObj":Lorg/json/JSONObject;
    :catch_6
    move-exception v5

    .line 934
    .local v5, "e":Lorg/json/JSONException;
    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_7

    .line 942
    .end local v5    # "e":Lorg/json/JSONException;
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->mServiceRequest:Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;->getRequestResultReference()Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move-object/from16 v2, v21

    invoke-virtual {v13, v0, v1, v2}, Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;->handleHttpResponseAsText(Ljava/lang/String;Ljava/lang/Object;Lcom/alibaba/alimei/restfulapi/support/TypeInfo;)Ljava/lang/Object;

    move-result-object v18

    .restart local v18    # "result":Ljava/lang/Object;, "TT;"
    goto :goto_8

    .line 947
    .end local v6    # "entity":Lorg/apache/http/HttpEntity;
    .end local v16    # "responseBytes":[B
    .end local v17    # "responseContent":Ljava/lang/String;
    .end local v18    # "result":Ljava/lang/Object;, "TT;"
    :cond_1f
    new-instance v23, Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    invoke-interface/range {v20 .. v20}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v19

    move-object/from16 v2, v24

    move/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/alimei/restfulapi/exception/ServiceException;-><init>(ILjava/lang/String;Z)V

    throw v23
.end method

.method public setHttpRequestBuilder(Lcom/alibaba/alimei/restfulapi/spi/HttpRequestBuilder;)V
    .locals 0
    .param p1, "builder"    # Lcom/alibaba/alimei/restfulapi/spi/HttpRequestBuilder;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->mHttpRequestBuilder:Lcom/alibaba/alimei/restfulapi/spi/HttpRequestBuilder;

    .line 139
    return-void
.end method

.method public setHttpResponseParser(Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;)V
    .locals 0
    .param p1, "parser"    # Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/spi/http/HttpServiceClientImpl;->mHttpResponseParser:Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;

    .line 145
    return-void
.end method
