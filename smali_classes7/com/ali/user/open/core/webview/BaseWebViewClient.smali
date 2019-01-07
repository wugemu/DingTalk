.class public Lcom/ali/user/open/core/webview/BaseWebViewClient;
.super Landroid/webkit/WebViewClient;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    const-string/jumbo v0, "SSL\u8bc1\u4e66\u9519\u8bef"

    const-string/jumbo v1, "\u8bc1\u4e66\u9519\u8bef. \u662f\u5426\u7ee7\u7eed\u8bbf\u95ee?"

    const-string/jumbo v2, "\u786e\u5b9a"

    new-instance v3, Lcom/ali/user/open/core/webview/BaseWebViewClient$1;

    invoke-direct {v3, p0, p2}, Lcom/ali/user/open/core/webview/BaseWebViewClient$1;-><init>(Lcom/ali/user/open/core/webview/BaseWebViewClient;Landroid/webkit/SslErrorHandler;)V

    const-string/jumbo v4, "\u53d6\u6d88"

    new-instance v5, Lcom/ali/user/open/core/webview/BaseWebViewClient$2;

    invoke-direct {v5, p0, p2}, Lcom/ali/user/open/core/webview/BaseWebViewClient$2;-><init>(Lcom/ali/user/open/core/webview/BaseWebViewClient;Landroid/webkit/SslErrorHandler;)V

    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v6, v4, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :try_start_0
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
