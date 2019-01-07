.class public Lhdp;
.super Lcom/uc/webview/export/WebChromeClient;
.source "WebChromeClientWrapper.java"


# instance fields
.field private mClient:Lcom/uc/webview/export/WebChromeClient;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/uc/webview/export/WebChromeClient;-><init>()V

    .line 28
    return-void
.end method

.method public constructor <init>(Lcom/uc/webview/export/WebChromeClient;)V
    .locals 0
    .param p1, "base"    # Lcom/uc/webview/export/WebChromeClient;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/uc/webview/export/WebChromeClient;-><init>()V

    .line 33
    iput-object p1, p0, Lhdp;->mClient:Lcom/uc/webview/export/WebChromeClient;

    .line 34
    return-void
.end method


# virtual methods
.method public attachClient(Lcom/uc/webview/export/WebChromeClient;)V
    .locals 0
    .param p1, "base"    # Lcom/uc/webview/export/WebChromeClient;

    .prologue
    .line 38
    iput-object p1, p0, Lhdp;->mClient:Lcom/uc/webview/export/WebChromeClient;

    .line 39
    return-void
.end method

.method public getDefaultVideoPoster()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lhdp;->mClient:Lcom/uc/webview/export/WebChromeClient;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lhdp;->mClient:Lcom/uc/webview/export/WebChromeClient;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebChromeClient;->getDefaultVideoPoster()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 262
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/uc/webview/export/WebChromeClient;->getDefaultVideoPoster()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public getVideoLoadingProgressView()Landroid/view/View;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lhdp;->mClient:Lcom/uc/webview/export/WebChromeClient;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lhdp;->mClient:Lcom/uc/webview/export/WebChromeClient;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebChromeClient;->getVideoLoadingProgressView()Landroid/view/View;

    move-result-object v0

    .line 272
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/uc/webview/export/WebChromeClient;->getVideoLoadingProgressView()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getVisitedHistory(Landroid/webkit/ValueCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 278
    .local p1, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<[Ljava/lang/String;>;"
    iget-object v0, p0, Lhdp;->mClient:Lcom/uc/webview/export/WebChromeClient;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lhdp;->mClient:Lcom/uc/webview/export/WebChromeClient;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebChromeClient;->getVisitedHistory(Landroid/webkit/ValueCallback;)V

    .line 284
    :goto_0
    return-void

    .line 282
    :cond_0
    invoke-super {p0, p1}, Lcom/uc/webview/export/WebChromeClient;->getVisitedHistory(Landroid/webkit/ValueCallback;)V

    goto :goto_0
.end method

.method public onCloseWindow(Lcom/uc/webview/export/WebView;)V
    .locals 1
    .param p1, "window"    # Lcom/uc/webview/export/WebView;

    .prologue
    .line 134
    iget-object v0, p0, Lhdp;->mClient:Lcom/uc/webview/export/WebChromeClient;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lhdp;->mClient:Lcom/uc/webview/export/WebChromeClient;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebChromeClient;->onCloseWindow(Lcom/uc/webview/export/WebView;)V

    .line 140
    :goto_0
    return-void

    .line 138
    :cond_0
    invoke-super {p0, p1}, Lcom/uc/webview/export/WebChromeClient;->onCloseWindow(Lcom/uc/webview/export/WebView;)V

    goto :goto_0
.end method

.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 1
    .param p1, "consoleMessage"    # Landroid/webkit/ConsoleMessage;

    .prologue
    .line 248
    iget-object v0, p0, Lhdp;->mClient:Lcom/uc/webview/export/WebChromeClient;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lhdp;->mClient:Lcom/uc/webview/export/WebChromeClient;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result v0

    .line 252
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/uc/webview/export/WebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result v0

    goto :goto_0
.end method

.method public onCreateWindow(Lcom/uc/webview/export/WebView;ZZLandroid/os/Message;)Z
    .locals 1
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "isDialog"    # Z
    .param p3, "isUserGesture"    # Z
    .param p4, "resultMsg"    # Landroid/os/Message;

    .prologue
    .line 114
    iget-object v0, p0, Lhdp;->mClient:Lcom/uc/webview/export/WebChromeClient;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lhdp;->mClient:Lcom/uc/webview/export/WebChromeClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/uc/webview/export/WebChromeClient;->onCreateWindow(Lcom/uc/webview/export/WebView;ZZLandroid/os/Message;)Z

    move-result v0

    .line 118
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/uc/webview/export/WebChromeClient;->onCreateWindow(Lcom/uc/webview/export/WebView;ZZLandroid/os/Message;)Z

    move-result v0

    goto :goto_0
.end method

.method public onGeolocationPermissionsHidePrompt()V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lhdp;->mClient:Lcom/uc/webview/export/WebChromeClient;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lhdp;->mClient:Lcom/uc/webview/export/WebChromeClient;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebChromeClient;->onGeolocationPermissionsHidePrompt()V

    .line 222
    :goto_0
    return-void

    .line 220
    :cond_0
    invoke-super {p0}, Lcom/uc/webview/export/WebChromeClient;->onGeolocationPermissionsHidePrompt()V

    goto :goto_0
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Lcom/uc/webview/export/GeolocationPermissions$Callback;)V
    .locals 1
    .param p1, "origin"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/uc/webview/export/GeolocationPermissions$Callback;

    .prologue
    .line 206
    iget-object v0, p0, Lhdp;->mClient:Lcom/uc/webview/export/WebChromeClient;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lhdp;->mClient:Lcom/uc/webview/export/WebChromeClient;

    invoke-virtual {v0, p1, p2}, Lcom/uc/webview/export/WebChromeClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Lcom/uc/webview/export/GeolocationPermissions$Callback;)V

    .line 212
    :goto_0
    return-void

    .line 210
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/uc/webview/export/WebChromeClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Lcom/uc/webview/export/GeolocationPermissions$Callback;)V

    goto :goto_0
