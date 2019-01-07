.class Lcom/ali/user/open/ucc/webview/UccWebViewActivity$1;
.super Lcom/ali/user/open/core/webview/BaseWebViewClient;
.source "UccWebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ali/user/open/ucc/webview/UccWebViewActivity;->createWebViewClient()Landroid/webkit/WebViewClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ali/user/open/ucc/webview/UccWebViewActivity;


# direct methods
.method constructor <init>(Lcom/ali/user/open/ucc/webview/UccWebViewActivity;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/ali/user/open/ucc/webview/UccWebViewActivity$1;->a:Lcom/ali/user/open/ucc/webview/UccWebViewActivity;

    invoke-direct {p0}, Lcom/ali/user/open/core/webview/BaseWebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 107
    invoke-super {p0, p1, p2}, Lcom/ali/user/open/core/webview/BaseWebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 108
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 109
    iget-object v1, p0, Lcom/ali/user/open/ucc/webview/UccWebViewActivity$1;->a:Lcom/ali/user/open/ucc/webview/UccWebViewActivity;

    invoke-static {v1, v0}, Lcom/ali/user/open/ucc/webview/UccWebViewActivity;->c(Lcom/ali/user/open/ucc/webview/UccWebViewActivity;Landroid/net/Uri;)V

    .line 110
    iget-object v0, p0, Lcom/ali/user/open/ucc/webview/UccWebViewActivity$1;->a:Lcom/ali/user/open/ucc/webview/UccWebViewActivity;

    invoke-static {v0}, Lcom/ali/user/open/ucc/webview/UccWebViewActivity;->a(Lcom/ali/user/open/ucc/webview/UccWebViewActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onPageFinished url="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/open/core/trace/SDKLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 99
    invoke-super {p0, p1, p2, p3}, Lcom/ali/user/open/core/webview/BaseWebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 100
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 101
    iget-object v1, p0, Lcom/ali/user/open/ucc/webview/UccWebViewActivity$1;->a:Lcom/ali/user/open/ucc/webview/UccWebViewActivity;

    invoke-static {v1, v0}, Lcom/ali/user/open/ucc/webview/UccWebViewActivity;->b(Lcom/ali/user/open/ucc/webview/UccWebViewActivity;Landroid/net/Uri;)V

    .line 102
    iget-object v0, p0, Lcom/ali/user/open/ucc/webview/UccWebViewActivity$1;->a:Lcom/ali/user/open/ucc/webview/UccWebViewActivity;

    invoke-static {v0}, Lcom/ali/user/open/ucc/webview/UccWebViewActivity;->a(Lcom/ali/user/open/ucc/webview/UccWebViewActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onPageStarted url="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/open/core/trace/SDKLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 81
    iget-object v0, p0, Lcom/ali/user/open/ucc/webview/UccWebViewActivity$1;->a:Lcom/ali/user/open/ucc/webview/UccWebViewActivity;

    invoke-static {v0}, Lcom/ali/user/open/ucc/webview/UccWebViewActivity;->a(Lcom/ali/user/open/ucc/webview/UccWebViewActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "shouldOverrideUrlLoading url="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/open/core/trace/SDKLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 84
    iget-object v1, p0, Lcom/ali/user/open/ucc/webview/UccWebViewActivity$1;->a:Lcom/ali/user/open/ucc/webview/UccWebViewActivity;

    invoke-virtual {v1, p2}, Lcom/ali/user/open/ucc/webview/UccWebViewActivity;->checkWebviewBridge(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/ali/user/open/ucc/webview/UccWebViewActivity$1;->a:Lcom/ali/user/open/ucc/webview/UccWebViewActivity;

    invoke-static {v1, v0}, Lcom/ali/user/open/ucc/webview/UccWebViewActivity;->a(Lcom/ali/user/open/ucc/webview/UccWebViewActivity;Landroid/net/Uri;)Z

    move-result v0

    .line 93
    :goto_0
    return v0

    .line 88
    :cond_0
    instance-of v0, p1, Lcom/ali/user/open/core/webview/MemberWebView;

    if-eqz v0, :cond_1

    .line 89
    check-cast p1, Lcom/ali/user/open/core/webview/MemberWebView;

    invoke-virtual {p1, p2}, Lcom/ali/user/open/core/webview/MemberWebView;->loadUrl(Ljava/lang/String;)V

    .line 93
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 91
    :cond_1
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1
.end method
