.class Lcom/ali/user/open/core/webview/BaseWebViewActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ali/user/open/core/webview/BaseWebViewActivity;->a(Landroid/os/Bundle;)V
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

    iput-object p1, p0, Lcom/ali/user/open/core/webview/BaseWebViewActivity$1;->a:Lcom/ali/user/open/core/webview/BaseWebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/ali/user/open/core/webview/BaseWebViewActivity$1;->a:Lcom/ali/user/open/core/webview/BaseWebViewActivity;

    invoke-virtual {v0}, Lcom/ali/user/open/core/webview/BaseWebViewActivity;->onBackHistory()V

    return-void
.end method