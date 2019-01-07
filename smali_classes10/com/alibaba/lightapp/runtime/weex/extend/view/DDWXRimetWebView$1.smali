.class Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView$1;
.super Ljava/lang/Object;
.source "DDWXRimetWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;->destroy()V
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
    .line 87
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView$1;->this$0:Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView$1;->this$0:Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;->access$000(Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;)Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView$1;->this$0:Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;->access$000(Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;)Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->getWebView()Lcom/uc/webview/export/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView$1;->this$0:Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;->access$000(Lcom/alibaba/lightapp/runtime/weex/extend/view/DDWXRimetWebView;)Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->getWebView()Lcom/uc/webview/export/WebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->destroy()V

    .line 95
    :cond_0
    return-void
.end method
