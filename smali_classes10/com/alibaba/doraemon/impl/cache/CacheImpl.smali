.class public Lcom/alibaba/doraemon/impl/cache/CacheImpl;
.super Ljava/lang/Object;
.source "CacheImpl.java"

# interfaces
.implements Lcom/alibaba/doraemon/cache/Cache;


# static fields
.field private static final CACHETRUNCATEDSIZE:I = 0x80

.field private static final DEFAULT_DIR:Ljava/lang/String; = ""

.field private static final FALSE:Ljava/lang/String; = "f"

.field private static final TRUE:Ljava/lang/String; = "t"


# instance fields
.field private final APPCACHE_PROPORTION:I

.field private final CACHE_FILE:Ljava/lang/String;

.field private final MIN_APPCACHE_CAPACITY:I

.field private final MIN_SDCARD_CAPACITY:I

.field private final SDCARD_PROPORTION:I

.field private final TAG:Ljava/lang/String;

.field private mAppCacheFactor:F

.field private mAppContext:Landroid/content/Context;

.field private mCache:Ljkz;

.field private mCacheDir:Ljava/lang/String;

.field private mHugeCache:Lcom/alibaba/doraemon/impl/cache/DiskLruCache;

.field private mKeyLock:Lcom/alibaba/doraemon/utils/KeyLock;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/doraemon/utils/KeyLock",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSdcardFactor:F


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string/jumbo v0, "Cache"

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/cache/CacheImpl;->TAG:Ljava/lang/String;

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/cache/CacheImpl;->mCacheDir:Ljava/lang/String;

    .line 41
    iput v1, p0, Lcom/alibaba/doraemon/impl/cache/CacheImpl;->mSdcardFactor:F

    .line 42
    iput v1, p0, Lcom/alibaba/doraemon/impl/cache/CacheImpl;->mAppCacheFactor:F

    .line 43
    const/16 v0, 0xcc

    iput v0, p0, Lcom/alibaba/doraemon/impl/cache/CacheImpl;->SDCARD_PROPORTION:I

    .line 45
    const/16 v0, 0x200

    iput v0, p0, Lcom/alibaba/doraemon/impl/cache/CacheImpl;->APPCACHE_PROPORTION:I

    .line 48
    const/high16 v0, 0x500000

    iput v0, p0, Lcom/alibaba/doraemon/impl/cache/CacheImpl;->MIN_APPCACHE_CAPACITY:I

    .line 50
    const/high16 v0, 0x1400000

    iput v0, p0, Lcom/alibaba/doraemon/impl/cache/CacheImpl;->MIN_SDCARD_CAPACITY:I

    .line 52
    const-string/jumbo v0, "chocolate.cache"

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/cache/CacheImpl;->CACHE_FILE:Ljava/lang/String;

    .line 59
    new-instance v0, Lcom/alibaba/doraemon/utils/KeyLock;

    invoke-direct {v0}, Lcom/alibaba/doraemon/utils/KeyLock;-><init>()V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/cache/CacheImpl;->mKeyLock:Lcom/alibaba/doraemon/utils/KeyLock;

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/cache/CacheImpl;->mAppContext:Landroid/content/Context;

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/doraemon/impl/cache/CacheImpl;)Lcom/alibaba/doraemon/impl/cache/DiskLruCache;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/cache/CacheImpl;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/cache/CacheImpl;->mHugeCache:Lcom/alibaba/doraemon/impl/cache/DiskLruCache;

    return-object v0
.end method

