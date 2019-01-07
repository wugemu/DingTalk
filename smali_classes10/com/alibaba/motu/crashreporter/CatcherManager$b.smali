.class final Lcom/alibaba/motu/crashreporter/CatcherManager$b;
.super Ljava/lang/Object;
.source "CatcherManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/motu/crashreporter/CatcherManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field volatile a:Z

.field volatile b:Z

.field c:Ljava/lang/String;

.field d:Ljava/io/File;

.field e:Ljava/lang/String;

.field f:Ljava/io/File;

.field g:Ljava/lang/String;

.field h:Ljava/io/File;

.field i:Ljava/lang/String;

.field j:Ljava/io/File;

.field k:Landroid/content/Context;

.field l:Z

.field m:Landroid/app/Application$ActivityLifecycleCallbacks;

.field final synthetic n:Lcom/alibaba/motu/crashreporter/CatcherManager;


# direct methods
.method public constructor <init>(Lcom/alibaba/motu/crashreporter/CatcherManager;Landroid/content/Context;)V
    .locals 9
    .param p1, "this$0"    # Lcom/alibaba/motu/crashreporter/CatcherManager;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    .line 318
    iput-object p1, p0, Lcom/alibaba/motu/crashreporter/CatcherManager$b;->n:Lcom/alibaba/motu/crashreporter/CatcherManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 303
    iput-boolean v8, p0, Lcom/alibaba/motu/crashreporter/CatcherManager$b;->a:Z

    .line 304
    iput-boolean v8, p0, Lcom/alibaba/motu/crashreporter/CatcherManager$b;->b:Z

    .line 316
    iput-boolean v8, p0, Lcom/alibaba/motu/crashreporter/CatcherManager$b;->l:Z

    .line 353
    new-instance v1, Lcom/alibaba/motu/crashreporter/CatcherManager$b$1;

    invoke-direct {v1, p0}, Lcom/alibaba/motu/crashreporter/CatcherManager$b$1;-><init>(Lcom/alibaba/motu/crashreporter/CatcherManager$b;)V

    iput-object v1, p0, Lcom/alibaba/motu/crashreporter/CatcherManager$b;->m:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 319
    iput-object p2, p0, Lcom/alibaba/motu/crashreporter/CatcherManager$b;->k:Landroid/content/Context;

    .line 321
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/alibaba/motu/crashreporter/CatcherManager;->e:Lhtq;

    iget-object v2, v2, Lhtq;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "crashsdk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/motu/crashreporter/CatcherManager$b;->c:Ljava/lang/String;

    .line 322
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alibaba/motu/crashreporter/CatcherManager$b;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "tags"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/motu/crashreporter/CatcherManager$b;->e:Ljava/lang/String;

    .line 323
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alibaba/motu/crashreporter/CatcherManager$b;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "logs"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/motu/crashreporter/CatcherManager$b;->g:Ljava/lang/String;

    .line 324
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alibaba/motu/crashreporter/CatcherManager$b;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "backup"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/motu/crashreporter/CatcherManager$b;->i:Ljava/lang/String;

    .line 325
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/alibaba/motu/crashreporter/CatcherManager$b;->c:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/alibaba/motu/crashreporter/CatcherManager$b;->d:Ljava/io/File;

    .line 326
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/alibaba/motu/crashreporter/CatcherManager$b;->e:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/alibaba/motu/crashreporter/CatcherManager$b;->f:Ljava/io/File;

    .line 327
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/alibaba/motu/crashreporter/CatcherManager$b;->g:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/alibaba/motu/crashreporter/CatcherManager$b;->h:Ljava/io/File;

    .line 328
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/alibaba/motu/crashreporter/CatcherManager$b;->i:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/alibaba/motu/crashreporter/CatcherManager$b;->j:Ljava/io/File;

    .line 329
    iget-object v1, p0, Lcom/alibaba/motu/crashreporter/CatcherManager$b;->d:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/motu/crashreporter/CatcherManager$b;->d:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 330
    :cond_0
    iget-object v1, p0, Lcom/alibaba/motu/crashreporter/CatcherManager$b;->f:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/motu/crashreporter/CatcherManager$b;->f:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 331
    :cond_1
    iget-object v1, p0, Lcom/alibaba/motu/crashreporter/CatcherManager$b;->h:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/motu/crashreporter/CatcherManager$b;->h:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 332
    :cond_2
    iget-object v1, p0, Lcom/alibaba/motu/crashreporter/CatcherManager$b;->j:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/alibaba/motu/crashreporter/CatcherManager$b;->j:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 1397
    :cond_3
    :try_start_0
    new-instance v1, Ljava/io/File;

    const/4 v2, 0x0

    const-string/jumbo v3, "libcrashsdk.so"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1398
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1399
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 1404
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1405
    iget-object v1, p0, Lcom/alibaba/motu/crashreporter/CatcherManager$b;->c:Ljava/lang/String;

    const-string/jumbo v4, "tags"

    const-string/jumbo v5, "logs"

    const-string/jumbo v6, "backup"

    invoke-static {v1, v4, v5, v6}, Lcom/uc/crashsdk/JNIBridge;->nativeSetFolderNames(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1406
    iget-object v1, p0, Lcom/alibaba/motu/crashreporter/CatcherManager$b;->n:Lcom/alibaba/motu/crashreporter/CatcherManager;

    iget-object v1, v1, Lcom/alibaba/motu/crashreporter/CatcherManager;->c:Lhtn;

    const-string/jumbo v4, "PROCESS_NAME"

    invoke-virtual {v1, v4}, Lhtn;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1407
    invoke-static {v1}, Lhtr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/uc/crashsdk/JNIBridge;->nativeSetProcessNames(Ljava/lang/String;Ljava/lang/String;)V

    .line 1408
    iget-object v1, p0, Lcom/alibaba/motu/crashreporter/CatcherManager$b;->n:Lcom/alibaba/motu/crashreporter/CatcherManager;

    iget-object v1, v1, Lcom/alibaba/motu/crashreporter/CatcherManager;->c:Lhtn;

    const-string/jumbo v4, "APP_VERSION"

    invoke-virtual {v1, v4}, Lhtn;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/alibaba/motu/crashreporter/CatcherManager$b;->n:Lcom/alibaba/motu/crashreporter/CatcherManager;

    iget-object v4, v4, Lcom/alibaba/motu/crashreporter/CatcherManager;->c:Lhtn;

    const-string/jumbo v5, "APP_SUBVERSION"

    const-string/jumbo v6, ""

    .line 1409
    invoke-virtual {v4, v5, v6}, Lhtn;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/motu/crashreporter/CatcherManager$b;->n:Lcom/alibaba/motu/crashreporter/CatcherManager;

    iget-object v5, v5, Lcom/alibaba/motu/crashreporter/CatcherManager;->c:Lhtn;

    const-string/jumbo v6, "APP_BUILD"

    const-string/jumbo v7, ""

    .line 1410
    invoke-virtual {v5, v6, v7}, Lhtn;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, ""

    .line 1408
    invoke-static {v1, v4, v5, v6}, Lcom/uc/crashsdk/JNIBridge;->nativeSetVersionInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1412
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string/jumbo v5, ""

    invoke-static {v1, v4, v5}, Lcom/uc/crashsdk/JNIBridge;->nativeSetMobileInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1413
    const/4 v1, 0x1

    const/4 v4, 0x1

    const-wide/32 v6, 0x100000

    invoke-static {v1, v4, v6, v7}, Lcom/uc/crashsdk/JNIBridge;->nativeSetLogStrategy(ZZJ)V

    .line 1414
    const-string/jumbo v1, ""

    const-string/jumbo v4, ""

    const-string/jumbo v5, "CrashSDK"

    invoke-static {v1, v4, v5}, Lcom/uc/crashsdk/JNIBridge;->nativeSetCrashLogFileNames(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1415
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "CrashSDK nativeSetCrashLogFileNames complete elapsed time:"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1416
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1418
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1419
    const-string/jumbo v1, ""

    const-string/jumbo v4, ""

    const-string/jumbo v5, "native"

    invoke-static {v1, v4, v5}, Lcom/uc/crashsdk/JNIBridge;->nativeSetCrashLogFileNames(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1420
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "CrashSDK nativeSetCrashLogFileNames complete elapsed time:"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1421
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1423
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1424
    iget-object v1, p0, Lcom/alibaba/motu/crashreporter/CatcherManager$b;->k:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    invoke-static {v1, v4, v5}, Lcom/uc/crashsdk/JNIBridge;->nativeSetPackageInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1425
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "CrashSDK nativeSetPackageInfo "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alibaba/motu/crashreporter/CatcherManager$b;->k:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " complete elapsed time:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1426
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1428
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1429
    invoke-static {}, Lcom/uc/crashsdk/JNIBridge;->nativeInitNative()V

    .line 1430
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "CrashSDK nativeInitNative complete elapsed time:"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1434
    const/4 v1, 0x0

    const-string/jumbo v2, ".gz"

    const/high16 v3, 0x100000

    invoke-static {v1, v2, v3}, Lcom/uc/crashsdk/JNIBridge;->nativeSetZip(ZLjava/lang/String;I)V

    .line 1438
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alibaba/motu/crashreporter/CatcherManager$b;->a:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    :goto_1
    invoke-static {v8}, Lcom/uc/crashsdk/JNIBridge;->nativeSetForeground(Z)V

    .line 339
    if-eqz p2, :cond_4

    .line 341
    instance-of v1, p2, Landroid/app/Application;

    if-eqz v1, :cond_6

    move-object v0, p2

    .line 342
    check-cast v0, Landroid/app/Application;

    .line 346
    .local v0, "app":Landroid/app/Application;
    :goto_2
    if-eqz v0, :cond_4

    .line 348
    iget-object v1, p0, Lcom/alibaba/motu/crashreporter/CatcherManager$b;->m:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 351
    .end local v0    # "app":Landroid/app/Application;
    :cond_4
    return-void

    .line 1401
    :cond_5
    :try_start_1
    const-string/jumbo v1, "crashsdk"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1439
    :catch_0
    move-exception v1

    .line 1440
    const-string/jumbo v2, "init uc crashsdk"

    invoke-static {v2, v1}, Lhtj;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 344
    :cond_6
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .restart local v0    # "app":Landroid/app/Application;
    goto :goto_2
.end method


# virtual methods
.method a()V
    .locals 19

    .prologue
    .line 494
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 496
    .local v14, "start":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/motu/crashreporter/CatcherManager$b;->h:Ljava/io/File;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/motu/crashreporter/CatcherManager$b;->h:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 497
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/motu/crashreporter/CatcherManager$b;->h:Ljava/io/File;

    new-instance v3, Lcom/alibaba/motu/crashreporter/CatcherManager$b$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/alibaba/motu/crashreporter/CatcherManager$b$2;-><init>(Lcom/alibaba/motu/crashreporter/CatcherManager$b;)V

    invoke-virtual {v2, v3}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v13

    .line 511
    .local v13, "jniLogFiles":[Ljava/io/File;
    if-eqz v13, :cond_0

    array-length v2, v13

    if-lez v2, :cond_0

    .line 512
    array-length v0, v13

    move/from16 v17, v0

    const/4 v2, 0x0

    move/from16 v16, v2

    :goto_0
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_0

    aget-object v12, v13, v16

    .line 513
    .local v12, "jniLogFile":Ljava/io/File;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 514
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/motu/crashreporter/CatcherManager$b;->n:Lcom/alibaba/motu/crashreporter/CatcherManager;

    iget-object v0, v2, Lcom/alibaba/motu/crashreporter/CatcherManager;->f:Lhtm;

    move-object/from16 v18, v0

    .line 2083
    invoke-virtual/range {v18 .. v18}, Lhtm;->c()V

    .line 2084
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 2085
    const-string/jumbo v6, "scan"

    .line 2086
    move-object/from16 v0, v18

    iget-object v2, v0, Lhtm;->b:Lhtn;

    const-string/jumbo v3, "UTDID"

    invoke-virtual {v2, v3}, Lhtn;->b(Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v2, v0, Lhtm;->b:Lhtn;

    const-string/jumbo v3, "APP_KEY"

    .line 2087
    invoke-virtual {v2, v3}, Lhtn;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    iget-object v3, v0, Lhtm;->b:Lhtn;

    const-string/jumbo v7, "APP_VERSION"

    .line 2088
    invoke-virtual {v3, v7}, Lhtn;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v7, "native"

    .line 2086
    invoke-static/range {v2 .. v7}, Lhte;->a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2090
    move-object/from16 v0, v18

    iget-object v3, v0, Lhtm;->d:Lhtq;

    invoke-virtual {v3, v2}, Lhtq;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 2092
    invoke-virtual {v12, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 2093
    move-object/from16 v0, v18

    iget-object v3, v0, Lhtm;->a:Landroid/content/Context;

    move-object/from16 v0, v18

    iget-object v4, v0, Lhtm;->b:Lhtn;

    const/4 v5, 0x0

    invoke-static {v3, v2, v4, v5}, Lhte;->a(Landroid/content/Context;Ljava/io/File;Lhtn;Z)Lhte;

    move-result-object v8

    .line 516
    .local v8, "crashReport":Lhte;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/motu/crashreporter/CatcherManager$b;->n:Lcom/alibaba/motu/crashreporter/CatcherManager;

    iget-object v2, v2, Lcom/alibaba/motu/crashreporter/CatcherManager;->g:Lhtp;

    invoke-virtual {v2, v8}, Lhtp;->a(Lhte;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 512
    add-int/lit8 v2, v16, 0x1

    move/from16 v16, v2

    goto :goto_0

    .line 520
    .end local v8    # "crashReport":Lhte;
    .end local v12    # "jniLogFile":Ljava/io/File;
    .end local v13    # "jniLogFiles":[Ljava/io/File;
    :catch_0
    move-exception v9

    .line 521
    .local v9, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "find uc native log."

    invoke-static {v2, v9}, Lhtj;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 523
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 524
    .local v10, "end":J
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "find uc native log complete elapsed time:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v4, v10, v14

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    return-void
.end method
