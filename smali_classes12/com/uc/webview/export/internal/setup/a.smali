.class final Lcom/uc/webview/export/internal/setup/a;
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
        "Lcom/uc/webview/export/internal/setup/s;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/uc/webview/export/internal/setup/BrowserSetupTask;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/internal/setup/BrowserSetupTask;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/a;->a:Lcom/uc/webview/export/internal/setup/BrowserSetupTask;

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
    .line 88
    check-cast p1, Lcom/uc/webview/export/internal/setup/s;

    invoke-virtual {p1}, Lcom/uc/webview/export/internal/setup/s;->getLoadedUCM()Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    move-result-object v0

    if-eqz v0, :cond_11

    :try_start_0
    invoke-virtual {p1}, Lcom/uc/webview/export/internal/setup/s;->getLoadedUCM()Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    move-result-object v3

    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/a;->a:Lcom/uc/webview/export/internal/setup/BrowserSetupTask;

    invoke-virtual {v0, v3}, Lcom/uc/webview/export/internal/setup/BrowserSetupTask;->setLoadedUCM(Lcom/uc/webview/export/internal/setup/UCMRunningInfo;)V

    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/a;->a:Lcom/uc/webview/export/internal/setup/BrowserSetupTask;

    invoke-virtual {v0, v3}, Lcom/uc/webview/export/internal/setup/BrowserSetupTask;->setTotalLoadedUCM(Lcom/uc/webview/export/internal/setup/UCMRunningInfo;)V

    iget v0, v3, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->loadType:I

    sput v0, Lcom/uc/webview/export/internal/SDKFactory;->o:I

    const-string/jumbo v0, "d"

    const-string/jumbo v1, "BrowserSetupTask"

    invoke-static {v0, v1}, Lcom/uc/webview/export/cyclone/UCLogger;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/cyclone/UCLogger;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    :try_start_1
    new-instance v0, Lcom/uc/webview/export/internal/setup/o;

    invoke-direct {v0}, Lcom/uc/webview/export/internal/setup/o;-><init>()V

    const/16 v1, 0x2711

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {}, Lcom/uc/webview/export/utility/SetupTask;->getRoot()Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v6

    aput-object v6, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/o;->invoke(I[Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/o;

    const-string/jumbo v1, "CONTEXT"

    iget-object v2, p0, Lcom/uc/webview/export/internal/setup/a;->a:Lcom/uc/webview/export/internal/setup/BrowserSetupTask;

    invoke-static {v2}, Lcom/uc/webview/export/internal/setup/BrowserSetupTask;->b(Lcom/uc/webview/export/internal/setup/BrowserSetupTask;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/o;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/o;

    const-string/jumbo v2, "del_dec_fil"

    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/a;->a:Lcom/uc/webview/export/internal/setup/BrowserSetupTask;

    invoke-static {v1}, Lcom/uc/webview/export/internal/setup/BrowserSetupTask;->a(Lcom/uc/webview/export/internal/setup/BrowserSetupTask;)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_7

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/uc/webview/export/internal/setup/o;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/o;

    const-string/jumbo v1, "del_upd_fil"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/o;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/o;

    invoke-virtual {v0}, Lcom/uc/webview/export/internal/setup/o;->start()Lcom/uc/webview/export/internal/setup/UCAsyncTask;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_a

    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/a;->a:Lcom/uc/webview/export/internal/setup/BrowserSetupTask;

    invoke-static {}, Lcom/uc/webview/export/internal/setup/UCSetupTask;->getTotalLoadedUCM()Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    move-result-object v1

    iget v1, v1, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->coreType:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/setup/BrowserSetupTask;->a(Lcom/uc/webview/export/internal/setup/BrowserSetupTask;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_9

    :goto_2
    :try_start_3
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/a;->a:Lcom/uc/webview/export/internal/setup/BrowserSetupTask;

    const-string/jumbo v1, "setup_priority"

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/setup/BrowserSetupTask;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_8

    :try_start_4
    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/a;->a:Lcom/uc/webview/export/internal/setup/BrowserSetupTask;

    const-string/jumbo v2, "dlChecker"

    invoke-virtual {v1, v2}, Lcom/uc/webview/export/internal/setup/BrowserSetupTask;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Callable;

    if-nez v1, :cond_8

    const-string/jumbo v1, "N"
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :goto_3
    move-object v2, v1

    :goto_4
    :try_start_5
    iget-object v5, p0, Lcom/uc/webview/export/internal/setup/a;->a:Lcom/uc/webview/export/internal/setup/BrowserSetupTask;

    new-instance v6, Landroid/util/Pair;

    const-string/jumbo v7, "sdk_stp_suc"

    new-instance v1, Lcom/uc/webview/export/cyclone/UCHashMap;

    invoke-direct {v1}, Lcom/uc/webview/export/cyclone/UCHashMap;-><init>()V

    const-string/jumbo v8, "cnt"

    const-string/jumbo v9, "1"

    invoke-virtual {v1, v8, v9}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v1

    const-string/jumbo v8, "code"

    invoke-static {}, Lcom/uc/webview/export/internal/setup/UCSetupTask;->getTotalLoadedUCM()Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    move-result-object v9

    iget v9, v9, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->coreType:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v8

    const-string/jumbo v9, "dir"

    invoke-static {}, Lcom/uc/webview/export/internal/setup/UCSetupTask;->getTotalLoadedUCM()Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->ucmPackageInfo:Lcom/uc/webview/export/internal/setup/UCMPackageInfo;

    if-nez v1, :cond_a

    const-string/jumbo v1, "null"

    :goto_5
    invoke-virtual {v8, v9, v1}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v8

    const-string/jumbo v9, "old"

    invoke-static {}, Lcom/uc/webview/export/internal/setup/UCSetupTask;->getTotalLoadedUCM()Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    move-result-object v1

    iget-boolean v1, v1, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->isOldExtraKernel:Z

    if-eqz v1, :cond_b

    const-string/jumbo v1, "T"

    :goto_6
    invoke-virtual {v8, v9, v1}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v8

    const-string/jumbo v9, "frun"

    invoke-static {}, Lcom/uc/webview/export/internal/setup/UCSetupTask;->getTotalLoadedUCM()Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    move-result-object v1

    iget-boolean v1, v1, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->isFirstTimeOdex:Z

    if-eqz v1, :cond_c

    const-string/jumbo v1, "T"

    :goto_7
    invoke-virtual {v8, v9, v1}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v1

    const-string/jumbo v8, "cpu_cnt"

    invoke-static {}, Lcom/uc/webview/export/internal/utility/j;->a()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v1

    const-string/jumbo v8, "cpu_freq"

    invoke-static {}, Lcom/uc/webview/export/internal/utility/j;->b()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v1

    const-string/jumbo v8, "cost_cpu"

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v10

    iget-object v9, p0, Lcom/uc/webview/export/internal/setup/a;->a:Lcom/uc/webview/export/internal/setup/BrowserSetupTask;

    invoke-static {v9}, Lcom/uc/webview/export/internal/setup/BrowserSetupTask;->d(Lcom/uc/webview/export/internal/setup/BrowserSetupTask;)J

    move-result-wide v12

    sub-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v1

    const-string/jumbo v8, "cost"

    iget-object v9, p0, Lcom/uc/webview/export/internal/setup/a;->a:Lcom/uc/webview/export/internal/setup/BrowserSetupTask;

    invoke-static {v9}, Lcom/uc/webview/export/internal/setup/BrowserSetupTask;->c(Lcom/uc/webview/export/internal/setup/BrowserSetupTask;)Lcom/uc/webview/export/cyclone/UCElapseTime;

    move-result-object v9

    invoke-virtual {v9}, Lcom/uc/webview/export/cyclone/UCElapseTime;->getMilis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v1

    const-string/jumbo v8, "pri"

    if-nez v0, :cond_d

    const-string/jumbo v0, "n"

    :goto_8
    invoke-virtual {v1, v8, v0}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v0

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v0

    invoke-direct {v6, v7, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Lcom/uc/webview/export/internal/setup/BrowserSetupTask;->callbackStat(Landroid/util/Pair;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_8

    :goto_9
    const/16 v0, 0x2739

    const/4 v1, 0x1

    :try_start_6
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, v3, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->shellClassLoader:Ljava/lang/ClassLoader;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_7

    :goto_a
    :try_start_7
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/a;->a:Lcom/uc/webview/export/internal/setup/BrowserSetupTask;

    const-string/jumbo v1, "load_share_core_host"

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/setup/BrowserSetupTask;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/g;->a(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_6

    :goto_b
    :try_start_8
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/a;->a:Lcom/uc/webview/export/internal/setup/BrowserSetupTask;

    const-string/jumbo v1, "vmsize_saving"

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/setup/BrowserSetupTask;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    cmpl-double v1, v2, v6

    if-gtz v1, :cond_1

    :cond_0
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_1
    const/4 v0, 0x1

    move v1, v0

    :goto_c
    const-string/jumbo v0, "com.uc.crashsdk.export.CrashApi"

    const-string/jumbo v2, "getInstance"

    invoke-static {v0, v2}, Lcom/uc/webview/export/internal/utility/ReflectionUtil;->invokeNoThrow(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string/jumbo v3, "addHeaderInfo"

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/Class;

    const/4 v0, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v0

    const/4 v0, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v0

    const/4 v0, 0x2

    new-array v6, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string/jumbo v7, "vmsize_saving_enable"

    aput-object v7, v6, v0

    const/4 v7, 0x1

    if-eqz v1, :cond_f

    const-string/jumbo v0, "true"

    :goto_d
    aput-object v0, v6, v7

    invoke-static {v2, v3, v5, v6}, Lcom/uc/webview/export/internal/utility/ReflectionUtil;->invokeNoThrow(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz v4, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "mSuccessCB: vmsize_saving_enable="

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_10

    const-string/jumbo v0, "true"

    :goto_e
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Throwable;

    invoke-virtual {v4, v0, v2}, Lcom/uc/webview/export/cyclone/UCLogger;->print(Ljava/lang/String;[Ljava/lang/Throwable;)V

    :cond_3
    if-eqz v1, :cond_4

    new-instance v0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    new-instance v1, Lcom/uc/webview/export/cyclone/UCVmsize;

    iget-object v2, p0, Lcom/uc/webview/export/internal/setup/a;->a:Lcom/uc/webview/export/internal/setup/BrowserSetupTask;

    invoke-static {v2}, Lcom/uc/webview/export/internal/setup/BrowserSetupTask;->b(Lcom/uc/webview/export/internal/setup/BrowserSetupTask;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/uc/webview/export/cyclone/UCVmsize;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;-><init>(Ljava/lang/Runnable;)V

    const/16 v1, 0x2711

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lcom/uc/webview/export/utility/SetupTask;->getRoot()Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->invoke(I[Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->start()Lcom/uc/webview/export/internal/setup/UCAsyncTask;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_5

    :cond_4
    :goto_f
    :try_start_9
    new-instance v0, Lcom/uc/webview/export/internal/setup/az;

    invoke-direct {v0}, Lcom/uc/webview/export/internal/setup/az;-><init>()V

    const/16 v1, 0x2711

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lcom/uc/webview/export/utility/SetupTask;->getRoot()Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/az;->invoke(I[Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/az;

    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/a;->a:Lcom/uc/webview/export/internal/setup/BrowserSetupTask;

    iget-object v1, v1, Lcom/uc/webview/export/internal/setup/BrowserSetupTask;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/setup/az;->setOptions(Ljava/util/concurrent/ConcurrentHashMap;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/az;

    const-string/jumbo v1, "stat"

    new-instance v2, Lcom/uc/webview/export/internal/setup/UCSubSetupTask$a;

    iget-object v3, p0, Lcom/uc/webview/export/internal/setup/a;->a:Lcom/uc/webview/export/internal/setup/BrowserSetupTask;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v3}, Lcom/uc/webview/export/internal/setup/UCSubSetupTask$a;-><init>(Lcom/uc/webview/export/internal/setup/UCSubSetupTask;)V

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/az;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/az;

    invoke-virtual {v0}, Lcom/uc/webview/export/internal/setup/az;->start()Lcom/uc/webview/export/internal/setup/UCAsyncTask;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4

    :goto_10
    :try_start_a
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/a;->a:Lcom/uc/webview/export/internal/setup/BrowserSetupTask;

    invoke-static {v0}, Lcom/uc/webview/export/internal/setup/BrowserSetupTask;->e(Lcom/uc/webview/export/internal/setup/BrowserSetupTask;)Lcom/uc/webview/export/internal/setup/s;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/a;->a:Lcom/uc/webview/export/internal/setup/BrowserSetupTask;

    invoke-static {v0}, Lcom/uc/webview/export/internal/setup/BrowserSetupTask;->e(Lcom/uc/webview/export/internal/setup/BrowserSetupTask;)Lcom/uc/webview/export/internal/setup/s;

    move-result-object v0

    const/16 v1, 0x2711

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lcom/uc/webview/export/internal/setup/UCSetupTask;->getRoot()Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/s;->invoke(I[Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/s;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v2, v3}, Lcom/uc/webview/export/internal/setup/s;->start(J)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/a;->a:Lcom/uc/webview/export/internal/setup/BrowserSetupTask;

    invoke-static {v0}, Lcom/uc/webview/export/internal/setup/BrowserSetupTask;->f(Lcom/uc/webview/export/internal/setup/BrowserSetupTask;)Lcom/uc/webview/export/internal/setup/s;

    new-instance v0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    new-instance v1, Lcom/uc/webview/export/cyclone/UCDex;

    invoke-direct {v1}, Lcom/uc/webview/export/cyclone/UCDex;-><init>()V

    invoke-direct {v0, v1}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;-><init>(Ljava/lang/Runnable;)V

    const/16 v1, 0x2711

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lcom/uc/webview/export/utility/SetupTask;->getRoot()Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->invoke(I[Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->start()Lcom/uc/webview/export/internal/setup/UCAsyncTask;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_3

    :cond_5
    :goto_11
    const/16 v0, 0x2750

    const/4 v1, 0x0

    :try_start_b
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_1

    move-result v0

    if-eqz v0, :cond_6

    :try_start_c
    const-string/jumbo v0, "BrowserSetupTask"

    const-string/jumbo v1, "CDInitTask new"

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "com.uc.webview.export.cd.Utils"

    const-string/jumbo v1, "createInitTaskForBrowserSetupTask"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Lcom/uc/webview/export/internal/setup/BrowserSetupTask;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "stat"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/uc/webview/export/internal/setup/a;->a:Lcom/uc/webview/export/internal/setup/BrowserSetupTask;

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/uc/webview/export/internal/utility/ReflectionUtil;->invoke(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/a;->a:Lcom/uc/webview/export/internal/setup/BrowserSetupTask;

    iget-object v1, v1, Lcom/uc/webview/export/internal/setup/BrowserSetupTask;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/setup/UCSubSetupTask;->setOptions(Ljava/util/concurrent/ConcurrentHashMap;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uc/webview/export/internal/setup/UCSubSetupTask;->start()Lcom/uc/webview/export/internal/setup/UCAsyncTask;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_2

    :cond_6
    :goto_12
    return-void

    :cond_7
    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_8
    :try_start_d
    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_9

    const-string/jumbo v1, "T"

    goto/16 :goto_3

    :cond_9
    const-string/jumbo v1, "F"
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v1

    :try_start_e
    const-string/jumbo v1, "E"

    move-object v2, v1

    goto/16 :goto_4

    :cond_a
    invoke-static {}, Lcom/uc/webview/export/internal/setup/UCSetupTask;->getTotalLoadedUCM()Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->ucmPackageInfo:Lcom/uc/webview/export/internal/setup/UCMPackageInfo;

    iget-object v10, p0, Lcom/uc/webview/export/internal/setup/a;->a:Lcom/uc/webview/export/internal/setup/BrowserSetupTask;

    invoke-static {v10}, Lcom/uc/webview/export/internal/setup/BrowserSetupTask;->b(Lcom/uc/webview/export/internal/setup/BrowserSetupTask;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->getDirAlias(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5

    :cond_b
    const-string/jumbo v1, "F"

    goto/16 :goto_6

    :cond_c
    const-string/jumbo v1, "F"

    goto/16 :goto_7

    :cond_d
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_8

    move-result-object v0

    goto/16 :goto_8

    :cond_e
    const/4 v0, 0x0

    move v1, v0

    goto/16 :goto_c

    :cond_f
    :try_start_f
    const-string/jumbo v0, "false"

    goto/16 :goto_d

    :cond_10
    const-string/jumbo v0, "false"
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_5

    goto/16 :goto_e

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/a;->a:Lcom/uc/webview/export/internal/setup/BrowserSetupTask;

    new-instance v2, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v3, 0xfa4

    invoke-direct {v2, v3, v0}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/uc/webview/export/internal/setup/BrowserSetupTask;->setException(Lcom/uc/webview/export/internal/setup/UCSetupException;)V

    goto :goto_12

    :cond_11
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/a;->a:Lcom/uc/webview/export/internal/setup/BrowserSetupTask;

    new-instance v1, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v2, 0xfa1

    const-string/jumbo v3, "Task [%s] report success but no loaded UCM."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/setup/BrowserSetupTask;->setException(Lcom/uc/webview/export/internal/setup/UCSetupException;)V

    goto/16 :goto_12

    :catch_2
    move-exception v0

    goto/16 :goto_12

    :catch_3
    move-exception v0

    goto/16 :goto_11

    :catch_4
    move-exception v0

    goto/16 :goto_10

    :catch_5
    move-exception v0

    goto/16 :goto_f

    :catch_6
    move-exception v0

    goto/16 :goto_b

    :catch_7
    move-exception v0

    goto/16 :goto_a

    :catch_8
    move-exception v0

    goto/16 :goto_9

    :catch_9
    move-exception v0

    goto/16 :goto_2

    :catch_a
    move-exception v0

    goto/16 :goto_1
.end method
