.class final Lcom/uc/webview/export/internal/setup/h;
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
.field final synthetic a:Lcom/uc/webview/export/internal/setup/BrowserSetupTask;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/internal/setup/BrowserSetupTask;)V
    .locals 0

    .prologue
    .line 495
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/h;->a:Lcom/uc/webview/export/internal/setup/BrowserSetupTask;

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
    .line 495
    check-cast p1, Lcom/uc/webview/export/internal/setup/s;

    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/h;->a:Lcom/uc/webview/export/internal/setup/BrowserSetupTask;

    const-string/jumbo v1, "sdk_stp_def_exc"

    invoke-virtual {p1}, Lcom/uc/webview/export/internal/setup/s;->getException()Lcom/uc/webview/export/internal/setup/UCSetupException;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/BrowserSetupTask;->c(Lcom/uc/webview/export/internal/setup/BrowserSetupTask;Ljava/lang/String;Lcom/uc/webview/export/internal/setup/UCSetupException;)V

    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/h;->a:Lcom/uc/webview/export/internal/setup/BrowserSetupTask;

    new-instance v1, Lcom/uc/webview/export/internal/setup/UCMRepairInfo;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/uc/webview/export/internal/setup/UCMRepairInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/setup/BrowserSetupTask;->setRepairInfo(Lcom/uc/webview/export/internal/setup/UCMRepairInfo;)V

    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/h;->a:Lcom/uc/webview/export/internal/setup/BrowserSetupTask;

    const-string/jumbo v1, "repair"

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/setup/BrowserSetupTask;->callback(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/h;->a:Lcom/uc/webview/export/internal/setup/BrowserSetupTask;

    invoke-virtual {v0}, Lcom/uc/webview/export/internal/setup/BrowserSetupTask;->getRepairInfo()Lcom/uc/webview/export/internal/setup/UCMRepairInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/h;->a:Lcom/uc/webview/export/internal/setup/BrowserSetupTask;

    invoke-static {v1, p1, v0}, Lcom/uc/webview/export/internal/setup/BrowserSetupTask;->a(Lcom/uc/webview/export/internal/setup/BrowserSetupTask;Lcom/uc/webview/export/internal/setup/s;Lcom/uc/webview/export/internal/setup/UCMRepairInfo;)V

    return-void
.end method
