.class Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView$10;
.super Lhdp;
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
    .line 344
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView$10;->this$0:Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;

    invoke-direct {p0}, Lhdp;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedTitle(Lcom/uc/webview/export/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "title"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 348
    invoke-super {p0, p1, p2}, Lhdp;->onReceivedTitle(Lcom/uc/webview/export/WebView;Ljava/lang/String;)V

    .line 350
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView$10;->this$0:Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;->access$400(Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;)Lcom/taobao/weex/ui/view/IWebView$OnPageListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView$10;->this$0:Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;->access$400(Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;)Lcom/taobao/weex/ui/view/IWebView$OnPageListener;

    move-result-object v0

    invoke-virtual {p1}, Lcom/uc/webview/export/WebView;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/taobao/weex/ui/view/IWebView$OnPageListener;->onReceivedTitle(Ljava/lang/String;)V

    .line 353
    :cond_0
    return-void
.end method
