.class Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView$1;
.super Landroid/webkit/WebViewClient;
.source "DDSysWXWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView;->initWebView(Landroid/webkit/WebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView$1;->this$0:Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 189
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 190
    const-string/jumbo v0, "tag"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onPageFinished "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView$1;->this$0:Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView;->access$100(Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView;)Lcom/taobao/weex/ui/view/IWebView$OnPageListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView$1;->this$0:Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView;->access$100(Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView;)Lcom/taobao/weex/ui/view/IWebView$OnPageListener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v2

    invoke-interface {v0, p2, v1, v2}, Lcom/taobao/weex/ui/view/IWebView$OnPageListener;->onPageFinish(Ljava/lang/String;ZZ)V

    .line 195
    :cond_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 180
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 181
    const-string/jumbo v0, "tag"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onPageStarted "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView$1;->this$0:Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView;->access$100(Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView;)Lcom/taobao/weex/ui/view/IWebView$OnPageListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView$1;->this$0:Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView;->access$100(Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView;)Lcom/taobao/weex/ui/view/IWebView$OnPageListener;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/taobao/weex/ui/view/IWebView$OnPageListener;->onPageStart(Ljava/lang/String;)V

    .line 186
    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "request"    # Landroid/webkit/WebResourceRequest;
    .param p3, "error"    # Landroid/webkit/WebResourceError;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 198
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    .line 199
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView$1;->this$0:Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView;->access$200(Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView;)Lcom/taobao/weex/ui/view/IWebView$OnErrorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView$1;->this$0:Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView;->access$200(Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView;)Lcom/taobao/weex/ui/view/IWebView$OnErrorListener;

    move-result-object v0

    const-string/jumbo v1, "error"

    const-string/jumbo v2, "page error"

    invoke-interface {v0, v1, v2}, Lcom/taobao/weex/ui/view/IWebView$OnErrorListener;->onError(Ljava/lang/String;Ljava/lang/Object;)V

    .line 203
    :cond_0
    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "request"    # Landroid/webkit/WebResourceRequest;
    .param p3, "errorResponse"    # Landroid/webkit/WebResourceResponse;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 206
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    .line 207
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView$1;->this$0:Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView;->access$200(Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView;)Lcom/taobao/weex/ui/view/IWebView$OnErrorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView$1;->this$0:Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView;->access$200(Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView;)Lcom/taobao/weex/ui/view/IWebView$OnErrorListener;

    move-result-object v0

    const-string/jumbo v1, "error"

    const-string/jumbo v2, "http error"

    invoke-interface {v0, v1, v2}, Lcom/taobao/weex/ui/view/IWebView$OnErrorListener;->onError(Ljava/lang/String;Ljava/lang/Object;)V

    .line 211
    :cond_0
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 214
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 215
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView$1;->this$0:Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView;->access$200(Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView;)Lcom/taobao/weex/ui/view/IWebView$OnErrorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView$1;->this$0:Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView;->access$200(Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView;)Lcom/taobao/weex/ui/view/IWebView$OnErrorListener;

    move-result-object v0

    const-string/jumbo v1, "error"

    const-string/jumbo v2, "ssl error"

    invoke-interface {v0, v1, v2}, Lcom/taobao/weex/ui/view/IWebView$OnErrorListener;->onError(Ljava/lang/String;Ljava/lang/Object;)V

    .line 219
    :cond_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 169
    invoke-static {}, Lhsb;->a()Lhsb;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView$1;->this$0:Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView;->access$000(Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lhsb;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView$1;->this$0:Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView;

    .line 170
    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView;->access$000(Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView;)Landroid/content/Context;

    move-result-object v0

    .line 1214
    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Lhgy;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v0

    .line 170
    if-eqz v0, :cond_1

    .line 176
    :cond_0
    :goto_0
    return v3

    .line 174
    :cond_1
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 175
    const-string/jumbo v0, "tag"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onPageOverride "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
