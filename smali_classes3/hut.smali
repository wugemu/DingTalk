.class public final Lhut;
.super Ljava/lang/Object;
.source "AppUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 387
    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 96
    :try_start_0
    const-string/jumbo v1, "/proc/self/cmdline"

    .line 1321
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1331
    const/4 v1, 0x1

    invoke-static {v2, v1}, Lhut;->a(Ljava/io/File;I)Ljava/util/List;

    move-result-object v1

    .line 1332
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 96
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    return-object v1

    .line 1332
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const-string/jumbo v1, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v1, "get my process name by cmd line failure ."

    invoke-static {v1, v0}, Lhuy;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 100
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    if-eqz p0, :cond_1

    .line 43
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    .line 45
    .local v2, "pid":I
    :try_start_0
    const-string/jumbo v3, "activity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 46
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 47
    .local v1, "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v4, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, v2, :cond_0

    .line 48
    iget-object v3, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .end local v0    # "activityManager":Landroid/app/ActivityManager;
    .end local v1    # "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v2    # "pid":I
    :goto_0
    return-object v3

    .restart local v2    # "pid":I
    :catch_0
    move-exception v3

    .end local v2    # "pid":I
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/io/File;)Ljava/lang/String;
    .locals 9
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 420
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 421
    .local v1, "builder":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 422
    .local v3, "in":Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .line 424
    .local v5, "input":Ljava/io/InputStreamReader;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 425
    .end local v3    # "in":Ljava/io/FileInputStream;
    .local v4, "in":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 427
    .end local v5    # "input":Ljava/io/InputStreamReader;
    .local v6, "input":Ljava/io/InputStreamReader;
    const/16 v8, 0x1000

    :try_start_2
    new-array v0, v8, [C

    .line 429
    .local v0, "buffer":[C
    :goto_0
    const/4 v8, -0x1

    invoke-virtual {v6, v0}, Ljava/io/InputStreamReader;->read([C)I

    move-result v7

    .local v7, "n":I
    if-eq v8, v7, :cond_0

    .line 430
    const/4 v8, 0x0

    invoke-virtual {v1, v0, v8, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 432
    .end local v0    # "buffer":[C
    .end local v7    # "n":I
    :catch_0
    move-exception v2

    move-object v5, v6

    .end local v6    # "input":Ljava/io/InputStreamReader;
    .restart local v5    # "input":Ljava/io/InputStreamReader;
    move-object v3, v4

    .line 433
    .end local v4    # "in":Ljava/io/FileInputStream;
    .local v2, "e":Ljava/lang/Exception;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    :goto_1
    :try_start_3
    const-string/jumbo v8, "readFully."

    invoke-static {v8, v2}, Lhuy;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 435
    invoke-static {v5}, Lhut;->a(Ljava/io/Closeable;)V

    .line 436
    invoke-static {v3}, Lhut;->a(Ljava/io/Closeable;)V

    .line 438
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 435
    .end local v3    # "in":Ljava/io/FileInputStream;
    .end local v5    # "input":Ljava/io/InputStreamReader;
    .restart local v0    # "buffer":[C
    .restart local v4    # "in":Ljava/io/FileInputStream;
    .restart local v6    # "input":Ljava/io/InputStreamReader;
    .restart local v7    # "n":I
    :cond_0
    invoke-static {v6}, Lhut;->a(Ljava/io/Closeable;)V

    .line 436
    invoke-static {v4}, Lhut;->a(Ljava/io/Closeable;)V

    move-object v5, v6

    .end local v6    # "input":Ljava/io/InputStreamReader;
    .restart local v5    # "input":Ljava/io/InputStreamReader;
    move-object v3, v4

    .line 437
    .end local v4    # "in":Ljava/io/FileInputStream;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    goto :goto_2

    .line 435
    .end local v0    # "buffer":[C
    .end local v7    # "n":I
    :catchall_0
    move-exception v8

    :goto_3
    invoke-static {v5}, Lhut;->a(Ljava/io/Closeable;)V

    .line 436
    invoke-static {v3}, Lhut;->a(Ljava/io/Closeable;)V

    throw v8

    .line 435
    .end local v3    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "in":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v8

    move-object v3, v4

    .end local v4    # "in":Ljava/io/FileInputStream;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v3    # "in":Ljava/io/FileInputStream;
    .end local v5    # "input":Ljava/io/InputStreamReader;
    .restart local v4    # "in":Ljava/io/FileInputStream;
    .restart local v6    # "input":Ljava/io/InputStreamReader;
    :catchall_2
    move-exception v8

    move-object v5, v6

    .end local v6    # "input":Ljava/io/InputStreamReader;
    .restart local v5    # "input":Ljava/io/InputStreamReader;
    move-object v3, v4

    .end local v4    # "in":Ljava/io/FileInputStream;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    goto :goto_3

    .line 432
    :catch_1
    move-exception v2

    goto :goto_1

    .end local v3    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "in":Ljava/io/FileInputStream;
    :catch_2
    move-exception v2

    move-object v3, v4

    .end local v4    # "in":Ljava/io/FileInputStream;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method private static a(Ljava/io/File;I)Ljava/util/List;
    .locals 7
    .param p0, "file"    # Ljava/io/File;
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 343
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 344
    .local v2, "lines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 346
    .local v3, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .local v4, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, "line":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 351
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 359
    :cond_0
    invoke-static {v4}, Lhut;->a(Ljava/io/Closeable;)V

    move-object v3, v4

    .line 361
    .end local v1    # "line":Ljava/lang/String;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :goto_0
    return-object v2

    .line 356
    :catch_0
    move-exception v0

    .line 357
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    :try_start_2
    const-string/jumbo v5, "readLine"

    invoke-static {v5, v0}, Lhuy;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 359
    invoke-static {v3}, Lhut;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_2
    invoke-static {v3}, Lhut;->a(Ljava/io/Closeable;)V

    throw v5

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_2

    .line 356
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v0

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_1
.end method

.method public static a(Ljava/io/Closeable;)V
    .locals 2
    .param p0, "closeable"    # Ljava/io/Closeable;

    .prologue
    .line 79
    if-eqz p0, :cond_0

    .line 81
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "close."

    invoke-static {v1, v0}, Lhuy;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)[J
    .locals 14
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 171
    const/4 v11, 0x3

    new-array v7, v11, [J

    fill-array-data v7, :array_0

    .line 173
    .local v7, "sizes":[J
    :try_start_0
    new-instance v10, Landroid/os/StatFs;

    invoke-direct {v10, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 178
    .local v10, "statFs":Landroid/os/StatFs;
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x12

    if-ge v11, v12, :cond_0

    .line 179
    invoke-virtual {v10}, Landroid/os/StatFs;->getBlockSize()I

    move-result v11

    int-to-long v4, v11

    .line 180
    .local v4, "blockSize":J
    invoke-virtual {v10}, Landroid/os/StatFs;->getBlockCount()I

    move-result v11

    int-to-long v2, v11

    .line 181
    .local v2, "blockCount":J
    invoke-virtual {v10}, Landroid/os/StatFs;->getFreeBlocks()I

    move-result v11

    int-to-long v8, v11

    .line 182
    .local v8, "freeBlocks":J
    invoke-virtual {v10}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v11

    int-to-long v0, v11

    .line 189
    .local v0, "availableBlocks":J
    :goto_0
    const/4 v11, 0x0

    mul-long v12, v4, v2

    aput-wide v12, v7, v11

    .line 190
    const/4 v11, 0x1

    mul-long v12, v4, v8

    aput-wide v12, v7, v11

    .line 191
    const/4 v11, 0x2

    mul-long v12, v4, v0

    aput-wide v12, v7, v11

    .line 195
    .end local v0    # "availableBlocks":J
    .end local v2    # "blockCount":J
    .end local v4    # "blockSize":J
    .end local v8    # "freeBlocks":J
    .end local v10    # "statFs":Landroid/os/StatFs;
    :goto_1
    return-object v7

    .line 184
    .restart local v10    # "statFs":Landroid/os/StatFs;
    :cond_0
    invoke-virtual {v10}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v4

    .line 185
    .restart local v4    # "blockSize":J
    invoke-virtual {v10}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v2

    .line 186
    .restart local v2    # "blockCount":J
    invoke-virtual {v10}, Landroid/os/StatFs;->getFreeBlocksLong()J

    move-result-wide v8

    .line 187
    .restart local v8    # "freeBlocks":J
    invoke-virtual {v10}, Landroid/os/StatFs;->getAvailableBlocksLong()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .restart local v0    # "availableBlocks":J
    goto :goto_0

    .line 192
    .end local v0    # "availableBlocks":J
    .end local v2    # "blockCount":J
    .end local v4    # "blockSize":J
    .end local v8    # "freeBlocks":J
    .end local v10    # "statFs":Landroid/os/StatFs;
    :catch_0
    move-exception v6

    .line 193
    .local v6, "e":Ljava/lang/Exception;
    const-string/jumbo v11, "getSizes"

    invoke-static {v11, v6}, Lhuy;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 171
    :array_0
    .array-data 8
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 152
    :try_start_0
    const-string/jumbo v4, "activity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 153
    .local v0, "activityManager":Landroid/app/ActivityManager;
    new-instance v2, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v2}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 154
    .local v2, "memoryInfo":Landroid/app/ActivityManager$MemoryInfo;
    const/4 v3, 0x0

    .line 155
    .local v3, "threshold":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 157
    iget-wide v4, v2, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    const/16 v6, 0xa

    shr-long/2addr v4, v6

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 159
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "JavaTotal:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " JavaFree:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " NativeHeap:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 160
    invoke-static {}, Landroid/os/Debug;->getNativeHeapSize()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " NativeAllocated:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 161
    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " NativeFree:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Debug;->getNativeHeapFreeSize()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " threshold:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v3, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " KB"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 166
    .end local v0    # "activityManager":Landroid/app/ActivityManager;
    .end local v2    # "memoryInfo":Landroid/app/ActivityManager$MemoryInfo;
    .end local v3    # "threshold":Ljava/lang/Integer;
    :goto_1
    return-object v4

    .line 161
    .restart local v0    # "activityManager":Landroid/app/ActivityManager;
    .restart local v2    # "memoryInfo":Landroid/app/ActivityManager$MemoryInfo;
    .restart local v3    # "threshold":Ljava/lang/Integer;
    :cond_1
    const-string/jumbo v4, "not valid"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 163
    .end local v0    # "activityManager":Landroid/app/ActivityManager;
    .end local v2    # "memoryInfo":Landroid/app/ActivityManager$MemoryInfo;
    .end local v3    # "threshold":Ljava/lang/Integer;
    :catch_0
    move-exception v1

    .line 164
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "dumpMeminfo"

    invoke-static {v4, v1}, Lhuy;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 166
    const-string/jumbo v4, ""

    goto :goto_1
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 16
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 205
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    .local v9, "stringBuffer":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .line 208
    .local v5, "hasSDCard":Z
    :try_start_0
    const-string/jumbo v10, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    if-eqz v10, :cond_0

    .line 209
    const/4 v5, 0x1

    .line 214
    :cond_0
    :goto_0
    const/4 v6, 0x0

    .line 216
    .local v6, "installSDCard":Z
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 217
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v10, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/high16 v11, 0x40000

    and-int/2addr v10, v11

    if-eqz v10, :cond_1

    .line 218
    const/4 v6, 0x1

    .line 223
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    :goto_1
    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "hasSDCard: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "installSDCard: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    :try_start_2
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v7

    .line 227
    .local v7, "rootDir":Ljava/io/File;
    if-eqz v7, :cond_2

    .line 228
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lhut;->a(Ljava/lang/String;)[J

    move-result-object v8

    .line 229
    .local v8, "sizes":[J
    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "RootDirectory: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    const-string/jumbo v10, "TotalSize: %s FreeSize: %s AvailableSize: %s \n"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const/4 v13, 0x0

    aget-wide v14, v8, v13

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const/4 v13, 0x1

    aget-wide v14, v8, v13

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    const/4 v13, 0x2

    aget-wide v14, v8, v13

    .line 231
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    .line 230
    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .end local v8    # "sizes":[J
    :cond_2
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    .line 234
    .local v1, "dataDir":Ljava/io/File;
    if-eqz v1, :cond_3

    .line 235
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lhut;->a(Ljava/lang/String;)[J

    move-result-object v8

    .line 236
    .restart local v8    # "sizes":[J
    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "DataDirectory: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    const-string/jumbo v10, "TotalSize: %s FreeSize: %s AvailableSize: %s \n"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const/4 v13, 0x0

    aget-wide v14, v8, v13

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const/4 v13, 0x1

    aget-wide v14, v8, v13

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    const/4 v13, 0x2

    aget-wide v14, v8, v13

    .line 238
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    .line 237
    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .end local v8    # "sizes":[J
    :cond_3
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    .line 241
    .local v4, "externalStorageDir":Ljava/io/File;
    if-eqz v1, :cond_4

    .line 242
    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "ExternalStorageDirectory: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lhut;->a(Ljava/lang/String;)[J

    move-result-object v8

    .line 244
    .restart local v8    # "sizes":[J
    const-string/jumbo v10, "TotalSize: %s FreeSize: %s AvailableSize: %s \n"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const/4 v13, 0x0

    aget-wide v14, v8, v13

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const/4 v13, 0x1

    aget-wide v14, v8, v13

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    const/4 v13, 0x2

    aget-wide v14, v8, v13

    .line 245
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    .line 244
    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .end local v8    # "sizes":[J
    :cond_4
    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v2

    .line 248
    .local v2, "downloadCacheDir":Ljava/io/File;
    if-eqz v2, :cond_5

    .line 249
    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "DownloadCacheDirectory: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lhut;->a(Ljava/lang/String;)[J

    move-result-object v8

    .line 251
    .restart local v8    # "sizes":[J
    const-string/jumbo v10, "TotalSize: %s FreeSize: %s AvailableSize: %s \n"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const/4 v13, 0x0

    aget-wide v14, v8, v13

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const/4 v13, 0x1

    aget-wide v14, v8, v13

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    const/4 v13, 0x2

    aget-wide v14, v8, v13

    .line 252
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    .line 251
    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 257
    .end local v1    # "dataDir":Ljava/io/File;
    .end local v2    # "downloadCacheDir":Ljava/io/File;
    .end local v4    # "externalStorageDir":Ljava/io/File;
    .end local v7    # "rootDir":Ljava/io/File;
    .end local v8    # "sizes":[J
    :cond_5
    :goto_2
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    return-object v10

    .line 211
    .end local v6    # "installSDCard":Z
    :catch_0
    move-exception v3

    .line 212
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v10, "hasSDCard"

    invoke-static {v10, v3}, Lhuy;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 220
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v6    # "installSDCard":Z
    :catch_1
    move-exception v3

    .line 221
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string/jumbo v10, "installSDCard"

    invoke-static {v10, v3}, Lhuy;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 254
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v3

    .line 255
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string/jumbo v10, "getSizes"

    invoke-static {v10, v3}, Lhuy;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method
