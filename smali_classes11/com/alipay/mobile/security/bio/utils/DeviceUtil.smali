.class public Lcom/alipay/mobile/security/bio/utils/DeviceUtil;
.super Ljava/lang/Object;
.source "DeviceUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAvailableStorageSize(Ljava/io/File;)J
    .locals 8
    .param p0, "path"    # Ljava/io/File;

    .prologue
    .line 108
    const-wide/16 v2, 0x0

    .line 110
    .local v2, "internalSize":J
    :try_start_0
    new-instance v6, Landroid/os/StatFs;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 111
    .local v6, "stat":Landroid/os/StatFs;
    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockSize()I

    move-result v7

    int-to-long v4, v7

    .line 112
    .local v4, "size":J
    invoke-virtual {v6}, Landroid/os/StatFs;->getAvailableBlocks()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    int-to-long v0, v7

    .line 113
    .local v0, "availCount":J
    mul-long v2, v0, v4

    .line 117
    .end local v0    # "availCount":J
    .end local v4    # "size":J
    .end local v6    # "stat":Landroid/os/StatFs;
    :goto_0
    return-wide v2

    :catch_0
    move-exception v7

    goto :goto_0
.end method

.method public static getMemorySize()J
    .locals 10

    .prologue
    .line 52
    const-string/jumbo v7, "/proc/meminfo"

    .line 53
    .local v7, "memInfoFile":Ljava/lang/String;
    const-wide/16 v4, 0x0

    .line 54
    .local v4, "initialMemory":J
    const/4 v0, 0x0

    .line 55
    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 57
    .local v2, "fileReader":Ljava/io/FileReader;
    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .end local v2    # "fileReader":Ljava/io/FileReader;
    .local v3, "fileReader":Ljava/io/FileReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    const/16 v8, 0x2000

    invoke-direct {v1, v3, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 59
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .local v1, "bufferedReader":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 60
    .local v6, "line":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 61
    const-string/jumbo v8, "\\s+"

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aget-object v8, v8, v9

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-wide v4

    .line 62
    const-wide/16 v8, 0x400

    mul-long/2addr v4, v8

    .line 69
    :cond_0
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    .line 76
    :goto_0
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    move-object v2, v3

    .end local v3    # "fileReader":Ljava/io/FileReader;
    .restart local v2    # "fileReader":Ljava/io/FileReader;
    move-object v0, v1

    .line 82
    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v6    # "line":Ljava/lang/String;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    :cond_1
    :goto_1
    return-wide v4

    .line 81
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v2    # "fileReader":Ljava/io/FileReader;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    .restart local v6    # "line":Ljava/lang/String;
    :catch_0
    move-exception v8

    move-object v2, v3

    .end local v3    # "fileReader":Ljava/io/FileReader;
    .restart local v2    # "fileReader":Ljava/io/FileReader;
    move-object v0, v1

    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    goto :goto_1

    .line 67
    .end local v6    # "line":Ljava/lang/String;
    :catch_1
    move-exception v8

    :goto_2
    if-eqz v2, :cond_2

    .line 69
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    .line 75
    :cond_2
    :goto_3
    if-eqz v0, :cond_1

    .line 76
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_1

    .line 81
    :catch_2
    move-exception v8

    goto :goto_1

    .line 67
    :catchall_0
    move-exception v8

    :goto_4
    if-eqz v2, :cond_3

    .line 69
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_5

    .line 75
    :cond_3
    :goto_5
    if-eqz v0, :cond_4

    .line 76
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_6

    .line 80
    :cond_4
    :goto_6
    throw v8

    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v2    # "fileReader":Ljava/io/FileReader;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    .restart local v6    # "line":Ljava/lang/String;
    :catch_3
    move-exception v8

    goto :goto_0

    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .end local v6    # "line":Ljava/lang/String;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v2    # "fileReader":Ljava/io/FileReader;
    :catch_4
    move-exception v8

    goto :goto_3

    :catch_5
    move-exception v9

    goto :goto_5

    :catch_6
    move-exception v9

    goto :goto_6

    .line 67
    .end local v2    # "fileReader":Ljava/io/FileReader;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    :catchall_1
    move-exception v8

    move-object v2, v3

    .end local v3    # "fileReader":Ljava/io/FileReader;
    .restart local v2    # "fileReader":Ljava/io/FileReader;
    goto :goto_4

    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v2    # "fileReader":Ljava/io/FileReader;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    :catchall_2
    move-exception v8

    move-object v2, v3

    .end local v3    # "fileReader":Ljava/io/FileReader;
    .restart local v2    # "fileReader":Ljava/io/FileReader;
    move-object v0, v1

    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    goto :goto_4

    .end local v2    # "fileReader":Ljava/io/FileReader;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    :catch_7
    move-exception v8

    move-object v2, v3

    .end local v3    # "fileReader":Ljava/io/FileReader;
    .restart local v2    # "fileReader":Ljava/io/FileReader;
    goto :goto_2

    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v2    # "fileReader":Ljava/io/FileReader;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    :catch_8
    move-exception v8

    move-object v2, v3

    .end local v3    # "fileReader":Ljava/io/FileReader;
    .restart local v2    # "fileReader":Ljava/io/FileReader;
    move-object v0, v1

    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method public static getProcessorNum()I
    .locals 3

    .prologue
    .line 35
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string/jumbo v2, "/sys/devices/system/cpu/"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 37
    .local v0, "dir":Ljava/io/File;
    new-instance v2, Lcom/alipay/mobile/security/bio/utils/DeviceUtil$a;

    invoke-direct {v2}, Lcom/alipay/mobile/security/bio/utils/DeviceUtil$a;-><init>()V

    invoke-virtual {v0, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    .line 39
    .local v1, "files":[Ljava/io/File;
    array-length v2, v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .end local v1    # "files":[Ljava/io/File;
    :goto_0
    return v2

    :catch_0
    move-exception v2

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getTotalStorageSize(Ljava/io/File;)J
    .locals 8
    .param p0, "path"    # Ljava/io/File;

    .prologue
    .line 91
    const-wide/16 v2, 0x0

    .line 93
    .local v2, "internalSize":J
    :try_start_0
    new-instance v6, Landroid/os/StatFs;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 94
    .local v6, "stat":Landroid/os/StatFs;
    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockSize()I

    move-result v7

    int-to-long v4, v7

    .line 95
    .local v4, "size":J
    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockCount()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    int-to-long v0, v7

    .line 96
    .local v0, "count":J
    mul-long v2, v0, v4

    .line 100
    .end local v0    # "count":J
    .end local v4    # "size":J
    .end local v6    # "stat":Landroid/os/StatFs;
    :goto_0
    return-wide v2

    :catch_0
    move-exception v7

    goto :goto_0
.end method
