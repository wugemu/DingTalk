.class public Lcom/alipay/android/phone/mrpc/core/HttpWorker;
.super Ljava/lang/Object;
.source "HttpWorker.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/alipay/android/phone/mrpc/core/Response;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HttpWorker"

.field private static final sHttpRequestRetryHandler:Lorg/apache/http/client/HttpRequestRetryHandler;


# instance fields
.field private etagCacheKey:Ljava/lang/String;

.field private hasEtagInResponse:Z

.field private hasIfNoneMatchInRequest:Z

.field protected mContext:Landroid/content/Context;

.field private mCookieManager:Landroid/webkit/CookieManager;

.field private mCookieStore:Lorg/apache/http/client/CookieStore;

.field private mHttpHost:Lorg/apache/http/HttpHost;

.field protected mHttpManager:Lcom/alipay/android/phone/mrpc/core/HttpManager;

.field private mHttpRequest:Lorg/apache/http/client/methods/HttpUriRequest;

.field private mLocalContext:Lorg/apache/http/protocol/HttpContext;

.field private mOperationType:Ljava/lang/String;

.field private mPostDataEntity:Lorg/apache/http/entity/AbstractHttpEntity;

.field protected mRequest:Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;

.field private mRetryTimes:I

.field private mTargetUrl:Ljava/net/URL;

.field mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    new-instance v0, Lcom/alipay/android/phone/mrpc/core/ZHttpRequestRetryHandler;

    invoke-direct {v0}, Lcom/alipay/android/phone/mrpc/core/ZHttpRequestRetryHandler;-><init>()V

    sput-object v0, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->sHttpRequestRetryHandler:Lorg/apache/http/client/HttpRequestRetryHandler;

    return-void
.end method

.method public constructor <init>(Lcom/alipay/android/phone/mrpc/core/HttpManager;Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;)V
    .locals 2
    .param p1, "httpManager"    # Lcom/alipay/android/phone/mrpc/core/HttpManager;
    .param p2, "request"    # Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;

    .prologue
    const/4 v1, 0x0

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v0}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->mLocalContext:Lorg/apache/http/protocol/HttpContext;

    .line 99
    new-instance v0, Lorg/apache/http/impl/client/BasicCookieStore;

    invoke-direct {v0}, Lorg/apache/http/impl/client/BasicCookieStore;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->mCookieStore:Lorg/apache/http/client/CookieStore;

    .line 129
    iput v1, p0, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->mRetryTimes:I

    .line 134
    iput-boolean v1, p0, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->hasIfNoneMatchInRequest:Z

    .line 139
    iput-boolean v1, p0, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->hasEtagInResponse:Z

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->etagCacheKey:Ljava/lang/String;

    .line 160
    iput-object p1, p0, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->mHttpManager:Lcom/alipay/android/phone/mrpc/core/HttpManager;

    .line 161
    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->mHttpManager:Lcom/alipay/android/phone/mrpc/core/HttpManager;

    iget-object v0, v0, Lcom/alipay/android/phone/mrpc/core/HttpManager;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->mContext:Landroid/content/Context;

    .line 162
    iput-object p2, p0, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->mRequest:Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;

    .line 163
    return-void
.end method

.method private abortRequest()V
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->mHttpRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->mHttpRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    .line 460
    :cond_0
    return-void
.end method

.method private addRequestHeaders()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 510
    invoke-virtual {p0}, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->getHeaders()Ljava/util/ArrayList;

    move-result-object v1

    .line 511
    .local v1, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/Header;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 512
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/Header;

    .line 513
    .local v0, "header":Lorg/apache/http/Header;
    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->getHttpUriRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v3

    invoke-interface {v3, v0}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Lorg/apache/http/Header;)V

    goto :goto_0

    .line 519
    .end local v0    # "header":Lorg/apache/http/Header;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->getHttpUriRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/android/phone/mrpc/core/AndroidHttpClient;->modifyRequestToAcceptGzipResponse(Lorg/apache/http/HttpRequest;)V

    .line 522
    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->getHttpUriRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/android/phone/mrpc/core/AndroidHttpClient;->modifyRequestToKeepAlive(Lorg/apache/http/HttpRequest;)V

    .line 525
    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->getHttpUriRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v3

    const-string/jumbo v4, "cookie"

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->getCookieManager()Landroid/webkit/CookieManager;

    move-result-object v5

    iget-object v6, p0, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->mRequest:Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;

    invoke-virtual {v6}, Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    return-void
.end method

.method private executeHttpClientRequest()Lorg/apache/http/HttpResponse;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 471
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "By Http/Https to request. operationType="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->getOperationType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " url="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->mHttpRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v4}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->getHttpClient()Lcom/alipay/android/phone/mrpc/core/AndroidHttpClient;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/android/phone/mrpc/core/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    .line 476
    .local v1, "httpParams":Lorg/apache/http/params/HttpParams;
    const-string/jumbo v3, "http.route.default-proxy"

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->getProxy()Lorg/apache/http/HttpHost;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 478
    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->getHttpHost()Lorg/apache/http/HttpHost;

    move-result-object v0

    .line 479
    .local v0, "httpHost":Lorg/apache/http/HttpHost;
    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->getTargetPort()I

    move-result v3

    const/16 v4, 0x50

    if-ne v3, v4, :cond_0

    .line 480
    new-instance v0, Lorg/apache/http/HttpHost;

    .end local v0    # "httpHost":Lorg/apache/http/HttpHost;
    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->getTargetURL()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;)V

    .line 483
    .restart local v0    # "httpHost":Lorg/apache/http/HttpHost;
    :cond_0
    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->getHttpClient()Lcom/alipay/android/phone/mrpc/core/AndroidHttpClient;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->mHttpRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    iget-object v5, p0, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->mLocalContext:Lorg/apache/http/protocol/HttpContext;

    invoke-virtual {v3, v0, v4, v5}, Lcom/alipay/android/phone/mrpc/core/AndroidHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 484
    .local v2, "httpResponse":Lorg/apache/http/HttpResponse;
    return-object v2
.end method

.method private executeRequest()Lorg/apache/http/HttpResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 467
    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->executeHttpClientRequest()Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method private getCookieManager()Landroid/webkit/CookieManager;
    .locals 1

    .prologue
    .line 813
    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->mCookieManager:Landroid/webkit/CookieManager;

    if-eqz v0, :cond_0

    .line 814
    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->mCookieManager:Landroid/webkit/CookieManager;

    .line 817
    :goto_0
    return-object v0

    .line 816
    :cond_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->mCookieManager:Landroid/webkit/CookieManager;

    .line 817
    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->mCookieManager:Landroid/webkit/CookieManager;

    goto :goto_0
.end method

.method private getHttpClient()Lcom/alipay/android/phone/mrpc/core/AndroidHttpClient;
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->mHttpManager:Lcom/alipay/android/phone/mrpc/core/HttpManager;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mrpc/core/HttpManager;->getHttpClient()Lcom/alipay/android/phone/mrpc/core/AndroidHttpClient;

    move-result-object v0

    return-object v0
