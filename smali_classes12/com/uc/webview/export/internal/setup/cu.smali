.class final Lcom/uc/webview/export/internal/setup/cu;
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
.field final synthetic a:Lcom/uc/webview/export/internal/setup/cj;

.field private b:I


# direct methods
.method constructor <init>(Lcom/uc/webview/export/internal/setup/cj;)V
    .locals 1

    .prologue
    .line 237
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/cu;->a:Lcom/uc/webview/export/internal/setup/cj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    const/4 v0, 0x3

    iput v0, p0, Lcom/uc/webview/export/internal/setup/cu;->b:I

    return-void
.end method


# virtual methods
.method public final synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 237
    check-cast p1, Lcom/uc/webview/export/utility/download/UpdateTask;

    const-string/jumbo v0, "UpdateSetupTask"

    const-string/jumbo v1, "exception"

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/cu;->a:Lcom/uc/webview/export/internal/setup/cj;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/cu;->a:Lcom/uc/webview/export/internal/setup/cj;

    invoke-static {v0}, Lcom/uc/webview/export/internal/setup/cj;->b(Lcom/uc/webview/export/internal/setup/cj;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v0, p0, Lcom/uc/webview/export/internal/setup/cu;->b:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/uc/webview/export/internal/setup/cu;->b:I

    if-lez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/uc/webview/export/internal/setup/cv;

    invoke-direct {v1, p0, p1}, Lcom/uc/webview/export/internal/setup/cv;-><init>(Lcom/uc/webview/export/internal/setup/cu;Lcom/uc/webview/export/utility/download/UpdateTask;)V

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
