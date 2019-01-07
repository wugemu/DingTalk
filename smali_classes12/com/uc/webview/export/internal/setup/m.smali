.class public Lcom/uc/webview/export/internal/setup/m;
.super Lcom/uc/webview/export/internal/setup/s;
.source "ProGuard"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/uc/webview/export/internal/setup/s;-><init>()V

    return-void
.end method

.method private static a(Ljava/util/List;Ljava/lang/String;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 157
    .line 158
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 159
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 160
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 161
    const/16 v0, 0xfba

    move v1, v0

    .line 162
    goto :goto_0

    .line 166
    :cond_1
    const/4 v4, 0x0

    :try_start_0
    invoke-static {v0, v3, v3, v4}, Lcom/uc/webview/export/internal/utility/j;->a(Ljava/io/File;Ljava/io/File;Ljava/io/File;Z)Ljava/io/File;
    :try_end_0
    .catch Lcom/uc/webview/export/internal/setup/UCSetupException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    const/16 v0, 0xfbb

    move v1, v0

    .line 179
    goto :goto_0

    .line 167
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/uc/webview/export/internal/setup/UCSetupException;->errCode()I

    move-result v1

    .line 181
    :cond_2
    return v1
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 36
    const-string/jumbo v2, "ucmZipDir"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/uc/webview/export/internal/setup/m;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    .line 37
    const-string/jumbo v2, "ucmZipFile"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/uc/webview/export/internal/setup/m;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    .line 39
    invoke-static {v3}, Lcom/uc/webview/export/internal/utility/j;->a(Ljava/lang/String;)Z

    move-result v2

    .line 40
    invoke-static {v4}, Lcom/uc/webview/export/internal/utility/j;->a(Ljava/lang/String;)Z

    move-result v5

    .line 41
    if-eqz v2, :cond_0

    if-nez v5, :cond_1

    :cond_0
    if-nez v2, :cond_2

    if-nez v5, :cond_2

    .line 42
    :cond_1
    new-instance v2, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v3, 0xbc2

    const-string/jumbo v4, "Option [%s] or  [%s] expected."

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "ucmZipDir"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string/jumbo v7, "ucmZipFile"

    aput-object v7, v5, v6

    .line 43
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 47
    :cond_2
    const-string/jumbo v2, "CONTEXT"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/uc/webview/export/internal/setup/m;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    .line 49
    if-eqz v5, :cond_3

    const/16 v4, 0x272c

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    .line 50
    :goto_0
    if-nez v4, :cond_4

    .line 51
    new-instance v2, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v4, 0xbc3

    const-string/jumbo v5, "No kernel file found in dir [%s]."

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 49
    :cond_3
    invoke-static {v4}, Lcom/uc/webview/export/cyclone/UCCyclone;->expectFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    goto :goto_0

    .line 55
    :cond_4
    const-class v14, Lcom/uc/webview/export/internal/setup/m;

    monitor-enter v14

    .line 56
    const/16 v5, 0x2733

    const/4 v3, 0x2

    :try_start_0
    new-array v6, v3, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/16 v3, 0x2713

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    invoke-static {v3, v8}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    aput-object v3, v6, v7

    const/4 v3, 0x1

    .line 57
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/uc/webview/export/cyclone/UCCyclone;->getSourceHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    .line 56
    invoke-static {v5, v6}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 58
    const/16 v5, 0x2733

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v3, 0x1

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Lcom/uc/webview/export/cyclone/UCCyclone;->getSourceHash(JJ)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    .line 60
    const-string/jumbo v12, ""

    .line 61
    const-string/jumbo v11, "0"

    .line 62
    const-string/jumbo v10, "0"

    .line 63
    const-string/jumbo v13, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 64
    const/4 v3, 0x0

    .line 68
    :try_start_1
    new-instance v15, Lcom/uc/webview/export/cyclone/UCElapseTime;

    invoke-direct {v15}, Lcom/uc/webview/export/cyclone/UCElapseTime;-><init>()V

    .line 69
    invoke-virtual {v5}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v6

    const-wide/16 v8, 0x400

    div-long/2addr v6, v8
    :try_end_1
    .catch Lcom/uc/webview/export/cyclone/UCKnownException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    long-to-float v9, v6

    .line 70
    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 71
    :try_start_2
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/uc/webview/export/internal/setup/m;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v16, "scst_flag"

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-static {v8}, Lcom/uc/webview/export/internal/utility/j;->b(Ljava/lang/Boolean;)Z

    move-result v8

    if-eqz v8, :cond_9

    const-string/jumbo v8, "ucmZipFile"

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/uc/webview/export/internal/setup/m;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string/jumbo v16, "sc_ta_fp"

    invoke-static/range {v16 .. v16}, Lcom/uc/webview/export/extension/UCCore;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/uc/webview/export/internal/utility/j;->a(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_5

    invoke-static {v8}, Lcom/uc/webview/export/internal/utility/j;->a(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_8

    :cond_5
    const/4 v8, 0x0

    :goto_1
    if-eqz v8, :cond_a

    sget v8, Lcom/uc/webview/export/cyclone/UCCyclone$DecFileOrign;->Sdcard_Share_Core:I

    .line 70
    :goto_2
    invoke-static/range {v2 .. v8}, Lcom/uc/webview/export/cyclone/UCCyclone;->decompressIfNeeded(Landroid/content/Context;ZLjava/io/File;Ljava/io/File;Ljava/io/FilenameFilter;ZI)Z

    move-result v7

    .line 72
    if-eqz v7, :cond_b

    .line 73
    const-string/jumbo v6, "0"
    :try_end_2
    .catch Lcom/uc/webview/export/cyclone/UCKnownException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 74
    :try_start_3
    invoke-virtual {v15}, Lcom/uc/webview/export/cyclone/UCElapseTime;->getMilisCpu()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
    :try_end_3
    .catch Lcom/uc/webview/export/cyclone/UCKnownException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    move-result-object v3

    .line 75
    :try_start_4
    invoke-virtual {v15}, Lcom/uc/webview/export/cyclone/UCElapseTime;->getMilis()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
    :try_end_4
    .catch Lcom/uc/webview/export/cyclone/UCKnownException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    move-result-object v4

    .line 78
    :try_start_5
    invoke-static {v2}, Lcom/uc/webview/export/internal/setup/az;->a(Landroid/content/Context;)V

    .line 82
    :goto_3
    const-string/jumbo v2, "CONTEXT"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/uc/webview/export/internal/setup/m;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v8, "/lib/%s/"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    sget-object v12, Lcom/uc/webview/export/Build;->CPU_ARCH:Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-static {v8, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/uc/webview/export/internal/setup/m;->a(Ljava/util/List;Ljava/lang/String;)I
    :try_end_5
    .catch Lcom/uc/webview/export/cyclone/UCKnownException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    move-result v2

    .line 89
    :try_start_6
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 94
    invoke-static {v9}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v8

    .line 95
    new-instance v9, Landroid/util/Pair;

    const-string/jumbo v10, "sdk_7z"

    new-instance v11, Lcom/uc/webview/export/cyclone/UCHashMap;

    invoke-direct {v11}, Lcom/uc/webview/export/cyclone/UCHashMap;-><init>()V

    const-string/jumbo v12, "cnt"

    const-string/jumbo v15, "1"

    .line 98
    invoke-virtual {v11, v12, v15}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v11

    const-string/jumbo v12, "code"

    .line 99
    invoke-virtual {v11, v12, v6}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v6

    const-string/jumbo v11, "cost"

    .line 100
    invoke-virtual {v6, v11, v4}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v4

    const-string/jumbo v6, "cost_cpu"

    .line 101
    invoke-virtual {v4, v6, v3}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v3

    const-string/jumbo v4, "data"

    .line 102
    invoke-virtual {v3, v4, v13}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v3

    const-string/jumbo v4, "cpu_cnt"

    .line 103
    invoke-static {}, Lcom/uc/webview/export/internal/utility/j;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v3

    const-string/jumbo v4, "cpu_freq"

    .line 104
    invoke-static {}, Lcom/uc/webview/export/internal/utility/j;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v3

    const-string/jumbo v4, "link_so_code"

    .line 105
    invoke-virtual {v3, v4, v2}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v2

    const-string/jumbo v3, "free_disk_space"

    .line 106
    invoke-virtual {v2, v3, v8}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v2

    invoke-direct {v9, v10, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 95
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/uc/webview/export/internal/setup/m;->callbackStat(Landroid/util/Pair;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 111
    :goto_4
    :try_start_7
    monitor-exit v14
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 113
    if-nez v7, :cond_6

    invoke-static {}, Lcom/uc/webview/export/utility/SetupTask;->getTotalLoadedUCM()Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    move-result-object v2

    if-nez v2, :cond_7

    .line 114
    :cond_6
    new-instance v2, Lcom/uc/webview/export/internal/setup/bs;

    invoke-direct {v2}, Lcom/uc/webview/export/internal/setup/bs;-><init>()V

    const/16 v3, 0x2711

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v4, v6

    .line 115
    invoke-virtual {v2, v3, v4}, Lcom/uc/webview/export/internal/setup/bs;->invoke(I[Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v2

    check-cast v2, Lcom/uc/webview/export/internal/setup/s;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/uc/webview/export/internal/setup/m;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 116
    invoke-virtual {v2, v3}, Lcom/uc/webview/export/internal/setup/s;->setOptions(Ljava/util/concurrent/ConcurrentHashMap;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v2

    check-cast v2, Lcom/uc/webview/export/internal/setup/s;

    const/16 v3, 0x2712

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/uc/webview/export/internal/setup/m;->mCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    aput-object v7, v4, v6

    .line 117
    invoke-virtual {v2, v3, v4}, Lcom/uc/webview/export/internal/setup/s;->invoke(I[Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v2

    check-cast v2, Lcom/uc/webview/export/internal/setup/s;

    const-string/jumbo v3, "dexFilePath"

    const/4 v4, 0x0

    .line 118
    invoke-virtual {v2, v3, v4}, Lcom/uc/webview/export/internal/setup/s;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v2

    check-cast v2, Lcom/uc/webview/export/internal/setup/s;

    const-string/jumbo v3, "soFilePath"

    const/4 v4, 0x0

    .line 119
    invoke-virtual {v2, v3, v4}, Lcom/uc/webview/export/internal/setup/s;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v2

    check-cast v2, Lcom/uc/webview/export/internal/setup/s;

    const-string/jumbo v3, "resFilePath"

    const/4 v4, 0x0

    .line 120
    invoke-virtual {v2, v3, v4}, Lcom/uc/webview/export/internal/setup/s;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v2

    check-cast v2, Lcom/uc/webview/export/internal/setup/s;

    const-string/jumbo v3, "ucmCfgFile"

    const/4 v4, 0x0

    .line 121
    invoke-virtual {v2, v3, v4}, Lcom/uc/webview/export/internal/setup/s;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v2

    check-cast v2, Lcom/uc/webview/export/internal/setup/s;

    const-string/jumbo v3, "ucmKrlDir"

    .line 122
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/uc/webview/export/internal/setup/s;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v2

    check-cast v2, Lcom/uc/webview/export/internal/setup/s;

    const-string/jumbo v3, "stop"

    new-instance v4, Lcom/uc/webview/export/internal/setup/UCAsyncTask$c;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/uc/webview/export/internal/setup/UCAsyncTask$c;-><init>(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)V

    .line 123
    invoke-virtual {v2, v3, v4}, Lcom/uc/webview/export/internal/setup/s;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v2

    check-cast v2, Lcom/uc/webview/export/internal/setup/s;

    .line 124
    invoke-virtual {v2}, Lcom/uc/webview/export/internal/setup/s;->start()Lcom/uc/webview/export/internal/setup/UCSetupTask;

    .line 128
    :cond_7
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/uc/webview/export/internal/setup/m;->mCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 129
    return-void

    .line 71
    :cond_8
    :try_start_8
    new-instance v17, Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/io/File;

    move-object/from16 v0, v16

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    goto/16 :goto_1

    :cond_9
    const/4 v8, 0x0

    goto/16 :goto_1

    :cond_a
    sget v8, Lcom/uc/webview/export/cyclone/UCCyclone$DecFileOrign;->Other:I

    goto/16 :goto_2

    .line 80
    :cond_b
    const-string/jumbo v6, "1"
    :try_end_8
    .catch Lcom/uc/webview/export/cyclone/UCKnownException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move-object v3, v10

    move-object v4, v11

    goto/16 :goto_3

    .line 83
    :catch_0
    move-exception v2

    move-object v4, v10

    move-object v5, v11

    move-object v6, v12

    .line 84
    :goto_5
    :try_start_9
    const-string/jumbo v12, "2"
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    .line 85
    :try_start_a
    invoke-virtual {v2}, Lcom/uc/webview/export/cyclone/UCKnownException;->errCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    move-result-object v6

    .line 86
    :try_start_b
    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 88
    :catchall_0
    move-exception v2

    move v9, v3

    move-object v10, v4

    move-object v11, v5

    move-object v3, v6

    .line 89
    :goto_6
    :try_start_c
    const-string/jumbo v4, "-1"

    .line 94
    invoke-static {v9}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    .line 95
    new-instance v6, Landroid/util/Pair;

    const-string/jumbo v7, "sdk_7z"

    new-instance v8, Lcom/uc/webview/export/cyclone/UCHashMap;

    invoke-direct {v8}, Lcom/uc/webview/export/cyclone/UCHashMap;-><init>()V

    const-string/jumbo v9, "cnt"

    const-string/jumbo v13, "1"

    .line 98
    invoke-virtual {v8, v9, v13}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v8

    const-string/jumbo v9, "code"

    .line 99
    invoke-virtual {v8, v9, v12}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v8

    const-string/jumbo v9, "cost"

    .line 100
    invoke-virtual {v8, v9, v11}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v8

    const-string/jumbo v9, "cost_cpu"

    .line 101
    invoke-virtual {v8, v9, v10}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v8

    const-string/jumbo v9, "data"

    .line 102
    invoke-virtual {v8, v9, v3}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v3

    const-string/jumbo v8, "cpu_cnt"

    .line 103
    invoke-static {}, Lcom/uc/webview/export/internal/utility/j;->a()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v3

    const-string/jumbo v8, "cpu_freq"

    .line 104
    invoke-static {}, Lcom/uc/webview/export/internal/utility/j;->b()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v3

    const-string/jumbo v8, "link_so_code"

    .line 105
    invoke-virtual {v3, v8, v4}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v3

    const-string/jumbo v4, "free_disk_space"

    .line 106
    invoke-virtual {v3, v4, v5}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v3

    invoke-direct {v6, v7, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 95
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/uc/webview/export/internal/setup/m;->callbackStat(Landroid/util/Pair;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 109
    :goto_7
    :try_start_d
    throw v2

    .line 111
    :catchall_1
    move-exception v2

    monitor-exit v14
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    throw v2

    :catch_1
    move-exception v3

    goto :goto_7

    .line 88
    :catchall_2
    move-exception v2

    move v9, v3

    move-object v3, v13

    goto :goto_6

    :catchall_3
    move-exception v2

    move-object v3, v13

    goto :goto_6

    :catchall_4
    move-exception v2

    move-object v3, v13

    move-object v12, v6

    goto :goto_6

    :catchall_5
    move-exception v2

    move-object v10, v3

    move-object v12, v6

    move-object v3, v13

    goto :goto_6

    :catchall_6
    move-exception v2

    move-object v10, v3

    move-object v11, v4

    move-object v12, v6

    move-object v3, v13

    goto/16 :goto_6

    :catchall_7
    move-exception v2

    move v9, v3

    move-object v10, v4

    move-object v11, v5

    move-object v12, v6

    move-object v3, v13

    goto/16 :goto_6

    :catchall_8
    move-exception v2

    move v9, v3

    move-object v10, v4

    move-object v11, v5

    move-object v3, v13

    goto/16 :goto_6

    .line 83
    :catch_2
    move-exception v2

    move v3, v9

    move-object v4, v10

    move-object v5, v11

    move-object v6, v12

    goto/16 :goto_5

    :catch_3
    move-exception v2

    move v3, v9

    move-object v4, v10

    move-object v5, v11

    goto/16 :goto_5

    :catch_4
    move-exception v2

    move-object v4, v3

    move-object v5, v11

    move v3, v9

    goto/16 :goto_5

    :catch_5
    move-exception v2

    move-object v5, v4

    move-object v4, v3

    move v3, v9

    goto/16 :goto_5

    .line 110
    :catch_6
    move-exception v2

    goto/16 :goto_4
.end method