.end method

.method private getHttpHost()Lorg/apache/http/HttpHost;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 537
    iget-object v1, p0, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->mHttpHost:Lorg/apache/http/HttpHost;

    if-eqz v1, :cond_0

    .line 538
    iget-object v1, p0, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->mHttpHost:Lorg/apache/http/HttpHost;

    .line 544
    :goto_0
    return-object v1

    .line 541
    :cond_0
    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->getTargetURL()Ljava/net/URL;

    move-result-object v0

    .line 542
    .local v0, "targetUrl":Ljava/net/URL;
    new-instance v1, Lorg/apache/http/HttpHost;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->getTargetPort()I

    move-result v3

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v1, p0, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->mHttpHost:Lorg/apache/http/HttpHost;

    .line 544
    iget-object v1, p0, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->mHttpHost:Lorg/apache/http/HttpHost;

    goto :goto_0
.end method

.method private getHttpUriRequest()Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 229
    iget-object v2, p0, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->mHttpRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v2, :cond_0

    .line 230
    iget-object v2, p0, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->mHttpRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 242
    :goto_0
    return-object v2

    .line 233
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->getPostData()Lorg/apache/http/entity/AbstractHttpEntity;

    move-result-object v0

    .line 234
    .local v0, "entity":Lorg/apache/http/entity/AbstractHttpEntity;
    if-eqz v0, :cond_1

    .line 235
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {p0}, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->getUri()Ljava/net/URI;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    .line 236
    .local v1, "httpPost":Lorg/apache/http/client/methods/HttpPost;
    invoke-virtual {v1, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 237
    iput-object v1, p0, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->mHttpRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 242
    .end local v1    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    :goto_1
    iget-object v2, p0, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->mHttpRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    goto :goto_0

    .line 239
    :cond_1
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {p0}, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->getUri()Ljava/net/URI;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    iput-object v2, p0, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->mHttpRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    goto :goto_1
.end method

.method private getOperationType()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 489
    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->mOperationType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->mOperationType:Ljava/lang/String;

    .line 494
    :goto_0
    return-object v0

    .line 493
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->mRequest:Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;

    const-string/jumbo v1, "operationType"

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->mOperationType:Ljava/lang/String;

    .line 494
    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->mOperationType:Ljava/lang/String;

    goto :goto_0
.end method

.method private getProxy()Lorg/apache/http/HttpHost;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 572
    iget-object v1, p0, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/android/phone/mrpc/core/NetworkUtils;->getProxy(Landroid/content/Context;)Lorg/apache/http/HttpHost;

    move-result-object v0

    .line 573
    .local v0, "proxy":Lorg/apache/http/HttpHost;
    if-eqz v0, :cond_0

    .line 574
    invoke-virtual {v0}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "127.0.0.1"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v1

    const/16 v2, 0x1f97

    if-ne v1, v2, :cond_0

    .line 575
    const/4 v0, 0x0

    .line 578
    :cond_0
    return-object v0
.end method

.method private getTargetPort()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 548
    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->getTargetURL()Ljava/net/URL;

    move-result-object v1

    .line 549
    .local v1, "targetUrl":Ljava/net/URL;
    invoke-virtual {v1}, Ljava/net/URL;->getPort()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Ljava/net/URL;->getDefaultPort()I

    move-result v0

    .line 551
    .local v0, "targetPort":I
    :goto_0
    return v0

    .line 549
    .end local v0    # "targetPort":I
    :cond_0
    invoke-virtual {v1}, Ljava/net/URL;->getPort()I

    move-result v0

    goto :goto_0
.end method

.method private getTargetURL()Ljava/net/URL;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 560
    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->mTargetUrl:Ljava/net/URL;

    if-eqz v0, :cond_0

    .line 561
    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->mTargetUrl:Ljava/net/URL;

    .line 564
    :goto_0
    return-object v0

    .line 563
    :cond_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->mRequest:Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;

    invoke-virtual {v1}, Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->mTargetUrl:Ljava/net/URL;

    .line 564
    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->mTargetUrl:Ljava/net/URL;

    goto :goto_0
.end method

.method private getTransportCallback()Lcom/alipay/android/phone/mrpc/core/TransportCallback;
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->mRequest:Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;->getCallback()Lcom/alipay/android/phone/mrpc/core/TransportCallback;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public call()Lcom/alipay/android/phone/mrpc/core/Response;
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/phone/mrpc/core/HttpException;
        }
    .end annotation

    .prologue
    .line 258
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/alipay/android/phone/mrpc/core/NetworkUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v20

    if-nez v20, :cond_1

    .line 259
    new-instance v20, Lcom/alipay/android/phone/mrpc/core/HttpException;

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const-string/jumbo v22, "The network is not available"

    invoke-direct/range {v20 .. v22}, Lcom/alipay/android/phone/mrpc/core/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v20
    :try_end_0
    .catch Lcom/alipay/android/phone/mrpc/core/HttpException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lorg/apache/http/conn/ConnectionPoolTimeoutException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Lorg/apache/http/NoHttpResponseException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_e

    .line 336
    :catch_0
    move-exception v8

    .line 337
    .local v8, "e":Lcom/alipay/android/phone/mrpc/core/HttpException;
    invoke-direct/range {p0 .. p0}, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->abortRequest()V

    .line 338
    invoke-direct/range {p0 .. p0}, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->getTransportCallback()Lcom/alipay/android/phone/mrpc/core/TransportCallback;

    move-result-object v20

    if-eqz v20, :cond_0

    .line 339
    invoke-direct/range {p0 .. p0}, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->getTransportCallback()Lcom/alipay/android/phone/mrpc/core/TransportCallback;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->mRequest:Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;

    move-object/from16 v21, v0

    invoke-virtual {v8}, Lcom/alipay/android/phone/mrpc/core/HttpException;->getCode()I

    move-result v22

    invoke-virtual {v8}, Lcom/alipay/android/phone/mrpc/core/HttpException;->getMsg()Ljava/lang/String;

    move-result-object v23

    invoke-interface/range {v20 .. v23}, Lcom/alipay/android/phone/mrpc/core/TransportCallback;->onFailed(Lcom/alipay/android/phone/mrpc/core/Request;ILjava/lang/String;)V

    .line 341
    :cond_0
    const-string/jumbo v20, "HttpManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    throw v8

    .line 265
    .end local v8    # "e":Lcom/alipay/android/phone/mrpc/core/HttpException;
    :cond_1
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->getTransportCallback()Lcom/alipay/android/phone/mrpc/core/TransportCallback;

    move-result-object v20

    if-eqz v20, :cond_2

    .line 266
    invoke-direct/range {p0 .. p0}, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->getTransportCallback()Lcom/alipay/android/phone/mrpc/core/TransportCallback;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->mRequest:Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;

    move-object/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Lcom/alipay/android/phone/mrpc/core/TransportCallback;->onPreExecute(Lcom/alipay/android/phone/mrpc/core/Request;)V

    .line 270
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->addRequestHeaders()V

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->mLocalContext:Lorg/apache/http/protocol/HttpContext;

    move-object/from16 v20, v0

    const-string/jumbo v21, "http.cookie-store"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->mCookieStore:Lorg/apache/http/client/CookieStore;

    move-object/from16 v22, v0

    invoke-interface/range {v20 .. v22}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 279
    invoke-direct/range {p0 .. p0}, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->getHttpClient()Lcom/alipay/android/phone/mrpc/core/AndroidHttpClient;

    move-result-object v20

    sget-object v21, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->sHttpRequestRetryHandler:Lorg/apache/http/client/HttpRequestRetryHandler;

    invoke-virtual/range {v20 .. v21}, Lcom/alipay/android/phone/mrpc/core/AndroidHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    .line 281
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 284
    .local v18, "time":J
    invoke-direct/range {p0 .. p0}, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->executeRequest()Lorg/apache/http/HttpResponse;

    move-result-object v9

    .line 286
    .local v9, "httpResponse":Lorg/apache/http/HttpResponse;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 287
    .local v14, "responseTime":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->mHttpManager:Lcom/alipay/android/phone/mrpc/core/HttpManager;

    move-object/from16 v20, v0

    sub-long v22, v14, v18

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/mrpc/core/HttpManager;->addConnectTime(J)V

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->mCookieStore:Lorg/apache/http/client/CookieStore;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lorg/apache/http/client/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v7

    .line 292
    .local v7, "cookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->mRequest:Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;->isResetCookie()Z

    move-result v20

    if-eqz v20, :cond_3

    .line 293
    invoke-direct/range {p0 .. p0}, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->getCookieManager()Landroid/webkit/CookieManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 295
    :cond_3
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_6

    .line 298
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/http/cookie/Cookie;

    .line 299
    .local v5, "cookie":Lorg/apache/http/cookie/Cookie;
    invoke-interface {v5}, Lorg/apache/http/cookie/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_4

    .line 303
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v5}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-interface {v5}, Lorg/apache/http/cookie/Cookie;->getValue()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "; domain="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-interface {v5}, Lorg/apache/http/cookie/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-interface {v5}, Lorg/apache/http/cookie/Cookie;->isSecure()Z

    move-result v20

    if-eqz v20, :cond_5

    const-string/jumbo v20, "; Secure"

    :goto_1
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 306
    .local v6, "cookieString":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->getCookieManager()Landroid/webkit/CookieManager;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->mRequest:Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v6}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/webkit/CookieSyncManager;->sync()V
    :try_end_1
    .catch Lcom/alipay/android/phone/mrpc/core/HttpException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lorg/apache/http/conn/ConnectionPoolTimeoutException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Lorg/apache/http/NoHttpResponseException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_e

    goto :goto_0

    .line 343
    .end local v5    # "cookie":Lorg/apache/http/cookie/Cookie;
    .end local v6    # "cookieString":Ljava/lang/String;
    .end local v7    # "cookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    .end local v9    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v14    # "responseTime":J
    .end local v18    # "time":J
    :catch_1
    move-exception v8

    .line 344
    .local v8, "e":Ljava/net/URISyntaxException;
    new-instance v20, Ljava/lang/RuntimeException;

    const-string/jumbo v21, "Url parser error!"

    invoke-virtual {v8}, Ljava/net/URISyntaxException;->getCause()Ljava/lang/Throwable;

    move-result-object v22

    invoke-direct/range {v20 .. v22}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v20

    .line 303
    .end local v8    # "e":Ljava/net/URISyntaxException;
    .restart local v5    # "cookie":Lorg/apache/http/cookie/Cookie;
    .restart local v7    # "cookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    .restart local v9    # "httpResponse":Lorg/apache/http/HttpResponse;
    .restart local v10    # "i$":Ljava/util/Iterator;
    .restart local v14    # "responseTime":J
    .restart local v18    # "time":J
    :cond_5
    :try_start_2
    const-string/jumbo v20, ""

    goto :goto_1

    .line 312
    .end local v5    # "cookie":Lorg/apache/http/cookie/Cookie;
    .end local v10    # "i$":Ljava/util/Iterator;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->mRequest:Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v9, v1}, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->processResponse(Lorg/apache/http/HttpResponse;Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;)Lcom/alipay/android/phone/mrpc/core/Response;

    move-result-object v16

    .line 314
    .local v16, "rpcResponse":Lcom/alipay/android/phone/mrpc/core/Response;
    const-wide/16 v12, -0x1

    .line 315
    .local v12, "respDataLength":J
    if-eqz v16, :cond_7

    invoke-virtual/range {v16 .. v16}, Lcom/alipay/android/phone/mrpc/core/Response;->getResData()[B

    move-result-object v20

    if-eqz v20, :cond_7

    .line 316
    invoke-virtual/range {v16 .. v16}, Lcom/alipay/android/phone/mrpc/core/Response;->getResData()[B

    move-result-object v20

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v12, v0

    .line 319
    :cond_7
    const-wide/16 v20, -0x1

    cmp-long v20, v12, v20

    if-nez v20, :cond_8

    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/alipay/android/phone/mrpc/core/HttpUrlResponse;

    move/from16 v20, v0

    if-eqz v20, :cond_8

    .line 320
    move-object/from16 v0, v16

    check-cast v0, Lcom/alipay/android/phone/mrpc/core/HttpUrlResponse;

    move-object/from16 v17, v0
    :try_end_2
    .catch Lcom/alipay/android/phone/mrpc/core/HttpException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lorg/apache/http/conn/ConnectionPoolTimeoutException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Lorg/apache/http/NoHttpResponseException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_e

    .line 322
    .local v17, "urlResponse":Lcom/alipay/android/phone/mrpc/core/HttpUrlResponse;
    :try_start_3
    invoke-virtual/range {v17 .. v17}, Lcom/alipay/android/phone/mrpc/core/HttpUrlResponse;->getHeader()Lcom/alipay/android/phone/mrpc/core/HttpUrlHeader;

    move-result-object v20

    const-string/jumbo v21, "Content-Length"

    invoke-virtual/range {v20 .. v21}, Lcom/alipay/android/phone/mrpc/core/HttpUrlHeader;->getHead(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 323
    .local v4, "contentLength":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/alipay/android/phone/mrpc/core/HttpException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljavax/net/ssl/SSLException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Lorg/apache/http/conn/ConnectionPoolTimeoutException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Lorg/apache/http/NoHttpResponseException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_c
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_d

    .line 329
    .end local v4    # "contentLength":Ljava/lang/String;
    .end local v17    # "urlResponse":Lcom/alipay/android/phone/mrpc/core/HttpUrlResponse;
    :cond_8
    :goto_2
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->mRequest:Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v11

    .line 330
    .local v11, "noteUrl":Ljava/lang/String;
    if-eqz v11, :cond_9

    invoke-direct/range {p0 .. p0}, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->getOperationType()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_9

    .line 331
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "#"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-direct/range {p0 .. p0}, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->getOperationType()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    .end local v7    # "cookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    .end local v9    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local v11    # "noteUrl":Ljava/lang/String;
    .end local v12    # "respDataLength":J
    .end local v14    # "responseTime":J
    .end local v16    # "rpcResponse":Lcom/alipay/android/phone/mrpc/core/Response;
    .end local v18    # "time":J
    :cond_9
    :goto_3
    return-object v16

    .line 325
    .restart local v7    # "cookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    .restart local v9    # "httpResponse":Lorg/apache/http/HttpResponse;
    .restart local v12    # "respDataLength":J
    .restart local v14    # "responseTime":J
    .restart local v16    # "rpcResponse":Lcom/alipay/android/phone/mrpc/core/Response;
    .restart local v17    # "urlResponse":Lcom/alipay/android/phone/mrpc/core/HttpUrlResponse;
    .restart local v18    # "time":J
    :catch_2
    move-exception v20

    const-string/jumbo v20, "HttpWorker"

    const-string/jumbo v21, "parse Content-Length error"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Lcom/alipay/android/phone/mrpc/core/HttpException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljavax/net/ssl/SSLException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Lorg/apache/http/conn/ConnectionPoolTimeoutException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Lorg/apache/http/NoHttpResponseException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_c
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_e

    goto :goto_2

    .line 345
    .end local v7    # "cookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    .end local v9    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local v12    # "respDataLength":J
    .end local v14    # "responseTime":J
    .end local v16    # "rpcResponse":Lcom/alipay/android/phone/mrpc/core/Response;
    .end local v17    # "urlResponse":Lcom/alipay/android/phone/mrpc/core/HttpUrlResponse;
    .end local v18    # "time":J
    :catch_3
    move-exception v8

    .line 346
    .local v8, "e":Ljavax/net/ssl/SSLHandshakeException;
    invoke-direct/range {p0 .. p0}, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->abortRequest()V

    .line 347
    invoke-direct/range {p0 .. p0}, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->getTransportCallback()Lcom/alipay/android/phone/mrpc/core/TransportCallback;

    move-result-object v20

    if-eqz v20, :cond_a

    .line 348
    invoke-direct/range {p0 .. p0}, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->getTransportCallback()Lcom/alipay/android/phone/mrpc/core/TransportCallback;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->mRequest:Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;

    move-object/from16 v21, v0

    const/16 v22, 0x2

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-interface/range {v20 .. v23}, Lcom/alipay/android/phone/mrpc/core/TransportCallback;->onFailed(Lcom/alipay/android/phone/mrpc/core/Request;ILjava/lang/String;)V

    .line 350
    :cond_a
    const-string/jumbo v20, "HttpManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    new-instance v20, Lcom/alipay/android/phone/mrpc/core/HttpException;

    const/16 v21, 0x2

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v20 .. v22}, Lcom/alipay/android/phone/mrpc/core/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v20

    .line 353
    .end local v8    # "e":Ljavax/net/ssl/SSLHandshakeException;
    :catch_4
    move-exception v8

    .line 354
    .local v8, "e":Ljavax/net/ssl/SSLPeerUnverifiedException;
    invoke-direct/range {p0 .. p0}, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->abortRequest()V

    .line 355
    invoke-direct/range {p0 .. p0}, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->getTransportCallback()Lcom/alipay/android/phone/mrpc/core/TransportCallback;

    move-result-object v20

    if-eqz v20, :cond_b

    .line 356
    invoke-direct/range {p0 .. p0}, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->getTransportCallback()Lcom/alipay/android/phone/mrpc/core/TransportCallback;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->mRequest:Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;

    move-object/from16 v21, v0

    const/16 v22, 0x2

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-interface/range {v20 .. v23}, Lcom/alipay/android/phone/mrpc/core/TransportCallback;->onFailed(Lcom/alipay/android/phone/mrpc/core/Request;ILjava/lang/String;)V

    .line 358
    :cond_b
    const-string/jumbo v20, "HttpManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    new-instance v20, Lcom/alipay/android/phone/mrpc/core/HttpException;

    const/16 v21, 0x2

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v20 .. v22}, Lcom/alipay/android/phone/mrpc/core/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v20

    .line 361
    .end local v8    # "e":Ljavax/net/ssl/SSLPeerUnverifiedException;
    :catch_5
    move-exception v8

    .line 362
    .local v8, "e":Ljavax/net/ssl/SSLException;
    invoke-direct/range {p0 .. p0}, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->abortRequest()V

    .line 363
    invoke-direct/range {p0 .. p0}, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->getTransportCallback()Lcom/alipay/android/phone/mrpc/core/TransportCallback;

    move-result-object v20

    if-eqz v20, :cond_c

    .line 364
    invoke-direct/range {p0 .. p0}, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->getTransportCallback()Lcom/alipay/android/phone/mrpc/core/TransportCallback;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->mRequest:Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;

    move-object/from16 v21, v0

    const/16 v22, 0x6

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-interface/range {v20 .. v23}, Lcom/alipay/android/phone/mrpc/core/TransportCallback;->onFailed(Lcom/alipay/android/phone/mrpc/core/Request;ILjava/lang/String;)V

    .line 366
    :cond_c
    const-string/jumbo v20, "HttpManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    new-instance v20, Lcom/alipay/android/phone/mrpc/core/HttpException;

    const/16 v21, 0x6

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v20 .. v22}, Lcom/alipay/android/phone/mrpc/core/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v20

    .line 369
    .end local v8    # "e":Ljavax/net/ssl/SSLException;
    :catch_6
    move-exception v8

    .line 370
    .local v8, "e":Lorg/apache/http/conn/ConnectionPoolTimeoutException;
    invoke-direct/range {p0 .. p0}, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->abortRequest()V

    .line 371
    invoke-direct/range {p0 .. p0}, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->getTransportCallback()Lcom/alipay/android/phone/mrpc/core/TransportCallback;

    move-result-object v20

    if-eqz v20, :cond_d

    .line 372
    invoke-direct/range {p0 .. p0}, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->getTransportCallback()Lcom/alipay/android/phone/mrpc/core/TransportCallback;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->mRequest:Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;

    move-object/from16 v21, v0

    const/16 v22, 0x3

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-interface/range {v20 .. v23}, Lcom/alipay/android/phone/mrpc/core/TransportCallback;->onFailed(Lcom/alipay/android/phone/mrpc/core/Request;ILjava/lang/String;)V

    .line 374
    :cond_d
    const-string/jumbo v20, "HttpManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    new-instance v20, Lcom/alipay/android/phone/mrpc/core/HttpException;

    const/16 v21, 0x3

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v20 .. v22}, Lcom/alipay/android/phone/mrpc/core/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v20

    .line 377
    .end local v8    # "e":Lorg/apache/http/conn/ConnectionPoolTimeoutException;
    :catch_7
    move-exception v8

    .line 378
    .local v8, "e":Lorg/apache/http/conn/ConnectTimeoutException;
    invoke-direct/range {p0 .. p0}, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->abortRequest()V

    .line 379
    invoke-direct/range {p0 .. p0}, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->getTransportCallback()Lcom/alipay/android/phone/mrpc/core/TransportCallback;

    move-result-object v20

    if-eqz v20, :cond_e

    .line 380
    invoke-direct/range {p0 .. p0}, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->getTransportCallback()Lcom/alipay/android/phone/mrpc/core/TransportCallback;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->mRequest:Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;

    move-object/from16 v21, v0

    const/16 v22, 0x3

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-interface/range {v20 .. v23}, Lcom/alipay/android/phone/mrpc/core/TransportCallback;->onFailed(Lcom/alipay/android/phone/mrpc/core/Request;ILjava/lang/String;)V

    .line 382
    :cond_e
    const-string/jumbo v20, "HttpManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    new-instance v20, Lcom/alipay/android/phone/mrpc/core/HttpException;

    const/16 v21, 0x3

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v20 .. v22}, Lcom/alipay/android/phone/mrpc/core/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v20

    .line 385
    .end local v8    # "e":Lorg/apache/http/conn/ConnectTimeoutException;
    :catch_8
    move-exception v8

    .line 386
    .local v8, "e":Ljava/net/SocketTimeoutException;
    invoke-direct/range {p0 .. p0}, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->abortRequest()V

    .line 387
    invoke-direct/range {p0 .. p0}, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->getTransportCallback()Lcom/alipay/android/phone/mrpc/core/TransportCallback;

    move-result-object v20

    if-eqz v20, :cond_f

    .line 388
    invoke-direct/range {p0 .. p0}, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->getTransportCallback()Lcom/alipay/android/phone/mrpc/core/TransportCallback;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->mRequest:Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-interface/range {v20 .. v23}, Lcom/alipay/android/phone/mrpc/core/TransportCallback;->onFailed(Lcom/alipay/android/phone/mrpc/core/Request;ILjava/lang/String;)V

    .line 390
    :cond_f
    const-string/jumbo v20, "HttpManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    new-instance v20, Lcom/alipay/android/phone/mrpc/core/HttpException;

    const/16 v21, 0x4

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v20 .. v22}, Lcom/alipay/android/phone/mrpc/core/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v20

    .line 393
    .end local v8    # "e":Ljava/net/SocketTimeoutException;
    :catch_9
    move-exception v8

    .line 394
    .local v8, "e":Lorg/apache/http/NoHttpResponseException;
    invoke-direct/range {p0 .. p0}, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->abortRequest()V

    .line 395
    invoke-direct/range {p0 .. p0}, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->getTransportCallback()Lcom/alipay/android/phone/mrpc/core/TransportCallback;

    move-result-object v20

    if-eqz v20, :cond_10

    .line 396
    invoke-direct/range {p0 .. p0}, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->getTransportCallback()Lcom/alipay/android/phone/mrpc/core/TransportCallback;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->mRequest:Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;

    move-object/from16 v21, v0

    const/16 v22, 0x5

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-interface/range {v20 .. v23}, Lcom/alipay/android/phone/mrpc/core/TransportCallback;->onFailed(Lcom/alipay/android/phone/mrpc/core/Request;ILjava/lang/String;)V

    .line 398
    :cond_10
    const-string/jumbo v20, "HttpManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    new-instance v20, Lcom/alipay/android/phone/mrpc/core/HttpException;

    const/16 v21, 0x5

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v20 .. v22}, Lcom/alipay/android/phone/mrpc/core/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v20

    .line 401
    .end local v8    # "e":Lorg/apache/http/NoHttpResponseException;
    :catch_a
    move-exception v8

    .line 402
    .local v8, "e":Lorg/apache/http/conn/HttpHostConnectException;
    invoke-direct/range {p0 .. p0}, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->abortRequest()V

    .line 403
    invoke-direct/range {p0 .. p0}, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->getTransportCallback()Lcom/alipay/android/phone/mrpc/core/TransportCallback;

    move-result-object v20

    if-eqz v20, :cond_11

    .line 404
    invoke-direct/range {p0 .. p0}, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->getTransportCallback()Lcom/alipay/android/phone/mrpc/core/TransportCallback;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->mRequest:Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;

    move-object/from16 v21, v0

    const/16 v22, 0x8

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-interface/range {v20 .. v23}, Lcom/alipay/android/phone/mrpc/core/TransportCallback;->onFailed(Lcom/alipay/android/phone/mrpc/core/Request;ILjava/lang/String;)V

    .line 406
    :cond_11
    const-string/jumbo v20, "HttpManager"

    const-string/jumbo v21, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 407
    new-instance v20, Lcom/alipay/android/phone/mrpc/core/HttpException;

    const/16 v21, 0x8

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v20 .. v22}, Lcom/alipay/android/phone/mrpc/core/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v20

    .line 409
    .end local v8    # "e":Lorg/apache/http/conn/HttpHostConnectException;
    :catch_b
    move-exception v8

    .line 412
    .local v8, "e":Ljava/net/UnknownHostException;
    invoke-direct/range {p0 .. p0}, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->abortRequest()V

    .line 413
    invoke-direct/range {p0 .. p0}, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->getTransportCallback()Lcom/alipay/android/phone/mrpc/core/TransportCallback;

    move-result-object v20

    if-eqz v20, :cond_12

    .line 414
    invoke-direct/range {p0 .. p0}, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->getTransportCallback()Lcom/alipay/android/phone/mrpc/core/TransportCallback;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->mRequest:Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;

    move-object/from16 v21, v0

    const/16 v22, 0x9

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-interface/range {v20 .. v23}, Lcom/alipay/android/phone/mrpc/core/TransportCallback;->onFailed(Lcom/alipay/android/phone/mrpc/core/Request;ILjava/lang/String;)V

    .line 416
    :cond_12
    const-string/jumbo v20, "HttpManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    new-instance v20, Lcom/alipay/android/phone/mrpc/core/HttpException;

    const/16 v21, 0x9

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v20 .. v22}, Lcom/alipay/android/phone/mrpc/core/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v20

    .line 419
    .end local v8    # "e":Ljava/net/UnknownHostException;
    :catch_c
    move-exception v8

    .line 422
    .local v8, "e":Ljava/io/IOException;
    invoke-direct/range {p0 .. p0}, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->abortRequest()V

    .line 423
    invoke-direct/range {p0 .. p0}, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->getTransportCallback()Lcom/alipay/android/phone/mrpc/core/TransportCallback;

    move-result-object v20

    if-eqz v20, :cond_13

    .line 424
    invoke-direct/range {p0 .. p0}, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->getTransportCallback()Lcom/alipay/android/phone/mrpc/core/TransportCallback;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->mRequest:Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;

    move-object/from16 v21, v0

    const/16 v22, 0x6

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-interface/range {v20 .. v23}, Lcom/alipay/android/phone/mrpc/core/TransportCallback;->onFailed(Lcom/alipay/android/phone/mrpc/core/Request;ILjava/lang/String;)V

    .line 426
    :cond_13
    const-string/jumbo v20, "HttpManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    new-instance v20, Lcom/alipay/android/phone/mrpc/core/HttpException;

    const/16 v21, 0x6

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v20 .. v22}, Lcom/alipay/android/phone/mrpc/core/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v20

    .line 430
    .end local v8    # "e":Ljava/io/IOException;
    :catch_d
    move-exception v8

    .line 434
    .local v8, "e":Ljava/lang/NullPointerException;
    invoke-direct/range {p0 .. p0}, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->abortRequest()V

    .line 436
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->mRetryTimes:I

    move/from16 v20, v0

    if-gtz v20, :cond_14

    .line 437
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->mRetryTimes:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->mRetryTimes:I

    .line 438
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->call()Lcom/alipay/android/phone/mrpc/core/Response;

    move-result-object v16

    goto/16 :goto_3

    .line 440
    :cond_14
    const-string/jumbo v20, "HttpManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    new-instance v20, Lcom/alipay/android/phone/mrpc/core/HttpException;

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v20 .. v22}, Lcom/alipay/android/phone/mrpc/core/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v20

    .line 444
    .end local v8    # "e":Ljava/lang/NullPointerException;
    :catch_e
    move-exception v8

    .line 445
    .local v8, "e":Ljava/lang/Exception;
    const-string/jumbo v20, "HttpManager"

    const-string/jumbo v21, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 446
    invoke-direct/range {p0 .. p0}, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->abortRequest()V

    .line 447
    invoke-direct/range {p0 .. p0}, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->getTransportCallback()Lcom/alipay/android/phone/mrpc/core/TransportCallback;

    move-result-object v20

    if-eqz v20, :cond_15

    .line 448
    invoke-direct/range {p0 .. p0}, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->getTransportCallback()Lcom/alipay/android/phone/mrpc/core/TransportCallback;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->mRequest:Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-interface/range {v20 .. v23}, Lcom/alipay/android/phone/mrpc/core/TransportCallback;->onFailed(Lcom/alipay/android/phone/mrpc/core/Request;ILjava/lang/String;)V

    .line 450
    :cond_15
    new-instance v20, Lcom/alipay/android/phone/mrpc/core/HttpException;

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v20 .. v22}, Lcom/alipay/android/phone/mrpc/core/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v20
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->call()Lcom/alipay/android/phone/mrpc/core/Response;

    move-result-object v0

    return-object v0
