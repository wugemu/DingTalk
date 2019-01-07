.class final Lcom/uc/webview/export/utility/download/i;
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

.field final synthetic c:Lcom/uc/webview/export/utility/download/UpdateTask;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/utility/download/UpdateTask;Landroid/webkit/ValueCallback;Landroid/webkit/ValueCallback;)V
    .locals 0

    .prologue
    .line 362
    iput-object p1, p0, Lcom/uc/webview/export/utility/download/i;->c:Lcom/uc/webview/export/utility/download/UpdateTask;

    iput-object p2, p0, Lcom/uc/webview/export/utility/download/i;->a:Landroid/webkit/ValueCallback;

    iput-object p3, p0, Lcom/uc/webview/export/utility/download/i;->b:Landroid/webkit/ValueCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x4

    const/4 v6, 0x1

    .line 362
    check-cast p1, Lcom/uc/webview/export/utility/download/DownloadTask;

    invoke-virtual {p1}, Lcom/uc/webview/export/utility/download/DownloadTask;->getException()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string/jumbo v1, "sdk_ucm_le"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/uc/webview/export/utility/download/i;->c:Lcom/uc/webview/export/utility/download/UpdateTask;

    invoke-static {v1}, Lcom/uc/webview/export/utility/download/UpdateTask;->a(Lcom/uc/webview/export/utility/download/UpdateTask;)Landroid/webkit/ValueCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/uc/webview/export/utility/download/i;->c:Lcom/uc/webview/export/utility/download/UpdateTask;

    invoke-static {v1}, Lcom/uc/webview/export/utility/download/UpdateTask;->a(Lcom/uc/webview/export/utility/download/UpdateTask;)Landroid/webkit/ValueCallback;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-interface {v1, v2}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/i;->c:Lcom/uc/webview/export/utility/download/UpdateTask;

    invoke-static {v0}, Lcom/uc/webview/export/utility/download/UpdateTask;->c(Lcom/uc/webview/export/utility/download/UpdateTask;)[J

    move-result-object v0

    aget-wide v2, v0, v8

    iget-object v1, p0, Lcom/uc/webview/export/utility/download/i;->c:Lcom/uc/webview/export/utility/download/UpdateTask;

    invoke-static {v1}, Lcom/uc/webview/export/utility/download/UpdateTask;->c(Lcom/uc/webview/export/utility/download/UpdateTask;)[J

    move-result-object v1

    aget-wide v4, v1, v7

    add-long/2addr v2, v4

    aput-wide v2, v0, v8

    iget-object v0, p0, Lcom/uc/webview/export/utility/download/i;->c:Lcom/uc/webview/export/utility/download/UpdateTask;

    invoke-static {v0}, Lcom/uc/webview/export/utility/download/UpdateTask;->c(Lcom/uc/webview/export/utility/download/UpdateTask;)[J

    move-result-object v0

    aget-wide v0, v0, v8

    iget-object v2, p0, Lcom/uc/webview/export/utility/download/i;->c:Lcom/uc/webview/export/utility/download/UpdateTask;

    invoke-static {v2}, Lcom/uc/webview/export/utility/download/UpdateTask;->c(Lcom/uc/webview/export/utility/download/UpdateTask;)[J

    move-result-object v2

    const/4 v3, 0x5

    aget-wide v2, v2, v3

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    iget-object v0, p0, Lcom/uc/webview/export/utility/download/i;->c:Lcom/uc/webview/export/utility/download/UpdateTask;

    invoke-static {v0}, Lcom/uc/webview/export/utility/download/UpdateTask;->b(Lcom/uc/webview/export/utility/download/UpdateTask;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lcom/uc/webview/export/utility/download/DownloadTask;->getException()Ljava/lang/Throwable;

    move-result-object v1

    aput-object v1, v0, v6

    :try_start_1
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/i;->a:Landroid/webkit/ValueCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/uc/webview/export/utility/download/i;->a:Landroid/webkit/ValueCallback;

    iget-object v1, p0, Lcom/uc/webview/export/utility/download/i;->c:Lcom/uc/webview/export/utility/download/UpdateTask;

    invoke-interface {v0, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    :cond_1
    :goto_1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/uc/webview/export/utility/download/j;

    invoke-direct {v1, p0, p1}, Lcom/uc/webview/export/utility/download/j;-><init>(Lcom/uc/webview/export/utility/download/i;Lcom/uc/webview/export/utility/download/DownloadTask;)V

    iget-object v2, p0, Lcom/uc/webview/export/utility/download/i;->c:Lcom/uc/webview/export/utility/download/UpdateTask;

    invoke-static {v2}, Lcom/uc/webview/export/utility/download/UpdateTask;->c(Lcom/uc/webview/export/utility/download/UpdateTask;)[J

    move-result-object v2

    aget-wide v2, v2, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_2
    return-void

    :cond_3
    const-string/jumbo v0, "sdk_ucm_e1"

    invoke-static {v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/uc/webview/export/utility/download/DownloadTask;->getException()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/uc/webview/export/utility/download/DownloadTask;->getException()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_3
    iget-object v1, p0, Lcom/uc/webview/export/utility/download/i;->c:Lcom/uc/webview/export/utility/download/UpdateTask;

    invoke-static {v1}, Lcom/uc/webview/export/utility/download/UpdateTask;->b(Lcom/uc/webview/export/utility/download/UpdateTask;)[Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Download aborted because of up to 10080 retries. Last exception is: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v6

    :try_start_2
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/i;->b:Landroid/webkit/ValueCallback;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/uc/webview/export/utility/download/i;->b:Landroid/webkit/ValueCallback;

    iget-object v1, p0, Lcom/uc/webview/export/utility/download/i;->c:Lcom/uc/webview/export/utility/download/UpdateTask;

    invoke-interface {v0, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :cond_4
    :goto_4
    :try_start_3
    iget-object v0, p0, Lcom/uc/webview/export/utility/download/i;->c:Lcom/uc/webview/export/utility/download/UpdateTask;

    invoke-static {v0}, Lcom/uc/webview/export/utility/download/UpdateTask;->a(Lcom/uc/webview/export/utility/download/UpdateTask;)Landroid/webkit/ValueCallback;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/uc/webview/export/utility/download/i;->c:Lcom/uc/webview/export/utility/download/UpdateTask;

    invoke-static {v0}, Lcom/uc/webview/export/utility/download/UpdateTask;->a(Lcom/uc/webview/export/utility/download/UpdateTask;)Landroid/webkit/ValueCallback;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_5
    const-string/jumbo v0, ""

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    goto/16 :goto_1

    :catch_3
    move-exception v0

    goto/16 :goto_0
.end method
