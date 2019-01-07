.class public Lcom/alipay/mobile/nebula/basebridge/H5BasePage;
.super Lcom/alipay/mobile/nebula/basebridge/H5BaseNebulaService;
.source "H5BasePage.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/webview/APWebView;
.implements Liop;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebula/basebridge/H5BasePage$InternalWebSettings;
    }
.end annotation


# instance fields
.field private bridge:Linx;

.field private mH5Context:Lcom/alipay/mobile/h5container/api/H5Context;

.field private final mPageData:Lior;

.field private final mStartParams:Landroid/os/Bundle;

.field private final mWebSettings:Lcom/alipay/mobile/nebula/basebridge/H5BasePage$InternalWebSettings;


# direct methods
.method public constructor <init>(Landroid/content/Context;Linx;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "h5Bridge"    # Linx;
    .param p3, "startParams"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 80
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/basebridge/H5BaseNebulaService;-><init>()V

    .line 81
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/basebridge/H5BasePage;->enableUseOldContext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 82
    new-instance v2, Lcom/alipay/mobile/h5container/api/H5Context;

    invoke-direct {v2, p1}, Lcom/alipay/mobile/h5container/api/H5Context;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/alipay/mobile/nebula/basebridge/H5BasePage;->mH5Context:Lcom/alipay/mobile/h5container/api/H5Context;

    .line 84
    :cond_0
    iput-object p3, p0, Lcom/alipay/mobile/nebula/basebridge/H5BasePage;->mStartParams:Landroid/os/Bundle;

    .line 85
    iput-object p2, p0, Lcom/alipay/mobile/nebula/basebridge/H5BasePage;->bridge:Linx;

    .line 87
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getH5Service()Lcom/alipay/mobile/h5container/service/H5Service;

    move-result-object v1

    .line 88
    .local v1, "service":Lcom/alipay/mobile/h5container/service/H5Service;
    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/service/H5Service;->getItsOwnNode()Liob;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/nebula/basebridge/H5BasePage;->setParent(Liob;)V

    .line 89
    const-string/jumbo v2, "page"

    invoke-virtual {p0}, Lcom/alipay/mobile/nebula/basebridge/H5BasePage;->getPluginManager()Liow;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/h5container/service/H5Service;->createPlugin(Ljava/lang/String;Liow;)Liov;

    move-result-object v0

    .line 90
    .local v0, "plugin":Liov;
    invoke-virtual {p0}, Lcom/alipay/mobile/nebula/basebridge/H5BasePage;->getPluginManager()Liow;

    move-result-object v2

    invoke-interface {v2, v0}, Liow;->register(Liov;)Z

    .line 91
    new-instance v2, Lior;

    invoke-direct {v2}, Lior;-><init>()V

    iput-object v2, p0, Lcom/alipay/mobile/nebula/basebridge/H5BasePage;->mPageData:Lior;

    .line 92
    iget-object v2, p0, Lcom/alipay/mobile/nebula/basebridge/H5BasePage;->mPageData:Lior;

    const-string/jumbo v3, "appId"

    invoke-virtual {p3, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lior;->g(Ljava/lang/String;)V

    .line 93
    iget-object v2, p0, Lcom/alipay/mobile/nebula/basebridge/H5BasePage;->mPageData:Lior;

    const-string/jumbo v3, "tiny"

    invoke-virtual {v2, v3}, Lior;->h(Ljava/lang/String;)V

    .line 94
    iget-object v2, p0, Lcom/alipay/mobile/nebula/basebridge/H5BasePage;->mPageData:Lior;

    const-string/jumbo v3, "url"

    invoke-virtual {p3, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lior;->c(Ljava/lang/String;)V

    .line 96
    new-instance v2, Lcom/alipay/mobile/nebula/basebridge/H5BasePage$InternalWebSettings;

    invoke-direct {v2, p0, v4}, Lcom/alipay/mobile/nebula/basebridge/H5BasePage$InternalWebSettings;-><init>(Lcom/alipay/mobile/nebula/basebridge/H5BasePage;Lcom/alipay/mobile/nebula/basebridge/H5BasePage$1;)V

    iput-object v2, p0, Lcom/alipay/mobile/nebula/basebridge/H5BasePage;->mWebSettings:Lcom/alipay/mobile/nebula/basebridge/H5BasePage$InternalWebSettings;

    .line 97
    iget-object v2, p0, Lcom/alipay/mobile/nebula/basebridge/H5BasePage;->mWebSettings:Lcom/alipay/mobile/nebula/basebridge/H5BasePage$InternalWebSettings;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/nebula/basebridge/H5BasePage$InternalWebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method private enableUseOldContext()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 70
    const-class v2, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 71
    .local v0, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v0, :cond_0

    .line 72
    const-string/jumbo v2, "h5_enableUseOldContext"

    invoke-interface {v0, v2}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, "value":Ljava/lang/String;
    const-string/jumbo v2, "yes"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 74
    const/4 v2, 0x1

    .line 77
    .end local v1    # "value":Ljava/lang/String;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 141
    return-void
.end method

.method public applyParamsIfNeed()V
    .locals 0

    .prologue
    .line 636
    return-void
.end method

.method public canGoBack()Z
    .locals 1

    .prologue
    .line 275
    const/4 v0, 0x0

    return v0
.end method

.method public canGoBackOrForward(I)Z
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 295
    const/4 v0, 0x0

    return v0
.end method

.method public canGoForward()Z
    .locals 1

    .prologue
    .line 285
    const/4 v0, 0x0

    return v0
.end method

.method public capturePicture()Landroid/graphics/Picture;
    .locals 1

    .prologue
    .line 445
    const/4 v0, 0x0

    return-object v0
.end method

.method public clearCache(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 396
    return-void
.end method

.method public clearFormData()V
    .locals 0

    .prologue
    .line 401
    return-void
.end method

.method public clearHistory()V
    .locals 0

    .prologue
    .line 406
    return-void
.end method

.method public clearSslPreferences()V
    .locals 0

    .prologue
    .line 411
    return-void
.end method

.method public copyBackForwardList()Lcom/alipay/mobile/nebula/webview/APWebBackForwardList;
    .locals 1

    .prologue
    .line 415
    const/4 v0, 0x0

    return-object v0
.end method

.method public destroy()V
    .locals 0

    .prologue
    .line 211
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 555
    const/4 v0, 0x0

    return v0
.end method

.method public evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 0
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

    .prologue
    .line 261
    .local p2, "valueCallback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Ljava/lang/String;>;"
    return-void
.end method

.method public execJavaScript4EmbedView(Ljava/lang/String;Lcom/alipay/mobile/nebula/view/IH5EmbedViewJSCallback;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "jsCallback"    # Lcom/alipay/mobile/nebula/view/IH5EmbedViewJSCallback;

    .prologue
    .line 241
    return-void
.end method

.method public exitPage()Z
    .locals 1

    .prologue
    .line 470
    invoke-virtual {p0}, Lcom/alipay/mobile/nebula/basebridge/H5BasePage;->getParent()Liob;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 471
    invoke-virtual {p0}, Lcom/alipay/mobile/nebula/basebridge/H5BasePage;->getParent()Liob;

    move-result-object v0

    invoke-interface {v0, p0}, Liob;->removeChild(Liob;)Z

    .line 472
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebula/basebridge/H5BasePage;->setParent(Liob;)V

    .line 474
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public exitTabPage()Z
    .locals 1

    .prologue
    .line 479
    const/4 v0, 0x0

    return v0
.end method

.method public flingScroll(II)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "i1"    # I

    .prologue
    .line 156
    return-void
.end method

.method public freeMemory()V
    .locals 0

    .prologue
    .line 391
    return-void
.end method

.method public getAPWebViewClient()Lcom/alipay/mobile/nebula/webview/APWebViewClient;
    .locals 1

    .prologue
    .line 615
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAvailablePageData()Linv;
    .locals 1

    .prologue
    .line 500
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBridge()Linx;
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lcom/alipay/mobile/nebula/basebridge/H5BasePage;->bridge:Linx;

    return-object v0
.end method

.method public getCertificate()Landroid/net/http/SslCertificate;
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentHeight()I
    .locals 1

    .prologue
    .line 365
    const/4 v0, 0x0

    return v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentWidth()I
    .locals 1

    .prologue
    .line 370
    const/4 v0, 0x0

    return v0
.end method

.method public getContext()Lcom/alipay/mobile/h5container/api/H5Context;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/basebridge/H5BasePage;->enableUseOldContext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/alipay/mobile/nebula/basebridge/H5BasePage;->mH5Context:Lcom/alipay/mobile/h5container/api/H5Context;

    .line 116
    :goto_0
    return-object v1

    .line 111
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/framework/b;->a()Lcom/alipay/mobile/framework/b;

    .line 112
    const/4 v1, 0x0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 113
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_1

    .line 114
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 116
    :cond_1
    new-instance v1, Lcom/alipay/mobile/h5container/api/H5Context;

    invoke-direct {v1, v0}, Lcom/alipay/mobile/h5container/api/H5Context;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public getCurrentPageSnapshot(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Bitmap;ZI)Z
    .locals 1
    .param p1, "dstRect"    # Landroid/graphics/Rect;
    .param p2, "srcRect"    # Landroid/graphics/Rect;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;
    .param p4, "clipByView"    # Z
    .param p5, "coordinate"    # I

    .prologue
    .line 560
    const/4 v0, 0x0

    return v0
.end method

.method public getEmbededViewProvider()Lcom/alipay/mobile/nebula/provider/H5EmbededViewProvider;
    .locals 1

    .prologue
    .line 705
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExtra(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "biz"    # Ljava/lang/String;

    .prologue
    .line 645
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFavicon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 355
    const/4 v0, 0x0

    return-object v0
.end method

.method public getH5LoadingView()Lcom/alipay/mobile/nebula/view/H5LoadingView;
    .locals 1

    .prologue
    .line 625
    const/4 v0, 0x0

    return-object v0
.end method

.method public getH5NativeInput()Liov;
    .locals 1

    .prologue
    .line 520
    const/4 v0, 0x0

    return-object v0
.end method

.method public getH5NumInputKeyboard()Liov;
    .locals 1

    .prologue
    .line 515
    const/4 v0, 0x0

    return-object v0
.end method

.method public getH5TitleBar()Lcom/alipay/mobile/nebula/view/H5TitleView;
    .locals 1

    .prologue
    .line 685
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHitTestResult()Lcom/alipay/mobile/nebula/webview/APHitTestResult;
    .locals 1

    .prologue
    .line 440
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 205
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getLastTouch()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 565
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getNewEmbedViewRoot(Lcom/alipay/mobile/nebula/embedviewcommon/H5NewEmbedBaseViewListener;)Landroid/view/View;
    .locals 1
    .param p1, "listener"    # Lcom/alipay/mobile/nebula/embedviewcommon/H5NewEmbedBaseViewListener;

    .prologue
    .line 655
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 335
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPageData()Lior;
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/alipay/mobile/nebula/basebridge/H5BasePage;->mPageData:Lior;

    return-object v0
.end method

.method public getPageId()I
    .locals 1

    .prologue
    .line 716
    const/4 v0, 0x0

    return v0
.end method

.method public getParams()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lcom/alipay/mobile/nebula/basebridge/H5BasePage;->mStartParams:Landroid/os/Bundle;

    return-object v0
.end method

.method public getPerformance()Ljava/lang/String;
    .locals 1

    .prologue
    .line 570
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 360
    const/4 v0, 0x0

    return v0
.end method

.method public getRedirectUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 345
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRootView()Landroid/view/View;
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x0

    return-object v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 530
    const/4 v0, 0x0

    return v0
.end method

.method public getScrollY()I
    .locals 1

    .prologue
    .line 550
    const/4 v0, 0x0

    return v0
.end method

.method public getSession()Lipc;
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSettings()Lcom/alipay/mobile/nebula/webview/APWebSettings;
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/alipay/mobile/nebula/basebridge/H5BasePage;->mWebSettings:Lcom/alipay/mobile/nebula/basebridge/H5BasePage$InternalWebSettings;

    return-object v0
.end method

.method public getShareUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 340
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 350
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitleBarReadyCallBack()Liop$c;
    .locals 1

    .prologue
    .line 585
    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()Lcom/alipay/mobile/nebula/webview/WebViewType;
    .locals 1

    .prologue
    .line 510
    sget-object v0, Lcom/alipay/mobile/nebula/webview/WebViewType;->RN_VIEW:Lcom/alipay/mobile/nebula/webview/WebViewType;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/alipay/mobile/nebula/basebridge/H5BasePage;->mPageData:Lior;

    .line 1474
    iget-object v0, v0, Lior;->w:Ljava/lang/String;

    .line 330
    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 505
    const/4 v0, 0x0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 455
    const/4 v0, 0x0

    return-object v0
.end method

.method public getViewGroup()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 695
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;
    .locals 0

    .prologue
    .line 126
    return-object p0
.end method

.method public getWebViewId()I
    .locals 1

    .prologue
    .line 726
    const/4 v0, 0x0

    return v0
.end method

.method public goBack()V
    .locals 0

    .prologue
    .line 281
    return-void
.end method

.method public goBackOrForward(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 301
    return-void
.end method

.method public goForward()V
    .locals 0

    .prologue
    .line 291
    return-void
.end method

.method public hasContentBeforeRedirect()Z
    .locals 1

    .prologue
    .line 660
    const/4 v0, 0x0

    return v0
.end method

.method public ifContainsEmbedSurfaceView()Z
    .locals 1

    .prologue
    .line 605
    const/4 v0, 0x0

    return v0
.end method

.method public ifContainsEmbedView()Z
    .locals 1

    .prologue
    .line 595
    const/4 v0, 0x0

    return v0
.end method

.method public invokeZoomPicker()V
    .locals 0

    .prologue
    .line 321
    return-void
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 385
    const/4 v0, 0x0

    return v0
.end method

.method public isTransparentTitleState()Z
    .locals 1

    .prologue
    .line 630
    const/4 v0, 0x0

    return v0
.end method

.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;
    .param p3, "s2"    # Ljava/lang/String;

    .prologue
    .line 251
    return-void
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;
    .param p3, "s2"    # Ljava/lang/String;
    .param p4, "s3"    # Ljava/lang/String;
    .param p5, "s4"    # Ljava/lang/String;

    .prologue
    .line 255
    const/4 v0, 0x0

    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 256
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 235
    const/4 v0, 0x0

    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 236
    return-void
.end method

.method public loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
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
    .line 231
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public onInterceptError(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "errorUrl"    # Ljava/lang/String;
    .param p2, "statusCode"    # I

    .prologue
    .line 580
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 376
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 381
    return-void
.end method

.method public overlayHorizontalScrollbar()Z
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x0

    return v0
.end method

.method public overlayVerticalScrollbar()Z
    .locals 1

    .prologue
    .line 185
    const/4 v0, 0x0

    return v0
.end method

.method public pageDown(Z)Z
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 310
    const/4 v0, 0x0

    return v0
.end method

.method public pageIsClose()Z
    .locals 1

    .prologue
    .line 690
    const/4 v0, 0x0

    return v0
.end method

.method public pageUp(Z)Z
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 305
    const/4 v0, 0x0

    return v0
.end method

.method public postUrl(Ljava/lang/String;[B)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "bytes"    # [B

    .prologue
    .line 246
    return-void
.end method

.method public reload()V
    .locals 0

    .prologue
    .line 271
    return-void
.end method

.method public removeJavascriptInterface(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 146
    return-void
.end method

.method public replace(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 701
    return-void
.end method

.method public restoreState(Landroid/os/Bundle;)Lcom/alipay/mobile/nebula/webview/APWebBackForwardList;
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 225
    const/4 v0, 0x0

    return-object v0
.end method

.method public savePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;
    .param p3, "s2"    # Ljava/lang/String;

    .prologue
    .line 196
    return-void
.end method

.method public saveState(Landroid/os/Bundle;)Lcom/alipay/mobile/nebula/webview/APWebBackForwardList;
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 220
    const/4 v0, 0x0

    return-object v0
.end method

.method public scriptbizLoadedAndBridgeLoaded()Z
    .locals 1

    .prologue
    .line 670
    const/4 v0, 0x0

    return v0
.end method

.method public sendExitEvent()V
    .locals 0

    .prologue
    .line 621
    return-void
.end method

.method public setAPWebViewListener(Lcom/alipay/mobile/nebula/webview/APWebViewListener;)V
    .locals 0
    .param p1, "apWebViewListener"    # Lcom/alipay/mobile/nebula/webview/APWebViewListener;

    .prologue
    .line 451
    return-void
.end method

.method public setContainsEmbedSurfaceView(Z)V
    .locals 0
    .param p1, "ifContains"    # Z

    .prologue
    .line 611
    return-void
.end method

.method public setContainsEmbedView(Z)V
    .locals 0
    .param p1, "ifContains"    # Z

    .prologue
    .line 601
    return-void
.end method

.method public setContentBeforeRedirect(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 666
    return-void
.end method

.method public setDownloadListener(Lcom/alipay/mobile/nebula/webview/APDownloadListener;)V
    .locals 0
    .param p1, "apDownloadListener"    # Lcom/alipay/mobile/nebula/webview/APDownloadListener;

    .prologue
    .line 426
    return-void
.end method

.method public setExtra(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "biz"    # Ljava/lang/String;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 641
    return-void
.end method

.method public setH5Context(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/basebridge/H5BasePage;->enableUseOldContext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    new-instance v0, Lcom/alipay/mobile/h5container/api/H5Context;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/h5container/api/H5Context;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebula/basebridge/H5BasePage;->mH5Context:Lcom/alipay/mobile/h5container/api/H5Context;

    .line 66
    :cond_0
    return-void
.end method

.method public setH5ErrorHandler(Liop$a;)V
    .locals 0
    .param p1, "handler"    # Liop$a;

    .prologue
    .line 490
    return-void
.end method

.method public setH5TitleBar(Lcom/alipay/mobile/nebula/view/H5TitleView;)V
    .locals 0
    .param p1, "h5TitleView"    # Lcom/alipay/mobile/nebula/view/H5TitleView;

    .prologue
    .line 681
    return-void
.end method

.method public setHandler(Liop$b;)V
    .locals 0
    .param p1, "h5PageHandler"    # Liop$b;

    .prologue
    .line 485
    return-void
.end method

.method public setHorizontalScrollBarEnabled(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 541
    return-void
.end method

.method public setHorizontalScrollbarOverlay(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 171
    return-void
.end method

.method public setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;
    .param p3, "s2"    # Ljava/lang/String;
    .param p4, "s3"    # Ljava/lang/String;

    .prologue
    .line 201
    return-void
.end method

.method public setInitialScale(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 316
    return-void
.end method

.method public setNetworkAvailable(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 216
    return-void
.end method

.method public setNewEmbedViewRoot(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 651
    return-void
.end method

.method public setOnScrollChangedCallback(Lcom/alipay/mobile/nebula/webview/H5ScrollChangedCallback;)V
    .locals 0
    .param p1, "h5ScrollChangedCallback"    # Lcom/alipay/mobile/nebula/webview/H5ScrollChangedCallback;

    .prologue
    .line 546
    return-void
.end method

.method public setPageId(I)V
    .locals 0
    .param p1, "pageId"    # I

    .prologue
    .line 711
    return-void
.end method

.method public setPerformance(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 576
    return-void
.end method

.method public setRootView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 136
    return-void
.end method

.method public setScale(F)V
    .locals 0
    .param p1, "v"    # F

    .prologue
    .line 526
    return-void
.end method

.method public setTextSize(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 326
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 676
    return-void
.end method

.method public setTitleBarReadyCallBack(Liop$c;)V
    .locals 0
    .param p1, "h5TitleBarReadyCallback"    # Liop$c;

    .prologue
    .line 591
    return-void
.end method

.method public setVerticalScrollBarEnabled(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 536
    return-void
.end method

.method public setVerticalScrollbarOverlay(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 176
    return-void
.end method

.method public setWebChromeClient(Lcom/alipay/mobile/nebula/webview/APWebChromeClient;)V
    .locals 0
    .param p1, "apWebChromeClient"    # Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    .prologue
    .line 431
    return-void
.end method

.method public setWebContentsDebuggingEnabled(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 151
    return-void
.end method

.method public setWebViewClient(Lcom/alipay/mobile/nebula/webview/APWebViewClient;)V
    .locals 0
    .param p1, "apWebViewClient"    # Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    .prologue
    .line 421
    return-void
.end method

.method public setWebViewId(I)V
    .locals 0
    .param p1, "pageId"    # I

    .prologue
    .line 722
    return-void
.end method

.method public stopLoading()V
    .locals 0

    .prologue
    .line 266
    return-void
.end method

.method public zoomIn()Z
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x0

    return v0
.end method

.method public zoomOut()Z
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x0

    return v0
.end method
