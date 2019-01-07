.class Lcom/ali/user/open/core/webview/BaseWebViewActivity$2;
.super Lcom/ali/user/open/core/webview/BridgeWebChromeClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ali/user/open/core/webview/BaseWebViewActivity;->createWebChromeClient()Landroid/webkit/WebChromeClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ali/user/open/core/webview/BaseWebViewActivity;


# direct methods
.method constructor <init>(Lcom/ali/user/open/core/webview/BaseWebViewActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/open/core/webview/BaseWebViewActivity$2;->a:Lcom/ali/user/open/core/webview/BaseWebViewActivity;

    invoke-direct {p0}, Lcom/ali/user/open/core/webview/BridgeWebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/ali/user/open/core/webview/BaseWebViewActivity$2;->a:Lcom/ali/user/open/core/webview/BaseWebViewActivity;

    iget-boolean v0, v0, Lcom/ali/user/open/core/webview/BaseWebViewActivity;->canReceiveTitle:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/open/core/webview/BaseWebViewActivity$2;->a:Lcom/ali/user/open/core/webview/BaseWebViewActivity;

    invoke-virtual {v0}, Lcom/ali/user/open/core/webview/BaseWebViewActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
