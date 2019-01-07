.class public final Lipo;
.super Lcom/uc/webview/export/WebChromeClient;
.source "UCWebChromeClient.java"


# instance fields
.field private a:Lcom/alipay/mobile/nebula/webview/APWebView;

.field private b:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebula/webview/APWebView;Lcom/alipay/mobile/nebula/webview/APWebChromeClient;)V
    .locals 0
    .param p1, "apWebView"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "apWebChromeClient"    # Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/uc/webview/export/WebChromeClient;-><init>()V

    .line 28
    iput-object p1, p0, Lipo;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    .line 29
    iput-object p2, p0, Lipo;->b:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    .line 30
    return-void
.end method


# virtual methods
.method public final getDefaultVideoPoster()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lipo;->b:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lipo;->b:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebChromeClient;->getDefaultVideoPoster()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 147
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getVideoLoadingProgressView()Landroid/view/View;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lipo;->b:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lipo;->b:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebChromeClient;->getVideoLoadingProgressView()Landroid/view/View;

    move-result-object v0

    .line 155
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getVisitedHistory(Landroid/webkit/ValueCallback;)V
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
    .line 160
    .local p1, "valueCallback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<[Ljava/lang/String;>;"
    iget-object v0, p0, Lipo;->b:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lipo;->b:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/webview/APWebChromeClient;->getVisitedHistory(Landroid/webkit/ValueCallback;)V

    .line 163
    :cond_0
    return-void
.end method

.method public final onCloseWindow(Lcom/uc/webview/export/WebView;)V
    .locals 2
    .param p1, "webView"    # Lcom/uc/webview/export/WebView;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 90
    iget-object v0, p0, Lipo;->b:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lipo;->b:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    iget-object v1, p0, Lipo;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/webview/APWebChromeClient;->onCloseWindow(Lcom/alipay/mobile/nebula/webview/APWebView;)V

    .line 93
    :cond_0
    return-void
.end method

