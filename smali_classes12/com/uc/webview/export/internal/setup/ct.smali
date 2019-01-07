.class final Lcom/uc/webview/export/internal/setup/ct;
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
.field final a:Landroid/webkit/ValueCallback;

.field final synthetic b:Lcom/uc/webview/export/internal/setup/cj;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/internal/setup/cj;)V
    .locals 5

    .prologue
    .line 255
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/ct;->b:Lcom/uc/webview/export/internal/setup/cj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/ct;->b:Lcom/uc/webview/export/internal/setup/cj;

    const/16 v1, 0x2717

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "downloadException"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/cj;->invokeO(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/ValueCallback;

    iput-object v0, p0, Lcom/uc/webview/export/internal/setup/ct;->a:Landroid/webkit/ValueCallback;

    return-void
.end method


# virtual methods
.method public final synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 255
    check-cast p1, Lcom/uc/webview/export/utility/download/UpdateTask;

    const-string/jumbo v0, "UpdateSetupTask"

    const-string/jumbo v1, "EVENT_DOWNLOAD_EXCEPTION"

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/ct;->b:Lcom/uc/webview/export/internal/setup/cj;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/ct;->b:Lcom/uc/webview/export/internal/setup/cj;

    invoke-static {v0}, Lcom/uc/webview/export/internal/setup/cj;->b(Lcom/uc/webview/export/internal/setup/cj;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/ct;->b:Lcom/uc/webview/export/internal/setup/cj;

    invoke-virtual {v0}, Lcom/uc/webview/export/internal/setup/cj;->getExtraException()Lcom/uc/webview/export/internal/setup/UCSetupException;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/uc/webview/export/utility/download/UpdateTask;->getException()Ljava/lang/Throwable;

    move-result-object v0

    const-string/jumbo v5, ""

    const-string/jumbo v1, ""

    const-string/jumbo v3, ""

    const-string/jumbo v2, ""

    instance-of v4, v0, Lcom/uc/webview/export/cyclone/UCKnownException;

    if-eqz v4, :cond_3

    check-cast v0, Lcom/uc/webview/export/cyclone/UCKnownException;

    move-object v4, v0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Lcom/uc/webview/export/cyclone/UCKnownException;->errCode()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    :try_start_2
    invoke-virtual {v4}, Lcom/uc/webview/export/cyclone/UCKnownException;->getRootCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v0

    move-object v3, v0

    :goto_1
    :try_start_3
    const-string/jumbo v0, "httpcode:"

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x9

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v0

    move-object v2, v0

    :goto_2
    :try_start_4
    invoke-virtual {v4}, Lcom/uc/webview/export/cyclone/UCKnownException;->getRootCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v0

    :goto_3
    :try_start_5
    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/ct;->b:Lcom/uc/webview/export/internal/setup/cj;

    new-instance v4, Landroid/util/Pair;

    const-string/jumbo v6, "sdk_upd"

    new-instance v7, Lcom/uc/webview/export/cyclone/UCHashMap;

    invoke-direct {v7}, Lcom/uc/webview/export/cyclone/UCHashMap;-><init>()V

    const-string/jumbo v8, "cnt"

    const-string/jumbo v9, "1"

    invoke-virtual {v7, v8, v9}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v7

    const-string/jumbo v8, "code"

    invoke-virtual {v7, v8, v2}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v2

    const-string/jumbo v7, "err"

    invoke-virtual {v2, v7, v5}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v2

    const-string/jumbo v5, "cls"

    invoke-virtual {v2, v5, v0}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v0

    const-string/jumbo v2, "msg"

    invoke-virtual {v0, v2, v3}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v0

    invoke-direct {v4, v6, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v4}, Lcom/uc/webview/export/internal/setup/cj;->callbackStat(Landroid/util/Pair;)V

    :cond_0
    invoke-virtual {p1}, Lcom/uc/webview/export/utility/download/UpdateTask;->getException()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/uc/webview/export/utility/download/UpdateTask;->getException()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lcom/uc/webview/export/internal/setup/UCSetupException;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/ct;->b:Lcom/uc/webview/export/internal/setup/cj;

    invoke-virtual {p1}, Lcom/uc/webview/export/utility/download/UpdateTask;->getException()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/UCSetupException;

    invoke-virtual {v1, v0}, Lcom/uc/webview/export/internal/setup/cj;->setExtraException(Lcom/uc/webview/export/internal/setup/UCSetupException;)V

    :cond_1
    :goto_4
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/ct;->a:Landroid/webkit/ValueCallback;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/ct;->a:Landroid/webkit/ValueCallback;

    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/ct;->b:Lcom/uc/webview/export/internal/setup/cj;

    invoke-interface {v0, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    :cond_2
    :goto_5
    return-void

    :catchall_0
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0

    :cond_3
    :try_start_7
    new-instance v4, Lcom/uc/webview/export/cyclone/UCKnownException;

    invoke-direct {v4, v0}, Lcom/uc/webview/export/cyclone/UCKnownException;-><init>(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/ct;->b:Lcom/uc/webview/export/internal/setup/cj;

    new-instance v1, Lcom/uc/webview/export/internal/setup/UCSetupException;

    invoke-virtual {p1}, Lcom/uc/webview/export/utility/download/UpdateTask;->getException()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/setup/cj;->setExtraException(Lcom/uc/webview/export/internal/setup/UCSetupException;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_4

    :catch_2
    move-exception v0

    goto/16 :goto_2

    :catch_3
    move-exception v0

    goto/16 :goto_1
.end method
