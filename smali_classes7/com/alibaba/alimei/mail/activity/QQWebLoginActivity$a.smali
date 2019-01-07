.class final Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$a;
.super Lcom/uc/webview/export/WebViewClient;
.source "QQWebLoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;

.field private c:Ljava/lang/String;

.field private d:Z


# direct methods
.method private constructor <init>(Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 424
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$a;->b:Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;

    invoke-direct {p0}, Lcom/uc/webview/export/WebViewClient;-><init>()V

    .line 425
    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$a;->c:Ljava/lang/String;

    .line 427
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$a;->d:Z

    .line 429
    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$a;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;

    .prologue
    .line 424
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$a;-><init>(Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$a;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$a;

    .prologue
    .line 424
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$a;->a:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method private a(Lcom/uc/webview/export/WebView;Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 6
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "url"    # Landroid/net/Uri;
    .param p3, "urlString"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 462
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v5, "shouldOverrideUrlLoading  ---->>"

    aput-object v5, v2, v4

    const-string/jumbo v5, "url: "

    aput-object v5, v2, v3

    const/4 v5, 0x2

    aput-object p3, v2, v5

    invoke-static {v2}, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;->a([Ljava/lang/Object;)V

    .line 464
    const-string/jumbo v2, "https://mail.qq.com/cgi-bin/loginpage"

    invoke-virtual {p3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 465
    const-string/jumbo v2, "autologin"

    invoke-static {p2, v2}, Lajr;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 466
    .local v1, "autologin":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 468
    invoke-static {}, Laif;->a()Laie;

    move-result-object v2

    const-string/jumbo v4, "GetHtml"

    new-instance v5, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$a$1;

    invoke-direct {v5, p0, p3, p1}, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$a$1;-><init>(Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$a;Ljava/lang/String;Lcom/uc/webview/export/WebView;)V

    invoke-interface {v2, v4, v5}, Laie;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    move v2, v3

    .line 523
    .end local v1    # "autologin":Ljava/lang/String;
    :goto_0
    return v2

    .line 505
    :cond_0
    const-string/jumbo v2, "https://mail.qq.com/cgi-bin/readtemplate"

    invoke-virtual {p3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 506
    const-string/jumbo v2, "https://mail.qq.com/cgi-bin/login?vt=passport&vm=wpt&ft=loginpage&target="

    invoke-virtual {p1, v2}, Lcom/uc/webview/export/WebView;->loadUrl(Ljava/lang/String;)V

    move v2, v3

    .line 508
    goto :goto_0

    .line 510
    :cond_1
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$a;->a:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;

    move-object v0, v2

    .line 512
    .local v0, "activity":Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;
    :goto_1
    iget-boolean v2, p0, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$a;->d:Z

    if-nez v2, :cond_4

    if-eqz v0, :cond_4

    .line 513
    const-string/jumbo v2, "http://w.mail.qq.com/cgi-bin/mobile"

    invoke-virtual {p3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz p2, :cond_4

    const-string/jumbo v2, "/cgi-bin/frame_html"

    .line 514
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 515
    :cond_2
    invoke-static {v0, p1, p2}, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;->a(Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;Lcom/uc/webview/export/WebView;Landroid/net/Uri;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$a;->d:Z

    .line 516
    iget-boolean v2, p0, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$a;->d:Z

    if-eqz v2, :cond_4

    move v2, v3

    .line 517
    goto :goto_0

    .line 510
    .end local v0    # "activity":Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    move v2, v4

    .line 523
    goto :goto_0
.end method


# virtual methods
.method public final onLoadResource(Lcom/uc/webview/export/WebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 581
    invoke-super {p0, p1, p2}, Lcom/uc/webview/export/WebViewClient;->onLoadResource(Lcom/uc/webview/export/WebView;Ljava/lang/String;)V

    .line 583
    return-void
.end method

.method public final onPageFinished(Lcom/uc/webview/export/WebView;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 560
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "onPageFinished---->>"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "url: "

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;->a([Ljava/lang/Object;)V

    .line 561
    if-eqz p2, :cond_0

    .line 562
    invoke-super {p0, p1, p2}, Lcom/uc/webview/export/WebViewClient;->onPageFinished(Lcom/uc/webview/export/WebView;Ljava/lang/String;)V

    .line 565
    :cond_0
    const-string/jumbo v0, "document.readyState"

    new-instance v1, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$a$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$a$2;-><init>(Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$a;Lcom/uc/webview/export/WebView;Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Lcom/uc/webview/export/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 577
    return-void
.end method

.method public final onPageStarted(Lcom/uc/webview/export/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 551
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "onPageStarted---->>"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "url: "

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;->a([Ljava/lang/Object;)V

    .line 553
    invoke-super {p0, p1, p2, p3}, Lcom/uc/webview/export/WebViewClient;->onPageStarted(Lcom/uc/webview/export/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 555
    return-void
.end method

.method public final onReceivedError(Lcom/uc/webview/export/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 587
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "onReceivedError---->>"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "errorCode: "

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, " ,description:"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    aput-object p3, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, " ,failingUrl:"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    aput-object p4, v0, v1

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;->a([Ljava/lang/Object;)V

    .line 2458
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$a;->c:Ljava/lang/String;

    .line 589
    invoke-super {p0, p1, p2, p3, p4}, Lcom/uc/webview/export/WebViewClient;->onReceivedError(Lcom/uc/webview/export/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 590
    return-void
.end method

.method public final shouldOverrideUrlLoading(Lcom/uc/webview/export/WebView;Lcom/uc/webview/export/WebResourceRequest;)Z
    .locals 3
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "request"    # Lcom/uc/webview/export/WebResourceRequest;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 539
    invoke-virtual {p2}, Lcom/uc/webview/export/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    .line 540
    .local v0, "url":Landroid/net/Uri;
    invoke-virtual {p2}, Lcom/uc/webview/export/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 542
    .local v1, "urlString":Ljava/lang/String;
    invoke-direct {p0, p1, v0, v1}, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$a;->a(Lcom/uc/webview/export/WebView;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 543
    const/4 v2, 0x1

    .line 546
    :goto_0
    return v2

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/uc/webview/export/WebViewClient;->shouldOverrideUrlLoading(Lcom/uc/webview/export/WebView;Lcom/uc/webview/export/WebResourceRequest;)Z

    move-result v2

    goto :goto_0
.end method

.method public final shouldOverrideUrlLoading(Lcom/uc/webview/export/WebView;Ljava/lang/String;)Z
    .locals 2
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 528
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 530
    .local v0, "uri":Landroid/net/Uri;
    if-eqz v0, :cond_0

    invoke-direct {p0, p1, v0, p2}, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$a;->a(Lcom/uc/webview/export/WebView;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 531
    const/4 v1, 0x1

    .line 533
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/uc/webview/export/WebViewClient;->shouldOverrideUrlLoading(Lcom/uc/webview/export/WebView;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method
