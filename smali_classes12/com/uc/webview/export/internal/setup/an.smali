.class final Lcom/uc/webview/export/internal/setup/an;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback",
        "<",
        "Lcom/uc/webview/export/internal/setup/s;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/uc/webview/export/internal/setup/ae;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/internal/setup/ae;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 427
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/an;->b:Lcom/uc/webview/export/internal/setup/ae;

    iput-object p2, p0, Lcom/uc/webview/export/internal/setup/an;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 427
    check-cast p1, Lcom/uc/webview/export/internal/setup/s;

    new-instance v0, Lcom/uc/webview/export/internal/setup/bg;

    invoke-direct {v0}, Lcom/uc/webview/export/internal/setup/bg;-><init>()V

    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/an;->a:Ljava/lang/String;

    check-cast p1, Lcom/uc/webview/export/internal/setup/cj;

    iget-object v1, p1, Lcom/uc/webview/export/internal/setup/cj;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/setup/bg;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
