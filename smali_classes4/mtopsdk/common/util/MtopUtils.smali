.class public final Lmtopsdk/common/util/MtopUtils;
.super Ljava/lang/Object;
.source "MtopUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.MtopUtils"

.field private static counter:Ljava/util/concurrent/atomic/AtomicInteger; = null

.field private static final mask:I = 0x7fffffff


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lmtopsdk/common/util/MtopUtils;->counter:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public static convertTimeFormatGMT2Long(Ljava/lang/String;)J
    .locals 8
    .param p0, "gmt"    # Ljava/lang/String;

    .prologue
    .line 44
    const-wide/16 v2, -0x1

    .line 45
    .local v2, "time":J
    invoke-static {p0}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 46
    const-wide/16 v4, -0x1

    .line 59
    :goto_0
    return-wide v4

    .line 48
    :cond_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "EEE, d MMM yyyy HH:mm:ss \'GMT\'"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 49
    .local v1, "sdf":Ljava/text/SimpleDateFormat;
    const-string/jumbo v4, "GMT"

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 50
    const/4 v0, 0x0

    .line 52
    .local v0, "date":Ljava/util/Date;
    :try_start_0
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 56
    :goto_1
    if-eqz v0, :cond_1

    .line 57
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long v2, v4, v6

    :cond_1
    move-wide v4, v2

    .line 59
    goto :goto_0

    .line 54
    :catch_0
    move-exception v4

    const-string/jumbo v4, "mtopsdk.MtopUtils"

    const-string/jumbo v5, "[convertTimeFormatGMT2Long]parse gmt timeformat error"

    invoke-static {v4, v5}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static createIntSeqNo()I
    .locals 2

    .prologue
    .line 63
    sget-object v1, Lmtopsdk/common/util/MtopUtils;->counter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 64
    .local v0, "index":I
    const v1, 0x7fffffff

    and-int/2addr v1, v0

    return v1
.end method