.method private declared-synchronized init()Z
    .locals 22

    .prologue
    .line 495
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/doraemon/impl/cache/CacheImpl;->mCacheDir:Ljava/lang/String;

    .line 496
    .local v7, "dir":Ljava/lang/String;
    if-nez v7, :cond_0

    .line 497
    const-string/jumbo v7, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 500
    :cond_0
    const/4 v13, 0x0

    .line 502
    .local v13, "state":Ljava/lang/String;
    :try_start_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v13

    .line 508
    :goto_0
    if-eqz v13, :cond_4

    :try_start_2
    const-string/jumbo v15, "mounted"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    move-object/from16 v0, p0

    iget v15, v0, Lcom/alibaba/doraemon/impl/cache/CacheImpl;->mSdcardFactor:F

    const/16 v18, 0x0

    cmpl-float v15, v15, v18

    if-eqz v15, :cond_4

    .line 511
    const/4 v11, 0x0

    .line 512
    .local v11, "sdcardPath":Ljava/lang/String;
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 v18, 0x8

    move/from16 v0, v18

    if-lt v15, v0, :cond_8

    .line 513
    const/4 v5, 0x0

    .line 516
    .local v5, "cacheDir":Ljava/io/File;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/doraemon/impl/cache/CacheImpl;->mAppContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v5

    .line 521
    :goto_1
    if-eqz v5, :cond_1

    .line 522
    :try_start_4
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    .line 525
    :cond_1
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 526
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v15

    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v11

    .line 535
    :cond_2
    :goto_2
    const-wide/16 v16, 0x0

    .line 537
    .local v16, "totalSize":J
    :try_start_5
    new-instance v12, Landroid/os/StatFs;

    invoke-direct {v12, v11}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 539
    .local v12, "sfs":Landroid/os/StatFs;
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v18, 0x12

    move/from16 v0, v18

    if-lt v15, v0, :cond_9

    .line 540
    invoke-virtual {v12}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v18

    invoke-virtual {v12}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v20

    mul-long v16, v18, v20

    .line 544
    :goto_3
    move-wide/from16 v0, v16

    long-to-float v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/doraemon/impl/cache/CacheImpl;->mSdcardFactor:F

    move/from16 v18, v0
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    mul-float v15, v15, v18

    const/high16 v18, 0x434c0000    # 204.0f

    div-float v15, v15, v18

    float-to-long v0, v15

    move-wide/from16 v16, v0

    .line 550
    .end local v12    # "sfs":Landroid/os/StatFs;
    :goto_4
    const-wide/32 v18, 0x1400000

    cmp-long v15, v16, v18

    if-gez v15, :cond_3

    const-wide/32 v16, 0x1400000

    .line 555
    :cond_3
    :try_start_6
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v11, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    .local v8, "dirFile":Ljava/io/File;
    const-string/jumbo v15, "TAG"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-string/jumbo v20, "init dirFile="

    aput-object v20, v18, v19

    const/16 v19, 0x1

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v18 .. v18}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lcom/alibaba/doraemon/DoraemonLog;->outLogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/doraemon/impl/cache/CacheImpl;->mAppContext:Landroid/content/Context;

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v19, "chocolate.cache"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v15, v1, v2}, Lcom/alibaba/doraemon/impl/cache/CacheImpl;->processIndependent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 559
    .local v6, "cacheFile":Ljava/lang/String;
    move-wide/from16 v0, v16

    long-to-int v15, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-static {v6, v15, v0}, Ljkz;->a(Ljava/lang/String;IZ)Ljkz;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/alibaba/doraemon/impl/cache/CacheImpl;->mCache:Ljkz;

    .line 560
    const/4 v15, 0x1

    const/16 v18, 0x2

    const-wide/16 v20, 0x5

    mul-long v20, v20, v16

    move/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-static {v8, v15, v0, v1, v2}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->open(Ljava/io/File;IIJ)Lcom/alibaba/doraemon/impl/cache/DiskLruCache;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/alibaba/doraemon/impl/cache/CacheImpl;->mHugeCache:Lcom/alibaba/doraemon/impl/cache/DiskLruCache;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 567
    .end local v5    # "cacheDir":Ljava/io/File;
    .end local v6    # "cacheFile":Ljava/lang/String;
    .end local v8    # "dirFile":Ljava/io/File;
    .end local v11    # "sdcardPath":Ljava/lang/String;
    .end local v16    # "totalSize":J
    :cond_4
    :goto_5
    :try_start_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/doraemon/impl/cache/CacheImpl;->mCache:Ljkz;

    if-eqz v15, :cond_5

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/doraemon/impl/cache/CacheImpl;->mHugeCache:Lcom/alibaba/doraemon/impl/cache/DiskLruCache;

    if-nez v15, :cond_7

    :cond_5
    move-object/from16 v0, p0

    iget v15, v0, Lcom/alibaba/doraemon/impl/cache/CacheImpl;->mAppCacheFactor:F

    const/16 v18, 0x0

    cmpl-float v15, v15, v18

    if-eqz v15, :cond_7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/doraemon/impl/cache/CacheImpl;->mAppContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v15

    if-eqz v15, :cond_7

    .line 568
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/doraemon/impl/cache/CacheImpl;->mAppContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v15

    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 569
    .local v4, "appPath":Ljava/lang/String;
    new-instance v12, Landroid/os/StatFs;

    invoke-direct {v12, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 570
    .restart local v12    # "sfs":Landroid/os/StatFs;
    const-wide/16 v16, 0x0

    .line 572
    .restart local v16    # "totalSize":J
    :try_start_8
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v18, 0x12

    move/from16 v0, v18

    if-lt v15, v0, :cond_a

    .line 573
    invoke-virtual {v12}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v18

    invoke-virtual {v12}, Landroid/os/StatFs;->getBlockCountLong()J
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-wide v20

    mul-long v16, v18, v20

    .line 579
    :goto_6
    move-wide/from16 v0, v16

    long-to-float v15, v0

    :try_start_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/doraemon/impl/cache/CacheImpl;->mAppCacheFactor:F

    move/from16 v18, v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    mul-float v15, v15, v18

    const/high16 v18, 0x44000000    # 512.0f

    div-float v15, v15, v18

    float-to-long v0, v15

    move-wide/from16 v16, v0

    .line 580
    const-wide/32 v18, 0x500000

    cmp-long v15, v16, v18

    if-gez v15, :cond_6

    const-wide/32 v16, 0x500000

    .line 585
    :cond_6
    :try_start_a
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    .restart local v8    # "dirFile":Ljava/io/File;
    const-string/jumbo v15, "TAG"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-string/jumbo v20, "init dirFile="

    aput-object v20, v18, v19

    const/16 v19, 0x1

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v18 .. v18}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lcom/alibaba/doraemon/DoraemonLog;->outLogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/doraemon/impl/cache/CacheImpl;->mAppContext:Landroid/content/Context;

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v19, "chocolate.cache"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v15, v1, v2}, Lcom/alibaba/doraemon/impl/cache/CacheImpl;->processIndependent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 589
    .restart local v6    # "cacheFile":Ljava/lang/String;
    move-wide/from16 v0, v16

    long-to-int v15, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-static {v6, v15, v0}, Ljkz;->a(Ljava/lang/String;IZ)Ljkz;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/alibaba/doraemon/impl/cache/CacheImpl;->mCache:Ljkz;

    .line 590
    const/4 v15, 0x1

    const/16 v18, 0x2

    const-wide/16 v20, 0x5

    mul-long v20, v20, v16

    move/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-static {v8, v15, v0, v1, v2}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->open(Ljava/io/File;IIJ)Lcom/alibaba/doraemon/impl/cache/DiskLruCache;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/alibaba/doraemon/impl/cache/CacheImpl;->mHugeCache:Lcom/alibaba/doraemon/impl/cache/DiskLruCache;
    :try_end_a
    .catch Ljava/lang/VerifyError; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 598
    .end local v4    # "appPath":Ljava/lang/String;
    .end local v6    # "cacheFile":Ljava/lang/String;
    .end local v8    # "dirFile":Ljava/io/File;
    .end local v12    # "sfs":Landroid/os/StatFs;
    .end local v16    # "totalSize":J
    :cond_7
    :goto_7
    :try_start_b
    const-string/jumbo v15, "TAG"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    new-instance v20, Ljava/lang/StringBuilder;

    const-string/jumbo v21, "init mCache="

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/doraemon/impl/cache/CacheImpl;->mCache:Ljkz;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    new-instance v20, Ljava/lang/StringBuilder;

    const-string/jumbo v21, " mHugeCache="

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/doraemon/impl/cache/CacheImpl;->mHugeCache:Lcom/alibaba/doraemon/impl/cache/DiskLruCache;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v18 .. v18}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lcom/alibaba/doraemon/DoraemonLog;->outLogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/doraemon/impl/cache/CacheImpl;->mCache:Ljkz;

    if-eqz v15, :cond_b

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/doraemon/impl/cache/CacheImpl;->mHugeCache:Lcom/alibaba/doraemon/impl/cache/DiskLruCache;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-eqz v15, :cond_b

    const/4 v15, 0x1

    :goto_8
    monitor-exit p0

    return v15

    .line 503
    :catch_0
    move-exception v9

    .line 505
    .local v9, "e":Ljava/lang/Exception;
    :try_start_c
    const-string/jumbo v15, "Cache"

    invoke-static {v9}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lcom/alibaba/doraemon/DoraemonLog;->outLogError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_0

    .line 495
    .end local v7    # "dir":Ljava/lang/String;
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v13    # "state":Ljava/lang/String;
    :catchall_0
    move-exception v15

    monitor-exit p0

    throw v15

    .line 517
    .restart local v5    # "cacheDir":Ljava/io/File;
    .restart local v7    # "dir":Ljava/lang/String;
    .restart local v11    # "sdcardPath":Ljava/lang/String;
    .restart local v13    # "state":Ljava/lang/String;
    :catch_1
    move-exception v14

    .line 518
    .local v14, "t":Ljava/lang/Throwable;
    :try_start_d
    const-string/jumbo v15, "Cache"

    invoke-static {v14}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lcom/alibaba/doraemon/DoraemonLog;->outLogError(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 529
    .end local v5    # "cacheDir":Ljava/io/File;
    .end local v14    # "t":Ljava/lang/Throwable;
    :cond_8
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    .line 530
    .restart local v5    # "cacheDir":Ljava/io/File;
    if-eqz v5, :cond_2

    .line 531
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move-result-object v11

    goto/16 :goto_2

    .line 542
    .restart local v12    # "sfs":Landroid/os/StatFs;
    .restart local v16    # "totalSize":J
    :cond_9
    :try_start_e
    invoke-virtual {v12}, Landroid/os/StatFs;->getBlockSize()I

    move-result v15

    int-to-long v0, v15

    move-wide/from16 v18, v0

    invoke-virtual {v12}, Landroid/os/StatFs;->getBlockCount()I
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    move-result v15

    int-to-long v0, v15

    move-wide/from16 v20, v0

    mul-long v16, v18, v20

    goto/16 :goto_3

    .line 545
    .end local v12    # "sfs":Landroid/os/StatFs;
    :catch_2
    move-exception v9

    .line 547
    .local v9, "e":Ljava/lang/IllegalArgumentException;
    :try_start_f
    const-string/jumbo v15, "Cache"

    invoke-static {v9}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lcom/alibaba/doraemon/DoraemonLog;->outLogError(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 561
    .end local v9    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v14

    .line 562
    .restart local v14    # "t":Ljava/lang/Throwable;
    const-string/jumbo v15, "Cache"

    invoke-static {v14}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lcom/alibaba/doraemon/DoraemonLog;->outLogError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto/16 :goto_5

    .line 575
    .end local v5    # "cacheDir":Ljava/io/File;
    .end local v11    # "sdcardPath":Ljava/lang/String;
    .end local v14    # "t":Ljava/lang/Throwable;
    .restart local v4    # "appPath":Ljava/lang/String;
    .restart local v12    # "sfs":Landroid/os/StatFs;
    :cond_a
    :try_start_10
    invoke-virtual {v12}, Landroid/os/StatFs;->getBlockSize()I

    move-result v15

    int-to-long v0, v15

    move-wide/from16 v18, v0

    invoke-virtual {v12}, Landroid/os/StatFs;->getBlockCount()I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_4
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    move-result v15

    int-to-long v0, v15

    move-wide/from16 v20, v0

    mul-long v16, v18, v20

    goto/16 :goto_6

    .line 576
    :catch_4
    move-exception v9

    .line 577
    .local v9, "e":Ljava/lang/Exception;
    :try_start_11
    const-string/jumbo v15, "Cache"

    invoke-static {v9}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lcom/alibaba/doraemon/DoraemonLog;->outLogError(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 591
    .end local v9    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v10

    .line 592
    .local v10, "error":Ljava/lang/VerifyError;
    const-string/jumbo v15, "Cache"

    invoke-static {v10}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lcom/alibaba/doraemon/DoraemonLog;->outLogError(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 593
    .end local v10    # "error":Ljava/lang/VerifyError;
    :catch_6
    move-exception v9

    .line 594
    .local v9, "e":Ljava/io/IOException;
    const-string/jumbo v15, "Cache"

    invoke-static {v9}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lcom/alibaba/doraemon/DoraemonLog;->outLogError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto/16 :goto_7

    .line 599
    .end local v4    # "appPath":Ljava/lang/String;
    .end local v9    # "e":Ljava/io/IOException;
    .end local v12    # "sfs":Landroid/os/StatFs;
    .end local v16    # "totalSize":J
    :cond_b
    const/4 v15, 0x0

    goto/16 :goto_8
.end method

.method private processIndependent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "file"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 603
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    .line 604
    .local v2, "pid":I
    const-string/jumbo v4, "activity"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 605
    .local v0, "activityManager":Landroid/app/ActivityManager;
    if-eqz v0, :cond_1

    .line 606
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    .line 607
    .local v3, "processInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 608
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 609
    .local v1, "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v5, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, v2, :cond_0

    .line 610
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/io/File;

    iget-object v6, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-direct {v5, p2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v4, v5, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 616
    .end local v1    # "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v3    # "processInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :goto_0
    return-object v4

    :cond_1
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private readFromHuge(Ljava/lang/String;)Lcom/alibaba/doraemon/cache/CacheEntity;
    .locals 20
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 107
    const/4 v13, 0x0

    .line 109
    .local v13, "desInputStream":Ljava/io/InputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/doraemon/impl/cache/CacheImpl;->mHugeCache:Lcom/alibaba/doraemon/impl/cache/DiskLruCache;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->get(Ljava/lang/String;)Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Snapshot;

    move-result-object v18

    .line 110
    .local v18, "snapshot":Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Snapshot;
    if-eqz v18, :cond_6

    .line 113
    new-instance v4, Lcom/alibaba/doraemon/impl/cache/CacheImpl$1;

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v4, v0, v3, v1}, Lcom/alibaba/doraemon/impl/cache/CacheImpl$1;-><init>(Lcom/alibaba/doraemon/impl/cache/CacheImpl;Ljava/io/InputStream;Ljava/lang/String;)V

    .line 153
    .local v4, "data":Ljava/io/InputStream;
    const/4 v3, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Snapshot;->getLength(I)J

    move-result-wide v14

    .line 154
    .local v14, "desLength":J
    const-wide/16 v6, 0x0

    cmp-long v3, v14, v6

    if-gtz v3, :cond_1

    .line 155
    new-instance v3, Lcom/alibaba/doraemon/impl/cache/CacheEntityImpl;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Snapshot;->getLength(I)J

    move-result-wide v6

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/alibaba/doraemon/impl/cache/CacheEntityImpl;-><init>(Ljava/io/InputStream;[BJZ)V

    .line 205
    .end local v4    # "data":Ljava/io/InputStream;
    .end local v14    # "desLength":J
    .end local v18    # "snapshot":Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Snapshot;
    :cond_0
    :goto_0
    return-object v3

    .line 157
    .restart local v4    # "data":Ljava/io/InputStream;
    .restart local v14    # "desLength":J
    .restart local v18    # "snapshot":Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Snapshot;
    :cond_1
    const/4 v3, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v13

    .line 158
    if-nez v13, :cond_2

    .line 159
    new-instance v3, Lcom/alibaba/doraemon/impl/cache/CacheEntityImpl;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Snapshot;->getLength(I)J

    move-result-wide v6

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/alibaba/doraemon/impl/cache/CacheEntityImpl;-><init>(Ljava/io/InputStream;[BJZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    if-eqz v13, :cond_0

    .line 198
    :try_start_1
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 199
    :catch_0
    move-exception v19

    .line 200
    .local v19, "t":Ljava/lang/Throwable;
    const-string/jumbo v6, "Cache"

    move-object/from16 v0, v19

    invoke-static {v6, v0}, Lcom/alibaba/doraemon/utils/CommonUtils;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 161
    .end local v19    # "t":Ljava/lang/Throwable;
    :cond_2
    :try_start_2
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v13}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 163
    .local v2, "des":Ljava/io/BufferedReader;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v17

    .line 164
    .local v17, "isIntegrity":Ljava/lang/String;
    if-nez v17, :cond_3

    .line 165
    new-instance v3, Lcom/alibaba/doraemon/impl/cache/CacheEntityImpl;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Snapshot;->getLength(I)J

    move-result-wide v6

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/alibaba/doraemon/impl/cache/CacheEntityImpl;-><init>(Ljava/io/InputStream;[BJZ)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 196
    if-eqz v13, :cond_0

    .line 198
    :try_start_3
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 199
    :catch_1
    move-exception v19

    .line 200
    .restart local v19    # "t":Ljava/lang/Throwable;
    const-string/jumbo v6, "Cache"

    move-object/from16 v0, v19

    invoke-static {v6, v0}, Lcom/alibaba/doraemon/utils/CommonUtils;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 167
    .end local v19    # "t":Ljava/lang/Throwable;
    :cond_3
    :try_start_4
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    int-to-long v6, v3

    sub-long v6, v14, v6

    const-wide/16 v8, 0x1

    sub-long v14, v6, v8

    .line 168
    const-wide/16 v6, 0x0

    cmp-long v3, v14, v6

    if-lez v3, :cond_4

    .line 169
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 170
    .local v5, "desData":[B
    new-instance v3, Lcom/alibaba/doraemon/impl/cache/CacheEntityImpl;

    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Snapshot;->getLength(I)J

    move-result-wide v6

    const-string/jumbo v8, "t"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    invoke-direct/range {v3 .. v8}, Lcom/alibaba/doraemon/impl/cache/CacheEntityImpl;-><init>(Ljava/io/InputStream;[BJZ)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_9
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 196
    if-eqz v13, :cond_0

    .line 198
    :try_start_5
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    .line 199
    :catch_2
    move-exception v19

    .line 200
    .restart local v19    # "t":Ljava/lang/Throwable;
    const-string/jumbo v6, "Cache"

    move-object/from16 v0, v19

    invoke-static {v6, v0}, Lcom/alibaba/doraemon/utils/CommonUtils;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 172
    .end local v5    # "desData":[B
    .end local v19    # "t":Ljava/lang/Throwable;
    :cond_4
    :try_start_6
    new-instance v7, Lcom/alibaba/doraemon/impl/cache/CacheEntityImpl;

    const/4 v9, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Snapshot;->getLength(I)J

    move-result-wide v10

    const-string/jumbo v3, "t"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    move-object v8, v4

    invoke-direct/range {v7 .. v12}, Lcom/alibaba/doraemon/impl/cache/CacheEntityImpl;-><init>(Ljava/io/InputStream;[BJZ)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_9
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 196
    if-eqz v13, :cond_5

    .line 198
    :try_start_7
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3

    :cond_5
    :goto_1
    move-object v3, v7

    .line 201
    goto/16 :goto_0

    .line 199
    :catch_3
    move-exception v19

    .line 200
    .restart local v19    # "t":Ljava/lang/Throwable;
    const-string/jumbo v3, "Cache"

    move-object/from16 v0, v19

    invoke-static {v3, v0}, Lcom/alibaba/doraemon/utils/CommonUtils;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 174
    .end local v2    # "des":Ljava/io/BufferedReader;
    .end local v4    # "data":Ljava/io/InputStream;
    .end local v14    # "desLength":J
    .end local v17    # "isIntegrity":Ljava/lang/String;
    .end local v18    # "snapshot":Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Snapshot;
    .end local v19    # "t":Ljava/lang/Throwable;
    :catch_4
    move-exception v16

    .line 176
    .local v16, "e":Ljava/io/IOException;
    :try_start_8
    const-string/jumbo v3, "Cache"

    move-object/from16 v0, v16

    invoke-static {v3, v0}, Lcom/alibaba/doraemon/utils/CommonUtils;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 196
    if-eqz v13, :cond_6

    .line 198
    :try_start_9
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_5

    .line 205
    .end local v16    # "e":Ljava/io/IOException;
    :cond_6
    :goto_2
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 199
    .restart local v16    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v19

    .line 200
    .restart local v19    # "t":Ljava/lang/Throwable;
    const-string/jumbo v3, "Cache"

    move-object/from16 v0, v19

    invoke-static {v3, v0}, Lcom/alibaba/doraemon/utils/CommonUtils;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .end local v16    # "e":Ljava/io/IOException;
    .end local v19    # "t":Ljava/lang/Throwable;
    :catch_6
    move-exception v3

    .line 180
    :try_start_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/doraemon/impl/cache/CacheImpl;->mHugeCache:Lcom/alibaba/doraemon/impl/cache/DiskLruCache;

    invoke-virtual {v3}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->delete()V

    .line 181
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/doraemon/impl/cache/CacheImpl;->mHugeCache:Lcom/alibaba/doraemon/impl/cache/DiskLruCache;

    invoke-virtual {v3}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->getDirectory()Ljava/io/File;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/doraemon/impl/cache/CacheImpl;->mHugeCache:Lcom/alibaba/doraemon/impl/cache/DiskLruCache;

    iget v6, v6, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->appVersion:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/doraemon/impl/cache/CacheImpl;->mHugeCache:Lcom/alibaba/doraemon/impl/cache/DiskLruCache;

    iget v7, v7, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->valueCount:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alibaba/doraemon/impl/cache/CacheImpl;->mHugeCache:Lcom/alibaba/doraemon/impl/cache/DiskLruCache;

    invoke-virtual {v8}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->getMaxSize()J

    move-result-wide v8

    invoke-static {v3, v6, v7, v8, v9}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->open(Ljava/io/File;IIJ)Lcom/alibaba/doraemon/impl/cache/DiskLruCache;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/alibaba/doraemon/impl/cache/CacheImpl;->mHugeCache:Lcom/alibaba/doraemon/impl/cache/DiskLruCache;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_8
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 196
    :goto_3
    if-eqz v13, :cond_6

    .line 198
    :try_start_b
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_7

    goto :goto_2

    .line 199
    :catch_7
    move-exception v19

    .line 200
    .restart local v19    # "t":Ljava/lang/Throwable;
    const-string/jumbo v3, "Cache"

    move-object/from16 v0, v19

    invoke-static {v3, v0}, Lcom/alibaba/doraemon/utils/CommonUtils;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 182
    .end local v19    # "t":Ljava/lang/Throwable;
    :catch_8
    move-exception v19

    .line 183
    .restart local v19    # "t":Ljava/lang/Throwable;
    :try_start_c
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Throwable;->printStackTrace()V

    .line 184
    const-string/jumbo v3, "Cache"

    move-object/from16 v0, v19

    invoke-static {v3, v0}, Lcom/alibaba/doraemon/utils/CommonUtils;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_3

    .line 196
    .end local v19    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    if-eqz v13, :cond_7

    .line 198
    :try_start_d
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_b

    .line 201
    :cond_7
    :goto_4
    throw v3

    .line 186
    :catch_9
    move-exception v16

    .line 188
    .local v16, "e":Ljava/lang/IllegalArgumentException;
    :try_start_e
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v3

    sget v6, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    if-ne v3, v6, :cond_8

    .line 189
    const-string/jumbo v3, "Cache"

    move-object/from16 v0, v16

    invoke-static {v3, v0}, Lcom/alibaba/doraemon/utils/CommonUtils;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 196
    if-eqz v13, :cond_6

    .line 198
    :try_start_f
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_a

    goto :goto_2

    .line 199
    :catch_a
    move-exception v19

    .line 200
    .restart local v19    # "t":Ljava/lang/Throwable;
    const-string/jumbo v3, "Cache"

    move-object/from16 v0, v19

    invoke-static {v3, v0}, Lcom/alibaba/doraemon/utils/CommonUtils;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 192
    .end local v19    # "t":Ljava/lang/Throwable;
    :cond_8
    :try_start_10
    throw v16
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 199
    .end local v16    # "e":Ljava/lang/IllegalArgumentException;
    :catch_b
    move-exception v19

    .line 200
    .restart local v19    # "t":Ljava/lang/Throwable;
    const-string/jumbo v6, "Cache"

    move-object/from16 v0, v19

    invoke-static {v6, v0}, Lcom/alibaba/doraemon/utils/CommonUtils;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4
.end method

.method private wirteHugeLocked(Ljava/lang/String;JLjava/io/InputStream;Z[B)Z
    .locals 14
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "skip"    # J
    .param p4, "inputStream"    # Ljava/io/InputStream;
    .param p5, "isEnd"    # Z
    .param p6, "description"    # [B

    .prologue
    .line 239
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 240
    const-string/jumbo v9, "Cache"

    const-string/jumbo v10, "wirteHuge key is null"

    invoke-static {v9, v10}, Lcom/alibaba/doraemon/DoraemonLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    const/4 v9, 0x0

    .line 305
    :goto_0
    return v9

    .line 244
    :cond_0
    iget-object v9, p0, Lcom/alibaba/doraemon/impl/cache/CacheImpl;->mHugeCache:Lcom/alibaba/doraemon/impl/cache/DiskLruCache;

    if-nez v9, :cond_1

    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/cache/CacheImpl;->init()Z

    move-result v9

    if-nez v9, :cond_1

    .line 245
    const/4 v9, 0x0

    goto :goto_0

    .line 248
    :cond_1
    const/4 v4, 0x0

    .line 249
    .local v4, "editor":Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;
    const/4 v7, 0x0

    .line 251
    .local v7, "outputStream":Ljava/io/OutputStream;
    :try_start_0
    iget-object v9, p0, Lcom/alibaba/doraemon/impl/cache/CacheImpl;->mHugeCache:Lcom/alibaba/doraemon/impl/cache/DiskLruCache;

    invoke-virtual {v9, p1}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->edit(Ljava/lang/String;)Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;

    move-result-object v4

    .line 252
    if-eqz p4, :cond_5

    .line 253
    const/16 v9, 0x4000

    invoke-static {v9}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->getBuf(I)[B

    move-result-object v2

    .line 255
    .local v2, "bytes":[B
    :goto_1
    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .local v5, "length":I
    const/4 v9, -0x1

    if-eq v5, v9, :cond_5

    .line 256
    const/4 v9, 0x0

    const/4 v10, 0x3

    move-wide/from16 v0, p2

    invoke-virtual {v4, v9, v10, v0, v1}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;->newOutputStream(IIJ)Ljava/io/OutputStream;

    move-result-object v7

    .line 257
    const/4 v9, 0x0

    invoke-virtual {v7, v2, v9, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    goto :goto_1

    .line 262
    .end local v2    # "bytes":[B
    .end local v5    # "length":I
    :catch_0
    move-exception v3

    .line 263
    .local v3, "e":Ljava/io/IOException;
    const/16 p5, 0x0

    .line 264
    :try_start_1
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 266
    if-eqz v7, :cond_2

    .line 268
    :try_start_2
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 269
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9

    .line 275
    :cond_2
    :goto_2
    if-eqz v4, :cond_4

    .line 276
    const/4 v6, 0x0

    .line 278
    .local v6, "os":Ljava/io/OutputStream;
    const/4 v9, 0x1

    const/4 v10, 0x1

    const-wide/16 v12, 0x0

    :try_start_3
    invoke-virtual {v4, v9, v10, v12, v13}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;->newOutputStream(IIJ)Ljava/io/OutputStream;

    move-result-object v6

    .line 282
    const-string/jumbo v9, "f"

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/io/OutputStream;->write([B)V

    .line 284
    const/16 v9, 0xa

    invoke-virtual {v6, v9}, Ljava/io/OutputStream;->write(I)V

    .line 286
    if-eqz p6, :cond_3

    move-object/from16 v0, p6

    array-length v9, v0

    if-lez v9, :cond_3

    .line 287
    const/4 v9, 0x0

    move-object/from16 v0, p6

    array-length v10, v0

    move-object/from16 v0, p6

    invoke-virtual {v6, v0, v9, v10}, Ljava/io/OutputStream;->write([BII)V

    .line 289
    :cond_3
    invoke-virtual {v4}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;->commit()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_c
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 294
    if-eqz v6, :cond_4

    .line 295
    :try_start_4
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_b

    .line 305
    .end local v6    # "os":Ljava/io/OutputStream;
    :cond_4
    :goto_3
    const/4 v9, 0x0

    goto :goto_0

    .line 266
    .end local v3    # "e":Ljava/io/IOException;
    :cond_5
    if-eqz v7, :cond_6

    .line 268
    :try_start_5
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 269
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 275
    :cond_6
    :goto_4
    if-eqz v4, :cond_8

    .line 276
    const/4 v6, 0x0

    .line 278
    .restart local v6    # "os":Ljava/io/OutputStream;
    const/4 v9, 0x1

    const/4 v10, 0x1

    const-wide/16 v12, 0x0

    :try_start_6
    invoke-virtual {v4, v9, v10, v12, v13}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;->newOutputStream(IIJ)Ljava/io/OutputStream;

    move-result-object v6

    .line 279
    if-eqz p5, :cond_9

    .line 280
    const-string/jumbo v9, "t"

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/io/OutputStream;->write([B)V

    .line 284
    :goto_5
    const/16 v9, 0xa

    invoke-virtual {v6, v9}, Ljava/io/OutputStream;->write(I)V

    .line 286
    if-eqz p6, :cond_7

    move-object/from16 v0, p6

    array-length v9, v0

    if-lez v9, :cond_7

    .line 287
    const/4 v9, 0x0

    move-object/from16 v0, p6

    array-length v10, v0

    move-object/from16 v0, p6

    invoke-virtual {v6, v0, v9, v10}, Ljava/io/OutputStream;->write([BII)V

    .line 289
    :cond_7
    invoke-virtual {v4}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;->commit()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 294
    if-eqz v6, :cond_8

    .line 295
    :try_start_7
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_5

    .line 302
    .end local v6    # "os":Ljava/io/OutputStream;
    :cond_8
    :goto_6
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 270
    :catch_1
    move-exception v3

    .line 271
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 282
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v6    # "os":Ljava/io/OutputStream;
    :cond_9
    :try_start_8
    const-string/jumbo v9, "f"

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/io/OutputStream;->write([B)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_5

    .line 290
    :catch_2
    move-exception v8

    .line 291
    .local v8, "t":Ljava/lang/Throwable;
    :try_start_9
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 294
    if-eqz v6, :cond_8

    .line 295
    :try_start_a
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_6

    .line 296
    :catch_3
    move-exception v3

    .line 297
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 296
    .end local v3    # "e":Ljava/io/IOException;
    .end local v8    # "t":Ljava/lang/Throwable;
    :catch_4
    move-exception v3

    .line 297
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 298
    .end local v3    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v8

    .line 299
    .restart local v8    # "t":Ljava/lang/Throwable;
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6

    .line 298
    :catch_6
    move-exception v8

    .line 299
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6

    .line 293
    .end local v8    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v9

    .line 294
    if-eqz v6, :cond_a

    .line 295
    :try_start_b
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_8

    .line 300
    :cond_a
    :goto_7
    throw v9

    .line 296
    :catch_7
    move-exception v3

    .line 297
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 298
    .end local v3    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v8

    .line 299
    .restart local v8    # "t":Ljava/lang/Throwable;
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_7

    .line 270
    .end local v6    # "os":Ljava/io/OutputStream;
    .end local v8    # "t":Ljava/lang/Throwable;
    .restart local v3    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v3

    .line 271
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 296
    .restart local v6    # "os":Ljava/io/OutputStream;
    :catch_a
    move-exception v3

    .line 297
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 298
    :catch_b
    move-exception v8

    .line 299
    .restart local v8    # "t":Ljava/lang/Throwable;
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_3

    .line 290
    .end local v8    # "t":Ljava/lang/Throwable;
    :catch_c
    move-exception v8

    .line 291
    .restart local v8    # "t":Ljava/lang/Throwable;
    :try_start_c
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 294
    if-eqz v6, :cond_4

    .line 295
    :try_start_d
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_e

    goto/16 :goto_3

    .line 296
    :catch_d
    move-exception v3

    .line 297
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 298
    :catch_e
    move-exception v8

    .line 299
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_3

    .line 293
    .end local v8    # "t":Ljava/lang/Throwable;
    :catchall_1
    move-exception v9

    .line 294
    if-eqz v6, :cond_b

    .line 295
    :try_start_e
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_f
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_10

    .line 300
    :cond_b
    :goto_8
    throw v9

    .line 296
    :catch_f
    move-exception v3

    .line 297
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 298
    :catch_10
    move-exception v8

    .line 299
    .restart local v8    # "t":Ljava/lang/Throwable;
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_8

    .line 266
    .end local v3    # "e":Ljava/io/IOException;
    .end local v6    # "os":Ljava/io/OutputStream;
    .end local v8    # "t":Ljava/lang/Throwable;
    :catchall_2
    move-exception v9

    if-eqz v7, :cond_c

    .line 268
    :try_start_f
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 269
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_11

    .line 275
    :cond_c
    :goto_9
    if-eqz v4, :cond_e

    .line 276
    const/4 v6, 0x0

    .line 278
    .restart local v6    # "os":Ljava/io/OutputStream;
    const/4 v10, 0x1

    const/4 v11, 0x1

    const-wide/16 v12, 0x0

    :try_start_10
    invoke-virtual {v4, v10, v11, v12, v13}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;->newOutputStream(IIJ)Ljava/io/OutputStream;

    move-result-object v6

    .line 279
    if-eqz p5, :cond_f

    .line 280
    const-string/jumbo v10, "t"

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/io/OutputStream;->write([B)V

    .line 284
    :goto_a
    const/16 v10, 0xa

    invoke-virtual {v6, v10}, Ljava/io/OutputStream;->write(I)V

    .line 286
    if-eqz p6, :cond_d

    move-object/from16 v0, p6

    array-length v10, v0

    if-lez v10, :cond_d

    .line 287
    const/4 v10, 0x0

    move-object/from16 v0, p6

    array-length v11, v0

    move-object/from16 v0, p6

    invoke-virtual {v6, v0, v10, v11}, Ljava/io/OutputStream;->write([BII)V

    .line 289
    :cond_d
    invoke-virtual {v4}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;->commit()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_12
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 294
    if-eqz v6, :cond_e

    .line 295
    :try_start_11
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_14
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_15

    .line 302
    .end local v6    # "os":Ljava/io/OutputStream;
    :cond_e
    :goto_b
    throw v9

    .line 270
    :catch_11
    move-exception v3

    .line 271
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 282
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v6    # "os":Ljava/io/OutputStream;
    :cond_f
    :try_start_12
    const-string/jumbo v10, "f"

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/io/OutputStream;->write([B)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    goto :goto_a

    .line 290
    :catch_12
    move-exception v8

    .line 291
    .restart local v8    # "t":Ljava/lang/Throwable;
    :try_start_13
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    .line 294
    if-eqz v6, :cond_e

    .line 295
    :try_start_14
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_13
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_16

    goto :goto_b

    .line 296
    :catch_13
    move-exception v3

    .line 297
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 296
    .end local v3    # "e":Ljava/io/IOException;
    .end local v8    # "t":Ljava/lang/Throwable;
    :catch_14
    move-exception v3

    .line 297
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 298
    .end local v3    # "e":Ljava/io/IOException;
    :catch_15
    move-exception v8

    .line 299
    .restart local v8    # "t":Ljava/lang/Throwable;
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_b

    .line 298
    :catch_16
    move-exception v8

    .line 299
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_b

    .line 293
    .end local v8    # "t":Ljava/lang/Throwable;
    :catchall_3
    move-exception v9

    .line 294
    if-eqz v6, :cond_10

    .line 295
    :try_start_15
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_17
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_18

    .line 300
    :cond_10
    :goto_c
    throw v9

    .line 296
    :catch_17
    move-exception v3

    .line 297
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    .line 298
    .end local v3    # "e":Ljava/io/IOException;
    :catch_18
    move-exception v8

    .line 299
    .restart local v8    # "t":Ljava/lang/Throwable;
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_c
.end method

.method private wirteHugeLocked(Ljava/lang/String;Ljava/io/InputStream;[BZ)Z
    .locals 12
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "inputStream"    # Ljava/io/InputStream;
    .param p3, "description"    # [B
    .param p4, "append"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 327
    iget-object v6, p0, Lcom/alibaba/doraemon/impl/cache/CacheImpl;->mHugeCache:Lcom/alibaba/doraemon/impl/cache/DiskLruCache;

    if-nez v6, :cond_0

    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/cache/CacheImpl;->init()Z

    move-result v6

    if-nez v6, :cond_0

    .line 328
    const/4 v6, 0x0

    .line 395
    :goto_0
    return v6

    .line 331
    :cond_0
    const/4 v2, 0x0

    .line 332
    .local v2, "editor":Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;
    const/4 v3, 0x0

    .line 333
    .local v3, "length":I
    const/16 v6, 0x1400

    invoke-static {v6}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->getBuf(I)[B

    move-result-object v0

    .line 334
    .local v0, "buffer":[B
    const/4 v5, 0x0

    .line 336
    .local v5, "outputStream":Ljava/io/OutputStream;
    :try_start_0
    iget-object v6, p0, Lcom/alibaba/doraemon/impl/cache/CacheImpl;->mHugeCache:Lcom/alibaba/doraemon/impl/cache/DiskLruCache;

    invoke-virtual {v6, p1}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->edit(Ljava/lang/String;)Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_e
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    move-result-object v2

    .line 338
    if-nez v2, :cond_4

    .line 366
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    .line 367
    if-eqz v2, :cond_2

    .line 368
    const/4 v4, 0x0

    .line 370
    .local v4, "os":Ljava/io/OutputStream;
    const/4 v6, 0x1

    const/4 v7, 0x1

    const-wide/16 v8, 0x0

    :try_start_1
    invoke-virtual {v2, v6, v7, v8, v9}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;->newOutputStream(IIJ)Ljava/io/OutputStream;

    move-result-object v4

    .line 374
    const-string/jumbo v6, "f"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/OutputStream;->write([B)V

    .line 375
    const/16 v6, 0xa

    invoke-virtual {v4, v6}, Ljava/io/OutputStream;->write(I)V

    .line 377
    if-eqz p3, :cond_1

    array-length v6, p3

    if-lez v6, :cond_1

    .line 378
    const/4 v6, 0x0

    array-length v7, p3

    invoke-virtual {v4, p3, v6, v7}, Ljava/io/OutputStream;->write([BII)V

    .line 380
    :cond_1
    invoke-virtual {v2}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;->commit()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 385
    if-eqz v4, :cond_2

    .line 386
    :try_start_2
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 392
    .end local v4    # "os":Ljava/io/OutputStream;
    :cond_2
    :goto_1
    const/4 v6, 0x0

    goto :goto_0

    .line 387
    .restart local v4    # "os":Ljava/io/OutputStream;
    :catch_0
    move-exception v1

    .line 388
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v6, "Cache"

    invoke-static {v6, v1}, Lcom/alibaba/doraemon/utils/CommonUtils;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 381
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 382
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_3
    const-string/jumbo v6, "Cache"

    invoke-static {v6, v1}, Lcom/alibaba/doraemon/utils/CommonUtils;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 385
    if-eqz v4, :cond_2

    .line 386
    :try_start_4
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 387
    :catch_2
    move-exception v1

    .line 388
    const-string/jumbo v6, "Cache"

    invoke-static {v6, v1}, Lcom/alibaba/doraemon/utils/CommonUtils;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 384
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 385
    if-eqz v4, :cond_3

    .line 386
    :try_start_5
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 389
    :cond_3
    :goto_2
    throw v6

    .line 387
    :catch_3
    move-exception v1

    .line 388
    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v7, "Cache"

    invoke-static {v7, v1}, Lcom/alibaba/doraemon/utils/CommonUtils;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 342
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "os":Ljava/io/OutputStream;
    :cond_4
    const/4 v7, 0x0

    if-eqz p4, :cond_5

    const/4 v6, 0x2

    :goto_3
    const-wide/16 v8, 0x0

    :try_start_6
    invoke-virtual {v2, v7, v6, v8, v9}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;->newOutputStream(IIJ)Ljava/io/OutputStream;

    move-result-object v5

    .line 344
    invoke-virtual {p2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 346
    :goto_4
    const/4 v6, -0x1

    if-eq v3, v6, :cond_6

    const/16 v6, -0xff

    if-eq v3, v6, :cond_6

    .line 347
    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 349
    invoke-virtual {p2, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_e
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    move-result v3

    goto :goto_4

    .line 342
    :cond_5
    const/4 v6, 0x1

    goto :goto_3

    .line 352
    :cond_6
    const/4 v6, -0x1

    if-ne v3, v6, :cond_c

    .line 357
    if-eqz v5, :cond_7

    .line 359
    :try_start_7
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 360
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 366
    :cond_7
    :goto_5
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    .line 367
    if-eqz v2, :cond_9

    .line 368
    const/4 v4, 0x0

    .line 370
    .restart local v4    # "os":Ljava/io/OutputStream;
    const/4 v6, 0x1

    const/4 v7, 0x1

    const-wide/16 v8, 0x0

    :try_start_8
    invoke-virtual {v2, v6, v7, v8, v9}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;->newOutputStream(IIJ)Ljava/io/OutputStream;

    move-result-object v4

    .line 371
    const/4 v6, -0x1

    if-ne v3, v6, :cond_a

    .line 372
    const-string/jumbo v6, "t"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/OutputStream;->write([B)V

    .line 375
    :goto_6
    const/16 v6, 0xa

    invoke-virtual {v4, v6}, Ljava/io/OutputStream;->write(I)V

    .line 377
    if-eqz p3, :cond_8

    array-length v6, p3

    if-lez v6, :cond_8

    .line 378
    const/4 v6, 0x0

    array-length v7, p3

    invoke-virtual {v4, p3, v6, v7}, Ljava/io/OutputStream;->write([BII)V

    .line 380
    :cond_8
    invoke-virtual {v2}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;->commit()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 385
    if-eqz v4, :cond_9

    .line 386
    :try_start_9
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 392
    .end local v4    # "os":Ljava/io/OutputStream;
    :cond_9
    :goto_7
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 361
    :catch_4
    move-exception v1

    .line 362
    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v6, "Cache"

    invoke-static {v6, v1}, Lcom/alibaba/doraemon/utils/CommonUtils;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 374
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v4    # "os":Ljava/io/OutputStream;
    :cond_a
    :try_start_a
    const-string/jumbo v6, "f"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/OutputStream;->write([B)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_6

    .line 381
    :catch_5
    move-exception v1

    .line 382
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_b
    const-string/jumbo v6, "Cache"

    invoke-static {v6, v1}, Lcom/alibaba/doraemon/utils/CommonUtils;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 385
    if-eqz v4, :cond_9

    .line 386
    :try_start_c
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    goto :goto_7

    .line 387
    :catch_6
    move-exception v1

    .line 388
    const-string/jumbo v6, "Cache"

    invoke-static {v6, v1}, Lcom/alibaba/doraemon/utils/CommonUtils;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    .line 387
    .end local v1    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v1

    .line 388
    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v6, "Cache"

    invoke-static {v6, v1}, Lcom/alibaba/doraemon/utils/CommonUtils;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    .line 384
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v6

    .line 385
    if-eqz v4, :cond_b

    .line 386
    :try_start_d
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    .line 389
    :cond_b
    :goto_8
    throw v6

    .line 387
    :catch_8
    move-exception v1

    .line 388
    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v7, "Cache"

    invoke-static {v7, v1}, Lcom/alibaba/doraemon/utils/CommonUtils;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    .line 357
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "os":Ljava/io/OutputStream;
    :cond_c
    if-eqz v5, :cond_d

    .line 359
    :try_start_e
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 360
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_9

    .line 366
    :cond_d
    :goto_9
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    .line 367
    if-eqz v2, :cond_f

    .line 368
    const/4 v4, 0x0

    .line 370
    .restart local v4    # "os":Ljava/io/OutputStream;
    const/4 v6, 0x1

    const/4 v7, 0x1

    const-wide/16 v8, 0x0

    :try_start_f
    invoke-virtual {v2, v6, v7, v8, v9}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;->newOutputStream(IIJ)Ljava/io/OutputStream;

    move-result-object v4

    .line 371
    const/4 v6, -0x1

    if-ne v3, v6, :cond_10

    .line 372
    const-string/jumbo v6, "t"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/OutputStream;->write([B)V

    .line 375
    :goto_a
    const/16 v6, 0xa

    invoke-virtual {v4, v6}, Ljava/io/OutputStream;->write(I)V

    .line 377
    if-eqz p3, :cond_e

    array-length v6, p3

    if-lez v6, :cond_e

    .line 378
    const/4 v6, 0x0

    array-length v7, p3

    invoke-virtual {v4, p3, v6, v7}, Ljava/io/OutputStream;->write([BII)V

    .line 380
    :cond_e
    invoke-virtual {v2}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;->commit()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_a
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 385
    if-eqz v4, :cond_f

    .line 386
    :try_start_10
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_c

    .line 395
    .end local v4    # "os":Ljava/io/OutputStream;
    :cond_f
    :goto_b
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 361
    :catch_9
    move-exception v1

    .line 362
    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v6, "Cache"

    invoke-static {v6, v1}, Lcom/alibaba/doraemon/utils/CommonUtils;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9

    .line 374
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v4    # "os":Ljava/io/OutputStream;
    :cond_10
    :try_start_11
    const-string/jumbo v6, "f"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/OutputStream;->write([B)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_a
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    goto :goto_a

    .line 381
    :catch_a
    move-exception v1

    .line 382
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_12
    const-string/jumbo v6, "Cache"

    invoke-static {v6, v1}, Lcom/alibaba/doraemon/utils/CommonUtils;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    .line 385
    if-eqz v4, :cond_f

    .line 386
    :try_start_13
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_b

    goto :goto_b

    .line 387
    :catch_b
    move-exception v1

    .line 388
    const-string/jumbo v6, "Cache"

    invoke-static {v6, v1}, Lcom/alibaba/doraemon/utils/CommonUtils;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b

    .line 387
    .end local v1    # "e":Ljava/io/IOException;
    :catch_c
    move-exception v1

    .line 388
    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v6, "Cache"

    invoke-static {v6, v1}, Lcom/alibaba/doraemon/utils/CommonUtils;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b

    .line 384
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_2
    move-exception v6

    .line 385
    if-eqz v4, :cond_11

    .line 386
    :try_start_14
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_d

    .line 389
    :cond_11
    :goto_c
    throw v6

    .line 387
    :catch_d
    move-exception v1

    .line 388
    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v7, "Cache"

    invoke-static {v7, v1}, Lcom/alibaba/doraemon/utils/CommonUtils;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c

    .line 354
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "os":Ljava/io/OutputStream;
    :catch_e
    move-exception v1

    .line 355
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_15
    const-string/jumbo v6, "Cache"

    invoke-static {v6, v1}, Lcom/alibaba/doraemon/utils/CommonUtils;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    .line 357
    if-eqz v5, :cond_12

    .line 359
    :try_start_16
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 360
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_10

    .line 366
    :cond_12
    :goto_d
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    .line 367
    if-eqz v2, :cond_f

    .line 368
    const/4 v4, 0x0

    .line 370
    .restart local v4    # "os":Ljava/io/OutputStream;
    const/4 v6, 0x1

    const/4 v7, 0x1

    const-wide/16 v8, 0x0

    :try_start_17
    invoke-virtual {v2, v6, v7, v8, v9}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;->newOutputStream(IIJ)Ljava/io/OutputStream;

    move-result-object v4

    .line 371
    const/4 v6, -0x1

    if-ne v3, v6, :cond_14

    .line 372
    const-string/jumbo v6, "t"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/OutputStream;->write([B)V

    .line 375
    :goto_e
    const/16 v6, 0xa

    invoke-virtual {v4, v6}, Ljava/io/OutputStream;->write(I)V

    .line 377
    if-eqz p3, :cond_13

    array-length v6, p3

    if-lez v6, :cond_13

    .line 378
    const/4 v6, 0x0

    array-length v7, p3

    invoke-virtual {v4, p3, v6, v7}, Ljava/io/OutputStream;->write([BII)V

    .line 380
    :cond_13
    invoke-virtual {v2}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;->commit()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_11
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    .line 385
    if-eqz v4, :cond_f

    .line 386
    :try_start_18
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_f

    goto/16 :goto_b

    .line 387
    :catch_f
    move-exception v1

    .line 388
    const-string/jumbo v6, "Cache"

    invoke-static {v6, v1}, Lcom/alibaba/doraemon/utils/CommonUtils;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b

    .line 361
    .end local v4    # "os":Ljava/io/OutputStream;
    :catch_10
    move-exception v1

    .line 362
    const-string/jumbo v6, "Cache"

    invoke-static {v6, v1}, Lcom/alibaba/doraemon/utils/CommonUtils;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d

    .line 374
    .restart local v4    # "os":Ljava/io/OutputStream;
    :cond_14
    :try_start_19
    const-string/jumbo v6, "f"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/OutputStream;->write([B)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_11
    .catchall {:try_start_19 .. :try_end_19} :catchall_3

    goto :goto_e

    .line 381
    :catch_11
    move-exception v1

    .line 382
    :try_start_1a
    const-string/jumbo v6, "Cache"

    invoke-static {v6, v1}, Lcom/alibaba/doraemon/utils/CommonUtils;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_3

    .line 385
    if-eqz v4, :cond_f

    .line 386
    :try_start_1b
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_12

    goto/16 :goto_b

    .line 387
    :catch_12
    move-exception v1

    .line 388
    const-string/jumbo v6, "Cache"

    invoke-static {v6, v1}, Lcom/alibaba/doraemon/utils/CommonUtils;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b

    .line 384
    :catchall_3
    move-exception v6

    .line 385
    if-eqz v4, :cond_15

    .line 386
    :try_start_1c
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_13

    .line 389
    :cond_15
    :goto_f
    throw v6

    .line 387
    :catch_13
    move-exception v1

    .line 388
    const-string/jumbo v7, "Cache"

    invoke-static {v7, v1}, Lcom/alibaba/doraemon/utils/CommonUtils;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_f

    .line 357
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "os":Ljava/io/OutputStream;
    :catchall_4
    move-exception v6

    if-eqz v5, :cond_16

    .line 359
    :try_start_1d
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 360
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_14

    .line 366
    :cond_16
    :goto_10
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    .line 367
    if-eqz v2, :cond_18

    .line 368
    const/4 v4, 0x0

    .line 370
    .restart local v4    # "os":Ljava/io/OutputStream;
    const/4 v7, 0x1

    const/4 v8, 0x1

    const-wide/16 v10, 0x0

    :try_start_1e
    invoke-virtual {v2, v7, v8, v10, v11}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;->newOutputStream(IIJ)Ljava/io/OutputStream;

    move-result-object v4

    .line 371
    const/4 v7, -0x1

    if-ne v3, v7, :cond_19

    .line 372
    const-string/jumbo v7, "t"

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/OutputStream;->write([B)V

    .line 375
    :goto_11
    const/16 v7, 0xa

    invoke-virtual {v4, v7}, Ljava/io/OutputStream;->write(I)V

    .line 377
    if-eqz p3, :cond_17

    array-length v7, p3

    if-lez v7, :cond_17

    .line 378
    const/4 v7, 0x0

    array-length v8, p3

    invoke-virtual {v4, p3, v7, v8}, Ljava/io/OutputStream;->write([BII)V

    .line 380
    :cond_17
    invoke-virtual {v2}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;->commit()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_15
    .catchall {:try_start_1e .. :try_end_1e} :catchall_5

    .line 385
    if-eqz v4, :cond_18

    .line 386
    :try_start_1f
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_17

    .line 392
    .end local v4    # "os":Ljava/io/OutputStream;
    :cond_18
    :goto_12
    throw v6

    .line 361
    :catch_14
    move-exception v1

    .line 362
    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v7, "Cache"

    invoke-static {v7, v1}, Lcom/alibaba/doraemon/utils/CommonUtils;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_10

    .line 374
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v4    # "os":Ljava/io/OutputStream;
    :cond_19
    :try_start_20
    const-string/jumbo v7, "f"

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/OutputStream;->write([B)V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_15
    .catchall {:try_start_20 .. :try_end_20} :catchall_5

    goto :goto_11

    .line 381
    :catch_15
    move-exception v1

    .line 382
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_21
    const-string/jumbo v7, "Cache"

    invoke-static {v7, v1}, Lcom/alibaba/doraemon/utils/CommonUtils;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_5

    .line 385
    if-eqz v4, :cond_18

    .line 386
    :try_start_22
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_16

    goto :goto_12

    .line 387
    :catch_16
    move-exception v1

    .line 388
    const-string/jumbo v7, "Cache"

    invoke-static {v7, v1}, Lcom/alibaba/doraemon/utils/CommonUtils;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_12

    .line 387
    .end local v1    # "e":Ljava/io/IOException;
    :catch_17
    move-exception v1

    .line 388
    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v7, "Cache"

    invoke-static {v7, v1}, Lcom/alibaba/doraemon/utils/CommonUtils;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_12

    .line 384
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_5
    move-exception v6

    .line 385
    if-eqz v4, :cond_1a

    .line 386
    :try_start_23
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_18

    .line 389
    :cond_1a
    :goto_13
    throw v6

    .line 387
    :catch_18
    move-exception v1

    .line 388
    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v7, "Cache"

    invoke-static {v7, v1}, Lcom/alibaba/doraemon/utils/CommonUtils;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_13
.end method


# virtual methods
.method public appendHuge(Ljava/lang/String;Ljava/io/InputStream;[B)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "inputStream"    # Ljava/io/InputStream;
    .param p3, "description"    # [B

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 400
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    const/4 v0, 0x0

    .line 407
    :goto_0
    return v0

    .line 404
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/cache/CacheImpl;->mKeyLock:Lcom/alibaba/doraemon/utils/KeyLock;

    invoke-virtual {v0, p1}, Lcom/alibaba/doraemon/utils/KeyLock;->lock(Ljava/lang/Object;)V

    .line 405
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/alibaba/doraemon/impl/cache/CacheImpl;->wirteHugeLocked(Ljava/lang/String;Ljava/io/InputStream;[BZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 407
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/cache/CacheImpl;->mKeyLock:Lcom/alibaba/doraemon/utils/KeyLock;

    invoke-virtual {v1, p1}, Lcom/alibaba/doraemon/utils/KeyLock;->unlock(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/cache/CacheImpl;->mKeyLock:Lcom/alibaba/doraemon/utils/KeyLock;

    invoke-virtual {v1, p1}, Lcom/alibaba/doraemon/utils/KeyLock;->unlock(Ljava/lang/Object;)V

    throw v0
.end method

.method public clear()Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 454
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/cache/CacheImpl;->mCache:Ljkz;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/cache/CacheImpl;->mHugeCache:Lcom/alibaba/doraemon/impl/cache/DiskLruCache;

    if-nez v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/cache/CacheImpl;->init()Z

    move-result v1

    if-nez v1, :cond_1

    .line 455
    const/4 v1, 0x0

    .line 462
    :goto_0
    return v1

    .line 457
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/cache/CacheImpl;->mHugeCache:Lcom/alibaba/doraemon/impl/cache/DiskLruCache;

    invoke-virtual {v1}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->delete()V

    .line 458
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/cache/CacheImpl;->mHugeCache:Lcom/alibaba/doraemon/impl/cache/DiskLruCache;

    invoke-virtual {v1}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->getDirectory()Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/cache/CacheImpl;->mHugeCache:Lcom/alibaba/doraemon/impl/cache/DiskLruCache;

    iget v2, v2, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->appVersion:I

    iget-object v3, p0, Lcom/alibaba/doraemon/impl/cache/CacheImpl;->mHugeCache:Lcom/alibaba/doraemon/impl/cache/DiskLruCache;

    iget v3, v3, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->valueCount:I

    iget-object v4, p0, Lcom/alibaba/doraemon/impl/cache/CacheImpl;->mHugeCache:Lcom/alibaba/doraemon/impl/cache/DiskLruCache;

    invoke-virtual {v4}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->getMaxSize()J

    move-result-wide v4

    invoke-static {v1, v2, v3, v4, v5}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->open(Ljava/io/File;IIJ)Lcom/alibaba/doraemon/impl/cache/DiskLruCache;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/doraemon/impl/cache/CacheImpl;->mHugeCache:Lcom/alibaba/doraemon/impl/cache/DiskLruCache;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 462
    :goto_1
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/cache/CacheImpl;->mCache:Ljkz;

    invoke-virtual {v1}, Ljkz;->b()Z

    move-result v1

    goto :goto_0

    .line 459
    :catch_0
    move-exception v0

    .line 460
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v1, "Cache"

    invoke-static {v1, v0}, Lcom/alibaba/doraemon/utils/CommonUtils;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public close()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 467
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/cache/CacheImpl;->mCache:Ljkz;

    if-eqz v1, :cond_0

    .line 468
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/cache/CacheImpl;->mCache:Ljkz;

    invoke-virtual {v1}, Ljkz;->a()V

    .line 470
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/cache/CacheImpl;->mHugeCache:Lcom/alibaba/doraemon/impl/cache/DiskLruCache;

    if-eqz v1, :cond_1

    .line 471
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/cache/CacheImpl;->mHugeCache:Lcom/alibaba/doraemon/impl/cache/DiskLruCache;

    invoke-virtual {v1}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 475
    :cond_1
    :goto_0
    return-void

    .line 472
    :catch_0
    move-exception v0

    .line 473
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v1, "Cache"

    invoke-static {v1, v0}, Lcom/alibaba/doraemon/utils/CommonUtils;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getCacheSize()J
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 437
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/cache/CacheImpl;->mCache:Ljkz;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/cache/CacheImpl;->mHugeCache:Lcom/alibaba/doraemon/impl/cache/DiskLruCache;

    if-nez v2, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/cache/CacheImpl;->init()Z

    move-result v2

    if-nez v2, :cond_1

    .line 438
    const-wide/16 v2, 0x0

    .line 449
    :goto_0
    return-wide v2

    .line 444
    :cond_1
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/cache/CacheImpl;->mCache:Ljkz;

    invoke-virtual {v2}, Ljkz;->c()J

    move-result-wide v0

    .line 445
    .local v0, "cacheSize":J
    const-wide/16 v2, 0x80

    cmp-long v2, v0, v2

    if-gtz v2, :cond_2

    .line 446
    const-wide/16 v0, 0x0

    .line 449
    :cond_2
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/cache/CacheImpl;->mHugeCache:Lcom/alibaba/doraemon/impl/cache/DiskLruCache;

    invoke-virtual {v2}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->size()J

    move-result-wide v2

    add-long/2addr v2, v0

    goto :goto_0
.end method

.method public has(Ljava/lang/String;)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 479
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 480
    const-string/jumbo v2, "Cache"

    const-string/jumbo v3, "has key is null"

    invoke-static {v2, v3}, Lcom/alibaba/doraemon/DoraemonLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    :cond_0
    :goto_0
    return v1

    .line 484
    :cond_1
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/cache/CacheImpl;->mCache:Ljkz;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alibaba/doraemon/impl/cache/CacheImpl;->mHugeCache:Lcom/alibaba/doraemon/impl/cache/DiskLruCache;

    if-nez v3, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/cache/CacheImpl;->init()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 486
    :cond_3
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/cache/CacheImpl;->mCache:Ljkz;

    invoke-virtual {v3, p1, v1}, Ljkz;->c(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_4

    move v1, v2

    .line 487
    goto :goto_0

    .line 489
    :cond_4
    invoke-direct {p0, p1}, Lcom/alibaba/doraemon/impl/cache/CacheImpl;->readFromHuge(Ljava/lang/String;)Lcom/alibaba/doraemon/cache/CacheEntity;

    move-result-object v0

    .line 490
    .local v0, "entity":Lcom/alibaba/doraemon/cache/CacheEntity;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/alibaba/doraemon/cache/CacheEntity;->isIntegrity()Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public read(Ljava/lang/String;)Lcom/alibaba/doraemon/cache/CacheEntity;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 81
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 82
    const-string/jumbo v2, "Cache"

    const-string/jumbo v3, "read key is null"

    invoke-static {v2, v3}, Lcom/alibaba/doraemon/DoraemonLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_0
    :goto_0
    return-object v0

    .line 86
    :cond_1
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/cache/CacheImpl;->mCache:Ljkz;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/cache/CacheImpl;->mHugeCache:Lcom/alibaba/doraemon/impl/cache/DiskLruCache;

    if-nez v2, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/cache/CacheImpl;->init()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 88
    :cond_3
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/cache/CacheImpl;->mCache:Ljkz;

    .line 1759
    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Ljkz;->a(Ljava/lang/String;I)Ljkz$b;

    move-result-object v1

    .line 89
    .local v1, "co":Ljkz$b;
    if-eqz v1, :cond_4

    .line 90
    new-instance v0, Lcom/alibaba/doraemon/impl/cache/CacheEntityImpl;

    iget-object v2, v1, Ljkz$b;->a:[B

    iget-object v3, v1, Ljkz$b;->b:[B

    invoke-direct {v0, v2, v3}, Lcom/alibaba/doraemon/impl/cache/CacheEntityImpl;-><init>([B[B)V

    goto :goto_0

    .line 96
    :cond_4
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/cache/CacheImpl;->mKeyLock:Lcom/alibaba/doraemon/utils/KeyLock;

    invoke-virtual {v2, p1}, Lcom/alibaba/doraemon/utils/KeyLock;->lock(Ljava/lang/Object;)V

    .line 97
    invoke-direct {p0, p1}, Lcom/alibaba/doraemon/impl/cache/CacheImpl;->readFromHuge(Ljava/lang/String;)Lcom/alibaba/doraemon/cache/CacheEntity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 99
    .local v0, "cacheEntity":Lcom/alibaba/doraemon/cache/CacheEntity;
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/cache/CacheImpl;->mKeyLock:Lcom/alibaba/doraemon/utils/KeyLock;

    invoke-virtual {v2, p1}, Lcom/alibaba/doraemon/utils/KeyLock;->unlock(Ljava/lang/Object;)V

    goto :goto_0

    .end local v0    # "cacheEntity":Lcom/alibaba/doraemon/cache/CacheEntity;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/alibaba/doraemon/impl/cache/CacheImpl;->mKeyLock:Lcom/alibaba/doraemon/utils/KeyLock;

    invoke-virtual {v3, p1}, Lcom/alibaba/doraemon/utils/KeyLock;->unlock(Ljava/lang/Object;)V

    throw v2
.end method

.method public remove(Ljava/lang/String;)Z
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 414
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 415
    const-string/jumbo v3, "Cache"

    const-string/jumbo v4, "remove key is null"

    invoke-static {v3, v4}, Lcom/alibaba/doraemon/DoraemonLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    :cond_0
    :goto_0
    return v2

    .line 419
    :cond_1
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/cache/CacheImpl;->mCache:Ljkz;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alibaba/doraemon/impl/cache/CacheImpl;->mHugeCache:Lcom/alibaba/doraemon/impl/cache/DiskLruCache;

    if-nez v3, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/cache/CacheImpl;->init()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 422
    :cond_3
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/cache/CacheImpl;->mCache:Ljkz;

    .line 4003
    invoke-virtual {v3, p1, v2}, Ljkz;->b(Ljava/lang/String;I)Z

    move-result v0

    .line 425
    .local v0, "ret":Z
    :try_start_0
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/cache/CacheImpl;->mKeyLock:Lcom/alibaba/doraemon/utils/KeyLock;

    invoke-virtual {v3, p1}, Lcom/alibaba/doraemon/utils/KeyLock;->lock(Ljava/lang/Object;)V

    .line 426
    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/alibaba/doraemon/impl/cache/CacheImpl;->mHugeCache:Lcom/alibaba/doraemon/impl/cache/DiskLruCache;

    invoke-virtual {v3, p1}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->remove(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_4

    const/4 v0, 0x1

    .line 430
    :goto_1
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/cache/CacheImpl;->mKeyLock:Lcom/alibaba/doraemon/utils/KeyLock;

    invoke-virtual {v2, p1}, Lcom/alibaba/doraemon/utils/KeyLock;->unlock(Ljava/lang/Object;)V

    :goto_2
    move v2, v0

    .line 432
    goto :goto_0

    :cond_4
    move v0, v2

    .line 426
    goto :goto_1

    .line 427
    :catch_0
    move-exception v1

    .line 428
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_1
    const-string/jumbo v2, "Cache"

    invoke-static {v2, v1}, Lcom/alibaba/doraemon/utils/CommonUtils;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 430
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/cache/CacheImpl;->mKeyLock:Lcom/alibaba/doraemon/utils/KeyLock;

    invoke-virtual {v2, p1}, Lcom/alibaba/doraemon/utils/KeyLock;->unlock(Ljava/lang/Object;)V

    goto :goto_2

    .end local v1    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/alibaba/doraemon/impl/cache/CacheImpl;->mKeyLock:Lcom/alibaba/doraemon/utils/KeyLock;

    invoke-virtual {v3, p1}, Lcom/alibaba/doraemon/utils/KeyLock;->unlock(Ljava/lang/Object;)V

    throw v2
.end method

.method public setAppCacheFactor(F)V
    .locals 0
    .param p1, "factor"    # F

    .prologue
    .line 76
    iput p1, p0, Lcom/alibaba/doraemon/impl/cache/CacheImpl;->mAppCacheFactor:F

    .line 77
    return-void
.end method

.method public setCacheDir(Ljava/lang/String;)V
    .locals 0
    .param p1, "dir"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/cache/CacheImpl;->mCacheDir:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setSdcardFactor(F)V
    .locals 0
    .param p1, "factor"    # F

    .prologue
    .line 71
    iput p1, p0, Lcom/alibaba/doraemon/impl/cache/CacheImpl;->mSdcardFactor:F

    .line 72
    return-void
.end method

.method public wirteHuge(Ljava/lang/String;JLjava/io/InputStream;Z[B)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "skip"    # J
    .param p4, "inputStream"    # Ljava/io/InputStream;
    .param p5, "isEnd"    # Z
    .param p6, "description"    # [B

    .prologue
    .line 231
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/cache/CacheImpl;->mKeyLock:Lcom/alibaba/doraemon/utils/KeyLock;

    invoke-virtual {v0, p1}, Lcom/alibaba/doraemon/utils/KeyLock;->lock(Ljava/lang/Object;)V

    .line 232
    invoke-direct/range {p0 .. p6}, Lcom/alibaba/doraemon/impl/cache/CacheImpl;->wirteHugeLocked(Ljava/lang/String;JLjava/io/InputStream;Z[B)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 234
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/cache/CacheImpl;->mKeyLock:Lcom/alibaba/doraemon/utils/KeyLock;

    invoke-virtual {v1, p1}, Lcom/alibaba/doraemon/utils/KeyLock;->unlock(Ljava/lang/Object;)V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/cache/CacheImpl;->mKeyLock:Lcom/alibaba/doraemon/utils/KeyLock;

    invoke-virtual {v1, p1}, Lcom/alibaba/doraemon/utils/KeyLock;->unlock(Ljava/lang/Object;)V

    throw v0
.end method

.method public wirteHuge(Ljava/lang/String;Ljava/io/InputStream;[B)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "inputStream"    # Ljava/io/InputStream;
    .param p3, "description"    # [B

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 311
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 312
    const-string/jumbo v1, "Cache"

    const-string/jumbo v2, "wirteHuge key is null"

    invoke-static {v1, v2}, Lcom/alibaba/doraemon/DoraemonLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :goto_0
    return v0

    .line 317
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/cache/CacheImpl;->mKeyLock:Lcom/alibaba/doraemon/utils/KeyLock;

    invoke-virtual {v0, p1}, Lcom/alibaba/doraemon/utils/KeyLock;->lock(Ljava/lang/Object;)V

    .line 318
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/alibaba/doraemon/impl/cache/CacheImpl;->wirteHugeLocked(Ljava/lang/String;Ljava/io/InputStream;[BZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 320
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/cache/CacheImpl;->mKeyLock:Lcom/alibaba/doraemon/utils/KeyLock;

    invoke-virtual {v1, p1}, Lcom/alibaba/doraemon/utils/KeyLock;->unlock(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/cache/CacheImpl;->mKeyLock:Lcom/alibaba/doraemon/utils/KeyLock;

    invoke-virtual {v1, p1}, Lcom/alibaba/doraemon/utils/KeyLock;->unlock(Ljava/lang/Object;)V

    throw v0
.end method

.method public write(Ljava/lang/String;[BI[B)Z
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B
    .param p3, "length"    # I
    .param p4, "description"    # [B

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 220
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    const-string/jumbo v0, "Cache"

    const-string/jumbo v1, "wirte key is null"

    invoke-static {v0, v1}, Lcom/alibaba/doraemon/DoraemonLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/cache/CacheImpl;->mCache:Ljkz;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/cache/CacheImpl;->init()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/cache/CacheImpl;->mCache:Ljkz;

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, v2

    .line 3436
    invoke-virtual/range {v0 .. v6}, Ljkz;->a(Ljava/lang/String;I[BI[BZ)Z

    move-result v0

    .line 225
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public write(Ljava/lang/String;[B[B)Z
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B
    .param p3, "description"    # [B

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 210
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    const-string/jumbo v0, "Cache"

    const-string/jumbo v1, "wirte key is null"

    invoke-static {v0, v1}, Lcom/alibaba/doraemon/DoraemonLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/cache/CacheImpl;->mCache:Ljkz;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/cache/CacheImpl;->init()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/cache/CacheImpl;->mCache:Ljkz;

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, v2

    .line 2447
    invoke-virtual/range {v0 .. v5}, Ljkz;->a(Ljava/lang/String;I[B[BZ)Z

    move-result v0

    .line 215
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method
