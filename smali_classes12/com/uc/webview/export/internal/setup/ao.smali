.class final Lcom/uc/webview/export/internal/setup/ao;
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
.field final a:Landroid/webkit/ValueCallback;

.field final synthetic b:Lcom/uc/webview/export/internal/setup/ae;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/internal/setup/ae;)V
    .locals 5

    .prologue
    .line 416
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/ao;->b:Lcom/uc/webview/export/internal/setup/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 417
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/ao;->b:Lcom/uc/webview/export/internal/setup/ae;

    const/16 v1, 0x2717

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "downloadException"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/ae;->invokeO(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/ValueCallback;

    iput-object v0, p0, Lcom/uc/webview/export/internal/setup/ao;->a:Landroid/webkit/ValueCallback;

    return-void
.end method


# virtual methods
.method public final synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 416
    check-cast p1, Lcom/uc/webview/export/internal/setup/s;

    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/ao;->a:Landroid/webkit/ValueCallback;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/uc/webview/export/internal/setup/s;->getExtraException()Lcom/uc/webview/export/internal/setup/UCSetupException;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/ao;->b:Lcom/uc/webview/export/internal/setup/ae;

    invoke-virtual {p1}, Lcom/uc/webview/export/internal/setup/s;->getExtraException()Lcom/uc/webview/export/internal/setup/UCSetupException;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/setup/ae;->setExtraException(Lcom/uc/webview/export/internal/setup/UCSetupException;)V

    :cond_0
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/ao;->a:Landroid/webkit/ValueCallback;

    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/ao;->b:Lcom/uc/webview/export/internal/setup/ae;

    invoke-interface {v0, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
