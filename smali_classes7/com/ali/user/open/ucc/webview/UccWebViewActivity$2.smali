.class Lcom/ali/user/open/ucc/webview/UccWebViewActivity$2;
.super Lcom/ali/user/open/core/webview/BridgeWebChromeClient;
.source "UccWebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ali/user/open/ucc/webview/UccWebViewActivity;->createWebChromeClient()Landroid/webkit/WebChromeClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ali/user/open/ucc/webview/UccWebViewActivity;


# direct methods
.method constructor <init>(Lcom/ali/user/open/ucc/webview/UccWebViewActivity;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lcom/ali/user/open/ucc/webview/UccWebViewActivity$2;->a:Lcom/ali/user/open/ucc/webview/UccWebViewActivity;

    invoke-direct {p0}, Lcom/ali/user/open/core/webview/BridgeWebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/ali/user/open/ucc/webview/UccWebViewActivity$2;->a:Lcom/ali/user/open/ucc/webview/UccWebViewActivity;

    iget-boolean v0, v0, Lcom/ali/user/open/ucc/webview/UccWebViewActivity;->canReceiveTitle:Z

    if-eqz v0, :cond_0

    .line 260
    if-eqz p2, :cond_0

    .line 261
    iget-object v0, p0, Lcom/ali/user/open/ucc/webview/UccWebViewActivity$2;->a:Lcom/ali/user/open/ucc/webview/UccWebViewActivity;

    invoke-virtual {v0}, Lcom/ali/user/open/ucc/webview/UccWebViewActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 264
    :cond_0
    return-void
.end method
