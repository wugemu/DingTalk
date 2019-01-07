.class final Lcom/uc/webview/export/utility/download/k;
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

.field final synthetic b:Lcom/uc/webview/export/utility/download/UpdateTask;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/utility/download/UpdateTask;Landroid/webkit/ValueCallback;)V
    .locals 0

    .prologue
    .line 326
    iput-object p1, p0, Lcom/uc/webview/export/utility/download/k;->b:Lcom/uc/webview/export/utility/download/UpdateTask;

    iput-object p2, p0, Lcom/uc/webview/export/utility/download/k;->a:Landroid/webkit/ValueCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, -0x1

    const-wide/16 v12, 0x64

    const-wide/16 v10, 0xa

    const-wide/16 v4, 0x0

    .line 326
    check-cast p1, Lcom/uc/webview/export/utility/download/DownloadTask;

    :try_start_0
    invoke-virtual {p1}, Lcom/uc/webview/export/utility/download/DownloadTask;->getTotalSize()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-nez v1, :cond_6

    move-wide v2, v4

    :goto_0
    cmp-long v1, v2, v12

    if-gtz v1, :cond_0

    cmp-long v1, v2, v4

    if-gez v1, :cond_7

    :cond_0
    move v1, v0

    :goto_1
    iget-object v2, p0, Lcom/uc/webview/export/utility/download/k;->b:Lcom/uc/webview/export/utility/download/UpdateTask;

    invoke-static {v2}, Lcom/uc/webview/export/utility/download/UpdateTask;->e(Lcom/uc/webview/export/utility/download/UpdateTask;)I

    move-result v2

    if-gt v1, v2, :cond_1

    const/16 v2, 0x64

    if-ne v1, v2, :cond_3

    :cond_1
    iget-object v2, p0, Lcom/uc/webview/export/utility/download/k;->b:Lcom/uc/webview/export/utility/download/UpdateTask;

    iget-object v3, p0, Lcom/uc/webview/export/utility/download/k;->b:Lcom/uc/webview/export/utility/download/UpdateTask;

    invoke-static {v3}, Lcom/uc/webview/export/utility/download/UpdateTask;->e(Lcom/uc/webview/export/utility/download/UpdateTask;)I

    move-result v3

    add-int/lit8 v3, v3, 0xa

    invoke-static {v2, v3}, Lcom/uc/webview/export/utility/download/UpdateTask;->a(Lcom/uc/webview/export/utility/download/UpdateTask;I)I

    const-string/jumbo v2, "sdk_ucm_p"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Lcom/uc/webview/export/utility/download/DownloadTask;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v6

    const-wide/32 v8, 0x100000

    div-long v8, v6, v8

    const-string/jumbo v1, "sdk_ucm_dm"

    long-to-int v8, v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long v1, v2, v4

    if-nez v1, :cond_8

    move-wide v2, v4

    :goto_2
    cmp-long v1, v2, v12

    if-gtz v1, :cond_2

    cmp-long v1, v2, v4

    if-gez v1, :cond_9

    :cond_2
    move v1, v0

    :goto_3
    const-string/jumbo v2, "sdk_ucm_dp"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_3
    :goto_4
    :try_start_1
    invoke-virtual {p1}, Lcom/uc/webview/export/utility/download/DownloadTask;->getTotalSize()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-nez v1, :cond_a

    move-wide v2, v4

    :goto_5
    cmp-long v1, v2, v12

    if-gtz v1, :cond_4

    cmp-long v1, v2, v4

    if-gez v1, :cond_b

    :cond_4
    :goto_6
    iget-object v1, p0, Lcom/uc/webview/export/utility/download/k;->a:Landroid/webkit/ValueCallback;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/uc/webview/export/utility/download/k;->b:Lcom/uc/webview/export/utility/download/UpdateTask;

    invoke-static {v1}, Lcom/uc/webview/export/utility/download/UpdateTask;->f(Lcom/uc/webview/export/utility/download/UpdateTask;)I

    move-result v1

    if-le v0, v1, :cond_5

    iget-object v1, p0, Lcom/uc/webview/export/utility/download/k;->b:Lcom/uc/webview/export/utility/download/UpdateTask;

    invoke-static {v1, v0}, Lcom/uc/webview/export/utility/download/UpdateTask;->b(Lcom/uc/webview/export/utility/download/UpdateTask;I)I

    iget-object v0, p0, Lcom/uc/webview/export/utility/download/k;->a:Landroid/webkit/ValueCallback;

    iget-object v1, p0, Lcom/uc/webview/export/utility/download/k;->b:Lcom/uc/webview/export/utility/download/UpdateTask;

    invoke-interface {v0, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_5
    :goto_7
    return-void

    :cond_6
    :try_start_2
    invoke-virtual {p1}, Lcom/uc/webview/export/utility/download/DownloadTask;->getCurrentSize()J

    move-result-wide v6

    mul-long/2addr v6, v10

    div-long v2, v6, v2

    mul-long/2addr v2, v10

    goto/16 :goto_0

    :cond_7
    long-to-int v1, v2

    goto/16 :goto_1

    :cond_8
    mul-long/2addr v6, v10

    div-long v2, v6, v2
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    mul-long/2addr v2, v10

    goto :goto_2

    :cond_9
    long-to-int v1, v2

    goto :goto_3

    :cond_a
    :try_start_3
    invoke-virtual {p1}, Lcom/uc/webview/export/utility/download/DownloadTask;->getCurrentSize()J

    move-result-wide v6

    mul-long/2addr v6, v12

    div-long v2, v6, v2
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_5

    :cond_b
    long-to-int v0, v2

    goto :goto_6

    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v1

    goto :goto_4
.end method
