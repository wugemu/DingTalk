.class Lcom/taobao/weex/ui/view/WXWebView$2;
.super Landroid/webkit/WebChromeClient;
.source "WXWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/view/WXWebView;->initWebView(Landroid/webkit/WebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/view/WXWebView;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/view/WXWebView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/weex/ui/view/WXWebView;

    .prologue
    .line 282
    iput-object p1, p0, Lcom/taobao/weex/ui/view/WXWebView$2;->this$0:Lcom/taobao/weex/ui/view/WXWebView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "defaultValue"    # Ljava/lang/String;
    .param p5, "result"    # Landroid/webkit/JsPromptResult;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 301
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 302
    .local v3, "uri":Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 303
    .local v1, "scheme":Ljava/lang/String;
    const-string/jumbo v4, "__WEEX_WEB_VIEW_BRIDGE"

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 304
    invoke-virtual {v3}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "postMessage"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 305
    const-string/jumbo v4, "message"

    invoke-virtual {v3, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 306
    .local v0, "message":Ljava/lang/String;
    const-string/jumbo v4, "targetOrigin"

    invoke-virtual {v3, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 307
    .local v2, "targetOrigin":Ljava/lang/String;
    iget-object v4, p0, Lcom/taobao/weex/ui/view/WXWebView$2;->this$0:Lcom/taobao/weex/ui/view/WXWebView;

    invoke-static {v4, v0, v2}, Lcom/taobao/weex/ui/view/WXWebView;->access$800(Lcom/taobao/weex/ui/view/WXWebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    const-string/jumbo v4, "success"

    invoke-virtual {p5, v4}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    .line 312
    .end local v0    # "message":Ljava/lang/String;
    .end local v2    # "targetOrigin":Ljava/lang/String;
    :goto_0
    const/4 v4, 0x1

    .line 314
    :goto_1
    return v4

    .line 310
    :cond_0
    const-string/jumbo v4, "fail"

    invoke-virtual {p5, v4}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    goto :goto_0

    .line 314
    :cond_1
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebChromeClient;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    move-result v4

    goto :goto_1
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "newProgress"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v4, 0x64

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 285
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 286
    iget-object v3, p0, Lcom/taobao/weex/ui/view/WXWebView$2;->this$0:Lcom/taobao/weex/ui/view/WXWebView;

    if-ne p2, v4, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v3, v0}, Lcom/taobao/weex/ui/view/WXWebView;->access$600(Lcom/taobao/weex/ui/view/WXWebView;Z)V

    .line 287
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXWebView$2;->this$0:Lcom/taobao/weex/ui/view/WXWebView;

    if-eq p2, v4, :cond_1

    :goto_1
    invoke-static {v0, v1}, Lcom/taobao/weex/ui/view/WXWebView;->access$700(Lcom/taobao/weex/ui/view/WXWebView;Z)V

    .line 288
    const-string/jumbo v0, "tag"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onPageProgressChanged "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    return-void

    :cond_0
    move v0, v2

    .line 286
    goto :goto_0

    :cond_1
    move v1, v2

    .line 287
    goto :goto_1
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "title"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 293
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXWebView$2;->this$0:Lcom/taobao/weex/ui/view/WXWebView;

    invoke-static {v0}, Lcom/taobao/weex/ui/view/WXWebView;->access$100(Lcom/taobao/weex/ui/view/WXWebView;)Lcom/taobao/weex/ui/view/IWebView$OnPageListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXWebView$2;->this$0:Lcom/taobao/weex/ui/view/WXWebView;

    invoke-static {v0}, Lcom/taobao/weex/ui/view/WXWebView;->access$100(Lcom/taobao/weex/ui/view/WXWebView;)Lcom/taobao/weex/ui/view/IWebView$OnPageListener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/taobao/weex/ui/view/IWebView$OnPageListener;->onReceivedTitle(Ljava/lang/String;)V

    .line 297
    :cond_0
    return-void
.end method
