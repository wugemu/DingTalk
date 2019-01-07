.class public final Lhzd;
.super Ljava/lang/Object;
.source "DigestUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/FileInputStream;)Ljava/lang/String;
    .locals 7
    .param p0, "fis"    # Ljava/io/FileInputStream;

    .prologue
    .line 16
    :try_start_0
    const-string/jumbo v5, "MD5"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 17
    .local v4, "md":Ljava/security/MessageDigest;
    const/16 v5, 0x400

    new-array v1, v5, [B

    .line 19
    .local v1, "buffer":[B
    :goto_0
    const/4 v5, 0x0

    const/16 v6, 0x400

    invoke-virtual {p0, v1, v5, v6}, Ljava/io/FileInputStream;->read([BII)I

    move-result v3

    .local v3, "length":I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_0

    .line 20
    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5, v3}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 24
    .end local v1    # "buffer":[B
    .end local v3    # "length":I
    .end local v4    # "md":Ljava/security/MessageDigest;
    :catch_0
    move-exception v2

    .line 25
    .local v2, "e":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 27
    const/4 v5, 0x0

    .end local v2    # "e":Ljava/lang/Throwable;
    :goto_1
    return-object v5

    .line 22
    .restart local v1    # "buffer":[B
    .restart local v3    # "length":I
    .restart local v4    # "md":Ljava/security/MessageDigest;
    :cond_0
    :try_start_1
    new-instance v0, Ljava/math/BigInteger;

    const/4 v5, 0x1

    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v6

    invoke-direct {v0, v5, v6}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 23
    .local v0, "bigInt":Ljava/math/BigInteger;
    const/16 v5, 0x10

    invoke-virtual {v0, v5}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    goto :goto_1
.end method