.end method

.method public onHideCustomView()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lhdp;->mClient:Lcom/uc/webview/export/WebChromeClient;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lhdp;->mClient:Lcom/uc/webview/export/WebChromeClient;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebChromeClient;->onHideCustomView()V

    .line 110
    :goto_0
    return-void

    .line 108
    :cond_0
    invoke-super {p0}, Lcom/uc/webview/export/WebChromeClient;->onHideCustomView()V

    goto :goto_0
.end method

.method public onJsAlert(Lcom/uc/webview/export/WebView;Ljava/lang/String;Ljava/lang/String;Lcom/uc/webview/export/JsResult;)Z
    .locals 1
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Lcom/uc/webview/export/JsResult;

    .prologue
    .line 144
    iget-object v0, p0, Lhdp;->mClient:Lcom/uc/webview/export/WebChromeClient;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lhdp;->mClient:Lcom/uc/webview/export/WebChromeClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/uc/webview/export/WebChromeClient;->onJsAlert(Lcom/uc/webview/export/WebView;Ljava/lang/String;Ljava/lang/String;Lcom/uc/webview/export/JsResult;)Z

    move-result v0

    .line 148
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/uc/webview/export/WebChromeClient;->onJsAlert(Lcom/uc/webview/export/WebView;Ljava/lang/String;Ljava/lang/String;Lcom/uc/webview/export/JsResult;)Z

    move-result v0

    goto :goto_0
.end method

.method public onJsBeforeUnload(Lcom/uc/webview/export/WebView;Ljava/lang/String;Ljava/lang/String;Lcom/uc/webview/export/JsResult;)Z
    .locals 1
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Lcom/uc/webview/export/JsResult;

    .prologue
    .line 174
    iget-object v0, p0, Lhdp;->mClient:Lcom/uc/webview/export/WebChromeClient;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lhdp;->mClient:Lcom/uc/webview/export/WebChromeClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/uc/webview/export/WebChromeClient;->onJsBeforeUnload(Lcom/uc/webview/export/WebView;Ljava/lang/String;Ljava/lang/String;Lcom/uc/webview/export/JsResult;)Z

    move-result v0

    .line 178
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/uc/webview/export/WebChromeClient;->onJsBeforeUnload(Lcom/uc/webview/export/WebView;Ljava/lang/String;Ljava/lang/String;Lcom/uc/webview/export/JsResult;)Z

    move-result v0

    goto :goto_0
.end method

