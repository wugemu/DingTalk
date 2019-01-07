.class public final Lcom/uc/webview/export/internal/setup/cj;
.super Lcom/uc/webview/export/internal/setup/s;
.source "ProGuard"


# instance fields
.field public a:Lcom/uc/webview/export/utility/download/UpdateTask;

.field b:Ljava/lang/String;

.field private c:Z

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Lcom/uc/webview/export/internal/setup/s;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uc/webview/export/internal/setup/cj;->a:Lcom/uc/webview/export/utility/download/UpdateTask;

    .line 37
    iput-boolean v1, p0, Lcom/uc/webview/export/internal/setup/cj;->c:Z

    .line 38
    iput-boolean v1, p0, Lcom/uc/webview/export/internal/setup/cj;->d:Z

    .line 39
    iput-boolean v1, p0, Lcom/uc/webview/export/internal/setup/cj;->e:Z

    return-void
.end method

.method static synthetic a(Lcom/uc/webview/export/internal/setup/cj;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/cj;->b:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/uc/webview/export/internal/setup/cj;)Z
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/uc/webview/export/internal/setup/cj;->d:Z

    return v0
.end method

.method static synthetic b(Lcom/uc/webview/export/internal/setup/cj;)Z
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/uc/webview/export/internal/setup/cj;->c:Z

    return v0
.end method

