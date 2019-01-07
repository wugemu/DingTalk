.class public Lcom/alipay/mobile/nebulacore/android/AndroidWebView;
.super Ljava/lang/Object;
.source "AndroidWebView.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/webview/APWebView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulacore/android/AndroidWebView$AndroidHitTestResult;,
        Lcom/alipay/mobile/nebulacore/android/AndroidWebView$WebViewEx;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AndroidWebView"


# instance fields
.field private apWebViewListener:Lcom/alipay/mobile/nebula/webview/APWebViewListener;

.field private mAPScrollChangedCallbackl:Lcom/alipay/mobile/nebula/webview/H5ScrollChangedCallback;

.field private mScale:F

.field private systemChromeVersion:Ljava/lang/String;

.field private webSettings:Lcom/alipay/mobile/nebula/webview/APWebSettings;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->mScale:F

    .line 56
    new-instance v2, Lcom/alipay/mobile/nebulacore/android/AndroidWebView$WebViewEx;

    invoke-direct {v2, p0, p1}, Lcom/alipay/mobile/nebulacore/android/AndroidWebView$WebViewEx;-><init>(Lcom/alipay/mobile/nebulacore/android/AndroidWebView;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->webView:Landroid/webkit/WebView;

    .line 57
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->webView:Landroid/webkit/WebView;

    new-instance v3, Lcom/alipay/mobile/nebulacore/android/AndroidWebView$1;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/nebulacore/android/AndroidWebView$1;-><init>(Lcom/alipay/mobile/nebulacore/android/AndroidWebView;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 64
    new-instance v2, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;-><init>(Landroid/webkit/WebSettings;)V

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->webSettings:Lcom/alipay/mobile/nebula/webview/APWebSettings;

    .line 65
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 66
    .local v0, "cookieManager":Landroid/webkit/CookieManager;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 68
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->webView:Landroid/webkit/WebView;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->webSettings:Lcom/alipay/mobile/nebula/webview/APWebSettings;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->setSavePassword(Z)V

    .line 75
    return-void

    .line 69
    :catch_0
    move-exception v1

    .line 70
    .local v1, "t":Ljava/lang/Throwable;
    const-string/jumbo v2, "AndroidWebView"

    const-string/jumbo v3, "setAcceptThirdPartyCookies"

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebulacore/android/AndroidWebView;)Lcom/alipay/mobile/nebula/webview/APWebViewListener;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/android/AndroidWebView;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->apWebViewListener:Lcom/alipay/mobile/nebula/webview/APWebViewListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/nebulacore/android/AndroidWebView;)Lcom/alipay/mobile/nebula/webview/H5ScrollChangedCallback;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/android/AndroidWebView;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->mAPScrollChangedCallbackl:Lcom/alipay/mobile/nebula/webview/H5ScrollChangedCallback;

    return-object v0
.end method


# virtual methods
.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "interfaceName"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "JavascriptInterface"
        }
    .end annotation

    .prologue
    .line 133
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    :cond_0
    return-void
.end method

.method public canGoBack()Z
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    return v0
.end method

.method public canGoBackOrForward(I)Z
    .locals 1
    .param p1, "steps"    # I

    .prologue
    .line 314
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->canGoBackOrForward(I)Z

    move-result v0

    return v0
.end method

.method public canGoForward()Z
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    return v0
.end method

.method public capturePicture()Landroid/graphics/Picture;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->capturePicture()Landroid/graphics/Picture;

    move-result-object v0

    return-object v0
.end method

.method public clearCache(Z)V
    .locals 1
    .param p1, "includeDiskFiles"    # Z

    .prologue
    .line 404
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 405
    return-void
.end method

.method public clearFormData()V
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearFormData()V

    .line 410
    return-void
.end method

.method public clearHistory()V
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 415
    return-void
.end method

.method public clearSslPreferences()V
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearSslPreferences()V

    .line 420
    return-void
.end method

