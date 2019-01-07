.class final Lcom/uc/webview/export/utility/download/h;
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
        "Lcom/uc/webview/export/utility/download/DownloadTask;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/webkit/ValueCallback;

.field final synthetic b:Landroid/webkit/ValueCallback;

.field final synthetic c:Landroid/webkit/ValueCallback;

.field final synthetic d:Landroid/webkit/ValueCallback;

.field final synthetic e:Lcom/uc/webview/export/utility/download/UpdateTask;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/utility/download/UpdateTask;Landroid/webkit/ValueCallback;Landroid/webkit/ValueCallback;Landroid/webkit/ValueCallback;Landroid/webkit/ValueCallback;)V
    .locals 0

    .prologue
    .line 394
    iput-object p1, p0, Lcom/uc/webview/export/utility/download/h;->e:Lcom/uc/webview/export/utility/download/UpdateTask;

    iput-object p2, p0, Lcom/uc/webview/export/utility/download/h;->a:Landroid/webkit/ValueCallback;

    iput-object p3, p0, Lcom/uc/webview/export/utility/download/h;->b:Landroid/webkit/ValueCallback;

    iput-object p4, p0, Lcom/uc/webview/export/utility/download/h;->c:Landroid/webkit/ValueCallback;

    iput-object p5, p0, Lcom/uc/webview/export/utility/download/h;->d:Landroid/webkit/ValueCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v10, 0xa

    const/4 v8, 0x1

    const-wide/16 v2, 0x0

    .line 394
    check-cast p1, Lcom/uc/webview/export/utility/download/DownloadTask;

    :try_start_0
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/h;->e:Lcom/uc/webview/export/utility/download/UpdateTask;

    invoke-static {v0}, Lcom/uc/webview/export/utility/download/UpdateTask;->c(Lcom/uc/webview/export/utility/download/UpdateTask;)[J

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/uc/webview/export/utility/download/DownloadTask;->getTotalSize()J

    move-result-wide v4

    aput-wide v4, v0, v1

    iget-object v0, p0, Lcom/uc/webview/export/utility/download/h;->e:Lcom/uc/webview/export/utility/download/UpdateTask;

    invoke-static {v0}, Lcom/uc/webview/export/utility/download/UpdateTask;->c(Lcom/uc/webview/export/utility/download/UpdateTask;)[J

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1}, Lcom/uc/webview/export/utility/download/DownloadTask;->getLastModified()J

    move-result-wide v4

    aput-wide v4, v0, v1

    iget-object v0, p0, Lcom/uc/webview/export/utility/download/h;->e:Lcom/uc/webview/export/utility/download/UpdateTask;

    invoke-virtual {v0}, Lcom/uc/webview/export/utility/download/UpdateTask;->getUpdateDir()Ljava/io/File;

    move-result-object v4

    iget-object v0, p0, Lcom/uc/webview/export/utility/download/h;->e:Lcom/uc/webview/export/utility/download/UpdateTask;

    invoke-static {v0}, Lcom/uc/webview/export/utility/download/UpdateTask;->d(Lcom/uc/webview/export/utility/download/UpdateTask;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/uc/webview/export/utility/download/UpdateTask;->isFinished(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "sdk_ucm_e"

    invoke-static {v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/h;->a:Landroid/webkit/ValueCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uc/webview/export/utility/download/h;->a:Landroid/webkit/ValueCallback;

    iget-object v1, p0, Lcom/uc/webview/export/utility/download/h;->e:Lcom/uc/webview/export/utility/download/UpdateTask;

    invoke-interface {v0, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5

    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {p1}, Lcom/uc/webview/export/utility/download/DownloadTask;->stop()Lcom/uc/webview/export/utility/download/DownloadTask;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_1
    return-void

    :cond_2
    :try_start_3
    invoke-virtual {p1}, Lcom/uc/webview/export/utility/download/DownloadTask;->getTotalSize()J

    move-result-wide v0

    cmp-long v5, v0, v2

    if-nez v5, :cond_5

    move-wide v0, v2

    :goto_2
    const-wide/16 v6, 0x64

    cmp-long v5, v0, v6

    if-gtz v5, :cond_3

    cmp-long v2, v0, v2

    if-gez v2, :cond_6

    :cond_3
    const/4 v0, -0x1

    :goto_3
    const-string/jumbo v1, "sdk_ucm_p"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    :try_start_4
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "sdk_ucm_f"

    invoke-static {v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    :try_start_5
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/h;->b:Landroid/webkit/ValueCallback;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/uc/webview/export/utility/download/h;->b:Landroid/webkit/ValueCallback;

    iget-object v1, p0, Lcom/uc/webview/export/utility/download/h;->e:Lcom/uc/webview/export/utility/download/UpdateTask;

    invoke-interface {v0, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    :cond_4
    :goto_5
    :try_start_6
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/h;->c:Landroid/webkit/ValueCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/uc/webview/export/utility/download/h;->c:Landroid/webkit/ValueCallback;

    iget-object v1, p0, Lcom/uc/webview/export/utility/download/h;->e:Lcom/uc/webview/export/utility/download/UpdateTask;

    invoke-interface {v0, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_5
    :try_start_7
    invoke-virtual {p1}, Lcom/uc/webview/export/utility/download/DownloadTask;->getCurrentSize()J

    move-result-wide v6

    mul-long/2addr v6, v10

    div-long v0, v6, v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    mul-long/2addr v0, v10

    goto :goto_2

    :cond_6
    long-to-int v0, v0

    goto :goto_3

    :catch_1
    move-exception v0

    invoke-virtual {p1}, Lcom/uc/webview/export/utility/download/DownloadTask;->stop()Lcom/uc/webview/export/utility/download/DownloadTask;

    const-string/jumbo v1, "sdk_ucm_en"

    invoke-static {v1}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const-string/jumbo v2, "sdk_ucm_le"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/uc/webview/export/utility/download/h;->e:Lcom/uc/webview/export/utility/download/UpdateTask;

    invoke-static {v1}, Lcom/uc/webview/export/utility/download/UpdateTask;->b(Lcom/uc/webview/export/utility/download/UpdateTask;)[Ljava/lang/Object;

    move-result-object v1

    aput-object v0, v1, v8

    :try_start_8
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/h;->d:Landroid/webkit/ValueCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/uc/webview/export/utility/download/h;->d:Landroid/webkit/ValueCallback;

    iget-object v1, p0, Lcom/uc/webview/export/utility/download/h;->e:Lcom/uc/webview/export/utility/download/UpdateTask;

    invoke-interface {v0, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_1

    :catch_2
    move-exception v0

    goto/16 :goto_1

    :catch_3
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v0

    goto :goto_4

    :catch_5
    move-exception v0

    goto/16 :goto_0
.end method