.method public final onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 6
    .param p1, "cm"    # Landroid/webkit/ConsoleMessage;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 137
    iget-object v0, p0, Lipo;->b:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lipo;->b:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    new-instance v1, Landroid/webkit/ConsoleMessage;

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v2

    .line 138
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->sourceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    move-result v4

    .line 139
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->messageLevel()Landroid/webkit/ConsoleMessage$MessageLevel;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/ConsoleMessage$MessageLevel;->name()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/webkit/ConsoleMessage$MessageLevel;->valueOf(Ljava/lang/String;)Landroid/webkit/ConsoleMessage$MessageLevel;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/webkit/ConsoleMessage;-><init>(Ljava/lang/String;Ljava/lang/String;ILandroid/webkit/ConsoleMessage$MessageLevel;)V

    .line 137
    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/webview/APWebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onCreateWindow(Lcom/uc/webview/export/WebView;ZZLandroid/os/Message;)Z
    .locals 2
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "b"    # Z
    .param p3, "b1"    # Z
    .param p4, "message"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 78
    iget-object v0, p0, Lipo;->b:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lipo;->b:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    iget-object v1, p0, Lipo;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/alipay/mobile/nebula/webview/APWebChromeClient;->onCreateWindow(Lcom/alipay/mobile/nebula/webview/APWebView;ZZLandroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onGeolocationPermissionsHidePrompt()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lipo;->b:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lipo;->b:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebChromeClient;->onGeolocationPermissionsHidePrompt()V

    .line 133
    :cond_0
    return-void
.end method

.method public final onGeolocationPermissionsShowPrompt(Ljava/lang/String;Lcom/uc/webview/export/GeolocationPermissions$Callback;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "cb"    # Lcom/uc/webview/export/GeolocationPermissions$Callback;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 121
    iget-object v0, p0, Lipo;->b:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    if-eqz v0, :cond_0

    .line 122
    iget-object v1, p0, Lipo;->b:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    const-class v0, Landroid/webkit/GeolocationPermissions$Callback;

    .line 123
    invoke-static {v0, p2}, Lipj;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/GeolocationPermissions$Callback;

    .line 122
    invoke-interface {v1, p1, v0}, Lcom/alipay/mobile/nebula/webview/APWebChromeClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    .line 126
    :cond_0
    return-void
.end method

.method public final onHideCustomView()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lipo;->b:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lipo;->b:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebChromeClient;->onHideCustomView()V

    .line 74
    :cond_0
    return-void
.end method

.method public final onJsAlert(Lcom/uc/webview/export/WebView;Ljava/lang/String;Ljava/lang/String;Lcom/uc/webview/export/JsResult;)Z
    .locals 3
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "s1"    # Ljava/lang/String;
    .param p4, "jsResult"    # Lcom/uc/webview/export/JsResult;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 97
    iget-object v0, p0, Lipo;->b:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lipo;->b:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    iget-object v2, p0, Lipo;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    const-class v0, Lcom/alipay/mobile/nebula/webview/APJsResult;

    .line 98
    invoke-static {v0, p4}, Lipj;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/webview/APJsResult;

    .line 97
    invoke-interface {v1, v2, p2, p3, v0}, Lcom/alipay/mobile/nebula/webview/APWebChromeClient;->onJsAlert(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/webview/APJsResult;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onJsBeforeUnload(Lcom/uc/webview/export/WebView;Ljava/lang/String;Ljava/lang/String;Lcom/uc/webview/export/JsResult;)Z
    .locals 3
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "s1"    # Ljava/lang/String;
    .param p4, "jsResult"    # Lcom/uc/webview/export/JsResult;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 115
    iget-object v0, p0, Lipo;->b:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lipo;->b:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    iget-object v2, p0, Lipo;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    const-class v0, Lcom/alipay/mobile/nebula/webview/APJsResult;

    .line 116
    invoke-static {v0, p4}, Lipj;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/webview/APJsResult;

    .line 115
    invoke-interface {v1, v2, p2, p3, v0}, Lcom/alipay/mobile/nebula/webview/APWebChromeClient;->onJsBeforeUnload(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/webview/APJsResult;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onJsConfirm(Lcom/uc/webview/export/WebView;Ljava/lang/String;Ljava/lang/String;Lcom/uc/webview/export/JsResult;)Z
    .locals 3
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "s1"    # Ljava/lang/String;
    .param p4, "jsResult"    # Lcom/uc/webview/export/JsResult;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 103
    iget-object v0, p0, Lipo;->b:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lipo;->b:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    iget-object v2, p0, Lipo;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    const-class v0, Lcom/alipay/mobile/nebula/webview/APJsResult;

    .line 104
    invoke-static {v0, p4}, Lipj;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/webview/APJsResult;

    .line 103
    invoke-interface {v1, v2, p2, p3, v0}, Lcom/alipay/mobile/nebula/webview/APWebChromeClient;->onJsConfirm(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/webview/APJsResult;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onJsPrompt(Lcom/uc/webview/export/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/uc/webview/export/JsPromptResult;)Z
    .locals 6
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "s1"    # Ljava/lang/String;
    .param p4, "s2"    # Ljava/lang/String;
    .param p5, "jsPR"    # Lcom/uc/webview/export/JsPromptResult;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 109
    iget-object v0, p0, Lipo;->b:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lipo;->b:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    iget-object v1, p0, Lipo;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    const-class v2, Lcom/alipay/mobile/nebula/webview/APJsPromptResult;

    .line 110
    invoke-static {v2, p5}, Lipj;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/nebula/webview/APJsPromptResult;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 109
    invoke-interface/range {v0 .. v5}, Lcom/alipay/mobile/nebula/webview/APWebChromeClient;->onJsPrompt(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/webview/APJsPromptResult;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onProgressChanged(Lcom/uc/webview/export/WebView;I)V
    .locals 2
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "i"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 34
    iget-object v0, p0, Lipo;->b:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lipo;->b:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    iget-object v1, p0, Lipo;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, v1, p2}, Lcom/alipay/mobile/nebula/webview/APWebChromeClient;->onProgressChanged(Lcom/alipay/mobile/nebula/webview/APWebView;I)V

    .line 37
    :cond_0
    return-void
.end method

.method public final onReceivedIcon(Lcom/uc/webview/export/WebView;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 48
    iget-object v0, p0, Lipo;->b:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lipo;->b:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    iget-object v1, p0, Lipo;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, v1, p2}, Lcom/alipay/mobile/nebula/webview/APWebChromeClient;->onReceivedIcon(Lcom/alipay/mobile/nebula/webview/APWebView;Landroid/graphics/Bitmap;)V

    .line 51
    :cond_0
    return-void
.end method

.method public final onReceivedTitle(Lcom/uc/webview/export/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "s"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 41
    iget-object v0, p0, Lipo;->b:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lipo;->b:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    iget-object v1, p0, Lipo;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, v1, p2}, Lcom/alipay/mobile/nebula/webview/APWebChromeClient;->onReceivedTitle(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;)V

    .line 44
    :cond_0
    return-void
.end method

.method public final onReceivedTouchIconUrl(Lcom/uc/webview/export/WebView;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "b"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 55
    iget-object v0, p0, Lipo;->b:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lipo;->b:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    iget-object v1, p0, Lipo;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, v1, p2, p3}, Lcom/alipay/mobile/nebula/webview/APWebChromeClient;->onReceivedTouchIconUrl(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;Z)V

    .line 58
    :cond_0
    return-void
.end method

.method public final onRequestFocus(Lcom/uc/webview/export/WebView;)V
    .locals 2
    .param p1, "webView"    # Lcom/uc/webview/export/WebView;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 83
    iget-object v0, p0, Lipo;->b:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lipo;->b:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    iget-object v1, p0, Lipo;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/webview/APWebChromeClient;->onRequestFocus(Lcom/alipay/mobile/nebula/webview/APWebView;)V

    .line 86
    :cond_0
    return-void
.end method

.method public final onShowCustomView(Landroid/view/View;Lcom/uc/webview/export/WebChromeClient$CustomViewCallback;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "callback"    # Lcom/uc/webview/export/WebChromeClient$CustomViewCallback;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 62
    iget-object v0, p0, Lipo;->b:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    if-eqz v0, :cond_0

    .line 63
    iget-object v1, p0, Lipo;->b:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    const-class v0, Lcom/alipay/mobile/nebula/webview/APWebChromeClient$CustomViewCallback;

    .line 65
    invoke-static {v0, p2}, Lipj;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/webview/APWebChromeClient$CustomViewCallback;

    .line 63
    invoke-interface {v1, p1, v0}, Lcom/alipay/mobile/nebula/webview/APWebChromeClient;->onShowCustomView(Landroid/view/View;Lcom/alipay/mobile/nebula/webview/APWebChromeClient$CustomViewCallback;)V

    .line 67
    :cond_0
    return-void
.end method

.method public final onShowFileChooser(Lcom/uc/webview/export/WebView;Landroid/webkit/ValueCallback;Lcom/uc/webview/export/WebChromeClient$FileChooserParams;)Z
    .locals 2
    .param p1, "webView"    # Lcom/uc/webview/export/WebView;
    .param p3, "fileChooserParams"    # Lcom/uc/webview/export/WebChromeClient$FileChooserParams;
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

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .local p2, "valueCallback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<[Landroid/net/Uri;>;"
    const/4 v0, 0x1

    .line 175
    iget-object v1, p0, Lipo;->b:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    if-eqz v1, :cond_0

    .line 176
    iget-object v1, p0, Lipo;->b:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    invoke-interface {v1, p2, v0}, Lcom/alipay/mobile/nebula/webview/APWebChromeClient;->openFileChooser(Landroid/webkit/ValueCallback;Z)V

    .line 179
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final openFileChooser(Landroid/webkit/ValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 167
    .local p1, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    iget-object v0, p0, Lipo;->b:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lipo;->b:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/alipay/mobile/nebula/webview/APWebChromeClient;->openFileChooser(Landroid/webkit/ValueCallback;Z)V

    .line 170
    :cond_0
    return-void
.end method
