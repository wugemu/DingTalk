.class public Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;
.super Lcom/alibaba/alimei/restfulapi/spi/BaseServiceClient;
.source "OKHttpServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl$GeneralServiceTicket;
    }
.end annotation


# static fields
.field private static final ERROR_MSG_MAX_DO:Ljava/lang/String; = "already max redo times"

.field private static final H_CONTENT_LENGTH:Ljava/lang/String; = "Content-Length"

.field private static final MAX_REDO:I = 0x1

.field private static final REFRESH_TOKEN_FAIL:I = 0x2

.field private static final REFRESH_TOKEN_INIT:I = 0x0

.field private static final REFRESH_TOKEN_SUCCESS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "OKHttpServiceImpl"

.field private static sDefaultHttpResponseParser:Lcom/alibaba/alimei/restfulapi/parser/TextHttpResponseParser;


# instance fields
.field private volatile isAborted:Z

.field private mAccountName:Ljava/lang/String;

.field private mDownstreamLength:J

.field private mDownstreamType:I

.field private mHttpResponseParser:Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;

.field private mIsAsynchronous:Z

.field private mIsAttachAuthInfo:Z

.field private mOKHttpFactory:Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpFactory;

.field private mOpenApiMethods:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

.field private mRedoCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mRedoTask:Lcom/alibaba/alimei/restfulapi/spi/http/RedoTask;

.field private mRefreshTokenStatus:I

.field private mRequest:Lknc;

.field private mServiceRequest:Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;

.field private mUpstreamLength:J

.field private sTimestampDiff:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 851
    const/4 v0, 0x0

    sput-object v0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->sDefaultHttpResponseParser:Lcom/alibaba/alimei/restfulapi/parser/TextHttpResponseParser;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;Z)V
    .locals 4
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "isAsynchronous"    # Z
    .param p3, "method"    # Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;
    .param p4, "isAttachAuthInfo"    # Z

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x0

    .line 155
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/spi/BaseServiceClient;-><init>()V

    .line 131
    iput-boolean v2, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->isAborted:Z

    .line 141
    iput v2, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->mRefreshTokenStatus:I

    .line 148
    iput v2, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->mDownstreamType:I

    .line 150
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->sTimestampDiff:J

    .line 156
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->mAccountName:Ljava/lang/String;

    .line 157
    iput-boolean p2, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->mIsAsynchronous:Z

    .line 158
    iput-object p3, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->mOpenApiMethods:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    .line 159
    iput-boolean p4, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->mIsAttachAuthInfo:Z

    .line 160
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->mRedoCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 161
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->getOKHttpFactory()Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->mOKHttpFactory:Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpFactory;

    .line 162
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->mDimensionMap:Ljava/util/HashMap;

    .line 163
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->mMeasureMap:Ljava/util/HashMap;

    .line 164
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->isRedo()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;Lknc;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;
    .param p1, "x1"    # Lknc;
    .param p2, "x2"    # Lcom/alibaba/alimei/restfulapi/service/RpcCallback;

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->executeWithBlockRequest(Lknc;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)V

    return-void
.end method

