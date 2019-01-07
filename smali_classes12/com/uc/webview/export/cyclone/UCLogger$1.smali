.class Lcom/uc/webview/export/cyclone/UCLogger$1;
.super Landroid/os/AsyncTask;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uc/webview/export/cyclone/UCLogger;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/cyclone/UCLogger;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/uc/webview/export/cyclone/UCLogger$1;->this$0:Lcom/uc/webview/export/cyclone/UCLogger;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 120
    invoke-static {}, Lcom/uc/webview/export/cyclone/UCLogger;->access$000()Landroid/webkit/ValueCallback;

    move-result-object v2

    .line 122
    if-nez v2, :cond_1

    .line 123
    :try_start_0
    invoke-static {}, Lcom/uc/webview/export/cyclone/UCLogger;->access$100()Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    :cond_0
    invoke-static {v3}, Lcom/uc/webview/export/cyclone/UCLogger;->access$202(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 147
    :goto_0
    return-object v3

    .line 125
    :cond_1
    const/4 v1, 0x1

    .line 126
    :goto_1
    if-eqz v1, :cond_0

    .line 127
    :try_start_1
    invoke-static {}, Lcom/uc/webview/export/cyclone/UCLogger;->access$100()Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    :goto_2
    if-eqz v0, :cond_2

    .line 128
    invoke-interface {v2, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 127
    invoke-static {}, Lcom/uc/webview/export/cyclone/UCLogger;->access$100()Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 132
    :cond_2
    const-wide/16 v4, 0xc8

    :try_start_2
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 134
    :goto_3
    :try_start_3
    invoke-static {}, Lcom/uc/webview/export/cyclone/UCLogger;->access$100()Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 138
    if-nez v0, :cond_3

    .line 139
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/uc/webview/export/cyclone/UCLogger;->access$202(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 140
    const/4 v0, 0x0

    :goto_4
    move v1, v0

    .line 142
    goto :goto_1

    .line 145
    :catch_0
    move-exception v0

    invoke-static {v3}, Lcom/uc/webview/export/cyclone/UCLogger;->access$202(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v3}, Lcom/uc/webview/export/cyclone/UCLogger;->access$202(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    throw v0

    :catch_1
    move-exception v0

    goto :goto_3

    :cond_3
    move v0, v1

    goto :goto_4
.end method
