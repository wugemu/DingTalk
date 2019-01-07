.class public final Lhuv;
.super Ljava/lang/Object;
.source "ByteUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([BII)I
    .locals 6
    .param p0, "buf"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I

    .prologue
    const/4 v2, 0x0

    .line 14
    if-eqz p0, :cond_0

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    array-length v3, p0

    add-int v4, p1, p2

    if-ge v3, v4, :cond_1

    .line 1029
    :cond_0
    :goto_0
    return v2

    .line 18
    :cond_1
    new-array v1, p2, [B

    .line 19
    .local v1, "tempbuf":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p2, :cond_2

    .line 20
    aget-byte v3, p0, p1

    aput-byte v3, v1, v0

    .line 21
    add-int/lit8 p1, p1, 0x1

    .line 19
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1028
    :cond_2
    if-eqz v1, :cond_0

    array-length v3, v1

    const/4 v4, 0x4

    if-gt v3, v4, :cond_0

    move v3, v2

    .line 1033
    :goto_2
    array-length v4, v1

    if-ge v2, v4, :cond_3

    .line 1034
    aget-byte v4, v1, v2

    and-int/lit16 v4, v4, 0xff

    array-length v5, v1

    sub-int/2addr v5, v2

    add-int/lit8 v5, v5, -0x1

    mul-int/lit8 v5, v5, 0x8

    shl-int/2addr v4, v5

    or-int/2addr v3, v4

    .line 1033
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    move v2, v3

    .line 23
    goto :goto_0
.end method

.method public static a(I)[B
    .locals 3
    .param p0, "i"    # I

    .prologue
    .line 83
    const/4 v1, 0x2

    new-array v0, v1, [B

    .line 84
    .local v0, "result":[B
    const/4 v1, 0x0

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 85
    const/4 v1, 0x1

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 86
    return-object v0
.end method

.method public static b(I)[B
    .locals 3
    .param p0, "i"    # I

    .prologue
    .line 98
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 99
    .local v0, "result":[B
    const/4 v1, 0x0

    shr-int/lit8 v2, p0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 100
    const/4 v1, 0x1

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 101
    const/4 v1, 0x2

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 102
    const/4 v1, 0x3

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 103
    return-object v0
.end method
