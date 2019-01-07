.class public Lcom/ta/utdid2/android/utils/IntUtils;
.super Ljava/lang/Object;
.source "IntUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBytes(I)[B
    .locals 4
    .param p0, "i"    # I

    .prologue
    .line 6
    const/4 v2, 0x4

    new-array v0, v2, [B

    .line 8
    .local v0, "bInt":[B
    const/4 v2, 0x3

    rem-int/lit16 v3, p0, 0x100

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 9
    shr-int/lit8 v1, p0, 0x8

    .line 10
    .local v1, "value":I
    const/4 v2, 0x2

    rem-int/lit16 v3, v1, 0x100

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 11
    shr-int/lit8 v1, v1, 0x8

    .line 12
    const/4 v2, 0x1

    rem-int/lit16 v3, v1, 0x100

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 13
    shr-int/lit8 v1, v1, 0x8

    .line 14
    const/4 v2, 0x0

    rem-int/lit16 v3, v1, 0x100

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 15
    return-object v0
.end method

.method public static getBytes([BI)[B
    .locals 3
    .param p0, "buffer"    # [B
    .param p1, "i"    # I

    .prologue
    .line 19
    array-length v1, p0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 21
    const/4 v1, 0x3

    rem-int/lit16 v2, p1, 0x100

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 22
    shr-int/lit8 v0, p1, 0x8

    .line 23
    .local v0, "value":I
    const/4 v1, 0x2

    rem-int/lit16 v2, v0, 0x100

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 24
    shr-int/lit8 v0, v0, 0x8

    .line 25
    const/4 v1, 0x1

    rem-int/lit16 v2, v0, 0x100

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 26
    shr-int/lit8 v0, v0, 0x8

    .line 27
    const/4 v1, 0x0

    rem-int/lit16 v2, v0, 0x100

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 30
    .end local v0    # "value":I
    .end local p0    # "buffer":[B
    :goto_0
    return-object p0

    .restart local p0    # "buffer":[B
    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method
