.class final Lhnx$3;
.super Ljava/lang/Object;
.source "MiniAppUcInitCallbackProviderImpl.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/webview/APWebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhnx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhnx;


# direct methods
.method constructor <init>(Lhnx;)V
    .locals 0
    .param p1, "this$0"    # Lhnx;

    .prologue
    .line 152
    iput-object p1, p0, Lhnx$3;->a:Lhnx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final doUpdateVisitedHistory(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "apWebView"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "b"    # Z

    .prologue
    .line 249
    return-void
.end method

.method public final getJSBridge()Ljava/lang/String;
    .locals 1

    .prologue
    .line 283
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getPageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getRequestMap()Ljava/util/Map;
    .locals 1

    .prologue
    .line 308
    const/4 v0, 0x0

    return-object v0
.end method

.method public final onFirstVisuallyRender(Lcom/alipay/mobile/nebula/webview/APWebView;)V
    .locals 0
    .param p1, "apWebView"    # Lcom/alipay/mobile/nebula/webview/APWebView;

    .prologue
    .line 239
    return-void
.end method

.method public final onFormResubmission(Lcom/alipay/mobile/nebula/webview/APWebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 0
    .param p1, "apWebView"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "message"    # Landroid/os/Message;
    .param p3, "message1"    # Landroid/os/Message;

    .prologue
    .line 244
    return-void
.end method

.method public final onLoadResource(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "apWebView"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 175
    return-void
.end method

.method public final onPageFinished(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;J)V
    .locals 0
    .param p1, "apWebView"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "l"    # J

    .prologue
    .line 171
    return-void
.end method

.method public final onPageStarted(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "apWebView"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 166
    return-void
.end method

.method public final onReceivedError(Lcom/alipay/mobile/nebula/webview/APWebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "apWebView"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "i"    # I
    .param p3, "s"    # Ljava/lang/String;
    .param p4, "s1"    # Ljava/lang/String;

    .prologue
    .line 219
    return-void
.end method

.method public final onReceivedHttpAuthRequest(Lcom/alipay/mobile/nebula/webview/APWebView;Lcom/alipay/mobile/nebula/webview/APHttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "apWebView"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "apHttpAuthHandler"    # Lcom/alipay/mobile/nebula/webview/APHttpAuthHandler;
    .param p3, "s"    # Ljava/lang/String;
    .param p4, "s1"    # Ljava/lang/String;

    .prologue
    .line 259
    return-void
.end method

.method public final onReceivedHttpError(Lcom/alipay/mobile/nebula/webview/APWebView;ILjava/lang/String;)V
    .locals 0
    .param p1, "view"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "statusCode"    # I
    .param p3, "requestUrl"    # Ljava/lang/String;

    .prologue
    .line 224
    return-void
.end method

.method public final onReceivedLoginRequest(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "apWebView"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "s1"    # Ljava/lang/String;
    .param p4, "s2"    # Ljava/lang/String;

    .prologue
    .line 279
    return-void
.end method

.method public final onReceivedResponseHeader(Ljava/util/Map;)V
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
    .line 299
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    return-void
.end method

.method public final onReceivedSslError(Lcom/alipay/mobile/nebula/webview/APWebView;Lcom/alipay/mobile/nebula/webview/APSslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0
    .param p1, "apWebView"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "apSslErrorHandler"    # Lcom/alipay/mobile/nebula/webview/APSslErrorHandler;
    .param p3, "sslError"    # Landroid/net/http/SslError;

    .prologue
    .line 254
    return-void
.end method

.method public final onResourceFinishLoad(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;J)V
    .locals 0
    .param p1, "apWebView"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "l"    # J

    .prologue
    .line 294
    return-void
.end method

.method public final onResourceResponse(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/util/HashMap;)V
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
    .line 289
    .local p2, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public final onScaleChanged(Lcom/alipay/mobile/nebula/webview/APWebView;FF)V
    .locals 0
    .param p1, "apWebView"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "v"    # F
    .param p3, "v1"    # F

    .prologue
    .line 274
    return-void
.end method

.method public final onTooManyRedirects(Lcom/alipay/mobile/nebula/webview/APWebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 0
    .param p1, "apWebView"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "message"    # Landroid/os/Message;
    .param p3, "message1"    # Landroid/os/Message;

    .prologue
    .line 214
    return-void
.end method

.method public final onUnhandledKeyEvent(Lcom/alipay/mobile/nebula/webview/APWebView;Landroid/view/KeyEvent;)V
    .locals 0
    .param p1, "apWebView"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 269
    return-void
.end method

.method public final onWebViewEvent(Lcom/alipay/mobile/nebula/webview/APWebView;ILjava/lang/Object;)V
    .locals 0
    .param p1, "apWebView"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "i"    # I
    .param p3, "o"    # Ljava/lang/Object;

    .prologue
    .line 234
    return-void
.end method

.method public final shouldInterceptRequest(Lcom/alipay/mobile/nebula/webview/APWebView;Lcom/alipay/mobile/nebula/webview/APWebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 1
    .param p1, "apWebView"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "apWebResourceRequest"    # Lcom/alipay/mobile/nebula/webview/APWebResourceRequest;

    .prologue
    .line 180
    const/4 v0, 0x0

    return-object v0
.end method

.method public final shouldInterceptRequest(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 6
    .param p1, "apWebView"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "s"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 199
    invoke-static {p2}, Lhnx;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 200
    .local v0, "data":[B
    if-eqz v0, :cond_1

    .line 201
    const-string/jumbo v3, "MiniAppUcInitCallbackProviderImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "preCreate shouldInterceptRequest "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " success"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1185
    .local v1, "inputStream":Ljava/io/InputStream;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1187
    invoke-static {p2}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1189
    if-eqz v3, :cond_0

    .line 1190
    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1194
    :cond_0
    new-instance v3, Landroid/webkit/WebResourceResponse;

    const-string/jumbo v4, "UTF-8"

    invoke-direct {v3, v2, v4, v1}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    move-object v2, v3

    .line 206
    .end local v1    # "inputStream":Ljava/io/InputStream;
    :goto_0
    return-object v2

    .line 205
    :cond_1
    const-string/jumbo v3, "MiniAppUcInitCallbackProviderImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "preCreate shouldInterceptRequest "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " fail"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final shouldInterceptResponse(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/util/HashMap;)Z
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
    .line 228
    .local p2, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public final shouldOverrideKeyEvent(Lcom/alipay/mobile/nebula/webview/APWebView;Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "apWebView"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 263
    const/4 v0, 0x0

    return v0
.end method

.method public final shouldOverrideUrlLoading(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "apWebView"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 160
    const/4 v0, 0x0

    return v0
.end method

.method public final shouldOverrideUrlLoadingForUC(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;I)Z
    .locals 1
    .param p1, "view"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "nonStandardType"    # I

    .prologue
    .line 303
    const/4 v0, 0x0

    return v0
.end method
