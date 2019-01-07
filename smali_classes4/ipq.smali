.class public final Lipq;
.super Lcom/uc/webview/export/WebViewClient;
.source "UCWebViewClient.java"


# instance fields
.field private a:Lcom/alipay/mobile/nebula/webview/APWebView;

.field private b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

.field private c:J


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebula/webview/APWebView;Lcom/alipay/mobile/nebula/webview/APWebViewClient;)V
    .locals 0
    .param p1, "apWebView"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "apWebViewClient"    # Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/uc/webview/export/WebViewClient;-><init>()V

    .line 36
    iput-object p1, p0, Lipq;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    .line 37
    iput-object p2, p0, Lipq;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    .line 38
    return-void
.end method

.method private static a()J
    .locals 8

    .prologue
    .line 62
    const-wide/16 v0, 0x0

    .line 66
    .local v0, "flow":J
    :try_start_0
    invoke-static {}, Lcom/uc/webview/export/extension/UCCore;->getTraffic()Landroid/util/Pair;

    move-result-object v3

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {}, Lcom/uc/webview/export/extension/UCCore;->getTraffic()Landroid/util/Pair;

    move-result-object v3

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    add-long v0, v4, v6

    .line 70
    :goto_0
    return-wide v0

    .line 67
    :catch_0
    move-exception v2

    .line 68
    .local v2, "t":Ljava/lang/Throwable;
    const-string/jumbo v3, "H5UCWebViewClient"

    const-string/jumbo v4, "exception detail "

    invoke-static {v3, v4, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public final doUpdateVisitedHistory(Lcom/uc/webview/export/WebView;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "isReload"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 147
    iget-object v0, p0, Lipq;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lipq;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    iget-object v1, p0, Lipq;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, v1, p2, p3}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->doUpdateVisitedHistory(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;Z)V

    .line 150
    :cond_0
    return-void
.end method

.method public final onFormResubmission(Lcom/uc/webview/export/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 2
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "dontResend"    # Landroid/os/Message;
    .param p3, "resend"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 140
    iget-object v0, p0, Lipq;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lipq;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    iget-object v1, p0, Lipq;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, v1, p2, p3}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->onFormResubmission(Lcom/alipay/mobile/nebula/webview/APWebView;Landroid/os/Message;Landroid/os/Message;)V

    .line 143
    :cond_0
    return-void
.end method

.method public final onLoadResource(Lcom/uc/webview/export/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 75
    iget-object v0, p0, Lipq;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lipq;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    iget-object v1, p0, Lipq;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, v1, p2}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->onLoadResource(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;)V

    .line 78
    :cond_0
    return-void
.end method

.method public final onPageFinished(Lcom/uc/webview/export/WebView;Ljava/lang/String;)V
    .locals 6
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 55
    iget-object v2, p0, Lipq;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    if-eqz v2, :cond_0

    .line 56
    invoke-static {}, Lipq;->a()J

    move-result-wide v2

    iget-wide v4, p0, Lipq;->c:J

    sub-long v0, v2, v4

    .line 57
    .local v0, "pageSize":J
    iget-object v2, p0, Lipq;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    iget-object v3, p0, Lipq;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v2, v3, p2, v0, v1}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->onPageFinished(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;J)V

    .line 59
    .end local v0    # "pageSize":J
    :cond_0
    return-void
.end method

