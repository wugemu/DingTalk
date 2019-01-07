.class public Lcom/alibaba/android/dingtalk/live/msg/core/utils/MD5;
.super Ljava/lang/Object;
.source "MD5.java"


# static fields
.field public static final hexChar:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/alibaba/android/dingtalk/live/msg/core/utils/MD5;->hexChar:[C

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
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMd5([B)[B
    .locals 3
    .param p0, "source"    # [B

    .prologue
    .line 37
    if-eqz p0, :cond_0

    .line 40
    :try_start_0
    const-string/jumbo v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 41
    .local v1, "md":Ljava/security/MessageDigest;
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 42
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 47
    .end local v1    # "md":Ljava/security/MessageDigest;
    :goto_0
    return-object v2

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 47
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getMd5Hex(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "source"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/msg/core/utils/MD5;->getMd5Hex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMd5Hex([B)Ljava/lang/String;
    .locals 2
    .param p0, "source"    # [B

    .prologue
    .line 29
    invoke-static {p0}, Lcom/alibaba/android/dingtalk/live/msg/core/utils/MD5;->getMd5([B)[B

    move-result-object v0

    .line 30
    .local v0, "result":[B
    if-eqz v0, :cond_0

    .line 31
    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/msg/core/utils/MD5;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 33
    :goto_0
    return-object v1

    :cond_0
    const-string/jumbo v1, "0000000000000000"

    goto :goto_0
.end method

.method public static toHexString([B)Ljava/lang/String;
    .locals 6
    .param p0, "b"    # [B

    .prologue
    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 17
    .local v1, "sb":Ljava/lang/StringBuilder;
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-byte v0, p0, v2

    .line 18
    .local v0, "aB":B
    sget-object v4, Lcom/alibaba/android/dingtalk/live/msg/core/utils/MD5;->hexChar:[C

    and-int/lit16 v5, v0, 0xf0

    ushr-int/lit8 v5, v5, 0x4

    aget-char v4, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    sget-object v4, Lcom/alibaba/android/dingtalk/live/msg/core/utils/MD5;->hexChar:[C

    and-int/lit8 v5, v0, 0xf

    aget-char v4, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 17
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 21
    .end local v0    # "aB":B
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
