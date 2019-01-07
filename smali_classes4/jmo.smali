.class public final Ljmo;
.super Ljava/lang/Object;
.source "UpdateCenterUtils.java"


# static fields
.field private static final a:[C

.field private static final b:Ljava/lang/Object;

.field private static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Ljmo;->a:[C

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ljmo;->b:Ljava/lang/Object;

    .line 398
    const-string/jumbo v0, "hotpatch"

    sput-object v0, Ljmo;->c:Ljava/lang/String;

    return-void

    .line 42
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/File;Ljava/io/File;)V
    .locals 8
    .param p0, "src"    # Ljava/io/File;
    .param p1, "dest"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 414
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    const/4 v2, 0x3

    if-ge v7, v2, :cond_3

    .line 415
    const/4 v1, 0x0

    .line 416
    .local v1, "inChannel":Ljava/nio/channels/FileChannel;
    const/4 v6, 0x0

    .line 418
    .local v6, "outChannel":Ljava/nio/channels/FileChannel;
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 419
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 420
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 422
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 424
    :cond_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 425
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    .line 426
    const-wide/16 v2, 0x0

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 435
    if-eqz v1, :cond_2

    .line 436
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 438
    :cond_2
    if-eqz v6, :cond_3

    .line 439
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V

    .line 443
    .end local v1    # "inChannel":Ljava/nio/channels/FileChannel;
    .end local v6    # "outChannel":Ljava/nio/channels/FileChannel;
    :cond_3
    return-void

    .line 428
    .restart local v1    # "inChannel":Ljava/nio/channels/FileChannel;
    .restart local v6    # "outChannel":Ljava/nio/channels/FileChannel;
    :catch_0
    move-exception v0

    .line 429
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 430
    const/4 v2, 0x2

    if-ne v7, v2, :cond_6

    .line 431
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Failed to copy file[src="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", dest="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 435
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_4

    .line 436
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 438
    :cond_4
    if-eqz v6, :cond_5

    .line 439
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V

    :cond_5
    throw v2

    .line 435
    .restart local v0    # "e":Ljava/lang/Throwable;
    :cond_6
    if-eqz v1, :cond_7

    .line 436
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 438
    :cond_7
    if-eqz v6, :cond_8

    .line 439
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V

    .line 414
    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "monitorPoint"    # Ljava/lang/String;
    .param p1, "arg"    # Ljava/lang/String;

    .prologue
    .line 404
    sget-object v0, Ljmo;->c:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Alarm;->commitSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "monitorPoint"    # Ljava/lang/String;
    .param p1, "arg"    # Ljava/lang/String;
    .param p2, "errorCode"    # Ljava/lang/String;
    .param p3, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 400
    sget-object v0, Ljmo;->c:Ljava/lang/String;

    invoke-static {v0, p0, p1, p2, p3}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Alarm;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    return-void
.end method

.method public static a(Landroid/app/Application;)Z
    .locals 3
    .param p0, "context"    # Landroid/app/Application;

    .prologue
    const/4 v0, 0x1

    .line 174
    .line 1142
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1143
    const-string/jumbo v2, "is_enable_hotpatch"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 174
    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/taobao/hotpatch/util/HotPatchUtils;->isDeviceSupport(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 178
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 343
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 344
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 348
    .end local v0    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static a(Ljava/io/File;)Z
    .locals 6
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 312
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 313
    :cond_0
    const/4 v5, 0x1

    .line 323
    :goto_0
    return v5

    .line 315
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 316
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 317
    .local v2, "files":[Ljava/io/File;
    if-eqz v2, :cond_2

    .line 318
    move-object v0, v2

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v2

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v1, v0, v3

    .line 319
    .local v1, "f":Ljava/io/File;
    invoke-static {v1}, Ljmo;->a(Ljava/io/File;)Z

    .line 318
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 323
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "files":[Ljava/io/File;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v5

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 446
    invoke-static {p0}, Ljmo;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 447
    .local v1, "processName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 448
    .local v0, "packageName":Ljava/lang/String;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 449
    const/4 v2, 0x1

    .line 451
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 457
    if-nez p0, :cond_1

    .line 474
    :cond_0
    :goto_0
    return-object v5

    .line 459
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    .line 460
    .local v4, "pid":I
    const-string/jumbo v6, "activity"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .line 461
    .local v3, "mActivityManager":Landroid/app/ActivityManager;
    if-eqz v3, :cond_0

    .line 463
    invoke-virtual {v3}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 464
    .local v2, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_0

    .line 467
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 468
    .local v0, "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v6, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v6, v4, :cond_2

    .line 469
    iget-object v5, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 474
    .end local v0    # "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v3    # "mActivityManager":Landroid/app/ActivityManager;
    .end local v4    # "pid":I
    :catch_0
    move-exception v6

    goto :goto_0
.end method
