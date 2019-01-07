.class Lcom/alipay/mobile/nebulacore/android/AndroidWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "AndroidWebChromeClient.java"


# instance fields
.field private mAPView:Lcom/alipay/mobile/nebula/webview/APWebView;

.field private mClient:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebula/webview/APWebView;Lcom/alipay/mobile/nebula/webview/APWebChromeClient;)V
    .locals 0
    .param p1, "apWebView"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "apWebChromeClient"    # Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebChromeClient;->mAPView:Lcom/alipay/mobile/nebula/webview/APWebView;

    .line 32
    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebChromeClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    .line 33
    return-void
.end method


# virtual methods
.method public getDefaultVideoPoster()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebChromeClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebChromeClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebChromeClient;->getDefaultVideoPoster()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 157
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVideoLoadingProgressView()Landroid/view/View;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebChromeClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebChromeClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebChromeClient;->getVideoLoadingProgressView()Landroid/view/View;

    move-result-object v0

    .line 165
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVisitedHistory(Landroid/webkit/ValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 178
    .local p1, "valueCallback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<[Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebChromeClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    const-class v0, Landroid/webkit/ValueCallback;

    invoke-static {v0, p1}, Lcom/alipay/mobile/nebulacore/android/DynamicProxy;->dynamicProxy(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/ValueCallback;

    invoke-interface {v1, v0}, Lcom/alipay/mobile/nebula/webview/APWebChromeClient;->getVisitedHistory(Landroid/webkit/ValueCallback;)V

    .line 180
    return-void
.end method

.method public onCloseWindow(Landroid/webkit/WebView;)V
    .locals 2
    .param p1, "webView"    # Landroid/webkit/WebView;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 94
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebChromeClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebChromeClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebChromeClient;->mAPView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/webview/APWebChromeClient;->onCloseWindow(Lcom/alipay/mobile/nebula/webview/APWebView;)V

    .line 97
    :cond_0
    return-void
.end method

.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 6
    .param p1, "cm"    # Landroid/webkit/ConsoleMessage;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 147
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebChromeClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebChromeClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    new-instance v1, Landroid/webkit/ConsoleMessage;

    .line 148
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->sourceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    move-result v4

    .line 149
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->messageLevel()Landroid/webkit/ConsoleMessage$MessageLevel;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/ConsoleMessage$MessageLevel;->name()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/webkit/ConsoleMessage$MessageLevel;->valueOf(Ljava/lang/String;)Landroid/webkit/ConsoleMessage$MessageLevel;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/webkit/ConsoleMessage;-><init>(Ljava/lang/String;Ljava/lang/String;ILandroid/webkit/ConsoleMessage$MessageLevel;)V

    .line 147
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

.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "b"    # Z
    .param p3, "b1"    # Z
    .param p4, "message"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebChromeClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebChromeClient;->mAPView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/alipay/mobile/nebula/webview/APWebChromeClient;->onCreateWindow(Lcom/alipay/mobile/nebula/webview/APWebView;ZZLandroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method public onGeolocationPermissionsHidePrompt()V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebChromeClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebChromeClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebChromeClient;->onGeolocationPermissionsHidePrompt()V

    .line 143
    :cond_0
    return-void
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/webkit/GeolocationPermissions$Callback;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 130
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebChromeClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    if-eqz v0, :cond_0

    .line 131
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebChromeClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    const-class v0, Landroid/webkit/GeolocationPermissions$Callback;

    .line 132
    invoke-static {v0, p2}, Lcom/alipay/mobile/nebulacore/android/DynamicProxy;->dynamicProxy(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/GeolocationPermissions$Callback;

    .line 131
    invoke-interface {v1, p1, v0}, Lcom/alipay/mobile/nebula/webview/APWebChromeClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    .line 136
    :cond_0
    return-void
.end method

.method public onHideCustomView()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebChromeClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebChromeClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebChromeClient;->onHideCustomView()V

    .line 77
    :cond_0
    return-void
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "s1"    # Ljava/lang/String;
    .param p4, "jsResult"    # Landroid/webkit/JsResult;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 102
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebChromeClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebChromeClient;->mAPView:Lcom/alipay/mobile/nebula/webview/APWebView;

    const-class v0, Lcom/alipay/mobile/nebula/webview/APJsResult;

    .line 103
    invoke-static {v0, p4}, Lcom/alipay/mobile/nebulacore/android/DynamicProxy;->dynamicProxy(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/webview/APJsResult;

    .line 102
    invoke-interface {v1, v2, p2, p3, v0}, Lcom/alipay/mobile/nebula/webview/APWebChromeClient;->onJsAlert(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/webview/APJsResult;)Z

    move-result v0

    return v0
.end method

.method public onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "s1"    # Ljava/lang/String;
    .param p4, "jsResult"    # Landroid/webkit/JsResult;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 123
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebChromeClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebChromeClient;->mAPView:Lcom/alipay/mobile/nebula/webview/APWebView;

    const-class v0, Lcom/alipay/mobile/nebula/webview/APJsResult;

    .line 124
    invoke-static {v0, p4}, Lcom/alipay/mobile/nebulacore/android/DynamicProxy;->dynamicProxy(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/webview/APJsResult;

    .line 123
    invoke-interface {v1, v2, p2, p3, v0}, Lcom/alipay/mobile/nebula/webview/APWebChromeClient;->onJsBeforeUnload(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/webview/APJsResult;)Z

    move-result v0

    return v0
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "s1"    # Ljava/lang/String;
    .param p4, "jsResult"    # Landroid/webkit/JsResult;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 109
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebChromeClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebChromeClient;->mAPView:Lcom/alipay/mobile/nebula/webview/APWebView;

    const-class v0, Lcom/alipay/mobile/nebula/webview/APJsResult;

    .line 110
    invoke-static {v0, p4}, Lcom/alipay/mobile/nebulacore/android/DynamicProxy;->dynamicProxy(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/webview/APJsResult;

    .line 109
    invoke-interface {v1, v2, p2, p3, v0}, Lcom/alipay/mobile/nebula/webview/APWebChromeClient;->onJsConfirm(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/webview/APJsResult;)Z

    move-result v0

    return v0
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "s1"    # Ljava/lang/String;
    .param p4, "s2"    # Ljava/lang/String;
    .param p5, "jsPromptResult"    # Landroid/webkit/JsPromptResult;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 116
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebChromeClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebChromeClient;->mAPView:Lcom/alipay/mobile/nebula/webview/APWebView;

    const-class v2, Lcom/alipay/mobile/nebula/webview/APJsPromptResult;

    .line 117
    invoke-static {v2, p5}, Lcom/alipay/mobile/nebulacore/android/DynamicProxy;->dynamicProxy(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/nebula/webview/APJsPromptResult;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 116
    invoke-interface/range {v0 .. v5}, Lcom/alipay/mobile/nebula/webview/APWebChromeClient;->onJsPrompt(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/webview/APJsPromptResult;)Z

    move-result v0

    return v0
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "i"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebChromeClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebChromeClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebChromeClient;->mAPView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, v1, p2}, Lcom/alipay/mobile/nebula/webview/APWebChromeClient;->onProgressChanged(Lcom/alipay/mobile/nebula/webview/APWebView;I)V

    .line 40
    :cond_0
    return-void
.end method

.method public onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebChromeClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebChromeClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebChromeClient;->mAPView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, v1, p2}, Lcom/alipay/mobile/nebula/webview/APWebChromeClient;->onReceivedIcon(Lcom/alipay/mobile/nebula/webview/APWebView;Landroid/graphics/Bitmap;)V

    .line 54
    :cond_0
    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "s"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebChromeClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebChromeClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebChromeClient;->mAPView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, v1, p2}, Lcom/alipay/mobile/nebula/webview/APWebChromeClient;->onReceivedTitle(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;)V

    .line 47
    :cond_0
    return-void
.end method

.method public onReceivedTouchIconUrl(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "b"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebChromeClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebChromeClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebChromeClient;->mAPView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, v1, p2, p3}, Lcom/alipay/mobile/nebula/webview/APWebChromeClient;->onReceivedTouchIconUrl(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;Z)V

    .line 61
    :cond_0
    return-void
.end method

.method public onRequestFocus(Landroid/webkit/WebView;)V
    .locals 2
    .param p1, "webView"    # Landroid/webkit/WebView;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 87
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebChromeClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebChromeClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebChromeClient;->mAPView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/webview/APWebChromeClient;->onRequestFocus(Lcom/alipay/mobile/nebula/webview/APWebView;)V

    .line 90
    :cond_0
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "customViewCallback"    # Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebChromeClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    if-eqz v0, :cond_0

    .line 67
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebChromeClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    const-class v0, Lcom/alipay/mobile/nebula/webview/APWebChromeClient$CustomViewCallback;

    invoke-static {v0, p2}, Lcom/alipay/mobile/nebulacore/android/DynamicProxy;->dynamicProxy(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/webview/APWebChromeClient$CustomViewCallback;

    invoke-interface {v1, p1, v0}, Lcom/alipay/mobile/nebula/webview/APWebChromeClient;->onShowCustomView(Landroid/view/View;Lcom/alipay/mobile/nebula/webview/APWebChromeClient$CustomViewCallback;)V

    .line 70
    :cond_0
    return-void
.end method

.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 2
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p3, "fileChooserParams"    # Landroid/webkit/WebChromeClient$FileChooserParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback",
            "<[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p2, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<[Landroid/net/Uri;>;"
    const/4 v0, 0x1

    .line 202
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebChromeClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    if-eqz v1, :cond_0

    .line 203
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebChromeClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    invoke-interface {v1, p2, v0}, Lcom/alipay/mobile/nebula/webview/APWebChromeClient;->openFileChooser(Landroid/webkit/ValueCallback;Z)V

    .line 206
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;)V
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

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 183
    .local p1, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebChromeClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebChromeClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/alipay/mobile/nebula/webview/APWebChromeClient;->openFileChooser(Landroid/webkit/ValueCallback;Z)V

    .line 186
    :cond_0
    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V
    .locals 2
    .param p1, "callback"    # Landroid/webkit/ValueCallback;
    .param p2, "acceptType"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 189
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebChromeClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebChromeClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/alipay/mobile/nebula/webview/APWebChromeClient;->openFileChooser(Landroid/webkit/ValueCallback;Z)V

    .line 192
    :cond_0
    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
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

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 195
    .local p1, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebChromeClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebChromeClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/alipay/mobile/nebula/webview/APWebChromeClient;->openFileChooser(Landroid/webkit/ValueCallback;Z)V

    .line 198
    :cond_0
    return-void
.end method