.method public copyBackForwardList()Lcom/alipay/mobile/nebula/webview/APWebBackForwardList;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 424
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    .line 425
    .local v0, "list":Landroid/webkit/WebBackForwardList;
    if-eqz v0, :cond_0

    .line 426
    new-instance v1, Lcom/alipay/mobile/nebulacore/android/AndroidWebBackForwardList;

    invoke-direct {v1, v0}, Lcom/alipay/mobile/nebulacore/android/AndroidWebBackForwardList;-><init>(Landroid/webkit/WebBackForwardList;)V

    .line 428
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 212
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "var1"    # Landroid/view/KeyEvent;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 272
    .local p2, "stringValueCallback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Ljava/lang/String;>;"
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 273
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 276
    :cond_1
    if-eqz p2, :cond_0

    .line 277
    const-string/jumbo v0, ""

    invoke-interface {p2, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public execJavaScript4EmbedView(Ljava/lang/String;Lcom/alipay/mobile/nebula/view/IH5EmbedViewJSCallback;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "ih5EmbedViewJSCallback"    # Lcom/alipay/mobile/nebula/view/IH5EmbedViewJSCallback;

    .prologue
    .line 250
    return-void
.end method

.method public flingScroll(II)V
    .locals 1
    .param p1, "vx"    # I
    .param p2, "vy"    # I

    .prologue
    .line 155
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebView;->flingScroll(II)V

    .line 156
    return-void
.end method

.method public freeMemory()V
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->freeMemory()V

    .line 400
    return-void
.end method

.method public getCertificate()Landroid/net/http/SslCertificate;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object v0

    return-object v0
.end method

.method public getContentHeight()I
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v0

    return v0
.end method

.method public getContentWidth()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 374
    const-string/jumbo v0, "AndroidWebView"

    const-string/jumbo v1, "getContentWidth() is currently not supported yet"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentPageSnapshot(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Bitmap;ZI)Z
    .locals 1
    .param p1, "dstRect"    # Landroid/graphics/Rect;
    .param p2, "srcRect"    # Landroid/graphics/Rect;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;
    .param p4, "clipByView"    # Z
    .param p5, "coordinate"    # I

    .prologue
    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public getFavicon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getH5NativeInput()Liov;
    .locals 1

    .prologue
    .line 474
    const/4 v0, 0x0

    return-object v0
.end method

.method public getH5NumInputKeyboard()Liov;
    .locals 1

    .prologue
    .line 469
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHitTestResult()Lcom/alipay/mobile/nebula/webview/APHitTestResult;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 454
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v0

    .line 455
    .local v0, "hitTestResult":Landroid/webkit/WebView$HitTestResult;
    if-nez v0, :cond_0

    .line 456
    const/4 v1, 0x0

    .line 458
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/alipay/mobile/nebulacore/android/AndroidWebView$AndroidHitTestResult;

    invoke-direct {v1, p0, v0}, Lcom/alipay/mobile/nebulacore/android/AndroidWebView$AndroidHitTestResult;-><init>(Lcom/alipay/mobile/nebulacore/android/AndroidWebView;Landroid/webkit/WebView$HitTestResult;)V

    goto :goto_0
.end method

.method public getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "realm"    # Ljava/lang/String;

    .prologue
    .line 206
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebView;->getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getProgress()I

    move-result v0

    return v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 484
    iget v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->mScale:F

    return v0
.end method

.method public getScrollY()I
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getScrollY()I

    move-result v0

    return v0
.end method

.method public getSettings()Lcom/alipay/mobile/nebula/webview/APWebSettings;
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->webSettings:Lcom/alipay/mobile/nebula/webview/APWebSettings;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/alipay/mobile/nebula/webview/WebViewType;
    .locals 1

    .prologue
    .line 117
    sget-object v0, Lcom/alipay/mobile/nebula/webview/WebViewType;->SYSTEM_BUILD_IN:Lcom/alipay/mobile/nebula/webview/WebViewType;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 94
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->systemChromeVersion:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 95
    const-string/jumbo v4, "1.1"

    .line 96
    .local v4, "version":Ljava/lang/String;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x13

    if-lt v5, v6, :cond_0

    .line 97
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->webSettings:Lcom/alipay/mobile/nebula/webview/APWebSettings;

    invoke-interface {v5}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v3

    .line 99
    .local v3, "ua":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v5, "Chrome/\\d+\\.\\d+\\.\\d+\\.\\d+"

    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5PatternHelper;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 100
    .local v1, "pattern":Ljava/util/regex/Pattern;
    if-eqz v1, :cond_0

    .line 101
    invoke-virtual {v1, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 102
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 103
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 110
    .end local v0    # "matcher":Ljava/util/regex/Matcher;
    .end local v1    # "pattern":Ljava/util/regex/Pattern;
    .end local v3    # "ua":Ljava/lang/String;
    :cond_0
    :goto_0
    iput-object v4, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->systemChromeVersion:Ljava/lang/String;

    .line 112
    .end local v4    # "version":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->systemChromeVersion:Ljava/lang/String;

    return-object v5

    .line 106
    .restart local v3    # "ua":Ljava/lang/String;
    .restart local v4    # "version":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 107
    .local v2, "t":Ljava/lang/Throwable;
    const-string/jumbo v5, "AndroidWebView"

    const-string/jumbo v6, "catch exception "

    invoke-static {v5, v6, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method public goBack()V
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 300
    return-void
.end method

.method public goBackOrForward(I)V
    .locals 1
    .param p1, "steps"    # I

    .prologue
    .line 319
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->goBackOrForward(I)V

    .line 320
    return-void
.end method

.method public goForward()V
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    .line 310
    return-void
.end method

.method public invokeZoomPicker()V
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->invokeZoomPicker()V

    .line 340
    return-void
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 394
    const/4 v0, 0x0

    return v0
.end method

.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "encoding"    # Ljava/lang/String;

    .prologue
    .line 259
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    return-void
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "baseUrl"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "encoding"    # Ljava/lang/String;
    .param p5, "historyUrl"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 265
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->webView:Landroid/webkit/WebView;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 244
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 245
    return-void
.end method

.method public loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 239
    .local p2, "additionalHttpHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 240
    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 380
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 381
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    .line 383
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 387
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 388
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    .line 390
    :cond_0
    return-void
.end method

.method public overlayHorizontalScrollbar()Z
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->overlayHorizontalScrollbar()Z

    move-result v0

    return v0
.end method

.method public overlayVerticalScrollbar()Z
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->overlayVerticalScrollbar()Z

    move-result v0

    return v0
.end method

.method public pageDown(Z)Z
    .locals 1
    .param p1, "bottom"    # Z

    .prologue
    .line 329
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->pageDown(Z)Z

    move-result v0

    return v0
.end method

.method public pageUp(Z)Z
    .locals 1
    .param p1, "top"    # Z

    .prologue
    .line 324
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->pageUp(Z)Z

    move-result v0

    return v0
.end method

.method public postUrl(Ljava/lang/String;[B)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "postData"    # [B

    .prologue
    .line 254
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebView;->postUrl(Ljava/lang/String;[B)V

    .line 255
    return-void
.end method

.method public reload()V
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    .line 290
    return-void
.end method

.method public removeJavascriptInterface(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 141
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 142
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 144
    :cond_0
    return-void
.end method

.method public restoreState(Landroid/os/Bundle;)Lcom/alipay/mobile/nebula/webview/APWebBackForwardList;
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 230
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    move-result-object v0

    .line 231
    .local v0, "list":Landroid/webkit/WebBackForwardList;
    if-eqz v0, :cond_0

    .line 232
    new-instance v1, Lcom/alipay/mobile/nebulacore/android/AndroidWebBackForwardList;

    invoke-direct {v1, v0}, Lcom/alipay/mobile/nebulacore/android/AndroidWebBackForwardList;-><init>(Landroid/webkit/WebBackForwardList;)V

    .line 234
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public savePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s2"    # Ljava/lang/String;
    .param p3, "s3"    # Ljava/lang/String;

    .prologue
    .line 195
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebView;->savePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    return-void
.end method

.method public saveState(Landroid/os/Bundle;)Lcom/alipay/mobile/nebula/webview/APWebBackForwardList;
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 221
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, p1}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    move-result-object v0

    .line 222
    .local v0, "list":Landroid/webkit/WebBackForwardList;
    if-eqz v0, :cond_0

    .line 223
    new-instance v1, Lcom/alipay/mobile/nebulacore/android/AndroidWebBackForwardList;

    invoke-direct {v1, v0}, Lcom/alipay/mobile/nebulacore/android/AndroidWebBackForwardList;-><init>(Landroid/webkit/WebBackForwardList;)V

    .line 225
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAPWebViewListener(Lcom/alipay/mobile/nebula/webview/APWebViewListener;)V
    .locals 0
    .param p1, "apWebViewListener"    # Lcom/alipay/mobile/nebula/webview/APWebViewListener;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->apWebViewListener:Lcom/alipay/mobile/nebula/webview/APWebViewListener;

    .line 128
    return-void
.end method

.method public setDownloadListener(Lcom/alipay/mobile/nebula/webview/APDownloadListener;)V
    .locals 2
    .param p1, "apDownloadListener"    # Lcom/alipay/mobile/nebula/webview/APDownloadListener;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 438
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/alipay/mobile/nebulacore/android/AndroidDownloadListener;

    invoke-direct {v1, p1}, Lcom/alipay/mobile/nebulacore/android/AndroidDownloadListener;-><init>(Lcom/alipay/mobile/nebula/webview/APDownloadListener;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 440
    return-void
.end method

.method public setHorizontalScrollBarEnabled(Z)V
    .locals 1
    .param p1, "horizontalScrollBarEnabled"    # Z

    .prologue
    .line 494
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 495
    return-void
.end method

.method public setHorizontalScrollbarOverlay(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 170
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setHorizontalScrollbarOverlay(Z)V

    .line 171
    return-void
.end method

.method public setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "realm"    # Ljava/lang/String;
    .param p3, "username"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;

    .prologue
    .line 201
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebView;->setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    return-void
.end method

.method public setInitialScale(I)V
    .locals 1
    .param p1, "scaleInPercent"    # I

    .prologue
    .line 334
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setInitialScale(I)V

    .line 335
    return-void
.end method

.method public setNetworkAvailable(Z)V
    .locals 1
    .param p1, "networkUp"    # Z

    .prologue
    .line 216
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setNetworkAvailable(Z)V

    .line 217
    return-void
.end method

.method public setOnScrollChangedCallback(Lcom/alipay/mobile/nebula/webview/H5ScrollChangedCallback;)V
    .locals 0
    .param p1, "changedCallback"    # Lcom/alipay/mobile/nebula/webview/H5ScrollChangedCallback;

    .prologue
    .line 499
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->mAPScrollChangedCallbackl:Lcom/alipay/mobile/nebula/webview/H5ScrollChangedCallback;

    .line 500
    return-void
.end method

.method public setScale(F)V
    .locals 0
    .param p1, "v"    # F

    .prologue
    .line 479
    iput p1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->mScale:F

    .line 480
    return-void
.end method

.method public setVerticalScrollBarEnabled(Z)V
    .locals 1
    .param p1, "verticalScrollBarEnabled"    # Z

    .prologue
    .line 489
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 490
    return-void
.end method

.method public setVerticalScrollbarOverlay(Z)V
    .locals 1
    .param p1, "overlay"    # Z

    .prologue
    .line 175
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setVerticalScrollbarOverlay(Z)V

    .line 176
    return-void
.end method

.method public setWebChromeClient(Lcom/alipay/mobile/nebula/webview/APWebChromeClient;)V
    .locals 2
    .param p1, "apWebChromeClient"    # Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 444
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/alipay/mobile/nebulacore/android/AndroidWebChromeClient;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/nebulacore/android/AndroidWebChromeClient;-><init>(Lcom/alipay/mobile/nebula/webview/APWebView;Lcom/alipay/mobile/nebula/webview/APWebChromeClient;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 445
    return-void
.end method

.method public setWebContentsDebuggingEnabled(Z)V
    .locals 2
    .param p1, "b"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 148
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 149
    invoke-static {p1}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 151
    :cond_0
    return-void
.end method

.method public setWebViewClient(Lcom/alipay/mobile/nebula/webview/APWebViewClient;)V
    .locals 2
    .param p1, "apWebViewClient"    # Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 433
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;-><init>(Lcom/alipay/mobile/nebula/webview/APWebView;Lcom/alipay/mobile/nebula/webview/APWebViewClient;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 434
    return-void
.end method

.method public stopLoading()V
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 285
    return-void
.end method

.method public zoomIn()Z
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->zoomIn()Z

    move-result v0

    return v0
.end method

.method public zoomOut()Z
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->zoomOut()Z

    move-result v0

    return v0
.end method
