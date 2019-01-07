.class final Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient$5;
.super Ljava/lang/Object;
.source "RimetWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;->onReceivedSslError(Lcom/uc/webview/export/WebView;Lcom/uc/webview/export/SslErrorHandler;Landroid/net/http/SslError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/uc/webview/export/WebView;

.field final synthetic b:Landroid/net/http/SslError;

.field final synthetic c:Lcom/uc/webview/export/SslErrorHandler;

.field final synthetic d:Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;Lcom/uc/webview/export/WebView;Landroid/net/http/SslError;Lcom/uc/webview/export/SslErrorHandler;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;

    .prologue
    .line 2114
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient$5;->d:Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient$5;->a:Lcom/uc/webview/export/WebView;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient$5;->b:Landroid/net/http/SslError;

    iput-object p4, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient$5;->c:Lcom/uc/webview/export/SslErrorHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2118
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient$5;->a:Lcom/uc/webview/export/WebView;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient$5;->a:Lcom/uc/webview/export/WebView;

    invoke-virtual {v3}, Lcom/uc/webview/export/WebView;->getUrl()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient$5;->b:Landroid/net/http/SslError;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient$5;->b:Landroid/net/http/SslError;

    .line 2119
    invoke-virtual {v3}, Landroid/net/http/SslError;->getUrl()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 2120
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->getInstance()Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient$5;->a:Lcom/uc/webview/export/WebView;

    invoke-virtual {v4}, Lcom/uc/webview/export/WebView;->getUrl()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient$5;->b:Landroid/net/http/SslError;

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->addSslErrors(Ljava/lang/String;Landroid/net/http/SslError;)V

    .line 2121
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient$5;->b:Landroid/net/http/SslError;

    invoke-virtual {v3}, Landroid/net/http/SslError;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 2122
    .local v1, "errUrl":Ljava/lang/String;
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient$5;->a:Lcom/uc/webview/export/WebView;

    invoke-virtual {v3}, Lcom/uc/webview/export/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 2123
    .local v2, "viewUrl":Ljava/lang/String;
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient$5;->d:Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->u(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2124
    invoke-static {v2, v1, v8}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->commitSSLStatus(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2127
    :cond_0
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2131
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/WebLogger;->getInstance()Lcom/alibaba/lightapp/runtime/monitor/WebLogger;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient$5;->d:Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;

    iget-object v4, v4, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-static {v4}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->b(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "onReceivedSslError"

    new-array v6, v12, [Ljava/lang/Object;

    const-string/jumbo v7, "appId="

    aput-object v7, v6, v8

    invoke-static {}, Lhhy;->a()Lhhy;

    move-result-object v7

    invoke-virtual {v7, v1}, Lhhy;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    const-string/jumbo v7, ";errMsg="

    aput-object v7, v6, v10

    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient$5;->b:Landroid/net/http/SslError;

    invoke-virtual {v7}, Landroid/net/http/SslError;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v11

    invoke-virtual {v3, v4, v1, v5, v6}, Lcom/alibaba/lightapp/runtime/monitor/WebLogger;->logMiddle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2132
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;->getInstance()Lgvi;

    move-result-object v3

    invoke-virtual {v3, v1, v2, v9}, Lgvi;->warnSslError(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2133
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;->getInstance()Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;->setSSLErrorUrl(Ljava/lang/String;)V

    .line 2135
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient$5;->d:Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-virtual {v3}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2136
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "SSL error:"

    aput-object v4, v3, v8

    aput-object v1, v3, v9

    const-string/jumbo v4, "\n"

    aput-object v4, v3, v10

    const-string/jumbo v4, "\n"

    aput-object v4, v3, v11

    const-string/jumbo v4, "Continue to proceed?"

    aput-object v4, v3, v12

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 2140
    const-string/jumbo v3, "Warning: Invalid CERT Authority"

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 2141
    const-string/jumbo v3, "YES"

    new-instance v4, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient$5$1;

    invoke-direct {v4, p0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient$5$1;-><init>(Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient$5;)V

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 2147
    const-string/jumbo v3, "NO"

    new-instance v4, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient$5$2;

    invoke-direct {v4, p0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient$5$2;-><init>(Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient$5;)V

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 2153
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 2168
    .end local v0    # "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    .end local v1    # "errUrl":Ljava/lang/String;
    .end local v2    # "viewUrl":Ljava/lang/String;
    :goto_0
    return-void

    .line 2159
    .restart local v1    # "errUrl":Ljava/lang/String;
    .restart local v2    # "viewUrl":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;->getInstance()Lgvi;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient$5;->b:Landroid/net/http/SslError;

    invoke-virtual {v4}, Landroid/net/http/SslError;->getUrl()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient$5;->a:Lcom/uc/webview/export/WebView;

    invoke-virtual {v5}, Lcom/uc/webview/export/WebView;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v10}, Lgvi;->warnSslError(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2161
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient$5;->c:Lcom/uc/webview/export/SslErrorHandler;

    invoke-virtual {v3}, Lcom/uc/webview/export/SslErrorHandler;->proceed()V

    goto :goto_0

    .line 2167
    .end local v1    # "errUrl":Ljava/lang/String;
    .end local v2    # "viewUrl":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient$5;->c:Lcom/uc/webview/export/SslErrorHandler;

    invoke-virtual {v3}, Lcom/uc/webview/export/SslErrorHandler;->proceed()V

    goto :goto_0
.end method