.method static synthetic access$300(Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;

    .prologue
    .line 63
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->mRefreshTokenStatus:I

    return v0
.end method

.method static synthetic access$302(Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;
    .param p1, "x1"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->mRefreshTokenStatus:I

    return p1
.end method

.method static synthetic access$400(Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;)Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->mServiceRequest:Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;

    return-object v0
.end method

.method static synthetic access$500(Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->mIsAsynchronous:Z

    return v0
.end method

.method static synthetic access$600(Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;)Lcom/alibaba/alimei/restfulapi/spi/http/RedoTask;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->mRedoTask:Lcom/alibaba/alimei/restfulapi/spi/http/RedoTask;

    return-object v0
.end method

.method static synthetic access$602(Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;Lcom/alibaba/alimei/restfulapi/spi/http/RedoTask;)Lcom/alibaba/alimei/restfulapi/spi/http/RedoTask;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;
    .param p1, "x1"    # Lcom/alibaba/alimei/restfulapi/spi/http/RedoTask;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->mRedoTask:Lcom/alibaba/alimei/restfulapi/spi/http/RedoTask;

    return-object p1
.end method

.method static synthetic access$700(Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->mAccountName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;Lkne;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;
    .param p1, "x1"    # Lkne;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->releaseHttpConnection(Lkne;)V

    return-void
.end method

.method private calculateRequestTrafficLength(Lknc;)J
    .locals 5
    .param p1, "request"    # Lknc;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const-wide/16 v2, 0x0

    .line 803
    if-eqz p1, :cond_0

    .line 804
    invoke-virtual {p1}, Lknc;->a()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "GET"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 815
    :cond_0
    :goto_0
    return-wide v2

    .line 806
    :cond_1
    invoke-virtual {p1}, Lknc;->a()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "POST"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 808
    :try_start_0
    invoke-virtual {p1}, Lknc;->b()Lknd;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lknc;->b()Lknd;

    move-result-object v1

    invoke-virtual {v1}, Lknd;->contentLength()J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    goto :goto_0

    .line 809
    :catch_0
    move-exception v0

    .line 810
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private executeNonBlockRequest(Lknc;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)V
    .locals 3
    .param p1, "request"    # Lknc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lknc;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<TT;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 479
    .local p2, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<TT;>;"
    new-instance v0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl$8;

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl$8;-><init>(Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;Lknc;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)V

    .line 486
    .local v0, "runnable":Ljava/lang/Runnable;
    sget-object v2, Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;->NORMAL:Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;

    invoke-static {v2}, Laif;->a(Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;)Laie;

    move-result-object v1

    .line 487
    .local v1, "thread":Laie;
    const-string/jumbo v2, "CMail okhttp execute async request"

    invoke-interface {v1, v2, v0}, Laie;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 488
    return-void
.end method

.method private executeRequest(Lknc;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)V
    .locals 1
    .param p1, "request"    # Lknc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lknc;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 461
    .local p2, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<TT;>;"
    iget-boolean v0, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->isAborted:Z

    if-eqz v0, :cond_0

    .line 470
    :goto_0
    return-void

    .line 465
    :cond_0
    iget-boolean v0, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->mIsAsynchronous:Z

    if-eqz v0, :cond_1

    .line 466
    invoke-direct {p0, p1, p2}, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->executeNonBlockRequest(Lknc;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)V

    goto :goto_0

    .line 468
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->executeWithBlockRequest(Lknc;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)V

    goto :goto_0
.end method

.method private executeWithBlockRequest(Lknc;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)V
    .locals 6
    .param p1, "request"    # Lknc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lknc;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<TT;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 497
    .local p2, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<TT;>;"
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->startStatics()V

    .line 498
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->getOKHttpFactory()Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpFactory;

    move-result-object v5

    invoke-interface {v5}, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpFactory;->getOKHttpClient()Lkna;

    move-result-object v3

    .line 500
    .local v3, "okHttpClient":Lkna;
    :try_start_0
    invoke-virtual {v3, p1}, Lkna;->a(Lknc;)Lkmi;

    move-result-object v5

    invoke-interface {v5}, Lkmi;->a()Lkne;

    move-result-object v4

    .line 501
    .local v4, "response":Lkne;
    invoke-direct {p0, v4, p2}, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->handleHttpResponseContent(Lkne;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 512
    .end local v4    # "response":Lkne;
    :goto_0
    return-void

    .line 502
    :catch_0
    move-exception v0

    .line 503
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 504
    if-eqz p2, :cond_0

    .line 505
    new-instance v5, Lcom/alibaba/alimei/restfulapi/exception/NetworkException;

    invoke-direct {v5, v0}, Lcom/alibaba/alimei/restfulapi/exception/NetworkException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p2, v5}, Lcom/alibaba/alimei/restfulapi/service/RpcCallback;->onNetworkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)V

    .line 507
    :cond_0
    const-string/jumbo v1, "1000"

    .line 508
    .local v1, "errCodeStr":Ljava/lang/String;
    invoke-static {v0}, Lcom/alibaba/alimei/restfulapi/utils/CommonUtils;->getErrorMsg(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    .line 509
    .local v2, "errMsg":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->setRpcError(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->commitStatics()V

    goto :goto_0
.end method

.method private getHttpResponseParser()Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;
    .locals 1

    .prologue
    .line 854
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->mHttpResponseParser:Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;

    if-nez v0, :cond_1

    .line 855
    sget-object v0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->sDefaultHttpResponseParser:Lcom/alibaba/alimei/restfulapi/parser/TextHttpResponseParser;

    if-nez v0, :cond_0

    .line 856
    new-instance v0, Lcom/alibaba/alimei/restfulapi/parser/TextHttpResponseParser;

    invoke-direct {v0}, Lcom/alibaba/alimei/restfulapi/parser/TextHttpResponseParser;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->sDefaultHttpResponseParser:Lcom/alibaba/alimei/restfulapi/parser/TextHttpResponseParser;

    .line 858
    :cond_0
    sget-object v0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->sDefaultHttpResponseParser:Lcom/alibaba/alimei/restfulapi/parser/TextHttpResponseParser;

    .line 860
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->mHttpResponseParser:Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;

    goto :goto_0
.end method

.method private getOKHttpFactory()Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpFactory;
    .locals 1

    .prologue
    .line 167
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getOkHttpFactory()Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpFactory;

    move-result-object v0

    return-object v0
.end method

.method private static getRequestBuilder()Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpRequestBuilder;
    .locals 1

    .prologue
    .line 865
    sget-object v0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/impl/DefaultOKHttpRequestBuilder;->defaultBuilder:Lcom/alibaba/alimei/restfulapi/spi/okhttp/impl/DefaultOKHttpRequestBuilder;

    return-object v0
.end method

.method private handleHttpResponseContent(Lkne;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)V
    .locals 9
    .param p1, "response"    # Lkne;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkne;",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<TT;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .local p2, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<TT;>;"
    const/4 v8, 0x1

    .line 521
    const/4 v4, 0x0

    .line 522
    .local v4, "mThrowable":Ljava/lang/Throwable;
    const/4 v3, 0x0

    .line 523
    .local v3, "httpResult":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x0

    .line 524
    .local v1, "errCodeStr":Ljava/lang/String;
    const/4 v2, 0x0

    .line 528
    .local v2, "errMsg":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Lkne;->a()Lknc;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->calculateRequestTrafficLength(Lknc;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->mUpstreamLength:J

    .line 529
    invoke-direct {p0, p1, p2}, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->readHttpResponseContent(Lkne;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Ljava/lang/Object;

    move-result-object v3

    .line 530
    iget v5, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->mRefreshTokenStatus:I
    :try_end_0
    .catch Lcom/alibaba/alimei/restfulapi/exception/ServiceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/alibaba/alimei/restfulapi/exception/NetworkException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/alibaba/alimei/restfulapi/exception/TimestampOutoftimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/alibaba/alimei/restfulapi/exception/SignCheckException; {:try_start_0 .. :try_end_0} :catch_3

    if-ne v5, v8, :cond_0

    .line 588
    .end local v3    # "httpResult":Ljava/lang/Object;, "TT;"
    :goto_0
    return-void

    .line 534
    :catch_0
    move-exception v0

    .line 535
    .local v0, "e":Lcom/alibaba/alimei/restfulapi/exception/ServiceException;
    const-string/jumbo v5, "OKHttpServiceImpl"

    invoke-static {v5, v0}, Lcom/alibaba/alimei/restfulapi/support/RFTraceUtils;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 537
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "1001"

    aput-object v7, v5, v6

    const-string/jumbo v6, ":"

    aput-object v6, v5, v8

    const/4 v6, 0x2

    .line 538
    invoke-virtual {v0}, Lcom/alibaba/alimei/restfulapi/exception/ServiceException;->getResultCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 537
    invoke-static {v5}, Lcom/alibaba/alimei/restfulapi/utils/StringUtils;->getAppendString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 539
    invoke-virtual {v0}, Lcom/alibaba/alimei/restfulapi/exception/ServiceException;->getResultMsg()Ljava/lang/String;

    move-result-object v2

    .line 541
    move-object v4, v0

    .line 542
    if-eqz p2, :cond_0

    .line 543
    invoke-interface {p2, v0}, Lcom/alibaba/alimei/restfulapi/service/RpcCallback;->onServiceException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)V

    .line 572
    .end local v0    # "e":Lcom/alibaba/alimei/restfulapi/exception/ServiceException;
    :cond_0
    :goto_1
    if-eqz v4, :cond_3

    .line 574
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->releaseHttpConnection(Lkne;)V

    .line 575
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/support/ARFLogger;->isLogI()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 576
    const-string/jumbo v5, "OKHttpServiceImpl"

    const-string/jumbo v6, "executeWithIOBlock error--->>>"

    invoke-static {v5, v6, v4}, Lcom/alibaba/alimei/restfulapi/support/ARFLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 578
    :cond_1
    invoke-virtual {p0, v1, v2}, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->setRpcError(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    :goto_2
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->commitStatics()V

    goto :goto_0

    .line 545
    :catch_1
    move-exception v0

    .line 546
    .local v0, "e":Lcom/alibaba/alimei/restfulapi/exception/NetworkException;
    if-eqz p2, :cond_2

    .line 547
    invoke-interface {p2, v0}, Lcom/alibaba/alimei/restfulapi/service/RpcCallback;->onNetworkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)V

    .line 549
    :cond_2
    move-object v4, v0

    .line 551
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->resetTrafficLenth()V

    .line 552
    const-string/jumbo v1, "1000"

    .line 553
    invoke-static {v0}, Lcom/alibaba/alimei/restfulapi/utils/CommonUtils;->getErrorMsg(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    .line 554
    const-string/jumbo v5, "OKHttpServiceImpl"

    invoke-static {v5, v0}, Lcom/alibaba/alimei/restfulapi/support/RFTraceUtils;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 555
    .end local v0    # "e":Lcom/alibaba/alimei/restfulapi/exception/NetworkException;
    :catch_2
    move-exception v0

    .line 556
    .local v0, "e":Lcom/alibaba/alimei/restfulapi/exception/TimestampOutoftimeException;
    const-string/jumbo v1, "1002"

    .line 557
    invoke-static {v0}, Lcom/alibaba/alimei/restfulapi/utils/CommonUtils;->getErrorMsg(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    .line 558
    const-string/jumbo v5, "OKHttpServiceImpl"

    invoke-static {v5, v0}, Lcom/alibaba/alimei/restfulapi/support/RFTraceUtils;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 559
    if-eqz p2, :cond_0

    .line 560
    new-instance v5, Lcom/alibaba/alimei/restfulapi/exception/NetworkException;

    invoke-direct {v5, v0}, Lcom/alibaba/alimei/restfulapi/exception/NetworkException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p2, v5}, Lcom/alibaba/alimei/restfulapi/service/RpcCallback;->onNetworkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)V

    goto :goto_1

    .line 562
    .end local v0    # "e":Lcom/alibaba/alimei/restfulapi/exception/TimestampOutoftimeException;
    :catch_3
    move-exception v0

    .line 564
    .local v0, "e":Lcom/alibaba/alimei/restfulapi/exception/SignCheckException;
    const-string/jumbo v1, "1003"

    .line 565
    invoke-static {v0}, Lcom/alibaba/alimei/restfulapi/utils/CommonUtils;->getErrorMsg(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    .line 566
    const-string/jumbo v5, "OKHttpServiceImpl"

    invoke-static {v5, v0}, Lcom/alibaba/alimei/restfulapi/support/RFTraceUtils;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 567
    if-eqz p2, :cond_0

    .line 568
    new-instance v5, Lcom/alibaba/alimei/restfulapi/exception/NetworkException;

    invoke-direct {v5, v0}, Lcom/alibaba/alimei/restfulapi/exception/NetworkException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p2, v5}, Lcom/alibaba/alimei/restfulapi/service/RpcCallback;->onNetworkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)V

    goto :goto_1

    .line 580
    .end local v0    # "e":Lcom/alibaba/alimei/restfulapi/exception/SignCheckException;
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->endNetStatics()V

    .line 581
    if-eqz p2, :cond_4

    .line 582
    invoke-interface {p2, v3}, Lcom/alibaba/alimei/restfulapi/service/RpcCallback;->onSuccess(Ljava/lang/Object;)V

    .line 583
    invoke-interface {p2, v3}, Lcom/alibaba/alimei/restfulapi/service/RpcCallback;->onPostExecute(Ljava/lang/Object;)V

    .line 585
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->endHandleStatics()V

    goto :goto_2
.end method

.method private handleServiceRequestBeforeRequest(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;)V
    .locals 1
    .param p1, "request"    # Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;

    .prologue
    .line 873
    iget-boolean v0, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->mIsAttachAuthInfo:Z

    if-eqz v0, :cond_0

    .line 875
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 876
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;->setAccessToken(Ljava/lang/String;)V

    .line 879
    :cond_0
    return-void
.end method

.method private isRedo()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 869
    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->mRedoCounter:Ljava/util/concurrent/atomic/AtomicInteger;

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

    .line 831
    if-eqz p1, :cond_1

    const-string/jumbo v2, "resultCode"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 832
    const-string/jumbo v2, "resultCode"

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 833
    .local v1, "resultCode":I
    if-ne v1, v3, :cond_0

    .line 834
    const-string/jumbo v2, "resultCode"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 835
    .local v0, "codeStr":Ljava/lang/String;
    const-string/jumbo v2, "RequestSignCheckFail"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 836
    const-string/jumbo v2, "\u7b7e\u540d\u5931\u8d25"

    invoke-static {v2}, Lcom/alibaba/alimei/restfulapi/support/ARFLogger;->e(Ljava/lang/String;)I

    .line 837
    new-instance v2, Lcom/alibaba/alimei/restfulapi/exception/SignCheckException;

    invoke-direct {v2}, Lcom/alibaba/alimei/restfulapi/exception/SignCheckException;-><init>()V

    throw v2

    .line 840
    .end local v0    # "codeStr":Ljava/lang/String;
    :cond_0
    const/16 v2, 0x4a6

    if-ne v1, v2, :cond_1

    .line 842
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u672c\u5730\u65f6\u95f4\u548c\u670d\u52a1\u5668\u65f6\u95f4\u4e0d\u4e00\u81f4\uff0c\u51c6\u5907\u548c\u670d\u52a1\u5668\u6821\u65f6, \u5f53\u524dsTimestampDiff \uff1d "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->sTimestampDiff:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/alimei/restfulapi/support/ARFLogger;->e(Ljava/lang/String;)I

    .line 844
    new-instance v2, Lcom/alibaba/alimei/restfulapi/exception/TimestampOutoftimeException;

    invoke-direct {v2}, Lcom/alibaba/alimei/restfulapi/exception/TimestampOutoftimeException;-><init>()V

    throw v2

    .line 848
    .end local v1    # "resultCode":I
    :cond_1
    return-void
.end method

.method private readHttpResponseContent(Lkne;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Ljava/lang/Object;
    .locals 21
    .param p1, "response"    # Lkne;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkne;",
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
    .line 593
    .local p2, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<TT;>;"
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->getHttpResponseParser()Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;

    move-result-object v10

    .line 595
    .local v10, "parser":Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;
    invoke-virtual/range {p1 .. p1}, Lkne;->b()I

    move-result v16

    .line 599
    .local v16, "statusCode":I
    const/16 v18, 0x1a5

    move/from16 v0, v18

    move/from16 v1, v16

    if-eq v0, v1, :cond_0

    const/16 v18, 0x1a6

    move/from16 v0, v18

    move/from16 v1, v16

    if-eq v0, v1, :cond_0

    const/16 v18, 0x191

    move/from16 v0, v18

    move/from16 v1, v16

    if-eq v0, v1, :cond_0

    const/16 v18, 0x1b0

    move/from16 v0, v18

    move/from16 v1, v16

    if-eq v0, v1, :cond_0

    const/16 v18, 0x1b1

    move/from16 v0, v18

    move/from16 v1, v16

    if-ne v0, v1, :cond_d

    .line 600
    :cond_0
    new-instance v12, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl$9;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl$9;-><init>(Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;)V

    .line 630
    .local v12, "refreshTokenListener":Lcom/alibaba/alimei/restfulapi/RPCListener;, "Lcom/alibaba/alimei/restfulapi/RPCListener<Ljava/lang/String;>;"
    const/16 v18, 0x1a5

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 631
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getAuthProvider()Lcom/alibaba/alimei/restfulapi/auth/AuthProvider;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lcom/alibaba/alimei/restfulapi/auth/AuthProvider;->getAuthLifecycleListener()Lcom/alibaba/alimei/restfulapi/auth/AuthLifecycleListener;

    move-result-object v9

    .line 632
    .local v9, "listener":Lcom/alibaba/alimei/restfulapi/auth/AuthLifecycleListener;
    if-eqz v9, :cond_1

    .line 633
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->mOpenApiMethods:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2

    .line 634
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->mOpenApiMethods:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;->domainType:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->mAccountName:Ljava/lang/String;

    move-object/from16 v19, v0

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v9, v0, v1, v12}, Lcom/alibaba/alimei/restfulapi/auth/AuthLifecycleListener;->onAccessTokenInvalid(ILjava/lang/String;Lcom/alibaba/alimei/restfulapi/RPCListener;)V

    .line 639
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->mRefreshTokenStatus:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_3

    .line 640
    new-instance v18, Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    const-string/jumbo v19, "token\u975e\u6cd5"

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v16

    move-object/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/alimei/restfulapi/exception/ServiceException;-><init>(ILjava/lang/String;Z)V

    throw v18

    .line 636
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->mAccountName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v9, v0, v12}, Lcom/alibaba/alimei/restfulapi/auth/AuthLifecycleListener;->onAccessTokenInvalid(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/RPCListener;)V

    goto :goto_0

    .line 642
    :cond_3
    const/4 v11, 0x0

    .line 799
    .end local v9    # "listener":Lcom/alibaba/alimei/restfulapi/auth/AuthLifecycleListener;
    .end local v12    # "refreshTokenListener":Lcom/alibaba/alimei/restfulapi/RPCListener;, "Lcom/alibaba/alimei/restfulapi/RPCListener<Ljava/lang/String;>;"
    :cond_4
    :goto_1
    return-object v11

    .line 644
    .restart local v12    # "refreshTokenListener":Lcom/alibaba/alimei/restfulapi/RPCListener;, "Lcom/alibaba/alimei/restfulapi/RPCListener<Ljava/lang/String;>;"
    :cond_5
    const/16 v18, 0x1a6

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    .line 645
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getAuthProvider()Lcom/alibaba/alimei/restfulapi/auth/AuthProvider;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lcom/alibaba/alimei/restfulapi/auth/AuthProvider;->getAuthLifecycleListener()Lcom/alibaba/alimei/restfulapi/auth/AuthLifecycleListener;

    move-result-object v9

    .line 646
    .restart local v9    # "listener":Lcom/alibaba/alimei/restfulapi/auth/AuthLifecycleListener;
    if-eqz v9, :cond_6

    .line 647
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->mOpenApiMethods:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    move-object/from16 v18, v0

    if-eqz v18, :cond_7

    .line 648
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->mOpenApiMethods:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;->domainType:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->mAccountName:Ljava/lang/String;

    move-object/from16 v19, v0

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v9, v0, v1, v12}, Lcom/alibaba/alimei/restfulapi/auth/AuthLifecycleListener;->onAccessTokenExpired(ILjava/lang/String;Lcom/alibaba/alimei/restfulapi/RPCListener;)V

    .line 653
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->mRefreshTokenStatus:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_8

    .line 654
    new-instance v18, Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    const-string/jumbo v19, "token\u8fc7\u671f"

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v16

    move-object/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/alimei/restfulapi/exception/ServiceException;-><init>(ILjava/lang/String;Z)V

    throw v18

    .line 650
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->mAccountName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v9, v0, v12}, Lcom/alibaba/alimei/restfulapi/auth/AuthLifecycleListener;->onAccessTokenExpired(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/RPCListener;)V

    goto :goto_2

    .line 656
    :cond_8
    const/4 v11, 0x0

    goto :goto_1

    .line 658
    .end local v9    # "listener":Lcom/alibaba/alimei/restfulapi/auth/AuthLifecycleListener;
    :cond_9
    const/16 v18, 0x191

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_a

    const/16 v18, 0x1b1

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_a

    const/16 v18, 0x1b0

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_d

    .line 659
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->mOpenApiMethods:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    move-object/from16 v18, v0

    if-eqz v18, :cond_d

    .line 660
    const/16 v18, 0x7d0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->mOpenApiMethods:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;->domainType:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_b

    const/16 v18, 0xfa0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->mOpenApiMethods:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;->domainType:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_d

    .line 661
    :cond_b
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getAuthProvider()Lcom/alibaba/alimei/restfulapi/auth/AuthProvider;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lcom/alibaba/alimei/restfulapi/auth/AuthProvider;->getAuthLifecycleListener()Lcom/alibaba/alimei/restfulapi/auth/AuthLifecycleListener;

    move-result-object v9

    .line 662
    .restart local v9    # "listener":Lcom/alibaba/alimei/restfulapi/auth/AuthLifecycleListener;
    if-eqz v9, :cond_c

    .line 663
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->mOpenApiMethods:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;->domainType:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->mAccountName:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v9, v0, v1, v2}, Lcom/alibaba/alimei/restfulapi/auth/AuthLifecycleListener;->onAccessTokenInvalid(ILjava/lang/String;Lcom/alibaba/alimei/restfulapi/RPCListener;)V

    .line 666
    :cond_c
    new-instance v18, Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    const-string/jumbo v19, "token invalid"

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v16

    move-object/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/alimei/restfulapi/exception/ServiceException;-><init>(ILjava/lang/String;Z)V

    throw v18

    .line 673
    .end local v9    # "listener":Lcom/alibaba/alimei/restfulapi/auth/AuthLifecycleListener;
    .end local v12    # "refreshTokenListener":Lcom/alibaba/alimei/restfulapi/RPCListener;, "Lcom/alibaba/alimei/restfulapi/RPCListener<Ljava/lang/String;>;"
    :cond_d
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/alibaba/alimei/restfulapi/support/TypeInfo;->getClassGenericType(Ljava/lang/Class;)Lcom/alibaba/alimei/restfulapi/support/TypeInfo;

    move-result-object v17

    .line 676
    .local v17, "typeInfo":Lcom/alibaba/alimei/restfulapi/support/TypeInfo;
    invoke-virtual {v10}, Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;->isHandleResponseIncludeStatus()Z

    move-result v18

    if-eqz v18, :cond_f

    .line 677
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->mDownstreamType:I

    .line 680
    const-string/jumbo v18, "Content-Length"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lkne;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 681
    .local v5, "contentLength":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_e

    .line 683
    :try_start_0
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->mDownstreamLength:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 697
    :cond_e
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->mServiceRequest:Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;->getRequestResultReference()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-virtual {v10, v0, v1, v2}, Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;->handleHttpResponseIncludeStatus(Lkne;Ljava/lang/Object;Lcom/alibaba/alimei/restfulapi/support/TypeInfo;)Ljava/lang/Object;

    move-result-object v11

    .line 698
    .local v11, "parserResult":Ljava/lang/Object;, "TT;"
    invoke-virtual {v10}, Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;->isReleaseHttpConnection()Z

    move-result v18

    if-eqz v18, :cond_4

    .line 699
    invoke-direct/range {p0 .. p1}, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->releaseHttpConnection(Lkne;)V

    goto/16 :goto_1

    .line 684
    .end local v11    # "parserResult":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v7

    .line 686
    .local v7, "ex":Ljava/lang/NumberFormatException;
    invoke-virtual {v7}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_3

    .line 704
    .end local v5    # "contentLength":Ljava/lang/String;
    .end local v7    # "ex":Ljava/lang/NumberFormatException;
    :cond_f
    const/16 v18, 0xc8

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_15

    .line 705
    const/4 v13, 0x0

    .line 707
    .local v13, "responseBytes":[B
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lkne;->d()Lknf;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lknf;->d()[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v13

    .line 711
    :goto_4
    if-nez v13, :cond_10

    .line 712
    new-instance v18, Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    const/16 v19, 0x0

    const-string/jumbo v20, "\u670d\u52a1\u5668\u7aef\u8fd4\u56de\u7684\u5185\u5bb9\u65e0\u6548"

    invoke-direct/range {v18 .. v20}, Lcom/alibaba/alimei/restfulapi/exception/ServiceException;-><init>(ILjava/lang/String;)V

    throw v18

    .line 708
    :catch_1
    move-exception v6

    .line 709
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 715
    .end local v6    # "e":Ljava/io/IOException;
    :cond_10
    const/4 v14, 0x0

    .line 717
    .local v14, "responseContent":Ljava/lang/String;
    if-eqz v13, :cond_11

    .line 718
    :try_start_2
    array-length v0, v13

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->mDownstreamLength:J

    .line 719
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/support/Settings;->getDefaultCharset()Ljava/lang/String;

    move-result-object v4

    .line 720
    .local v4, "charset":Ljava/lang/String;
    new-instance v14, Ljava/lang/String;

    .end local v14    # "responseContent":Ljava/lang/String;
    invoke-direct {v14, v13, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 725
    .end local v4    # "charset":Ljava/lang/String;
    .restart local v14    # "responseContent":Ljava/lang/String;
    :cond_11
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/support/ARFLogger;->isLogI()Z

    move-result v18

    if-eqz v18, :cond_12

    .line 726
    const-string/jumbo v18, "OKHttpServiceImpl"

    const-string/jumbo v19, "responseContent--->>>"

    invoke-static/range {v18 .. v19}, Lcom/alibaba/alimei/restfulapi/support/ARFLogger;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    const-string/jumbo v18, "OKHttpServiceImpl"

    move-object/from16 v0, v18

    invoke-static {v0, v14}, Lcom/alibaba/alimei/restfulapi/support/ARFLogger;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    :cond_12
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_13

    .line 734
    :try_start_3
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v14}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 735
    .local v8, "jsonObj":Lorg/json/JSONObject;
    const-string/jumbo v18, "resultCode"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_13

    .line 736
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->parseResultCode(Lorg/json/JSONObject;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    .line 744
    .end local v8    # "jsonObj":Lorg/json/JSONObject;
    :cond_13
    :goto_5
    const-class v18, Ljava/lang/String;

    invoke-virtual/range {v17 .. v17}, Lcom/alibaba/alimei/restfulapi/support/TypeInfo;->getRawType()Ljava/lang/Class;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v18

    if-eqz v18, :cond_14

    .line 745
    move-object v15, v14

    .line 749
    :goto_6
    invoke-direct/range {p0 .. p1}, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->releaseHttpConnection(Lkne;)V

    :goto_7
    move-object v11, v15

    .line 799
    goto/16 :goto_1

    .line 722
    .end local v14    # "responseContent":Ljava/lang/String;
    :catch_2
    move-exception v6

    .line 723
    .restart local v6    # "e":Ljava/io/IOException;
    new-instance v18, Lcom/alibaba/alimei/restfulapi/exception/NetworkException;

    move-object/from16 v0, v18

    invoke-direct {v0, v6}, Lcom/alibaba/alimei/restfulapi/exception/NetworkException;-><init>(Ljava/lang/Throwable;)V

    throw v18

    .line 738
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v14    # "responseContent":Ljava/lang/String;
    :catch_3
    move-exception v6

    .line 739
    .local v6, "e":Lorg/json/JSONException;
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_5

    .line 747
    .end local v6    # "e":Lorg/json/JSONException;
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->mServiceRequest:Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;->getRequestResultReference()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v10, v14, v0, v1}, Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;->handleHttpResponseAsText(Ljava/lang/String;Ljava/lang/Object;Lcom/alibaba/alimei/restfulapi/support/TypeInfo;)Ljava/lang/Object;

    move-result-object v15

    .local v15, "result":Ljava/lang/Object;, "TT;"
    goto :goto_6

    .line 750
    .end local v13    # "responseBytes":[B
    .end local v14    # "responseContent":Ljava/lang/String;
    .end local v15    # "result":Ljava/lang/Object;, "TT;"
    :cond_15
    const/16 v18, 0xce

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_1a

    .line 751
    const/4 v13, 0x0

    .line 753
    .restart local v13    # "responseBytes":[B
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Lkne;->d()Lknf;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lknf;->d()[B
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v13

    .line 757
    :goto_8
    if-nez v13, :cond_16

    .line 758
    new-instance v18, Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    const/16 v19, 0x0

    const-string/jumbo v20, "\u670d\u52a1\u5668\u7aef\u8fd4\u56de\u7684\u5185\u5bb9\u65e0\u6548"

    invoke-direct/range {v18 .. v20}, Lcom/alibaba/alimei/restfulapi/exception/ServiceException;-><init>(ILjava/lang/String;)V

    throw v18

    .line 754
    :catch_4
    move-exception v6

    .line 755
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 761
    .end local v6    # "e":Ljava/io/IOException;
    :cond_16
    const/4 v14, 0x0

    .line 763
    .restart local v14    # "responseContent":Ljava/lang/String;
    if-eqz v13, :cond_17

    .line 764
    :try_start_5
    array-length v0, v13

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->mDownstreamLength:J

    .line 765
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/support/Settings;->getDefaultCharset()Ljava/lang/String;

    move-result-object v4

    .line 766
    .restart local v4    # "charset":Ljava/lang/String;
    new-instance v14, Ljava/lang/String;

    .end local v14    # "responseContent":Ljava/lang/String;
    invoke-direct {v14, v13, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 771
    .end local v4    # "charset":Ljava/lang/String;
    .restart local v14    # "responseContent":Ljava/lang/String;
    :cond_17
    const-string/jumbo v18, "OKHttpServiceImpl"

    const-string/jumbo v19, "responseContent--->>>"

    invoke-static/range {v18 .. v19}, Lcom/alibaba/alimei/restfulapi/support/ARFLogger;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    const-string/jumbo v18, "OKHttpServiceImpl"

    move-object/from16 v0, v18

    invoke-static {v0, v14}, Lcom/alibaba/alimei/restfulapi/support/ARFLogger;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_18

    .line 775
    const-string/jumbo v14, "{\"statusCode\": 206}"

    .line 788
    :goto_9
    const-class v18, Ljava/lang/String;

    invoke-virtual/range {v17 .. v17}, Lcom/alibaba/alimei/restfulapi/support/TypeInfo;->getRawType()Ljava/lang/Class;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v18

    if-eqz v18, :cond_19

    .line 789
    move-object v15, v14

    .line 793
    :goto_a
    invoke-direct/range {p0 .. p1}, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->releaseHttpConnection(Lkne;)V

    goto/16 :goto_7

    .line 768
    .end local v14    # "responseContent":Ljava/lang/String;
    :catch_5
    move-exception v6

    .line 769
    .restart local v6    # "e":Ljava/io/IOException;
    new-instance v18, Lcom/alibaba/alimei/restfulapi/exception/NetworkException;

    move-object/from16 v0, v18

    invoke-direct {v0, v6}, Lcom/alibaba/alimei/restfulapi/exception/NetworkException;-><init>(Ljava/lang/Throwable;)V

    throw v18

    .line 780
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v14    # "responseContent":Ljava/lang/String;
    :cond_18
    :try_start_6
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v14}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 781
    .restart local v8    # "jsonObj":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->parseResultCode(Lorg/json/JSONObject;)V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_9

    .line 782
    .end local v8    # "jsonObj":Lorg/json/JSONObject;
    :catch_6
    move-exception v6

    .line 783
    .local v6, "e":Lorg/json/JSONException;
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_9

    .line 791
    .end local v6    # "e":Lorg/json/JSONException;
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->mServiceRequest:Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;->getRequestResultReference()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v10, v14, v0, v1}, Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;->handleHttpResponseAsText(Ljava/lang/String;Ljava/lang/Object;Lcom/alibaba/alimei/restfulapi/support/TypeInfo;)Ljava/lang/Object;

    move-result-object v15

    .restart local v15    # "result":Ljava/lang/Object;, "TT;"
    goto :goto_a

    .line 796
    .end local v13    # "responseBytes":[B
    .end local v14    # "responseContent":Ljava/lang/String;
    .end local v15    # "result":Ljava/lang/Object;, "TT;"
    :cond_1a
    new-instance v18, Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    invoke-virtual/range {p1 .. p1}, Lkne;->c()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v16

    move-object/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/alimei/restfulapi/exception/ServiceException;-><init>(ILjava/lang/String;Z)V

    throw v18
.end method

.method private releaseHttpConnection(Lkne;)V
    .locals 0
    .param p1, "response"    # Lkne;

    .prologue
    .line 819
    if-eqz p1, :cond_0

    .line 820
    invoke-virtual {p1}, Lkne;->close()V

    .line 822
    :cond_0
    return-void
.end method

.method private resetTrafficLenth()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const-wide/16 v0, 0x0

    .line 825
    iput-wide v0, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->mUpstreamLength:J

    .line 826
    iput-wide v0, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->mDownstreamLength:J

    .line 827
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 178
    return-void
.end method

.method public doGet(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 8
    .param p1, "serviceRequest"    # Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;
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

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 192
    .local p2, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<TT;>;"
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/alimei/restfulapi/utils/NetworkUtils;->isNetWorkAvailable(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 193
    if-eqz p2, :cond_0

    .line 194
    new-instance v4, Lcom/alibaba/alimei/restfulapi/exception/NetworkException;

    const-string/jumbo v5, "Network not available"

    invoke-direct {v4, v5}, Lcom/alibaba/alimei/restfulapi/exception/NetworkException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v4}, Lcom/alibaba/alimei/restfulapi/service/RpcCallback;->onNetworkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)V

    .line 196
    :cond_0
    new-instance v2, Lcom/alibaba/alimei/restfulapi/spi/http/EmptyServiceTicket;

    invoke-direct {v2}, Lcom/alibaba/alimei/restfulapi/spi/http/EmptyServiceTicket;-><init>()V

    .line 235
    :goto_0
    return-object v2

    .line 198
    :cond_1
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->mServiceRequest:Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;

    .line 199
    new-instance v4, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl$1;

    invoke-direct {v4, p0, p1, p2}, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl$1;-><init>(Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)V

    iput-object v4, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->mRedoTask:Lcom/alibaba/alimei/restfulapi/spi/http/RedoTask;

    .line 212
    new-instance v2, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl$GeneralServiceTicket;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl$GeneralServiceTicket;-><init>(Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl$1;)V

    .line 215
    .local v2, "ticket":Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    :try_start_0
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->getRequestBuilder()Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpRequestBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->mAccountName:Ljava/lang/String;

    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->getOKHttpFactory()Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpFactory;

    move-result-object v6

    iget-object v7, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->mOpenApiMethods:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    invoke-interface {v4, v5, v6, v7, p1}, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpRequestBuilder;->buildHttpGetUrl(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpFactory;Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;)Ljava/lang/String;

    move-result-object v3

    .line 216
    .local v3, "url":Ljava/lang/String;
    new-instance v1, Lknc$a;

    invoke-direct {v1}, Lknc$a;-><init>()V

    .line 217
    .local v1, "reqBuilder":Lknc$a;
    invoke-virtual {v1, v3}, Lknc$a;->a(Ljava/lang/String;)Lknc$a;

    .line 219
    iget-object v4, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->mServiceRequest:Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;

    invoke-virtual {v4}, Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;->getAccessToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 220
    const-string/jumbo v4, "Cookie"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "token="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->mServiceRequest:Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;

    invoke-virtual {v6}, Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;->getAccessToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lknc$a;->b(Ljava/lang/String;Ljava/lang/String;)Lknc$a;

    .line 223
    :cond_2
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getConfiguration()Lcom/alibaba/alimei/restfulapi/ApiConfiguration;

    move-result-object v4

    invoke-interface {v4}, Lcom/alibaba/alimei/restfulapi/ApiConfiguration;->getDevEnvironment()I

    move-result v4

    sget v5, Lcom/alibaba/alimei/restfulapi/constant/Constant;->DEV_DAILY:I

    if-ne v4, v5, :cond_3

    .line 224
    iget-object v4, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->mServiceRequest:Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;

    invoke-virtual {v4}, Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;->getAccessToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 226
    const-string/jumbo v4, "Cookie"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "ds_daily="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->mServiceRequest:Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;

    invoke-virtual {v6}, Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;->getAccessToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lknc$a;->b(Ljava/lang/String;Ljava/lang/String;)Lknc$a;

    .line 230
    :cond_3
    invoke-virtual {v1}, Lknc$a;->a()Lknc;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->mRequest:Lknc;

    .line 231
    iget-object v4, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->mRequest:Lknc;

    invoke-direct {p0, v4, p2}, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->executeRequest(Lknc;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 232
    .end local v1    # "reqBuilder":Lknc$a;
    .end local v3    # "url":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 233
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v4, "OKHttpServiceImpl"

    invoke-static {v4, v0}, Lcom/alibaba/alimei/restfulapi/support/RFTraceUtils;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method public doGetChunked(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;JJ)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 15
    .param p1, "serviceRequest"    # Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;
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
    .line 240
    .local p2, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<TT;>;"
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/alimei/restfulapi/utils/NetworkUtils;->isNetWorkAvailable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 241
    if-eqz p2, :cond_0

    .line 242
    new-instance v2, Lcom/alibaba/alimei/restfulapi/exception/NetworkException;

    const-string/jumbo v3, "Network not available"

    invoke-direct {v2, v3}, Lcom/alibaba/alimei/restfulapi/exception/NetworkException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Lcom/alibaba/alimei/restfulapi/service/RpcCallback;->onNetworkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)V

    .line 244
    :cond_0
    new-instance v12, Lcom/alibaba/alimei/restfulapi/spi/http/EmptyServiceTicket;

    invoke-direct {v12}, Lcom/alibaba/alimei/restfulapi/spi/http/EmptyServiceTicket;-><init>()V

    .line 290
    :goto_0
    return-object v12

    .line 246
    :cond_1
    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->mServiceRequest:Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;

    .line 248
    new-instance v2, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl$2;

    move-object v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    invoke-direct/range {v2 .. v9}, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl$2;-><init>(Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;JJ)V

    iput-object v2, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->mRedoTask:Lcom/alibaba/alimei/restfulapi/spi/http/RedoTask;

    .line 259
    invoke-direct/range {p0 .. p1}, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->handleServiceRequestBeforeRequest(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;)V

    .line 261
    new-instance v12, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl$GeneralServiceTicket;

    const/4 v2, 0x0

    invoke-direct {v12, p0, v2}, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl$GeneralServiceTicket;-><init>(Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl$1;)V

    .line 264
    .local v12, "ticket":Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    :try_start_0
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->getRequestBuilder()Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpRequestBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->mAccountName:Ljava/lang/String;

    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->getOKHttpFactory()Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpFactory;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->mOpenApiMethods:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    iget-object v6, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->mServiceRequest:Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpRequestBuilder;->buildHttpGetUrl(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpFactory;Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;)Ljava/lang/String;

    move-result-object v13

    .line 265
    .local v13, "url":Ljava/lang/String;
    new-instance v11, Lknc$a;

    invoke-direct {v11}, Lknc$a;-><init>()V

    .line 266
    .local v11, "reqBuilder":Lknc$a;
    invoke-virtual {v11, v13}, Lknc$a;->a(Ljava/lang/String;)Lknc$a;

    .line 267
    const-string/jumbo v2, "Range"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "bytes="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, p3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-wide/16 v4, 0x1

    sub-long v4, p5, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Lknc$a;->b(Ljava/lang/String;Ljava/lang/String;)Lknc$a;

    .line 268
    const-string/jumbo v2, "Cookie"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "token="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->mServiceRequest:Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;

    invoke-virtual {v4}, Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;->getAccessToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Lknc$a;->b(Ljava/lang/String;Ljava/lang/String;)Lknc$a;

    .line 270
    iget-object v2, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->mOpenApiMethods:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->mOpenApiMethods:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    iget v2, v2, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;->domainType:I

    const/16 v3, 0xfa0

    if-ne v2, v3, :cond_2

    .line 271
    const-string/jumbo v2, "deviceid"

    invoke-static {}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getConfiguration()Lcom/alibaba/alimei/restfulapi/ApiConfiguration;

    move-result-object v3

    invoke-interface {v3}, Lcom/alibaba/alimei/restfulapi/ApiConfiguration;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Lknc$a;->b(Ljava/lang/String;Ljava/lang/String;)Lknc$a;

    .line 272
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getConfiguration()Lcom/alibaba/alimei/restfulapi/ApiConfiguration;

    move-result-object v2

    invoke-interface {v2}, Lcom/alibaba/alimei/restfulapi/ApiConfiguration;->getDevEnvironment()I

    move-result v2

    sget v3, Lcom/alibaba/alimei/restfulapi/constant/Constant;->DEV_DAILY:I

    if-ne v2, v3, :cond_2

    .line 274
    const-string/jumbo v2, "Cookie"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ds_daily="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->mServiceRequest:Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;

    invoke-virtual {v4}, Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;->getAccessToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Lknc$a;->b(Ljava/lang/String;Ljava/lang/String;)Lknc$a;

    .line 278
    :cond_2
    invoke-virtual {v11}, Lknc$a;->a()Lknc;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->mRequest:Lknc;

    .line 279
    iget-object v2, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->mRequest:Lknc;

    move-object/from16 v0, p2

    invoke-direct {p0, v2, v0}, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->executeRequest(Lknc;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 280
    .end local v11    # "reqBuilder":Lknc$a;
    .end local v13    # "url":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 282
    .local v10, "e":Ljava/io/UnsupportedEncodingException;
    if-eqz p2, :cond_3

    .line 283
    new-instance v2, Lcom/alibaba/alimei/restfulapi/exception/NetworkException;

    invoke-direct {v2, v10}, Lcom/alibaba/alimei/restfulapi/exception/NetworkException;-><init>(Ljava/lang/Throwable;)V

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Lcom/alibaba/alimei/restfulapi/service/RpcCallback;->onNetworkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)V

    .line 285
    :cond_3
    const-string/jumbo v2, "OKHttpServiceImpl"

    invoke-static {v2, v10}, Lcom/alibaba/alimei/restfulapi/support/RFTraceUtils;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method public doPost(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 6
    .param p1, "serviceRequest"    # Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;
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
    .line 295
    .local p2, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<TT;>;"
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/alimei/restfulapi/utils/NetworkUtils;->isNetWorkAvailable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 296
    if-eqz p2, :cond_0

    .line 297
    new-instance v2, Lcom/alibaba/alimei/restfulapi/exception/NetworkException;

    const-string/jumbo v3, "Network not available"

    invoke-direct {v2, v3}, Lcom/alibaba/alimei/restfulapi/exception/NetworkException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v2}, Lcom/alibaba/alimei/restfulapi/service/RpcCallback;->onNetworkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)V

    .line 299
    :cond_0
    new-instance v1, Lcom/alibaba/alimei/restfulapi/spi/http/EmptyServiceTicket;

    invoke-direct {v1}, Lcom/alibaba/alimei/restfulapi/spi/http/EmptyServiceTicket;-><init>()V

    .line 322
    :goto_0
    return-object v1

    .line 301
    :cond_1
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->mServiceRequest:Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;

    .line 303
    new-instance v2, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl$3;

    invoke-direct {v2, p0, p1, p2}, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl$3;-><init>(Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)V

    iput-object v2, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->mRedoTask:Lcom/alibaba/alimei/restfulapi/spi/http/RedoTask;

    .line 316
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->getRequestBuilder()Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpRequestBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->mAccountName:Ljava/lang/String;

    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->getOKHttpFactory()Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpFactory;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->mOpenApiMethods:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    invoke-interface {v2, v3, v4, v5, p1}, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpRequestBuilder;->buildHttpPost(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpFactory;Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;)Lknc;

    move-result-object v0

    .line 317
    .local v0, "request":Lknc;
    iput-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->mRequest:Lknc;

    .line 318
    invoke-direct {p0, v0, p2}, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->executeRequest(Lknc;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)V

    .line 320
    new-instance v1, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl$GeneralServiceTicket;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl$GeneralServiceTicket;-><init>(Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl$1;)V

    .line 322
    .local v1, "ticket":Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    goto :goto_0
.end method

.method public doPostWebmailRequest(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 7
    .param p1, "serviceRequest"    # Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;
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
    .line 427
    .local p2, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<TT;>;"
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/alimei/restfulapi/utils/NetworkUtils;->isNetWorkAvailable(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 428
    if-eqz p2, :cond_0

    .line 429
    new-instance v3, Lcom/alibaba/alimei/restfulapi/exception/NetworkException;

    const-string/jumbo v4, "Network not available"

    invoke-direct {v3, v4}, Lcom/alibaba/alimei/restfulapi/exception/NetworkException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v3}, Lcom/alibaba/alimei/restfulapi/service/RpcCallback;->onNetworkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)V

    .line 432
    :cond_0
    new-instance v2, Lcom/alibaba/alimei/restfulapi/spi/http/EmptyServiceTicket;

    invoke-direct {v2}, Lcom/alibaba/alimei/restfulapi/spi/http/EmptyServiceTicket;-><init>()V

    .line 457
    :goto_0
    return-object v2

    .line 434
    :cond_1
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->mServiceRequest:Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;

    .line 435
    new-instance v3, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl$7;

    invoke-direct {v3, p0, p1, p2}, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl$7;-><init>(Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)V

    iput-object v3, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->mRedoTask:Lcom/alibaba/alimei/restfulapi/spi/http/RedoTask;

    .line 447
    new-instance v2, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl$GeneralServiceTicket;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl$GeneralServiceTicket;-><init>(Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl$1;)V

    .line 450
    .local v2, "ticket":Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    :try_start_0
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->getRequestBuilder()Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpRequestBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->mAccountName:Ljava/lang/String;

    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->getOKHttpFactory()Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpFactory;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->mOpenApiMethods:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    invoke-interface {v3, v4, v5, v6, p1}, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpRequestBuilder;->buildWebmailHttpPost(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpFactory;Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;)Lknc;

    move-result-object v1

    .line 451
    .local v1, "request":Lknc;
    iput-object v1, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->mRequest:Lknc;

    .line 452
    invoke-direct {p0, v1, p2}, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->executeRequest(Lknc;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 453
    .end local v1    # "request":Lknc;
    :catch_0
    move-exception v0

    .line 454
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v3, "OKHttpServiceImpl"

    invoke-static {v3, v0}, Lcom/alibaba/alimei/restfulapi/support/RFTraceUtils;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public doPostWithAttachmentFile(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Ljava/util/Map;Lcom/alibaba/alimei/restfulapi/spi/http/entity/listener/OnProgressListener;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 10
    .param p1, "serviceRequest"    # Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;
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

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 360
    .local p2, "files":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/io/File;>;"
    .local p4, "_callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<TT;>;"
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/alimei/restfulapi/utils/NetworkUtils;->isNetWorkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 361
    if-eqz p4, :cond_0

    .line 362
    new-instance v0, Lcom/alibaba/alimei/restfulapi/exception/NetworkException;

    const-string/jumbo v1, "Network not available"

    invoke-direct {v0, v1}, Lcom/alibaba/alimei/restfulapi/exception/NetworkException;-><init>(Ljava/lang/String;)V

    invoke-interface {p4, v0}, Lcom/alibaba/alimei/restfulapi/service/RpcCallback;->onNetworkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)V

    .line 364
    :cond_0
    new-instance v9, Lcom/alibaba/alimei/restfulapi/spi/http/EmptyServiceTicket;

    invoke-direct {v9}, Lcom/alibaba/alimei/restfulapi/spi/http/EmptyServiceTicket;-><init>()V

    .line 389
    :goto_0
    return-object v9

    .line 366
    :cond_1
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->mServiceRequest:Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;

    .line 367
    new-instance v0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl$5;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl$5;-><init>(Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Ljava/util/Map;Lcom/alibaba/alimei/restfulapi/spi/http/entity/listener/OnProgressListener;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)V

    iput-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->mRedoTask:Lcom/alibaba/alimei/restfulapi/spi/http/RedoTask;

    .line 379
    new-instance v9, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl$GeneralServiceTicket;

    const/4 v0, 0x0

    invoke-direct {v9, p0, v0}, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl$GeneralServiceTicket;-><init>(Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl$1;)V

    .line 382
    .local v9, "ticket":Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    :try_start_0
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->getRequestBuilder()Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpRequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->mAccountName:Ljava/lang/String;

    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->getOKHttpFactory()Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpFactory;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->mOpenApiMethods:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-interface/range {v0 .. v6}, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpRequestBuilder;->buildHttpPostWithFile2(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpFactory;Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Ljava/util/Map;Lcom/alibaba/alimei/restfulapi/spi/http/entity/listener/OnProgressListener;)Lknc;

    move-result-object v8

    .line 383
    .local v8, "request":Lknc;
    iput-object v8, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->mRequest:Lknc;

    .line 384
    invoke-direct {p0, v8, p4}, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->executeRequest(Lknc;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 385
    .end local v8    # "request":Lknc;
    :catch_0
    move-exception v7

    .line 386
    .local v7, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v0, "OKHttpServiceImpl"

    invoke-static {v0, v7}, Lcom/alibaba/alimei/restfulapi/support/RFTraceUtils;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public doPostWithFile(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Ljava/util/Map;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 10
    .param p1, "serviceRequest"    # Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;
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

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .local p2, "files":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/spi/FileWrapper;>;"
    .local p3, "_callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<TT;>;"
    const/4 v1, 0x0

    .line 327
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/alimei/restfulapi/utils/NetworkUtils;->isNetWorkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 328
    if-eqz p3, :cond_0

    .line 329
    new-instance v0, Lcom/alibaba/alimei/restfulapi/exception/NetworkException;

    const-string/jumbo v1, "Network not available"

    invoke-direct {v0, v1}, Lcom/alibaba/alimei/restfulapi/exception/NetworkException;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, v0}, Lcom/alibaba/alimei/restfulapi/service/RpcCallback;->onNetworkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)V

    .line 331
    :cond_0
    new-instance v9, Lcom/alibaba/alimei/restfulapi/spi/http/EmptyServiceTicket;

    invoke-direct {v9}, Lcom/alibaba/alimei/restfulapi/spi/http/EmptyServiceTicket;-><init>()V

    .line 355
    :goto_0
    return-object v9

    .line 333
    :cond_1
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->mServiceRequest:Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;

    .line 334
    new-instance v0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl$4;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl$4;-><init>(Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Ljava/util/Map;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)V

    iput-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->mRedoTask:Lcom/alibaba/alimei/restfulapi/spi/http/RedoTask;

    .line 346
    new-instance v9, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl$GeneralServiceTicket;

    invoke-direct {v9, p0, v1}, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl$GeneralServiceTicket;-><init>(Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl$1;)V

    .line 349
    .local v9, "ticket":Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    :try_start_0
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->getRequestBuilder()Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpRequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->mAccountName:Ljava/lang/String;

    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->getOKHttpFactory()Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpFactory;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->mOpenApiMethods:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    const/4 v6, 0x0

    move-object v4, p1

    move-object v5, p2

    invoke-interface/range {v0 .. v6}, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpRequestBuilder;->buildHttpPostWithFile(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpFactory;Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Ljava/util/Map;Lcom/alibaba/alimei/restfulapi/spi/http/entity/listener/OnProgressListener;)Lknc;

    move-result-object v8

    .line 350
    .local v8, "request":Lknc;
    iput-object v8, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->mRequest:Lknc;

    .line 351
    invoke-direct {p0, v8, p3}, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->executeRequest(Lknc;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 352
    .end local v8    # "request":Lknc;
    :catch_0
    move-exception v7

    .line 353
    .local v7, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v0, "OKHttpServiceImpl"

    invoke-static {v0, v7}, Lcom/alibaba/alimei/restfulapi/support/RFTraceUtils;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public doPostWithFiles(Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Ljava/util/Map;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    .locals 10
    .param p1, "serviceRequest"    # Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;
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

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .local p2, "files":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/spi/FileWrapper;>;"
    .local p3, "_callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<TT;>;"
    const/4 v1, 0x0

    .line 394
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/alimei/restfulapi/utils/NetworkUtils;->isNetWorkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 395
    if-eqz p3, :cond_0

    .line 396
    new-instance v0, Lcom/alibaba/alimei/restfulapi/exception/NetworkException;

    const-string/jumbo v1, "Network not available"

    invoke-direct {v0, v1}, Lcom/alibaba/alimei/restfulapi/exception/NetworkException;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, v0}, Lcom/alibaba/alimei/restfulapi/service/RpcCallback;->onNetworkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)V

    .line 398
    :cond_0
    new-instance v9, Lcom/alibaba/alimei/restfulapi/spi/http/EmptyServiceTicket;

    invoke-direct {v9}, Lcom/alibaba/alimei/restfulapi/spi/http/EmptyServiceTicket;-><init>()V

    .line 422
    :goto_0
    return-object v9

    .line 400
    :cond_1
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->mServiceRequest:Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;

    .line 401
    new-instance v0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl$6;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl$6;-><init>(Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Ljava/util/Map;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)V

    iput-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->mRedoTask:Lcom/alibaba/alimei/restfulapi/spi/http/RedoTask;

    .line 413
    new-instance v9, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl$GeneralServiceTicket;

    invoke-direct {v9, p0, v1}, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl$GeneralServiceTicket;-><init>(Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl$1;)V

    .line 416
    .local v9, "ticket":Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
    :try_start_0
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->getRequestBuilder()Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpRequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->mAccountName:Ljava/lang/String;

    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->getOKHttpFactory()Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpFactory;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->mOpenApiMethods:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    const/4 v6, 0x0

    move-object v4, p1

    move-object v5, p2

    invoke-interface/range {v0 .. v6}, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpRequestBuilder;->buildHttpPostWithFile(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpFactory;Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;Ljava/util/Map;Lcom/alibaba/alimei/restfulapi/spi/http/entity/listener/OnProgressListener;)Lknc;

    move-result-object v8

    .line 417
    .local v8, "request":Lknc;
    iput-object v8, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->mRequest:Lknc;

    .line 418
    invoke-direct {p0, v8, p3}, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->executeRequest(Lknc;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 419
    .end local v8    # "request":Lknc;
    :catch_0
    move-exception v7

    .line 420
    .local v7, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v0, "OKHttpServiceImpl"

    invoke-static {v0, v7}, Lcom/alibaba/alimei/restfulapi/support/RFTraceUtils;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected getAccessToken()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 882
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getAuthProvider()Lcom/alibaba/alimei/restfulapi/auth/AuthProvider;

    move-result-object v0

    .line 883
    .local v0, "authProvider":Lcom/alibaba/alimei/restfulapi/auth/AuthProvider;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/alibaba/alimei/restfulapi/auth/AuthProvider;->getAuthStore()Lcom/alibaba/alimei/restfulapi/auth/AuthStore;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 884
    invoke-interface {v0}, Lcom/alibaba/alimei/restfulapi/auth/AuthProvider;->getAuthStore()Lcom/alibaba/alimei/restfulapi/auth/AuthStore;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->mAccountName:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/alibaba/alimei/restfulapi/auth/AuthStore;->getAccessToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 886
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
    .line 904
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->mRequest:Lknc;

    if-eqz v0, :cond_1

    .line 905
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->mRequest:Lknc;

    invoke-virtual {v0}, Lknc;->a()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "GET"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 906
    iget-wide v0, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->mDownstreamLength:J

    .line 912
    :goto_0
    return-wide v0

    .line 907
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->mRequest:Lknc;

    invoke-virtual {v0}, Lknc;->a()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "POST"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 908
    iget-wide v0, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->mUpstreamLength:J

    goto :goto_0

    .line 912
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method protected getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 917
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->mRequest:Lknc;

    if-eqz v0, :cond_0

    .line 918
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->mRequest:Lknc;

    invoke-virtual {v0}, Lknc;->a()Ljava/lang/String;

    move-result-object v0

    .line 920
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method protected getMp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 891
    const-string/jumbo v0, "OKHttp"

    return-object v0
.end method

.method protected getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 896
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->mOpenApiMethods:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    if-eqz v0, :cond_0

    .line 897
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->mOpenApiMethods:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    invoke-virtual {v0}, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;->getDefaultMethodName()Ljava/lang/String;

    move-result-object v0

    .line 899
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x0

    return v0
.end method

.method public setHttpRequestBuilder(Lcom/alibaba/alimei/restfulapi/spi/HttpRequestBuilder;)V
    .locals 0
    .param p1, "builder"    # Lcom/alibaba/alimei/restfulapi/spi/HttpRequestBuilder;

    .prologue
    .line 183
    return-void
.end method

.method public setHttpResponseParser(Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;)V
    .locals 0
    .param p1, "parser"    # Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->mHttpResponseParser:Lcom/alibaba/alimei/restfulapi/parser/HttpResponseParser;

    .line 188
    return-void
.end method
