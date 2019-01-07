.class final Lcom/tencent/connect/auth/AuthDialog$LoginWebViewClient$1;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/connect/auth/AuthDialog$LoginWebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/connect/auth/AuthDialog$LoginWebViewClient;


# direct methods
.method constructor <init>(Lcom/tencent/connect/auth/AuthDialog$LoginWebViewClient;)V
    .locals 0

    .prologue
    .line 377
    iput-object p1, p0, Lcom/tencent/connect/auth/AuthDialog$LoginWebViewClient$1;->a:Lcom/tencent/connect/auth/AuthDialog$LoginWebViewClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 381
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthDialog$LoginWebViewClient$1;->a:Lcom/tencent/connect/auth/AuthDialog$LoginWebViewClient;

    iget-object v0, v0, Lcom/tencent/connect/auth/AuthDialog$LoginWebViewClient;->a:Lcom/tencent/connect/auth/AuthDialog;

    invoke-static {v0}, Lcom/tencent/connect/auth/AuthDialog;->e(Lcom/tencent/connect/auth/AuthDialog;)Lcom/tencent/open/c/c;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/connect/auth/AuthDialog$LoginWebViewClient$1;->a:Lcom/tencent/connect/auth/AuthDialog$LoginWebViewClient;

    iget-object v1, v1, Lcom/tencent/connect/auth/AuthDialog$LoginWebViewClient;->a:Lcom/tencent/connect/auth/AuthDialog;

    invoke-static {v1}, Lcom/tencent/connect/auth/AuthDialog;->i(Lcom/tencent/connect/auth/AuthDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/open/c/c;->loadUrl(Ljava/lang/String;)V

    .line 382
    return-void
.end method