.method static synthetic c(Lcom/uc/webview/export/internal/setup/cj;)Lcom/uc/webview/export/utility/download/UpdateTask;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/cj;->a:Lcom/uc/webview/export/utility/download/UpdateTask;

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 19

    .prologue
    .line 51
    const-string/jumbo v2, "CONTEXT"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/uc/webview/export/internal/setup/cj;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    .line 52
    const-string/jumbo v2, "ucmUpdUrl"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/uc/webview/export/internal/setup/cj;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 53
    const-string/jumbo v2, "chkMultiCore"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/uc/webview/export/internal/setup/cj;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Ljava/lang/Boolean;

    .line 54
    const-string/jumbo v2, "dlChecker"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/uc/webview/export/internal/setup/cj;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Ljava/util/concurrent/Callable;

    .line 56
    const-string/jumbo v2, "i"

    const-string/jumbo v5, "UpdateSetupTask"

    invoke-static {v2, v5}, Lcom/uc/webview/export/cyclone/UCLogger;->createToken(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 59
    invoke-static {}, Lcom/uc/webview/export/internal/setup/cj;->getTotalLoadedUCM()Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    move-result-object v2

    .line 60
    if-eqz v2, :cond_3

    .line 61
    iget-boolean v6, v2, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->isShareCore:Z

    if-eqz v6, :cond_0

    iget v2, v2, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->coreType:I

    const/4 v6, 0x2

    if-ne v2, v6, :cond_2

    :cond_0
    const/4 v2, 0x1

    .line 62
    :goto_0
    if-nez v2, :cond_1

    .line 63
    const-string/jumbo v6, "sc_udst"

    invoke-static {v6}, Lcom/uc/webview/export/extension/UCCore;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 64
    const-string/jumbo v7, "UpdateSetupTask"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "stileUpdate : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-static {v6}, Lcom/uc/webview/export/internal/utility/j;->b(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 66
    const/4 v2, 0x1

    .line 67
    const-string/jumbo v6, "csc_usl"

    invoke-static {v6}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    .line 70
    :cond_1
    const-string/jumbo v6, "UpdateSetupTask"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "stile update task : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    if-nez v2, :cond_3

    .line 72
    const-string/jumbo v2, "csc_usp"

    invoke-static {v2}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    .line 176
    :goto_1
    return-void

    .line 61
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 77
    :cond_3
    invoke-static {v4}, Lcom/uc/webview/export/internal/utility/j;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 78
    new-instance v2, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v3, 0xbc6

    const-string/jumbo v4, "Option [%s] expected."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "ucmUpdUrl"

    aput-object v7, v5, v6

    .line 79
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 83
    :cond_4
    new-instance v14, Lcom/uc/webview/export/internal/setup/bt;

    invoke-direct {v14}, Lcom/uc/webview/export/internal/setup/bt;-><init>()V

    .line 84
    new-instance v15, Lcom/uc/webview/export/internal/setup/bt;

    invoke-direct {v15}, Lcom/uc/webview/export/internal/setup/bt;-><init>()V

    .line 85
    const-string/jumbo v2, "updWait"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/uc/webview/export/internal/setup/cj;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 86
    if-nez v2, :cond_8

    const-wide/32 v6, 0x6ddd00

    :goto_2
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    .line 93
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/32 v8, 0x927c0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 95
    :try_start_0
    const-string/jumbo v2, "sc_ustwm"

    invoke-static {v2}, Lcom/uc/webview/export/extension/UCCore;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 96
    invoke-static {v2}, Lcom/uc/webview/export/internal/utility/j;->a(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 97
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->min(JJ)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    :cond_5
    move-wide v12, v6

    .line 103
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "run:update from ["

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, "]"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Throwable;

    invoke-static {v5, v2, v6}, Lcom/uc/webview/export/cyclone/UCLogger;->print(ILjava/lang/String;[Ljava/lang/Throwable;)Z

    .line 106
    monitor-enter v14

    .line 107
    const/16 v2, 0x2712

    const/4 v5, 0x1

    :try_start_1
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-static {v2, v5}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/io/File;

    move-object v5, v0

    const-string/jumbo v2, "dwnRetryWait"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/uc/webview/export/internal/setup/cj;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_b

    const/4 v8, 0x0

    :goto_4
    const-string/jumbo v2, "dwnRetryMaxWait"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/uc/webview/export/internal/setup/cj;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_e

    const/4 v9, 0x0

    :goto_5
    new-instance v2, Lcom/uc/webview/export/utility/download/UpdateTask;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "core.jar"

    new-instance v7, Lcom/uc/webview/export/internal/utility/i$b;

    const-string/jumbo v17, "ut_cvsv"

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Lcom/uc/webview/export/internal/utility/i$b;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v2 .. v9}, Lcom/uc/webview/export/utility/download/UpdateTask;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/ValueCallback;Ljava/lang/Long;Ljava/lang/Long;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/uc/webview/export/internal/setup/cj;->a:Lcom/uc/webview/export/utility/download/UpdateTask;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/uc/webview/export/internal/setup/cj;->a:Lcom/uc/webview/export/utility/download/UpdateTask;

    const-string/jumbo v4, "check"

    new-instance v5, Lcom/uc/webview/export/internal/setup/cl;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v3, v11}, Lcom/uc/webview/export/internal/setup/cl;-><init>(Lcom/uc/webview/export/internal/setup/cj;Landroid/content/Context;Ljava/util/concurrent/Callable;)V

    invoke-virtual {v2, v4, v5}, Lcom/uc/webview/export/utility/download/UpdateTask;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/utility/download/UpdateTask;

    move-result-object v2

    const-string/jumbo v3, "exception"

    new-instance v4, Lcom/uc/webview/export/internal/setup/cu;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/uc/webview/export/internal/setup/cu;-><init>(Lcom/uc/webview/export/internal/setup/cj;)V

    invoke-virtual {v2, v3, v4}, Lcom/uc/webview/export/utility/download/UpdateTask;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/utility/download/UpdateTask;

    move-result-object v2

    const-string/jumbo v3, "downloadException"

    new-instance v4, Lcom/uc/webview/export/internal/setup/ct;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/uc/webview/export/internal/setup/ct;-><init>(Lcom/uc/webview/export/internal/setup/cj;)V

    invoke-virtual {v2, v3, v4}, Lcom/uc/webview/export/utility/download/UpdateTask;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/utility/download/UpdateTask;

    move-result-object v2

    const-string/jumbo v3, "success"

    new-instance v4, Lcom/uc/webview/export/internal/setup/cs;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v15}, Lcom/uc/webview/export/internal/setup/cs;-><init>(Lcom/uc/webview/export/internal/setup/cj;Lcom/uc/webview/export/internal/setup/bt;)V

    invoke-virtual {v2, v3, v4}, Lcom/uc/webview/export/utility/download/UpdateTask;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/utility/download/UpdateTask;

    move-result-object v2

    const-string/jumbo v3, "failed"

    new-instance v4, Lcom/uc/webview/export/internal/setup/cr;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v15}, Lcom/uc/webview/export/internal/setup/cr;-><init>(Lcom/uc/webview/export/internal/setup/cj;Lcom/uc/webview/export/internal/setup/bt;)V

    invoke-virtual {v2, v3, v4}, Lcom/uc/webview/export/utility/download/UpdateTask;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/utility/download/UpdateTask;

    move-result-object v2

    const-string/jumbo v3, "exists"

    new-instance v4, Lcom/uc/webview/export/internal/setup/cq;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v15}, Lcom/uc/webview/export/internal/setup/cq;-><init>(Lcom/uc/webview/export/internal/setup/cj;Lcom/uc/webview/export/internal/setup/bt;)V

    invoke-virtual {v2, v3, v4}, Lcom/uc/webview/export/utility/download/UpdateTask;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/utility/download/UpdateTask;

    move-result-object v2

    const-string/jumbo v3, "deleteDownFile"

    new-instance v4, Lcom/uc/webview/export/internal/setup/cp;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/uc/webview/export/internal/setup/cp;-><init>(Lcom/uc/webview/export/internal/setup/cj;)V

    invoke-virtual {v2, v3, v4}, Lcom/uc/webview/export/utility/download/UpdateTask;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/utility/download/UpdateTask;

    move-result-object v2

    const-string/jumbo v3, "progress"

    new-instance v4, Lcom/uc/webview/export/internal/setup/co;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/uc/webview/export/internal/setup/co;-><init>(Lcom/uc/webview/export/internal/setup/cj;)V

    invoke-virtual {v2, v3, v4}, Lcom/uc/webview/export/utility/download/UpdateTask;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/utility/download/UpdateTask;

    move-result-object v2

    invoke-virtual {v2}, Lcom/uc/webview/export/utility/download/UpdateTask;->start()Lcom/uc/webview/export/utility/download/UpdateTask;

    .line 109
    invoke-virtual {v15, v12, v13}, Lcom/uc/webview/export/internal/setup/bt;->a(J)Landroid/util/Pair;

    move-result-object v4

    .line 110
    iget-object v2, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    .line 111
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_7

    .line 112
    const-string/jumbo v2, "UpdateSetupTask"

    const-string/jumbo v3, ".shareCoreWaitTimeout"

    invoke-static {v2, v3}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x0

    :try_start_2
    const-string/jumbo v2, "sc_ldpl"

    invoke-static {v2}, Lcom/uc/webview/export/extension/UCCore;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "sc_lshco"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    const/4 v3, 0x1

    const-string/jumbo v2, "UpdateSetupTask"

    const-string/jumbo v5, ".shareCoreWaitTimeout !CDKeys.CD_VALUE_LOAD_POLICY_SHARE_CORE.equals(shareCoreLoadPolicy)."

    invoke-static {v2, v5}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget-object v2, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_6

    iget-object v2, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v14, v2, v3}, Lcom/uc/webview/export/internal/setup/bt;->a(ILjava/lang/Object;)V

    .line 114
    :cond_6
    :goto_6
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v2, v12

    invoke-virtual {v14, v2, v3}, Lcom/uc/webview/export/internal/setup/bt;->a(J)Landroid/util/Pair;

    move-result-object v2

    move-object v4, v2

    .line 116
    :cond_7
    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 118
    const-string/jumbo v2, "UpdateSetupTask"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "retult.first: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v2, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_17

    .line 120
    new-instance v2, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v3, 0xfaa

    const-string/jumbo v4, "Thread [%s] waiting for update is up to [%s] milis."

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 122
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 123
    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 121
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 86
    :cond_8
    instance-of v6, v2, Ljava/lang/Long;

    if-eqz v6, :cond_9

    check-cast v2, Ljava/lang/Long;

    .line 89
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    goto/16 :goto_2

    :cond_9
    instance-of v6, v2, Ljava/lang/Integer;

    if-eqz v6, :cond_a

    check-cast v2, Ljava/lang/Integer;

    .line 91
    invoke-virtual {v2}, Ljava/lang/Integer;->longValue()J

    move-result-wide v6

    goto/16 :goto_2

    .line 92
    :cond_a
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    goto/16 :goto_2

    .line 99
    :catch_0
    move-exception v2

    .line 100
    const-string/jumbo v8, "UpdateSetupTask"

    const-string/jumbo v9, "Long.valueOf(String) exceptin."

    invoke-static {v8, v9, v2}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-wide v12, v6

    goto/16 :goto_3

    .line 107
    :cond_b
    :try_start_4
    instance-of v6, v2, Ljava/lang/Long;

    if-eqz v6, :cond_c

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    :goto_7
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    goto/16 :goto_4

    :cond_c
    instance-of v6, v2, Ljava/lang/Integer;

    if-eqz v6, :cond_d

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->longValue()J

    move-result-wide v6

    goto :goto_7

    :cond_d
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    goto :goto_7

    :cond_e
    instance-of v6, v2, Ljava/lang/Long;

    if-eqz v6, :cond_f

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    :goto_8
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    goto/16 :goto_5

    :cond_f
    instance-of v6, v2, Ljava/lang/Integer;

    if-eqz v6, :cond_10

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->longValue()J

    move-result-wide v6

    goto :goto_8

    :cond_10
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-wide v6

    goto :goto_8

    .line 112
    :cond_11
    const/16 v2, 0x2717

    const/4 v5, 0x1

    :try_start_5
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "shareCoreEvt"

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v5}, Lcom/uc/webview/export/internal/setup/cj;->invokeO(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/webkit/ValueCallback;

    if-nez v2, :cond_12

    const/4 v3, 0x1

    const-string/jumbo v2, "UpdateSetupTask"

    const-string/jumbo v5, ".shareCoreWaitTimeout dlShareCoreCB == null."

    invoke-static {v2, v5}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    iget-object v2, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_6

    iget-object v2, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v14, v2, v3}, Lcom/uc/webview/export/internal/setup/bt;->a(ILjava/lang/Object;)V

    goto/16 :goto_6

    .line 116
    :catchall_0
    move-exception v2

    monitor-exit v14
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v2

    .line 112
    :cond_12
    :try_start_7
    monitor-enter p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/uc/webview/export/internal/setup/cj;->c:Z

    if-nez v5, :cond_13

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/uc/webview/export/internal/setup/cj;->d:Z

    if-nez v5, :cond_13

    const/4 v3, 0x1

    const-string/jumbo v2, "UpdateSetupTask"

    const-string/jumbo v5, ".shareCoreWaitTimeout !mHasExcepted && !mHasFailed"

    invoke-static {v2, v5}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    iget-object v2, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_6

    iget-object v2, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v14, v2, v3}, Lcom/uc/webview/export/internal/setup/bt;->a(ILjava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_6

    :cond_13
    :try_start_a
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    invoke-static {}, Lcom/uc/webview/export/internal/setup/cj;->getTotalLoadedUCM()Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    move-result-object v5

    if-eqz v5, :cond_16

    iget v5, v5, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->coreType:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_14

    sget-boolean v5, Lcom/uc/webview/export/internal/SDKFactory;->l:Z

    if-nez v5, :cond_16

    :cond_14
    const/4 v3, 0x1

    const-string/jumbo v2, "UpdateSetupTask"

    const-string/jumbo v5, ".shareCoreWaitTimeout UCCore had initialized."

    invoke-static {v2, v5}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    iget-object v2, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_6

    iget-object v2, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v14, v2, v3}, Lcom/uc/webview/export/internal/setup/bt;->a(ILjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_6

    :catchall_1
    move-exception v2

    :try_start_d
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :try_start_e
    throw v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :catchall_2
    move-exception v2

    move-object/from16 v18, v2

    move v2, v3

    move-object/from16 v3, v18

    if-eqz v2, :cond_15

    :try_start_f
    iget-object v2, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v5, 0x1

    if-eq v2, v5, :cond_15

    iget-object v2, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v14, v2, v4}, Lcom/uc/webview/export/internal/setup/bt;->a(ILjava/lang/Object;)V

    :cond_15
    throw v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :cond_16
    :try_start_10
    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lcom/uc/webview/export/internal/setup/cm;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v2, v14, v4}, Lcom/uc/webview/export/internal/setup/cm;-><init>(Lcom/uc/webview/export/internal/setup/cj;Landroid/webkit/ValueCallback;Lcom/uc/webview/export/internal/setup/bt;Landroid/util/Pair;)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    goto/16 :goto_6

    .line 124
    :cond_17
    iget-object v2, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_18

    .line 125
    new-instance v3, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v5, 0xfb3

    iget-object v2, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Exception;

    invoke-direct {v3, v5, v2}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/Throwable;)V

    throw v3

    .line 126
    :cond_18
    iget-object v2, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_19

    .line 127
    new-instance v2, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v3, 0xfbe

    const-string/jumbo v4, "Thread [%s] waiting timeout for share core task."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 128
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 131
    :cond_19
    iget-object v2, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_1c

    const/4 v2, 0x1

    move v3, v2

    .line 132
    :goto_9
    if-nez v3, :cond_1a

    iget-object v2, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v4, 0x4

    if-ne v2, v4, :cond_1d

    :cond_1a
    const/4 v2, 0x1

    .line 133
    :goto_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/uc/webview/export/internal/setup/cj;->a:Lcom/uc/webview/export/utility/download/UpdateTask;

    invoke-virtual {v4}, Lcom/uc/webview/export/utility/download/UpdateTask;->getUpdateDir()Ljava/io/File;

    move-result-object v4

    .line 135
    if-eqz v2, :cond_1f

    if-nez v3, :cond_1b

    invoke-static {}, Lcom/uc/webview/export/utility/SetupTask;->getTotalLoadedUCM()Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    move-result-object v2

    if-nez v2, :cond_1f

    .line 136
    :cond_1b
    const-string/jumbo v2, "UpdateSetupTask"

    const-string/jumbo v3, "new ThinSetupTask."

    invoke-static {v2, v3}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    new-instance v2, Lcom/uc/webview/export/internal/setup/bs;

    invoke-direct {v2}, Lcom/uc/webview/export/internal/setup/bs;-><init>()V

    const/16 v3, 0x2711

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    .line 138
    invoke-virtual {v2, v3, v5}, Lcom/uc/webview/export/internal/setup/bs;->invoke(I[Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v2

    check-cast v2, Lcom/uc/webview/export/internal/setup/s;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/uc/webview/export/internal/setup/cj;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 139
    invoke-virtual {v2, v3}, Lcom/uc/webview/export/internal/setup/s;->setOptions(Ljava/util/concurrent/ConcurrentHashMap;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v2

    check-cast v2, Lcom/uc/webview/export/internal/setup/s;

    const/16 v3, 0x2712

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/uc/webview/export/internal/setup/cj;->mCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    aput-object v7, v5, v6

    .line 140
    invoke-virtual {v2, v3, v5}, Lcom/uc/webview/export/internal/setup/s;->invoke(I[Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v2

    check-cast v2, Lcom/uc/webview/export/internal/setup/s;

    const-string/jumbo v3, "dexFilePath"

    const/4 v5, 0x0

    .line 141
    invoke-virtual {v2, v3, v5}, Lcom/uc/webview/export/internal/setup/s;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v2

    check-cast v2, Lcom/uc/webview/export/internal/setup/s;

    const-string/jumbo v3, "soFilePath"

    const/4 v5, 0x0

    .line 142
    invoke-virtual {v2, v3, v5}, Lcom/uc/webview/export/internal/setup/s;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v2

    check-cast v2, Lcom/uc/webview/export/internal/setup/s;

    const-string/jumbo v3, "resFilePath"

    const/4 v5, 0x0

    .line 143
    invoke-virtual {v2, v3, v5}, Lcom/uc/webview/export/internal/setup/s;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v2

    check-cast v2, Lcom/uc/webview/export/internal/setup/s;

    const-string/jumbo v3, "ucmCfgFile"

    const/4 v5, 0x0

    .line 144
    invoke-virtual {v2, v3, v5}, Lcom/uc/webview/export/internal/setup/s;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v2

    check-cast v2, Lcom/uc/webview/export/internal/setup/s;

    const-string/jumbo v3, "ucmLibDir"

    const/4 v5, 0x0

    .line 145
    invoke-virtual {v2, v3, v5}, Lcom/uc/webview/export/internal/setup/s;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v2

    check-cast v2, Lcom/uc/webview/export/internal/setup/s;

    const-string/jumbo v3, "ucmZipDir"

    const/4 v5, 0x0

    .line 146
    invoke-virtual {v2, v3, v5}, Lcom/uc/webview/export/internal/setup/s;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v2

    check-cast v2, Lcom/uc/webview/export/internal/setup/s;

    const-string/jumbo v3, "ucmZipFile"

    const/4 v5, 0x0

    .line 147
    invoke-virtual {v2, v3, v5}, Lcom/uc/webview/export/internal/setup/s;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v2

    check-cast v2, Lcom/uc/webview/export/internal/setup/s;

    const-string/jumbo v3, "ucmKrlDir"

    .line 148
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/uc/webview/export/internal/setup/s;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v2

    check-cast v2, Lcom/uc/webview/export/internal/setup/s;

    const-string/jumbo v3, "switch"

    new-instance v4, Lcom/uc/webview/export/internal/setup/cn;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/uc/webview/export/internal/setup/cn;-><init>(Lcom/uc/webview/export/internal/setup/cj;)V

    .line 149
    invoke-virtual {v2, v3, v4}, Lcom/uc/webview/export/internal/setup/s;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v2

    check-cast v2, Lcom/uc/webview/export/internal/setup/s;

    const-string/jumbo v3, "stop"

    new-instance v4, Lcom/uc/webview/export/internal/setup/UCAsyncTask$c;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/uc/webview/export/internal/setup/UCAsyncTask$c;-><init>(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)V

    .line 159
    invoke-virtual {v2, v3, v4}, Lcom/uc/webview/export/internal/setup/s;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v2

    check-cast v2, Lcom/uc/webview/export/internal/setup/s;

    const-string/jumbo v4, "setup"

    .line 160
    invoke-static {v10}, Lcom/uc/webview/export/internal/utility/j;->a(Ljava/lang/Boolean;)Z

    move-result v3

    if-eqz v3, :cond_1e

    const/4 v3, 0x0

    :goto_b
    invoke-virtual {v2, v4, v3}, Lcom/uc/webview/export/internal/setup/s;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v2

    check-cast v2, Lcom/uc/webview/export/internal/setup/s;

    .line 172
    invoke-virtual {v2}, Lcom/uc/webview/export/internal/setup/s;->start()Lcom/uc/webview/export/internal/setup/UCSetupTask;

    goto/16 :goto_1

    .line 131
    :cond_1c
    const/4 v2, 0x0

    move v3, v2

    goto/16 :goto_9

    .line 132
    :cond_1d
    const/4 v2, 0x0

    goto/16 :goto_a

    .line 160
    :cond_1e
    new-instance v3, Lcom/uc/webview/export/internal/setup/ck;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/uc/webview/export/internal/setup/ck;-><init>(Lcom/uc/webview/export/internal/setup/cj;)V

    goto :goto_b

    .line 174
    :cond_1f
    const-string/jumbo v2, "UpdateSetupTask"

    const-string/jumbo v3, "else, need not new ThinSetupTask."

    invoke-static {v2, v3}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method
