.class public Lcom/alibaba/alimei/restfulapi/DefaultHttpClientFactory;
.super Ljava/lang/Object;
.source "DefaultHttpClientFactory.java"

# interfaces
.implements Lcom/alibaba/alimei/restfulapi/spi/http/HttpClientFactory;


# static fields
.field public static final CONNECTION_TIMEOUT:I = 0x1388

.field private static final DEFAULT_MAX_CONNECTIONS:I = 0xa

.field private static final DEFAULT_SOCKET_BUFFER_SIZE:I = 0x2000

.field public static final POOL_CONNECTION_TIMEOUT:I = 0xbb8

.field public static final SECONDS:I = 0x3e8

.field public static final SO_CONNECTION_TIMEOUT:I = 0x1d4c0

.field private static final VERSION:Ljava/lang/String; = "1.4.1"

.field private static maxConnections:I

.field private static sInstance:Lcom/alibaba/alimei/restfulapi/DefaultHttpClientFactory;

.field private static userSSLSocketFactory:Lorg/apache/http/conn/ssl/SSLSocketFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/16 v0, 0xa

    sput v0, Lcom/alibaba/alimei/restfulapi/DefaultHttpClientFactory;->maxConnections:I

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/alibaba/alimei/restfulapi/DefaultHttpClientFactory;
    .locals 2

    .prologue
    .line 53
    const-class v1, Lcom/alibaba/alimei/restfulapi/DefaultHttpClientFactory;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alibaba/alimei/restfulapi/DefaultHttpClientFactory;->sInstance:Lcom/alibaba/alimei/restfulapi/DefaultHttpClientFactory;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/alibaba/alimei/restfulapi/DefaultHttpClientFactory;

    invoke-direct {v0}, Lcom/alibaba/alimei/restfulapi/DefaultHttpClientFactory;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/restfulapi/DefaultHttpClientFactory;->sInstance:Lcom/alibaba/alimei/restfulapi/DefaultHttpClientFactory;

    .line 56
    :cond_0
    sget-object v0, Lcom/alibaba/alimei/restfulapi/DefaultHttpClientFactory;->sInstance:Lcom/alibaba/alimei/restfulapi/DefaultHttpClientFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static final internalNewHttpClient(IIII)Lorg/apache/http/client/HttpClient;
    .locals 1
    .param p0, "timeout"    # I
    .param p1, "sotimeout"    # I
    .param p2, "connectionTimeout"    # I
    .param p3, "maxConnection"    # I

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/alibaba/alimei/restfulapi/DefaultHttpClientFactory;->internalNewHttpClient(IIIIZ)Lorg/apache/http/client/HttpClient;

    move-result-object v0

    return-object v0
.end method

