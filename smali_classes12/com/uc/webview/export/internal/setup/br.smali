.class public Lcom/uc/webview/export/internal/setup/br;
.super Lcom/uc/webview/export/internal/setup/p;
.source "ProGuard"


# static fields
.field private static final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/uc/webview/export/internal/setup/br;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uc/webview/export/internal/setup/br;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/uc/webview/export/internal/setup/p;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/uc/webview/export/internal/setup/UCMPackageInfo;ZZZLjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 24

    .prologue
    .line 160
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/uc/webview/export/internal/setup/br;->mUCM:Lcom/uc/webview/export/internal/setup/UCMPackageInfo;

    .line 163
    if-eqz p3, :cond_0

    .line 164
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->dataDir:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/uc/webview/export/cyclone/UCCyclone;->isDecompressFinished(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 165
    new-instance v4, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v5, 0x7d7

    const-string/jumbo v6, "Package [%s] decompress not finished."

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->dataDir:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 170
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/setup/br;->a(Lcom/uc/webview/export/internal/setup/UCMPackageInfo;)V

    .line 172
    invoke-direct/range {p0 .. p2}, Lcom/uc/webview/export/internal/setup/br;->a(Landroid/content/Context;Lcom/uc/webview/export/internal/setup/UCMPackageInfo;)Z

    move-result v15

    .line 173
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->coreImplModule:Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->coreImplModule:Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/uc/webview/export/cyclone/UCCyclone;->optimizedFileFor(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x1

    move v14, v4

    .line 176
    :goto_0
    if-eqz v15, :cond_4

    if-nez p4, :cond_3

    const/4 v4, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/uc/webview/export/internal/setup/p;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v6, "skip_old_extra_kernel"

    invoke-static {v5, v6}, Lcom/uc/webview/export/internal/utility/j;->a(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    :cond_1
    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/uc/webview/export/internal/setup/p;->c:I

    const-string/jumbo v6, "checkParamSkipOldKernel:true"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Throwable;

    invoke-static {v4, v6, v7}, Lcom/uc/webview/export/cyclone/UCLogger;->print(ILjava/lang/String;[Ljava/lang/Throwable;)Z

    new-instance v4, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v6, 0xfa6

    const-string/jumbo v7, "UCM [%s] is excluded by param skip_old_extra_kernel value [%s]."

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->dataDir:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v5, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v6, v5}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 173
    :cond_2
    const/4 v4, 0x0

    move v14, v4

    goto :goto_0

    .line 176
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .line 178
    :cond_4
    sget-object v4, Lcom/uc/webview/export/utility/SetupTask;->sFirstUCM:Lcom/uc/webview/export/internal/setup/UCMPackageInfo;

    if-nez v4, :cond_5

    .line 179
    sput-object p2, Lcom/uc/webview/export/utility/SetupTask;->sFirstUCM:Lcom/uc/webview/export/internal/setup/UCMPackageInfo;

    .line 182
    :cond_5
    const-wide/16 v6, 0x0

    .line 183
    const-wide/16 v4, 0x0

    .line 184
    if-eqz p6, :cond_15

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_15

    .line 190
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->sdkShellModule:Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, p6

    invoke-static {v0, v1, v4}, Lcom/uc/webview/export/internal/setup/cw;->a(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/String;)Lcom/uc/webview/export/cyclone/UCElapseTime;

    move-result-object v6

    .line 191
    const-wide/16 v4, 0x0

    invoke-virtual {v6}, Lcom/uc/webview/export/cyclone/UCElapseTime;->getMilisCpu()J

    move-result-wide v8

    add-long/2addr v4, v8

    .line 192
    const-wide/16 v8, 0x0

    invoke-virtual {v6}, Lcom/uc/webview/export/cyclone/UCElapseTime;->getMilis()J

    move-result-wide v6

    add-long/2addr v6, v8

    move-wide v8, v6

    move-wide v6, v4

    .line 194
    :goto_2
    new-instance v10, Lcom/uc/webview/export/cyclone/UCElapseTime;

    invoke-direct {v10}, Lcom/uc/webview/export/cyclone/UCElapseTime;-><init>()V

    .line 197
    new-instance v16, Lcom/uc/webview/export/cyclone/UCLoader;

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->sdkShellModule:Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->sdkShellModule:Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->soDirPath:Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, p10

    invoke-direct {v0, v4, v5, v11, v1}, Lcom/uc/webview/export/cyclone/UCLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 203
    const-wide/16 v4, 0x0

    invoke-virtual {v10}, Lcom/uc/webview/export/cyclone/UCElapseTime;->getMilisCpu()J

    move-result-wide v12

    add-long v18, v4, v12

    .line 204
    const-wide/16 v4, 0x0

    invoke-virtual {v10}, Lcom/uc/webview/export/cyclone/UCElapseTime;->getMilis()J

    move-result-wide v10

    add-long v22, v4, v10

    .line 206
    move-object/from16 v0, v16

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->mSdkShellClassLoader:Ljava/lang/ClassLoader;

    .line 208
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/uc/webview/export/internal/setup/br;->mShellCL:Ljava/lang/ClassLoader;

    .line 209
    if-eqz p4, :cond_14

    .line 211
    if-nez p5, :cond_6

    .line 212
    :try_start_0
    const-string/jumbo v4, "com.uc.webview.browser.shell.Build"

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-static {v4, v5, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    const-string/jumbo v5, "TYPE"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p2

    iget-boolean v5, v0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->isSpecified:Z

    if-nez v5, :cond_6

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v10, "ucrelease"

    invoke-virtual {v5, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v10, "ucpatch"

    invoke-virtual {v5, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    new-instance v5, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v6, 0xfab

    const-string/jumbo v7, "ucrelease or ucpatch is expected but get [%s] to shared UCM."

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v6, v4}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v4

    new-instance v5, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v6, 0xfac

    invoke-direct {v5, v6, v4}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/Throwable;)V

    throw v5

    .line 216
    :cond_6
    const-string/jumbo v4, "com.uc.webview.browser.shell.Build"

    const-string/jumbo v5, "CORE_VERSION"

    move-object/from16 v0, p7

    move-object/from16 v1, v16

    move-object/from16 v2, p9

    invoke-static {v0, v1, v4, v5, v2}, Lcom/uc/webview/export/internal/setup/br;->a(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    const-string/jumbo v4, "com.uc.webview.browser.shell.Build$Version"

    const-string/jumbo v5, "NAME"

    move-object/from16 v0, p8

    move-object/from16 v1, v16

    move-object/from16 v2, p9

    invoke-static {v0, v1, v4, v5, v2}, Lcom/uc/webview/export/internal/setup/br;->a(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/uc/webview/export/internal/setup/br;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v5, "scst_flag"

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-static {v4}, Lcom/uc/webview/export/internal/utility/j;->b(Ljava/lang/Boolean;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 219
    const-string/jumbo v4, "sc_taucmv"

    invoke-static {v4}, Lcom/uc/webview/export/extension/UCCore;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "com.uc.webview.browser.shell.Build$Version"

    const-string/jumbo v10, "NAME"

    const-string/jumbo v11, "\\^\\^"

    move-object/from16 v0, v16

    invoke-static {v4, v0, v5, v10, v11}, Lcom/uc/webview/export/internal/setup/br;->b(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    :cond_7
    :try_start_1
    const-string/jumbo v4, "com.uc.webview.browser.shell.SdkAuthentication"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v10

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v11, Landroid/content/Context;

    aput-object v11, v4, v5

    const/4 v5, 0x1

    const-class v11, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;

    aput-object v11, v4, v5

    const/4 v5, 0x2

    const-class v11, Ljava/util/HashMap;

    aput-object v11, v4, v5

    :try_start_2
    const-string/jumbo v5, "tryLoadUCCore"

    invoke-virtual {v10, v5, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-instance v11, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/uc/webview/export/internal/setup/p;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v4

    invoke-direct {v11, v4}, Ljava/util/HashMap;-><init>(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/uc/webview/export/internal/setup/p;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v11, v4}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object p1, v4, v12

    const/4 v12, 0x1

    aput-object p2, v4, v12

    const/4 v12, 0x2

    aput-object v11, v4, v12
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_3

    :goto_3
    const/4 v11, 0x0

    :try_start_3
    invoke-static {v11, v10, v5, v4}, Lcom/uc/webview/export/internal/utility/ReflectionUtil;->invoke(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-static {v4}, Lcom/uc/webview/export/internal/utility/j;->a(Ljava/lang/Boolean;)Z

    move-result v4

    if-nez v4, :cond_8

    const/4 v4, 0x1

    :goto_4
    if-nez v4, :cond_b

    new-instance v4, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v5, 0xfb1

    const-string/jumbo v6, "tryLoadUCCore return false."

    invoke-direct {v4, v5, v6}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_3
    .catch Lcom/uc/webview/export/cyclone/UCKnownException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_5

    :catch_1
    move-exception v4

    throw v4

    :catch_2
    move-exception v4

    new-instance v5, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v6, 0xfae

    invoke-direct {v5, v6, v4}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/Throwable;)V

    throw v5

    :catch_3
    move-exception v4

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v11, Landroid/content/Context;

    aput-object v11, v4, v5

    const/4 v5, 0x1

    const-class v11, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;

    aput-object v11, v4, v5

    :try_start_4
    const-string/jumbo v5, "tryLoadUCCore"

    invoke-virtual {v10, v5, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p1, v4, v11

    const/4 v11, 0x1

    aput-object p2, v4, v11
    :try_end_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_3

    :catch_4
    move-exception v4

    new-instance v5, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v6, 0xfaf

    invoke-direct {v5, v6, v4}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/Throwable;)V

    throw v5

    :cond_8
    const/4 v4, 0x0

    goto :goto_4

    :catch_5
    move-exception v4

    const/4 v5, 0x0

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_9

    const-string/jumbo v7, "9"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_9

    add-int/lit8 v8, v7, 0x4

    :try_start_5
    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/uc/webview/export/internal/utility/j;->c(Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    move-result v5

    :cond_9
    :goto_5
    const/16 v6, 0x2328

    if-lt v5, v6, :cond_a

    new-instance v6, Lcom/uc/webview/export/internal/setup/UCSetupException;

    invoke-direct {v6, v5, v4}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/Throwable;)V

    throw v6

    :cond_a
    new-instance v5, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v6, 0xfb0

    invoke-direct {v5, v6, v4}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/Throwable;)V

    throw v5

    .line 226
    :cond_b
    if-eqz p6, :cond_14

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_14

    .line 227
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->browserIFModule:Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, p6

    invoke-static {v0, v1, v4}, Lcom/uc/webview/export/internal/setup/cw;->a(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/String;)Lcom/uc/webview/export/cyclone/UCElapseTime;

    move-result-object v4

    .line 228
    invoke-virtual {v4}, Lcom/uc/webview/export/cyclone/UCElapseTime;->getMilisCpu()J

    move-result-wide v10

    add-long/2addr v6, v10

    .line 229
    invoke-virtual {v4}, Lcom/uc/webview/export/cyclone/UCElapseTime;->getMilis()J

    move-result-wide v4

    add-long/2addr v8, v4

    move-wide v12, v6

    move-wide v10, v8

    .line 234
    :goto_6
    if-eqz p6, :cond_c

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_c

    .line 235
    new-instance v4, Lcom/uc/webview/export/cyclone/UCElapseTime;

    invoke-direct {v4}, Lcom/uc/webview/export/cyclone/UCElapseTime;-><init>()V

    .line 236
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/uc/webview/export/internal/setup/br;->a(Lcom/uc/webview/export/internal/setup/UCMPackageInfo;Landroid/content/Context;Ljava/lang/ClassLoader;I)V

    .line 237
    invoke-virtual {v4}, Lcom/uc/webview/export/cyclone/UCElapseTime;->getMilisCpu()J

    move-result-wide v6

    add-long/2addr v12, v6

    .line 238
    invoke-virtual {v4}, Lcom/uc/webview/export/cyclone/UCElapseTime;->getMilis()J

    move-result-wide v4

    add-long/2addr v10, v4

    .line 242
    :cond_c
    if-eqz p6, :cond_d

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_d

    .line 243
    new-instance v4, Lcom/uc/webview/export/cyclone/UCElapseTime;

    invoke-direct {v4}, Lcom/uc/webview/export/cyclone/UCElapseTime;-><init>()V

    .line 244
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/uc/webview/export/internal/setup/br;->b(Lcom/uc/webview/export/internal/setup/UCMPackageInfo;Landroid/content/Context;Ljava/lang/ClassLoader;I)V

    .line 245
    invoke-virtual {v4}, Lcom/uc/webview/export/cyclone/UCElapseTime;->getMilisCpu()J

    move-result-wide v6

    add-long/2addr v12, v6

    .line 246
    invoke-virtual {v4}, Lcom/uc/webview/export/cyclone/UCElapseTime;->getMilis()J

    move-result-wide v4

    add-long/2addr v10, v4

    .line 250
    :cond_d
    if-eqz p6, :cond_e

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_e

    .line 251
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->coreImplModule:Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, p6

    invoke-static {v0, v1, v4}, Lcom/uc/webview/export/internal/setup/cw;->a(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/String;)Lcom/uc/webview/export/cyclone/UCElapseTime;

    move-result-object v4

    .line 252
    invoke-virtual {v4}, Lcom/uc/webview/export/cyclone/UCElapseTime;->getMilisCpu()J

    move-result-wide v6

    add-long/2addr v12, v6

    .line 253
    invoke-virtual {v4}, Lcom/uc/webview/export/cyclone/UCElapseTime;->getMilis()J

    move-result-wide v4

    add-long/2addr v10, v4

    .line 257
    :cond_e
    new-instance v5, Lcom/uc/webview/export/cyclone/UCElapseTime;

    invoke-direct {v5}, Lcom/uc/webview/export/cyclone/UCElapseTime;-><init>()V

    .line 258
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p4, :cond_10

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->browserIFModule:Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v4, :cond_10

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->browserIFModule:Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, ":"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_7
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->coreImplModule:Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 259
    new-instance v7, Lcom/uc/webview/export/cyclone/UCLoader;

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->coreImplModule:Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->soDirPath:Ljava/lang/String;

    move-object/from16 v0, p10

    invoke-direct {v7, v6, v4, v8, v0}, Lcom/uc/webview/export/cyclone/UCLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 264
    invoke-virtual {v5}, Lcom/uc/webview/export/cyclone/UCElapseTime;->getMilisCpu()J

    move-result-wide v8

    add-long v20, v18, v8

    .line 265
    invoke-virtual {v5}, Lcom/uc/webview/export/cyclone/UCElapseTime;->getMilis()J

    move-result-wide v4

    add-long v18, v22, v4

    .line 267
    move-object/from16 v0, p2

    iput-object v7, v0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->mCoreClassLoader:Ljava/lang/ClassLoader;

    .line 269
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/uc/webview/export/internal/setup/br;->mCL:Ljava/lang/ClassLoader;

    .line 270
    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/uc/webview/export/internal/setup/br;->a:Z

    .line 271
    if-nez v14, :cond_f

    const-wide/16 v4, 0x3e8

    cmp-long v4, v18, v4

    if-ltz v4, :cond_11

    :cond_f
    const/4 v4, 0x1

    :goto_8
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/uc/webview/export/internal/setup/br;->b:Z

    .line 273
    const-string/jumbo v6, "sdk_vrf"

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/uc/webview/export/internal/setup/br;->b:Z

    if-eqz p4, :cond_12

    const-string/jumbo v9, "sdk"

    :goto_9
    move-object/from16 v5, p0

    move-object/from16 v8, p6

    invoke-virtual/range {v5 .. v13}, Lcom/uc/webview/export/internal/setup/br;->a(Ljava/lang/String;ZLjava/lang/Integer;Ljava/lang/String;JJ)V

    .line 274
    const-string/jumbo v14, "sdk_opt"

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/uc/webview/export/internal/setup/br;->b:Z

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    if-eqz p4, :cond_13

    const-string/jumbo v17, "sdk"

    :goto_a
    move-object/from16 v13, p0

    invoke-virtual/range {v13 .. v21}, Lcom/uc/webview/export/internal/setup/br;->a(Ljava/lang/String;ZLjava/lang/Integer;Ljava/lang/String;JJ)V

    .line 276
    const-string/jumbo v4, "ThinEnvTask"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "tryEnv Time: VERIFY:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " DEXOPT:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/uc/webview/export/internal/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    new-instance v4, Landroid/util/Pair;

    const-string/jumbo v5, "sdk_stp_s"

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/uc/webview/export/internal/setup/br;->callbackStat(Landroid/util/Pair;)V

    .line 278
    return-void

    .line 258
    :cond_10
    const-string/jumbo v4, ""

    goto/16 :goto_7

    .line 271
    :cond_11
    const/4 v4, 0x0

    goto :goto_8

    .line 273
    :cond_12
    const-string/jumbo v9, "ucm"

    goto :goto_9

    .line 274
    :cond_13
    const-string/jumbo v17, "ucm"

    goto :goto_a

    :catch_6
    move-exception v6

    goto/16 :goto_5

    :cond_14
    move-wide v12, v6

    move-wide v10, v8

    goto/16 :goto_6

    :cond_15
    move-wide v8, v6

    move-wide v6, v4

    goto/16 :goto_2
.end method

.method private a(Landroid/content/Context;Lcom/uc/webview/export/internal/setup/UCMPackageInfo;)Z
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 108
    const-string/jumbo v0, "ucmZipFile"

    invoke-virtual {p0, v0}, Lcom/uc/webview/export/internal/setup/br;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 110
    iget-object v1, p2, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->dataDir:Ljava/lang/String;

    invoke-static {v1}, Lcom/uc/webview/export/internal/utility/j;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 111
    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/j;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 112
    iget-object v1, p2, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->dataDir:Ljava/lang/String;

    invoke-static {p1, v1, v0}, Lcom/uc/webview/export/internal/setup/br;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 154
    :goto_0
    return v0

    .line 114
    :cond_0
    const-string/jumbo v0, "ucmUpdUrl"

    invoke-virtual {p0, v0}, Lcom/uc/webview/export/internal/setup/br;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 115
    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/j;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 116
    const/16 v1, 0x2712

    new-array v4, v2, [Ljava/lang/Object;

    aput-object p1, v4, v3

    invoke-static {v1, v4}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 118
    iget-object v4, p2, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 119
    new-instance v4, Ljava/io/File;

    .line 120
    invoke-static {v0}, Lcom/uc/webview/export/cyclone/UCCyclone;->getSourceHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 122
    iget-object v1, p2, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    .line 123
    if-nez v1, :cond_1

    move v0, v2

    .line 124
    goto :goto_0

    .line 126
    :cond_1
    sget-boolean v1, Lcom/uc/webview/export/internal/SDKFactory;->m:Z

    if-nez v1, :cond_2

    move v0, v3

    .line 127
    goto :goto_0

    .line 129
    :cond_2
    const-string/jumbo v1, "dlChecker"

    invoke-virtual {p0, v1}, Lcom/uc/webview/export/internal/setup/br;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Callable;

    .line 131
    :try_start_0
    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 132
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/j;->a(Ljava/lang/String;Ljava/net/URL;)Landroid/util/Pair;

    move-result-object v1

    .line 133
    new-instance v5, Ljava/io/File;

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    .line 134
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v6, v7, v0, v1}, Lcom/uc/webview/export/cyclone/UCCyclone;->getSourceHash(JJ)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 136
    iget-object v0, p2, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_4

    move v0, v2

    .line 137
    goto/16 :goto_0

    :cond_3
    move v0, v3

    .line 142
    goto/16 :goto_0

    .line 145
    :catch_0
    move-exception v0

    move v0, v3

    goto/16 :goto_0

    :cond_4
    move v0, v3

    .line 154
    goto/16 :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 90
    const/16 v0, 0x2713

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p0, v3, v2

    invoke-static {v0, v3}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 92
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 93
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 94
    new-instance v4, Ljava/io/File;

    .line 95
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/uc/webview/export/cyclone/UCCyclone;->getSourceHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 96
    new-instance v0, Ljava/io/File;

    .line 97
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Lcom/uc/webview/export/cyclone/UCCyclone;->getSourceHash(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v4, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 99
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 104
    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 26

    .prologue
    .line 35
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/uc/webview/export/internal/setup/br;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v3, "CONTEXT"

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    .line 36
    sget-boolean v7, Lcom/uc/webview/export/internal/SDKFactory;->s:Z

    .line 38
    const/4 v11, 0x0

    .line 40
    new-instance v5, Lcom/uc/webview/export/cyclone/UCElapseTime;

    invoke-direct {v5}, Lcom/uc/webview/export/cyclone/UCElapseTime;-><init>()V

    .line 41
    sget-object v2, Lcom/uc/webview/export/internal/setup/br;->d:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "is sharecore task : "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x2715

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v8}, Lcom/uc/webview/export/internal/setup/br;->invokeO(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lcom/uc/webview/export/internal/setup/be;->a(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const/16 v2, 0x2715

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/uc/webview/export/internal/setup/br;->invokeO(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/uc/webview/export/internal/setup/be;->a(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 43
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/uc/webview/export/internal/setup/br;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v3, v2}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->listFromSharedApps(Landroid/content/Context;Ljava/util/concurrent/ConcurrentHashMap;)Ljava/util/List;

    move-result-object v2

    move-object v4, v2

    .line 48
    :goto_0
    const-string/jumbo v2, "ThinEnvTask"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "UCMPackageInfo listUCMS:"

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/uc/webview/export/cyclone/UCElapseTime;->getMilis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/uc/webview/export/internal/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_8

    .line 50
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/uc/webview/export/internal/setup/br;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v5, "VERIFY_POLICY"

    invoke-virtual {v2, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 51
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/uc/webview/export/internal/setup/br;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v5, "chkDecFinish"

    invoke-virtual {v2, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-static {v2}, Lcom/uc/webview/export/internal/utility/j;->a(Ljava/lang/Boolean;)Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v5, 0x1

    .line 52
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/uc/webview/export/internal/setup/br;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v6, "sdk_setup"

    invoke-virtual {v2, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-static {v2}, Lcom/uc/webview/export/internal/utility/j;->a(Ljava/lang/Boolean;)Z

    move-result v2

    if-nez v2, :cond_5

    const/4 v6, 0x1

    .line 53
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/uc/webview/export/internal/setup/br;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v9, "core_ver_excludes"

    invoke-virtual {v2, v9}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 54
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/uc/webview/export/internal/setup/br;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v10, "sdk_ver_excludes"

    invoke-virtual {v2, v10}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 55
    const-string/jumbo v2, "core_ver_excludes"

    invoke-static {v2}, Lcom/uc/webview/export/extension/UCCore;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 56
    const-string/jumbo v2, "sdk_ver_excludes"

    invoke-static {v2}, Lcom/uc/webview/export/extension/UCCore;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 59
    const-class v2, Lcom/uc/webview/export/internal/setup/br;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v12

    .line 63
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v25

    move-object/from16 v24, v11

    :goto_3
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;

    .line 66
    :try_start_0
    invoke-static/range {v21 .. v21}, Lcom/uc/webview/export/internal/utility/j;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static/range {v20 .. v20}, Lcom/uc/webview/export/internal/utility/j;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 67
    const-string/jumbo v11, ","

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v12}, Lcom/uc/webview/export/internal/setup/br;->a(Landroid/content/Context;Lcom/uc/webview/export/internal/setup/UCMPackageInfo;ZZZLjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    :try_end_0
    .catch Lcom/uc/webview/export/internal/setup/UCSetupException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 80
    :cond_0
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/uc/webview/export/internal/setup/br;->mCL:Ljava/lang/ClassLoader;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/uc/webview/export/internal/setup/br;->mUCM:Lcom/uc/webview/export/internal/setup/UCMPackageInfo;

    if-nez v2, :cond_7

    .line 81
    :cond_1
    if-nez v24, :cond_2

    .line 82
    new-instance v24, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v2, 0xbbc

    const-string/jumbo v3, "UCM packages not found."

    move-object/from16 v0, v24

    invoke-direct {v0, v2, v3}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    .line 84
    :cond_2
    throw v24

    .line 45
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/uc/webview/export/internal/setup/br;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v3, v2}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->a(Landroid/content/Context;Ljava/util/concurrent/ConcurrentHashMap;)Ljava/util/List;

    move-result-object v2

    move-object v4, v2

    goto/16 :goto_0

    .line 51
    :cond_4
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 52
    :cond_5
    const/4 v6, 0x0

    goto :goto_2

    .line 69
    :cond_6
    :try_start_1
    const-string/jumbo v22, "\\^\\^"

    move-object/from16 v13, p0

    move-object v14, v3

    move-object v15, v4

    move/from16 v16, v5

    move/from16 v17, v6

    move/from16 v18, v7

    move-object/from16 v19, v8

    move-object/from16 v23, v12

    invoke-direct/range {v13 .. v23}, Lcom/uc/webview/export/internal/setup/br;->a(Landroid/content/Context;Lcom/uc/webview/export/internal/setup/UCMPackageInfo;ZZZLjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    :try_end_1
    .catch Lcom/uc/webview/export/internal/setup/UCSetupException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 72
    :catch_0
    move-exception v2

    move-object/from16 v24, v2

    .line 76
    goto :goto_3

    .line 74
    :catch_1
    move-exception v2

    move-object v4, v2

    .line 75
    new-instance v2, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v11, 0xbbb

    invoke-direct {v2, v11, v4}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/Throwable;)V

    move-object/from16 v24, v2

    .line 77
    goto :goto_3

    .line 86
    :cond_7
    return-void

    :cond_8
    move-object/from16 v24, v11

    goto :goto_4
.end method
