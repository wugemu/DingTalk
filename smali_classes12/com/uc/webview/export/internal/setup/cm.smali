.class final Lcom/uc/webview/export/internal/setup/cm;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/webkit/ValueCallback;

.field final synthetic b:Lcom/uc/webview/export/internal/setup/bt;

.field final synthetic c:Landroid/util/Pair;

.field final synthetic d:Lcom/uc/webview/export/internal/setup/cj;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/internal/setup/cj;Landroid/webkit/ValueCallback;Lcom/uc/webview/export/internal/setup/bt;Landroid/util/Pair;)V
    .locals 0

    .prologue
    .line 388
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/cm;->d:Lcom/uc/webview/export/internal/setup/cj;

    iput-object p2, p0, Lcom/uc/webview/export/internal/setup/cm;->a:Landroid/webkit/ValueCallback;

    iput-object p3, p0, Lcom/uc/webview/export/internal/setup/cm;->b:Lcom/uc/webview/export/internal/setup/bt;

    iput-object p4, p0, Lcom/uc/webview/export/internal/setup/cm;->c:Landroid/util/Pair;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 393
    :try_start_0
    invoke-static {}, Lcom/uc/webview/export/internal/utility/g;->e()Ljava/lang/String;

    move-result-object v0

    .line 394
    const-string/jumbo v1, "UpdateSetupTask"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, ".shareCoreWaitTimeout localDir:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/j;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 396
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/cm;->a:Landroid/webkit/ValueCallback;

    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/cm;->d:Lcom/uc/webview/export/internal/setup/cj;

    invoke-interface {v0, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 397
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/cm;->b:Lcom/uc/webview/export/internal/setup/bt;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/bt;->a(ILjava/lang/Object;)V

    .line 418
    :cond_0
    :goto_0
    return-void

    .line 401
    :cond_1
    invoke-static {}, Lcom/uc/webview/export/internal/utility/g;->f()Ljava/lang/String;

    move-result-object v0

    .line 402
    const-string/jumbo v1, "UpdateSetupTask"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, ".shareCoreWaitTimeout decFile:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/j;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 404
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/cm;->a:Landroid/webkit/ValueCallback;

    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/cm;->d:Lcom/uc/webview/export/internal/setup/cj;

    invoke-interface {v0, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 405
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/cm;->b:Lcom/uc/webview/export/internal/setup/bt;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/bt;->a(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 412
    :catch_0
    move-exception v0

    .line 413
    const-string/jumbo v1, "UpdateSetupTask"

    const-string/jumbo v2, ".shareCoreWaitTimeout Thread "

    invoke-static {v1, v2, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 414
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/cm;->c:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v4, :cond_0

    .line 415
    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/cm;->b:Lcom/uc/webview/export/internal/setup/bt;

    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/cm;->c:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/uc/webview/export/internal/setup/cm;->c:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Lcom/uc/webview/export/internal/setup/bt;->a(ILjava/lang/Object;)V

    goto :goto_0

    .line 408
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/cm;->c:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v4, :cond_0

    .line 409
    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/cm;->b:Lcom/uc/webview/export/internal/setup/bt;

    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/cm;->c:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/uc/webview/export/internal/setup/cm;->c:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Lcom/uc/webview/export/internal/setup/bt;->a(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
