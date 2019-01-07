.class public final Ljji;
.super Ljava/lang/Object;
.source "FileUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([BLjava/io/File;)Z
    .locals 10
    .param p0, "b"    # [B
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const/4 v4, 0x0

    .line 43
    const/4 v3, 0x0

    .line 44
    .local v3, "ret":Z
    if-nez p0, :cond_0

    .line 45
    const-string/jumbo v5, "FileUtils"

    const-string/jumbo v6, "byteToFile null"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const-string/jumbo v8, "data"

    aput-object v8, v7, v4

    const/4 v8, 0x1

    aput-object p0, v7, v8

    const/4 v8, 0x2

    const-string/jumbo v9, "file"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    aput-object p1, v7, v8

    invoke-static {v5, v6, v7}, Lcom/taobao/accs/utl/ALog;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    :goto_0
    return v4

    .line 49
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 50
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 52
    :cond_1
    const/4 v1, 0x0

    .line 54
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v2, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 57
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 59
    const/4 v3, 0x1

    .line 66
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :cond_2
    :goto_1
    move v4, v3

    .line 73
    goto :goto_0

    .line 67
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v2

    .line 69
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1

    .line 60
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/Throwable;
    :goto_2
    const/4 v3, 0x0

    .line 62
    :try_start_3
    const-string/jumbo v4, "FileUtils"

    const-string/jumbo v5, "byteToFile write file error"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v0, v6}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 64
    if-eqz v1, :cond_2

    .line 66
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 67
    :catch_2
    move-exception v0

    .line 68
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 64
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_3
    if-eqz v1, :cond_3

    .line 66
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 69
    :cond_3
    :goto_4
    throw v4

    .line 67
    :catch_3
    move-exception v0

    .line 68
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 64
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 60
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method public static a(Ljava/io/File;)[B
    .locals 7
    .param p0, "file"    # Ljava/io/File;

    .prologue
    const/4 v6, 0x0

    .line 17
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 18
    const-string/jumbo v4, "FileUtils"

    const-string/jumbo v5, "filetoByte not exist"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/ALog;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    const/4 v3, 0x0

    .line 38
    :cond_0
    :goto_0
    return-object v3

    .line 21
    :cond_1
    const/4 v3, 0x0

    .line 22
    .local v3, "ret":[B
    const/4 v1, 0x0

    .line 24
    .local v1, "inStream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .end local v1    # "inStream":Ljava/io/FileInputStream;
    .local v2, "inStream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {v2}, Ljji;->a(Ljava/io/InputStream;)[B
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 31
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .line 34
    .end local v2    # "inStream":Ljava/io/FileInputStream;
    .restart local v1    # "inStream":Ljava/io/FileInputStream;
    goto :goto_0

    .line 32
    .end local v1    # "inStream":Ljava/io/FileInputStream;
    .restart local v2    # "inStream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    .line 33
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v2

    .line 34
    .end local v2    # "inStream":Ljava/io/FileInputStream;
    .restart local v1    # "inStream":Ljava/io/FileInputStream;
    goto :goto_0

    .line 26
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 27
    .local v0, "e":Ljava/lang/Throwable;
    :goto_1
    :try_start_3
    const-string/jumbo v4, "FileUtils"

    const-string/jumbo v5, "FileInputStream error"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v0, v6}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 29
    if-eqz v1, :cond_0

    .line 31
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 32
    :catch_2
    move-exception v0

    .line 33
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 29
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_2
    if-eqz v1, :cond_2

    .line 31
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 34
    :cond_2
    :goto_3
    throw v4

    .line 32
    :catch_3
    move-exception v0

    .line 33
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 29
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "inStream":Ljava/io/FileInputStream;
    .restart local v2    # "inStream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "inStream":Ljava/io/FileInputStream;
    .restart local v1    # "inStream":Ljava/io/FileInputStream;
    goto :goto_2

    .line 26
    .end local v1    # "inStream":Ljava/io/FileInputStream;
    .restart local v2    # "inStream":Ljava/io/FileInputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "inStream":Ljava/io/FileInputStream;
    .restart local v1    # "inStream":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method private static a(Ljava/io/InputStream;)[B
    .locals 9
    .param p0, "inStream"    # Ljava/io/InputStream;

    .prologue
    .line 81
    const/4 v1, 0x0

    .line 82
    .local v1, "bos":Ljava/io/ByteArrayOutputStream;
    const/4 v5, 0x0

    .line 84
    .local v5, "ret":[B
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .local v2, "bos":Ljava/io/ByteArrayOutputStream;
    const/16 v6, 0x800

    :try_start_1
    new-array v0, v6, [B

    .line 87
    .local v0, "b":[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .local v4, "len":I
    const/4 v6, -0x1

    if-eq v4, v6, :cond_1

    .line 88
    const/4 v6, 0x0

    invoke-virtual {v2, v0, v6, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 91
    .end local v0    # "b":[B
    .end local v4    # "len":I
    :catch_0
    move-exception v3

    move-object v1, v2

    .line 92
    .end local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .local v3, "e":Ljava/lang/Throwable;
    :goto_1
    :try_start_2
    const-string/jumbo v6, "FileUtils"

    const-string/jumbo v7, "streamToByte error"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v3, v8}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 94
    if-eqz v1, :cond_0

    .line 96
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 101
    .end local v3    # "e":Ljava/lang/Throwable;
    :cond_0
    :goto_2
    return-object v5

    .line 90
    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "b":[B
    .restart local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "len":I
    :cond_1
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v5

    .line 96
    :try_start_5
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-object v1, v2

    .line 98
    .end local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    goto :goto_2

    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    :catch_1
    move-exception v6

    move-object v1, v2

    .end local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    goto :goto_2

    .line 94
    .end local v0    # "b":[B
    .end local v4    # "len":I
    :catchall_0
    move-exception v6

    :goto_3
    if-eqz v1, :cond_2

    .line 96
    :try_start_6
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 98
    :cond_2
    :goto_4
    throw v6

    .restart local v3    # "e":Ljava/lang/Throwable;
    :catch_2
    move-exception v6

    goto :goto_2

    .end local v3    # "e":Ljava/lang/Throwable;
    :catch_3
    move-exception v7

    goto :goto_4

    .line 94
    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v6

    move-object v1, v2

    .end local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    goto :goto_3

    .line 91
    :catch_4
    move-exception v3

    goto :goto_1
.end method
