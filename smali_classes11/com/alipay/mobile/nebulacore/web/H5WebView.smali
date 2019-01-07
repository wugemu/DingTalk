.class public Lcom/alipay/mobile/nebulacore/web/H5WebView;
.super Ljava/lang/Object;
.source "H5WebView.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/refresh/H5PullableView;
.implements Lcom/alipay/mobile/nebula/webview/APWebView;


# static fields
.field private static WEB_VIEW_INDEX:I


# instance fields
.field public TAG:Ljava/lang/String;

.field protected apWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

.field private appId:Ljava/lang/String;

.field private finalUrl:Ljava/lang/String;

.field private h5Page:Liop;

.field private loadUrlTime:J

.field private mH5OverScrollListener:Lcom/alipay/mobile/nebula/refresh/H5OverScrollListener;

.field private mScale:F

.field private released:Z

.field private startParam:Landroid/os/Bundle;

.field private userAgent:Ljava/lang/String;

.field private webViewConfig:Landroid/os/Bundle;

.field private webViewIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    sput v0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->WEB_VIEW_INDEX:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Liop;Landroid/os/Bundle;)V
    .locals 11
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "h5Page"    # Liop;
    .param p3, "webViewConfig"    # Landroid/os/Bundle;

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const-string/jumbo v1, "H5WebView"

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->TAG:Ljava/lang/String;

    .line 86
    const/4 v1, 0x0

    iput v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->webViewIndex:I

    .line 87
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->mScale:F

    .line 89
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->released:Z

    .line 93
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->loadUrlTime:J

    .line 94
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->finalUrl:Ljava/lang/String;

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->TAG:Ljava/lang/String;

    .line 98
    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->webViewConfig:Landroid/os/Bundle;

    .line 99
    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->h5Page:Liop;

    .line 100
    invoke-interface {p2}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->startParam:Landroid/os/Bundle;

    .line 101
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->startParam:Landroid/os/Bundle;

    const-string/jumbo v2, "isPrerender"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_preRender"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->TAG:Ljava/lang/String;

    .line 104
    :cond_0
    const-string/jumbo v1, "bizType"

    invoke-static {p3, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 105
    .local v6, "bizType":Ljava/lang/String;
    invoke-interface {p2}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "appId"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->appId:Ljava/lang/String;

    .line 106
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "createWebView bizType "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-static {}, Lcom/alipay/mobile/nebulacore/wallet/H5WebViewFactory;->instance()Lcom/alipay/mobile/nebulacore/wallet/H5WebViewFactory;

    move-result-object v1

    .line 109
    invoke-interface {p2}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v2

    .line 108
    invoke-virtual {v1, p1, v6, p1, v2}, Lcom/alipay/mobile/nebulacore/wallet/H5WebViewFactory;->createWebView(Landroid/app/Activity;Ljava/lang/String;Landroid/content/Context;Landroid/os/Bundle;)Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->apWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    .line 110
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getWebViewId()I

    move-result v1

    invoke-interface {p2, v1}, Liop;->setWebViewId(I)V

    .line 112
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->apWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    if-nez v1, :cond_1

    .line 113
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "apWebView == null return"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    :goto_0
    return-void

    .line 117
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->apWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v1}, Lcom/alipay/mobile/nebula/webview/APWebView;->getVersion()Ljava/lang/String;

    move-result-object v10

    .line 118
    .local v10, "webViewVersion":Ljava/lang/String;
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "webViewVersion is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " webViewId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p2}, Liop;->getWebViewId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->disableHWACByUCStyle()Z

    move-result v1

    if-nez v1, :cond_3

    .line 120
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->startParam:Landroid/os/Bundle;

    invoke-static {v1, v6}, Lcom/alipay/mobile/nebulacore/web/H5HardwarePolicy;->disableHardwareAccelerate(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 121
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    .line 122
    .local v0, "h5LogProvider":Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    if-eqz v0, :cond_2

    .line 123
    const-string/jumbo v1, "H5UcService"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string/jumbo v5, "\u786c\u4ef6\u52a0\u901f\u5173\u95ed\u4e86"

    invoke-interface/range {v0 .. v5}, Lcom/alipay/mobile/nebula/provider/H5LogProvider;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->apWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v1}, Lcom/alipay/mobile/nebula/webview/APWebView;->getView()Landroid/view/View;

    move-result-object v9

    .line 126
    .local v9, "webView":Landroid/view/View;
    if-eqz v9, :cond_3

    .line 128
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "diable webview layer hardware accelerate."

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v9, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    .end local v0    # "h5LogProvider":Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    .end local v9    # "webView":Landroid/view/View;
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->apWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    new-instance v2, Lcom/alipay/mobile/nebulacore/web/H5WebView$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/alipay/mobile/nebulacore/web/H5WebView$1;-><init>(Lcom/alipay/mobile/nebulacore/web/H5WebView;Landroid/app/Activity;Liop;)V

    invoke-interface {v1, v2}, Lcom/alipay/mobile/nebula/webview/APWebView;->setAPWebViewListener(Lcom/alipay/mobile/nebula/webview/APWebViewListener;)V

    .line 261
    invoke-interface {p2}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "enableScrollBar"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v7

    .line 263
    .local v7, "enableScrollBar":Z
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "enableScrollBar:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    if-nez v7, :cond_4

    .line 265
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->apWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v1, v7}, Lcom/alipay/mobile/nebula/webview/APWebView;->setHorizontalScrollBarEnabled(Z)V

    .line 266
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->apWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v1, v7}, Lcom/alipay/mobile/nebula/webview/APWebView;->setVerticalScrollBarEnabled(Z)V

    .line 269
    :cond_4
    sget v1, Lcom/alipay/mobile/nebulacore/web/H5WebView;->WEB_VIEW_INDEX:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/alipay/mobile/nebulacore/web/H5WebView;->WEB_VIEW_INDEX:I

    iput v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->webViewIndex:I

    goto/16 :goto_0

    .line 130
    .end local v7    # "enableScrollBar":Z
    .restart local v0    # "h5LogProvider":Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    .restart local v9    # "webView":Landroid/view/View;
    :catch_0
    move-exception v8

    .line 131
    .local v8, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "set webview layer exception."

    invoke-static {v1, v2, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebulacore/web/H5WebView;)Lcom/alipay/mobile/nebula/refresh/H5OverScrollListener;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/web/H5WebView;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->mH5OverScrollListener:Lcom/alipay/mobile/nebula/refresh/H5OverScrollListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/nebulacore/web/H5WebView;Ljava/lang/String;Lcom/alipay/mobile/nebula/view/IH5EmbedViewJSCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/web/H5WebView;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/alipay/mobile/nebula/view/IH5EmbedViewJSCallback;

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->loadUrlInternal(Ljava/lang/String;Lcom/alipay/mobile/nebula/view/IH5EmbedViewJSCallback;)V

    return-void
.end method