.end method

.method protected fillResponse(Lcom/alipay/android/phone/mrpc/core/HttpUrlResponse;Lorg/apache/http/HttpResponse;)V
    .locals 8
    .param p1, "response"    # Lcom/alipay/android/phone/mrpc/core/HttpUrlResponse;
    .param p2, "httpResponse"    # Lorg/apache/http/HttpResponse;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 685
    invoke-virtual {p0, p2}, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->getPeriod(Lorg/apache/http/HttpResponse;)J

    move-result-wide v4

    .line 687
    .local v4, "period":J
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v3

    .line 688
    .local v3, "typeHeader":Lorg/apache/http/Header;
    const/4 v0, 0x0

    .line 689
    .local v0, "charset":Ljava/lang/String;
    const/4 v1, 0x0

    .line 690
    .local v1, "contentType":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 691
    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->getContentType(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    .line 692
    .local v2, "contentTypes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v6, "charset"

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "charset":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 693
    .restart local v0    # "charset":Ljava/lang/String;
    const-string/jumbo v6, "Content-Type"

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "contentType":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 695
    .end local v2    # "contentTypes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v1    # "contentType":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1, v1}, Lcom/alipay/android/phone/mrpc/core/HttpUrlResponse;->setContentType(Ljava/lang/String;)V

    .line 696
    invoke-virtual {p1, v0}, Lcom/alipay/android/phone/mrpc/core/HttpUrlResponse;->setCharset(Ljava/lang/String;)V

    .line 697
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {p1, v6, v7}, Lcom/alipay/android/phone/mrpc/core/HttpUrlResponse;->setCreateTime(J)V

    .line 698
    invoke-virtual {p1, v4, v5}, Lcom/alipay/android/phone/mrpc/core/HttpUrlResponse;->setPeriod(J)V

    .line 699
    return-void
.end method

.method protected getContentType(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 11
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 582
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 583
    .local v6, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v7, ";"

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 585
    .local v5, "params":[Ljava/lang/String;
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v5

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 586
    .local v4, "param":Ljava/lang/String;
    const/16 v7, 0x3d

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_0

    .line 587
    const/4 v7, 0x2

    new-array v3, v7, [Ljava/lang/String;

    .line 588
    .local v3, "pairs":[Ljava/lang/String;
    const-string/jumbo v7, "Content-Type"

    aput-object v7, v3, v9

    .line 589
    aput-object v4, v3, v10

    .line 592
    :goto_1
    aget-object v7, v3, v9

    aget-object v8, v3, v10

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 591
    .end local v3    # "pairs":[Ljava/lang/String;
    :cond_0
    const-string/jumbo v7, "="

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "pairs":[Ljava/lang/String;
    goto :goto_1

    .line 594
    .end local v3    # "pairs":[Ljava/lang/String;
    .end local v4    # "param":Ljava/lang/String;
    :cond_1
    return-object v6
.end method

.method protected getHeaders()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/Header;",
            ">;"
        }
    .end annotation

    .prologue
    .line 217
    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->mRequest:Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;->getHeaders()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected getPeriod(Lorg/apache/http/HttpResponse;)J
    .locals 10
    .param p1, "httpResponse"    # Lorg/apache/http/HttpResponse;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 708
    const-wide/16 v6, 0x0

    .line 709
    .local v6, "expires":J
    const-string/jumbo v8, "Cache-Control"

    invoke-interface {p1, v8}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 710
    .local v0, "cache":Lorg/apache/http/Header;
    if-eqz v0, :cond_0

    .line 711
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 712
    .local v3, "strs":[Ljava/lang/String;
    array-length v8, v3

    const/4 v9, 0x2

    if-lt v8, v9, :cond_0

    .line 714
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->parserMaxage([Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    .line 726
    .end local v3    # "strs":[Ljava/lang/String;
    :goto_0
    return-wide v8

    .line 715
    .restart local v3    # "strs":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 716
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v8, "HttpWorker"

    invoke-static {v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 721
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local v3    # "strs":[Ljava/lang/String;
    :cond_0
    const-string/jumbo v8, "Expires"

    invoke-interface {p1, v8}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    .line 722
    .local v2, "expire":Lorg/apache/http/Header;
    if-eqz v2, :cond_1

    .line 723
    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/alipay/android/phone/mrpc/core/AndroidHttpClient;->parseDate(Ljava/lang/String;)J

    move-result-wide v4

    .line 724
    .local v4, "expireTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v6, v4, v8

    .end local v4    # "expireTime":J
    :cond_1
    move-wide v8, v6

    .line 726
    goto :goto_0
.end method

.method protected getPostData()Lorg/apache/http/entity/AbstractHttpEntity;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 192
    iget-object v2, p0, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->mPostDataEntity:Lorg/apache/http/entity/AbstractHttpEntity;

    if-eqz v2, :cond_0

    .line 193
    iget-object v2, p0, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->mPostDataEntity:Lorg/apache/http/entity/AbstractHttpEntity;

    .line 208
    :goto_0
    return-object v2

    .line 196
    :cond_0
    iget-object v2, p0, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->mRequest:Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;

    invoke-virtual {v2}, Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;->getReqData()[B

    move-result-object v0

    .line 197
    .local v0, "bs":[B
    iget-object v2, p0, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->mRequest:Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;

    const-string/jumbo v3, "gzip"

    invoke-virtual {v2, v3}, Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 198
    .local v1, "isGzip":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 199
    const-string/jumbo v2, "true"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 201
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/alipay/android/phone/mrpc/core/AndroidHttpClient;->getCompressedEntity([BLandroid/content/ContentResolver;)Lorg/apache/http/entity/AbstractHttpEntity;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->mPostDataEntity:Lorg/apache/http/entity/AbstractHttpEntity;

    .line 205
    :goto_1
    iget-object v2, p0, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->mPostDataEntity:Lorg/apache/http/entity/AbstractHttpEntity;

    iget-object v3, p0, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->mRequest:Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;

    invoke-virtual {v3}, Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/http/entity/AbstractHttpEntity;->setContentType(Ljava/lang/String;)V

    .line 208
    :cond_1
    iget-object v2, p0, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->mPostDataEntity:Lorg/apache/http/entity/AbstractHttpEntity;

    goto :goto_0

    .line 203
    :cond_2
    new-instance v2, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v2, v0}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    iput-object v2, p0, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->mPostDataEntity:Lorg/apache/http/entity/AbstractHttpEntity;

    goto :goto_1
.end method

.method public getRequest()Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;
    .locals 1

    .prologue
    .line 772
    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->mRequest:Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;

    return-object v0
.end method

.method protected getUri()Ljava/net/URI;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 174
    iget-object v1, p0, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->mRequest:Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;

    invoke-virtual {v1}, Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, "url":Ljava/lang/String;
    iget-object v1, p0, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->mUrl:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 176
    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->mUrl:Ljava/lang/String;

    .line 177
    :cond_0
    if-nez v0, :cond_1

    .line 178
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "url should not be null"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 179
    :cond_1
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method protected handleResponse(Lorg/apache/http/HttpResponse;ILjava/lang/String;)Lcom/alipay/android/phone/mrpc/core/Response;
    .locals 12
    .param p1, "httpResponse"    # Lorg/apache/http/HttpResponse;
    .param p2, "resCode"    # I
    .param p3, "resMsg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 608
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "\u5f00\u59cbhandle\uff0chandleResponse-1,"

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->getId()J

    move-result-wide v10

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 609
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    .line 611
    .local v6, "responseEntity":Lorg/apache/http/HttpEntity;
    const/4 v4, 0x0

    .line 612
    .local v4, "response":Lcom/alipay/android/phone/mrpc/core/HttpUrlResponse;
    if-eqz v6, :cond_2

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    const/16 v10, 0xc8

    if-ne v7, v10, :cond_2

    .line 614
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "200\uff0c\u5f00\u59cb\u5904\u7406\uff0chandleResponse-2,threadid = "

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->getId()J

    move-result-wide v10

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 616
    const/4 v2, 0x0

    .line 618
    .local v2, "outputStream":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 620
    .end local v2    # "outputStream":Ljava/io/ByteArrayOutputStream;
    .local v3, "outputStream":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 622
    .local v8, "time":J
    const-wide/16 v10, 0x0

    invoke-virtual {p0, v6, v10, v11, v3}, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->writeData(Lorg/apache/http/HttpEntity;JLjava/io/OutputStream;)V

    .line 623
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 624
    .local v0, "data":[B
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->hasEtagInResponse:Z

    .line 625
    iget-object v7, p0, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->mHttpManager:Lcom/alipay/android/phone/mrpc/core/HttpManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v8

    invoke-virtual {v7, v10, v11}, Lcom/alipay/android/phone/mrpc/core/HttpManager;->addSocketTime(J)V

    .line 626
    iget-object v7, p0, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->mHttpManager:Lcom/alipay/android/phone/mrpc/core/HttpManager;

    array-length v10, v0

    int-to-long v10, v10

    invoke-virtual {v7, v10, v11}, Lcom/alipay/android/phone/mrpc/core/HttpManager;->addDataSize(J)V

    .line 627
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "res:"

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v10, v0

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 629
    new-instance v5, Lcom/alipay/android/phone/mrpc/core/HttpUrlResponse;

    invoke-virtual {p0, p1}, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->handleResponseHeader(Lorg/apache/http/HttpResponse;)Lcom/alipay/android/phone/mrpc/core/HttpUrlHeader;

    move-result-object v7

    invoke-direct {v5, v7, p2, p3, v0}, Lcom/alipay/android/phone/mrpc/core/HttpUrlResponse;-><init>(Lcom/alipay/android/phone/mrpc/core/HttpUrlHeader;ILjava/lang/String;[B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 631
    .end local v4    # "response":Lcom/alipay/android/phone/mrpc/core/HttpUrlResponse;
    .local v5, "response":Lcom/alipay/android/phone/mrpc/core/HttpUrlResponse;
    :try_start_2
    invoke-virtual {p0, v5, p1}, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->fillResponse(Lcom/alipay/android/phone/mrpc/core/HttpUrlResponse;Lorg/apache/http/HttpResponse;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 638
    :try_start_3
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-object v4, v5

    .line 655
    .end local v0    # "data":[B
    .end local v3    # "outputStream":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "response":Lcom/alipay/android/phone/mrpc/core/HttpUrlResponse;
    .end local v8    # "time":J
    .restart local v4    # "response":Lcom/alipay/android/phone/mrpc/core/HttpUrlResponse;
    :cond_0
    :goto_0
    return-object v4

    .line 639
    .end local v4    # "response":Lcom/alipay/android/phone/mrpc/core/HttpUrlResponse;
    .restart local v0    # "data":[B
    .restart local v3    # "outputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "response":Lcom/alipay/android/phone/mrpc/core/HttpUrlResponse;
    .restart local v8    # "time":J
    :catch_0
    move-exception v1

    .line 640
    .local v1, "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/RuntimeException;

    const-string/jumbo v10, "ArrayOutputStream close error!"

    invoke-virtual {v1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v11

    invoke-direct {v7, v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 636
    .end local v0    # "data":[B
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "outputStream":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "response":Lcom/alipay/android/phone/mrpc/core/HttpUrlResponse;
    .end local v8    # "time":J
    .restart local v2    # "outputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "response":Lcom/alipay/android/phone/mrpc/core/HttpUrlResponse;
    :catchall_0
    move-exception v7

    :goto_1
    if-eqz v2, :cond_1

    .line 638
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 644
    :cond_1
    throw v7

    .line 639
    :catch_1
    move-exception v1

    .line 640
    .restart local v1    # "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/RuntimeException;

    const-string/jumbo v10, "ArrayOutputStream close error!"

    invoke-virtual {v1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v11

    invoke-direct {v7, v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 646
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "outputStream":Ljava/io/ByteArrayOutputStream;
    :cond_2
    if-nez v6, :cond_0

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I

    goto :goto_0

    .line 636
    .restart local v3    # "outputStream":Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3    # "outputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "outputStream":Ljava/io/ByteArrayOutputStream;
    goto :goto_1

    .end local v2    # "outputStream":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "response":Lcom/alipay/android/phone/mrpc/core/HttpUrlResponse;
    .restart local v0    # "data":[B
    .restart local v3    # "outputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "response":Lcom/alipay/android/phone/mrpc/core/HttpUrlResponse;
    .restart local v8    # "time":J
    :catchall_2
    move-exception v7

    move-object v2, v3

    .end local v3    # "outputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "outputStream":Ljava/io/ByteArrayOutputStream;
    move-object v4, v5

    .end local v5    # "response":Lcom/alipay/android/phone/mrpc/core/HttpUrlResponse;
    .restart local v4    # "response":Lcom/alipay/android/phone/mrpc/core/HttpUrlResponse;
    goto :goto_1
.end method

.method protected handleResponseHeader(Lorg/apache/http/HttpResponse;)Lcom/alipay/android/phone/mrpc/core/HttpUrlHeader;
    .locals 7
    .param p1, "httpResponse"    # Lorg/apache/http/HttpResponse;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 667
    new-instance v2, Lcom/alipay/android/phone/mrpc/core/HttpUrlHeader;

    invoke-direct {v2}, Lcom/alipay/android/phone/mrpc/core/HttpUrlHeader;-><init>()V

    .line 669
    .local v2, "header":Lcom/alipay/android/phone/mrpc/core/HttpUrlHeader;
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v0

    .local v0, "arr$":[Lorg/apache/http/Header;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 670
    .local v1, "h":Lorg/apache/http/Header;
    invoke-interface {v1}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/alipay/android/phone/mrpc/core/HttpUrlHeader;->setHead(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 675
    .end local v1    # "h":Lorg/apache/http/Header;
    :cond_0
    return-object v2
.end method

.method protected parserMaxage([Ljava/lang/String;)J
    .locals 4
    .param p1, "strs"    # [Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 736
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 737
    aget-object v1, p1, v0

    .line 738
    .local v1, "str":Ljava/lang/String;
    const-string/jumbo v2, "max-age"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    aget-object v2, p1, v2

    if-eqz v2, :cond_0

    .line 740
    add-int/lit8 v2, v0, 0x1

    :try_start_0
    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 744
    .end local v1    # "str":Ljava/lang/String;
    :goto_1
    return-wide v2

    .restart local v1    # "str":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 736
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 744
    .end local v1    # "str":Ljava/lang/String;
    :cond_1
    const-wide/16 v2, 0x0

    goto :goto_1
.end method

.method public processResponse(Lorg/apache/http/HttpResponse;Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;)Lcom/alipay/android/phone/mrpc/core/Response;
    .locals 5
    .param p1, "httpResponse"    # Lorg/apache/http/HttpResponse;
    .param p2, "httpUrlRequest"    # Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/phone/mrpc/core/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 835
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 836
    .local v0, "resCode":I
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v1

    .line 841
    .local v1, "resMsg":Ljava/lang/String;
    const/16 v2, 0xc8

    if-eq v0, v2, :cond_0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->willHandleOtherCode(ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 842
    new-instance v2, Lcom/alipay/android/phone/mrpc/core/HttpException;

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/alipay/android/phone/mrpc/core/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v2

    .line 852
    :cond_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->handleResponse(Lorg/apache/http/HttpResponse;ILjava/lang/String;)Lcom/alipay/android/phone/mrpc/core/Response;

    move-result-object v2

    return-object v2
.end method

.method protected willHandleOtherCode(ILjava/lang/String;)Z
    .locals 1
    .param p1, "resCode"    # I
    .param p2, "resMsg"    # Ljava/lang/String;

    .prologue
    .line 758
    const/16 v0, 0x130

    if-ne p1, v0, :cond_0

    .line 759
    const/4 v0, 0x1

    .line 761
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected writeData(Lorg/apache/http/HttpEntity;JLjava/io/OutputStream;)V
    .locals 16
    .param p1, "httpEntity"    # Lorg/apache/http/HttpEntity;
    .param p2, "hasReaded"    # J
    .param p4, "outstream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 785
    if-nez p4, :cond_0

    .line 786
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 787
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v11, "Output stream may not be null"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 790
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/alipay/android/phone/mrpc/core/AndroidHttpClient;->getUngzippedContent(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;

    move-result-object v3

    .line 791
    .local v3, "instream":Ljava/io/InputStream;
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v6

    .line 793
    .local v6, "length":J
    move-wide/from16 v8, p2

    .line 795
    .local v8, "read":J
    const/16 v10, 0x800

    :try_start_0
    new-array v5, v10, [B

    .line 796
    .local v5, "tmp":[B
    :cond_1
    :goto_0
    invoke-virtual {v3, v5}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .local v4, "l":I
    const/4 v10, -0x1

    if-eq v4, v10, :cond_2

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->mRequest:Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;

    invoke-virtual {v10}, Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;->isCanceled()Z

    move-result v10

    if-nez v10, :cond_2

    .line 797
    const/4 v10, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v5, v10, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 798
    int-to-long v10, v4

    add-long/2addr v8, v10

    .line 799
    invoke-direct/range {p0 .. p0}, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->getTransportCallback()Lcom/alipay/android/phone/mrpc/core/TransportCallback;

    move-result-object v10

    if-eqz v10, :cond_1

    const-wide/16 v10, 0x0

    cmp-long v10, v6, v10

    if-lez v10, :cond_1

    .line 800
    invoke-direct/range {p0 .. p0}, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->getTransportCallback()Lcom/alipay/android/phone/mrpc/core/TransportCallback;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alipay/android/phone/mrpc/core/HttpWorker;->mRequest:Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;

    long-to-double v12, v8

    long-to-double v14, v6

    div-double/2addr v12, v14

    invoke-interface {v10, v11, v12, v13}, Lcom/alipay/android/phone/mrpc/core/TransportCallback;->onProgressUpdate(Lcom/alipay/android/phone/mrpc/core/Request;D)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 804
    .end local v4    # "l":I
    .end local v5    # "tmp":[B
    :catch_0
    move-exception v2

    .line 805
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v10, "HttpWorker"

    invoke-virtual {v2}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 806
    new-instance v10, Ljava/io/IOException;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "HttpWorker Request Error!"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 808
    .end local v2    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    invoke-static {v3}, Lcom/alipay/android/phone/mrpc/core/IOUtil;->closeStream(Ljava/io/Closeable;)V

    throw v10

    .line 803
    .restart local v4    # "l":I
    .restart local v5    # "tmp":[B
    :cond_2
    :try_start_2
    invoke-virtual/range {p4 .. p4}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 808
    invoke-static {v3}, Lcom/alipay/android/phone/mrpc/core/IOUtil;->closeStream(Ljava/io/Closeable;)V

    .line 809
    return-void
.end method
