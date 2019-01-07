.class public Lcom/ta/audid/collect/DeviceInfo2;
.super Ljava/lang/Object;
.source "DeviceInfo2.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkSensor(Landroid/content/Context;I)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sensorType"    # I

    .prologue
    .line 412
    const-string/jumbo v2, "sensor"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    .line 413
    .local v1, "sm":Landroid/hardware/SensorManager;
    invoke-virtual {v1, p1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 414
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 415
    const/4 v2, 0x1

    .line 417
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static checkTfCard(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 340
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 341
    invoke-static {p0}, Lcom/ta/audid/collect/DeviceInfo2;->checkTfCardN(Landroid/content/Context;)Z

    move-result v0

    .line 346
    :goto_0
    return v0

    .line 343
    :cond_0
    invoke-static {p0}, Lcom/ta/audid/collect/DeviceInfo2;->checkTfCard0(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 346
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static checkTfCard0(Landroid/content/Context;)Z
    .locals 15
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v11, 0x0

    .line 369
    const/4 v3, 0x0

    .line 370
    .local v3, "isMounted":Z
    const-string/jumbo v10, "storage"

    invoke-virtual {p0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/storage/StorageManager;

    .line 372
    .local v8, "sm":Landroid/os/storage/StorageManager;
    :try_start_0
    const-class v10, Landroid/os/storage/StorageManager;

    const-string/jumbo v12, "getVolumeList"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Class;

    invoke-virtual {v10, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 373
    .local v2, "getVolumeList":Ljava/lang/reflect/Method;
    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 374
    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v2, v8, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/Object;

    move-object v0, v10

    check-cast v0, [Ljava/lang/Object;

    move-object v7, v0

    .line 375
    .local v7, "results":[Ljava/lang/Object;
    if-eqz v7, :cond_0

    .line 376
    array-length v12, v7

    move v10, v11

    :goto_0
    if-ge v10, v12, :cond_0

    aget-object v6, v7, v10

    .line 377
    .local v6, "result":Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    const-string/jumbo v13, "isRemovable"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Class;

    invoke-virtual {v11, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 378
    .local v5, "mRemoveable":Ljava/lang/reflect/Method;
    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    .line 379
    .local v4, "isRemovable":Ljava/lang/Boolean;
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 380
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    const-string/jumbo v13, "getState"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Class;

    invoke-virtual {v11, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 381
    .local v1, "getState":Ljava/lang/reflect/Method;
    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual {v1, v6, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 382
    .local v9, "state":Ljava/lang/String;
    const-string/jumbo v11, "mounted"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    if-eqz v11, :cond_1

    .line 383
    const/4 v3, 0x1

    .line 392
    .end local v1    # "getState":Ljava/lang/reflect/Method;
    .end local v2    # "getVolumeList":Ljava/lang/reflect/Method;
    .end local v4    # "isRemovable":Ljava/lang/Boolean;
    .end local v5    # "mRemoveable":Ljava/lang/reflect/Method;
    .end local v6    # "result":Ljava/lang/Object;
    .end local v7    # "results":[Ljava/lang/Object;
    .end local v9    # "state":Ljava/lang/String;
    :cond_0
    :goto_1
    return v3

    .line 376
    .restart local v2    # "getVolumeList":Ljava/lang/reflect/Method;
    .restart local v4    # "isRemovable":Ljava/lang/Boolean;
    .restart local v5    # "mRemoveable":Ljava/lang/reflect/Method;
    .restart local v6    # "result":Ljava/lang/Object;
    .restart local v7    # "results":[Ljava/lang/Object;
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .end local v2    # "getVolumeList":Ljava/lang/reflect/Method;
    .end local v4    # "isRemovable":Ljava/lang/Boolean;
    .end local v5    # "mRemoveable":Ljava/lang/reflect/Method;
    .end local v6    # "result":Ljava/lang/Object;
    .end local v7    # "results":[Ljava/lang/Object;
    :catch_0
    move-exception v10

    goto :goto_1
.end method

.method private static checkTfCardN(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .prologue
    .line 352
    const-string/jumbo v5, "storage"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    .line 353
    .local v1, "sm":Landroid/os/storage/StorageManager;
    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getStorageVolumes()Ljava/util/List;

    move-result-object v4

    .line 354
    .local v4, "storageVolumeList":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/StorageVolume;>;"
    if-eqz v4, :cond_1

    .line 355
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageVolume;

    .line 356
    .local v3, "storageVolume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v0

    .line 357
    .local v0, "isRemovable":Z
    if-eqz v0, :cond_0

    .line 358
    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    move-result-object v2

    .line 359
    .local v2, "state":Ljava/lang/String;
    const-string/jumbo v6, "mounted"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 360
    const/4 v5, 0x1

    .line 365
    .end local v0    # "isRemovable":Z
    .end local v2    # "state":Ljava/lang/String;
    .end local v3    # "storageVolume":Landroid/os/storage/StorageVolume;
    :goto_0
    return v5

    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static getAndroidID(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 142
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getAvailableSize()Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 314
    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 315
    .local v0, "stat":Landroid/os/StatFs;
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-long v4, v1

    mul-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 317
    .end local v0    # "stat":Landroid/os/StatFs;
    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    const-string/jumbo v1, ""

    goto :goto_0
.end method

.method public static getBattery(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 464
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1

    .line 465
    invoke-static {p0}, Lcom/ta/audid/collect/DeviceInfo2;->getBatteryL(Landroid/content/Context;)I

    move-result v0

    .line 466
    .local v0, "battery":I
    if-lez v0, :cond_0

    .line 467
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 472
    .end local v0    # "battery":I
    :goto_0
    return-object v1

    .line 469
    .restart local v0    # "battery":I
    :cond_0
    invoke-static {}, Lcom/ta/audid/collect/DeviceInfo2;->getBattery0()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 472
    .end local v0    # "battery":I
    :cond_1
    invoke-static {}, Lcom/ta/audid/collect/DeviceInfo2;->getBattery0()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static getBattery0()Ljava/lang/String;
    .locals 9

    .prologue
    .line 489
    const-string/jumbo v6, ""

    .line 490
    .local v6, "str":Ljava/lang/String;
    const/4 v1, 0x0

    .line 491
    .local v1, "inputStreamReader":Ljava/io/InputStreamReader;
    const/4 v3, 0x0

    .line 493
    .local v3, "lineNumberReader":Ljava/io/LineNumberReader;
    :try_start_0
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    const-string/jumbo v8, "cat /sys/class/power_supply/battery/uevent"

    invoke-virtual {v7, v8}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 494
    .end local v1    # "inputStreamReader":Ljava/io/InputStreamReader;
    .local v2, "inputStreamReader":Ljava/io/InputStreamReader;
    :try_start_1
    new-instance v4, Ljava/io/LineNumberReader;

    invoke-direct {v4, v2}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 495
    .end local v3    # "lineNumberReader":Ljava/io/LineNumberReader;
    .local v4, "lineNumberReader":Ljava/io/LineNumberReader;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v7, 0x64

    if-ge v0, v7, :cond_0

    .line 497
    :try_start_2
    invoke-virtual {v4}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 498
    .local v5, "readLine":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 499
    const-string/jumbo v7, "POWER_SUPPLY_CAPACITY"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 500
    const-string/jumbo v7, "="

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v6

    .line 516
    .end local v5    # "readLine":Ljava/lang/String;
    :cond_0
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 523
    :goto_1
    :try_start_4
    invoke-virtual {v4}, Ljava/io/LineNumberReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-object v3, v4

    .end local v4    # "lineNumberReader":Ljava/io/LineNumberReader;
    .restart local v3    # "lineNumberReader":Ljava/io/LineNumberReader;
    move-object v1, v2

    .line 529
    .end local v0    # "i":I
    .end local v2    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v1    # "inputStreamReader":Ljava/io/InputStreamReader;
    :cond_1
    :goto_2
    return-object v6

    .end local v1    # "inputStreamReader":Ljava/io/InputStreamReader;
    .end local v3    # "lineNumberReader":Ljava/io/LineNumberReader;
    .restart local v0    # "i":I
    .restart local v2    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v4    # "lineNumberReader":Ljava/io/LineNumberReader;
    :catch_0
    move-exception v7

    .line 509
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 495
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 528
    :catch_1
    move-exception v7

    move-object v3, v4

    .end local v4    # "lineNumberReader":Ljava/io/LineNumberReader;
    .restart local v3    # "lineNumberReader":Ljava/io/LineNumberReader;
    move-object v1, v2

    .end local v2    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v1    # "inputStreamReader":Ljava/io/InputStreamReader;
    goto :goto_2

    .end local v0    # "i":I
    :catch_2
    move-exception v7

    .line 515
    :goto_3
    if-eqz v1, :cond_3

    .line 516
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 522
    :cond_3
    :goto_4
    if-eqz v3, :cond_1

    .line 523
    :try_start_6
    invoke-virtual {v3}, Ljava/io/LineNumberReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    .line 528
    :catch_3
    move-exception v7

    goto :goto_2

    .line 514
    :catchall_0
    move-exception v7

    .line 515
    :goto_5
    if-eqz v1, :cond_4

    .line 516
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 522
    :cond_4
    :goto_6
    if-eqz v3, :cond_5

    .line 523
    :try_start_8
    invoke-virtual {v3}, Ljava/io/LineNumberReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    .line 527
    :cond_5
    :goto_7
    throw v7

    .end local v1    # "inputStreamReader":Ljava/io/InputStreamReader;
    .end local v3    # "lineNumberReader":Ljava/io/LineNumberReader;
    .restart local v0    # "i":I
    .restart local v2    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v4    # "lineNumberReader":Ljava/io/LineNumberReader;
    :catch_4
    move-exception v7

    goto :goto_1

    .end local v0    # "i":I
    .end local v2    # "inputStreamReader":Ljava/io/InputStreamReader;
    .end local v4    # "lineNumberReader":Ljava/io/LineNumberReader;
    .restart local v1    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v3    # "lineNumberReader":Ljava/io/LineNumberReader;
    :catch_5
    move-exception v7

    goto :goto_4

    :catch_6
    move-exception v8

    goto :goto_6

    :catch_7
    move-exception v8

    goto :goto_7

    .line 514
    .end local v1    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v2    # "inputStreamReader":Ljava/io/InputStreamReader;
    :catchall_1
    move-exception v7

    move-object v1, v2

    .end local v2    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v1    # "inputStreamReader":Ljava/io/InputStreamReader;
    goto :goto_5

    .end local v1    # "inputStreamReader":Ljava/io/InputStreamReader;
    .end local v3    # "lineNumberReader":Ljava/io/LineNumberReader;
    .restart local v0    # "i":I
    .restart local v2    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v4    # "lineNumberReader":Ljava/io/LineNumberReader;
    :catchall_2
    move-exception v7

    move-object v3, v4

    .end local v4    # "lineNumberReader":Ljava/io/LineNumberReader;
    .restart local v3    # "lineNumberReader":Ljava/io/LineNumberReader;
    move-object v1, v2

    .end local v2    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v1    # "inputStreamReader":Ljava/io/InputStreamReader;
    goto :goto_5

    .end local v0    # "i":I
    .end local v1    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v2    # "inputStreamReader":Ljava/io/InputStreamReader;
    :catch_8
    move-exception v7

    move-object v1, v2

    .end local v2    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v1    # "inputStreamReader":Ljava/io/InputStreamReader;
    goto :goto_3
.end method

.method private static getBatteryL(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 478
    const/4 v0, 0x0

    .line 480
    .local v0, "battery":I
    :try_start_0
    const-string/jumbo v2, "batterymanager"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryManager;

    .line 481
    .local v1, "batteryManager":Landroid/os/BatteryManager;
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/BatteryManager;->getIntProperty(I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 485
    .end local v1    # "batteryManager":Landroid/os/BatteryManager;
    :goto_0
    return v0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static getBluetoothMac()Ljava/lang/String;
    .locals 3

    .prologue
    .line 129
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 130
    .local v1, "defaultAdapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 131
    :cond_0
    const-string/jumbo v0, ""

    .line 136
    :cond_1
    :goto_0
    return-object v0

    .line 133
    :cond_2
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "address":Ljava/lang/String;
    invoke-static {v0}, Lcom/ta/utdid2/android/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v0, ""
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 136
    .end local v0    # "address":Ljava/lang/String;
    :catch_0
    move-exception v2

    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static getCPUSerial()Ljava/lang/String;
    .locals 9

    .prologue
    .line 168
    const-string/jumbo v6, ""

    .line 169
    .local v6, "str":Ljava/lang/String;
    const/4 v1, 0x0

    .line 170
    .local v1, "inputStreamReader":Ljava/io/InputStreamReader;
    const/4 v3, 0x0

    .line 172
    .local v3, "lineNumberReader":Ljava/io/LineNumberReader;
    :try_start_0
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    const-string/jumbo v8, "cat /proc/cpuinfo | grep Serial"

    invoke-virtual {v7, v8}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    .end local v1    # "inputStreamReader":Ljava/io/InputStreamReader;
    .local v2, "inputStreamReader":Ljava/io/InputStreamReader;
    :try_start_1
    new-instance v4, Ljava/io/LineNumberReader;

    invoke-direct {v4, v2}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 174
    .end local v3    # "lineNumberReader":Ljava/io/LineNumberReader;
    .local v4, "lineNumberReader":Ljava/io/LineNumberReader;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v7, 0x64

    if-ge v0, v7, :cond_0

    .line 176
    :try_start_2
    invoke-virtual {v4}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 177
    .local v5, "readLine":Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 178
    const-string/jumbo v7, "Serial"

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-ltz v7, :cond_2

    .line 179
    const-string/jumbo v7, ":"

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v6

    .line 193
    .end local v5    # "readLine":Ljava/lang/String;
    :cond_0
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 200
    :goto_1
    :try_start_4
    invoke-virtual {v4}, Ljava/io/LineNumberReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-object v3, v4

    .end local v4    # "lineNumberReader":Ljava/io/LineNumberReader;
    .restart local v3    # "lineNumberReader":Ljava/io/LineNumberReader;
    move-object v1, v2

    .line 206
    .end local v0    # "i":I
    .end local v2    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v1    # "inputStreamReader":Ljava/io/InputStreamReader;
    :cond_1
    :goto_2
    return-object v6

    .end local v1    # "inputStreamReader":Ljava/io/InputStreamReader;
    .end local v3    # "lineNumberReader":Ljava/io/LineNumberReader;
    .restart local v0    # "i":I
    .restart local v2    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v4    # "lineNumberReader":Ljava/io/LineNumberReader;
    :catch_0
    move-exception v7

    .line 186
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 174
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 205
    :catch_1
    move-exception v7

    move-object v3, v4

    .end local v4    # "lineNumberReader":Ljava/io/LineNumberReader;
    .restart local v3    # "lineNumberReader":Ljava/io/LineNumberReader;
    move-object v1, v2

    .end local v2    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v1    # "inputStreamReader":Ljava/io/InputStreamReader;
    goto :goto_2

    .end local v0    # "i":I
    :catch_2
    move-exception v7

    .line 192
    :goto_3
    if-eqz v1, :cond_3

    .line 193
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 199
    :cond_3
    :goto_4
    if-eqz v3, :cond_1

    .line 200
    :try_start_6
    invoke-virtual {v3}, Ljava/io/LineNumberReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    .line 205
    :catch_3
    move-exception v7

    goto :goto_2

    .line 191
    :catchall_0
    move-exception v7

    .line 192
    :goto_5
    if-eqz v1, :cond_4

    .line 193
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 199
    :cond_4
    :goto_6
    if-eqz v3, :cond_5

    .line 200
    :try_start_8
    invoke-virtual {v3}, Ljava/io/LineNumberReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    .line 204
    :cond_5
    :goto_7
    throw v7

    .end local v1    # "inputStreamReader":Ljava/io/InputStreamReader;
    .end local v3    # "lineNumberReader":Ljava/io/LineNumberReader;
    .restart local v0    # "i":I
    .restart local v2    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v4    # "lineNumberReader":Ljava/io/LineNumberReader;
    :catch_4
    move-exception v7

    goto :goto_1

    .end local v0    # "i":I
    .end local v2    # "inputStreamReader":Ljava/io/InputStreamReader;
    .end local v4    # "lineNumberReader":Ljava/io/LineNumberReader;
    .restart local v1    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v3    # "lineNumberReader":Ljava/io/LineNumberReader;
    :catch_5
    move-exception v7

    goto :goto_4

    :catch_6
    move-exception v8

    goto :goto_6

    :catch_7
    move-exception v8

    goto :goto_7

    .line 191
    .end local v1    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v2    # "inputStreamReader":Ljava/io/InputStreamReader;
    :catchall_1
    move-exception v7

    move-object v1, v2

    .end local v2    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v1    # "inputStreamReader":Ljava/io/InputStreamReader;
    goto :goto_5

    .end local v1    # "inputStreamReader":Ljava/io/InputStreamReader;
    .end local v3    # "lineNumberReader":Ljava/io/LineNumberReader;
    .restart local v0    # "i":I
    .restart local v2    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v4    # "lineNumberReader":Ljava/io/LineNumberReader;
    :catchall_2
    move-exception v7

    move-object v3, v4

    .end local v4    # "lineNumberReader":Ljava/io/LineNumberReader;
    .restart local v3    # "lineNumberReader":Ljava/io/LineNumberReader;
    move-object v1, v2

    .end local v2    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v1    # "inputStreamReader":Ljava/io/InputStreamReader;
    goto :goto_5

    .end local v0    # "i":I
    .end local v1    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v2    # "inputStreamReader":Ljava/io/InputStreamReader;
    :catch_8
    move-exception v7

    move-object v1, v2

    .end local v2    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v1    # "inputStreamReader":Ljava/io/InputStreamReader;
    goto :goto_3
.end method

.method public static getCpuCount()Ljava/lang/String;
    .locals 2

    .prologue
    .line 223
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/sys/devices/system/cpu/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/ta/audid/collect/DeviceInfo2$1;

    invoke-direct {v1}, Lcom/ta/audid/collect/DeviceInfo2$1;-><init>()V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 229
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v0, "1"

    goto :goto_0
.end method

.method public static getIMEI(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    const-string/jumbo v1, ""

    .line 48
    .local v1, "imei":Ljava/lang/String;
    if-eqz p0, :cond_2

    .line 50
    :try_start_0
    const-string/jumbo v3, "phone"

    .line 51
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 52
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v2, :cond_0

    .line 53
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 55
    :cond_0
    invoke-static {v1}, Lcom/ta/utdid2/android/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .end local v2    # "tm":Landroid/telephony/TelephonyManager;
    :goto_0
    return-object v3

    .restart local v2    # "tm":Landroid/telephony/TelephonyManager;
    :cond_1
    move-object v3, v1

    .line 55
    goto :goto_0

    .line 56
    .end local v2    # "tm":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, ""

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/ta/audid/utils/UtdidLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    move-object v3, v1

    .line 60
    goto :goto_0
.end method

.method public static getIMSI(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    const-string/jumbo v1, ""

    .line 65
    .local v1, "imsi":Ljava/lang/String;
    if-eqz p0, :cond_2

    .line 67
    :try_start_0
    const-string/jumbo v3, "phone"

    .line 68
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 69
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v2, :cond_0

    .line 70
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 72
    :cond_0
    invoke-static {v1}, Lcom/ta/utdid2/android/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .end local v2    # "tm":Landroid/telephony/TelephonyManager;
    :goto_0
    return-object v3

    .restart local v2    # "tm":Landroid/telephony/TelephonyManager;
    :cond_1
    move-object v3, v1

    .line 72
    goto :goto_0

    .line 73
    .end local v2    # "tm":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, ""

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/ta/audid/utils/UtdidLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    move-object v3, v1

    .line 77
    goto :goto_0
.end method

.method public static getLowMem(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 272
    :try_start_0
    const-string/jumbo v2, "activity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 273
    .local v0, "activityManager":Landroid/app/ActivityManager;
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 274
    .local v1, "info":Landroid/app/ActivityManager$MemoryInfo;
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 275
    iget-wide v2, v1, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    const/16 v4, 0xa

    shr-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 277
    .end local v0    # "activityManager":Landroid/app/ActivityManager;
    .end local v1    # "info":Landroid/app/ActivityManager$MemoryInfo;
    :goto_0
    return-object v2

    :catch_0
    move-exception v2

    const-string/jumbo v2, ""

    goto :goto_0
.end method

.method public static getMaxCpuFreq()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    const-string/jumbo v0, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"

    invoke-static {v0}, Lcom/ta/audid/utils/FileUtils;->readFileLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMemFreeSize(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 260
    :try_start_0
    const-string/jumbo v2, "activity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 261
    .local v0, "activityManager":Landroid/app/ActivityManager;
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 262
    .local v1, "info":Landroid/app/ActivityManager$MemoryInfo;
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 263
    iget-wide v2, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    const/16 v4, 0xa

    shr-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 265
    .end local v0    # "activityManager":Landroid/app/ActivityManager;
    .end local v1    # "info":Landroid/app/ActivityManager$MemoryInfo;
    :goto_0
    return-object v2

    :catch_0
    move-exception v2

    const-string/jumbo v2, ""

    goto :goto_0
.end method

.method public static getMemThreshold(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 284
    :try_start_0
    const-string/jumbo v2, "activity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 285
    .local v0, "activityManager":Landroid/app/ActivityManager;
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 286
    .local v1, "info":Landroid/app/ActivityManager$MemoryInfo;
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 287
    iget-boolean v2, v1, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    if-eqz v2, :cond_0

    .line 288
    const-string/jumbo v2, "1"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    .end local v0    # "activityManager":Landroid/app/ActivityManager;
    .end local v1    # "info":Landroid/app/ActivityManager$MemoryInfo;
    :goto_0
    return-object v2

    .line 290
    .restart local v0    # "activityManager":Landroid/app/ActivityManager;
    .restart local v1    # "info":Landroid/app/ActivityManager$MemoryInfo;
    :cond_0
    const-string/jumbo v2, "0"

    goto :goto_0

    .line 293
    .end local v0    # "activityManager":Landroid/app/ActivityManager;
    .end local v1    # "info":Landroid/app/ActivityManager$MemoryInfo;
    :catch_0
    move-exception v2

    const-string/jumbo v2, "0"

    goto :goto_0
.end method

.method public static getMemTotalSize()Ljava/lang/String;
    .locals 3

    .prologue
    .line 247
    const-string/jumbo v1, "/proc/meminfo"

    invoke-static {v1}, Lcom/ta/audid/utils/FileUtils;->readFileLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, "memTotal":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 249
    const-string/jumbo v1, "\\s+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    .line 251
    :goto_0
    return-object v1

    :cond_0
    const-string/jumbo v1, ""

    goto :goto_0
.end method

.method public static getMinCpuFreq()Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    const-string/jumbo v0, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_min_freq"

    invoke-static {v0}, Lcom/ta/audid/utils/FileUtils;->readFileLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNandID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    const-string/jumbo v0, "/sys/block/mmcblk0/device/cid"

    invoke-static {v0}, Lcom/ta/audid/utils/FileUtils;->readFileLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPhoneNumber(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 218
    invoke-static {v0}, Lcom/ta/utdid2/android/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, ""

    :cond_0
    return-object v0
.end method

.method public static getScreenDpi(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 323
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 325
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static getScreenResolution(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 331
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 332
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 334
    .end local v0    # "displayMetrics":Landroid/util/DisplayMetrics;
    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    const-string/jumbo v1, ""

    goto :goto_0
.end method

.method public static getSerialNum()Ljava/lang/String;
    .locals 2

    .prologue
    .line 146
    const-string/jumbo v0, "ro.serialno"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/ta/audid/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSimSerialNum(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 152
    const-string/jumbo v1, ""

    .line 154
    .local v1, "str":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v2, "phone"

    .line 155
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 159
    .local v0, "simSerialNumber":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Lcom/ta/utdid2/android/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v0, ""

    .end local v0    # "simSerialNumber":Ljava/lang/String;
    :cond_0
    return-object v0

    .line 157
    :catch_0
    move-exception v2

    move-object v0, v1

    .restart local v0    # "simSerialNumber":Ljava/lang/String;
    goto :goto_0
.end method

.method public static getTotalExternalMemorySize(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 302
    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 303
    .local v0, "stat":Landroid/os/StatFs;
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v4, v1

    mul-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 305
    .end local v0    # "stat":Landroid/os/StatFs;
    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    const-string/jumbo v1, ""

    goto :goto_0
.end method

.method public static getWifiMacID(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 82
    invoke-static {}, Lcom/ta/audid/collect/DeviceInfo2;->getWifiMacID23()Ljava/lang/String;

    move-result-object v0

    .line 84
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/ta/audid/collect/DeviceInfo2;->getWifiMacID22(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getWifiMacID22(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 109
    if-eqz p0, :cond_2

    .line 110
    :try_start_0
    const-string/jumbo v3, "wifi"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 111
    .local v2, "wifimanage":Landroid/net/wifi/WifiManager;
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 112
    .local v1, "wifiinfo":Landroid/net/wifi/WifiInfo;
    if-eqz v1, :cond_1

    .line 113
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "address":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 115
    const-string/jumbo v0, ""
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .end local v0    # "address":Ljava/lang/String;
    .end local v1    # "wifiinfo":Landroid/net/wifi/WifiInfo;
    .end local v2    # "wifimanage":Landroid/net/wifi/WifiManager;
    :cond_0
    :goto_0
    return-object v0

    .line 119
    .restart local v1    # "wifiinfo":Landroid/net/wifi/WifiInfo;
    .restart local v2    # "wifimanage":Landroid/net/wifi/WifiManager;
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0

    .end local v1    # "wifiinfo":Landroid/net/wifi/WifiInfo;
    .end local v2    # "wifimanage":Landroid/net/wifi/WifiManager;
    :catch_0
    move-exception v3

    .line 124
    :cond_2
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private static getWifiMacID23()Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 89
    const-string/jumbo v4, ""

    .line 91
    .local v4, "macAddress":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v6, "wlan0"

    invoke-static {v6}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v5

    .line 93
    .local v5, "networkInterface":Ljava/net/NetworkInterface;
    invoke-virtual {v5}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v3

    .line 94
    .local v3, "mac":[B
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .local v0, "b":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, v3

    if-ge v2, v6, :cond_1

    .line 96
    const-string/jumbo v7, "%02X%s"

    const/4 v6, 0x2

    new-array v8, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget-byte v9, v3, v2

    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    aput-object v9, v8, v6

    const/4 v9, 0x1

    array-length v6, v3

    add-int/lit8 v6, v6, -0x1

    if-ge v2, v6, :cond_0

    const-string/jumbo v6, ":"

    :goto_1
    aput-object v6, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 96
    :cond_0
    const-string/jumbo v6, ""

    goto :goto_1

    .line 98
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 104
    .end local v0    # "b":Ljava/lang/StringBuilder;
    .end local v2    # "i":I
    .end local v3    # "mac":[B
    .end local v5    # "networkInterface":Ljava/net/NetworkInterface;
    :goto_2
    return-object v4

    .line 99
    :catch_0
    move-exception v1

    .line 101
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v6, ""

    new-array v7, v11, [Ljava/lang/Object;

    aput-object v1, v7, v10

    invoke-static {v6, v7}, Lcom/ta/audid/utils/UtdidLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public static hasBluetoothDevice(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 452
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "android.hardware.bluetooth_le"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    .line 453
    const/4 v0, 0x1

    .line 458
    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static hasFingerprintDevice(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 436
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_0

    .line 438
    :try_start_0
    const-string/jumbo v4, "fingerprint"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/FingerprintManager;

    .line 439
    .local v1, "fingerprintManager":Landroid/hardware/fingerprint/FingerprintManager;
    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 446
    .end local v1    # "fingerprintManager":Landroid/hardware/fingerprint/FingerprintManager;
    :goto_0
    return v2

    .line 442
    :catch_0
    move-exception v0

    .line 443
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v4, ""

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v4, v2}, Lcom/ta/audid/utils/UtdidLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    move v2, v3

    .line 446
    goto :goto_0
.end method

.method public static hasGPSDevice(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 422
    const-string/jumbo v3, "location"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 423
    .local v0, "mgr":Landroid/location/LocationManager;
    if-nez v0, :cond_1

    .line 430
    :cond_0
    :goto_0
    return v2

    .line 426
    :cond_1
    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v1

    .line 427
    .local v1, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    .line 430
    const-string/jumbo v2, "gps"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method
