.class public Lcom/laiwang/protocol/android/ci;
.super Ljava/lang/Object;
.source "FileUtils.java"


# direct methods
.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 15
    if-nez p0, :cond_1

    .line 41
    :cond_0
    :goto_0
    return-object v1

    .line 19
    :cond_1
    invoke-static {p0}, Lcom/laiwang/protocol/android/ci;->b(Ljava/lang/String;)[B

    move-result-object v0

    .line 21
    .local v0, "headerBytes":[B
    invoke-static {v0}, Lcom/laiwang/protocol/android/ci;->c([B)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 22
    const-string/jumbo v1, "jpg"

    goto :goto_0

    .line 25
    :cond_2
    invoke-static {v0}, Lcom/laiwang/protocol/android/ci;->e([B)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 26
    const-string/jumbo v1, "webp"

    goto :goto_0

    .line 29
    :cond_3
    invoke-static {v0}, Lcom/laiwang/protocol/android/ci;->b([B)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 30
    const-string/jumbo v1, "gif"

    goto :goto_0

    .line 33
    :cond_4
    invoke-static {v0}, Lcom/laiwang/protocol/android/ci;->a([B)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 34
    const-string/jumbo v1, "bmp"

    goto :goto_0

    .line 37
    :cond_5
    invoke-static {v0}, Lcom/laiwang/protocol/android/ci;->d([B)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 38
    const-string/jumbo v1, "png"

    goto :goto_0
.end method

.method private static a([B)Z
    .locals 4
    .param p0, "b"    # [B

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 96
    if-eqz p0, :cond_0

    array-length v2, p0

    const/4 v3, 0x2

    if-ge v2, v3, :cond_2

    :cond_0
    move v0, v1

    .line 99
    :cond_1
    :goto_0
    return v0

    :cond_2
    aget-byte v2, p0, v1

    const/16 v3, 0x42

    if-ne v2, v3, :cond_3

    aget-byte v2, p0, v0

    const/16 v3, 0x4d

    if-eq v2, v3, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private static b([B)Z
    .locals 5
    .param p0, "b"    # [B

    .prologue
    const/4 v4, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 103
    if-eqz p0, :cond_0

    array-length v2, p0

    const/4 v3, 0x6

    if-ge v2, v3, :cond_2

    :cond_0
    move v0, v1

    .line 106
    :cond_1
    :goto_0
    return v0

    :cond_2
    aget-byte v2, p0, v1

    const/16 v3, 0x47

    if-ne v2, v3, :cond_4

    aget-byte v2, p0, v0

    const/16 v3, 0x49

    if-ne v2, v3, :cond_4

    const/4 v2, 0x2

    aget-byte v2, p0, v2

    const/16 v3, 0x46

    if-ne v2, v3, :cond_4

    const/4 v2, 0x3

    aget-byte v2, p0, v2

    const/16 v3, 0x38

    if-ne v2, v3, :cond_4

    aget-byte v2, p0, v4

    const/16 v3, 0x37

    if-eq v2, v3, :cond_3

    aget-byte v2, p0, v4

    const/16 v3, 0x39

    if-ne v2, v3, :cond_4

    :cond_3
    const/4 v2, 0x5

    aget-byte v2, p0, v2

    const/16 v3, 0x61

    if-eq v2, v3, :cond_1

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)[B
    .locals 6
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0xc

    .line 51
    new-array v0, v4, [B

    .line 52
    .local v0, "b":[B
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 53
    const/4 v2, 0x0

    .line 55
    .local v2, "is":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    .end local v2    # "is":Ljava/io/FileInputStream;
    .local v3, "is":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    const/16 v5, 0xc

    :try_start_1
    invoke-virtual {v3, v0, v4, v5}, Ljava/io/FileInputStream;->read([BII)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 62
    if-eqz v3, :cond_0

    .line 64
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 70
    .end local v3    # "is":Ljava/io/FileInputStream;
    :cond_0
    :goto_0
    return-object v0

    .line 57
    .restart local v2    # "is":Ljava/io/FileInputStream;
    :catch_0
    move-exception v1

    .line 58
    .local v1, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    const-string/jumbo v4, "FileUtils getFileHeader FileNotFoundException"

    invoke-static {v4, v1}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 62
    if-eqz v2, :cond_0

    .line 64
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 66
    :catch_1
    move-exception v4

    goto :goto_0

    .line 59
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v1

    .line 60
    .local v1, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_5
    const-string/jumbo v4, "FileUtils getFileHeader Exception"

    invoke-static {v4, v1}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 62
    if-eqz v2, :cond_0

    .line 64
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_0

    .line 66
    :catch_3
    move-exception v4

    goto :goto_0

    .line 62
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    :goto_3
    if-eqz v2, :cond_1

    .line 64
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 66
    :cond_1
    :goto_4
    throw v4

    .end local v2    # "is":Ljava/io/FileInputStream;
    .restart local v3    # "is":Ljava/io/FileInputStream;
    :catch_4
    move-exception v4

    goto :goto_0

    .end local v3    # "is":Ljava/io/FileInputStream;
    .restart local v2    # "is":Ljava/io/FileInputStream;
    :catch_5
    move-exception v5

    goto :goto_4

    .line 62
    .end local v2    # "is":Ljava/io/FileInputStream;
    .restart local v3    # "is":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "is":Ljava/io/FileInputStream;
    .restart local v2    # "is":Ljava/io/FileInputStream;
    goto :goto_3

    .line 59
    .end local v2    # "is":Ljava/io/FileInputStream;
    .restart local v3    # "is":Ljava/io/FileInputStream;
    :catch_6
    move-exception v1

    move-object v2, v3

    .end local v3    # "is":Ljava/io/FileInputStream;
    .restart local v2    # "is":Ljava/io/FileInputStream;
    goto :goto_2

    .line 57
    .end local v2    # "is":Ljava/io/FileInputStream;
    .restart local v3    # "is":Ljava/io/FileInputStream;
    :catch_7
    move-exception v1

    move-object v2, v3

    .end local v3    # "is":Ljava/io/FileInputStream;
    .restart local v2    # "is":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method private static c([B)Z
    .locals 4
    .param p0, "b"    # [B

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 111
    if-eqz p0, :cond_0

    array-length v2, p0

    const/4 v3, 0x4

    if-ge v2, v3, :cond_2

    :cond_0
    move v0, v1

    .line 114
    :cond_1
    :goto_0
    return v0

    :cond_2
    aget-byte v2, p0, v1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    aget-byte v2, p0, v0

    const/16 v3, -0x28

    if-eq v2, v3, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private static d([B)Z
    .locals 5
    .param p0, "b"    # [B

    .prologue
    const/4 v0, 0x1

    const/16 v4, 0xa

    const/4 v1, 0x0

    .line 118
    if-eqz p0, :cond_0

    array-length v2, p0

    if-ge v2, v4, :cond_2

    :cond_0
    move v0, v1

    .line 121
    :cond_1
    :goto_0
    return v0

    :cond_2
    aget-byte v2, p0, v1

    const/16 v3, -0x77

    if-ne v2, v3, :cond_3

    aget-byte v2, p0, v0

    const/16 v3, 0x50

    if-ne v2, v3, :cond_3

    const/4 v2, 0x2

    aget-byte v2, p0, v2

    const/16 v3, 0x4e

    if-ne v2, v3, :cond_3

    const/4 v2, 0x3

    aget-byte v2, p0, v2

    const/16 v3, 0x47

    if-ne v2, v3, :cond_3

    const/4 v2, 0x4

    aget-byte v2, p0, v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_3

    const/4 v2, 0x5

    aget-byte v2, p0, v2

    if-ne v2, v4, :cond_3

    const/4 v2, 0x6

    aget-byte v2, p0, v2

    const/16 v3, 0x1a

    if-ne v2, v3, :cond_3

    const/4 v2, 0x7

    aget-byte v2, p0, v2

    if-eq v2, v4, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private static e([B)Z
    .locals 4
    .param p0, "data"    # [B

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 126
    if-eqz p0, :cond_0

    array-length v2, p0

    const/16 v3, 0xc

    if-ge v2, v3, :cond_2

    :cond_0
    move v0, v1

    .line 129
    :cond_1
    :goto_0
    return v0

    :cond_2
    aget-byte v2, p0, v1

    const/16 v3, 0x52

    if-ne v2, v3, :cond_3

    aget-byte v2, p0, v0

    const/16 v3, 0x49

    if-ne v2, v3, :cond_3

    const/4 v2, 0x2

    aget-byte v2, p0, v2

    const/16 v3, 0x46

    if-ne v2, v3, :cond_3

    const/16 v2, 0x8

    aget-byte v2, p0, v2

    const/16 v3, 0x57

    if-ne v2, v3, :cond_3

    const/16 v2, 0x9

    aget-byte v2, p0, v2

    const/16 v3, 0x45

    if-ne v2, v3, :cond_3

    const/16 v2, 0xa

    aget-byte v2, p0, v2

    const/16 v3, 0x42

    if-ne v2, v3, :cond_3

    const/16 v2, 0xb

    aget-byte v2, p0, v2

    const/16 v3, 0x50

    if-eq v2, v3, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method
