.class public final Lcpe;
.super Ljava/lang/Object;
.source "MD5Util.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/File;)Ljava/lang/String;
    .locals 9
    .param p0, "file"    # Ljava/io/File;

    .prologue
    const/4 v6, 0x0

    const/16 v8, 0x400

    .line 20
    if-nez p0, :cond_1

    .line 52
    :cond_0
    :goto_0
    return-object v6

    .line 24
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 29
    const/4 v3, 0x0

    .line 30
    .local v3, "in":Ljava/io/FileInputStream;
    new-array v0, v8, [B

    .line 33
    .local v0, "buffer":[B
    const/16 v7, 0x400

    :try_start_0
    invoke-static {v7}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->getBuf(I)[B

    move-result-object v0

    .line 35
    const-string/jumbo v7, "MD5"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 36
    .local v1, "digest":Ljava/security/MessageDigest;
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .end local v3    # "in":Ljava/io/FileInputStream;
    .local v4, "in":Ljava/io/FileInputStream;
    :goto_1
    const/4 v7, 0x0

    const/16 v8, 0x400

    :try_start_1
    invoke-virtual {v4, v0, v7, v8}, Ljava/io/FileInputStream;->read([BII)I

    move-result v5

    .local v5, "len":I
    const/4 v7, -0x1

    if-eq v5, v7, :cond_3

    .line 38
    const/4 v7, 0x0

    invoke-virtual {v1, v0, v7, v5}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 41
    .end local v5    # "len":I
    :catch_0
    move-exception v2

    move-object v3, v4

    .line 42
    .end local v1    # "digest":Ljava/security/MessageDigest;
    .end local v4    # "in":Ljava/io/FileInputStream;
    .local v2, "e":Ljava/lang/Exception;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    :goto_2
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 45
    if-eqz v0, :cond_2

    .line 46
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    .line 49
    :cond_2
    invoke-static {v3}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    goto :goto_0

    .line 40
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "in":Ljava/io/FileInputStream;
    .restart local v1    # "digest":Ljava/security/MessageDigest;
    .restart local v4    # "in":Ljava/io/FileInputStream;
    .restart local v5    # "len":I
    :cond_3
    :try_start_3
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v7

    invoke-static {v7}, Lcpe;->a([B)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v6

    .line 45
    if-eqz v0, :cond_4

    .line 46
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    .line 49
    :cond_4
    invoke-static {v4}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    goto :goto_0

    .line 45
    .end local v1    # "digest":Ljava/security/MessageDigest;
    .end local v4    # "in":Ljava/io/FileInputStream;
    .end local v5    # "len":I
    .restart local v3    # "in":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v6

    :goto_3
    if-eqz v0, :cond_5

    .line 46
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    .line 49
    :cond_5
    invoke-static {v3}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    throw v6

    .line 45
    .end local v3    # "in":Ljava/io/FileInputStream;
    .restart local v1    # "digest":Ljava/security/MessageDigest;
    .restart local v4    # "in":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "in":Ljava/io/FileInputStream;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    goto :goto_3

    .line 41
    .end local v1    # "digest":Ljava/security/MessageDigest;
    :catch_1
    move-exception v2

    goto :goto_2
.end method

.method private static a([B)Ljava/lang/String;
    .locals 6
    .param p0, "src"    # [B

    .prologue
    .line 57
    if-eqz p0, :cond_0

    array-length v4, p0

    if-gtz v4, :cond_1

    .line 58
    :cond_0
    const/4 v4, 0x0

    .line 70
    :goto_0
    return-object v4

    .line 61
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, ""

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .local v2, "stringBuilder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v4, p0

    if-ge v1, v4, :cond_3

    .line 63
    aget-byte v4, p0, v1

    and-int/lit16 v3, v4, 0xff

    .line 64
    .local v3, "v":I
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "hv":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_2

    .line 66
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    :cond_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 70
    .end local v0    # "hv":Ljava/lang/String;
    .end local v3    # "v":I
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method
