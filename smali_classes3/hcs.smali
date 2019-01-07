.class public final Lhcs;
.super Ljava/lang/Object;
.source "FileUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 264
    invoke-static {}, Lhcs;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 266
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-lt v1, v2, :cond_3

    .line 267
    invoke-static {p0}, Lhcs;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 272
    .local v0, "cacheDir":Ljava/io/File;
    :goto_0
    if-eqz v0, :cond_1

    .line 273
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 274
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_2

    .line 275
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 282
    :cond_2
    :goto_1
    return-object v0

    .line 269
    .end local v0    # "cacheDir":Ljava/io/File;
    :cond_3
    invoke-static {p0}, Lhcs;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .restart local v0    # "cacheDir":Ljava/io/File;
    goto :goto_0

    .line 279
    .end local v0    # "cacheDir":Ljava/io/File;
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .restart local v0    # "cacheDir":Ljava/io/File;
    goto :goto_1
.end method

.method public static a(J)Ljava/lang/String;
    .locals 8
    .param p0, "size"    # J

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 960
    const-string/jumbo v0, "%.1f%s"

    .line 962
    .local v0, "format":Ljava/lang/String;
    const-wide/16 v2, 0x400

    cmp-long v2, p0, v2

    if-gez v2, :cond_0

    .line 963
    new-array v2, v4, [Ljava/lang/Object;

    long-to-float v3, p0

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v5

    const-string/jumbo v3, "B"

    aput-object v3, v2, v6

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 972
    .local v1, "result":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 964
    .end local v1    # "result":Ljava/lang/String;
    :cond_0
    const-wide/32 v2, 0x100000

    cmp-long v2, p0, v2

    if-gez v2, :cond_1

    .line 965
    new-array v2, v4, [Ljava/lang/Object;

    long-to-float v3, p0

    const/high16 v4, 0x44800000    # 1024.0f

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v5

    const-string/jumbo v3, "KB"

    aput-object v3, v2, v6

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_0

    .line 966
    .end local v1    # "result":Ljava/lang/String;
    :cond_1
    const-wide/32 v2, 0x40000000

    cmp-long v2, p0, v2

    if-gez v2, :cond_2

    .line 967
    new-array v2, v4, [Ljava/lang/Object;

    long-to-float v3, p0

    const/high16 v4, 0x49800000    # 1048576.0f

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v5

    const-string/jumbo v3, "MB"

    aput-object v3, v2, v6

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_0

    .line 969
    .end local v1    # "result":Ljava/lang/String;
    :cond_2
    new-array v2, v4, [Ljava/lang/Object;

    long-to-float v3, p0

    const/high16 v4, 0x4e800000

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v5

    const-string/jumbo v3, "GB"

    aput-object v3, v2, v6

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_0
.end method

.method private static a([B)Ljava/lang/String;
    .locals 5
    .param p0, "src"    # [B

    .prologue
    .line 1109
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 1114
    .local v0, "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_1

    .line 1115
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 1116
    .local v1, "hv":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_0

    .line 1117
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1119
    :cond_0
    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1114
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1121
    .end local v1    # "hv":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static a(Ljava/io/Closeable;)V
    .locals 4
    .param p0, "closeable"    # Ljava/io/Closeable;

    .prologue
    .line 710
    if-eqz p0, :cond_0

    .line 712
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 717
    :cond_0
    :goto_0
    return-void

    .line 713
    :catch_0
    move-exception v0

    .line 714
    .local v0, "exp":Ljava/io/IOException;
    const-string/jumbo v1, "FileUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Could not close stream:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhcw;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static a(Ljava/io/File;)V
    .locals 3
    .param p0, "path"    # Ljava/io/File;

    .prologue
    .line 690
    if-nez p0, :cond_1

    .line 702
    :cond_0
    :goto_0
    return-void

    .line 691
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 693
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 694
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 697
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 698
    .local v0, "files":[Ljava/io/File;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_3

    .line 699
    aget-object v2, v0, v1

    invoke-static {v2}, Lhcs;->a(Ljava/io/File;)V

    .line 698
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 701
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method public static a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 5
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x2000

    const/4 v3, 0x0

    .line 59
    new-array v0, v4, [B

    .line 61
    .local v0, "bytes":[B
    :goto_0
    invoke-virtual {p0, v0, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 62
    .local v1, "count":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 65
    invoke-virtual {p1, v0, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 67
    :cond_0
    return-void
.end method

.method public static a([BLjava/io/File;Z)V
    .locals 6
    .param p0, "bytes"    # [B
    .param p1, "file"    # Ljava/io/File;
    .param p2, "isAppend"    # Z

    .prologue
    .line 422
    if-nez p1, :cond_0

    .line 443
    :goto_0
    return-void

    .line 425
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .line 426
    .local v3, "parentFile":Ljava/io/File;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 427
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 429
    :cond_1
    const/4 v1, 0x0

    .line 431
    .local v1, "outStream":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 432
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 434
    :cond_2
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v4, 0x0

    invoke-direct {v2, p1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 435
    .end local v1    # "outStream":Ljava/io/FileOutputStream;
    .local v2, "outStream":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v2, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 436
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 442
    invoke-static {v2}, Lhcs;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 437
    .end local v2    # "outStream":Ljava/io/FileOutputStream;
    .restart local v1    # "outStream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 438
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_2
    const-string/jumbo v4, "FileUtil"

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhcw;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 442
    invoke-static {v1}, Lhcs;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 439
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 440
    .local v0, "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string/jumbo v4, "FileUtil"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhcw;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 442
    invoke-static {v1}, Lhcs;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_3
    invoke-static {v1}, Lhcs;->a(Ljava/io/Closeable;)V

    throw v4

    .end local v1    # "outStream":Ljava/io/FileOutputStream;
    .restart local v2    # "outStream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "outStream":Ljava/io/FileOutputStream;
    .restart local v1    # "outStream":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 439
    .end local v1    # "outStream":Ljava/io/FileOutputStream;
    .restart local v2    # "outStream":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v0

    move-object v1, v2

    .end local v2    # "outStream":Ljava/io/FileOutputStream;
    .restart local v1    # "outStream":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 437
    .end local v1    # "outStream":Ljava/io/FileOutputStream;
    .restart local v2    # "outStream":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v0

    move-object v1, v2

    .end local v2    # "outStream":Ljava/io/FileOutputStream;
    .restart local v1    # "outStream":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public static a()Z
    .locals 6

    .prologue
    .line 201
    invoke-static {}, Lhcs;->c()Z

    move-result v0

    .line 202
    .local v0, "mounted":Z
    if-eqz v0, :cond_0

    .line 1218
    invoke-static {}, Lhcs;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1220
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 1221
    new-instance v2, Landroid/os/StatFs;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1224
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v1, v3, :cond_1

    .line 1225
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v4

    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v2

    mul-long/2addr v2, v4

    .line 1229
    :goto_0
    const-string/jumbo v1, "FileUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "sdcard available "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lhcw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    :goto_1
    const-wide/16 v4, 0x2800

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 203
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lhcs$1;

    invoke-direct {v2}, Lhcs$1;-><init>()V

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 210
    :cond_0
    return v0

    .line 1227
    :cond_1
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v4, v1

    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-long v2, v1

    mul-long/2addr v2, v4

    goto :goto_0

    .line 1232
    :cond_2
    const-string/jumbo v1, "FileUtil"

    const-string/jumbo v2, "sdcard unavailable"

    invoke-static {v1, v2}, Lhcw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1233
    const-wide/16 v2, 0x0

    goto :goto_1
.end method

.method public static a(Ljava/io/File;Ljava/io/File;)Z
    .locals 13
    .param p0, "sourceFile"    # Ljava/io/File;
    .param p1, "targetFile"    # Ljava/io/File;

    .prologue
    const/4 v11, 0x0

    .line 131
    const/4 v4, 0x0

    .line 132
    .local v4, "input":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 134
    .local v2, "inBuff":Ljava/io/BufferedInputStream;
    const/4 v9, 0x0

    .line 135
    .local v9, "output":Ljava/io/FileOutputStream;
    const/4 v7, 0x0

    .line 137
    .local v7, "outBuff":Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    .end local v4    # "input":Ljava/io/FileInputStream;
    .local v5, "input":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 139
    .end local v2    # "inBuff":Ljava/io/BufferedInputStream;
    .local v3, "inBuff":Ljava/io/BufferedInputStream;
    :try_start_2
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 140
    .end local v9    # "output":Ljava/io/FileOutputStream;
    .local v10, "output":Ljava/io/FileOutputStream;
    :try_start_3
    new-instance v8, Ljava/io/BufferedOutputStream;

    invoke-direct {v8, v10}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 141
    .end local v7    # "outBuff":Ljava/io/BufferedOutputStream;
    .local v8, "outBuff":Ljava/io/BufferedOutputStream;
    const/16 v12, 0x1400

    :try_start_4
    new-array v0, v12, [B

    .line 143
    .local v0, "b":[B
    const/4 v1, 0x0

    .line 144
    .local v1, "icount":I
    :cond_0
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v6

    .local v6, "len":I
    const/4 v12, -0x1

    if-eq v6, v12, :cond_1

    .line 145
    const/4 v12, 0x0

    invoke-virtual {v8, v0, v12, v6}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 146
    add-int/lit8 v1, v1, 0x1

    .line 147
    rem-int/lit8 v12, v1, 0x5

    if-nez v12, :cond_0

    .line 148
    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_0

    .line 156
    .end local v0    # "b":[B
    .end local v1    # "icount":I
    .end local v6    # "len":I
    :catch_0
    move-exception v12

    move-object v7, v8

    .end local v8    # "outBuff":Ljava/io/BufferedOutputStream;
    .restart local v7    # "outBuff":Ljava/io/BufferedOutputStream;
    move-object v9, v10

    .end local v10    # "output":Ljava/io/FileOutputStream;
    .restart local v9    # "output":Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3    # "inBuff":Ljava/io/BufferedInputStream;
    .restart local v2    # "inBuff":Ljava/io/BufferedInputStream;
    move-object v4, v5

    .end local v5    # "input":Ljava/io/FileInputStream;
    .restart local v4    # "input":Ljava/io/FileInputStream;
    :goto_1
    invoke-static {v2}, Lhcs;->a(Ljava/io/Closeable;)V

    .line 157
    invoke-static {v7}, Lhcs;->a(Ljava/io/Closeable;)V

    .line 158
    invoke-static {v4}, Lhcs;->a(Ljava/io/Closeable;)V

    .line 159
    invoke-static {v9}, Lhcs;->a(Ljava/io/Closeable;)V

    .line 161
    :goto_2
    return v11

    .line 151
    .end local v2    # "inBuff":Ljava/io/BufferedInputStream;
    .end local v4    # "input":Ljava/io/FileInputStream;
    .end local v7    # "outBuff":Ljava/io/BufferedOutputStream;
    .end local v9    # "output":Ljava/io/FileOutputStream;
    .restart local v0    # "b":[B
    .restart local v1    # "icount":I
    .restart local v3    # "inBuff":Ljava/io/BufferedInputStream;
    .restart local v5    # "input":Ljava/io/FileInputStream;
    .restart local v6    # "len":I
    .restart local v8    # "outBuff":Ljava/io/BufferedOutputStream;
    .restart local v10    # "output":Ljava/io/FileOutputStream;
    :cond_1
    :try_start_5
    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 156
    invoke-static {v3}, Lhcs;->a(Ljava/io/Closeable;)V

    .line 157
    invoke-static {v8}, Lhcs;->a(Ljava/io/Closeable;)V

    .line 158
    invoke-static {v5}, Lhcs;->a(Ljava/io/Closeable;)V

    .line 159
    invoke-static {v10}, Lhcs;->a(Ljava/io/Closeable;)V

    const/4 v11, 0x1

    move-object v7, v8

    .end local v8    # "outBuff":Ljava/io/BufferedOutputStream;
    .restart local v7    # "outBuff":Ljava/io/BufferedOutputStream;
    move-object v9, v10

    .end local v10    # "output":Ljava/io/FileOutputStream;
    .restart local v9    # "output":Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3    # "inBuff":Ljava/io/BufferedInputStream;
    .restart local v2    # "inBuff":Ljava/io/BufferedInputStream;
    move-object v4, v5

    .end local v5    # "input":Ljava/io/FileInputStream;
    .restart local v4    # "input":Ljava/io/FileInputStream;
    goto :goto_2

    .line 156
    .end local v0    # "b":[B
    .end local v1    # "icount":I
    .end local v6    # "len":I
    :catchall_0
    move-exception v11

    :goto_3
    invoke-static {v2}, Lhcs;->a(Ljava/io/Closeable;)V

    .line 157
    invoke-static {v7}, Lhcs;->a(Ljava/io/Closeable;)V

    .line 158
    invoke-static {v4}, Lhcs;->a(Ljava/io/Closeable;)V

    .line 159
    invoke-static {v9}, Lhcs;->a(Ljava/io/Closeable;)V

    throw v11

    .line 156
    .end local v4    # "input":Ljava/io/FileInputStream;
    .restart local v5    # "input":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v11

    move-object v4, v5

    .end local v5    # "input":Ljava/io/FileInputStream;
    .restart local v4    # "input":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v2    # "inBuff":Ljava/io/BufferedInputStream;
    .end local v4    # "input":Ljava/io/FileInputStream;
    .restart local v3    # "inBuff":Ljava/io/BufferedInputStream;
    .restart local v5    # "input":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v11

    move-object v2, v3

    .end local v3    # "inBuff":Ljava/io/BufferedInputStream;
    .restart local v2    # "inBuff":Ljava/io/BufferedInputStream;
    move-object v4, v5

    .end local v5    # "input":Ljava/io/FileInputStream;
    .restart local v4    # "input":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v2    # "inBuff":Ljava/io/BufferedInputStream;
    .end local v4    # "input":Ljava/io/FileInputStream;
    .end local v9    # "output":Ljava/io/FileOutputStream;
    .restart local v3    # "inBuff":Ljava/io/BufferedInputStream;
    .restart local v5    # "input":Ljava/io/FileInputStream;
    .restart local v10    # "output":Ljava/io/FileOutputStream;
    :catchall_3
    move-exception v11

    move-object v9, v10

    .end local v10    # "output":Ljava/io/FileOutputStream;
    .restart local v9    # "output":Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3    # "inBuff":Ljava/io/BufferedInputStream;
    .restart local v2    # "inBuff":Ljava/io/BufferedInputStream;
    move-object v4, v5

    .end local v5    # "input":Ljava/io/FileInputStream;
    .restart local v4    # "input":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v2    # "inBuff":Ljava/io/BufferedInputStream;
    .end local v4    # "input":Ljava/io/FileInputStream;
    .end local v7    # "outBuff":Ljava/io/BufferedOutputStream;
    .end local v9    # "output":Ljava/io/FileOutputStream;
    .restart local v3    # "inBuff":Ljava/io/BufferedInputStream;
    .restart local v5    # "input":Ljava/io/FileInputStream;
    .restart local v8    # "outBuff":Ljava/io/BufferedOutputStream;
    .restart local v10    # "output":Ljava/io/FileOutputStream;
    :catchall_4
    move-exception v11

    move-object v7, v8

    .end local v8    # "outBuff":Ljava/io/BufferedOutputStream;
    .restart local v7    # "outBuff":Ljava/io/BufferedOutputStream;
    move-object v9, v10

    .end local v10    # "output":Ljava/io/FileOutputStream;
    .restart local v9    # "output":Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3    # "inBuff":Ljava/io/BufferedInputStream;
    .restart local v2    # "inBuff":Ljava/io/BufferedInputStream;
    move-object v4, v5

    .end local v5    # "input":Ljava/io/FileInputStream;
    .restart local v4    # "input":Ljava/io/FileInputStream;
    goto :goto_3

    :catch_1
    move-exception v12

    goto :goto_1

    .end local v4    # "input":Ljava/io/FileInputStream;
    .restart local v5    # "input":Ljava/io/FileInputStream;
    :catch_2
    move-exception v12

    move-object v4, v5

    .end local v5    # "input":Ljava/io/FileInputStream;
    .restart local v4    # "input":Ljava/io/FileInputStream;
    goto :goto_1

    .end local v2    # "inBuff":Ljava/io/BufferedInputStream;
    .end local v4    # "input":Ljava/io/FileInputStream;
    .restart local v3    # "inBuff":Ljava/io/BufferedInputStream;
    .restart local v5    # "input":Ljava/io/FileInputStream;
    :catch_3
    move-exception v12

    move-object v2, v3

    .end local v3    # "inBuff":Ljava/io/BufferedInputStream;
    .restart local v2    # "inBuff":Ljava/io/BufferedInputStream;
    move-object v4, v5

    .end local v5    # "input":Ljava/io/FileInputStream;
    .restart local v4    # "input":Ljava/io/FileInputStream;
    goto :goto_1

    .end local v2    # "inBuff":Ljava/io/BufferedInputStream;
    .end local v4    # "input":Ljava/io/FileInputStream;
    .end local v9    # "output":Ljava/io/FileOutputStream;
    .restart local v3    # "inBuff":Ljava/io/BufferedInputStream;
    .restart local v5    # "input":Ljava/io/FileInputStream;
    .restart local v10    # "output":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v12

    move-object v9, v10

    .end local v10    # "output":Ljava/io/FileOutputStream;
    .restart local v9    # "output":Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3    # "inBuff":Ljava/io/BufferedInputStream;
    .restart local v2    # "inBuff":Ljava/io/BufferedInputStream;
    move-object v4, v5

    .end local v5    # "input":Ljava/io/FileInputStream;
    .restart local v4    # "input":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 2
    .param p0, "file"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 171
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 177
    :cond_0
    :goto_0
    return v0

    .line 174
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 175
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static b(Ljava/io/File;)J
    .locals 8
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 826
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 827
    :cond_0
    const-wide/16 v2, 0x0

    .line 841
    :cond_1
    :goto_0
    return-wide v2

    .line 830
    :cond_2
    const-wide/16 v2, 0x0

    .line 831
    .local v2, "size":J
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 832
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    goto :goto_0

    .line 834
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 835
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_1

    .line 836
    array-length v5, v1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_1

    aget-object v0, v1, v4

    .line 837
    .local v0, "f":Ljava/io/File;
    invoke-static {v0}, Lhcs;->b(Ljava/io/File;)J

    move-result-wide v6

    add-long/2addr v2, v6

    .line 836
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public static b(Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 308
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 313
    .local v0, "f":Ljava/io/File;
    :goto_0
    return-object v0

    .line 310
    .end local v0    # "f":Ljava/io/File;
    :catch_0
    move-exception v1

    const-string/jumbo v1, "FileUtil"

    const-string/jumbo v2, "getExternalCacheDir8 exception"

    invoke-static {v1, v2}, Lhcw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .restart local v0    # "f":Ljava/io/File;
    goto :goto_0
.end method

.method private static b()Ljava/lang/String;
    .locals 4

    .prologue
    .line 245
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 250
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return-object v1

    .line 246
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 247
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v1, "FileUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getExternalStorageState exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhcw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const-string/jumbo v1, ""

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 746
    const-string/jumbo v1, ""

    .line 747
    .local v1, "suffix":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 748
    const-string/jumbo v2, "."

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 749
    .local v0, "dotIndex":I
    if-lez v0, :cond_0

    .line 750
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 753
    .end local v0    # "dotIndex":I
    :cond_0
    return-object v1
.end method

.method public static final c(Landroid/content/Context;)Ljava/io/File;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 323
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "/Android/data/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 324
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/cache/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static c()Z
    .locals 2

    .prologue
    .line 254
    const-string/jumbo v0, "mounted"

    invoke-static {}, Lhcs;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static final c(Ljava/lang/String;)Z
    .locals 3
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 896
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "http://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "https://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 898
    :cond_0
    const/4 v0, 0x0

    .line 910
    :goto_0
    return v0

    .line 901
    :cond_1
    const/4 v0, 0x0

    .line 905
    .local v0, "isExists":Z
    :try_start_0
    const-string/jumbo v1, "file://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    :goto_1
    goto :goto_0

    :cond_2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 352
    :try_start_0
    sget-object v3, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v3}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 353
    .local v1, "dcimDir":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "Camera"

    aput-object v5, v3, v4

    invoke-static {v3}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 354
    .local v0, "cameraDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 355
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 357
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 361
    .end local v0    # "cameraDir":Ljava/io/File;
    .end local v1    # "dcimDir":Ljava/io/File;
    :goto_0
    return-object v3

    .line 358
    :catch_0
    move-exception v2

    .line 359
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 361
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "uil-images"

    .line 1336
    invoke-static {p0}, Lhcs;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v5

    .line 1337
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1338
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1339
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 361
    :cond_1
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;)Z
    .locals 3
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 976
    const/4 v0, 0x0

    .line 977
    .local v0, "result":Z
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 978
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "file:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 980
    :cond_1
    :goto_0
    return v0

    .line 978
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static e(Landroid/content/Context;)Ljava/io/File;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 505
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, ".babylon"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 506
    .local v0, "basePath":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 507
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v1, v0

    .line 529
    .end local v0    # "basePath":Ljava/io/File;
    .local v1, "basePath":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 510
    .end local v1    # "basePath":Ljava/lang/Object;
    .restart local v0    # "basePath":Ljava/io/File;
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    move-object v1, v0

    .line 511
    .restart local v1    # "basePath":Ljava/lang/Object;
    goto :goto_0

    .line 513
    .end local v0    # "basePath":Ljava/io/File;
    .end local v1    # "basePath":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 514
    .local v2, "t":Ljava/lang/Throwable;
    const-string/jumbo v3, "FileUtil"

    invoke-static {v2}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhcw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, ".babylon"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 519
    .restart local v0    # "basePath":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 520
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_3

    .line 521
    const-string/jumbo v3, "FileUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "SDCard may by full,file cannot be created!"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lhcw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhcw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "SDCard may by full,file cannot be created!"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lhcw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 524
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_3

    .line 525
    const-string/jumbo v3, "FileUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "file is not a directory!"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lhcw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhcw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "file is not a directory!"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lhcw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    move-object v1, v0

    .line 529
    .restart local v1    # "basePath":Ljava/lang/Object;
    goto/16 :goto_0
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 1021
    if-eqz p0, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1022
    :cond_0
    const/4 v2, 0x0

    .line 1063
    :cond_1
    :goto_0
    return-object v2

    .line 1025
    :cond_2
    invoke-static {p0}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1027
    .local v2, "fileType":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1031
    const/4 v3, 0x0

    .line 1034
    .local v3, "is":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1035
    .end local v3    # "is":Ljava/io/FileInputStream;
    .local v4, "is":Ljava/io/FileInputStream;
    const/4 v6, 0x4

    :try_start_1
    new-array v0, v6, [B

    .line 1036
    .local v0, "b":[B
    const/4 v6, 0x0

    const/4 v7, 0x4

    invoke-virtual {v4, v0, v6, v7}, Ljava/io/FileInputStream;->read([BII)I

    .line 1038
    invoke-static {v0}, Lhcs;->a([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    .line 1039
    .local v5, "type":Ljava/lang/String;
    const-string/jumbo v6, "FFD8FF"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1040
    const-string/jumbo v2, "jpg"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1054
    .end local v2    # "fileType":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 1056
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1057
    :catch_0
    move-exception v1

    .line 1058
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1041
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "fileType":Ljava/lang/String;
    :cond_3
    :try_start_3
    const-string/jumbo v6, "89504E47"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1042
    const-string/jumbo v2, "png"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1054
    .end local v2    # "fileType":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 1056
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 1057
    :catch_1
    move-exception v1

    .line 1058
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1043
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "fileType":Ljava/lang/String;
    :cond_4
    :try_start_5
    const-string/jumbo v6, "47494638"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1044
    const-string/jumbo v2, "gif"
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_9
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1054
    .end local v2    # "fileType":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 1056
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_0

    .line 1057
    :catch_2
    move-exception v1

    .line 1058
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1045
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "fileType":Ljava/lang/String;
    :cond_5
    :try_start_7
    const-string/jumbo v6, "49492A00"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1046
    const-string/jumbo v2, "tif"
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_9
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1054
    .end local v2    # "fileType":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 1056
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_0

    .line 1057
    :catch_3
    move-exception v1

    .line 1058
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 1047
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "fileType":Ljava/lang/String;
    :cond_6
    :try_start_9
    const-string/jumbo v6, "424D"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1048
    const-string/jumbo v2, "bmp"
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1054
    .end local v2    # "fileType":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 1056
    :try_start_a
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    goto/16 :goto_0

    .line 1057
    :catch_4
    move-exception v1

    .line 1058
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 1050
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "fileType":Ljava/lang/String;
    :cond_7
    const-string/jumbo v2, "jpg"

    .line 1054
    .end local v2    # "fileType":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 1056
    :try_start_b
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    goto/16 :goto_0

    .line 1057
    :catch_5
    move-exception v1

    .line 1058
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 1051
    .end local v0    # "b":[B
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "is":Ljava/io/FileInputStream;
    .end local v5    # "type":Ljava/lang/String;
    .restart local v2    # "fileType":Ljava/lang/String;
    .restart local v3    # "is":Ljava/io/FileInputStream;
    :catch_6
    move-exception v1

    .line 1052
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_c
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 1054
    if-eqz v3, :cond_8

    .line 1056
    :try_start_d
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    .line 1063
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_8
    :goto_2
    const-string/jumbo v2, "jpg"

    goto/16 :goto_0

    .line 1057
    .restart local v1    # "e":Ljava/lang/Exception;
    :catch_7
    move-exception v1

    .line 1058
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 1054
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_3
    if-eqz v3, :cond_9

    .line 1056
    :try_start_e
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8

    .line 1059
    :cond_9
    :goto_4
    throw v6

    .line 1057
    :catch_8
    move-exception v1

    .line 1058
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 1054
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "is":Ljava/io/FileInputStream;
    .restart local v4    # "is":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "is":Ljava/io/FileInputStream;
    .restart local v3    # "is":Ljava/io/FileInputStream;
    goto :goto_3

    .line 1051
    .end local v3    # "is":Ljava/io/FileInputStream;
    .restart local v4    # "is":Ljava/io/FileInputStream;
    :catch_9
    move-exception v1

    move-object v3, v4

    .end local v4    # "is":Ljava/io/FileInputStream;
    .restart local v3    # "is":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1153
    if-nez p0, :cond_0

    .line 1154
    const-string/jumbo v1, ""

    .line 1157
    :goto_0
    return-object v1

    .line 1156
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1157
    .local v0, "packageName":Ljava/lang/String;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, ".file.provider"

    aput-object v3, v1, v2

    invoke-static {v1}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
