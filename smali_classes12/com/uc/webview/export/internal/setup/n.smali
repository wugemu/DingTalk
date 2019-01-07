.class public final Lcom/uc/webview/export/internal/setup/n;
.super Lcom/uc/webview/export/internal/setup/UCSubSetupTask;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/uc/webview/export/internal/setup/UCSubSetupTask",
        "<",
        "Lcom/uc/webview/export/internal/setup/n;",
        "Lcom/uc/webview/export/internal/setup/n;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/uc/webview/export/internal/setup/bh;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/uc/webview/export/internal/setup/bh;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/uc/webview/export/internal/setup/UCSubSetupTask;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/n;->a:Ljava/util/List;

    .line 37
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 23

    .prologue
    .line 41
    const-string/jumbo v2, "DeleteCoreTask"

    const-string/jumbo v3, "======deleteSo====="

    invoke-static {v2, v3}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string/jumbo v2, "CONTEXT"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/uc/webview/export/internal/setup/n;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    .line 44
    const/16 v3, 0xe

    new-array v8, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "libWebCore_UC.so"

    aput-object v4, v8, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "libV8_UC.so"

    aput-object v4, v8, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "libandroid_uc_40.so"

    aput-object v4, v8, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "libandroid_uc_41.so"

    aput-object v4, v8, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "libandroid_uc_42.so"

    aput-object v4, v8, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "libandroid_uc_43.so"

    aput-object v4, v8, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "libandroid_uc_44.so"

    aput-object v4, v8, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "libandroid_uc_50.so"

    aput-object v4, v8, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "libskia_neon_uc.so"

    aput-object v4, v8, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "libwebviewuc.so"

    aput-object v4, v8, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "libimagehelper.so"

    aput-object v4, v8, v3

    const/16 v3, 0xb

    const-string/jumbo v4, "libvinit.so"

    aput-object v4, v8, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "libInitHelper_UC.so"

    aput-object v4, v8, v3

    const/16 v3, 0xd

    const-string/jumbo v4, "libcrashsdk.so"

    aput-object v4, v8, v3

    .line 61
    const/4 v3, 0x0

    .line 62
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/uc/webview/export/internal/setup/n;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move v6, v3

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/uc/webview/export/internal/setup/bh;

    .line 63
    const/4 v11, 0x0

    .line 64
    const/4 v7, 0x0

    .line 65
    const/4 v5, 0x0

    .line 66
    const/4 v10, 0x0

    .line 67
    const/4 v9, 0x0

    .line 68
    const/4 v4, 0x0

    .line 70
    instance-of v13, v3, Lcom/uc/webview/export/internal/setup/bq;

    if-eqz v13, :cond_16

    iget-object v13, v3, Lcom/uc/webview/export/internal/setup/bh;->c:Lcom/uc/webview/export/internal/setup/p;

    if-nez v13, :cond_16

    .line 71
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/uc/webview/export/internal/setup/n;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v5, "soFilePath"

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 72
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/uc/webview/export/internal/setup/n;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v7, "resFilePath"

    invoke-virtual {v5, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 73
    const/4 v7, 0x1

    move/from16 v22, v7

    move-object v7, v4

    move-object v4, v5

    move/from16 v5, v22

    .line 76
    :goto_1
    iget-object v13, v3, Lcom/uc/webview/export/internal/setup/bh;->c:Lcom/uc/webview/export/internal/setup/p;

    if-eqz v13, :cond_15

    iget-object v13, v3, Lcom/uc/webview/export/internal/setup/bh;->c:Lcom/uc/webview/export/internal/setup/p;

    iget-object v13, v13, Lcom/uc/webview/export/internal/setup/p;->mUCM:Lcom/uc/webview/export/internal/setup/UCMPackageInfo;

    if-eqz v13, :cond_15

    .line 77
    iget-object v4, v3, Lcom/uc/webview/export/internal/setup/bh;->c:Lcom/uc/webview/export/internal/setup/p;

    iget-object v4, v4, Lcom/uc/webview/export/internal/setup/p;->mUCM:Lcom/uc/webview/export/internal/setup/UCMPackageInfo;

    .line 78
    iget-object v10, v4, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->dataDir:Ljava/lang/String;

    .line 79
    iget-object v9, v4, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->soDirPath:Ljava/lang/String;

    .line 80
    iget-object v7, v4, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->resDirPath:Ljava/lang/String;

    .line 81
    iget-object v4, v3, Lcom/uc/webview/export/internal/setup/bh;->c:Lcom/uc/webview/export/internal/setup/p;

    iget-object v4, v4, Lcom/uc/webview/export/internal/setup/p;->mUCM:Lcom/uc/webview/export/internal/setup/UCMPackageInfo;

    .line 82
    iget-object v3, v3, Lcom/uc/webview/export/internal/setup/bh;->c:Lcom/uc/webview/export/internal/setup/p;

    iget-object v3, v3, Lcom/uc/webview/export/internal/setup/p;->mShellCL:Ljava/lang/ClassLoader;

    move-object v11, v10

    move-object v10, v4

    move-object v4, v7

    move-object/from16 v22, v9

    move-object v9, v3

    move-object/from16 v3, v22

    .line 85
    :goto_2
    if-eqz v3, :cond_14

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 86
    const/4 v3, 0x0

    move-object v7, v3

    .line 89
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v13, "_"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v13, "_"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 90
    invoke-static {v3}, Lcom/uc/webview/export/cyclone/UCCyclone;->getSourceHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 92
    const/16 v3, 0x2733

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const/16 v15, 0x2715

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v2, v16, v17

    .line 94
    invoke-static/range {v15 .. v16}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    const-string/jumbo v15, "delcore"

    aput-object v15, v13, v14

    .line 92
    invoke-static {v3, v13}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 97
    new-instance v13, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "_1"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v3, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 98
    new-instance v14, Ljava/io/File;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "_2"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v3, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 99
    new-instance v15, Ljava/io/File;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v16, "_3"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v15, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 100
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 101
    const-string/jumbo v2, "DeleteCoreTask"

    const-string/jumbo v3, "Skip delete UC files (over 3 times)."

    invoke-static {v2, v3}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/uc/webview/export/internal/setup/n;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 248
    if-eqz v6, :cond_1

    .line 249
    const-string/jumbo v2, "sdk_stp_dcc"

    invoke-static {v2}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    .line 251
    :cond_1
    :goto_4
    return-void

    .line 106
    :cond_2
    invoke-static {v11}, Lcom/uc/webview/export/internal/utility/j;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 107
    const/16 v4, 0x2711

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v2, v16, v17

    move-object/from16 v0, v16

    invoke-static {v4, v0}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    .line 108
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 109
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 111
    invoke-static {}, Lcom/uc/webview/export/utility/SetupTask;->getTotalLoadedUCM()Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    move-result-object v5

    .line 112
    iget-object v3, v5, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->ucmPackageInfo:Lcom/uc/webview/export/internal/setup/UCMPackageInfo;

    if-eqz v3, :cond_3

    iget-object v3, v5, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->ucmPackageInfo:Lcom/uc/webview/export/internal/setup/UCMPackageInfo;

    iget-object v3, v3, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->dataDir:Ljava/lang/String;

    if-eqz v3, :cond_3

    new-instance v3, Ljava/io/File;

    iget-object v5, v5, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->ucmPackageInfo:Lcom/uc/webview/export/internal/setup/UCMPackageInfo;

    iget-object v5, v5, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->dataDir:Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 115
    :goto_5
    const/16 v5, 0x273c

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v2, 0x1

    aput-object v4, v6, v2

    const/4 v2, 0x2

    aput-object v3, v6, v2

    invoke-static {v5, v6}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 112
    :cond_3
    const/4 v3, 0x0

    goto :goto_5

    .line 121
    :cond_4
    invoke-static {v7}, Lcom/uc/webview/export/internal/utility/j;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_13

    .line 122
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    .line 126
    :try_start_0
    new-instance v6, Ljava/io/File;

    const-string/jumbo v11, "2e67cdbeb4ec133dcc8204d930aa7145"

    invoke-direct {v6, v4, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 127
    new-instance v11, Ljava/io/File;

    const-string/jumbo v16, "299772b0fd1634653ae3c31f366de3f8"

    move-object/from16 v0, v16

    invoke-direct {v11, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 128
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v16

    if-eqz v16, :cond_5

    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v16

    if-eqz v16, :cond_5

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-nez v16, :cond_5

    .line 129
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 131
    :cond_5
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v11}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmp-long v6, v16, v18

    if-nez v6, :cond_6

    .line 132
    invoke-virtual {v11}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_b

    .line 138
    :cond_6
    :goto_6
    :try_start_1
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    .line 139
    array-length v11, v6

    const/4 v4, 0x0

    :goto_7
    if-ge v4, v11, :cond_8

    aget-object v16, v6, v4

    .line 140
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v17

    .line 141
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v18

    .line 142
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v19

    .line 143
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "_"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 144
    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 145
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->isFile()Z

    move-result v17

    if-eqz v17, :cond_7

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->length()J

    move-result-wide v18

    const-wide/16 v20, 0x0

    cmp-long v17, v18, v20

    if-nez v17, :cond_7

    .line 146
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 139
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 149
    :catch_0
    move-exception v4

    .line 150
    const-string/jumbo v6, "DeleteCoreTask"

    const-string/jumbo v11, "delete flag:"

    invoke-static {v6, v11, v4}, Lcom/uc/webview/export/internal/utility/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 153
    :cond_8
    const/4 v6, 0x0

    .line 154
    if-eqz v9, :cond_11

    .line 159
    const/4 v4, 0x0

    .line 160
    :try_start_2
    const-string/jumbo v11, "com.uc.webview.browser.shell.NativeLibraries"

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-static {v11, v0, v9}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v9

    .line 161
    if-eqz v9, :cond_12

    .line 162
    const-string/jumbo v4, "LIBRARIES"

    invoke-virtual {v9, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 163
    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 164
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[Ljava/lang/String;

    move-object v9, v4

    .line 166
    :goto_8
    if-eqz v9, :cond_11

    array-length v4, v9

    if-lez v4, :cond_11

    .line 167
    array-length v4, v9

    new-array v4, v4, [Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 168
    const/4 v6, 0x0

    :goto_9
    :try_start_3
    array-length v11, v4

    if-ge v6, v11, :cond_9

    .line 169
    aget-object v11, v9, v6

    const/16 v16, 0x0

    aget-object v11, v11, v16

    aput-object v11, v4, v6
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_a

    .line 168
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    :catch_1
    move-exception v4

    :goto_a
    move-object v4, v6

    .line 176
    :cond_9
    :goto_b
    if-nez v4, :cond_a

    move-object v4, v8

    .line 179
    :cond_a
    array-length v11, v4

    const/4 v6, 0x0

    move v9, v6

    :goto_c
    if-ge v9, v11, :cond_c

    aget-object v6, v4, v9

    .line 181
    :try_start_4
    new-instance v16, Ljava/io/File;

    move-object/from16 v0, v16

    invoke-direct {v0, v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 183
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    .line 185
    :cond_b
    const-string/jumbo v6, "DeleteCoreTask"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string/jumbo v18, "deleteSo:"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v6, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    .line 179
    :goto_d
    add-int/lit8 v6, v9, 0x1

    move v9, v6

    goto :goto_c

    .line 186
    :catch_2
    move-exception v6

    .line 187
    const-string/jumbo v16, "DeleteCoreTask"

    const-string/jumbo v17, "deleteSo:"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v6}, Lcom/uc/webview/export/internal/utility/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d

    .line 190
    :cond_c
    const/4 v4, 0x1

    .line 193
    :goto_e
    if-nez v5, :cond_d

    .line 195
    :try_start_5
    new-instance v5, Ljava/io/File;

    iget-object v4, v10, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->coreImplModule:Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 196
    const-string/jumbo v5, "DeleteCoreTask"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "delete dex:"

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v10, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->coreImplModule:Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    .line 201
    :goto_f
    :try_start_6
    new-instance v5, Ljava/io/File;

    iget-object v4, v10, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->browserIFModule:Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 202
    const-string/jumbo v5, "DeleteCoreTask"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "delete dex:"

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v10, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->browserIFModule:Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    .line 207
    :goto_10
    :try_start_7
    new-instance v5, Ljava/io/File;

    iget-object v4, v10, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->sdkShellModule:Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 208
    const-string/jumbo v5, "DeleteCoreTask"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "delete dex:"

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v10, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->sdkShellModule:Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_5

    .line 214
    :goto_11
    :try_start_8
    new-instance v5, Ljava/io/File;

    iget-object v4, v10, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->coreImplModule:Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v6, "dex.dex"

    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 215
    const-string/jumbo v5, "DeleteCoreTask"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "delete odex:"

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v10, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->coreImplModule:Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_6

    .line 220
    :goto_12
    :try_start_9
    new-instance v5, Ljava/io/File;

    iget-object v4, v10, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->browserIFModule:Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v6, "browser_if.dex"

    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 221
    const-string/jumbo v5, "DeleteCoreTask"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "delete odex:"

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v10, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->browserIFModule:Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_7

    .line 226
    :goto_13
    :try_start_a
    new-instance v5, Ljava/io/File;

    iget-object v4, v10, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->sdkShellModule:Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v6, "sdk_shell.dex"

    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 227
    const-string/jumbo v5, "DeleteCoreTask"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "delete odex:"

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v10, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->sdkShellModule:Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_8

    .line 231
    :goto_14
    const/4 v4, 0x1

    .line 235
    :cond_d
    :try_start_b
    const-string/jumbo v5, "DeleteCoreTask"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "deleteCoreFlagDir:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_e

    .line 237
    invoke-virtual {v13}, Ljava/io/File;->createNewFile()Z
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_9

    move v6, v4

    goto/16 :goto_0

    .line 197
    :catch_3
    move-exception v4

    .line 198
    const-string/jumbo v5, "DeleteCoreTask"

    const-string/jumbo v6, "deleteSo:"

    invoke-static {v5, v6, v4}, Lcom/uc/webview/export/internal/utility/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .line 203
    :catch_4
    move-exception v4

    .line 204
    const-string/jumbo v5, "DeleteCoreTask"

    const-string/jumbo v6, "deleteSo:"

    invoke-static {v5, v6, v4}, Lcom/uc/webview/export/internal/utility/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10

    .line 209
    :catch_5
    move-exception v4

    .line 210
    const-string/jumbo v5, "DeleteCoreTask"

    const-string/jumbo v6, "deleteSo:"

    invoke-static {v5, v6, v4}, Lcom/uc/webview/export/internal/utility/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_11

    .line 216
    :catch_6
    move-exception v4

    .line 217
    const-string/jumbo v5, "DeleteCoreTask"

    const-string/jumbo v6, "deleteSo:"

    invoke-static {v5, v6, v4}, Lcom/uc/webview/export/internal/utility/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    .line 222
    :catch_7
    move-exception v4

    .line 223
    const-string/jumbo v5, "DeleteCoreTask"

    const-string/jumbo v6, "deleteSo:"

    invoke-static {v5, v6, v4}, Lcom/uc/webview/export/internal/utility/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    .line 228
    :catch_8
    move-exception v4

    .line 229
    const-string/jumbo v5, "DeleteCoreTask"

    const-string/jumbo v6, "deleteSo:"

    invoke-static {v5, v6, v4}, Lcom/uc/webview/export/internal/utility/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_14

    .line 238
    :cond_e
    :try_start_c
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_f

    .line 239
    invoke-virtual {v14}, Ljava/io/File;->createNewFile()Z

    move v6, v4

    goto/16 :goto_0

    .line 240
    :cond_f
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_10

    .line 241
    invoke-virtual {v15}, Ljava/io/File;->createNewFile()Z
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_9

    :cond_10
    move v6, v4

    .line 245
    goto/16 :goto_0

    .line 243
    :catch_9
    move-exception v3

    .line 244
    const-string/jumbo v5, "DeleteCoreTask"

    const-string/jumbo v6, "deleteCoreFlag:"

    invoke-static {v5, v6, v3}, Lcom/uc/webview/export/internal/utility/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v6, v4

    .line 246
    goto/16 :goto_0

    :catch_a
    move-exception v6

    move-object v6, v4

    goto/16 :goto_a

    :catch_b
    move-exception v6

    goto/16 :goto_6

    :cond_11
    move-object v4, v6

    goto/16 :goto_b

    :cond_12
    move-object v9, v4

    goto/16 :goto_8

    :cond_13
    move v4, v6

    goto/16 :goto_e

    :cond_14
    move-object v7, v3

    goto/16 :goto_3

    :cond_15
    move-object v3, v7

    goto/16 :goto_2

    :cond_16
    move/from16 v22, v4

    move-object v4, v5

    move/from16 v5, v22

    goto/16 :goto_1
.end method