.method public final onPageStarted(Lcom/uc/webview/export/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 47
    iget-object v0, p0, Lipq;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    if-eqz v0, :cond_0

    .line 48
    invoke-static {}, Lipq;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lipq;->c:J

    .line 49
    iget-object v0, p0, Lipq;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    iget-object v1, p0, Lipq;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, v1, p2, p3}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->onPageStarted(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 51
    :cond_0
    return-void
.end method

.method public final onReceivedError(Lcom/uc/webview/export/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 124
    iget-object v0, p0, Lipq;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lipq;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    iget-object v1, p0, Lipq;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->onReceivedError(Lcom/alipay/mobile/nebula/webview/APWebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 127
    :cond_0
    return-void
.end method

.method public final onReceivedHttpAuthRequest(Lcom/uc/webview/export/WebView;Lcom/uc/webview/export/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "handler"    # Lcom/uc/webview/export/HttpAuthHandler;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "realm"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 163
    iget-object v0, p0, Lipq;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lipq;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    iget-object v1, p0, Lipq;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    new-instance v2, Lipl;

    invoke-direct {v2, p2}, Lipl;-><init>(Lcom/uc/webview/export/HttpAuthHandler;)V

    invoke-interface {v0, v1, v2, p3, p4}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->onReceivedHttpAuthRequest(Lcom/alipay/mobile/nebula/webview/APWebView;Lcom/alipay/mobile/nebula/webview/APHttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :cond_0
    return-void
.end method

.method public final onReceivedHttpError(Lcom/uc/webview/export/WebView;Lcom/uc/webview/export/WebResourceRequest;Lcom/uc/webview/export/WebResourceResponse;)V
    .locals 4
    .param p1, "webView"    # Lcom/uc/webview/export/WebView;
    .param p2, "webResourceRequest"    # Lcom/uc/webview/export/WebResourceRequest;
    .param p3, "webResourceResponse"    # Lcom/uc/webview/export/WebResourceResponse;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 131
    iget-object v2, p0, Lipq;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    if-eqz v2, :cond_0

    .line 132
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/uc/webview/export/WebResourceResponse;->getStatusCode()I

    move-result v1

    .line 133
    .local v1, "statusCode":I
    :goto_0
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/uc/webview/export/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "requestUrl":Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Lipq;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    iget-object v3, p0, Lipq;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v2, v3, v1, v0}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->onReceivedHttpError(Lcom/alipay/mobile/nebula/webview/APWebView;ILjava/lang/String;)V

    .line 136
    .end local v0    # "requestUrl":Ljava/lang/String;
    .end local v1    # "statusCode":I
    :cond_0
    return-void

    .line 132
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 133
    .restart local v1    # "statusCode":I
    :cond_2
    const-string/jumbo v0, ""

    goto :goto_1
.end method

.method public final onReceivedSslError(Lcom/uc/webview/export/WebView;Lcom/uc/webview/export/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 6
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "handler"    # Lcom/uc/webview/export/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 154
    iget-object v0, p0, Lipq;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lipq;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    iget-object v1, p0, Lipq;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    new-instance v2, Lipn;

    invoke-direct {v2, p2}, Lipn;-><init>(Lcom/uc/webview/export/SslErrorHandler;)V

    new-instance v3, Lipm;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5, p3}, Lipm;-><init>(ILandroid/net/http/SslCertificate;Landroid/net/http/SslError;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->onReceivedSslError(Lcom/alipay/mobile/nebula/webview/APWebView;Lcom/alipay/mobile/nebula/webview/APSslErrorHandler;Landroid/net/http/SslError;)V

    .line 158
    :cond_0
    return-void
.end method

.method public final onScaleChanged(Lcom/uc/webview/export/WebView;FF)V
    .locals 2
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "oldScale"    # F
    .param p3, "newScale"    # F

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 182
    iget-object v0, p0, Lipq;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lipq;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    iget-object v1, p0, Lipq;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, v1, p2, p3}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->onScaleChanged(Lcom/alipay/mobile/nebula/webview/APWebView;FF)V

    .line 185
    :cond_0
    return-void
.end method

.method public final onUnhandledKeyEvent(Lcom/uc/webview/export/WebView;Landroid/view/KeyEvent;)V
    .locals 2
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "event"    # Landroid/view/KeyEvent;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 175
    iget-object v0, p0, Lipq;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lipq;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    iget-object v1, p0, Lipq;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, v1, p2}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->onUnhandledKeyEvent(Lcom/alipay/mobile/nebula/webview/APWebView;Landroid/view/KeyEvent;)V

    .line 178
    :cond_0
    return-void
.end method

.method public final shouldInterceptRequest(Lcom/uc/webview/export/WebView;Ljava/lang/String;)Lcom/uc/webview/export/WebResourceResponse;
    .locals 9
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 82
    iget-object v6, p0, Lipq;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    if-eqz v6, :cond_0

    if-nez p1, :cond_2

    .line 83
    :cond_0
    const/4 v3, 0x0

    .line 118
    :cond_1
    :goto_0
    return-object v3

    .line 85
    :cond_2
    iget-object v6, p0, Lipq;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    iget-object v7, p0, Lipq;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v6, v7, p2}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->shouldInterceptRequest(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v4

    .line 86
    .local v4, "rsp":Landroid/webkit/WebResourceResponse;
    const/4 v3, 0x0

    .line 87
    .local v3, "response":Lcom/uc/webview/export/WebResourceResponse;
    if-eqz v4, :cond_1

    .line 88
    new-instance v3, Lcom/uc/webview/export/WebResourceResponse;

    .end local v3    # "response":Lcom/uc/webview/export/WebResourceResponse;
    invoke-virtual {v4}, Landroid/webkit/WebResourceResponse;->getMimeType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Landroid/webkit/WebResourceResponse;->getEncoding()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Landroid/webkit/WebResourceResponse;->getData()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v3, v6, v7, v8}, Lcom/uc/webview/export/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 89
    .restart local v3    # "response":Lcom/uc/webview/export/WebResourceResponse;
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 90
    .local v5, "rspHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v6, "Cache-Control"

    const-string/jumbo v7, "no-cache"

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object v6, p0, Lipq;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    invoke-interface {v6}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->getPageUrl()Ljava/lang/String;

    move-result-object v2

    .line 92
    .local v2, "pageUrl":Ljava/lang/String;
    if-eqz v2, :cond_3

    invoke-static {p2}, Lcom/alipay/mobile/nebula/util/H5ResourceCORSUtil;->needAddHeader(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 94
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5ResourceCORSUtil;->getCORSUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "corsUrl":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 95
    const-string/jumbo v6, "Access-Control-Allow-Origin"

    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .end local v0    # "corsUrl":Ljava/lang/String;
    :cond_3
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5ResourceCORSUtil;->getCORSUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, "headUrl":Ljava/lang/String;
    const-string/jumbo v6, "Access-Control-Allow-Origin"

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 101
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->enableCheckCrossOrigin()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 102
    invoke-static {p2}, Lcom/alipay/mobile/nebula/util/H5Utils;->containNebulaAddcors(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 103
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 104
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 105
    const-string/jumbo v6, "Access-Control-Allow-Origin"

    invoke-interface {v5, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    :cond_4
    const-string/jumbo v6, "Access-Control-Allow-Origin"

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 110
    invoke-static {p2}, Lcom/alipay/mobile/nebula/util/H5Utils;->addChooseImageCrossOrigin(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 111
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 112
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 113
    const-string/jumbo v6, "Access-Control-Allow-Origin"

    invoke-interface {v5, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    :cond_5
    invoke-virtual {v3, v5}, Lcom/uc/webview/export/WebResourceResponse;->setResponseHeaders(Ljava/util/Map;)V

    goto/16 :goto_0
.end method

.method public final shouldOverrideKeyEvent(Lcom/uc/webview/export/WebView;Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "event"    # Landroid/view/KeyEvent;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 170
    iget-object v0, p0, Lipq;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lipq;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    iget-object v1, p0, Lipq;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, v1, p2}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->shouldOverrideKeyEvent(Lcom/alipay/mobile/nebula/webview/APWebView;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final shouldOverrideUrlLoading(Lcom/uc/webview/export/WebView;Ljava/lang/String;)Z
    .locals 2
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 42
    iget-object v0, p0, Lipq;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lipq;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    iget-object v1, p0, Lipq;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, v1, p2}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->shouldOverrideUrlLoading(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
