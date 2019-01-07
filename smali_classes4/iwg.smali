.class public final Liwg;
.super Ljava/lang/Object;
.source "Hex.java"


# static fields
.field private static a:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Liwg;->a:[C

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

    .line 12
    return-void
.end method

.method public static a([BI)I
    .locals 2
    .param p0, "b"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 81
    add-int/lit8 v0, p1, 0x3

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public static a(I)[B
    .locals 3
    .param p0, "n"    # I

    .prologue
    .line 72
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 73
    .local v0, "b":[B
    const/4 v1, 0x3

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 74
    const/4 v1, 0x2

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 75
    const/4 v1, 0x1

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 76
    const/4 v1, 0x0

    shr-int/lit8 v2, p0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 77
    return-object v0
.end method

.method public static a([C)[B
    .locals 8
    .param p0, "data"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v7, 0x10

    .line 15
    array-length v4, p0

    .line 16
    .local v4, "l":I
    and-int/lit8 v6, v4, 0x1

    if-eqz v6, :cond_0

    .line 17
    new-instance v6, Ljava/lang/Exception;

    const-string/jumbo v7, "HexDecoder: Odd number of characters."

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6

    .line 19
    :cond_0
    shr-int/lit8 v6, v4, 0x1

    new-array v5, v6, [B

    .line 20
    .local v5, "out":[B
    const/4 v1, 0x0

    .line 22
    .local v1, "i":I
    const/4 v2, 0x0

    .local v2, "j":I
    move v3, v2

    .end local v2    # "j":I
    .local v3, "j":I
    :goto_0
    if-ge v3, v4, :cond_1

    .line 23
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "j":I
    .restart local v2    # "j":I
    aget-char v6, p0, v3

    invoke-static {v6, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v6

    shl-int/lit8 v0, v6, 0x4

    .line 24
    .local v0, "f":I
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "j":I
    .restart local v3    # "j":I
    aget-char v6, p0, v2

    invoke-static {v6, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v6

    or-int/2addr v0, v6

    .line 25
    and-int/lit16 v6, v0, 0xff

    int-to-byte v6, v6

    aput-byte v6, v5, v1

    .line 22
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 28
    .end local v0    # "f":I
    :cond_1
    return-object v5
.end method

.method public static a([B)[C
    .locals 7
    .param p0, "data"    # [B

    .prologue
    .line 33
    array-length v3, p0

    .line 34
    .local v3, "l":I
    shl-int/lit8 v5, v3, 0x1

    new-array v4, v5, [C

    .line 35
    .local v4, "out":[C
    const/4 v0, 0x0

    .line 37
    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "j":I
    move v2, v1

    .end local v1    # "j":I
    .local v2, "j":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 38
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "j":I
    .restart local v1    # "j":I
    sget-object v5, Liwg;->a:[C

    aget-byte v6, p0, v0

    and-int/lit16 v6, v6, 0xf0

    ushr-int/lit8 v6, v6, 0x4

    aget-char v5, v5, v6

    aput-char v5, v4, v2

    .line 39
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "j":I
    .restart local v2    # "j":I
    sget-object v5, Liwg;->a:[C

    aget-byte v6, p0, v0

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    aput-char v5, v4, v1

    .line 37
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 42
    :cond_0
    return-object v4
.end method
