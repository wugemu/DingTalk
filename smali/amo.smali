.class public final Lamo;
.super Ljava/lang/Object;
.source "ByteUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
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

    .line 10
    if-eqz p0, :cond_0

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    array-length v3, p0

    add-int v4, p1, p2

    if-ge v3, v4, :cond_1

    .line 1025
    :cond_0
    :goto_0
    return v2

    .line 14
    :cond_1
    new-array v1, p2, [B

    .line 15
    .local v1, "tempbuf":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p2, :cond_2

    .line 16
    aget-byte v3, p0, p1

    aput-byte v3, v1, v0

    .line 17
    add-int/lit8 p1, p1, 0x1

    .line 15
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1024
    :cond_2
    if-eqz v1, :cond_0

    array-length v3, v1

    const/4 v4, 0x4

    if-gt v3, v4, :cond_0

    move v3, v2

    .line 1029
    :goto_2
    array-length v4, v1

    if-ge v2, v4, :cond_3

    .line 1030
    aget-byte v4, v1, v2

    and-int/lit16 v4, v4, 0xff

    array-length v5, v1

    sub-int/2addr v5, v2

    add-int/lit8 v5, v5, -0x1

    mul-int/lit8 v5, v5, 0x8

    shl-int/2addr v4, v5

    or-int/2addr v3, v4

    .line 1029
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    move v2, v3

    .line 19
    goto :goto_0
.end method

.method public static a(I)[B
    .locals 3
    .param p0, "i"    # I

    .prologue
    .line 79
    const/4 v1, 0x2

    new-array v0, v1, [B

    .line 80
    .local v0, "result":[B
    const/4 v1, 0x0

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 81
    const/4 v1, 0x1

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 82
    return-object v0
.end method

.method public static b(I)[B
    .locals 3
    .param p0, "i"    # I

    .prologue
    .line 94
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 95
    .local v0, "result":[B
    const/4 v1, 0x0

    shr-int/lit8 v2, p0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 96
    const/4 v1, 0x1

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 97
    const/4 v1, 0x2

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 98
    const/4 v1, 0x3

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 99
    return-object v0
.end method

.method public static b([BII)[B
    .locals 4
    .param p0, "buf"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I

    .prologue
    .line 103
    if-eqz p0, :cond_0

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    array-length v2, p0

    add-int v3, p1, p2

    if-ge v2, v3, :cond_2

    .line 104
    :cond_0
    const/4 v0, 0x0

    .line 111
    :cond_1
    return-object v0

    .line 107
    :cond_2
    new-array v0, p2, [B

    .line 108
    .local v0, "bs":[B
    move v1, p1

    .local v1, "i":I
    :goto_0
    add-int v2, p1, p2

    if-ge v1, v2, :cond_1

    .line 109
    sub-int v2, v1, p1

    aget-byte v3, p0, v1

    aput-byte v3, v0, v2

    .line 108
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
