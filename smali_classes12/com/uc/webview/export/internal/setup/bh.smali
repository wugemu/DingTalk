.class public abstract Lcom/uc/webview/export/internal/setup/bh;
.super Lcom/uc/webview/export/internal/setup/s;
.source "ProGuard"


# instance fields
.field protected c:Lcom/uc/webview/export/internal/setup/p;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/uc/webview/export/internal/setup/s;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a()Lcom/uc/webview/export/internal/setup/p;
.end method

.method public run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 34
    new-instance v5, Lcom/uc/webview/export/internal/setup/bt;

    invoke-direct {v5}, Lcom/uc/webview/export/internal/setup/bt;-><init>()V

    .line 35
    monitor-enter v5

    .line 36
    :try_start_0
    new-instance v0, Lcom/uc/webview/export/internal/setup/cw;

    invoke-direct {v0}, Lcom/uc/webview/export/internal/setup/cw;-><init>()V

    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/bh;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/setup/cw;->setOptions(Ljava/util/concurrent/ConcurrentHashMap;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/cw;

    .line 37
    iput-object v5, v0, Lcom/uc/webview/export/internal/setup/cw;->b:Lcom/uc/webview/export/internal/setup/bt;

    iget-object v1, v0, Lcom/uc/webview/export/internal/setup/cw;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v4, "VERIFY_POLICY"

    invoke-virtual {v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, v0, Lcom/uc/webview/export/internal/setup/cw;->c:Ljava/lang/Integer;

    iget-object v1, v0, Lcom/uc/webview/export/internal/setup/cw;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/uc/webview/export/internal/setup/cw;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_2

    move v4, v2

    :goto_0
    iget-object v1, v0, Lcom/uc/webview/export/internal/setup/cw;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/high16 v6, -0x80000000

    and-int/2addr v1, v6

    if-eqz v1, :cond_3

    move v1, v2

    :goto_1
    if-eqz v4, :cond_0

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, v0, Lcom/uc/webview/export/internal/setup/cw;->b:Lcom/uc/webview/export/internal/setup/bt;

    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/uc/webview/export/internal/setup/bt;->a(ILjava/lang/Object;)V

    .line 38
    :cond_1
    invoke-virtual {p0}, Lcom/uc/webview/export/internal/setup/bh;->a()Lcom/uc/webview/export/internal/setup/p;

    move-result-object v1

    const/16 v2, 0x2711

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/uc/webview/export/internal/setup/p;->invoke(I[Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v1

    check-cast v1, Lcom/uc/webview/export/internal/setup/p;

    iget-object v2, p0, Lcom/uc/webview/export/internal/setup/bh;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v2}, Lcom/uc/webview/export/internal/setup/p;->setOptions(Ljava/util/concurrent/ConcurrentHashMap;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v1

    check-cast v1, Lcom/uc/webview/export/internal/setup/p;

    const-string/jumbo v2, "verify_task"

    invoke-virtual {v1, v2, v0}, Lcom/uc/webview/export/internal/setup/p;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/p;

    const-string/jumbo v1, "stat"

    new-instance v2, Lcom/uc/webview/export/internal/setup/UCSubSetupTask$a;

    invoke-direct {v2, p0}, Lcom/uc/webview/export/internal/setup/UCSubSetupTask$a;-><init>(Lcom/uc/webview/export/internal/setup/UCSubSetupTask;)V

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/p;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/p;

    const-string/jumbo v1, "exception"

    new-instance v2, Lcom/uc/webview/export/internal/setup/UCAsyncTask$b;

    invoke-direct {v2, p0}, Lcom/uc/webview/export/internal/setup/UCAsyncTask$b;-><init>(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)V

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/p;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/p;

    const-string/jumbo v1, "stop"

    new-instance v2, Lcom/uc/webview/export/internal/setup/UCAsyncTask$c;

    invoke-direct {v2, p0}, Lcom/uc/webview/export/internal/setup/UCAsyncTask$c;-><init>(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)V

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/p;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/p;

    const-string/jumbo v1, "success"

    new-instance v2, Lcom/uc/webview/export/internal/setup/bi;

    invoke-direct {v2, p0, v5}, Lcom/uc/webview/export/internal/setup/bi;-><init>(Lcom/uc/webview/export/internal/setup/bh;Lcom/uc/webview/export/internal/setup/bt;)V

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/p;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/p;

    invoke-virtual {v0}, Lcom/uc/webview/export/internal/setup/p;->start()Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/p;

    iput-object v0, p0, Lcom/uc/webview/export/internal/setup/bh;->c:Lcom/uc/webview/export/internal/setup/p;

    .line 39
    monitor-exit v5

    return-void

    :cond_2
    move v4, v3

    .line 37
    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_1

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
