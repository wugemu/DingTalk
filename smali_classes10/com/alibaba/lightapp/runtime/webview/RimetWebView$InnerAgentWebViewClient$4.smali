.class final Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient$4;
.super Ljava/lang/Object;
.source "RimetWebView.java"

# interfaces
.implements Lhpj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;->shouldInterceptRequest(Lcom/uc/webview/export/WebView;Ljava/lang/String;)Lcom/uc/webview/export/WebResourceResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;

    .prologue
    .line 1930
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient$4;->c:Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient$4;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient$4;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 1933
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 1937
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient$4;->c:Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->d(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1938
    const-string/jumbo v0, "Resource"

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient$4;->a:Ljava/lang/String;

    const-string/jumbo v2, "RimetWebView onError but is destroyed"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1950
    :cond_0
    :goto_0
    return-void

    .line 1941
    :cond_1
    const-string/jumbo v0, "forceReload"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1942
    const-string/jumbo v0, "Resource"

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient$4;->a:Ljava/lang/String;

    const-string/jumbo v2, "RimetWebView reloaded due to LWP force reload"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1943
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient$4;->c:Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->reload()V

    goto :goto_0

    .line 1944
    :cond_2
    const-string/jumbo v0, "lwpDegraded"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1945
    invoke-static {}, Lhhr;->a()Lhhr;

    const-string/jumbo v0, "hybrid_enable_rocket_lwp_degraded"

    invoke-static {v0, v3}, Lhhr;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1946
    const-string/jumbo v0, "Resource"

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient$4;->a:Ljava/lang/String;

    const-string/jumbo v2, "RimetWebView reloaded due to LWP fail"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1947
    invoke-static {}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->i()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient$4;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1948
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient$4;->c:Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->reload()V

    goto :goto_0
.end method
