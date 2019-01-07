.class final Lcom/uc/webview/export/internal/setup/ah;
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
.field final synthetic a:Lcom/uc/webview/export/internal/setup/ae;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/internal/setup/ae;)V
    .locals 0

    .prologue
    .line 581
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/ah;->a:Lcom/uc/webview/export/internal/setup/ae;

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
    .line 581
    check-cast p1, Lcom/uc/webview/export/internal/setup/s;

    instance-of v0, p1, Lcom/uc/webview/export/internal/setup/bf;

    if-eqz v0, :cond_0

    const-string/jumbo v1, "SdkSetupTask"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "ShareCoreSdcardSetupTask.EVENT_DELAY_DECOMPRESS callback SdCoreDecFilePath: "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Lcom/uc/webview/export/internal/setup/bf;

    iget-object v0, v0, Lcom/uc/webview/export/internal/setup/bf;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/ah;->a:Lcom/uc/webview/export/internal/setup/ae;

    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/ah;->a:Lcom/uc/webview/export/internal/setup/ae;

    check-cast p1, Lcom/uc/webview/export/internal/setup/bf;

    iget-object v2, p1, Lcom/uc/webview/export/internal/setup/bf;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/uc/webview/export/internal/setup/ae;->b(Lcom/uc/webview/export/internal/setup/ae;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/s;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/setup/ae;->a(Lcom/uc/webview/export/internal/setup/ae;Lcom/uc/webview/export/internal/setup/s;)Lcom/uc/webview/export/internal/setup/s;

    :cond_0
    return-void
.end method
