.class final Lcom/uc/webview/export/internal/setup/cr;
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
    .line 320
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/cr;->b:Lcom/uc/webview/export/internal/setup/cj;

    iput-object p2, p0, Lcom/uc/webview/export/internal/setup/cr;->a:Lcom/uc/webview/export/internal/setup/bt;

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
    .line 320
    check-cast p1, Lcom/uc/webview/export/utility/download/UpdateTask;

    const-string/jumbo v0, "UpdateSetupTask"

    const-string/jumbo v1, "failed"

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/cr;->b:Lcom/uc/webview/export/internal/setup/cj;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/cr;->b:Lcom/uc/webview/export/internal/setup/cj;

    invoke-static {v0}, Lcom/uc/webview/export/internal/setup/cj;->a(Lcom/uc/webview/export/internal/setup/cj;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Lcom/uc/webview/export/utility/download/UpdateTask;->delete()Lcom/uc/webview/export/utility/download/UpdateTask;

    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/cr;->a:Lcom/uc/webview/export/internal/setup/bt;

    const/4 v1, 0x3

    invoke-virtual {p1}, Lcom/uc/webview/export/utility/download/UpdateTask;->getException()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/bt;->a(ILjava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
