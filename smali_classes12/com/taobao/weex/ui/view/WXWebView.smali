.class public Lcom/taobao/weex/ui/view/WXWebView;
.super Ljava/lang/Object;
.source "WXWebView.java"

# interfaces
.implements Lcom/taobao/weex/ui/view/IWebView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/ui/view/WXWebView$MessageHandler;
    }
.end annotation


# static fields
.field private static final BRIDGE_NAME:Ljava/lang/String; = "__WEEX_WEB_VIEW_BRIDGE"

.field private static final DOWNGRADE_JS_INTERFACE:Z

.field private static final POST_MESSAGE:I = 0x1

.field private static final SDK_VERSION:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMessageHandler:Landroid/os/Handler;

.field private mOnErrorListener:Lcom/taobao/weex/ui/view/IWebView$OnErrorListener;

.field private mOnMessageListener:Lcom/taobao/weex/ui/view/IWebView$OnMessageListener;

.field private mOnPageListener:Lcom/taobao/weex/ui/view/IWebView$OnPageListener;

.field private mOrigin:Ljava/lang/String;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mShowLoading:Z

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 65
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 67
    sput v0, Lcom/taobao/weex/ui/view/WXWebView;->SDK_VERSION:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/taobao/weex/ui/view/WXWebView;->DOWNGRADE_JS_INTERFACE:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "origin"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/weex/ui/view/WXWebView;->mShowLoading:Z

    .line 74
    iput-object p1, p0, Lcom/taobao/weex/ui/view/WXWebView;->mContext:Landroid/content/Context;

    .line 75
    iput-object p2, p0, Lcom/taobao/weex/ui/view/WXWebView;->mOrigin:Ljava/lang/String;

    .line 76
    return-void
.end method

.method static synthetic access$100(Lcom/taobao/weex/ui/view/WXWebView;)Lcom/taobao/weex/ui/view/IWebView$OnPageListener;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/ui/view/WXWebView;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXWebView;->mOnPageListener:Lcom/taobao/weex/ui/view/IWebView$OnPageListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/taobao/weex/ui/view/WXWebView;)Lcom/taobao/weex/ui/view/IWebView$OnMessageListener;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/ui/view/WXWebView;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXWebView;->mOnMessageListener:Lcom/taobao/weex/ui/view/IWebView$OnMessageListener;

    return-object v0
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 55
    sget-boolean v0, Lcom/taobao/weex/ui/view/WXWebView;->DOWNGRADE_JS_INTERFACE:Z

    return v0
.end method

