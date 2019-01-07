.class public Lhdq;
.super Lcom/uc/webview/export/WebViewClient;
.source "WebViewClientWrapper.java"


# instance fields
.field private mClient:Lcom/uc/webview/export/WebViewClient;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/uc/webview/export/WebViewClient;-><init>()V

    .line 24
    return-void
.end method

.method public constructor <init>(Lcom/uc/webview/export/WebViewClient;)V
    .locals 0
    .param p1, "base"    # Lcom/uc/webview/export/WebViewClient;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/uc/webview/export/WebViewClient;-><init>()V

    .line 29
    iput-object p1, p0, Lhdq;->mClient:Lcom/uc/webview/export/WebViewClient;

    .line 30
    return-void
.end method


# virtual methods
.method public attachClient(Lcom/uc/webview/export/WebViewClient;)V
    .locals 0
    .param p1, "base"    # Lcom/uc/webview/export/WebViewClient;

    .prologue
    .line 34
    iput-object p1, p0, Lhdq;->mClient:Lcom/uc/webview/export/WebViewClient;

    .line 35
    return-void
.end method

.method public doUpdateVisitedHistory(Lcom/uc/webview/export/WebView;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "isReload"    # Z

    .prologue
    .line 120
    iget-object v0, p0, Lhdq;->mClient:Lcom/uc/webview/export/WebViewClient;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lhdq;->mClient:Lcom/uc/webview/export/WebViewClient;

    invoke-virtual {v0, p1, p2, p3}, Lcom/uc/webview/export/WebViewClient;->doUpdateVisitedHistory(Lcom/uc/webview/export/WebView;Ljava/lang/String;Z)V

    .line 126
    :goto_0
    return-void

    .line 124
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/uc/webview/export/WebViewClient;->doUpdateVisitedHistory(Lcom/uc/webview/export/WebView;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public onFormResubmission(Lcom/uc/webview/export/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 1
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "dontResend"    # Landroid/os/Message;
    .param p3, "resend"    # Landroid/os/Message;

    .prologue
    .line 110
    iget-object v0, p0, Lhdq;->mClient:Lcom/uc/webview/export/WebViewClient;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lhdq;->mClient:Lcom/uc/webview/export/WebViewClient;

    invoke-virtual {v0, p1, p2, p3}, Lcom/uc/webview/export/WebViewClient;->onFormResubmission(Lcom/uc/webview/export/WebView;Landroid/os/Message;Landroid/os/Message;)V

    .line 116
    :goto_0
    return-void

    .line 114
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/uc/webview/export/WebViewClient;->onFormResubmission(Lcom/uc/webview/export/WebView;Landroid/os/Message;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public onLoadResource(Lcom/uc/webview/export/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 69
    iget-object v0, p0, Lhdq;->mClient:Lcom/uc/webview/export/WebViewClient;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lhdq;->mClient:Lcom/uc/webview/export/WebViewClient;

    invoke-virtual {v0, p1, p2}, Lcom/uc/webview/export/WebViewClient;->onLoadResource(Lcom/uc/webview/export/WebView;Ljava/lang/String;)V

    .line 75
    :goto_0
    return-void

    .line 73
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/uc/webview/export/WebViewClient;->onLoadResource(Lcom/uc/webview/export/WebView;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPageFinished(Lcom/uc/webview/export/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 59
    iget-object v0, p0, Lhdq;->mClient:Lcom/uc/webview/export/WebViewClient;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lhdq;->mClient:Lcom/uc/webview/export/WebViewClient;

    invoke-virtual {v0, p1, p2}, Lcom/uc/webview/export/WebViewClient;->onPageFinished(Lcom/uc/webview/export/WebView;Ljava/lang/String;)V

    .line 65
    :goto_0
    return-void

    .line 63
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/uc/webview/export/WebViewClient;->onPageFinished(Lcom/uc/webview/export/WebView;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPageStarted(Lcom/uc/webview/export/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 49
    iget-object v0, p0, Lhdq;->mClient:Lcom/uc/webview/export/WebViewClient;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lhdq;->mClient:Lcom/uc/webview/export/WebViewClient;

    invoke-virtual {v0, p1, p2, p3}, Lcom/uc/webview/export/WebViewClient;->onPageStarted(Lcom/uc/webview/export/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 55
    :goto_0
    return-void

    .line 53
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/uc/webview/export/WebViewClient;->onPageStarted(Lcom/uc/webview/export/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public onReceivedError(Lcom/uc/webview/export/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 100
    iget-object v0, p0, Lhdq;->mClient:Lcom/uc/webview/export/WebViewClient;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lhdq;->mClient:Lcom/uc/webview/export/WebViewClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/uc/webview/export/WebViewClient;->onReceivedError(Lcom/uc/webview/export/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 106
    :goto_0
    return-void

    .line 104
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/uc/webview/export/WebViewClient;->onReceivedError(Lcom/uc/webview/export/WebView;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onReceivedHttpAuthRequest(Lcom/uc/webview/export/WebView;Lcom/uc/webview/export/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "handler"    # Lcom/uc/webview/export/HttpAuthHandler;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "realm"    # Ljava/lang/String;

    .prologue
    .line 140
    iget-object v0, p0, Lhdq;->mClient:Lcom/uc/webview/export/WebViewClient;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lhdq;->mClient:Lcom/uc/webview/export/WebViewClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/uc/webview/export/WebViewClient;->onReceivedHttpAuthRequest(Lcom/uc/webview/export/WebView;Lcom/uc/webview/export/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :goto_0
    return-void

    .line 144
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/uc/webview/export/WebViewClient;->onReceivedHttpAuthRequest(Lcom/uc/webview/export/WebView;Lcom/uc/webview/export/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onReceivedSslError(Lcom/uc/webview/export/WebView;Lcom/uc/webview/export/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "handler"    # Lcom/uc/webview/export/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    .prologue
    .line 130
    iget-object v0, p0, Lhdq;->mClient:Lcom/uc/webview/export/WebViewClient;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lhdq;->mClient:Lcom/uc/webview/export/WebViewClient;

    invoke-virtual {v0, p1, p2, p3}, Lcom/uc/webview/export/WebViewClient;->onReceivedSslError(Lcom/uc/webview/export/WebView;Lcom/uc/webview/export/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 136
    :goto_0
    return-void

    .line 134
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/uc/webview/export/WebViewClient;->onReceivedSslError(Lcom/uc/webview/export/WebView;Lcom/uc/webview/export/SslErrorHandler;Landroid/net/http/SslError;)V

    goto :goto_0
.end method

.method public onScaleChanged(Lcom/uc/webview/export/WebView;FF)V
    .locals 1
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "oldScale"    # F
    .param p3, "newScale"    # F

    .prologue
    .line 170
    iget-object v0, p0, Lhdq;->mClient:Lcom/uc/webview/export/WebViewClient;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lhdq;->mClient:Lcom/uc/webview/export/WebViewClient;

    invoke-virtual {v0, p1, p2, p3}, Lcom/uc/webview/export/WebViewClient;->onScaleChanged(Lcom/uc/webview/export/WebView;FF)V

    .line 176
    :goto_0
    return-void

    .line 174
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/uc/webview/export/WebViewClient;->onScaleChanged(Lcom/uc/webview/export/WebView;FF)V

    goto :goto_0
.end method

.method public onUnhandledKeyEvent(Lcom/uc/webview/export/WebView;Landroid/view/KeyEvent;)V
    .locals 1
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 160
    iget-object v0, p0, Lhdq;->mClient:Lcom/uc/webview/export/WebViewClient;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lhdq;->mClient:Lcom/uc/webview/export/WebViewClient;

    invoke-virtual {v0, p1, p2}, Lcom/uc/webview/export/WebViewClient;->onUnhandledKeyEvent(Lcom/uc/webview/export/WebView;Landroid/view/KeyEvent;)V

    .line 166
    :goto_0
    return-void

    .line 164
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/uc/webview/export/WebViewClient;->onUnhandledKeyEvent(Lcom/uc/webview/export/WebView;Landroid/view/KeyEvent;)V

    goto :goto_0
.end method

.method public shouldInterceptRequest(Lcom/uc/webview/export/WebView;Ljava/lang/String;)Lcom/uc/webview/export/WebResourceResponse;
    .locals 1
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 79
    iget-object v0, p0, Lhdq;->mClient:Lcom/uc/webview/export/WebViewClient;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lhdq;->mClient:Lcom/uc/webview/export/WebViewClient;

    invoke-virtual {v0, p1, p2}, Lcom/uc/webview/export/WebViewClient;->shouldInterceptRequest(Lcom/uc/webview/export/WebView;Ljava/lang/String;)Lcom/uc/webview/export/WebResourceResponse;

    move-result-object v0

    .line 83
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/uc/webview/export/WebViewClient;->shouldInterceptRequest(Lcom/uc/webview/export/WebView;Ljava/lang/String;)Lcom/uc/webview/export/WebResourceResponse;

    move-result-object v0

    goto :goto_0
.end method

.method public shouldOverrideKeyEvent(Lcom/uc/webview/export/WebView;Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 150
    iget-object v0, p0, Lhdq;->mClient:Lcom/uc/webview/export/WebViewClient;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lhdq;->mClient:Lcom/uc/webview/export/WebViewClient;

    invoke-virtual {v0, p1, p2}, Lcom/uc/webview/export/WebViewClient;->shouldOverrideKeyEvent(Lcom/uc/webview/export/WebView;Landroid/view/KeyEvent;)Z

    move-result v0

    .line 154
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/uc/webview/export/WebViewClient;->shouldOverrideKeyEvent(Lcom/uc/webview/export/WebView;Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Lcom/uc/webview/export/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 39
    iget-object v0, p0, Lhdq;->mClient:Lcom/uc/webview/export/WebViewClient;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lhdq;->mClient:Lcom/uc/webview/export/WebViewClient;

    invoke-virtual {v0, p1, p2}, Lcom/uc/webview/export/WebViewClient;->shouldOverrideUrlLoading(Lcom/uc/webview/export/WebView;Ljava/lang/String;)Z

    move-result v0

    .line 43
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/uc/webview/export/WebViewClient;->shouldOverrideUrlLoading(Lcom/uc/webview/export/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
