.class final Lcom/uc/webview/export/internal/setup/ch;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback",
        "<TCA",
        "LLBACK_TYPE;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/uc/webview/export/internal/setup/UCSetupTask$a;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/internal/setup/UCSetupTask$a;)V
    .locals 0

    .prologue
    .line 510
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/ch;->a:Lcom/uc/webview/export/internal/setup/UCSetupTask$a;

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
    .line 510
    const-string/jumbo v0, "UCSetupTask"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "SetupCrashImprover.startCallback MCE("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/uc/webview/export/internal/setup/ch;->a:Lcom/uc/webview/export/internal/setup/UCSetupTask$a;

    iget-object v2, v2, Lcom/uc/webview/export/internal/setup/UCSetupTask$a;->b:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/uc/webview/export/internal/setup/ch;->a:Lcom/uc/webview/export/internal/setup/UCSetupTask$a;

    iget-object v2, v2, Lcom/uc/webview/export/internal/setup/UCSetupTask$a;->a:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/uc/webview/export/internal/setup/ch;->a:Lcom/uc/webview/export/internal/setup/UCSetupTask$a;

    iget-object v2, v2, Lcom/uc/webview/export/internal/setup/UCSetupTask$a;->c:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/ch;->a:Lcom/uc/webview/export/internal/setup/UCSetupTask$a;

    invoke-static {v0}, Lcom/uc/webview/export/internal/setup/UCSetupTask$a;->a(Lcom/uc/webview/export/internal/setup/UCSetupTask$a;)V

    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/ch;->a:Lcom/uc/webview/export/internal/setup/UCSetupTask$a;

    :try_start_0
    iget-object v1, v0, Lcom/uc/webview/export/internal/setup/UCSetupTask$a;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, v0, Lcom/uc/webview/export/internal/setup/UCSetupTask$a;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, v0, Lcom/uc/webview/export/internal/setup/UCSetupTask$a;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v0, v0, Lcom/uc/webview/export/internal/setup/UCSetupTask$a;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lcom/uc/webview/export/internal/setup/UCSetupTask$a;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, v0, Lcom/uc/webview/export/internal/setup/UCSetupTask$a;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method