.method static synthetic access$400(Lcom/taobao/weex/ui/view/WXWebView;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/taobao/weex/ui/view/WXWebView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/view/WXWebView;->evaluateJS(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/taobao/weex/ui/view/WXWebView;)Lcom/taobao/weex/ui/view/IWebView$OnErrorListener;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/ui/view/WXWebView;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXWebView;->mOnErrorListener:Lcom/taobao/weex/ui/view/IWebView$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/taobao/weex/ui/view/WXWebView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/taobao/weex/ui/view/WXWebView;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/view/WXWebView;->showWebView(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/taobao/weex/ui/view/WXWebView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/taobao/weex/ui/view/WXWebView;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/view/WXWebView;->showProgressBar(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/taobao/weex/ui/view/WXWebView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/taobao/weex/ui/view/WXWebView;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/ui/view/WXWebView;->onMessage(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private evaluateJS(Ljava/lang/String;)V
    .locals 2
    .param p1, "jsStr"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 345
    sget v0, Lcom/taobao/weex/ui/view/WXWebView;->SDK_VERSION:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    .line 346
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 350
    :goto_0
    return-void

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXWebView;->mWebView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0
.end method

.method private getWebView()Landroid/webkit/WebView;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 210
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXWebView;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method private initWebView(Landroid/webkit/WebView;)V
    .locals 3
    .param p1, "wv"    # Landroid/webkit/WebView;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 214
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 215
    .local v0, "settings":Landroid/webkit/WebSettings;
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 216
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 217
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 218
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 219
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 220
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 221
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 222
    new-instance v1, Lcom/taobao/weex/ui/view/WXWebView$1;

    invoke-direct {v1, p0}, Lcom/taobao/weex/ui/view/WXWebView$1;-><init>(Lcom/taobao/weex/ui/view/WXWebView;)V

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 282
    new-instance v1, Lcom/taobao/weex/ui/view/WXWebView$2;

    invoke-direct {v1, p0}, Lcom/taobao/weex/ui/view/WXWebView$2;-><init>(Lcom/taobao/weex/ui/view/WXWebView;)V

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 317
    sget-boolean v1, Lcom/taobao/weex/ui/view/WXWebView;->DOWNGRADE_JS_INTERFACE:Z

    if-nez v1, :cond_0

    .line 318
    new-instance v1, Lcom/taobao/weex/ui/view/WXWebView$3;

    invoke-direct {v1, p0}, Lcom/taobao/weex/ui/view/WXWebView$3;-><init>(Lcom/taobao/weex/ui/view/WXWebView;)V

    const-string/jumbo v2, "__WEEX_WEB_VIEW_BRIDGE"

    invoke-virtual {p1, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 325
    :cond_0
    return-void
.end method

.method private onMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "targetOrigin"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 328
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v3, p0, Lcom/taobao/weex/ui/view/WXWebView;->mOnMessageListener:Lcom/taobao/weex/ui/view/IWebView$OnMessageListener;

    if-eqz v3, :cond_0

    .line 330
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 331
    .local v1, "initData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v3, "data"

    invoke-static {p1}, Lgxk;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    const-string/jumbo v3, "origin"

    invoke-interface {v1, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    const-string/jumbo v3, "type"

    const-string/jumbo v4, "message"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 335
    .local v2, "threadMessage":Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v2, Landroid/os/Message;->what:I

    .line 336
    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 337
    iget-object v3, p0, Lcom/taobao/weex/ui/view/WXWebView;->mMessageHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    .end local v1    # "initData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "threadMessage":Landroid/os/Message;
    :cond_0
    return-void

    .line 338
    :catch_0
    move-exception v0

    .line 339
    .local v0, "e":Lcom/alibaba/fastjson/JSONException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method private showProgressBar(Z)V
    .locals 2
    .param p1, "shown"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 199
    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/WXWebView;->mShowLoading:Z

    if-eqz v0, :cond_0

    .line 200
    iget-object v1, p0, Lcom/taobao/weex/ui/view/WXWebView;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 202
    :cond_0
    return-void

    .line 200
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
    .line 205
    iget-object v1, p0, Lcom/taobao/weex/ui/view/WXWebView;->mWebView:Landroid/webkit/WebView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 206
    return-void

    .line 205
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/WXWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/WXWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    .line 110
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/WXWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/weex/ui/view/WXWebView;->mWebView:Landroid/webkit/WebView;

    .line 113
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

    .line 80
    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/taobao/weex/ui/view/WXWebView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 81
    .local v1, "root":Landroid/widget/FrameLayout;
    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 83
    new-instance v3, Landroid/webkit/WebView;

    iget-object v4, p0, Lcom/taobao/weex/ui/view/WXWebView;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/taobao/weex/ui/view/WXWebView;->mWebView:Landroid/webkit/WebView;

    .line 84
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 87
    .local v2, "wvLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v7, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 88
    iget-object v3, p0, Lcom/taobao/weex/ui/view/WXWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3, v2}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    iget-object v3, p0, Lcom/taobao/weex/ui/view/WXWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 90
    iget-object v3, p0, Lcom/taobao/weex/ui/view/WXWebView;->mWebView:Landroid/webkit/WebView;

    invoke-direct {p0, v3}, Lcom/taobao/weex/ui/view/WXWebView;->initWebView(Landroid/webkit/WebView;)V

    .line 92
    new-instance v3, Landroid/widget/ProgressBar;

    iget-object v4, p0, Lcom/taobao/weex/ui/view/WXWebView;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/taobao/weex/ui/view/WXWebView;->mProgressBar:Landroid/widget/ProgressBar;

    .line 93
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/taobao/weex/ui/view/WXWebView;->showProgressBar(Z)V

    .line 94
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 97
    .local v0, "pLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v3, p0, Lcom/taobao/weex/ui/view/WXWebView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 99
    iget-object v3, p0, Lcom/taobao/weex/ui/view/WXWebView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 101
    new-instance v3, Lcom/taobao/weex/ui/view/WXWebView$MessageHandler;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/taobao/weex/ui/view/WXWebView$MessageHandler;-><init>(Lcom/taobao/weex/ui/view/WXWebView;Lcom/taobao/weex/ui/view/WXWebView$1;)V

    iput-object v3, p0, Lcom/taobao/weex/ui/view/WXWebView;->mMessageHandler:Landroid/os/Handler;

    .line 103
    return-object v1
.end method

.method public goBack()V
    .locals 1

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/WXWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 141
    :goto_0
    return-void

    .line 140
    :cond_0
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/WXWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0
.end method

.method public goForward()V
    .locals 1

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/WXWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 148
    :goto_0
    return-void

    .line 147
    :cond_0
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/WXWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    goto :goto_0
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;)V
    .locals 6
    .param p1, "source"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/WXWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 127
    :goto_0
    return-void

    .line 126
    :cond_0
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/WXWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/ui/view/WXWebView;->mOrigin:Ljava/lang/String;

    const-string/jumbo v3, "text/html"

    const-string/jumbo v4, "utf-8"

    const/4 v5, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/WXWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 120
    :goto_0
    return-void

    .line 119
    :cond_0
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/WXWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public postMessage(Ljava/lang/Object;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/WXWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    if-nez v2, :cond_0

    .line 168
    :goto_0
    return-void

    .line 155
    :cond_0
    :try_start_0
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 156
    .local v1, "initData":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v2, "type"

    const-string/jumbo v3, "message"

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const-string/jumbo v2, "data"

    invoke-virtual {v1, v2, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const-string/jumbo v2, "origin"

    iget-object v3, p0, Lcom/taobao/weex/ui/view/WXWebView;->mOrigin:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "javascript:(function () {var initData = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 160
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ";try {"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "var event = new MessageEvent(\'message\', initData);window.dispatchEvent(event);"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "} catch (e) {}})();"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 159
    invoke-direct {p0, v2}, Lcom/taobao/weex/ui/view/WXWebView;->evaluateJS(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 166
    .end local v1    # "initData":Lcom/alibaba/fastjson/JSONObject;
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Lcom/alibaba/fastjson/JSONException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public reload()V
    .locals 1

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/WXWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 134
    :goto_0
    return-void

    .line 133
    :cond_0
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/WXWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    goto :goto_0
.end method

.method public setOnErrorListener(Lcom/taobao/weex/ui/view/IWebView$OnErrorListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/taobao/weex/ui/view/IWebView$OnErrorListener;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/taobao/weex/ui/view/WXWebView;->mOnErrorListener:Lcom/taobao/weex/ui/view/IWebView$OnErrorListener;

    .line 186
    return-void
.end method

.method public setOnMessageListener(Lcom/taobao/weex/ui/view/IWebView$OnMessageListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/taobao/weex/ui/view/IWebView$OnMessageListener;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/taobao/weex/ui/view/WXWebView;->mOnMessageListener:Lcom/taobao/weex/ui/view/IWebView$OnMessageListener;

    .line 196
    return-void
.end method

.method public setOnPageListener(Lcom/taobao/weex/ui/view/IWebView$OnPageListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/taobao/weex/ui/view/IWebView$OnPageListener;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/taobao/weex/ui/view/WXWebView;->mOnPageListener:Lcom/taobao/weex/ui/view/IWebView$OnPageListener;

    .line 191
    return-void
.end method

.method public setShowLoading(Z)V
    .locals 0
    .param p1, "shown"    # Z

    .prologue
    .line 180
    iput-boolean p1, p0, Lcom/taobao/weex/ui/view/WXWebView;->mShowLoading:Z

    .line 181
    return-void
.end method
