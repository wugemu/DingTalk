.class public final Lcom/uc/webview/export/internal/setup/u;
.super Lcom/uc/webview/export/internal/setup/UCSubSetupTask;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RETURN_TYPE:",
        "Lcom/uc/webview/export/internal/setup/u",
        "<TRETURN_TYPE;TCA",
        "LLBACK_TYPE;",
        ">;CA",
        "LLBACK_TYPE:Lcom/uc/webview/export/internal/setup/u",
        "<TRETURN_TYPE;TCA",
        "LLBACK_TYPE;",
        ">;>",
        "Lcom/uc/webview/export/internal/setup/UCSubSetupTask",
        "<TRETURN_TYPE;TCA",
        "LLBACK_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static a:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

.field private static b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/uc/webview/export/internal/setup/UCSubSetupTask;-><init>()V

    return-void
.end method

.method private static declared-synchronized a()Lcom/uc/webview/export/internal/setup/UCAsyncTask;
    .locals 4

    .prologue
    .line 29
    const-class v1, Lcom/uc/webview/export/internal/setup/u;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/uc/webview/export/internal/setup/u;->a:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/uc/webview/export/internal/setup/x;

    sget v2, Lcom/uc/webview/export/internal/setup/u;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/uc/webview/export/internal/setup/x;-><init>(Ljava/lang/Integer;)V

    const-string/jumbo v2, "start"

    new-instance v3, Lcom/uc/webview/export/internal/setup/w;

    invoke-direct {v3}, Lcom/uc/webview/export/internal/setup/w;-><init>()V

    .line 34
    invoke-virtual {v0, v2, v3}, Lcom/uc/webview/export/internal/setup/x;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    const-string/jumbo v2, "die"

    new-instance v3, Lcom/uc/webview/export/internal/setup/v;

    invoke-direct {v3}, Lcom/uc/webview/export/internal/setup/v;-><init>()V

    .line 38
    invoke-virtual {v0, v2, v3}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    sput-object v0, Lcom/uc/webview/export/internal/setup/u;->a:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    .line 45
    :cond_0
    sget-object v0, Lcom/uc/webview/export/internal/setup/u;->a:Lcom/uc/webview/export/internal/setup/UCAsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized b()Lcom/uc/webview/export/internal/setup/u;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TRETURN_TYPE;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 48
    monitor-enter p0

    const/16 v0, 0x2715

    const/4 v1, 0x0

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/uc/webview/export/internal/setup/u;->invokeO(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 49
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/u;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v1, "setup_priority"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 50
    const-string/jumbo v1, "d"

    const-string/jumbo v2, "LoadClassTask"

    invoke-static {v1, v2}, Lcom/uc/webview/export/cyclone/UCLogger;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/cyclone/UCLogger;

    move-result-object v1

    .line 51
    if-eqz v1, :cond_0

    .line 52
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "start: setup_priority="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Throwable;

    invoke-virtual {v1, v2, v3}, Lcom/uc/webview/export/cyclone/UCLogger;->print(Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 53
    :cond_0
    if-eqz v0, :cond_1

    .line 54
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/uc/webview/export/internal/setup/u;->b:I

    .line 57
    :cond_1
    invoke-static {}, Lcom/uc/webview/export/internal/setup/u;->a()Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v1

    .line 58
    const/16 v0, 0x2711

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {p0, v0, v2}, Lcom/uc/webview/export/internal/setup/u;->invoke(I[Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    .line 59
    invoke-super {p0}, Lcom/uc/webview/export/internal/setup/UCSubSetupTask;->start()Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/u;

    .line 60
    invoke-virtual {v1}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->start()Lcom/uc/webview/export/internal/setup/UCAsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_2
    :try_start_1
    invoke-super {p0}, Lcom/uc/webview/export/internal/setup/UCSubSetupTask;->start()Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/u;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/u;->mCL:Ljava/lang/ClassLoader;

    invoke-static {v0}, Lcom/uc/webview/export/internal/uc/CoreClassPreLoader;->updateLazy(Ljava/lang/ClassLoader;)V

    .line 76
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/u;->mUCM:Lcom/uc/webview/export/internal/setup/UCMPackageInfo;

    iget-object v0, v0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->mCoreClassLoader:Ljava/lang/ClassLoader;

    invoke-static {v0}, Lcom/uc/webview/export/internal/uc/CoreClassPreLoader;->loadCoreClass(Ljava/lang/ClassLoader;)Z

    .line 80
    return-void
.end method

.method public final synthetic start()Lcom/uc/webview/export/internal/setup/UCAsyncTask;
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/uc/webview/export/internal/setup/u;->b()Lcom/uc/webview/export/internal/setup/u;

    move-result-object v0

    return-object v0
.end method
