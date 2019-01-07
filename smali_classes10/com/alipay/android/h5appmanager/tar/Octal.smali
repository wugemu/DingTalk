.class public Lcom/alipay/android/h5appmanager/tar/Octal;
.super Ljava/lang/Object;
.source "Octal.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCheckSumOctalBytes(J[BII)I
    .locals 2
    .param p0, "value"    # J
    .param p2, "buf"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .prologue
    .line 61
    invoke-static {p0, p1, p2, p3, p4}, Lcom/alipay/android/h5appmanager/tar/Octal;->getOctalBytes(J[BII)I

    .line 62
    add-int v0, p3, p4

    add-int/lit8 v0, v0, -0x1

    const/16 v1, 0x20

    aput-byte v1, p2, v0

    .line 63
    add-int v0, p3, p4

    add-int/lit8 v0, v0, -0x2

    const/4 v1, 0x0

    aput-byte v1, p2, v0

    .line 64
    add-int v0, p3, p4

    return v0
.end method

.method public static getLongOctalBytes(J[BII)I
    .locals 4
    .param p0, "value"    # J
    .param p2, "buf"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .prologue
    const/4 v2, 0x0

    .line 69
    add-int/lit8 v1, p4, 0x1

    new-array v0, v1, [B

    .line 70
    .local v0, "temp":[B
    add-int/lit8 v1, p4, 0x1

    invoke-static {p0, p1, v0, v2, v1}, Lcom/alipay/android/h5appmanager/tar/Octal;->getOctalBytes(J[BII)I

    .line 71
    invoke-static {v0, v2, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    add-int v1, p3, p4

    return v1
.end method

.method public static getOctalBytes(J[BII)I
    .locals 10
    .param p0, "value"    # J
    .param p2, "buf"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .prologue
    const-wide/16 v8, 0x0

    const/16 v6, 0x20

    .line 35
    add-int/lit8 v0, p4, -0x1

    .line 37
    .local v0, "idx":I
    add-int v1, p3, v0

    const/4 v4, 0x0

    aput-byte v4, p2, v1

    .line 38
    add-int/lit8 v0, v0, -0x1

    .line 39
    add-int v1, p3, v0

    aput-byte v6, p2, v1

    .line 40
    add-int/lit8 v0, v0, -0x1

    .line 42
    cmp-long v1, p0, v8

    if-nez v1, :cond_1

    .line 43
    add-int v1, p3, v0

    const/16 v4, 0x30

    aput-byte v4, p2, v1

    .line 44
    add-int/lit8 v0, v0, -0x1

    .line 52
    :cond_0
    :goto_0
    if-ltz v0, :cond_2

    .line 53
    add-int v1, p3, v0

    aput-byte v6, p2, v1

    .line 52
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 46
    :cond_1
    move-wide v2, p0

    .local v2, "val":J
    :goto_1
    if-ltz v0, :cond_0

    cmp-long v1, v2, v8

    if-lez v1, :cond_0

    .line 47
    add-int v1, p3, v0

    const-wide/16 v4, 0x7

    and-long/2addr v4, v2

    long-to-int v4, v4

    int-to-byte v4, v4

    add-int/lit8 v4, v4, 0x30

    int-to-byte v4, v4

    aput-byte v4, p2, v1

    .line 48
    const/4 v1, 0x3

    shr-long/2addr v2, v1

    .line 46
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 56
    .end local v2    # "val":J
    :cond_2
    add-int v1, p3, p4

    return v1
.end method

.method public static parseOctal([BII)J
    .locals 11
    .param p0, "header"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    const/16 v10, 0x20

    .line 6
    const-wide/16 v2, 0x0

    .line 7
    .local v2, "result":J
    const/4 v4, 0x1

    .line 9
    .local v4, "stillPadding":Z
    add-int v0, p1, p2

    .line 10
    .local v0, "end":I
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 11
    aget-byte v5, p0, v1

    if-eqz v5, :cond_3

    .line 15
    aget-byte v5, p0, v1

    if-eq v5, v10, :cond_0

    aget-byte v5, p0, v1

    const/16 v6, 0x30

    if-ne v5, v6, :cond_1

    .line 16
    :cond_0
    if-nez v4, :cond_2

    .line 20
    aget-byte v5, p0, v1

    if-eq v5, v10, :cond_3

    .line 25
    :cond_1
    const/4 v4, 0x0

    .line 27
    const/4 v5, 0x3

    shl-long v6, v2, v5

    aget-byte v5, p0, v1

    add-int/lit8 v5, v5, -0x30

    int-to-long v8, v5

    add-long v2, v6, v8

    .line 10
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 30
    :cond_3
    return-wide v2
.end method
