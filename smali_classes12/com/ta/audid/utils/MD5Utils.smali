.class public Lcom/ta/audid/utils/MD5Utils;
.super Ljava/lang/Object;
.source "MD5Utils.java"


# static fields
.field private static final HMAC_MD5_PK:Ljava/lang/String; = "QrMgt8GGYI6T52ZY5AnhtxkLzb8egpFn"

.field private static final hexChar:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/ta/audid/utils/MD5Utils;->hexChar:[C

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

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHmacMd5Hex(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-static {}, Lcom/ta/audid/utils/MD5Utils;->getHmacMd5Key()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/ta/audid/utils/MD5Utils;->getHmacMd5Hex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getHmacMd5Hex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 19
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ta/audid/utils/MD5Utils;->getHmacSHA256([B[B)[B

    move-result-object v1

    .line 20
    .local v1, "result":[B
    if-eqz v1, :cond_0

    .line 21
    invoke-static {v1}, Lcom/ta/audid/utils/MD5Utils;->toHexString([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 26
    .end local v1    # "result":[B
    :goto_0
    return-object v2

    .line 23
    :catch_0
    move-exception v0

    .line 24
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, ""

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/ta/audid/utils/UtdidLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const-string/jumbo v2, "0000000000000000"

    goto :goto_0
.end method

.method private static getHmacMd5Key()Ljava/lang/String;
    .locals 4

    .prologue
    .line 109
    const-string/jumbo v3, "QrMgt8GGYI6T52ZY5AnhtxkLzb8egpFn"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 112
    .local v2, "state":[B
    const/16 v1, 0x20

    .line 113
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "counter":B
    :goto_0
    if-ge v0, v1, :cond_0

    .line 114
    :try_start_0
    aget-byte v3, v2, v0

    add-int/2addr v3, v0

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 113
    add-int/lit8 v3, v0, 0x1

    int-to-byte v0, v3

    goto :goto_0

    .line 116
    :cond_0
    invoke-static {v2}, Lcom/ta/audid/utils/MD5Utils;->toHexString([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 118
    :goto_1
    return-object v3

    :catch_0
    move-exception v3

    const/4 v3, 0x0

    goto :goto_1
.end method

.method private static getHmacSHA256([B[B)[B
    .locals 13
    .param p0, "key"    # [B
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    const/16 v12, 0x40

    .line 57
    new-array v4, v12, [B

    .line 58
    .local v4, "ipad":[B
    new-array v8, v12, [B

    .line 59
    .local v8, "opad":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v12, :cond_0

    .line 60
    const/16 v10, 0x36

    aput-byte v10, v4, v3

    .line 61
    const/16 v10, 0x5c

    aput-byte v10, v8, v3

    .line 59
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 63
    :cond_0
    move-object v0, p0

    .line 64
    .local v0, "actualKey":[B
    new-array v7, v12, [B

    .line 66
    .local v7, "keyArr":[B
    array-length v10, p0

    if-le v10, v12, :cond_1

    .line 67
    invoke-static {p0}, Lcom/ta/audid/utils/MD5Utils;->md5([B)[B

    move-result-object v0

    .line 69
    :cond_1
    const/4 v3, 0x0

    :goto_1
    array-length v10, v0

    if-ge v3, v10, :cond_2

    .line 70
    aget-byte v10, v0, v3

    aput-byte v10, v7, v3

    .line 69
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 73
    :cond_2
    array-length v10, v0

    if-ge v10, v12, :cond_3

    .line 74
    array-length v3, v0

    :goto_2
    if-ge v3, v12, :cond_3

    .line 75
    const/4 v10, 0x0

    aput-byte v10, v7, v3

    .line 74
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 78
    :cond_3
    new-array v5, v12, [B

    .line 79
    .local v5, "kIpadXorResult":[B
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v12, :cond_4

    .line 80
    aget-byte v10, v7, v3

    aget-byte v11, v4, v3

    xor-int/2addr v10, v11

    int-to-byte v10, v10

    aput-byte v10, v5, v3

    .line 79
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 83
    :cond_4
    array-length v10, p1

    add-int/lit8 v10, v10, 0x40

    new-array v1, v10, [B

    .line 84
    .local v1, "firstAppendResult":[B
    const/4 v3, 0x0

    :goto_4
    if-ge v3, v12, :cond_5

    .line 85
    aget-byte v10, v5, v3

    aput-byte v10, v1, v3

    .line 84
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 87
    :cond_5
    const/4 v3, 0x0

    :goto_5
    array-length v10, p1

    if-ge v3, v10, :cond_6

    .line 88
    add-int/lit8 v10, v3, 0x40

    aget-byte v11, p1, v3

    aput-byte v11, v1, v10

    .line 87
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 91
    :cond_6
    invoke-static {v1}, Lcom/ta/audid/utils/MD5Utils;->md5([B)[B

    move-result-object v2

    .line 92
    .local v2, "firstHashResult":[B
    new-array v6, v12, [B

    .line 93
    .local v6, "kOpadXorResult":[B
    const/4 v3, 0x0

    :goto_6
    if-ge v3, v12, :cond_7

    .line 94
    aget-byte v10, v7, v3

    aget-byte v11, v8, v3

    xor-int/2addr v10, v11

    int-to-byte v10, v10

    aput-byte v10, v6, v3

    .line 93
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 97
    :cond_7
    array-length v10, v2

    add-int/lit8 v10, v10, 0x40

    new-array v9, v10, [B

    .line 98
    .local v9, "secondAppendResult":[B
    const/4 v3, 0x0

    :goto_7
    if-ge v3, v12, :cond_8

    .line 99
    aget-byte v10, v6, v3

    aput-byte v10, v9, v3

    .line 98
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 101
    :cond_8
    const/4 v3, 0x0

    :goto_8
    array-length v10, v2

    if-ge v3, v10, :cond_9

    .line 102
    add-int/lit8 v10, v3, 0x40

    aget-byte v11, v2, v3

    aput-byte v11, v9, v10

    .line 101
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 105
    :cond_9
    invoke-static {v9}, Lcom/ta/audid/utils/MD5Utils;->md5([B)[B

    move-result-object v10

    return-object v10
.end method

.method private static md5([B)[B
    .locals 4
    .param p0, "source"    # [B

    .prologue
    .line 30
    if-eqz p0, :cond_0

    .line 33
    :try_start_0
    const-string/jumbo v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 34
    .local v1, "md":Ljava/security/MessageDigest;
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 35
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 40
    .end local v1    # "md":Ljava/security/MessageDigest;
    :goto_0
    return-object v2

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, ""

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/ta/audid/utils/UtdidLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 40
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static toHexString([B)Ljava/lang/String;
    .locals 4
    .param p0, "buf"    # [B

    .prologue
    .line 44
    if-nez p0, :cond_0

    .line 45
    const-string/jumbo v2, ""

    .line 52
    :goto_0
    return-object v2

    .line 47
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 48
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 49
    sget-object v2, Lcom/ta/audid/utils/MD5Utils;->hexChar:[C

    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xf0

    ushr-int/lit8 v3, v3, 0x4

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 50
    sget-object v2, Lcom/ta/audid/utils/MD5Utils;->hexChar:[C

    aget-byte v3, p0, v0

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 48
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 52
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
