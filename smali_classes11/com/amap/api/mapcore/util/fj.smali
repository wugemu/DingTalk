.class public Lcom/amap/api/mapcore/util/fj;
.super Ljava/lang/Object;
.source "MD5.java"


# direct methods
.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 26
    .line 28
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 55
    :cond_0
    :goto_0
    return-object v0

    .line 31
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 37
    const/16 v2, 0x800

    new-array v3, v2, [B

    .line 39
    const-string/jumbo v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 40
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    :goto_1
    :try_start_1
    invoke-virtual {v2, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    const/4 v5, -0x1

    if-eq v1, v5, :cond_2

    .line 42
    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5, v1}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 46
    :catch_0
    move-exception v1

    .line 47
    :goto_2
    :try_start_2
    const-string/jumbo v3, "MD5"

    const-string/jumbo v4, "getMd5FromFile"

    invoke-static {v1, v3, v4}, Lcom/amap/api/mapcore/util/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 51
    if-eqz v2, :cond_0

    .line 52
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 53
    :catch_1
    move-exception v1

    .line 54
    const-string/jumbo v2, "MD5"

    const-string/jumbo v3, "getMd5FromFile"

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore/util/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 44
    :cond_2
    :try_start_4
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 45
    invoke-static {v1}, Lcom/amap/api/mapcore/util/fn;->d([B)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v0

    .line 52
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 53
    :catch_2
    move-exception v1

    .line 54
    const-string/jumbo v2, "MD5"

    const-string/jumbo v3, "getMd5FromFile"

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore/util/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    .line 51
    :goto_3
    if-eqz v2, :cond_3

    .line 52
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 55
    :cond_3
    :goto_4
    throw v0

    .line 53
    :catch_3
    move-exception v1

    .line 54
    const-string/jumbo v2, "MD5"

    const-string/jumbo v3, "getMd5FromFile"

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore/util/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 50
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 46
    :catch_4
    move-exception v1

    move-object v2, v0

    goto :goto_2
.end method

.method public static a([B)Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    invoke-static {p0}, Lcom/amap/api/mapcore/util/fj;->b([B)[B

    move-result-object v0

    .line 71
    invoke-static {v0}, Lcom/amap/api/mapcore/util/fn;->d([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a([BLjava/lang/String;)[B
    .locals 4

    .prologue
    .line 81
    const/4 v0, 0x0

    .line 83
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 84
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 85
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 90
    :goto_0
    return-object v0

    .line 86
    :catch_0
    move-exception v1

    .line 87
    const-string/jumbo v2, "MD5"

    const-string/jumbo v3, "getMd5Bytes1"

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore/util/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    if-nez p0, :cond_0

    .line 63
    const/4 v0, 0x0

    .line 66
    :goto_0
    return-object v0

    .line 65
    :cond_0
    invoke-static {p0}, Lcom/amap/api/mapcore/util/fj;->d(Ljava/lang/String;)[B

    move-result-object v0

    .line 66
    invoke-static {v0}, Lcom/amap/api/mapcore/util/fn;->d([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static b([B)[B
    .locals 1

    .prologue
    .line 94
    const-string/jumbo v0, "MD5"

    invoke-static {p0, v0}, Lcom/amap/api/mapcore/util/fj;->a([BLjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    invoke-static {p0}, Lcom/amap/api/mapcore/util/fj;->e(Ljava/lang/String;)[B

    move-result-object v0

    .line 76
    invoke-static {v0}, Lcom/amap/api/mapcore/util/fn;->e([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d(Ljava/lang/String;)[B
    .locals 3

    .prologue
    .line 99
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/mapcore/util/fj;->f(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 103
    :goto_0
    return-object v0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    const-string/jumbo v1, "MD5"

    const-string/jumbo v2, "getMd5Bytes"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const/4 v0, 0x0

    new-array v0, v0, [B

    goto :goto_0
.end method

.method private static e(Ljava/lang/String;)[B
    .locals 1

    .prologue
    .line 108
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/mapcore/util/fj;->f(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 114
    :goto_0
    return-object v0

    .line 110
    :catch_0
    move-exception v0

    .line 112
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 114
    const/4 v0, 0x0

    new-array v0, v0, [B

    goto :goto_0
.end method

.method private static f(Ljava/lang/String;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 122
    if-nez p0, :cond_0

    .line 123
    const/4 v0, 0x0

    .line 128
    :goto_0
    return-object v0

    .line 125
    :cond_0
    const-string/jumbo v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 126
    invoke-static {p0}, Lcom/amap/api/mapcore/util/fn;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 127
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    goto :goto_0
.end method
