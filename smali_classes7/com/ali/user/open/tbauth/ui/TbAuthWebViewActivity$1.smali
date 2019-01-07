.class Lcom/ali/user/open/tbauth/ui/TbAuthWebViewActivity$1;
.super Lcom/ali/user/open/core/webview/BaseWebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ali/user/open/tbauth/ui/TbAuthWebViewActivity;->createWebViewClient()Landroid/webkit/WebViewClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ali/user/open/tbauth/ui/TbAuthWebViewActivity;


# direct methods
.method constructor <init>(Lcom/ali/user/open/tbauth/ui/TbAuthWebViewActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/open/tbauth/ui/TbAuthWebViewActivity$1;->a:Lcom/ali/user/open/tbauth/ui/TbAuthWebViewActivity;

    invoke-direct {p0}, Lcom/ali/user/open/core/webview/BaseWebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    invoke-super {p0, p1, p2}, Lcom/ali/user/open/core/webview/BaseWebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    sget-object v0, Lcom/ali/user/open/tbauth/ui/TbAuthWebViewActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onPageFinished url="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/open/core/trace/SDKLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    invoke-super {p0, p1, p2, p3}, Lcom/ali/user/open/core/webview/BaseWebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    sget-object v0, Lcom/ali/user/open/tbauth/ui/TbAuthWebViewActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onPageStarted url="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/open/core/trace/SDKLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    const/4 v0, 0x1

    sget-object v1, Lcom/ali/user/open/tbauth/ui/TbAuthWebViewActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "shouldOverrideUrlLoading url="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ali/user/open/core/trace/SDKLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/ali/user/open/tbauth/ui/TbAuthWebViewActivity$1;->a:Lcom/ali/user/open/tbauth/ui/TbAuthWebViewActivity;

    invoke-static {v2}, Lcom/ali/user/open/tbauth/ui/TbAuthWebViewActivity;->a(Lcom/ali/user/open/tbauth/ui/TbAuthWebViewActivity;)Lcom/ali/user/open/tbauth/TbAuthService;

    move-result-object v2

    invoke-interface {v2, p2}, Lcom/ali/user/open/tbauth/TbAuthService;->isLoginUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Lcom/ali/user/open/tbauth/task/RefreshSidTask;

    iget-object v2, p0, Lcom/ali/user/open/tbauth/ui/TbAuthWebViewActivity$1;->a:Lcom/ali/user/open/tbauth/ui/TbAuthWebViewActivity;

    invoke-static {v2}, Lcom/ali/user/open/tbauth/ui/TbAuthWebViewActivity;->b(Lcom/ali/user/open/tbauth/ui/TbAuthWebViewActivity;)Lcom/ali/user/open/core/webview/MemberWebView;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/ali/user/open/tbauth/task/RefreshSidTask;-><init>(Landroid/webkit/WebView;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/ali/user/open/tbauth/task/RefreshSidTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/ali/user/open/tbauth/ui/TbAuthWebViewActivity$1;->a:Lcom/ali/user/open/tbauth/ui/TbAuthWebViewActivity;

    invoke-virtual {v2, p2}, Lcom/ali/user/open/tbauth/ui/TbAuthWebViewActivity;->checkWebviewBridge(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/ali/user/open/tbauth/ui/TbAuthWebViewActivity$1;->a:Lcom/ali/user/open/tbauth/ui/TbAuthWebViewActivity;

    invoke-static {v0, v1}, Lcom/ali/user/open/tbauth/ui/TbAuthWebViewActivity;->a(Lcom/ali/user/open/tbauth/ui/TbAuthWebViewActivity;Landroid/net/Uri;)Z

    move-result v0

    goto :goto_0

    :cond_1
    instance-of v1, p1, Lcom/ali/user/open/core/webview/MemberWebView;

    if-eqz v1, :cond_2

    check-cast p1, Lcom/ali/user/open/core/webview/MemberWebView;

    invoke-virtual {p1, p2}, Lcom/ali/user/open/core/webview/MemberWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method
