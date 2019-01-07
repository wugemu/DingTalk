.class Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "AndroidWebViewClient.java"


# instance fields
.field private currentTrafficFlow:J

.field private mAPWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

.field private mAPWebViewClient:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

.field private uid:I


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebula/webview/APWebView;Lcom/alipay/mobile/nebula/webview/APWebViewClient;)V
    .locals 1
    .param p1, "apWebView"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "apWebViewClient"    # Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 38
    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->mAPWebViewClient:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    .line 39
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->mAPWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    .line 40
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getUid(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->uid:I

    .line 41
    return-void
.end method

.method private getTrafficFlow()J
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 58
    const-wide/16 v0, 0x0

    .line 60
    .local v0, "begUidRx":J
    :try_start_0
    iget v2, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->uid:I

    invoke-static {v2}, Landroid/net/TrafficStats;->getUidRxBytes(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 64
    :goto_0
    return-wide v0

    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "isReload"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 165
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->mAPWebViewClient:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->mAPWebViewClient:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->mAPWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, v1, p2, p3}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->doUpdateVisitedHistory(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;Z)V

    .line 168
    :cond_0
    return-void
.end method

.method public onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "dontResend"    # Landroid/os/Message;
    .param p3, "resend"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 157
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->mAPWebViewClient:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->mAPWebViewClient:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->mAPWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, v1, p2, p3}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->onFormResubmission(Lcom/alipay/mobile/nebula/webview/APWebView;Landroid/os/Message;Landroid/os/Message;)V

    .line 160
    :cond_0
    return-void
.end method

