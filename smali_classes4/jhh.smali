.class public final Ljhh;
.super Ljava/lang/Object;
.source "MD5.java"


# static fields
.field private static final a:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Ljhh;->a:[C

    .line 30
    return-void

    .line 29
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
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 33
    const/4 v1, 0x0

    .line 36
    .local v1, "s":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Ljhh;->a([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 40
    :goto_0
    return-object v1

    .line 37
    :catch_0
    move-exception v0

    .line 38
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static a([B)Ljava/lang/String;
    .locals 12
    .param p0, "bytes"    # [B

    .prologue
    .line 44
    const/4 v6, 0x0

    .line 46
    .local v6, "s":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v10, "MD5"

    invoke-static {v10}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    .line 47
    .local v5, "md":Ljava/security/MessageDigest;
    invoke-virtual {v5, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 48
    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v9

    .line 49
    .local v9, "tmp":[B
    const/16 v10, 0x20

    new-array v8, v10, [C

    .line 50
    .local v8, "str":[C
    const/4 v3, 0x0

    .line 51
    .local v3, "k":I
    const/4 v2, 0x0

    .local v2, "i":I
    move v4, v3

    .end local v3    # "k":I
    .local v4, "k":I
    :goto_0
    const/16 v10, 0x10

    if-lt v2, v10, :cond_0

    .line 56
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>([C)V

    .end local v6    # "s":Ljava/lang/String;
    .local v7, "s":Ljava/lang/String;
    move-object v6, v7

    .line 60
    .end local v2    # "i":I
    .end local v4    # "k":I
    .end local v5    # "md":Ljava/security/MessageDigest;
    .end local v7    # "s":Ljava/lang/String;
    .end local v8    # "str":[C
    .end local v9    # "tmp":[B
    .restart local v6    # "s":Ljava/lang/String;
    :goto_1
    return-object v6

    .line 52
    .restart local v2    # "i":I
    .restart local v4    # "k":I
    .restart local v5    # "md":Ljava/security/MessageDigest;
    .restart local v8    # "str":[C
    .restart local v9    # "tmp":[B
    :cond_0
    aget-byte v0, v9, v2

    .line 53
    .local v0, "byte0":B
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "k":I
    .restart local v3    # "k":I
    sget-object v10, Ljhh;->a:[C

    ushr-int/lit8 v11, v0, 0x4

    and-int/lit8 v11, v11, 0xf

    aget-char v10, v10, v11

    aput-char v10, v8, v4

    .line 54
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "k":I
    .restart local v4    # "k":I
    sget-object v10, Ljhh;->a:[C

    and-int/lit8 v11, v0, 0xf

    aget-char v10, v10, v11

    aput-char v10, v8, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 57
    .end local v0    # "byte0":B
    .end local v2    # "i":I
    .end local v4    # "k":I
    .end local v5    # "md":Ljava/security/MessageDigest;
    .end local v8    # "str":[C
    .end local v9    # "tmp":[B
    :catch_0
    move-exception v1

    .line 58
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
