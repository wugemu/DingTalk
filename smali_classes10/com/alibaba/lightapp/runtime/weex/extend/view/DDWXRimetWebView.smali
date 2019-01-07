.class public Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;
.super Landroid/widget/FrameLayout;
.source "DDWXRimetWebView.java"

# interfaces
.implements Lcom/taobao/weex/ui/view/IWebView;


# instance fields
.field private mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

.field private mWXWebErrorListener:Lcom/taobao/weex/ui/view/IWebView$OnErrorListener;

.field private mWXWebPageListener:Lcom/taobao/weex/ui/view/IWebView$OnPageListener;

.field private mWebViewLayout:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

.field private mWeexPluginManager:Lcom/alibaba/lightapp/runtime/PluginManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 51
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;->init()V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;->init()V

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;)Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;->mWebViewLayout:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    return-object v0
.end method

.method static synthetic access$002(Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;)Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;->mWebViewLayout:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    return-object p1
.end method

.method static synthetic access$100(Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;->initWebViewLayout()V

    return-void
.end method

.method static synthetic access$200(Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;)Lcom/alibaba/lightapp/runtime/PluginManager;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;->mWeexPluginManager:Lcom/alibaba/lightapp/runtime/PluginManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;)Lcom/taobao/weex/WXSDKInstance;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    return-object v0
.end method

.method static synthetic access$400(Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;)Lcom/taobao/weex/ui/view/IWebView$OnPageListener;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;->mWXWebPageListener:Lcom/taobao/weex/ui/view/IWebView$OnPageListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;)Lcom/taobao/weex/ui/view/IWebView$OnErrorListener;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;->mWXWebErrorListener:Lcom/taobao/weex/ui/view/IWebView$OnErrorListener;

    return-object v0
.end method

.method private init()V
    .locals 1

    .prologue
    .line 253
    new-instance v0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView$8;

    invoke-direct {v0, p0}, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView$8;-><init>(Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;)V

    invoke-direct {p0, v0}, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 299
    return-void
.end method

.method private initWebViewLayout()V
    .locals 3

    .prologue
    .line 303
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;->mWebViewLayout:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    invoke-virtual {v2}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->getWebViewWrapper()Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    move-result-object v1

    .line 304
    .local v1, "webViewWrapper":Lcom/alibaba/lightapp/runtime/WebViewWrapper;
    if-eqz v1, :cond_0

    .line 305
    new-instance v2, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView$9;

    invoke-direct {v2, p0}, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView$9;-><init>(Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->b(Lhdq;)V

    .line 344
    new-instance v2, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView$10;

    invoke-direct {v2, p0}, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView$10;-><init>(Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->b(Lhdp;)V

    .line 360
    :cond_0
    new-instance v0, Lcom/alibaba/lightapp/runtime/model/WebViewModel;

    invoke-direct {v0}, Lcom/alibaba/lightapp/runtime/model/WebViewModel;-><init>()V

    .line 361
    .local v0, "model":Lcom/alibaba/lightapp/runtime/model/WebViewModel;
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;->mWebViewLayout:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    invoke-virtual {v2, v0}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->a(Lcom/alibaba/lightapp/runtime/model/WebViewModel;)Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    .line 362
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;->mWebViewLayout:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    invoke-virtual {v2}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->f()V

    .line 363
    return-void
.end method

.method private runOnUIThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 366
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 367
    return-void
.end method


# virtual methods
.method public bindWXSDKInstance(Lcom/taobao/weex/WXSDKInstance;)V
    .locals 0
    .param p1, "instance"    # Lcom/taobao/weex/WXSDKInstance;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    .line 70
    return-void
.end method

.method public bindWeexPluginManager(Lcom/alibaba/lightapp/runtime/PluginManager;)V
    .locals 0
    .param p1, "weexPluginManager"    # Lcom/alibaba/lightapp/runtime/PluginManager;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;->mWeexPluginManager:Lcom/alibaba/lightapp/runtime/PluginManager;

    .line 66
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 87
    new-instance v0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView$1;

    invoke-direct {v0, p0}, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView$1;-><init>(Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;)V

    invoke-direct {p0, v0}, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 97
    return-void
.end method

.method public dispatchEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;->mWebViewLayout:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;->mWebViewLayout:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->getWebViewWrapper()Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;->mWebViewLayout:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->getWebViewWrapper()Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 76
    :cond_0
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .prologue
    .line 81
    return-object p0
.end method

.method public goBack()V
    .locals 1

    .prologue
    .line 134
    new-instance v0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView$4;

    invoke-direct {v0, p0}, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView$4;-><init>(Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;)V

    invoke-direct {p0, v0}, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 144
    return-void
.end method

.method public goForward()V
    .locals 1

    .prologue
    .line 148
    new-instance v0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView$5;

    invoke-direct {v0, p0}, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView$5;-><init>(Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;)V

    invoke-direct {p0, v0}, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 158
    return-void
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 116
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 101
    new-instance v0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView$2;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView$2;-><init>(Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 111
    return-void
.end method

.method public onActivityDestroy()V
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;->mWebViewLayout:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;->mWebViewLayout:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->d()V

    .line 241
    :cond_0
    return-void
.end method

.method public onActivityPause()V
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;->mWebViewLayout:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;->mWebViewLayout:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->b()V

    .line 234
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 245
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;->mWebViewLayout:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;->mWebViewLayout:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->a(IILandroid/content/Intent;)V

    .line 248
    :cond_0
    return-void
.end method

.method public onActivityResume()V
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;->mWebViewLayout:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;->mWebViewLayout:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->a()V

    .line 227
    :cond_0
    return-void
.end method

.method public postMessage(Ljava/lang/Object;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/Object;

    .prologue
    .line 162
    new-instance v0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView$6;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView$6;-><init>(Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 191
    return-void
.end method

.method public reload()V
    .locals 1

    .prologue
    .line 120
    new-instance v0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView$3;

    invoke-direct {v0, p0}, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView$3;-><init>(Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;)V

    invoke-direct {p0, v0}, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 130
    return-void
.end method

.method public setOnErrorListener(Lcom/taobao/weex/ui/view/IWebView$OnErrorListener;)V
    .locals 0
    .param p1, "onErrorListener"    # Lcom/taobao/weex/ui/view/IWebView$OnErrorListener;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;->mWXWebErrorListener:Lcom/taobao/weex/ui/view/IWebView$OnErrorListener;

    .line 210
    return-void
.end method

.method public setOnMessageListener(Lcom/taobao/weex/ui/view/IWebView$OnMessageListener;)V
    .locals 0
    .param p1, "onMessageListener"    # Lcom/taobao/weex/ui/view/IWebView$OnMessageListener;

    .prologue
    .line 220
    return-void
.end method

.method public setOnPageListener(Lcom/taobao/weex/ui/view/IWebView$OnPageListener;)V
    .locals 0
    .param p1, "onPageListener"    # Lcom/taobao/weex/ui/view/IWebView$OnPageListener;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;->mWXWebPageListener:Lcom/taobao/weex/ui/view/IWebView$OnPageListener;

    .line 216
    return-void
.end method

.method public setShowLoading(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 196
    new-instance v0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView$7;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView$7;-><init>(Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;Z)V

    invoke-direct {p0, v0}, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 204
    return-void
.end method
