.class public Lcom/laiwang/protocol/android/ao;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public static a(Ljava/lang/String;)Z
    .locals 1
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 119
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(JI)[B
    .locals 6
    .param p0, "value"    # J
    .param p2, "size"    # I

    .prologue
    .line 13
    new-array v1, p2, [B

    .line 14
    .local v1, "bs":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_0

    .line 15
    add-int/lit8 v3, p2, -0x1

    sub-int/2addr v3, v2

    mul-int/lit8 v0, v3, 0x8

    .line 16
    .local v0, "bit":I
    shr-long v4, p0, v0

    long-to-int v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 14
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 18
    .end local v0    # "bit":I
    :cond_0
    return-object v1
.end method