.method public onJsConfirm(Lcom/uc/webview/export/WebView;Ljava/lang/String;Ljava/lang/String;Lcom/uc/webview/export/JsResult;)Z
    .locals 1
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Lcom/uc/webview/export/JsResult;

    .prologue
    .line 154
    iget-object v0, p0, Lhdp;->mClient:Lcom/uc/webview/export/WebChromeClient;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lhdp;->mClient:Lcom/uc/webview/export/WebChromeClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/uc/webview/export/WebChromeClient;->onJsConfirm(Lcom/uc/webview/export/WebView;Ljava/lang/String;Ljava/lang/String;Lcom/uc/webview/export/JsResult;)Z

    move-result v0

    .line 158
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/uc/webview/export/WebChromeClient;->onJsConfirm(Lcom/uc/webview/export/WebView;Ljava/lang/String;Ljava/lang/String;Lcom/uc/webview/export/JsResult;)Z

    move-result v0

    goto :goto_0
.end method

.method public onJsPrompt(Lcom/uc/webview/export/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/uc/webview/export/JsPromptResult;)Z
    .locals 6
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "defaultValue"    # Ljava/lang/String;
    .param p5, "result"    # Lcom/uc/webview/export/JsPromptResult;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 164
    iget-object v0, p0, Lhdp;->mClient:Lcom/uc/webview/export/WebChromeClient;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lhdp;->mClient:Lcom/uc/webview/export/WebChromeClient;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/uc/webview/export/WebChromeClient;->onJsPrompt(Lcom/uc/webview/export/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/uc/webview/export/JsPromptResult;)Z

    move-result v0

    .line 168
    :goto_0
    return v0

    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/uc/webview/export/WebChromeClient;->onJsPrompt(Lcom/uc/webview/export/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/uc/webview/export/JsPromptResult;)Z

    move-result v0

    goto :goto_0
.end method

.method public onProgressChanged(Lcom/uc/webview/export/WebView;I)V
    .locals 1
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "newProgress"    # I

    .prologue
    .line 43
    iget-object v0, p0, Lhdp;->mClient:Lcom/uc/webview/export/WebChromeClient;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lhdp;->mClient:Lcom/uc/webview/export/WebChromeClient;

    invoke-virtual {v0, p1, p2}, Lcom/uc/webview/export/WebChromeClient;->onProgressChanged(Lcom/uc/webview/export/WebView;I)V

    .line 49
    :goto_0
    return-void

    .line 47
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/uc/webview/export/WebChromeClient;->onProgressChanged(Lcom/uc/webview/export/WebView;I)V

    goto :goto_0
.end method