.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->mAPWebViewClient:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->mAPWebViewClient:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->mAPWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, v1, p2}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->onLoadResource(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;)V

    .line 80
    :cond_0
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 69
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->mAPWebViewClient:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    if-eqz v2, :cond_0

    .line 70
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->getTrafficFlow()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->currentTrafficFlow:J

    sub-long v0, v2, v4

    .line 71
    .local v0, "pageSize":J
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->mAPWebViewClient:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->mAPWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v2, v3, p2, v0, v1}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->onPageFinished(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;J)V

    .line 73
    .end local v0    # "pageSize":J
    :cond_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->mAPWebViewClient:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    if-eqz v0, :cond_0

    .line 52
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->getTrafficFlow()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->currentTrafficFlow:J

    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->mAPWebViewClient:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->mAPWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, v1, p2, p3}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->onPageStarted(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 55
    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 139
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->mAPWebViewClient:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->mAPWebViewClient:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->mAPWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->onReceivedError(Lcom/alipay/mobile/nebula/webview/APWebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 142
    :cond_0
    return-void
.end method

.method public onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/HttpAuthHandler;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "realm"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 181
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->mAPWebViewClient:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->mAPWebViewClient:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->mAPWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    new-instance v2, Lcom/alipay/mobile/nebulacore/android/AndroidHttpAuthHandler;

    invoke-direct {v2, p2}, Lcom/alipay/mobile/nebulacore/android/AndroidHttpAuthHandler;-><init>(Landroid/webkit/HttpAuthHandler;)V

    .line 183
    invoke-interface {v0, v1, v2, p3, p4}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->onReceivedHttpAuthRequest(Lcom/alipay/mobile/nebula/webview/APWebView;Lcom/alipay/mobile/nebula/webview/APHttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    :cond_0
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 172
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->mAPWebViewClient:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->mAPWebViewClient:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->mAPWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    new-instance v2, Lcom/alipay/mobile/nebulacore/android/AndroidSslErrorHandler;

    invoke-direct {v2, p2}, Lcom/alipay/mobile/nebulacore/android/AndroidSslErrorHandler;-><init>(Landroid/webkit/SslErrorHandler;)V

    new-instance v3, Lcom/alipay/mobile/nebulacore/android/AndroidSslError;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5, p3}, Lcom/alipay/mobile/nebulacore/android/AndroidSslError;-><init>(ILandroid/net/http/SslCertificate;Landroid/net/http/SslError;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->onReceivedSslError(Lcom/alipay/mobile/nebula/webview/APWebView;Lcom/alipay/mobile/nebula/webview/APSslErrorHandler;Landroid/net/http/SslError;)V

    .line 176
    :cond_0
    return-void
.end method

.method public onScaleChanged(Landroid/webkit/WebView;FF)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "oldScale"    # F
    .param p3, "newScale"    # F

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 203
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->mAPWebViewClient:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->mAPWebViewClient:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->mAPWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, v1, p2, p3}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->onScaleChanged(Lcom/alipay/mobile/nebula/webview/APWebView;FF)V

    .line 206
    :cond_0
    return-void
.end method

.method public onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "event"    # Landroid/view/KeyEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 196
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->mAPWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->mAPWebViewClient:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->mAPWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, v1, p2}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->onUnhandledKeyEvent(Lcom/alipay/mobile/nebula/webview/APWebView;Landroid/view/KeyEvent;)V

    .line 199
    :cond_0
    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 9
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "request"    # Landroid/webkit/WebResourceRequest;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 94
    const/4 v5, 0x0

    .line 95
    .local v5, "response":Landroid/webkit/WebResourceResponse;
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->mAPWebViewClient:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    if-eqz v7, :cond_3

    .line 96
    new-instance v0, Lcom/alipay/mobile/nebulacore/android/AndroidWebResourceRequest;

    invoke-direct {v0, p2}, Lcom/alipay/mobile/nebulacore/android/AndroidWebResourceRequest;-><init>(Landroid/webkit/WebResourceRequest;)V

    .line 97
    .local v0, "ar":Lcom/alipay/mobile/nebulacore/android/AndroidWebResourceRequest;
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->mAPWebViewClient:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->mAPWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v7, v8, v0}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->shouldInterceptRequest(Lcom/alipay/mobile/nebula/webview/APWebView;Lcom/alipay/mobile/nebula/webview/APWebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object v5

    .line 98
    if-eqz v5, :cond_3

    .line 99
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .line 101
    .local v4, "requestUrl":Ljava/lang/String;
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 102
    .local v6, "rspHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v7, "Cache-Control"

    const-string/jumbo v8, "no-cache"

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->mAPWebViewClient:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    invoke-interface {v7}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->getPageUrl()Ljava/lang/String;

    move-result-object v3

    .line 105
    .local v3, "pageUrl":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5ResourceCORSUtil;->needAddHeader(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 107
    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5ResourceCORSUtil;->getCORSUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "corsUrl":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 108
    const-string/jumbo v7, "Access-Control-Allow-Origin"

    invoke-interface {v6, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .end local v1    # "corsUrl":Ljava/lang/String;
    :cond_0
    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5ResourceCORSUtil;->getCORSUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 113
    .local v2, "headUrl":Ljava/lang/String;
    const-string/jumbo v7, "Access-Control-Allow-Origin"

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 114
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->enableCheckCrossOrigin()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 115
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 116
    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->containNebulaAddcors(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 117
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 118
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 119
    const-string/jumbo v7, "Access-Control-Allow-Origin"

    invoke-interface {v6, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    :cond_1
    const-string/jumbo v7, "Access-Control-Allow-Origin"

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 124
    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->addChooseImageCrossOrigin(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 125
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 126
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 127
    const-string/jumbo v7, "Access-Control-Allow-Origin"

    invoke-interface {v6, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    :cond_2
    invoke-virtual {v5, v6}, Landroid/webkit/WebResourceResponse;->setResponseHeaders(Ljava/util/Map;)V

    .line 133
    .end local v0    # "ar":Lcom/alipay/mobile/nebulacore/android/AndroidWebResourceRequest;
    .end local v2    # "headUrl":Ljava/lang/String;
    .end local v3    # "pageUrl":Ljava/lang/String;
    .end local v4    # "requestUrl":Ljava/lang/String;
    .end local v6    # "rspHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    return-object v5
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 84
    const/4 v0, 0x0

    .line 85
    .local v0, "rsp":Landroid/webkit/WebResourceResponse;
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->mAPWebViewClient:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    if-eqz v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->mAPWebViewClient:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->mAPWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v1, v2, p2}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->shouldInterceptRequest(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    .line 88
    :cond_0
    return-object v0
.end method

.method public shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "event"    # Landroid/view/KeyEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 190
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->mAPWebViewClient:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->mAPWebViewClient:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->mAPWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    .line 191
    invoke-interface {v0, v1, p2}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->shouldOverrideKeyEvent(Lcom/alipay/mobile/nebula/webview/APWebView;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 190
    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->mAPWebViewClient:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->mAPWebViewClient:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;->mAPWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    .line 46
    invoke-interface {v0, v1, p2}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->shouldOverrideUrlLoading(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 45
    goto :goto_0
.end method
