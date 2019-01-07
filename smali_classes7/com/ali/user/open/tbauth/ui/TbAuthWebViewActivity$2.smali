.class Lcom/ali/user/open/tbauth/ui/TbAuthWebViewActivity$2;
.super Lcom/ali/user/open/core/webview/BridgeWebChromeClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ali/user/open/tbauth/ui/TbAuthWebViewActivity;->createWebChromeClient()Landroid/webkit/WebChromeClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ali/user/open/tbauth/ui/TbAuthWebViewActivity;


# direct methods
.method constructor <init>(Lcom/ali/user/open/tbauth/ui/TbAuthWebViewActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/open/tbauth/ui/TbAuthWebViewActivity$2;->a:Lcom/ali/user/open/tbauth/ui/TbAuthWebViewActivity;

    invoke-direct {p0}, Lcom/ali/user/open/core/webview/BridgeWebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/ali/user/open/tbauth/ui/TbAuthWebViewActivity$2;->a:Lcom/ali/user/open/tbauth/ui/TbAuthWebViewActivity;

    iget-boolean v0, v0, Lcom/ali/user/open/tbauth/ui/TbAuthWebViewActivity;->canReceiveTitle:Z

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    const-string/jumbo v0, "\u6211\u559c\u6b22"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/ali/user/open/tbauth/ui/TbAuthWebViewActivity$2;->a:Lcom/ali/user/open/tbauth/ui/TbAuthWebViewActivity;

    invoke-virtual {v0}, Lcom/ali/user/open/tbauth/ui/TbAuthWebViewActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
