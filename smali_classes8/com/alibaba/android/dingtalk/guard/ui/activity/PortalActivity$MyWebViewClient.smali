.class Lcom/alibaba/android/dingtalk/guard/ui/activity/PortalActivity$MyWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "PortalActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/guard/ui/activity/PortalActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyWebViewClient"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/guard/ui/activity/PortalActivity;


# direct methods
.method private constructor <init>(Lcom/alibaba/android/dingtalk/guard/ui/activity/PortalActivity;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/PortalActivity$MyWebViewClient;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/PortalActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/dingtalk/guard/ui/activity/PortalActivity;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/activity/PortalActivity;

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalk/guard/ui/activity/PortalActivity$MyWebViewClient;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/activity/PortalActivity;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 115
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/PortalActivity$MyWebViewClient;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/PortalActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/PortalActivity;->dismissLoadingDialog()V

    .line 117
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 109
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 110
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/PortalActivity$MyWebViewClient;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/PortalActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/PortalActivity;->showLoadingDialog()V

    .line 111
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 101
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string/jumbo v0, "PortalActivity"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "onReceivedError url = "

    aput-object v3, v1, v2

    aput-object p4, v1, v4

    invoke-static {v1}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/PortalActivity$MyWebViewClient;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/PortalActivity;

    invoke-static {v0, p4}, Lcom/alibaba/android/dingtalk/guard/ui/activity/PortalActivity;->a(Lcom/alibaba/android/dingtalk/guard/ui/activity/PortalActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 104
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/PortalActivity$MyWebViewClient;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/PortalActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/PortalActivity;->b(Lcom/alibaba/android/dingtalk/guard/ui/activity/PortalActivity;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 105
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 84
    const-string/jumbo v0, "PortalActivity"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "url = "

    aput-object v4, v2, v3

    aput-object p2, v2, v1

    invoke-static {v2}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "dingtalk://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "http://qr.dingtalk.com"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "https://qr.dingtalk.com"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/PortalActivity$MyWebViewClient;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/PortalActivity;

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalk/guard/ui/activity/PortalActivity;->a(Lcom/alibaba/android/dingtalk/guard/ui/activity/PortalActivity;Z)Z

    .line 87
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/PortalActivity$MyWebViewClient;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/PortalActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/guard/ui/activity/PortalActivity;->a(Lcom/alibaba/android/dingtalk/guard/ui/activity/PortalActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    new-instance v2, Lcom/alibaba/android/dingtalk/guard/ui/activity/PortalActivity$MyWebViewClient$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/PortalActivity$MyWebViewClient$1;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/activity/PortalActivity$MyWebViewClient;)V

    invoke-interface {v0, p2, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 93
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/PortalActivity$MyWebViewClient;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/PortalActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/PortalActivity;->finish()V

    move v0, v1

    .line 96
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
