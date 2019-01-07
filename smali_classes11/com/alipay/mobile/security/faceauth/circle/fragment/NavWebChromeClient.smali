.class public Lcom/alipay/mobile/security/faceauth/circle/fragment/NavWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "NavWebChromeClient.java"


# instance fields
.field public mMainHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/circle/fragment/NavWebChromeClient;->mMainHandler:Landroid/os/Handler;

    .line 17
    return-void
.end method


# virtual methods
.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "defaultValue"    # Ljava/lang/String;
    .param p5, "result"    # Landroid/webkit/JsPromptResult;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 28
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onJsPrompt:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V

    .line 29
    const-string/jumbo v2, "face_auth"

    invoke-virtual {v2, p3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 30
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebChromeClient;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    .line 31
    invoke-virtual {p5}, Landroid/webkit/JsPromptResult;->cancel()V

    .line 32
    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/fragment/NavWebChromeClient;->mMainHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/alipay/mobile/security/faceauth/circle/fragment/NavWebChromeClient;->mMainHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 47
    :goto_0
    return v1

    .line 35
    :cond_0
    const-string/jumbo v2, "navi_close"

    invoke-virtual {v2, p3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 36
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebChromeClient;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    .line 37
    invoke-virtual {p5}, Landroid/webkit/JsPromptResult;->cancel()V

    .line 38
    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/fragment/NavWebChromeClient;->mMainHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/alipay/mobile/security/faceauth/circle/fragment/NavWebChromeClient;->mMainHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 40
    :cond_1
    const-string/jumbo v2, "guide_log"

    invoke-virtual {v2, p3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 41
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebChromeClient;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    .line 42
    move-object v0, p4

    .line 43
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {p5}, Landroid/webkit/JsPromptResult;->cancel()V

    .line 44
    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/fragment/NavWebChromeClient;->mMainHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/alipay/mobile/security/faceauth/circle/fragment/NavWebChromeClient;->mMainHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 47
    .end local v0    # "value":Ljava/lang/String;
    :cond_2
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebChromeClient;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    move-result v1

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "newProgress"    # I

    .prologue
    .line 22
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 23
    return-void
.end method