.method static synthetic access$200(Lcom/alipay/mobile/nebulacore/web/H5WebView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/web/H5WebView;
    .param p1, "x1"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->loadBlankPage(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/alipay/mobile/nebulacore/web/H5WebView;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/web/H5WebView;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->releaseWebView()V

    return-void
.end method

.method private applyCustomSettings(Z)V
    .locals 8
    .param p1, "allowAccessFromFileURL"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 324
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "applyCustomSettings allowAccessFromFileURL "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getSettings()Lcom/alipay/mobile/nebula/webview/APWebSettings;

    move-result-object v2

    .line 329
    .local v2, "settings":Lcom/alipay/mobile/nebula/webview/APWebSettings;
    invoke-interface {v2, v7}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->setEnableFastScroller(Z)V

    .line 330
    invoke-interface {v2, v7}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->setPageCacheCapacity(I)V

    .line 333
    const-string/jumbo v3, "utf-8"

    invoke-interface {v2, v3}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 335
    invoke-interface {v2, v7}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->setSupportMultipleWindows(Z)V

    .line 339
    const/4 v3, 0x1

    :try_start_0
    invoke-interface {v2, v3}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->setJavaScriptEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    :goto_0
    const/16 v3, 0x10

    invoke-interface {v2, v3}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->setDefaultFontSize(I)V

    .line 345
    invoke-interface {v2, v6}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 348
    invoke-interface {v2, v7}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->setSavePassword(Z)V

    .line 349
    invoke-interface {v2, v7}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->setSaveFormData(Z)V

    .line 350
    invoke-interface {v2, v6}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->setLoadsImagesAutomatically(Z)V

    .line 352
    sget-object v3, Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;->ON:Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;

    invoke-interface {v2, v3}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->setPluginState(Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;)V

    .line 353
    invoke-interface {v2, v6}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->setDomStorageEnabled(Z)V

    .line 354
    invoke-interface {v2, p1}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->setAllowFileAccess(Z)V

    .line 356
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/nebulacore/util/NebulaUtil;->getApplicationDir()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/app_h5container"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 357
    .local v1, "h5Folder":Ljava/lang/String;
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->mkdirs(Ljava/lang/String;)Z

    .line 360
    invoke-interface {v2, v6}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->setDatabaseEnabled(Z)V

    .line 361
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-ge v3, v4, :cond_0

    .line 362
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/databases"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->mkdirs(Ljava/lang/String;)Z

    .line 363
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/databases"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 367
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/appcache"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->mkdirs(Ljava/lang/String;)Z

    .line 368
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/appcache"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 369
    invoke-interface {v2, v6}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->setAppCacheEnabled(Z)V

    .line 373
    invoke-interface {v2}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->getUserAgentString()Ljava/lang/String;

    .line 376
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->getInstance()Lcom/alipay/mobile/nebula/util/H5NetworkUtil;

    move-result-object v3

    .line 377
    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->getNetworkType()Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;

    move-result-object v3

    sget-object v4, Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;->NETWORK_NO_CONNECTION:Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;

    if-ne v3, v4, :cond_3

    .line 378
    invoke-interface {v2, v6}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->setCacheMode(I)V

    .line 384
    :goto_1
    invoke-interface {v2, v6}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->setBuiltInZoomControls(Z)V

    .line 385
    invoke-interface {v2, v6}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->setSupportZoom(Z)V

    .line 388
    invoke-interface {v2, v6}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->setLoadWithOverviewMode(Z)V

    .line 389
    invoke-interface {v2, v6}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->setUseWideViewPort(Z)V

    .line 392
    invoke-interface {v2, v6}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->setGeolocationEnabled(Z)V

    .line 393
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/geolocation"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->mkdirs(Ljava/lang/String;)Z

    .line 394
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/geolocation"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->setGeolocationDatabasePath(Ljava/lang/String;)V

    .line 396
    invoke-interface {v2, v7}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 397
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_1

    .line 398
    invoke-interface {v2, v7}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->setDisplayZoomControls(Z)V

    .line 401
    :cond_1
    invoke-interface {v2, p1}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 402
    invoke-interface {v2, p1}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 405
    sget-object v3, Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;->NORMAL:Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;

    invoke-interface {v2, v3}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->setTextSize(Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;)V

    .line 408
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xa

    if-le v3, v4, :cond_2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-ge v3, v4, :cond_2

    .line 410
    const-string/jumbo v3, "searchBoxJavaBridge_"

    invoke-virtual {p0, v3}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 411
    const-string/jumbo v3, "accessibility"

    invoke-virtual {p0, v3}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 412
    const-string/jumbo v3, "accessibilityTraversal"

    invoke-virtual {p0, v3}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 414
    :cond_2
    return-void

    .line 340
    .end local v1    # "h5Folder":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 341
    .local v0, "e":Ljava/lang/NullPointerException;
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Ignore the exception in AccessibilityInjector when init"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "exception detail"

    invoke-static {v3, v4, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 380
    .end local v0    # "e":Ljava/lang/NullPointerException;
    .restart local v1    # "h5Folder":Ljava/lang/String;
    :cond_3
    const/4 v3, -0x1

    invoke-interface {v2, v3}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->setCacheMode(I)V

    goto/16 :goto_1
.end method

.method private getDefaultUserAgent(Ljava/lang/String;)Ljava/lang/String;
    .locals 22
    .param p1, "ua"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 502
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 503
    .local v3, "context":Landroid/content/Context;
    const-string/jumbo v5, ""

    .line 505
    .local v5, "deviceInfo":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    .line 506
    .local v6, "displayMetrics":Landroid/util/DisplayMetrics;
    if-eqz v6, :cond_0

    .line 508
    iget v4, v6, Landroid/util/DisplayMetrics;->density:F

    .line 509
    .local v4, "density":F
    iget v0, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v19, v19, v4

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    move-result v18

    .line 510
    .local v18, "width":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->h5Page:Liop;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v4, v6}, Lcom/alipay/mobile/nebulacore/Nebula;->getHeight(Liop;FLandroid/util/DisplayMetrics;)I

    move-result v8

    .line 511
    .local v8, "height":I
    invoke-static {}, Lcom/alipay/mobile/nebulacore/util/AccessibilityUtil;->getEnabledAccessibilities()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_3

    .line 512
    new-instance v19, Ljava/lang/StringBuilder;

    const-string/jumbo v20, " AlipayDefined(nt:"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->getInstance()Lcom/alipay/mobile/nebula/util/H5NetworkUtil;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->getNetworkString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ",ws:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "|"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "|"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 514
    invoke-static {}, Lcom/alipay/mobile/nebulacore/util/AccessibilityUtil;->getEnabledAccessibilities()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ")"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 524
    .end local v4    # "density":F
    .end local v6    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v8    # "height":I
    .end local v18    # "width":I
    :cond_0
    :goto_0
    const-string/jumbo v17, ""

    .line 525
    .local v17, "versionName":Ljava/lang/String;
    const-string/jumbo v11, ""

    .line 526
    .local v11, "language":Ljava/lang/String;
    const/4 v9, 0x0

    .line 528
    .local v9, "isConcaveScreen":Z
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v19

    const-class v20, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;

    .line 529
    .local v13, "provider":Lcom/alipay/mobile/nebula/provider/H5EnvProvider;
    if-eqz v13, :cond_1

    .line 530
    invoke-interface {v13}, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;->getProductVersion()Ljava/lang/String;

    move-result-object v17

    .line 531
    invoke-interface {v13}, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;->getLanguage()Ljava/lang/String;

    move-result-object v11

    .line 532
    invoke-interface {v13}, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;->isConcaveScreen()Z

    move-result v9

    .line 534
    :cond_1
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " AliApp(AP/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ") AlipayClient/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->h5Page:Liop;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/alipay/mobile/nebulacore/Nebula;->useH5StatusBar(Liop;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 538
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " useStatusBar/true"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 541
    :cond_2
    if-eqz v9, :cond_4

    .line 542
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " isConcaveScreen/true"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 547
    :goto_1
    sget-boolean v19, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v19, :cond_9

    .line 549
    invoke-static {}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getInstance()Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;

    move-result-object v19

    const-class v20, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 550
    .local v2, "appProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    if-nez v2, :cond_5

    .line 551
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string/jumbo v20, "failed to get app info!"

    invoke-static/range {v19 .. v20}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v16, p1

    .line 577
    .end local v2    # "appProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .end local p1    # "ua":Ljava/lang/String;
    .local v16, "ua":Ljava/lang/String;
    :goto_2
    return-object v16

    .line 516
    .end local v9    # "isConcaveScreen":Z
    .end local v11    # "language":Ljava/lang/String;
    .end local v13    # "provider":Lcom/alipay/mobile/nebula/provider/H5EnvProvider;
    .end local v16    # "ua":Ljava/lang/String;
    .end local v17    # "versionName":Ljava/lang/String;
    .restart local v4    # "density":F
    .restart local v6    # "displayMetrics":Landroid/util/DisplayMetrics;
    .restart local v8    # "height":I
    .restart local v18    # "width":I
    .restart local p1    # "ua":Ljava/lang/String;
    :cond_3
    :try_start_1
    new-instance v19, Ljava/lang/StringBuilder;

    const-string/jumbo v20, " AlipayDefined(nt:"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->getInstance()Lcom/alipay/mobile/nebula/util/H5NetworkUtil;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->getNetworkString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ",ws:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "|"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "|"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ")"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    goto/16 :goto_0

    .line 520
    .end local v4    # "density":F
    .end local v6    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v8    # "height":I
    .end local v18    # "width":I
    :catch_0
    move-exception v7

    .line 521
    .local v7, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string/jumbo v20, "exception detail"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 544
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v9    # "isConcaveScreen":Z
    .restart local v11    # "language":Ljava/lang/String;
    .restart local v13    # "provider":Lcom/alipay/mobile/nebula/provider/H5EnvProvider;
    .restart local v17    # "versionName":Ljava/lang/String;
    :cond_4
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " isConcaveScreen/false"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1

    .line 555
    .restart local v2    # "appProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->startParam:Landroid/os/Bundle;

    move-object/from16 v19, v0

    const-string/jumbo v20, "host"

    invoke-static/range {v19 .. v20}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 557
    .local v15, "strHost":Ljava/lang/String;
    invoke-static {v15}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v10

    .line 558
    .local v10, "joHost":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v10, :cond_6

    invoke-virtual {v10}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_7

    .line 559
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string/jumbo v20, "can\'t parse host parameter as json"

    invoke-static/range {v19 .. v20}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v16, p1

    .line 560
    .end local p1    # "ua":Ljava/lang/String;
    .restart local v16    # "ua":Ljava/lang/String;
    goto/16 :goto_2

    .line 562
    .end local v16    # "ua":Ljava/lang/String;
    .restart local p1    # "ua":Ljava/lang/String;
    :cond_7
    const/4 v14, 0x0

    .line 563
    .local v14, "rpcUrl":Ljava/lang/String;
    if-eqz v13, :cond_8

    .line 564
    invoke-interface {v13}, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;->getRpcUrl()Ljava/lang/String;

    move-result-object v14

    .line 567
    :cond_8
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_a

    const-string/jumbo v19, "test.alipay.net"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 568
    const-string/jumbo v12, "test"

    .line 574
    .local v12, "productType":Ljava/lang/String;
    :goto_3
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " ProductType/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    const-string/jumbo v21, "debug ua"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .end local v2    # "appProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .end local v10    # "joHost":Lcom/alibaba/fastjson/JSONObject;
    .end local v12    # "productType":Ljava/lang/String;
    .end local v14    # "rpcUrl":Ljava/lang/String;
    .end local v15    # "strHost":Ljava/lang/String;
    :cond_9
    move-object/from16 v16, p1

    .line 577
    .end local p1    # "ua":Ljava/lang/String;
    .restart local v16    # "ua":Ljava/lang/String;
    goto/16 :goto_2

    .line 569
    .end local v16    # "ua":Ljava/lang/String;
    .restart local v2    # "appProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .restart local v10    # "joHost":Lcom/alibaba/fastjson/JSONObject;
    .restart local v14    # "rpcUrl":Ljava/lang/String;
    .restart local v15    # "strHost":Ljava/lang/String;
    .restart local p1    # "ua":Ljava/lang/String;
    :cond_a
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_b

    const-string/jumbo v19, "mobilegwpre.alipay.com"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_b

    .line 570
    const-string/jumbo v12, "rc"

    .restart local v12    # "productType":Ljava/lang/String;
    goto :goto_3

    .line 572
    .end local v12    # "productType":Ljava/lang/String;
    :cond_b
    const-string/jumbo v12, "dev"

    .restart local v12    # "productType":Ljava/lang/String;
    goto :goto_3
.end method

.method private initUserAgent()V
    .locals 13

    .prologue
    .line 417
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getSettings()Lcom/alipay/mobile/nebula/webview/APWebSettings;

    move-result-object v7

    .line 420
    .local v7, "settings":Lcom/alipay/mobile/nebula/webview/APWebSettings;
    :try_start_0
    invoke-interface {v7}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v8

    .line 421
    .local v8, "ua":Ljava/lang/String;
    move-object v6, v8

    .line 424
    .local v6, "originalUA":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v10

    const-class v11, Lcom/alipay/mobile/nebula/provider/H5ChannelProvider;

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/nebula/provider/H5ChannelProvider;

    .line 425
    .local v5, "h5ChannelProvider":Lcom/alipay/mobile/nebula/provider/H5ChannelProvider;
    const-string/jumbo v0, "default"

    .line 426
    .local v0, "channelId":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 427
    invoke-interface {v5}, Lcom/alipay/mobile/nebula/provider/H5ChannelProvider;->getChannelId()Ljava/lang/String;

    move-result-object v0

    .line 429
    :cond_0
    const-string/jumbo v10, "5136"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 430
    const-string/jumbo v10, "534.30"

    const-string/jumbo v11, "537.36"

    invoke-virtual {v8, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 431
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " AlipayChannelId/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 434
    :cond_1
    const-string/jumbo v10, "UCBS"

    invoke-virtual {v8, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string/jumbo v10, "UWS"

    invoke-virtual {v8, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 435
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " UCBS/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getVersion()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 436
    const-class v10, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 437
    .local v1, "configProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v1, :cond_2

    .line 438
    const-string/jumbo v10, "NO"

    const-string/jumbo v11, "h5_enableDetectIfHasContent"

    invoke-interface {v1, v11}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    const/4 v3, 0x1

    .line 439
    .local v3, "enable":Z
    :goto_0
    iget-object v10, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->h5Page:Liop;

    if-eqz v10, :cond_2

    if-eqz v3, :cond_2

    .line 440
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " ChannelId("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->h5Page:Liop;

    invoke-interface {v11}, Liop;->getWebViewId()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 445
    .end local v1    # "configProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .end local v3    # "enable":Z
    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " NebulaSDK/1.8.100112 Nebula"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 448
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v10

    const-class v11, Lcom/alipay/mobile/nebula/provider/H5UaProvider;

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/alipay/mobile/nebula/provider/H5UaProvider;

    .line 451
    .local v9, "uaProvider":Lcom/alipay/mobile/nebula/provider/H5UaProvider;
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v10

    const-class v11, Lcom/alipay/mobile/nebula/provider/H5AliPayUaProvider;

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/nebula/provider/H5AliPayUaProvider;

    .line 453
    .local v4, "h5AliPayUaProvider":Lcom/alipay/mobile/nebula/provider/H5AliPayUaProvider;
    if-eqz v9, :cond_6

    .line 454
    invoke-interface {v9, v8}, Lcom/alipay/mobile/nebula/provider/H5UaProvider;->getUa(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->userAgent:Ljava/lang/String;

    .line 471
    :cond_3
    :goto_1
    iget-object v10, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->userAgent:Ljava/lang/String;

    invoke-direct {p0, v7, v10, v6}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->setUserAgent(Lcom/alipay/mobile/nebula/webview/APWebSettings;Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    iget-object v10, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "set final ua "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->userAgent:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    sget-boolean v10, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v10, :cond_4

    .line 474
    iget-object v10, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "final user agent "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v7}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    .end local v0    # "channelId":Ljava/lang/String;
    .end local v4    # "h5AliPayUaProvider":Lcom/alipay/mobile/nebula/provider/H5AliPayUaProvider;
    .end local v5    # "h5ChannelProvider":Lcom/alipay/mobile/nebula/provider/H5ChannelProvider;
    .end local v6    # "originalUA":Ljava/lang/String;
    .end local v8    # "ua":Ljava/lang/String;
    .end local v9    # "uaProvider":Lcom/alipay/mobile/nebula/provider/H5UaProvider;
    :cond_4
    :goto_2
    return-void

    .line 438
    .restart local v0    # "channelId":Ljava/lang/String;
    .restart local v1    # "configProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .restart local v5    # "h5ChannelProvider":Lcom/alipay/mobile/nebula/provider/H5ChannelProvider;
    .restart local v6    # "originalUA":Ljava/lang/String;
    .restart local v8    # "ua":Ljava/lang/String;
    :cond_5
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 456
    .end local v1    # "configProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .restart local v4    # "h5AliPayUaProvider":Lcom/alipay/mobile/nebula/provider/H5AliPayUaProvider;
    .restart local v9    # "uaProvider":Lcom/alipay/mobile/nebula/provider/H5UaProvider;
    :cond_6
    invoke-direct {p0, v8}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getDefaultUserAgent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->userAgent:Ljava/lang/String;

    .line 459
    if-eqz v4, :cond_3

    .line 460
    iget-object v10, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->userAgent:Ljava/lang/String;

    invoke-interface {v4, v10}, Lcom/alipay/mobile/nebula/provider/H5AliPayUaProvider;->getUa(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->userAgent:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 476
    .end local v0    # "channelId":Ljava/lang/String;
    .end local v4    # "h5AliPayUaProvider":Lcom/alipay/mobile/nebula/provider/H5AliPayUaProvider;
    .end local v5    # "h5ChannelProvider":Lcom/alipay/mobile/nebula/provider/H5ChannelProvider;
    .end local v6    # "originalUA":Ljava/lang/String;
    .end local v8    # "ua":Ljava/lang/String;
    .end local v9    # "uaProvider":Lcom/alipay/mobile/nebula/provider/H5UaProvider;
    :catch_0
    move-exception v2

    .line 477
    .local v2, "e":Ljava/lang/Exception;
    iget-object v10, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "setUserAgent exception"

    invoke-static {v10, v11, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private loadBlankPage(I)V
    .locals 6
    .param p1, "time"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1059
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "loadBlankPage"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1060
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "H5WebView onWebViewDestory"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1061
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->h5Page:Liop;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->h5Page:Liop;

    invoke-interface {v2}, Liop;->ifContainsEmbedView()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1062
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->h5Page:Liop;

    invoke-interface {v2}, Liop;->getEmbededViewProvider()Lcom/alipay/mobile/nebula/provider/H5EmbededViewProvider;

    move-result-object v0

    .line 1063
    .local v0, "embededViewProvider":Lcom/alipay/mobile/nebula/provider/H5EmbededViewProvider;
    if-eqz v0, :cond_0

    .line 1064
    invoke-interface {v0}, Lcom/alipay/mobile/nebula/provider/H5EmbededViewProvider;->onWebViewDestory()V

    .line 1069
    .end local v0    # "embededViewProvider":Lcom/alipay/mobile/nebula/provider/H5EmbededViewProvider;
    :cond_0
    const-string/jumbo v2, "about:blank"

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->loadUrl(Ljava/lang/String;)V

    .line 1070
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->reload()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1076
    :goto_0
    new-instance v2, Lcom/alipay/mobile/nebulacore/web/H5WebView$7;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/nebulacore/web/H5WebView$7;-><init>(Lcom/alipay/mobile/nebulacore/web/H5WebView;)V

    int-to-long v4, p1

    invoke-static {v2, v4, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;J)V

    .line 1082
    return-void

    .line 1071
    :catch_0
    move-exception v1

    .line 1073
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "loadBlankPage exception."

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private loadUrlInternal(Ljava/lang/String;Lcom/alipay/mobile/nebula/view/IH5EmbedViewJSCallback;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "jsCallback"    # Lcom/alipay/mobile/nebula/view/IH5EmbedViewJSCallback;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 650
    :try_start_0
    const-string/jumbo v4, "javascript"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 651
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-lt v4, v5, :cond_1

    move v1, v0

    .line 652
    .local v1, "meetApiLevel19":Z
    :goto_0
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->userAgent:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->userAgent:Ljava/lang/String;

    const-string/jumbo v5, "UCBS"

    .line 653
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->userAgent:Ljava/lang/String;

    const-string/jumbo v5, "UWS"

    .line 654
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->userAgent:Ljava/lang/String;

    const-string/jumbo v5, "U3"

    .line 655
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 656
    .local v0, "isUc":Z
    :cond_0
    :goto_1
    if-eqz v0, :cond_4

    .line 658
    if-nez p2, :cond_3

    .line 659
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 696
    .end local v0    # "isUc":Z
    .end local v1    # "meetApiLevel19":Z
    :goto_2
    return-void

    :cond_1
    move v1, v3

    .line 651
    goto :goto_0

    .restart local v1    # "meetApiLevel19":Z
    :cond_2
    move v0, v3

    .line 655
    goto :goto_1

    .line 661
    .restart local v0    # "isUc":Z
    :cond_3
    new-instance v3, Lcom/alipay/mobile/nebulacore/web/H5WebView$4;

    invoke-direct {v3, p0, p2}, Lcom/alipay/mobile/nebulacore/web/H5WebView$4;-><init>(Lcom/alipay/mobile/nebulacore/web/H5WebView;Lcom/alipay/mobile/nebula/view/IH5EmbedViewJSCallback;)V

    invoke-virtual {p0, p1, v3}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 690
    .end local v0    # "isUc":Z
    .end local v1    # "meetApiLevel19":Z
    :catch_0
    move-exception v2

    .line 692
    .local v2, "t":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "loadUrl exception."

    invoke-static {v3, v4, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 694
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->apWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v3, p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_2

    .line 670
    .end local v2    # "t":Ljava/lang/Throwable;
    .restart local v0    # "isUc":Z
    .restart local v1    # "meetApiLevel19":Z
    :cond_4
    if-eqz v1, :cond_6

    .line 671
    if-nez p2, :cond_5

    .line 672
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {p0, p1, v3}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_2

    .line 674
    :cond_5
    new-instance v3, Lcom/alipay/mobile/nebulacore/web/H5WebView$5;

    invoke-direct {v3, p0, p2}, Lcom/alipay/mobile/nebulacore/web/H5WebView$5;-><init>(Lcom/alipay/mobile/nebulacore/web/H5WebView;Lcom/alipay/mobile/nebula/view/IH5EmbedViewJSCallback;)V

    invoke-virtual {p0, p1, v3}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_2

    .line 683
    :cond_6
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->apWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v3, p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_2

    .line 687
    .end local v0    # "isUc":Z
    .end local v1    # "meetApiLevel19":Z
    :cond_7
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->apWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v3, p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private preRequestMainFrame()V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 292
    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->h5Page:Liop;

    if-nez v9, :cond_1

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 295
    :cond_1
    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->h5Page:Liop;

    invoke-interface {v9}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v9

    const-string/jumbo v10, "url"

    invoke-static {v9, v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 296
    .local v5, "url":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 299
    const-class v9, Lcom/alipay/mobile/nebula/provider/H5PreConnectProvider;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebula/provider/H5PreConnectProvider;

    .line 300
    .local v3, "provider":Lcom/alipay/mobile/nebula/provider/H5PreConnectProvider;
    if-eqz v3, :cond_0

    .line 302
    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->h5Page:Liop;

    invoke-interface {v3, v5, v9}, Lcom/alipay/mobile/nebula/provider/H5PreConnectProvider;->preConnect(Ljava/lang/String;Liop;)V

    .line 304
    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->h5Page:Liop;

    invoke-interface {v9}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v9

    const-string/jumbo v10, "onlineHost"

    invoke-static {v9, v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 306
    .local v2, "onlineHost":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-virtual {v5, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    move v4, v7

    .line 308
    .local v4, "startsWithOnlineHost":Z
    :goto_1
    invoke-static {v5}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->matchAppId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    move v6, v7

    .line 310
    .local v6, "urlWithAppId":Z
    :goto_2
    const-class v9, Lcom/alipay/mobile/nebula/provider/H5AutoLoginProvider;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5AutoLoginProvider;

    .line 311
    .local v0, "autoLoginProvider":Lcom/alipay/mobile/nebula/provider/H5AutoLoginProvider;
    if-eqz v0, :cond_4

    invoke-interface {v0, v5}, Lcom/alipay/mobile/nebula/provider/H5AutoLoginProvider;->canAutoLogin(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    move v1, v7

    .line 313
    .local v1, "canAutoLogin":Z
    :goto_3
    if-nez v4, :cond_0

    if-nez v6, :cond_0

    if-nez v1, :cond_0

    .line 317
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->h5Page:Liop;

    invoke-interface {v3, v5, v7}, Lcom/alipay/mobile/nebula/provider/H5PreConnectProvider;->preRequest(Ljava/lang/String;Liop;)V

    goto :goto_0

    .end local v0    # "autoLoginProvider":Lcom/alipay/mobile/nebula/provider/H5AutoLoginProvider;
    .end local v1    # "canAutoLogin":Z
    .end local v4    # "startsWithOnlineHost":Z
    .end local v6    # "urlWithAppId":Z
    :cond_2
    move v4, v8

    .line 306
    goto :goto_1

    .restart local v4    # "startsWithOnlineHost":Z
    :cond_3
    move v6, v8

    .line 308
    goto :goto_2

    .restart local v0    # "autoLoginProvider":Lcom/alipay/mobile/nebula/provider/H5AutoLoginProvider;
    .restart local v6    # "urlWithAppId":Z
    :cond_4
    move v1, v8

    .line 311
    goto :goto_3
.end method

.method private releaseWebView()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1086
    :try_start_0
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "releaseWebView"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->h5Page:Liop;

    if-eqz v3, :cond_0

    .line 1088
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->h5Page:Liop;

    invoke-interface {v3}, Liop;->getEmbededViewProvider()Lcom/alipay/mobile/nebula/provider/H5EmbededViewProvider;

    move-result-object v3

    invoke-interface {v3}, Lcom/alipay/mobile/nebula/provider/H5EmbededViewProvider;->releaseView()V

    .line 1090
    :cond_0
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->h5Page:Liop;

    .line 1092
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->apWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v3}, Lcom/alipay/mobile/nebula/webview/APWebView;->getView()Landroid/view/View;

    move-result-object v0

    .line 1093
    .local v0, "content":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 1094
    .local v1, "parent":Landroid/view/ViewParent;
    instance-of v3, v1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    .line 1095
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1    # "parent":Landroid/view/ViewParent;
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1098
    :cond_1
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1099
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 1100
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 1101
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->setDownloadListener(Lcom/alipay/mobile/nebula/webview/APDownloadListener;)V

    .line 1102
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->setWebViewClient(Lcom/alipay/mobile/nebula/webview/APWebViewClient;)V

    .line 1103
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->setWebChromeClient(Lcom/alipay/mobile/nebula/webview/APWebChromeClient;)V

    .line 1104
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->stopLoading()V

    .line 1105
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->clearHistory()V

    .line 1106
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->clearSslPreferences()V

    .line 1107
    invoke-virtual {v0}, Landroid/view/View;->destroyDrawingCache()V

    .line 1108
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->freeMemory()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1113
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->destroy()V

    .line 1114
    .end local v0    # "content":Landroid/view/View;
    :goto_0
    return-void

    .line 1110
    :catch_0
    move-exception v2

    .line 1111
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_1
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "releaseWebView exception."

    invoke-static {v3, v4, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1113
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->destroy()V

    goto :goto_0

    .end local v2    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->destroy()V

    throw v3
.end method

.method private setUserAgent(Lcom/alipay/mobile/nebula/webview/APWebSettings;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "settings"    # Lcom/alipay/mobile/nebula/webview/APWebSettings;
    .param p2, "userAgent"    # Ljava/lang/String;
    .param p3, "originalUA"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 482
    const-string/jumbo v2, "h5_handle4ua"

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 483
    .local v1, "h5_handle4uaString":Ljava/lang/String;
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    .line 484
    .local v0, "h5_handle4uaJsonArray":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v0, :cond_0

    .line 485
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->appId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONArray;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 486
    invoke-interface {p1, p3}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 496
    :goto_0
    return-void

    .line 491
    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->startParam:Landroid/os/Bundle;

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/Nebula;->isTinyWebView(Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 492
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " MiniProgram"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 495
    :cond_1
    invoke-interface {p1, p2}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->setUserAgentString(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 709
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->apWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/nebula/webview/APWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 710
    return-void
.end method

.method public canGoBack()Z
    .locals 1

    .prologue
    .line 831
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->apWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->canGoBack()Z

    move-result v0

    return v0
.end method

.method public canGoBackOrForward(I)Z
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 851
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->apWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->canGoForward()Z

    move-result v0

    return v0
.end method

.method public canGoForward()Z
    .locals 1

    .prologue
    .line 841
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->apWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->canGoForward()Z

    move-result v0

    return v0
.end method

.method public capturePicture()Landroid/graphics/Picture;
    .locals 1

    .prologue
    .line 1129
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->apWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->capturePicture()Landroid/graphics/Picture;

    move-result-object v0

    return-object v0
.end method

.method public clearCache(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 950
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->apWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->clearCache(Z)V

    .line 951
    return-void
.end method

.method public clearFormData()V
    .locals 1

    .prologue
    .line 955
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->apWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->clearFormData()V

    .line 956
    return-void
.end method

.method public clearHistory()V
    .locals 1

    .prologue
    .line 960
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->apWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->clearHistory()V

    .line 961
    return-void
.end method

.method public clearSslPreferences()V
    .locals 1

    .prologue
    .line 965
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->apWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->clearSslPreferences()V

    .line 966
    return-void
.end method

.method public copyBackForwardList()Lcom/alipay/mobile/nebula/webview/APWebBackForwardList;
    .locals 1

    .prologue
    .line 970
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->apWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->copyBackForwardList()Lcom/alipay/mobile/nebula/webview/APWebBackForwardList;

    move-result-object v0

    return-object v0
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 774
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->apWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->destroy()V

    .line 775
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "var1"    # Landroid/view/KeyEvent;

    .prologue
    .line 1195
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->apWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 1
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
    .line 816
    .local p2, "stringValueCallback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->apWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/nebula/webview/APWebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 817
    return-void
.end method

.method public execJavaScript4EmbedView(Ljava/lang/String;Lcom/alipay/mobile/nebula/view/IH5EmbedViewJSCallback;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "jsCallback"    # Lcom/alipay/mobile/nebula/view/IH5EmbedViewJSCallback;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 631
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 646
    :goto_0
    return-void

    .line 635
    :cond_0
    move-object v0, p1

    .line 638
    .local v0, "finalUrl":Ljava/lang/String;
    new-instance v1, Lcom/alipay/mobile/nebulacore/web/H5WebView$3;

    invoke-direct {v1, p0, v0, p2}, Lcom/alipay/mobile/nebulacore/web/H5WebView$3;-><init>(Lcom/alipay/mobile/nebulacore/web/H5WebView;Ljava/lang/String;Lcom/alipay/mobile/nebula/view/IH5EmbedViewJSCallback;)V

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public flingScroll(II)V
    .locals 1
    .param p1, "i"    # I
    .param p2, "i2"    # I

    .prologue
    .line 719
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->apWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/nebula/webview/APWebView;->flingScroll(II)V

    .line 720
    return-void
.end method

.method public freeMemory()V
    .locals 1

    .prologue
    .line 945
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->apWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->freeMemory()V

    .line 946
    return-void
.end method

.method public getCertificate()Landroid/net/http/SslCertificate;
    .locals 1

    .prologue
    .line 754
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->apWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object v0

    return-object v0
.end method

.method public getContentHeight()I
    .locals 1

    .prologue
    .line 906
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->apWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->getContentHeight()I

    move-result v0

    return v0
.end method

.method public getContentWidth()I
    .locals 1

    .prologue
    .line 911
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->apWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->getContentWidth()I

    move-result v0

    return v0
.end method

.method public getCurrentPageSnapshot(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Bitmap;ZI)Z
    .locals 6
    .param p1, "dstRect"    # Landroid/graphics/Rect;
    .param p2, "srcRect"    # Landroid/graphics/Rect;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;
    .param p4, "clipByView"    # Z
    .param p5, "coordinate"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1200
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->apWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/alipay/mobile/nebula/webview/APWebView;->getCurrentPageSnapshot(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Bitmap;ZI)Z

    move-result v0

    return v0
.end method

.method public getFavicon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 896
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->apWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getH5NativeInput()Liov;
    .locals 1

    .prologue
    .line 1160
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->apWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->getH5NativeInput()Liov;

    move-result-object v0

    return-object v0
.end method

.method public getH5NumInputKeyboard()Liov;
    .locals 1

    .prologue
    .line 1155
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->apWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->getH5NumInputKeyboard()Liov;

    move-result-object v0

    return-object v0
.end method

.method public getH5Page()Liop;
    .locals 1

    .prologue
    .line 1205
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->h5Page:Liop;

    return-object v0
.end method

.method public getHitTestResult()Lcom/alipay/mobile/nebula/webview/APHitTestResult;
    .locals 1

    .prologue
    .line 1124
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->apWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->getHitTestResult()Lcom/alipay/mobile/nebula/webview/APHitTestResult;

    move-result-object v0

    return-object v0
.end method

.method public getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s2"    # Ljava/lang/String;

    .prologue
    .line 769
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->apWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/nebula/webview/APWebView;->getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInternalContentView()Lcom/alipay/mobile/nebula/webview/APWebView;
    .locals 1

    .prologue
    .line 1211
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->apWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    return-object v0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 886
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->apWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 901
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->apWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->getProgress()I

    move-result v0

    return v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 1170
    iget v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->mScale:F

    return v0
.end method

.method public getScrollY()I
    .locals 1

    .prologue
    .line 1190
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->apWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->getScrollY()I

    move-result v0

    return v0
.end method

.method public getSettings()Lcom/alipay/mobile/nebula/webview/APWebSettings;
    .locals 1

    .prologue
    .line 1119
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->apWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->getSettings()Lcom/alipay/mobile/nebula/webview/APWebSettings;

    move-result-object v0

    return-object v0
.end method

.method public getTextSize(I)Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;
    .locals 1
    .param p1, "textZoom"    # I

    .prologue
    .line 594
    const/16 v0, 0xc8

    if-lt p1, v0, :cond_0

    .line 595
    sget-object v0, Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;->LARGEST:Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;

    .line 603
    :goto_0
    return-object v0

    .line 596
    :cond_0
    const/16 v0, 0x96

    if-lt p1, v0, :cond_1

    .line 597
    sget-object v0, Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;->LARGER:Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;

    goto :goto_0

    .line 598
    :cond_1
    const/16 v0, 0x64

    if-lt p1, v0, :cond_2

    .line 599
    sget-object v0, Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;->NORMAL:Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;

    goto :goto_0

    .line 600
    :cond_2
    const/16 v0, 0x4b

    if-lt p1, v0, :cond_3

    .line 601
    sget-object v0, Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;->SMALLER:Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;

    goto :goto_0

    .line 603
    :cond_3
    sget-object v0, Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;->NORMAL:Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 891
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->apWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/alipay/mobile/nebula/webview/WebViewType;
    .locals 1

    .prologue
    .line 1143
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->apWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->getType()Lcom/alipay/mobile/nebula/webview/WebViewType;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 881
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->apWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1147
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->apWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    if-nez v0, :cond_0

    .line 1148
    const-string/jumbo v0, "(Null webview)"

    .line 1150
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->apWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->getVersion()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1139
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->apWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final getWebViewConfig()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 704
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->webViewConfig:Landroid/os/Bundle;

    return-object v0
.end method

.method public getWebViewIndex()I
    .locals 1

    .prologue
    .line 274
    iget v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->webViewIndex:I

    return v0
.end method

.method public goBack()V
    .locals 1

    .prologue
    .line 836
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->apWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->goBack()V

    .line 837
    return-void
.end method

.method public goBackOrForward(I)V
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 856
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->apWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->goBackOrForward(I)V

    .line 857
    return-void
.end method

.method public goForward()V
    .locals 1

    .prologue
    .line 846
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->apWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->goForward()V

    .line 847
    return-void
.end method

.method public init(Z)V
    .locals 2
    .param p1, "allowAccessFromFileURL"    # Z

    .prologue
    .line 278
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "initWebView"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->initUserAgent()V

    .line 280
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->preRequestMainFrame()V

    .line 282
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->applyCustomSettings(Z)V

    .line 283
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->apWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    if-nez v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "FATAL ERROR, the internal glue apWebView is null!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    :cond_0
    sget-boolean v0, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 287
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 289
    :cond_1
    return-void
.end method

.method public invokeZoomPicker()V
    .locals 1

    .prologue
    .line 876
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->apWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->invokeZoomPicker()V

    .line 877
    return-void
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 940
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->apWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->isPaused()Z

    move-result v0

    return v0
.end method

.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s2"    # Ljava/lang/String;
    .param p3, "s3"    # Ljava/lang/String;

    .prologue
    .line 806
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->apWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, p1, p2, p3}, Lcom/alipay/mobile/nebula/webview/APWebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    return-void
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s2"    # Ljava/lang/String;
    .param p3, "s3"    # Ljava/lang/String;
    .param p4, "s4"    # Ljava/lang/String;
    .param p5, "s5"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 811
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->apWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/alipay/mobile/nebula/webview/APWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 609
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 627
    :goto_0
    return-void

    .line 613
    :cond_0
    const-string/jumbo v0, "javascript"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 614
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->loadUrlTime:J

    .line 615
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->finalUrl:Ljava/lang/String;

    .line 619
    :cond_1
    new-instance v0, Lcom/alipay/mobile/nebulacore/web/H5WebView$2;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/nebulacore/web/H5WebView$2;-><init>(Lcom/alipay/mobile/nebulacore/web/H5WebView;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
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

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 794
    .local p2, "stringStringMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->loadUrlTime:J

    .line 795
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->finalUrl:Ljava/lang/String;

    .line 796
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->apWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/nebula/webview/APWebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 797
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 998
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 999
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingSuperCall"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1003
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1005
    return-void
.end method

.method public onPause()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 916
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->apWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v1}, Lcom/alipay/mobile/nebula/webview/APWebView;->onPause()V

    .line 917
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "H5WebView onWebViewPause"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->h5Page:Liop;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->h5Page:Liop;

    invoke-interface {v1}, Liop;->ifContainsEmbedView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 919
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->h5Page:Liop;

    invoke-interface {v1}, Liop;->getEmbededViewProvider()Lcom/alipay/mobile/nebula/provider/H5EmbededViewProvider;

    move-result-object v0

    .line 920
    .local v0, "embededViewProvider":Lcom/alipay/mobile/nebula/provider/H5EmbededViewProvider;
    if-eqz v0, :cond_0

    .line 921
    invoke-interface {v0}, Lcom/alipay/mobile/nebula/provider/H5EmbededViewProvider;->onWebViewPause()V

    .line 924
    .end local v0    # "embededViewProvider":Lcom/alipay/mobile/nebula/provider/H5EmbededViewProvider;
    :cond_0
    return-void
.end method

.method public onRelease()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1008
    iget-boolean v6, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->released:Z

    if-eqz v6, :cond_0

    .line 1055
    :goto_0
    return-void

    .line 1011
    :cond_0
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->released:Z

    .line 1012
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "releaseWebView!"

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1014
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->loadUrlTime:J

    sub-long v0, v6, v8

    .line 1016
    .local v0, "elapsed":J
    iget-wide v6, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->loadUrlTime:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_1

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->h5Page:Liop;

    .line 1017
    invoke-interface {v6}, Liop;->getPageData()Lior;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->h5Page:Liop;

    .line 1018
    invoke-interface {v6}, Liop;->getPageData()Lior;

    move-result-object v6

    .line 1213
    iget-wide v6, v6, Lior;->j:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_5

    const/4 v6, 0x1

    .line 1018
    :goto_1
    if-nez v6, :cond_1

    .line 1019
    const-string/jumbo v6, "H5_ABNORMAL_ERROR"

    invoke-static {v6}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v6

    .line 1020
    invoke-virtual {v6}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v6

    const-string/jumbo v7, "PAGE_STARTED_ABNORMAL"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alipay/mobile/nebula/log/H5LogData;->param2()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v6

    const-string/jumbo v7, "NO_ON_PAGE_STARTED"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v6

    .line 1021
    invoke-virtual {v6}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v6

    const-string/jumbo v7, "elapsed"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v6

    const-string/jumbo v7, "url"

    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->finalUrl:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v6

    .line 1019
    invoke-static {v6}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logH5Exception(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 1024
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getInstance()Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;

    move-result-object v6

    const-class v7, Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    .line 1025
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 1026
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v6

    sget-object v7, Liov$a;->x:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 1029
    :cond_2
    const/16 v5, 0x3e8

    .line 1031
    .local v5, "time":I
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isMainProcess()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->startParam:Landroid/os/Bundle;

    invoke-static {v6}, Lcom/alipay/mobile/nebulacore/Nebula;->useSW(Landroid/os/Bundle;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->startParam:Landroid/os/Bundle;

    const-string/jumbo v7, "isTinyApp"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1032
    :cond_3
    const-string/jumbo v6, "h5_webview_release"

    invoke-static {v6}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1033
    .local v2, "enable":Ljava/lang/String;
    const-string/jumbo v6, "no"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 1034
    const/16 v5, 0x1f4

    .line 1035
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "useSw use 500"

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    .end local v2    # "enable":Ljava/lang/String;
    :cond_4
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getUrl()Ljava/lang/String;

    .line 1042
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1048
    :goto_2
    move v3, v5

    .line 1049
    .local v3, "finalTime":I
    new-instance v6, Lcom/alipay/mobile/nebulacore/web/H5WebView$6;

    invoke-direct {v6, p0, v3}, Lcom/alipay/mobile/nebulacore/web/H5WebView$6;-><init>(Lcom/alipay/mobile/nebulacore/web/H5WebView;I)V

    int-to-long v8, v5

    invoke-static {v6, v8, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;J)V

    goto/16 :goto_0

    .line 1213
    .end local v3    # "finalTime":I
    .end local v5    # "time":I
    :cond_5
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 1043
    .restart local v5    # "time":I
    :catch_0
    move-exception v4

    .line 1044
    .local v4, "throwable":Ljava/lang/Throwable;
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "onRelease addCrashHeadInfo"

    invoke-static {v6, v7, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public onResume()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 928
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->apWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v1}, Lcom/alipay/mobile/nebula/webview/APWebView;->onResume()V

    .line 929
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "H5WebView onWebViewResume"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->h5Page:Liop;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->h5Page:Liop;

    invoke-interface {v1}, Liop;->ifContainsEmbedView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 931
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->h5Page:Liop;

    invoke-interface {v1}, Liop;->getEmbededViewProvider()Lcom/alipay/mobile/nebula/provider/H5EmbededViewProvider;

    move-result-object v0

    .line 932
    .local v0, "embededViewProvider":Lcom/alipay/mobile/nebula/provider/H5EmbededViewProvider;
    if-eqz v0, :cond_0

    .line 933
    invoke-interface {v0}, Lcom/alipay/mobile/nebula/provider/H5EmbededViewProvider;->onWebViewResume()V

    .line 936
    .end local v0    # "embededViewProvider":Lcom/alipay/mobile/nebula/provider/H5EmbededViewProvider;
    :cond_0
    return-void
.end method

.method public overlayHorizontalScrollbar()Z
    .locals 1

    .prologue
    .line 744
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->apWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->overlayHorizontalScrollbar()Z

    move-result v0

    return v0
.end method

.method public overlayVerticalScrollbar()Z
    .locals 1

    .prologue
    .line 749
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->apWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->overlayVerticalScrollbar()Z

    move-result v0

    return v0
.end method

.method public pageDown(Z)Z
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 866
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->apWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->pageDown(Z)Z

    move-result v0

    return v0
.end method

.method public pageUp(Z)Z
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 861
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->apWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->pageUp(Z)Z

    move-result v0

    return v0
.end method

.method public postUrl(Ljava/lang/String;[B)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "bytes"    # [B

    .prologue
    .line 801
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->apWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/nebula/webview/APWebView;->postUrl(Ljava/lang/String;[B)V

    .line 802
    return-void
.end method

.method public reload()V
    .locals 1

    .prologue
    .line 826
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->apWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->reload()V

    .line 827
    return-void
.end method

.method public removeJavascriptInterface(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 991
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "removeJavascriptInterface "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 992
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 993
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->apWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 995
    :cond_0
    return-void
.end method

.method public restoreState(Landroid/os/Bundle;)Lcom/alipay/mobile/nebula/webview/APWebBackForwardList;
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 789
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->apWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->restoreState(Landroid/os/Bundle;)Lcom/alipay/mobile/nebula/webview/APWebBackForwardList;

    move-result-object v0

    return-object v0
.end method

.method public savePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s2"    # Ljava/lang/String;
    .param p3, "s3"    # Ljava/lang/String;

    .prologue
    .line 759
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->apWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, p1, p2, p3}, Lcom/alipay/mobile/nebula/webview/APWebView;->savePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    return-void
.end method

.method public saveState(Landroid/os/Bundle;)Lcom/alipay/mobile/nebula/webview/APWebBackForwardList;
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 784
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->apWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->saveState(Landroid/os/Bundle;)Lcom/alipay/mobile/nebula/webview/APWebBackForwardList;

    move-result-object v0

    return-object v0
.end method

.method public setAPWebViewListener(Lcom/alipay/mobile/nebula/webview/APWebViewListener;)V
    .locals 0
    .param p1, "apWebViewListener"    # Lcom/alipay/mobile/nebula/webview/APWebViewListener;

    .prologue
    .line 1135
    return-void
.end method

.method public setDownloadListener(Lcom/alipay/mobile/nebula/webview/APDownloadListener;)V
    .locals 1
    .param p1, "apDownloadListener"    # Lcom/alipay/mobile/nebula/webview/APDownloadListener;

    .prologue
    .line 975
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->apWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->setDownloadListener(Lcom/alipay/mobile/nebula/webview/APDownloadListener;)V

    .line 976
    return-void
.end method

.method public setH5OverScrollListener(Lcom/alipay/mobile/nebula/refresh/H5OverScrollListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/alipay/mobile/nebula/refresh/H5OverScrollListener;

    .prologue
    .line 700
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->mH5OverScrollListener:Lcom/alipay/mobile/nebula/refresh/H5OverScrollListener;

    .line 701
    return-void
.end method

.method public setHorizontalScrollBarEnabled(Z)V
    .locals 1
    .param p1, "horizontalScrollBarEnabled"    # Z

    .prologue
    .line 1180
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->apWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->setHorizontalScrollBarEnabled(Z)V

    .line 1181
    return-void
.end method

.method public setHorizontalScrollbarOverlay(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 734
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->apWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->setHorizontalScrollbarOverlay(Z)V

    .line 735
    return-void
.end method

.method public setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s2"    # Ljava/lang/String;
    .param p3, "s3"    # Ljava/lang/String;
    .param p4, "s4"    # Ljava/lang/String;

    .prologue
    .line 764
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->apWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/alipay/mobile/nebula/webview/APWebView;->setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    return-void
.end method

.method public setInitialScale(I)V
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 871
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->apWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->setInitialScale(I)V

    .line 872
    return-void
.end method

.method public setNetworkAvailable(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 779
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->apWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->setNetworkAvailable(Z)V

    .line 780
    return-void
.end method

.method public setOnScrollChangedCallback(Lcom/alipay/mobile/nebula/webview/H5ScrollChangedCallback;)V
    .locals 1
    .param p1, "changedCallback"    # Lcom/alipay/mobile/nebula/webview/H5ScrollChangedCallback;

    .prologue
    .line 1185
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->apWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->setOnScrollChangedCallback(Lcom/alipay/mobile/nebula/webview/H5ScrollChangedCallback;)V

    .line 1186
    return-void
.end method

.method public setScale(F)V
    .locals 0
    .param p1, "v"    # F

    .prologue
    .line 1165
    iput p1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->mScale:F

    .line 1166
    return-void
.end method

.method public setTextSize(I)V
    .locals 4
    .param p1, "size"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 583
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getSettings()Lcom/alipay/mobile/nebula/webview/APWebSettings;

    move-result-object v0

    .line 584
    .local v0, "settings":Lcom/alipay/mobile/nebula/webview/APWebSettings;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_0

    .line 585
    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->setTextZoom(I)V

    .line 590
    :goto_0
    return-void

    .line 587
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getTextSize(I)Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;

    move-result-object v1

    .line 588
    .local v1, "textSize":Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;
    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->setTextSize(Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;)V

    goto :goto_0
.end method

.method public setVerticalScrollBarEnabled(Z)V
    .locals 1
    .param p1, "verticalScrollBarEnabled"    # Z

    .prologue
    .line 1175
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->apWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->setVerticalScrollBarEnabled(Z)V

    .line 1176
    return-void
.end method

.method public setVerticalScrollbarOverlay(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 739
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->apWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->setVerticalScrollbarOverlay(Z)V

    .line 740
    return-void
.end method

.method public setWebChromeClient(Lcom/alipay/mobile/nebula/webview/APWebChromeClient;)V
    .locals 1
    .param p1, "client"    # Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    .prologue
    .line 986
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->apWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->setWebChromeClient(Lcom/alipay/mobile/nebula/webview/APWebChromeClient;)V

    .line 987
    return-void
.end method

.method public setWebContentsDebuggingEnabled(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 714
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->apWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->setWebContentsDebuggingEnabled(Z)V

    .line 715
    return-void
.end method

.method public setWebViewClient(Lcom/alipay/mobile/nebula/webview/APWebViewClient;)V
    .locals 1
    .param p1, "client"    # Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    .prologue
    .line 981
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->apWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->setWebViewClient(Lcom/alipay/mobile/nebula/webview/APWebViewClient;)V

    .line 982
    return-void
.end method

.method public stopLoading()V
    .locals 1

    .prologue
    .line 821
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->apWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->stopLoading()V

    .line 822
    return-void
.end method

.method public zoomIn()Z
    .locals 1

    .prologue
    .line 724
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->apWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->zoomIn()Z

    move-result v0

    return v0
.end method

.method public zoomOut()Z
    .locals 1

    .prologue
    .line 729
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->apWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->zoomOut()Z

    move-result v0

    return v0
.end method