.method public onReceivedIcon(Lcom/uc/webview/export/WebView;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 63
    iget-object v0, p0, Lhdp;->mClient:Lcom/uc/webview/export/WebChromeClient;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lhdp;->mClient:Lcom/uc/webview/export/WebChromeClient;

    invoke-virtual {v0, p1, p2}, Lcom/uc/webview/export/WebChromeClient;->onReceivedIcon(Lcom/uc/webview/export/WebView;Landroid/graphics/Bitmap;)V

    .line 69
    :goto_0
    return-void

    .line 67
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/uc/webview/export/WebChromeClient;->onReceivedIcon(Lcom/uc/webview/export/WebView;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public onReceivedTitle(Lcom/uc/webview/export/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 53
    iget-object v0, p0, Lhdp;->mClient:Lcom/uc/webview/export/WebChromeClient;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lhdp;->mClient:Lcom/uc/webview/export/WebChromeClient;

    invoke-virtual {v0, p1, p2}, Lcom/uc/webview/export/WebChromeClient;->onReceivedTitle(Lcom/uc/webview/export/WebView;Ljava/lang/String;)V

    .line 59
    :goto_0
    return-void

    .line 57
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/uc/webview/export/WebChromeClient;->onReceivedTitle(Lcom/uc/webview/export/WebView;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onReceivedTouchIconUrl(Lcom/uc/webview/export/WebView;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "precomposed"    # Z

    .prologue
    .line 73
    iget-object v0, p0, Lhdp;->mClient:Lcom/uc/webview/export/WebChromeClient;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lhdp;->mClient:Lcom/uc/webview/export/WebChromeClient;

    invoke-virtual {v0, p1, p2, p3}, Lcom/uc/webview/export/WebChromeClient;->onReceivedTouchIconUrl(Lcom/uc/webview/export/WebView;Ljava/lang/String;Z)V

    .line 79
    :goto_0
    return-void

    .line 77
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/uc/webview/export/WebChromeClient;->onReceivedTouchIconUrl(Lcom/uc/webview/export/WebView;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public onRequestFocus(Lcom/uc/webview/export/WebView;)V
    .locals 1
    .param p1, "view"    # Lcom/uc/webview/export/WebView;

    .prologue
    .line 124
    iget-object v0, p0, Lhdp;->mClient:Lcom/uc/webview/export/WebChromeClient;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lhdp;->mClient:Lcom/uc/webview/export/WebChromeClient;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebChromeClient;->onRequestFocus(Lcom/uc/webview/export/WebView;)V

    .line 130
    :goto_0
    return-void

    .line 128
    :cond_0
    invoke-super {p0, p1}, Lcom/uc/webview/export/WebChromeClient;->onRequestFocus(Lcom/uc/webview/export/WebView;)V

    goto :goto_0
.end method

.method public onShowCustomView(Landroid/view/View;Lcom/uc/webview/export/WebChromeClient$CustomViewCallback;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "callback"    # Lcom/uc/webview/export/WebChromeClient$CustomViewCallback;

    .prologue
    .line 83
    iget-object v0, p0, Lhdp;->mClient:Lcom/uc/webview/export/WebChromeClient;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lhdp;->mClient:Lcom/uc/webview/export/WebChromeClient;

    invoke-virtual {v0, p1, p2}, Lcom/uc/webview/export/WebChromeClient;->onShowCustomView(Landroid/view/View;Lcom/uc/webview/export/WebChromeClient$CustomViewCallback;)V

    .line 89
    :goto_0
    return-void

    .line 87
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/uc/webview/export/WebChromeClient;->onShowCustomView(Landroid/view/View;Lcom/uc/webview/export/WebChromeClient$CustomViewCallback;)V

    goto :goto_0
.end method

.method public onShowFileChooser(Lcom/uc/webview/export/WebView;Landroid/webkit/ValueCallback;Lcom/uc/webview/export/WebChromeClient$FileChooserParams;)Z
    .locals 1
    .param p1, "webView"    # Lcom/uc/webview/export/WebView;
    .param p3, "fileChooserParams"    # Lcom/uc/webview/export/WebChromeClient$FileChooserParams;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uc/webview/export/WebView;",
            "Landroid/webkit/ValueCallback",
            "<[",
            "Landroid/net/Uri;",
            ">;",
            "Lcom/uc/webview/export/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 291
    .local p2, "filePathCallback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<[Landroid/net/Uri;>;"
    iget-object v0, p0, Lhdp;->mClient:Lcom/uc/webview/export/WebChromeClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhdp;->mClient:Lcom/uc/webview/export/WebChromeClient;

    instance-of v0, v0, Lhdp;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lhdp;->mClient:Lcom/uc/webview/export/WebChromeClient;

    invoke-virtual {v0, p1, p2, p3}, Lcom/uc/webview/export/WebChromeClient;->onShowFileChooser(Lcom/uc/webview/export/WebView;Landroid/webkit/ValueCallback;Lcom/uc/webview/export/WebChromeClient$FileChooserParams;)Z

    move-result v0

    .line 295
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/uc/webview/export/WebChromeClient;->onShowFileChooser(Lcom/uc/webview/export/WebView;Landroid/webkit/ValueCallback;Lcom/uc/webview/export/WebChromeClient$FileChooserParams;)Z

    move-result v0

    goto :goto_0
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V
    .locals 1
    .param p2, "acceptType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 302
    .local p1, "uploadFile":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    iget-object v0, p0, Lhdp;->mClient:Lcom/uc/webview/export/WebChromeClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhdp;->mClient:Lcom/uc/webview/export/WebChromeClient;

    instance-of v0, v0, Lhdp;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lhdp;->mClient:Lcom/uc/webview/export/WebChromeClient;

    check-cast v0, Lhdp;

    invoke-virtual {v0, p1, p2}, Lhdp;->openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V

    .line 308
    :goto_0
    return-void

    .line 306
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2, "acceptType"    # Ljava/lang/String;
    .param p3, "capture"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 313
    .local p1, "uploadFile":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    iget-object v0, p0, Lhdp;->mClient:Lcom/uc/webview/export/WebChromeClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhdp;->mClient:Lcom/uc/webview/export/WebChromeClient;

    instance-of v0, v0, Lhdp;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lhdp;->mClient:Lcom/uc/webview/export/WebChromeClient;

    check-cast v0, Lhdp;

    invoke-virtual {v0, p1, p2, p3}, Lhdp;->openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    :goto_0
    return-void

    .line 317
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_0
.end method
