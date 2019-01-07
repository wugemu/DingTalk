.class public final Lcom/uc/webview/export/internal/setup/ab;
.super Lcom/uc/webview/export/internal/setup/s;
.source "ProGuard"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/uc/webview/export/internal/setup/s;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v9, 0x2716

    const/4 v8, 0x2

    const/4 v12, 0x0

    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 23
    const-string/jumbo v0, "CONTEXT"

    invoke-virtual {p0, v0}, Lcom/uc/webview/export/internal/setup/ab;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 26
    new-array v2, v7, [Ljava/lang/Object;

    aput-object v0, v2, v1

    invoke-static {v9, v2}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 28
    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-lez v2, :cond_0

    move v6, v7

    .line 31
    :goto_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageResourcePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/uc/webview/export/cyclone/UCCyclone;->expectFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 32
    const/16 v4, 0x2733

    new-array v5, v8, [Ljava/lang/Object;

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v0, v3, v1

    invoke-static {v9, v3}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    aput-object v3, v5, v1

    .line 33
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/uc/webview/export/cyclone/UCCyclone;->getSourceHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v7

    .line 32
    invoke-static {v4, v5}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 34
    const/16 v4, 0x2733

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v3, v5, v1

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Lcom/uc/webview/export/cyclone/UCCyclone;->getSourceHash(JJ)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v7

    invoke-static {v4, v5}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 36
    new-instance v4, Lcom/uc/webview/export/internal/setup/ac;

    invoke-direct {v4, p0}, Lcom/uc/webview/export/internal/setup/ac;-><init>(Lcom/uc/webview/export/internal/setup/ab;)V

    move v5, v1

    .line 46
    invoke-static/range {v0 .. v5}, Lcom/uc/webview/export/cyclone/UCCyclone;->decompressIfNeeded(Landroid/content/Context;ZLjava/io/File;Ljava/io/File;Ljava/io/FilenameFilter;Z)Z

    move-result v2

    .line 49
    iget-object v4, p0, Lcom/uc/webview/export/internal/setup/ab;->mCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 51
    iput-object v12, p0, Lcom/uc/webview/export/internal/setup/ab;->mCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 52
    const-string/jumbo v0, "/lib/%s/libkernelu4_uc_7z.so"

    new-array v5, v7, [Ljava/lang/Object;

    sget-object v8, Lcom/uc/webview/export/Build;->CPU_ARCH:Ljava/lang/String;

    aput-object v8, v5, v1

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 53
    new-instance v0, Lcom/uc/webview/export/internal/setup/m;

    invoke-direct {v0}, Lcom/uc/webview/export/internal/setup/m;-><init>()V

    const/16 v8, 0x2711

    new-array v9, v7, [Ljava/lang/Object;

    aput-object p0, v9, v1

    .line 54
    invoke-virtual {v0, v8, v9}, Lcom/uc/webview/export/internal/setup/m;->invoke(I[Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/s;

    iget-object v8, p0, Lcom/uc/webview/export/internal/setup/ab;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 55
    invoke-virtual {v0, v8}, Lcom/uc/webview/export/internal/setup/s;->setOptions(Ljava/util/concurrent/ConcurrentHashMap;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/s;

    const/16 v8, 0x2712

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v4, v7, v1

    .line 56
    invoke-virtual {v0, v8, v7}, Lcom/uc/webview/export/internal/setup/s;->invoke(I[Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/s;

    const-string/jumbo v1, "dexFilePath"

    .line 57
    invoke-virtual {v0, v1, v12}, Lcom/uc/webview/export/internal/setup/s;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/s;

    const-string/jumbo v1, "soFilePath"

    .line 58
    invoke-virtual {v0, v1, v12}, Lcom/uc/webview/export/internal/setup/s;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/s;

    const-string/jumbo v1, "resFilePath"

    .line 59
    invoke-virtual {v0, v1, v12}, Lcom/uc/webview/export/internal/setup/s;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/s;

    const-string/jumbo v1, "ucmCfgFile"

    .line 60
    invoke-virtual {v0, v1, v12}, Lcom/uc/webview/export/internal/setup/s;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/s;

    const-string/jumbo v1, "ucmKrlDir"

    .line 61
    invoke-virtual {v0, v1, v12}, Lcom/uc/webview/export/internal/setup/s;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/s;

    const-string/jumbo v1, "ucmZipFile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/uc/webview/export/internal/setup/s;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/s;

    .line 64
    if-eqz v2, :cond_1

    if-eqz v6, :cond_1

    .line 65
    invoke-virtual {p0}, Lcom/uc/webview/export/internal/setup/ab;->resetCrashFlag()V

    .line 71
    :goto_1
    invoke-virtual {v0}, Lcom/uc/webview/export/internal/setup/s;->start()Lcom/uc/webview/export/internal/setup/UCSetupTask;

    .line 72
    return-void

    :cond_0
    move v6, v1

    .line 28
    goto/16 :goto_0

    .line 69
    :cond_1
    const-string/jumbo v1, "start"

    new-instance v2, Lcom/uc/webview/export/internal/setup/UCAsyncTask$a;

    invoke-direct {v2, p0}, Lcom/uc/webview/export/internal/setup/UCAsyncTask$a;-><init>(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)V

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/s;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    goto :goto_1
.end method
