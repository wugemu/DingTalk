.class public Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView;
.super Ljava/lang/Object;
.source "DDSysWXWebView.java"

# interfaces
.implements Lcom/taobao/weex/ui/view/IWebView;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mOnErrorListener:Lcom/taobao/weex/ui/view/IWebView$OnErrorListener;

.field private mOnPageListener:Lcom/taobao/weex/ui/view/IWebView$OnPageListener;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mShowLoading:Z

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView;->mShowLoading:Z

    .line 40
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView;->mContext:Landroid/content/Context;

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView;)Lcom/taobao/weex/ui/view/IWebView$OnPageListener;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView;->mOnPageListener:Lcom/taobao/weex/ui/view/IWebView$OnPageListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView;)Lcom/taobao/weex/ui/view/IWebView$OnErrorListener;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView;->mOnErrorListener:Lcom/taobao/weex/ui/view/IWebView$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView;->showWebView(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView;->showProgressBar(Z)V

    return-void
.end method

.method private getWebView()Landroid/webkit/WebView;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 152
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method private initWebView(Landroid/webkit/WebView;)V
    .locals 3
    .param p1, "wv"    # Landroid/webkit/WebView;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 156
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 157
    .local v0, "settings":Landroid/webkit/WebSettings;
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 158
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 159
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 160
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 161
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 162
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 163
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 164
    new-instance v1, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView$1;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView$1;-><init>(Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView;)V

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 221
    new-instance v1, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView$2;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView$2;-><init>(Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView;)V

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 237
    return-void
.end method

.method private showProgressBar(Z)V
    .locals 2
    .param p1, "shown"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView;->mShowLoading:Z

    if-eqz v0, :cond_0

    .line 139
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 142
    :cond_0
    return-void

    .line 139
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private showWebView(Z)V
    .locals 2
    .param p1, "shown"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 145
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 146
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView;->mWebView:Landroid/webkit/WebView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 148
    :cond_0
    return-void

    .line 146
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 71
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    .line 72
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView;->mWebView:Landroid/webkit/WebView;

    .line 76
    :cond_0
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v7, 0x11

    const/4 v6, -0x2

    const/4 v5, -0x1

    .line 44
    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 45
    .local v1, "root":Landroid/widget/FrameLayout;
    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 46
    new-instance v3, Landroid/webkit/WebView;

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView;->mWebView:Landroid/webkit/WebView;

    .line 48
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView;->resume()V

    .line 50
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 53
    .local v2, "wvLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v7, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 54
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3, v2}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 56
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView;->mWebView:Landroid/webkit/WebView;

    invoke-direct {p0, v3}, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView;->initWebView(Landroid/webkit/WebView;)V

    .line 58
    new-instance v3, Landroid/widget/ProgressBar;

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView;->mProgressBar:Landroid/widget/ProgressBar;

    .line 59
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView;->showProgressBar(Z)V

    .line 60
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 63
    .local v0, "pLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 65
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 66
    return-object v1
.end method

.method public goBack()V
    .locals 1

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 97
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 99
    :cond_0
    return-void
.end method

.method public goForward()V
    .locals 1

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 103
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    .line 105
    :cond_0
    return-void
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 87
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 80
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 82
    :cond_0
    return-void
.end method

.method public postMessage(Ljava/lang/Object;)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 110
    return-void
.end method

.method public reload()V
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 91
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    .line 93
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    .line 134
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->resumeTimers()V

    .line 135
    return-void
.end method

.method public setOnErrorListener(Lcom/taobao/weex/ui/view/IWebView$OnErrorListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/taobao/weex/ui/view/IWebView$OnErrorListener;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView;->mOnErrorListener:Lcom/taobao/weex/ui/view/IWebView$OnErrorListener;

    .line 118
    return-void
.end method

.method public setOnMessageListener(Lcom/taobao/weex/ui/view/IWebView$OnMessageListener;)V
    .locals 0
    .param p1, "onMessageListener"    # Lcom/taobao/weex/ui/view/IWebView$OnMessageListener;

    .prologue
    .line 127
    return-void
.end method

.method public setOnPageListener(Lcom/taobao/weex/ui/view/IWebView$OnPageListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/taobao/weex/ui/view/IWebView$OnPageListener;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView;->mOnPageListener:Lcom/taobao/weex/ui/view/IWebView$OnPageListener;

    .line 122
    return-void
.end method

.method public setShowLoading(Z)V
    .locals 0
    .param p1, "shown"    # Z

    .prologue
    .line 113
    iput-boolean p1, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView;->mShowLoading:Z

    .line 114
    return-void
.end method
