.class Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView$2;
.super Ljava/lang/Object;
.source "DDWXRimetWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;->loadUrl(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView$2;->this$0:Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView$2;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 104
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView$2;->this$0:Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;->access$000(Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;)Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView$2;->this$0:Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;->access$000(Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;)Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->getWebView()Lcom/uc/webview/export/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView$2;->this$0:Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;->access$000(Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;)Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->getWebView()Lcom/uc/webview/export/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView$2;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/WebView;->loadUrl(Ljava/lang/String;)V

    .line 109
    :cond_0
    return-void
.end method