.method private static final internalNewHttpClient(IIIIZ)Lorg/apache/http/client/HttpClient;
    .locals 9
    .param p0, "timeout"    # I
    .param p1, "sotimeout"    # I
    .param p2, "connectionTimeout"    # I
    .param p3, "maxConnection"    # I
    .param p4, "isSystemDefaultClient"    # Z

    .prologue
    const/4 v6, 0x1

    const/16 v8, 0x1bb

    .line 88
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 90
    .local v1, "httpParams":Lorg/apache/http/params/BasicHttpParams;
    int-to-long v4, p0

    invoke-static {v1, v4, v5}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 91
    new-instance v4, Lorg/apache/http/conn/params/ConnPerRouteBean;

    invoke-direct {v4, p3}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    invoke-static {v1, v4}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    .line 92
    const/16 v4, 0xa

    invoke-static {v1, v4}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V

    .line 94
    invoke-static {v1, p1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 95
    invoke-static {v1, p2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 96
    invoke-static {v1, v6}, Lorg/apache/http/params/HttpConnectionParams;->setTcpNoDelay(Lorg/apache/http/params/HttpParams;Z)V

    .line 97
    const/16 v4, 0x2000

    invoke-static {v1, v4}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 99
    sget-object v4, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v1, v4}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 101
    const-string/jumbo v4, "android-async-http/%s (http://loopj.com/android-async-http)"

    new-array v5, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "1.4.1"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 103
    sget-object v4, Lcom/alibaba/alimei/restfulapi/DefaultHttpClientFactory;->userSSLSocketFactory:Lorg/apache/http/conn/ssl/SSLSocketFactory;

    if-nez v4, :cond_0

    .line 104
    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 135
    :goto_0
    return-object v4

    .line 106
    :cond_0
    new-instance v2, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 107
    .local v2, "schemeRegistry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v4, Lorg/apache/http/conn/scheme/Scheme;

    const-string/jumbo v5, "http"

    .line 108
    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v6

    const/16 v7, 0x50

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    .line 107
    invoke-virtual {v2, v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 111
    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v4

    .line 110
    invoke-static {v4}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    .line 112
    .local v3, "trustStore":Ljava/security/KeyStore;
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 113
    if-eqz p4, :cond_1

    .line 115
    new-instance v4, Lorg/apache/http/conn/scheme/Scheme;

    const-string/jumbo v5, "https"

    sget-object v6, Lcom/alibaba/alimei/restfulapi/DefaultHttpClientFactory;->userSSLSocketFactory:Lorg/apache/http/conn/ssl/SSLSocketFactory;

    const/16 v7, 0x1bb

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 119
    :goto_1
    new-instance v4, Lorg/apache/http/conn/scheme/Scheme;

    const-string/jumbo v5, "httpts"

    .line 120
    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v6

    const/16 v7, 0x1bb

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    .line 119
    invoke-virtual {v2, v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 122
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 125
    .local v0, "cm":Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4, v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 127
    .end local v0    # "cm":Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
    .end local v3    # "trustStore":Ljava/security/KeyStore;
    :catch_0
    move-exception v4

    new-instance v4, Lorg/apache/http/conn/scheme/Scheme;

    const-string/jumbo v5, "https"

    .line 128
    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v6

    invoke-direct {v4, v5, v6, v8}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    .line 127
    invoke-virtual {v2, v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 129
    new-instance v4, Lorg/apache/http/conn/scheme/Scheme;

    const-string/jumbo v5, "httpts"

    .line 130
    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v6

    invoke-direct {v4, v5, v6, v8}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    .line 129
    invoke-virtual {v2, v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 132
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 135
    .restart local v0    # "cm":Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4, v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    goto :goto_0

    .line 117
    .end local v0    # "cm":Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
    .restart local v3    # "trustStore":Ljava/security/KeyStore;
    :cond_1
    :try_start_1
    new-instance v4, Lorg/apache/http/conn/scheme/Scheme;

    const-string/jumbo v5, "https"

    sget-object v6, Lcom/alibaba/alimei/restfulapi/DefaultHttpClientFactory;->userSSLSocketFactory:Lorg/apache/http/conn/ssl/SSLSocketFactory;

    const/16 v7, 0x1bb

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static setUserSSLSocketFactory(Lorg/apache/http/conn/ssl/SSLSocketFactory;)V
    .locals 0
    .param p0, "userSSLSocketFactory"    # Lorg/apache/http/conn/ssl/SSLSocketFactory;

    .prologue
    .line 156
    sput-object p0, Lcom/alibaba/alimei/restfulapi/DefaultHttpClientFactory;->userSSLSocketFactory:Lorg/apache/http/conn/ssl/SSLSocketFactory;

    .line 157
    return-void
.end method


# virtual methods
.method public getIpByHttpDns(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;)Ljava/lang/String;
    .locals 1
    .param p1, "hostAddress"    # Ljava/lang/String;
    .param p2, "method"    # Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    .prologue
    .line 142
    const/4 v0, 0x0

    return-object v0
.end method

.method public isAutoShutDownAfterConnectionExecute()Z
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x1

    return v0
.end method

.method public newHttpClient(IIII)Lorg/apache/http/client/HttpClient;
    .locals 1
    .param p1, "timeout"    # I
    .param p2, "sotimeout"    # I
    .param p3, "connectionTimeout"    # I
    .param p4, "maxConnection"    # I

    .prologue
    .line 78
    invoke-static {p1, p2, p3, p4}, Lcom/alibaba/alimei/restfulapi/DefaultHttpClientFactory;->internalNewHttpClient(IIII)Lorg/apache/http/client/HttpClient;

    move-result-object v0

    return-object v0
.end method

.method public newHttpClientForAttachment(Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;)Lorg/apache/http/client/HttpClient;
    .locals 4
    .param p1, "method"    # Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 71
    const/16 v0, 0xbb8

    const v1, 0x1d4c0

    const/16 v2, 0x1388

    sget v3, Lcom/alibaba/alimei/restfulapi/DefaultHttpClientFactory;->maxConnections:I

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/alimei/restfulapi/DefaultHttpClientFactory;->internalNewHttpClient(IIII)Lorg/apache/http/client/HttpClient;

    move-result-object v0

    return-object v0
.end method

.method public newHttpClientForGet(Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;)Lorg/apache/http/client/HttpClient;
    .locals 5
    .param p1, "method"    # Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 61
    const/16 v1, 0xbb8

    const v2, 0x1d4c0

    const/16 v3, 0x1388

    sget v4, Lcom/alibaba/alimei/restfulapi/DefaultHttpClientFactory;->maxConnections:I

    sget-object v0, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;->METHOD_SYSTEM_APPVER:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v3, v4, v0}, Lcom/alibaba/alimei/restfulapi/DefaultHttpClientFactory;->internalNewHttpClient(IIIIZ)Lorg/apache/http/client/HttpClient;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newHttpClientForPost(Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;)Lorg/apache/http/client/HttpClient;
    .locals 5
    .param p1, "method"    # Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 66
    const/16 v1, 0xbb8

    const v2, 0x1d4c0

    const/16 v3, 0x1388

    sget v4, Lcom/alibaba/alimei/restfulapi/DefaultHttpClientFactory;->maxConnections:I

    sget-object v0, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;->METHOD_SYSTEM_APPVER:Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v3, v4, v0}, Lcom/alibaba/alimei/restfulapi/DefaultHttpClientFactory;->internalNewHttpClient(IIIIZ)Lorg/apache/http/client/HttpClient;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
