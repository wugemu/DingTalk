.class final Lcom/uc/webview/export/internal/setup/cq;
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
        "Lcom/uc/webview/export/utility/download/UpdateTask;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/uc/webview/export/internal/setup/bt;

.field final synthetic b:Lcom/uc/webview/export/internal/setup/cj;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/internal/setup/cj;Lcom/uc/webview/export/internal/setup/bt;)V
    .locals 0

    .prologue
    .line 330
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/cq;->b:Lcom/uc/webview/export/internal/setup/cj;

    iput-object p2, p0, Lcom/uc/webview/export/internal/setup/cq;->a:Lcom/uc/webview/export/internal/setup/bt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 330
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/cq;->a:Lcom/uc/webview/export/internal/setup/bt;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/bt;->a(ILjava/lang/Object;)V

    return-void
.end method
