.class public Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper;
.super Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;
.source "RimetWebViewWrapper.java"

# interfaces
.implements Lhdf;


# instance fields
.field public b:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;-><init>(Landroid/content/Context;)V

    .line 30
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper;->a(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper;->a(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper;->a(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper;)Lcom/alibaba/lightapp/runtime/webview/RimetWebView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper;->b:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 50
    :try_start_0
    sget v2, Lhdn$i;->webview_wrapper_layout:I

    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    iput-object v2, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper;->b:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    .line 51
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper;->b:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->setCustomized(Z)V

    .line 52
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 53
    .local v1, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper;->b:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-virtual {p0, v2, v1}, Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .end local v1    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :goto_0
    return-void

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 127
    return-void
.end method

.method public final a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "data"    # Lorg/json/JSONObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 286
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper;->b:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper;->b:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 289
    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 2
    .param p1, "isClearCache"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 198
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper;->b:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper;->b:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->clearCache(Z)V

    .line 202
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper;->b:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper;->b:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->stopLoading()V

    .line 178
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper;->b:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper;->b:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->clearHistory()V

    .line 194
    :cond_0
    return-void
.end method

.method public canGoBack()Z
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper;->b:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper;->b:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCoreView()Landroid/view/View;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper;->b:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    if-nez v0, :cond_0

    .line 280
    const/4 v0, 0x0

    .line 282
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper;->b:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->getCoreView()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getSettings()Lcom/uc/webview/export/WebSettings;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper;->b:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper;->b:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->getSettings()Lcom/uc/webview/export/WebSettings;

    move-result-object v0

    .line 185
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .prologue
    .line 131
    return-object p0
.end method

.method public getWebView()Lcom/uc/webview/export/WebView;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper;->b:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    return-object v0
.end method

.method public getWebViewWrapper()Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;
    .locals 0

    .prologue
    .line 136
    return-object p0
.end method

.method public goBack()V
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper;->b:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper;->b:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->goBack()V

    .line 214
    :cond_0
    return-void
.end method

.method public handleCreate()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper;->b:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper;->b:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    .line 83
    :cond_0
    return-void
.end method

.method public handleDestroy()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper;->b:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper;->b:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->d()V

    .line 91
    :cond_0
    return-void
.end method

.method public handlePause()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper;->b:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper;->b:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->onPause()V

    .line 115
    :cond_0
    return-void
.end method

.method public handleResume()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper;->b:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper;->b:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->onResume()V

    .line 108
    :cond_0
    return-void
.end method

.method public handleStart()V
    .locals 0

    .prologue
    .line 96
    return-void
.end method

.method public handleStop()V
    .locals 0

    .prologue
    .line 101
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper;->b:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper;->b:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-virtual {v0, p1}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->loadUrl(Ljava/lang/String;)V

    .line 144
    :cond_0
    return-void
.end method

.method public loadUrl(Ljava/lang/String;II)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 148
    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper;->loadUrl(Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method public reloadEntry(Ljava/lang/String;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method public setClient(Lhdf$a;)V
    .locals 1
    .param p1, "entryClient"    # Lhdf$a;

    .prologue
    .line 218
    if-eqz p1, :cond_0

    .line 219
    new-instance v0, Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper$1;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper$1;-><init>(Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper;Lhdf$a;)V

    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper;->setWebViewClient(Lcom/uc/webview/export/WebViewClient;)V

    .line 238
    :cond_0
    return-void
.end method

.method public setDownloadListener(Lcom/uc/webview/export/DownloadListener;)V
    .locals 1
    .param p1, "downloadListener"    # Lcom/uc/webview/export/DownloadListener;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper;->b:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper;->b:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-virtual {v0, p1}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->setDownloadListener(Lcom/uc/webview/export/DownloadListener;)V

    .line 170
    :cond_0
    return-void
.end method

.method public setGestureDetector(Landroid/view/GestureDetector;)V
    .locals 1
    .param p1, "gestureDetector"    # Landroid/view/GestureDetector;

    .prologue
    .line 272
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper;->b:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper;->b:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-virtual {v0, p1}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->setGestureDetector(Landroid/view/GestureDetector;)V

    .line 275
    :cond_0
    return-void
.end method

.method public setOnPageStatusCheckListener(Lhdf$b;)V
    .locals 2
    .param p1, "onPageStatusCheckListener"    # Lhdf$b;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 242
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper;->b:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    if-nez v0, :cond_0

    .line 261
    :goto_0
    return-void

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper;->b:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    new-instance v1, Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper$2;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper$2;-><init>(Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper;Lhdf$b;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->setOnPageStatusListener(Lcom/alibaba/lightapp/runtime/WebViewWrapper$b;)V

    goto :goto_0
.end method

.method public setWebViewClient(Lcom/uc/webview/export/WebViewClient;)V
    .locals 1
    .param p1, "webViewClient"    # Lcom/uc/webview/export/WebViewClient;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper;->b:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper;->b:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-virtual {v0, p1}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->setWebViewClient(Lcom/uc/webview/export/WebViewClient;)V

    .line 162
    :cond_0
    return-void
.end method
