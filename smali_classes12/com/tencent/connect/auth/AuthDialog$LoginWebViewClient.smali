.class Lcom/tencent/connect/auth/AuthDialog$LoginWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/connect/auth/AuthDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoginWebViewClient"
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/connect/auth/AuthDialog;


# direct methods
.method private constructor <init>(Lcom/tencent/connect/auth/AuthDialog;)V
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Lcom/tencent/connect/auth/AuthDialog$LoginWebViewClient;->a:Lcom/tencent/connect/auth/AuthDialog;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/connect/auth/AuthDialog;B)V
    .locals 0

    .prologue
    .line 267
    invoke-direct {p0, p1}, Lcom/tencent/connect/auth/AuthDialog$LoginWebViewClient;-><init>(Lcom/tencent/connect/auth/AuthDialog;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 417
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 418
    const-string/jumbo v0, "openSDK_LOG.authDlg"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "-->onPageFinished, url: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljtg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthDialog$LoginWebViewClient;->a:Lcom/tencent/connect/auth/AuthDialog;

    invoke-static {v0}, Lcom/tencent/connect/auth/AuthDialog;->g(Lcom/tencent/connect/auth/AuthDialog;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 421
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthDialog$LoginWebViewClient;->a:Lcom/tencent/connect/auth/AuthDialog;

    invoke-static {v0}, Lcom/tencent/connect/auth/AuthDialog;->e(Lcom/tencent/connect/auth/AuthDialog;)Lcom/tencent/open/c/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthDialog$LoginWebViewClient;->a:Lcom/tencent/connect/auth/AuthDialog;

    invoke-static {v0}, Lcom/tencent/connect/auth/AuthDialog;->e(Lcom/tencent/connect/auth/AuthDialog;)Lcom/tencent/open/c/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/open/c/c;->setVisibility(I)V

    .line 426
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 427
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthDialog$LoginWebViewClient;->a:Lcom/tencent/connect/auth/AuthDialog;

    invoke-static {v0}, Lcom/tencent/connect/auth/AuthDialog;->n(Lcom/tencent/connect/auth/AuthDialog;)Landroid/os/Handler;

    move-result-object v1

    iget-object v0, p0, Lcom/tencent/connect/auth/AuthDialog$LoginWebViewClient;->a:Lcom/tencent/connect/auth/AuthDialog;

    invoke-static {v0}, Lcom/tencent/connect/auth/AuthDialog;->p(Lcom/tencent/connect/auth/AuthDialog;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 429
    :cond_1
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 396
    const-string/jumbo v0, "openSDK_LOG.authDlg"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "-->onPageStarted, url: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljtg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 399
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthDialog$LoginWebViewClient;->a:Lcom/tencent/connect/auth/AuthDialog;

    invoke-static {v0}, Lcom/tencent/connect/auth/AuthDialog;->g(Lcom/tencent/connect/auth/AuthDialog;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 401
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthDialog$LoginWebViewClient;->a:Lcom/tencent/connect/auth/AuthDialog;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/tencent/connect/auth/AuthDialog;->a(Lcom/tencent/connect/auth/AuthDialog;J)J

    .line 404
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthDialog$LoginWebViewClient;->a:Lcom/tencent/connect/auth/AuthDialog;

    invoke-static {v0}, Lcom/tencent/connect/auth/AuthDialog;->i(Lcom/tencent/connect/auth/AuthDialog;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthDialog$LoginWebViewClient;->a:Lcom/tencent/connect/auth/AuthDialog;

    invoke-static {v0}, Lcom/tencent/connect/auth/AuthDialog;->n(Lcom/tencent/connect/auth/AuthDialog;)Landroid/os/Handler;

    move-result-object v1

    iget-object v0, p0, Lcom/tencent/connect/auth/AuthDialog$LoginWebViewClient;->a:Lcom/tencent/connect/auth/AuthDialog;

    invoke-static {v0}, Lcom/tencent/connect/auth/AuthDialog;->p(Lcom/tencent/connect/auth/AuthDialog;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/connect/auth/AuthDialog$LoginWebViewClient;->a:Lcom/tencent/connect/auth/AuthDialog;

    invoke-static {v2}, Lcom/tencent/connect/auth/AuthDialog;->i(Lcom/tencent/connect/auth/AuthDialog;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthDialog$LoginWebViewClient;->a:Lcom/tencent/connect/auth/AuthDialog;

    invoke-static {v0, p2}, Lcom/tencent/connect/auth/AuthDialog;->c(Lcom/tencent/connect/auth/AuthDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 409
    new-instance v0, Lcom/tencent/connect/auth/AuthDialog$b;

    iget-object v1, p0, Lcom/tencent/connect/auth/AuthDialog$LoginWebViewClient;->a:Lcom/tencent/connect/auth/AuthDialog;

    iget-object v2, p0, Lcom/tencent/connect/auth/AuthDialog$LoginWebViewClient;->a:Lcom/tencent/connect/auth/AuthDialog;

    invoke-static {v2}, Lcom/tencent/connect/auth/AuthDialog;->i(Lcom/tencent/connect/auth/AuthDialog;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/tencent/connect/auth/AuthDialog$b;-><init>(Lcom/tencent/connect/auth/AuthDialog;Ljava/lang/String;)V

    .line 410
    iget-object v1, p0, Lcom/tencent/connect/auth/AuthDialog$LoginWebViewClient;->a:Lcom/tencent/connect/auth/AuthDialog;

    invoke-static {v1}, Lcom/tencent/connect/auth/AuthDialog;->p(Lcom/tencent/connect/auth/AuthDialog;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    iget-object v1, p0, Lcom/tencent/connect/auth/AuthDialog$LoginWebViewClient;->a:Lcom/tencent/connect/auth/AuthDialog;

    invoke-static {v1}, Lcom/tencent/connect/auth/AuthDialog;->n(Lcom/tencent/connect/auth/AuthDialog;)Landroid/os/Handler;

    move-result-object v1

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 413
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 360
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 361
    const-string/jumbo v0, "openSDK_LOG.authDlg"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "-->onReceivedError, errorCode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " | description: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljtg;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthDialog$LoginWebViewClient;->a:Lcom/tencent/connect/auth/AuthDialog;

    invoke-static {v0}, Lcom/tencent/connect/auth/AuthDialog;->a(Lcom/tencent/connect/auth/AuthDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ljtx;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthDialog$LoginWebViewClient;->a:Lcom/tencent/connect/auth/AuthDialog;

    invoke-static {v0}, Lcom/tencent/connect/auth/AuthDialog;->f(Lcom/tencent/connect/auth/AuthDialog;)Lcom/tencent/connect/auth/AuthDialog$a;

    move-result-object v0

    new-instance v1, Ljue;

    const/16 v2, 0x2329

    const-string/jumbo v3, "\u5f53\u524d\u7f51\u7edc\u4e0d\u53ef\u7528\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5\uff01"

    invoke-direct {v1, v2, v3, p4}, Ljue;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/connect/auth/AuthDialog$a;->a(Ljue;)V

    .line 365
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthDialog$LoginWebViewClient;->a:Lcom/tencent/connect/auth/AuthDialog;

    invoke-virtual {v0}, Lcom/tencent/connect/auth/AuthDialog;->dismiss()V

    .line 392
    :goto_0
    return-void

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthDialog$LoginWebViewClient;->a:Lcom/tencent/connect/auth/AuthDialog;

    invoke-static {v0}, Lcom/tencent/connect/auth/AuthDialog;->i(Lcom/tencent/connect/auth/AuthDialog;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "http://qzs.qq.com/open/mobile/login/qzsjump.html?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 370
    if-nez v0, :cond_2

    .line 372
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/tencent/connect/auth/AuthDialog$LoginWebViewClient;->a:Lcom/tencent/connect/auth/AuthDialog;

    invoke-static {v2}, Lcom/tencent/connect/auth/AuthDialog;->j(Lcom/tencent/connect/auth/AuthDialog;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 373
    iget-object v2, p0, Lcom/tencent/connect/auth/AuthDialog$LoginWebViewClient;->a:Lcom/tencent/connect/auth/AuthDialog;

    invoke-static {v2}, Lcom/tencent/connect/auth/AuthDialog;->k(Lcom/tencent/connect/auth/AuthDialog;)I

    move-result v2

    if-gtz v2, :cond_1

    iget-object v2, p0, Lcom/tencent/connect/auth/AuthDialog$LoginWebViewClient;->a:Lcom/tencent/connect/auth/AuthDialog;

    invoke-static {v2}, Lcom/tencent/connect/auth/AuthDialog;->l(Lcom/tencent/connect/auth/AuthDialog;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 374
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthDialog$LoginWebViewClient;->a:Lcom/tencent/connect/auth/AuthDialog;

    invoke-static {v0}, Lcom/tencent/connect/auth/AuthDialog;->m(Lcom/tencent/connect/auth/AuthDialog;)I

    .line 377
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthDialog$LoginWebViewClient;->a:Lcom/tencent/connect/auth/AuthDialog;

    invoke-static {v0}, Lcom/tencent/connect/auth/AuthDialog;->n(Lcom/tencent/connect/auth/AuthDialog;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/tencent/connect/auth/AuthDialog$LoginWebViewClient$1;

    invoke-direct {v1, p0}, Lcom/tencent/connect/auth/AuthDialog$LoginWebViewClient$1;-><init>(Lcom/tencent/connect/auth/AuthDialog$LoginWebViewClient;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 385
    :cond_1
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthDialog$LoginWebViewClient;->a:Lcom/tencent/connect/auth/AuthDialog;

    invoke-static {v0}, Lcom/tencent/connect/auth/AuthDialog;->e(Lcom/tencent/connect/auth/AuthDialog;)Lcom/tencent/open/c/c;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/connect/auth/AuthDialog$LoginWebViewClient;->a:Lcom/tencent/connect/auth/AuthDialog;

    invoke-static {v1}, Lcom/tencent/connect/auth/AuthDialog;->o(Lcom/tencent/connect/auth/AuthDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/open/c/c;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 390
    :cond_2
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthDialog$LoginWebViewClient;->a:Lcom/tencent/connect/auth/AuthDialog;

    invoke-static {v0}, Lcom/tencent/connect/auth/AuthDialog;->f(Lcom/tencent/connect/auth/AuthDialog;)Lcom/tencent/connect/auth/AuthDialog$a;

    move-result-object v0

    new-instance v1, Ljue;

    invoke-direct {v1, p2, p3, p4}, Ljue;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/connect/auth/AuthDialog$a;->a(Ljue;)V

    .line 391
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthDialog$LoginWebViewClient;->a:Lcom/tencent/connect/auth/AuthDialog;

    invoke-virtual {v0}, Lcom/tencent/connect/auth/AuthDialog;->dismiss()V

    goto :goto_0
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 436
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    .line 437
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthDialog$LoginWebViewClient;->a:Lcom/tencent/connect/auth/AuthDialog;

    invoke-static {v0}, Lcom/tencent/connect/auth/AuthDialog;->f(Lcom/tencent/connect/auth/AuthDialog;)Lcom/tencent/connect/auth/AuthDialog$a;

    move-result-object v0

    new-instance v1, Ljue;

    invoke-virtual {p3}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result v2

    const-string/jumbo v3, "\u8bf7\u6c42\u4e0d\u5408\u6cd5\uff0c\u8bf7\u68c0\u67e5\u624b\u673a\u5b89\u5168\u8bbe\u7f6e\uff0c\u5982\u7cfb\u7edf\u65f6\u95f4\u3001\u4ee3\u7406\u7b49\u3002"

    const-string/jumbo v4, "ssl error"

    invoke-direct {v1, v2, v3, v4}, Ljue;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/connect/auth/AuthDialog$a;->a(Ljue;)V

    .line 439
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthDialog$LoginWebViewClient;->a:Lcom/tencent/connect/auth/AuthDialog;

    invoke-virtual {v0}, Lcom/tencent/connect/auth/AuthDialog;->dismiss()V

    .line 440
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 270
    const-string/jumbo v2, "openSDK_LOG.authDlg"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "-->Redirect URL: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljtg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const-string/jumbo v2, "auth://browser"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 272
    invoke-static {p2}, Ljtx;->c(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 275
    iget-object v2, p0, Lcom/tencent/connect/auth/AuthDialog$LoginWebViewClient;->a:Lcom/tencent/connect/auth/AuthDialog;

    iget-object v3, p0, Lcom/tencent/connect/auth/AuthDialog$LoginWebViewClient;->a:Lcom/tencent/connect/auth/AuthDialog;

    invoke-static {v3}, Lcom/tencent/connect/auth/AuthDialog;->b(Lcom/tencent/connect/auth/AuthDialog;)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/tencent/connect/auth/AuthDialog;->a(Lcom/tencent/connect/auth/AuthDialog;Z)Z

    .line 277
    iget-object v2, p0, Lcom/tencent/connect/auth/AuthDialog$LoginWebViewClient;->a:Lcom/tencent/connect/auth/AuthDialog;

    invoke-static {v2}, Lcom/tencent/connect/auth/AuthDialog;->c(Lcom/tencent/connect/auth/AuthDialog;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 279
    const-string/jumbo v2, "fail_cb"

    invoke-virtual {v0, v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 281
    iget-object v2, p0, Lcom/tencent/connect/auth/AuthDialog$LoginWebViewClient;->a:Lcom/tencent/connect/auth/AuthDialog;

    const-string/jumbo v3, "fail_cb"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, ""

    invoke-virtual {v2, v0, v3}, Lcom/tencent/connect/auth/AuthDialog;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    move v0, v1

    .line 354
    :goto_1
    return v0

    .line 282
    :cond_1
    const-string/jumbo v2, "fall_to_wv"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v1, :cond_3

    .line 284
    iget-object v2, p0, Lcom/tencent/connect/auth/AuthDialog$LoginWebViewClient;->a:Lcom/tencent/connect/auth/AuthDialog;

    iget-object v0, p0, Lcom/tencent/connect/auth/AuthDialog$LoginWebViewClient;->a:Lcom/tencent/connect/auth/AuthDialog;

    invoke-static {v0}, Lcom/tencent/connect/auth/AuthDialog;->d(Lcom/tencent/connect/auth/AuthDialog;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "?"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_2

    const-string/jumbo v0, "&"

    :goto_2
    invoke-static {v2, v0}, Lcom/tencent/connect/auth/AuthDialog;->a(Lcom/tencent/connect/auth/AuthDialog;Ljava/lang/Object;)Ljava/lang/String;

    .line 285
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthDialog$LoginWebViewClient;->a:Lcom/tencent/connect/auth/AuthDialog;

    const-string/jumbo v2, "browser_error=1"

    invoke-static {v0, v2}, Lcom/tencent/connect/auth/AuthDialog;->a(Lcom/tencent/connect/auth/AuthDialog;Ljava/lang/Object;)Ljava/lang/String;

    .line 286
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthDialog$LoginWebViewClient;->a:Lcom/tencent/connect/auth/AuthDialog;

    invoke-static {v0}, Lcom/tencent/connect/auth/AuthDialog;->e(Lcom/tencent/connect/auth/AuthDialog;)Lcom/tencent/open/c/c;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/connect/auth/AuthDialog$LoginWebViewClient;->a:Lcom/tencent/connect/auth/AuthDialog;

    invoke-static {v2}, Lcom/tencent/connect/auth/AuthDialog;->d(Lcom/tencent/connect/auth/AuthDialog;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/open/c/c;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 284
    :cond_2
    const-string/jumbo v0, "?"

    goto :goto_2

    .line 290
    :cond_3
    const-string/jumbo v2, "redir"

    invoke-virtual {v0, v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 291
    if-eqz v0, :cond_0

    .line 292
    iget-object v2, p0, Lcom/tencent/connect/auth/AuthDialog$LoginWebViewClient;->a:Lcom/tencent/connect/auth/AuthDialog;

    invoke-static {v2}, Lcom/tencent/connect/auth/AuthDialog;->e(Lcom/tencent/connect/auth/AuthDialog;)Lcom/tencent/open/c/c;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/tencent/open/c/c;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 297
    :cond_4
    const-string/jumbo v2, "auth://tauth.qq.com/"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 298
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthDialog$LoginWebViewClient;->a:Lcom/tencent/connect/auth/AuthDialog;

    invoke-static {v0}, Lcom/tencent/connect/auth/AuthDialog;->f(Lcom/tencent/connect/auth/AuthDialog;)Lcom/tencent/connect/auth/AuthDialog$a;

    move-result-object v0

    invoke-static {p2}, Ljtx;->c(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/connect/auth/AuthDialog$a;->a(Ljava/lang/Object;)V

    .line 299
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthDialog$LoginWebViewClient;->a:Lcom/tencent/connect/auth/AuthDialog;

    invoke-virtual {v0}, Lcom/tencent/connect/auth/AuthDialog;->dismiss()V

    move v0, v1

    .line 300
    goto :goto_1

    .line 301
    :cond_5
    const-string/jumbo v2, "auth://cancel"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 302
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthDialog$LoginWebViewClient;->a:Lcom/tencent/connect/auth/AuthDialog;

    invoke-static {v0}, Lcom/tencent/connect/auth/AuthDialog;->f(Lcom/tencent/connect/auth/AuthDialog;)Lcom/tencent/connect/auth/AuthDialog$a;

    .line 303
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthDialog$LoginWebViewClient;->a:Lcom/tencent/connect/auth/AuthDialog;

    invoke-virtual {v0}, Lcom/tencent/connect/auth/AuthDialog;->dismiss()V

    move v0, v1

    .line 304
    goto/16 :goto_1

    .line 305
    :cond_6
    const-string/jumbo v2, "auth://close"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 307
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthDialog$LoginWebViewClient;->a:Lcom/tencent/connect/auth/AuthDialog;

    invoke-virtual {v0}, Lcom/tencent/connect/auth/AuthDialog;->dismiss()V

    move v0, v1

    .line 308
    goto/16 :goto_1

    .line 309
    :cond_7
    const-string/jumbo v2, "download://"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 312
    const/16 v0, 0xb

    :try_start_0
    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 313
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 314
    const/high16 v0, 0x10000000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 315
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthDialog$LoginWebViewClient;->a:Lcom/tencent/connect/auth/AuthDialog;

    invoke-static {v0}, Lcom/tencent/connect/auth/AuthDialog;->a(Lcom/tencent/connect/auth/AuthDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    move v0, v1

    .line 319
    goto/16 :goto_1

    .line 316
    :catch_0
    move-exception v0

    .line 317
    const-string/jumbo v2, "openSDK_LOG.authDlg"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "-->start download activity exception, e: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Ljtg;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 320
    :cond_8
    const-string/jumbo v2, "auth://progress"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 323
    :try_start_1
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 324
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 325
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    move v0, v1

    .line 326
    goto/16 :goto_1

    .line 327
    :cond_9
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 328
    if-nez v0, :cond_b

    .line 330
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthDialog$LoginWebViewClient;->a:Lcom/tencent/connect/auth/AuthDialog;

    invoke-static {v0}, Lcom/tencent/connect/auth/AuthDialog;->g(Lcom/tencent/connect/auth/AuthDialog;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 331
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthDialog$LoginWebViewClient;->a:Lcom/tencent/connect/auth/AuthDialog;

    invoke-static {v0}, Lcom/tencent/connect/auth/AuthDialog;->e(Lcom/tencent/connect/auth/AuthDialog;)Lcom/tencent/open/c/c;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/tencent/open/c/c;->setVisibility(I)V

    :cond_a
    :goto_4
    move v0, v1

    .line 336
    goto/16 :goto_1

    .line 332
    :cond_b
    if-ne v0, v1, :cond_a

    .line 334
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthDialog$LoginWebViewClient;->a:Lcom/tencent/connect/auth/AuthDialog;

    invoke-static {v0}, Lcom/tencent/connect/auth/AuthDialog;->g(Lcom/tencent/connect/auth/AuthDialog;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 338
    :catch_1
    move-exception v0

    move v0, v1

    goto/16 :goto_1

    .line 340
    :cond_c
    const-string/jumbo v2, "auth://onLoginSubmit"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 342
    :try_start_2
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 343
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 344
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_d

    .line 345
    iget-object v2, p0, Lcom/tencent/connect/auth/AuthDialog$LoginWebViewClient;->a:Lcom/tencent/connect/auth/AuthDialog;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/tencent/connect/auth/AuthDialog;->b(Lcom/tencent/connect/auth/AuthDialog;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_d
    :goto_5
    move v0, v1

    .line 348
    goto/16 :goto_1

    .line 349
    :cond_e
    iget-object v2, p0, Lcom/tencent/connect/auth/AuthDialog$LoginWebViewClient;->a:Lcom/tencent/connect/auth/AuthDialog;

    invoke-static {v2}, Lcom/tencent/connect/auth/AuthDialog;->h(Lcom/tencent/connect/auth/AuthDialog;)Ljua;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/connect/auth/AuthDialog$LoginWebViewClient;->a:Lcom/tencent/connect/auth/AuthDialog;

    invoke-static {v3}, Lcom/tencent/connect/auth/AuthDialog;->e(Lcom/tencent/connect/auth/AuthDialog;)Lcom/tencent/open/c/c;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Ljua;->a(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    move v0, v1

    .line 350
    goto/16 :goto_1

    .line 353
    :cond_f
    const-string/jumbo v1, "openSDK_LOG.authDlg"

    const-string/jumbo v2, "-->Redirect URL: return false"

    invoke-static {v1, v2}, Ljtg;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_2
    move-exception v0

    goto :goto_5
.end method
