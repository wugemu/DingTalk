.class public Lcom/alipay/mobile/nebulauc/impl/JsPreloadWebviewClient;
.super Ljava/lang/Object;
.source "JsPreloadWebviewClient.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/webview/APWebViewClient;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private buildContent(Landroid/net/Uri;Ljava/lang/String;Ljava/io/InputStream;)Landroid/webkit/WebResourceResponse;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "inputStream"    # Ljava/io/InputStream;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 66
    const/4 v0, 0x0

    .line 67
    .local v0, "mimeType":Ljava/lang/String;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 68
    if-nez p1, :cond_0

    .line 69
    invoke-static {p2}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 71
    :cond_0
    if-eqz p1, :cond_1

    .line 72
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    :cond_1
    new-instance v1, Landroid/webkit/WebResourceResponse;

    const-string/jumbo v2, "UTF-8"

    invoke-direct {v1, v0, v2, p3}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object v1
.end method

.method static getResource(Ljava/lang/String;)[B
    .locals 4
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 211
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getH5Service()Lcom/alipay/mobile/h5container/service/H5Service;

    move-result-object v0

    .line 212
    .local v0, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    invoke-virtual {v0, p0}, Lcom/alipay/mobile/h5container/service/H5Service;->getH5GlobalDegradePkg(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 215
    .end local v0    # "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    :goto_0
    return-object v2

    .line 213
    :catch_0
    move-exception v1

    .line 214
    .local v1, "thr":Ljava/lang/Throwable;
    const-string/jumbo v2, "JsPreloadWebviewClient"

    const-string/jumbo v3, "getResource error!"

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 215
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public doUpdateVisitedHistory(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "apWebView"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "b"    # Z

    .prologue
    .line 146
    return-void
.end method

.method public getJSBridge()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRequestMap()Ljava/util/Map;
    .locals 1

    .prologue
    .line 205
    const/4 v0, 0x0

    return-object v0
.end method

.method public onFirstVisuallyRender(Lcom/alipay/mobile/nebula/webview/APWebView;)V
    .locals 0
    .param p1, "apWebView"    # Lcom/alipay/mobile/nebula/webview/APWebView;

    .prologue
    .line 136
    return-void
.end method

.method public onFormResubmission(Lcom/alipay/mobile/nebula/webview/APWebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 0
    .param p1, "apWebView"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "message"    # Landroid/os/Message;
    .param p3, "message1"    # Landroid/os/Message;

    .prologue
    .line 141
    return-void
.end method

.method public onLoadResource(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "apWebView"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 57
    return-void
.end method

.method public onPageFinished(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;J)V
    .locals 0
    .param p1, "apWebView"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "l"    # J

    .prologue
    .line 53
    return-void
.end method

.method public onPageStarted(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "apWebView"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 48
    return-void
.end method

.method public onReceivedError(Lcom/alipay/mobile/nebula/webview/APWebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "apWebView"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "i"    # I
    .param p3, "s"    # Ljava/lang/String;
    .param p4, "s1"    # Ljava/lang/String;

    .prologue
    .line 116
    return-void
.end method

.method public onReceivedHttpAuthRequest(Lcom/alipay/mobile/nebula/webview/APWebView;Lcom/alipay/mobile/nebula/webview/APHttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "apWebView"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "apHttpAuthHandler"    # Lcom/alipay/mobile/nebula/webview/APHttpAuthHandler;
    .param p3, "s"    # Ljava/lang/String;
    .param p4, "s1"    # Ljava/lang/String;

    .prologue
    .line 156
    return-void
.end method

.method public onReceivedHttpError(Lcom/alipay/mobile/nebula/webview/APWebView;ILjava/lang/String;)V
    .locals 0
    .param p1, "apWebView"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "i"    # I
    .param p3, "s"    # Ljava/lang/String;

    .prologue
    .line 121
    return-void
.end method

.method public onReceivedLoginRequest(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "apWebView"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "s1"    # Ljava/lang/String;
    .param p4, "s2"    # Ljava/lang/String;

    .prologue
    .line 176
    return-void
.end method

.method public onReceivedResponseHeader(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 196
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    return-void
.end method

.method public onReceivedSslError(Lcom/alipay/mobile/nebula/webview/APWebView;Lcom/alipay/mobile/nebula/webview/APSslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0
    .param p1, "apWebView"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "apSslErrorHandler"    # Lcom/alipay/mobile/nebula/webview/APSslErrorHandler;
    .param p3, "sslError"    # Landroid/net/http/SslError;

    .prologue
    .line 151
    return-void
.end method

.method public onResourceFinishLoad(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;J)V
    .locals 0
    .param p1, "apWebView"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "l"    # J

    .prologue
    .line 191
    return-void
.end method

.method public onResourceResponse(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/util/HashMap;)V
    .locals 0
    .param p1, "apWebView"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/nebula/webview/APWebView;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 186
    .local p2, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public onScaleChanged(Lcom/alipay/mobile/nebula/webview/APWebView;FF)V
    .locals 0
    .param p1, "apWebView"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "v"    # F
    .param p3, "v1"    # F

    .prologue
    .line 171
    return-void
.end method

.method public onTooManyRedirects(Lcom/alipay/mobile/nebula/webview/APWebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 0
    .param p1, "apWebView"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "message"    # Landroid/os/Message;
    .param p3, "message1"    # Landroid/os/Message;

    .prologue
    .line 111
    return-void
.end method

.method public onUnhandledKeyEvent(Lcom/alipay/mobile/nebula/webview/APWebView;Landroid/view/KeyEvent;)V
    .locals 0
    .param p1, "apWebView"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 166
    return-void
.end method

.method public onWebViewEvent(Lcom/alipay/mobile/nebula/webview/APWebView;ILjava/lang/Object;)V
    .locals 0
    .param p1, "apWebView"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "i"    # I
    .param p3, "o"    # Ljava/lang/Object;

    .prologue
    .line 131
    return-void
.end method

.method public shouldInterceptRequest(Lcom/alipay/mobile/nebula/webview/APWebView;Lcom/alipay/mobile/nebula/webview/APWebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 1
    .param p1, "apWebView"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "apWebResourceRequest"    # Lcom/alipay/mobile/nebula/webview/APWebResourceRequest;

    .prologue
    .line 62
    const/4 v0, 0x0

    return-object v0
.end method

.method public shouldInterceptRequest(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 4
    .param p1, "apWebView"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "s"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 81
    const-string/jumbo v3, "https://appx/af-appx.min.js"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 82
    new-instance v3, Lcom/alipay/mobile/nebulauc/impl/JsPreloadWebviewClient$1;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/nebulauc/impl/JsPreloadWebviewClient$1;-><init>(Lcom/alipay/mobile/nebulauc/impl/JsPreloadWebviewClient;)V

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    .line 98
    :cond_0
    invoke-static {p2}, Lcom/alipay/mobile/nebulauc/impl/JsPreloadWebviewClient;->getResource(Ljava/lang/String;)[B

    move-result-object v0

    .line 99
    .local v0, "data":[B
    if-eqz v0, :cond_1

    .line 100
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 101
    .local v1, "inputStream":Ljava/io/InputStream;
    invoke-direct {p0, v2, p2, v1}, Lcom/alipay/mobile/nebulauc/impl/JsPreloadWebviewClient;->buildContent(Landroid/net/Uri;Ljava/lang/String;Ljava/io/InputStream;)Landroid/webkit/WebResourceResponse;

    move-result-object v2

    .line 103
    .end local v1    # "inputStream":Ljava/io/InputStream;
    :cond_1
    return-object v2
.end method

.method public shouldInterceptResponse(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/util/HashMap;)Z
    .locals 1
    .param p1, "apWebView"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/nebula/webview/APWebView;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 125
    .local p2, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public shouldOverrideKeyEvent(Lcom/alipay/mobile/nebula/webview/APWebView;Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "apWebView"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 160
    const/4 v0, 0x0

    return v0
.end method

.method public shouldOverrideUrlLoading(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "apWebView"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public shouldOverrideUrlLoadingForUC(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;I)Z
    .locals 1
    .param p1, "apWebView"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "i"    # I

    .prologue
    .line 200
    const/4 v0, 0x0

    return v0
.end method
