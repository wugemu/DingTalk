.class final Lcom/uc/webview/export/internal/setup/cg;
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
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/uc/webview/export/internal/setup/UCSetupTask;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/internal/setup/UCSetupTask;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/cg;->a:Lcom/uc/webview/export/internal/setup/UCSetupTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceiveValue(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 214
    const-string/jumbo v0, "UCSetupTask"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "print_log onReceiveValue value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    if-eqz p1, :cond_0

    .line 216
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/cg;->a:Lcom/uc/webview/export/internal/setup/UCSetupTask;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v3, v1}, Lcom/uc/webview/export/internal/setup/UCSetupTask;->a(Lcom/uc/webview/export/internal/setup/UCSetupTask;ZZ)V

    .line 220
    :goto_0
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/cg;->a:Lcom/uc/webview/export/internal/setup/UCSetupTask;

    invoke-static {v0}, Lcom/uc/webview/export/internal/setup/UCSetupTask;->a(Lcom/uc/webview/export/internal/setup/UCSetupTask;)Z

    .line 221
    return-void

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/cg;->a:Lcom/uc/webview/export/internal/setup/UCSetupTask;

    const/4 v1, 0x0

    invoke-static {v0, v1, v3}, Lcom/uc/webview/export/internal/setup/UCSetupTask;->a(Lcom/uc/webview/export/internal/setup/UCSetupTask;ZZ)V

    goto :goto_0
.end method
