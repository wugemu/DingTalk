.class Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView$9;
.super Lhdq;
.source "DDWXRimetWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;->initWebViewLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;

    .prologue
    .line 305
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView$9;->this$0:Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;

    invoke-direct {p0}, Lhdq;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Lcom/uc/webview/export/WebView;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 318
    invoke-super {p0, p1, p2}, Lhdq;->onPageFinished(Lcom/uc/webview/export/WebView;Ljava/lang/String;)V

    .line 320
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView$9;->this$0:Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;->access$400(Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;)Lcom/taobao/weex/ui/view/IWebView$OnPageListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView$9;->this$0:Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;->access$400(Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;)Lcom/taobao/weex/ui/view/IWebView$OnPageListener;

    move-result-object v0

    invoke-virtual {p1}, Lcom/uc/webview/export/WebView;->canGoBack()Z

    move-result v1

    invoke-virtual {p1}, Lcom/uc/webview/export/WebView;->canGoForward()Z

    move-result v2

    invoke-interface {v0, p2, v1, v2}, Lcom/taobao/weex/ui/view/IWebView$OnPageListener;->onPageFinish(Ljava/lang/String;ZZ)V

    .line 323
    :cond_0
    return-void
.end method

.method public onPageStarted(Lcom/uc/webview/export/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 309
    invoke-super {p0, p1, p2, p3}, Lhdq;->onPageStarted(Lcom/uc/webview/export/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 311
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView$9;->this$0:Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;->access$400(Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;)Lcom/taobao/weex/ui/view/IWebView$OnPageListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView$9;->this$0:Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;->access$400(Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;)Lcom/taobao/weex/ui/view/IWebView$OnPageListener;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/taobao/weex/ui/view/IWebView$OnPageListener;->onPageStart(Ljava/lang/String;)V

    .line 314
    :cond_0
    return-void
.end method

.method public onReceivedError(Lcom/uc/webview/export/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 327
    invoke-super {p0, p1, p2, p3, p4}, Lhdq;->onReceivedError(Lcom/uc/webview/export/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 329
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView$9;->this$0:Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;->access$500(Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;)Lcom/taobao/weex/ui/view/IWebView$OnErrorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView$9;->this$0:Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;->access$500(Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;)Lcom/taobao/weex/ui/view/IWebView$OnErrorListener;

    move-result-object v0

    const-string/jumbo v1, "pageerror"

    invoke-interface {v0, v1, p3}, Lcom/taobao/weex/ui/view/IWebView$OnErrorListener;->onError(Ljava/lang/String;Ljava/lang/Object;)V

    .line 332
    :cond_0
    return-void
.end method

.method public onReceivedSslError(Lcom/uc/webview/export/WebView;Lcom/uc/webview/export/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 3
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "handler"    # Lcom/uc/webview/export/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 336
    invoke-super {p0, p1, p2, p3}, Lhdq;->onReceivedSslError(Lcom/uc/webview/export/WebView;Lcom/uc/webview/export/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 338
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView$9;->this$0:Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;->access$500(Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;)Lcom/taobao/weex/ui/view/IWebView$OnErrorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView$9;->this$0:Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;->access$500(Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;)Lcom/taobao/weex/ui/view/IWebView$OnErrorListener;

    move-result-object v0

    const-string/jumbo v1, "sslerror"

    const-string/jumbo v2, "sslerror"

    invoke-interface {v0, v1, v2}, Lcom/taobao/weex/ui/view/IWebView$OnErrorListener;->onError(Ljava/lang/String;Ljava/lang/Object;)V

    .line 341
    :cond_0
    return-void
.end method
