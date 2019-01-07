.class final Lcom/uc/webview/export/internal/setup/ck;
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
.field final synthetic a:Lcom/uc/webview/export/internal/setup/cj;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/internal/setup/cj;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/ck;->a:Lcom/uc/webview/export/internal/setup/cj;

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
    .line 160
    check-cast p1, Lcom/uc/webview/export/internal/setup/s;

    const-string/jumbo v0, "UpdateSetupTask"

    const-string/jumbo v1, "setup callback."

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/uc/webview/export/internal/setup/UCSetupTask;->getTotalLoadedUCM()Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v0, v0, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->coreType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    sget-boolean v0, Lcom/uc/webview/export/internal/SDKFactory;->l:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/uc/webview/export/internal/setup/s;->stop()Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    :cond_1
    return-void
.end method
