.class final Lcom/uc/webview/export/internal/uc/wa/f;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static final a:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/uc/webview/export/internal/uc/wa/f;->a:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 39
    const/4 v0, 0x0

    .line 42
    :try_start_0
    const-string/jumbo v1, "utf-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 43
    const-string/jumbo v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 44
    invoke-virtual {v2, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 45
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 47
    const/4 v1, 0x0

    array-length v3, v2

    new-instance v4, Ljava/lang/StringBuilder;

    mul-int/lit8 v5, v3, 0x2

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    add-int/lit8 v3, v3, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-byte v5, v2, v1

    sget-object v6, Lcom/uc/webview/export/internal/uc/wa/f;->a:[C

    and-int/lit16 v7, v5, 0xf0

    shr-int/lit8 v7, v7, 0x4

    aget-char v6, v6, v7

    sget-object v7, Lcom/uc/webview/export/internal/uc/wa/f;->a:[C

    and-int/lit8 v5, v5, 0xf

    aget-char v5, v7, v5

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 54
    :goto_1
    return-object v0

    .line 48
    :catch_0
    move-exception v1

    .line 49
    const-string/jumbo v2, "SDKWaStat"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v1}, Lcom/uc/webview/export/internal/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 50
    :catch_1
    move-exception v1

    .line 51
    const-string/jumbo v2, "SDKWaStat"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v1}, Lcom/uc/webview/export/internal/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method static a([B)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v2, 0x10

    .line 84
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    new-array v1, v2, [B

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 87
    new-array v1, v2, [B

    fill-array-data v1, :array_1

    .line 88
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v3, "AES"

    invoke-direct {v2, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 89
    const-string/jumbo v1, "AES/CBC/PKCS5Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 90
    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 91
    invoke-static {p0}, Lcom/uc/webview/export/internal/uc/wa/f;->b([B)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    return-object v0

    .line 84
    .line 87
    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1
    .array-data 1
        0x26t
        0x28t
        0x55t
        0x63t
        0x53t
        0x64t
        0x6bt
        0x38t
        0x38t
        0x28t
        0x38t
        0x38t
        0x23t
        0x3dt
        0x3dt
        0x3dt
    .end array-data
.end method

.method private static b([B)[B
    .locals 6

    .prologue
    const/16 v5, 0x10

    const/4 v4, 0x0

    .line 125
    array-length v0, p0

    add-int/lit8 v0, v0, 0x10

    new-array v1, v0, [B

    .line 128
    array-length v0, p0

    shr-int/lit8 v2, v0, 0x0

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    const/4 v2, 0x1

    shr-int/lit8 v3, v0, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/4 v2, 0x2

    shr-int/lit8 v3, v0, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/4 v2, 0x3

    shr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    .line 129
    const/4 v0, 0x4

    :goto_0
    if-ge v0, v5, :cond_0

    .line 130
    aput-byte v4, v1, v0

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 132
    :cond_0
    array-length v0, p0

    invoke-static {p0, v4, v1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 133
    return-object v1
.end method
