.class final Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient$1;
.super Ljava/lang/Object;
.source "RimetWebView.java"

# interfaces
.implements Lhli$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;->shouldOverrideUrlLoading(Lcom/uc/webview/export/WebView;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/uc/webview/export/WebView;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;Lcom/uc/webview/export/WebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;

    .prologue
    .line 1553
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient$1;->c:Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient$1;->a:Lcom/uc/webview/export/WebView;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1557
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient$1;->a:Lcom/uc/webview/export/WebView;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient$1;->c:Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->b(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1558
    const-string/jumbo v0, "H5"

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient$1;->c:Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->b(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "RimetWebView"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "UICLogin.onSuccess"

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1560
    return-void
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1564
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient$1;->c:Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient$1;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->e(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;Ljava/lang/String;)V

    .line 1565
    return-void
.end method