.class final Lcom/uc/webview/export/internal/setup/co;
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
.field final a:Landroid/webkit/ValueCallback;

.field final synthetic b:Lcom/uc/webview/export/internal/setup/cj;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/internal/setup/cj;)V
    .locals 5

    .prologue
    .line 343
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/co;->b:Lcom/uc/webview/export/internal/setup/cj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 344
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/co;->b:Lcom/uc/webview/export/internal/setup/cj;

    const/16 v1, 0x2717

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "updateProgress"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/cj;->invokeO(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/ValueCallback;

    iput-object v0, p0, Lcom/uc/webview/export/internal/setup/co;->a:Landroid/webkit/ValueCallback;

    return-void
.end method


# virtual methods
.method public final synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 343
    check-cast p1, Lcom/uc/webview/export/utility/download/UpdateTask;

    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/co;->b:Lcom/uc/webview/export/internal/setup/cj;

    invoke-virtual {p1}, Lcom/uc/webview/export/utility/download/UpdateTask;->getPercent()I

    move-result v1

    iput v1, v0, Lcom/uc/webview/export/internal/setup/cj;->mPercent:I

    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/co;->a:Landroid/webkit/ValueCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/co;->a:Landroid/webkit/ValueCallback;

    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/co;->b:Lcom/uc/webview/export/internal/setup/cj;

    invoke-interface {v0, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