.method public static gzip([B)[B
    .locals 9
    .param p0, "originData"    # [B

    .prologue
    .line 235
    if-eqz p0, :cond_0

    array-length v6, p0

    if-nez v6, :cond_2

    :cond_0
    move-object v5, p0

    .line 269
    :cond_1
    :goto_0
    return-object v5

    .line 238
    :cond_2
    const-string/jumbo v6, "mtopsdk.MtopUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "originByte length="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v8, p0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const/4 v5, 0x0

    .line 240
    .local v5, "gzipedByte":[B
    const/4 v0, 0x0

    .line 241
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x0

    .line 243
    .local v3, "gos":Ljava/util/zip/GZIPOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .local v1, "bos":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    new-instance v4, Ljava/util/zip/GZIPOutputStream;

    array-length v6, p0

    invoke-direct {v4, v1, v6}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 245
    .end local v3    # "gos":Ljava/util/zip/GZIPOutputStream;
    .local v4, "gos":Ljava/util/zip/GZIPOutputStream;
    :try_start_2
    invoke-virtual {v4, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 246
    invoke-virtual {v4}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 249
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 250
    const-string/jumbo v7, "mtopsdk.MtopUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "gzipedByte length="

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v5, :cond_3

    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 256
    :try_start_3
    invoke-virtual {v4}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 263
    :goto_2
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v3, v4

    .end local v4    # "gos":Ljava/util/zip/GZIPOutputStream;
    .restart local v3    # "gos":Ljava/util/zip/GZIPOutputStream;
    move-object v0, v1

    .line 266
    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    goto :goto_0

    .line 250
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "gos":Ljava/util/zip/GZIPOutputStream;
    .restart local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "gos":Ljava/util/zip/GZIPOutputStream;
    :cond_3
    :try_start_5
    array-length v6, v5
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    .line 257
    :catch_0
    move-exception v2

    .line 258
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 264
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 265
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .end local v4    # "gos":Ljava/util/zip/GZIPOutputStream;
    .restart local v3    # "gos":Ljava/util/zip/GZIPOutputStream;
    move-object v0, v1

    .line 266
    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    goto :goto_0

    .line 251
    .end local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 252
    .local v2, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_6
    const-string/jumbo v6, "mtopsdk.MtopUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "[gzipByte]gzip originByte error ---"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 254
    if-eqz v3, :cond_4

    .line 256
    :try_start_7
    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 261
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_4
    if-eqz v0, :cond_1

    .line 263
    :try_start_8
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_0

    .line 264
    :catch_3
    move-exception v2

    .line 265
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 257
    .local v2, "e":Ljava/lang/Exception;
    :catch_4
    move-exception v2

    .line 258
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 254
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_5
    if-eqz v3, :cond_5

    .line 256
    :try_start_9
    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 261
    :cond_5
    :goto_6
    if-eqz v0, :cond_6

    .line 263
    :try_start_a
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 266
    :cond_6
    :goto_7
    throw v6

    .line 257
    :catch_5
    move-exception v2

    .line 258
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 264
    .end local v2    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v2

    .line 265
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 254
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    goto :goto_5

    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "gos":Ljava/util/zip/GZIPOutputStream;
    .restart local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "gos":Ljava/util/zip/GZIPOutputStream;
    :catchall_2
    move-exception v6

    move-object v3, v4

    .end local v4    # "gos":Ljava/util/zip/GZIPOutputStream;
    .restart local v3    # "gos":Ljava/util/zip/GZIPOutputStream;
    move-object v0, v1

    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    goto :goto_5

    .line 251
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    :catch_7
    move-exception v2

    move-object v0, v1

    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    goto :goto_3

    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "gos":Ljava/util/zip/GZIPOutputStream;
    .restart local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "gos":Ljava/util/zip/GZIPOutputStream;
    :catch_8
    move-exception v2

    move-object v3, v4

    .end local v4    # "gos":Ljava/util/zip/GZIPOutputStream;
    .restart local v3    # "gos":Ljava/util/zip/GZIPOutputStream;
    move-object v0, v1

    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    goto :goto_3
.end method

.method public static isApkDebug()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 74
    :try_start_0
    invoke-static {}, Lmtopsdk/mtop/global/SDKConfig;->getInstance()Lmtopsdk/mtop/global/SDKConfig;

    move-result-object v2

    invoke-virtual {v2}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 75
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 78
    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static isMainThread()Z
    .locals 2

    .prologue
    .line 69
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static readObject(Ljava/io/File;Ljava/lang/String;)Ljava/io/Serializable;
    .locals 11
    .param p0, "fileDir"    # Ljava/io/File;
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 157
    const/4 v2, 0x0

    .line 159
    .local v2, "fis":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 161
    .local v4, "object":Ljava/io/Serializable;
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 162
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 178
    const/4 v7, 0x0

    .line 181
    .end local v1    # "file":Ljava/io/File;
    :goto_0
    return-object v7

    .line 166
    .restart local v1    # "file":Ljava/io/File;
    :cond_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v5, Ljava/io/ObjectInputStream;

    new-instance v7, Ljava/io/BufferedInputStream;

    invoke-direct {v7, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v7}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 168
    .local v5, "ois":Ljava/io/ObjectInputStream;
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/io/Serializable;

    move-object v4, v0

    .line 169
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 175
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v2, v3

    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "ois":Ljava/io/ObjectInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :cond_1
    :goto_1
    move-object v7, v4

    .line 181
    goto :goto_0

    .line 178
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "ois":Ljava/io/ObjectInputStream;
    :catch_0
    move-exception v7

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_1

    .line 170
    .end local v1    # "file":Ljava/io/File;
    .end local v5    # "ois":Ljava/io/ObjectInputStream;
    :catch_1
    move-exception v6

    .line 171
    .local v6, "t":Ljava/lang/Throwable;
    :goto_2
    :try_start_3
    const-string/jumbo v7, "mtopsdk.MtopUtils"

    const-string/jumbo v8, "readObject error.fileDir={%s},fileName={%s}"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p0, v9, v10

    const/4 v10, 0x1

    aput-object p1, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v6}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 173
    if-eqz v2, :cond_1

    .line 175
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 178
    :catch_2
    move-exception v7

    goto :goto_1

    .line 173
    .end local v6    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v7

    :goto_3
    if-eqz v2, :cond_2

    .line 175
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 178
    :cond_2
    :goto_4
    throw v7

    :catch_3
    move-exception v8

    goto :goto_4

    .line 173
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .line 170
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_4
    move-exception v6

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method public static setBitToOne(JI)J
    .locals 4
    .param p0, "n"    # J
    .param p2, "m"    # I

    .prologue
    .line 129
    const-wide/16 v0, 0x1

    add-int/lit8 v2, p2, -0x1

    shl-long/2addr v0, v2

    or-long/2addr v0, p0

    return-wide v0
.end method

.method public static setBitToZero(JI)J
    .locals 4
    .param p0, "n"    # J
    .param p2, "m"    # I

    .prologue
    .line 143
    const-wide/16 v0, 0x1

    add-int/lit8 v2, p2, -0x1

    shl-long/2addr v0, v2

    const-wide/16 v2, -0x1

    xor-long/2addr v0, v2

    and-long/2addr v0, p0

    return-wide v0
.end method

.method public static urlDecode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-static {p0}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 98
    .end local p0    # "input":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 92
    .restart local p0    # "input":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    .line 94
    .local v1, "output":Ljava/lang/String;
    :try_start_0
    invoke-static {p0, p1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    move-object p0, v1

    .line 98
    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "mtopsdk.MtopUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "[urlDecode] URLDecoder decode error. input="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", charset= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static urlEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/lang/String;

    .prologue
    .line 108
    invoke-static {p0}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 117
    .end local p0    # "input":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 111
    .restart local p0    # "input":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    .line 113
    .local v1, "output":Ljava/lang/String;
    :try_start_0
    invoke-static {p0, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    move-object p0, v1

    .line 117
    goto :goto_0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "mtopsdk.MtopUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "[urlEncode] URLEncoder encode error. input="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", charset= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static writeObject(Ljava/io/Serializable;Ljava/io/File;Ljava/lang/String;)Z
    .locals 11
    .param p0, "object"    # Ljava/io/Serializable;
    .param p1, "fileDir"    # Ljava/io/File;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 194
    const/4 v0, 0x0

    .line 195
    .local v0, "file":Ljava/io/File;
    const/4 v2, 0x0

    .line 197
    .local v2, "fos":Ljava/io/FileOutputStream;
    const/4 v6, 0x0

    .line 199
    .local v6, "writeSuccess":Z
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 200
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 202
    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v8, Ljava/util/Random;

    invoke-direct {v8}, Ljava/util/Random;-><init>()V

    const/16 v9, 0xa

    invoke-virtual {v8, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, p1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    .end local v0    # "file":Ljava/io/File;
    .local v1, "file":Ljava/io/File;
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 204
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    new-instance v4, Ljava/io/ObjectOutputStream;

    new-instance v7, Ljava/io/BufferedOutputStream;

    invoke-direct {v7, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v4, v7}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 205
    .local v4, "oos":Ljava/io/ObjectOutputStream;
    invoke-virtual {v4, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 206
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->flush()V

    .line 207
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 208
    const/4 v6, 0x1

    .line 214
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    move-object v0, v1

    .line 222
    .end local v1    # "file":Ljava/io/File;
    .end local v4    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v0    # "file":Ljava/io/File;
    :cond_1
    :goto_0
    if-eqz v6, :cond_2

    .line 223
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v6

    .line 225
    :cond_2
    return v6

    .line 217
    .end local v0    # "file":Ljava/io/File;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "oos":Ljava/io/ObjectOutputStream;
    :catch_0
    move-exception v7

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    move-object v0, v1

    .end local v1    # "file":Ljava/io/File;
    .restart local v0    # "file":Ljava/io/File;
    goto :goto_0

    .line 209
    .end local v4    # "oos":Ljava/io/ObjectOutputStream;
    :catch_1
    move-exception v5

    .line 210
    .local v5, "t":Ljava/lang/Throwable;
    :goto_1
    :try_start_4
    const-string/jumbo v7, "mtopsdk.MtopUtils"

    const-string/jumbo v8, "writeObject error.fileDir={%s},fileName={%s},object={%s}"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    const/4 v10, 0x1

    aput-object p2, v9, v10

    const/4 v10, 0x2

    aput-object p0, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v5}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 212
    if-eqz v2, :cond_1

    .line 214
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 217
    :catch_2
    move-exception v7

    goto :goto_0

    .line 212
    .end local v5    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v7

    :goto_2
    if-eqz v2, :cond_3

    .line 214
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 217
    :cond_3
    :goto_3
    throw v7

    :catch_3
    move-exception v8

    goto :goto_3

    .line 212
    .end local v0    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    :catchall_1
    move-exception v7

    move-object v0, v1

    .end local v1    # "file":Ljava/io/File;
    .restart local v0    # "file":Ljava/io/File;
    goto :goto_2

    .end local v0    # "file":Ljava/io/File;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v7

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    move-object v0, v1

    .end local v1    # "file":Ljava/io/File;
    .restart local v0    # "file":Ljava/io/File;
    goto :goto_2

    .line 209
    .end local v0    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    :catch_4
    move-exception v5

    move-object v0, v1

    .end local v1    # "file":Ljava/io/File;
    .restart local v0    # "file":Ljava/io/File;
    goto :goto_1

    .end local v0    # "file":Ljava/io/File;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v5

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    move-object v0, v1

    .end local v1    # "file":Ljava/io/File;
    .restart local v0    # "file":Ljava/io/File;
    goto :goto_1
.end method
