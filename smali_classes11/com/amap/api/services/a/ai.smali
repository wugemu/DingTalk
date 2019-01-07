.class public Lcom/amap/api/services/a/ai;
.super Ljava/lang/Object;
.source "XXTEA.java"


# static fields
.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x4

    sput v0, Lcom/amap/api/services/a/ai;->a:I

    return-void
.end method

.method public static a([B[B)[B
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 49
    array-length v0, p0

    if-nez v0, :cond_0

    .line 61
    :goto_0
    return-object p0

    .line 52
    :cond_0
    array-length v0, p0

    .line 53
    sget v1, Lcom/amap/api/services/a/ai;->a:I

    sget v2, Lcom/amap/api/services/a/ai;->a:I

    rem-int v2, v0, v2

    sub-int/2addr v1, v2

    .line 54
    sget v2, Lcom/amap/api/services/a/ai;->a:I

    div-int v2, v0, v2

    add-int/lit8 v2, v2, 0x1

    .line 55
    sget v3, Lcom/amap/api/services/a/ai;->a:I

    mul-int/2addr v2, v3

    new-array v2, v2, [B

    .line 56
    array-length v3, p0

    invoke-static {p0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 58
    int-to-byte v3, v1

    aput-byte v3, v2, v0

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 61
    :cond_1
    const/4 v0, 0x1

    .line 62
    invoke-static {v2, v0}, Lcom/amap/api/services/a/ai;->a([BZ)[I

    move-result-object v0

    invoke-static {p1, v4}, Lcom/amap/api/services/a/ai;->a([BZ)[I

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amap/api/services/a/ai;->a([I[I)[I

    move-result-object v0

    .line 61
    invoke-static {v0, v4}, Lcom/amap/api/services/a/ai;->a([IZ)[B

    move-result-object p0

    goto :goto_0
.end method

.method private static a([IZ)[B
    .locals 5

    .prologue
    .line 169
    array-length v0, p0

    shl-int/lit8 v1, v0, 0x2

    .line 172
    if-eqz p1, :cond_0

    .line 173
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget v0, p0, v0

    .line 175
    if-le v0, v1, :cond_1

    .line 176
    const/4 v0, 0x0

    .line 186
    :goto_0
    return-object v0

    :cond_0
    move v0, v1

    .line 181
    :cond_1
    new-array v1, v0, [B

    .line 183
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_2

    .line 184
    ushr-int/lit8 v3, v2, 0x2

    aget v3, p0, v3

    and-int/lit8 v4, v2, 0x3

    shl-int/lit8 v4, v4, 0x3

    ushr-int/2addr v3, v4

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 183
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 186
    goto :goto_0
.end method

.method private static a([BZ)[I
    .locals 7

    .prologue
    .line 149
    array-length v0, p0

    ushr-int/lit8 v0, v0, 0x2

    .line 152
    new-array v1, v0, [I

    .line 154
    array-length v2, p0

    .line 155
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 156
    ushr-int/lit8 v3, v0, 0x2

    aget v4, v1, v3

    aget-byte v5, p0, v0

    and-int/lit16 v5, v5, 0xff

    and-int/lit8 v6, v0, 0x3

    shl-int/lit8 v6, v6, 0x3

    shl-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v1, v3

    .line 155
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 158
    :cond_0
    return-object v1
.end method

.method public static a([I[I)[I
    .locals 13

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 74
    array-length v0, p0

    add-int/lit8 v5, v0, -0x1

    .line 76
    if-gtz v5, :cond_1

    .line 100
    :cond_0
    return-object p0

    .line 79
    :cond_1
    array-length v0, p1

    if-ge v0, v2, :cond_2

    .line 80
    new-array v0, v2, [I

    .line 82
    array-length v2, p1

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v0

    .line 85
    :cond_2
    aget v2, p0, v5

    .line 86
    const/16 v0, 0x34

    add-int/lit8 v3, v5, 0x1

    div-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x6

    move v4, v1

    move v12, v0

    move v0, v2

    move v2, v12

    .line 88
    :goto_0
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_0

    .line 89
    const v2, -0x61c88647

    add-int/2addr v4, v2

    .line 90
    ushr-int/lit8 v2, v4, 0x2

    and-int/lit8 v6, v2, 0x3

    move v2, v0

    move v0, v1

    .line 91
    :goto_1
    if-ge v0, v5, :cond_3

    .line 92
    add-int/lit8 v7, v0, 0x1

    aget v7, p0, v7

    .line 93
    aget v8, p0, v0

    ushr-int/lit8 v9, v2, 0x5

    shl-int/lit8 v10, v7, 0x2

    xor-int/2addr v9, v10

    ushr-int/lit8 v10, v7, 0x3

    shl-int/lit8 v11, v2, 0x4

    xor-int/2addr v10, v11

    add-int/2addr v9, v10

    xor-int/2addr v7, v4

    and-int/lit8 v10, v0, 0x3

    xor-int/2addr v10, v6

    aget v10, p1, v10

    xor-int/2addr v2, v10

    add-int/2addr v2, v7

    xor-int/2addr v2, v9

    add-int/2addr v2, v8

    aput v2, p0, v0

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 96
    :cond_3
    aget v7, p0, v1

    .line 97
    aget v8, p0, v5

    ushr-int/lit8 v9, v2, 0x5

    shl-int/lit8 v10, v7, 0x2

    xor-int/2addr v9, v10

    ushr-int/lit8 v10, v7, 0x3

    shl-int/lit8 v11, v2, 0x4

    xor-int/2addr v10, v11

    add-int/2addr v9, v10

    xor-int/2addr v7, v4

    and-int/lit8 v0, v0, 0x3

    xor-int/2addr v0, v6

    aget v0, p1, v0

    xor-int/2addr v0, v2

    add-int/2addr v0, v7

    xor-int/2addr v0, v9

    add-int/2addr v0, v8

    aput v0, p0, v5

    move v2, v3

    goto :goto_0
.end method
