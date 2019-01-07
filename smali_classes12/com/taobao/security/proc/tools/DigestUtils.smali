.class public Lcom/taobao/security/proc/tools/DigestUtils;
.super Ljava/lang/Object;
.source "DigestUtils.java"


# static fields
.field private static final MD5:Ljava/lang/String; = "MD5"

.field private static final SHA1:Ljava/lang/String; = "SHA-1"

.field private static final SHA256:Ljava/lang/String; = "SHA-256"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static digest(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 43
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 45
    .local v2, "messageDigest":Ljava/security/MessageDigest;
    const/16 v4, 0x400

    new-array v0, v4, [B

    .line 46
    .local v0, "buffer":[B
    const/4 v4, 0x0

    const/16 v5, 0x400

    invoke-virtual {p0, v0, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 48
    .local v3, "read":I
    :goto_0
    if-gez v3, :cond_0

    .line 53
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    invoke-static {v4}, Lcom/taobao/security/proc/tools/HexUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    .line 58
    .end local v0    # "buffer":[B
    .end local v2    # "messageDigest":Ljava/security/MessageDigest;
    .end local v3    # "read":I
    :goto_1
    return-object v4

    .line 49
    .restart local v0    # "buffer":[B
    .restart local v2    # "messageDigest":Ljava/security/MessageDigest;
    .restart local v3    # "read":I
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Ljava/security/MessageDigest;->update([BII)V

    .line 50
    const/4 v4, 0x0

    const/16 v5, 0x400

    invoke-virtual {p0, v0, v4, v5}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 55
    .end local v0    # "buffer":[B
    .end local v2    # "messageDigest":Ljava/security/MessageDigest;
    .end local v3    # "read":I
    :catch_0
    move-exception v1

    .line 56
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 58
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private static digest([BLjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "input"    # [B
    .param p1, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 67
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 68
    .local v1, "messageDigest":Ljava/security/MessageDigest;
    const/4 v2, 0x0

    array-length v3, p0

    invoke-virtual {v1, p0, v2, v3}, Ljava/security/MessageDigest;->update([BII)V

    .line 70
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-static {v2}, Lcom/taobao/security/proc/tools/HexUtil;->bytesToHexString([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 74
    .end local v1    # "messageDigest":Ljava/security/MessageDigest;
    :goto_0
    return-object v2

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 74
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static md5ToHex(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21
    const-string/jumbo v0, "MD5"

    invoke-static {p0, v0}, Lcom/taobao/security/proc/tools/DigestUtils;->digest(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sha1ToHex(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    const-string/jumbo v0, "SHA-1"

    invoke-static {p0, v0}, Lcom/taobao/security/proc/tools/DigestUtils;->digest(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sha256ToHex(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    const-string/jumbo v0, "SHA-256"

    invoke-static {p0, v0}, Lcom/taobao/security/proc/tools/DigestUtils;->digest(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sha256ToHex([B)Ljava/lang/String;
    .locals 1
    .param p0, "input"    # [B

    .prologue
    .line 62
    const-string/jumbo v0, "SHA-256"

    invoke-static {p0, v0}, Lcom/taobao/security/proc/tools/DigestUtils;->digest([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
