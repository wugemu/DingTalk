.class final Lcom/uc/webview/export/internal/setup/aa;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/uc/webview/export/internal/setup/z;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/internal/setup/z;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/aa;->a:Lcom/uc/webview/export/internal/setup/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 51
    :try_start_0
    invoke-static {}, Lcom/uc/webview/export/internal/setup/z;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/aa;->a:Lcom/uc/webview/export/internal/setup/z;

    invoke-static {v0}, Lcom/uc/webview/export/internal/setup/z;->a(Lcom/uc/webview/export/internal/setup/z;)Lcom/uc/webview/export/internal/interfaces/IWebView;

    move-result-object v1

    .line 53
    const-string/jumbo v0, "PrecreateWebViewTask"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "main run mWebView:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    if-eqz v1, :cond_0

    .line 56
    :try_start_1
    invoke-interface {v1}, Lcom/uc/webview/export/internal/interfaces/IWebView;->getSettingsInner()Lcom/uc/webview/export/WebSettings;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/uc/webview/export/WebSettings;->setJavaScriptEnabled(Z)V

    .line 57
    new-instance v0, Lcom/uc/webview/export/WebViewClient;

    invoke-direct {v0}, Lcom/uc/webview/export/WebViewClient;-><init>()V

    invoke-interface {v1, v0}, Lcom/uc/webview/export/internal/interfaces/IWebView;->setWebViewClient(Lcom/uc/webview/export/WebViewClient;)V

    .line 58
    new-instance v0, Lcom/uc/webview/export/WebChromeClient;

    invoke-direct {v0}, Lcom/uc/webview/export/WebChromeClient;-><init>()V

    invoke-interface {v1, v0}, Lcom/uc/webview/export/internal/interfaces/IWebView;->setWebChromeClient(Lcom/uc/webview/export/WebChromeClient;)V

    .line 59
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/aa;->a:Lcom/uc/webview/export/internal/setup/z;

    const-string/jumbo v2, "precreate_webview_url"

    .line 60
    invoke-virtual {v0, v2}, Lcom/uc/webview/export/internal/setup/z;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 61
    const-string/jumbo v2, "PrecreateWebViewTask"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "main run precreateWebViewUrl:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/j;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 63
    invoke-interface {v1, v0}, Lcom/uc/webview/export/internal/interfaces/IWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    :goto_0
    :try_start_2
    const-string/jumbo v0, "PrecreateWebViewTask"

    const-string/jumbo v2, "main run finally destroy webview."

    invoke-static {v0, v2}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-interface {v1}, Lcom/uc/webview/export/internal/interfaces/IWebView;->destroy()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 77
    :cond_0
    :goto_1
    return-void

    .line 65
    :cond_1
    :try_start_3
    const-string/jumbo v0, "<html><head></head><body onload=\"console.log(\"WebView init\");\"></body></html>"

    const-string/jumbo v2, "text/html"

    const/4 v3, 0x0

    invoke-interface {v1, v0, v2, v3}, Lcom/uc/webview/export/internal/interfaces/IWebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 70
    :catchall_0
    move-exception v0

    :try_start_4
    const-string/jumbo v2, "PrecreateWebViewTask"

    const-string/jumbo v3, "main run finally destroy webview."

    invoke-static {v2, v3}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-interface {v1}, Lcom/uc/webview/export/internal/interfaces/IWebView;->destroy()V

    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 76
    :catch_0
    move-exception v0

    goto :goto_1
.end method
