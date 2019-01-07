.class Lcom/alipay/android/phone/mrpc/core/AndroidHttpClient$2;
.super Lorg/apache/http/impl/client/DefaultHttpClient;
.source "AndroidHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/phone/mrpc/core/AndroidHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/android/phone/mrpc/core/AndroidHttpClient;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/mrpc/core/AndroidHttpClient;Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    .locals 0
    .param p2, "x0"    # Lorg/apache/http/conn/ClientConnectionManager;
    .param p3, "x1"    # Lorg/apache/http/params/HttpParams;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/alipay/android/phone/mrpc/core/AndroidHttpClient$2;->this$0:Lcom/alipay/android/phone/mrpc/core/AndroidHttpClient;

    invoke-direct {p0, p2, p3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    return-void
.end method


# virtual methods
.method protected createConnectionKeepAliveStrategy()Lorg/apache/http/conn/ConnectionKeepAliveStrategy;
    .locals 1

    .prologue
    .line 219
    new-instance v0, Lcom/alipay/android/phone/mrpc/core/AndroidHttpClient$2$2;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/mrpc/core/AndroidHttpClient$2$2;-><init>(Lcom/alipay/android/phone/mrpc/core/AndroidHttpClient$2;)V

    .line 225
    .local v0, "keepAliveStrategy":Lorg/apache/http/conn/ConnectionKeepAliveStrategy;
    return-object v0
.end method

.method protected createHttpContext()Lorg/apache/http/protocol/HttpContext;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 186
    new-instance v0, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v0}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    .line 187
    .local v0, "context":Lorg/apache/http/protocol/HttpContext;
    const-string/jumbo v1, "http.authscheme-registry"

    invoke-virtual {p0}, Lcom/alipay/android/phone/mrpc/core/AndroidHttpClient$2;->getAuthSchemes()Lorg/apache/http/auth/AuthSchemeRegistry;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 188
    const-string/jumbo v1, "http.cookiespec-registry"

    invoke-virtual {p0}, Lcom/alipay/android/phone/mrpc/core/AndroidHttpClient$2;->getCookieSpecs()Lorg/apache/http/cookie/CookieSpecRegistry;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 189
    const-string/jumbo v1, "http.auth.credentials-provider"

    invoke-virtual {p0}, Lcom/alipay/android/phone/mrpc/core/AndroidHttpClient$2;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 190
    return-object v0
.end method

.method protected createHttpProcessor()Lorg/apache/http/protocol/BasicHttpProcessor;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 175
    invoke-super {p0}, Lorg/apache/http/impl/client/DefaultHttpClient;->createHttpProcessor()Lorg/apache/http/protocol/BasicHttpProcessor;

    move-result-object v0

    .line 176
    .local v0, "processor":Lorg/apache/http/protocol/BasicHttpProcessor;
    invoke-static {}, Lcom/alipay/android/phone/mrpc/core/AndroidHttpClient;->access$000()Lorg/apache/http/HttpRequestInterceptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 177
    new-instance v1, Lcom/alipay/android/phone/mrpc/core/AndroidHttpClient$CurlLogger;

    iget-object v2, p0, Lcom/alipay/android/phone/mrpc/core/AndroidHttpClient$2;->this$0:Lcom/alipay/android/phone/mrpc/core/AndroidHttpClient;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/alipay/android/phone/mrpc/core/AndroidHttpClient$CurlLogger;-><init>(Lcom/alipay/android/phone/mrpc/core/AndroidHttpClient;Lcom/alipay/android/phone/mrpc/core/AndroidHttpClient$1;)V

    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 179
    return-object v0
.end method

.method protected createRedirectHandler()Lorg/apache/http/client/RedirectHandler;
    .locals 1

    .prologue
    .line 195
    new-instance v0, Lcom/alipay/android/phone/mrpc/core/AndroidHttpClient$2$1;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/mrpc/core/AndroidHttpClient$2$1;-><init>(Lcom/alipay/android/phone/mrpc/core/AndroidHttpClient$2;)V

    .line 214
    .local v0, "handler":Lorg/apache/http/client/RedirectHandler;
    return-object v0
.end method
