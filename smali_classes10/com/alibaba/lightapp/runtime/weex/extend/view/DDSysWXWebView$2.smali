.class Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView$2;
.super Landroid/webkit/WebChromeClient;
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
    .line 221
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView$2;->this$0:Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
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

    .line 223
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 224
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView$2;->this$0:Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView;

    if-ne p2, v4, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v3, v0}, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView;->access$300(Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView;Z)V

    .line 225
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView$2;->this$0:Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView;

    if-eq p2, v4, :cond_1

    :goto_1
    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView;->access$400(Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView;Z)V

    .line 226
    const-string/jumbo v0, "tag"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onPageProgressChanged "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    return-void

    :cond_0
    move v0, v2

    .line 224
    goto :goto_0

    :cond_1
    move v1, v2

    .line 225
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
    .line 230
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView$2;->this$0:Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView;->access$100(Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView;)Lcom/taobao/weex/ui/view/IWebView$OnPageListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView$2;->this$0:Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView;->access$100(Lcom/alibaba/lightapp/runtime/weex/extend/view/DDSysWXWebView;)Lcom/taobao/weex/ui/view/IWebView$OnPageListener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/taobao/weex/ui/view/IWebView$OnPageListener;->onReceivedTitle(Ljava/lang/String;)V

    .line 235
    :cond_0
    return-void
.end method
