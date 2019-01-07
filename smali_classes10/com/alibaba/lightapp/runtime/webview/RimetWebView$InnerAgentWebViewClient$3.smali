.class final Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient$3;
.super Ljava/lang/Object;
.source "RimetWebView.java"

# interfaces
.implements Lhqf$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;->shouldOverrideUrlLoading(Lcom/uc/webview/export/WebView;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/doraemon/statistics/Statistics;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;Lcom/alibaba/doraemon/statistics/Statistics;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;

    .prologue
    .line 1613
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient$3;->c:Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient$3;->a:Lcom/alibaba/doraemon/statistics/Statistics;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient$3;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 7
    .param p1, "redirectUrl"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1616
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient$3;->c:Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-virtual {v0, p1}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->loadUrl(Ljava/lang/String;)V

    .line 1617
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient$3;->a:Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v1, "OAuth"

    const-string/jumbo v2, "302.oauth"

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->commitRateSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 1618
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/WebLogger;->getInstance()Lcom/alibaba/lightapp/runtime/monitor/WebLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient$3;->c:Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->b(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient$3;->b:Ljava/lang/String;

    const-string/jumbo v3, "shouldOverrideUrlLoading:"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, ";loadUrl=======0"

    aput-object v6, v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alibaba/lightapp/runtime/monitor/WebLogger;->logMiddle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1619
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1623
    invoke-static {p2}, Lcms;->a(Ljava/lang/String;)V

    .line 1624
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient$3;->a:Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v1, "OAuth"

    const-string/jumbo v2, "302.oauth"

    invoke-interface {v0, v1, v2, p1, p2}, Lcom/alibaba/doraemon/statistics/Statistics;->commitRateFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1625
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;->getInstance()Lgvi;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient$3;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lgvi;->authFailWarn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1626
    return-void
.end method
