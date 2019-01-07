.class public final Ljab;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 110
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

.method public static a(JI)[B
    .locals 8
    .param p0, "value"    # J
    .param p2, "size"    # I

    .prologue
    const/4 v6, 0x2

    .line 13
    new-array v1, v6, [B

    .line 14
    .local v1, "bs":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v6, :cond_0

    .line 15
    rsub-int/lit8 v3, v2, 0x1

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

.method public static a(Ljava/nio/ByteBuffer;)[B
    .locals 5
    .param p0, "bb"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 103
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 104
    .local v0, "length":I
    new-array v1, v0, [B

    .line 105
    .local v1, "result":[B
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 106
    return-object v1
.end method

.method public static a([B)[B
    .locals 5
    .param p0, "deData"    # [B

    .prologue
    const/4 v4, 0x0

    .line 46
    aget-byte v2, p0, v4

    .line 47
    .local v2, "padCount":I
    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    sub-int v0, v3, v2

    .line 48
    .local v0, "origDataLength":I
    new-array v1, v0, [B

    .line 49
    .local v1, "outData":[B
    const/4 v3, 0x1

    invoke-static {p0, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 50
    return-object v1
.end method

.method public static a([BII)[B
    .locals 5
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 33
    add-int/lit8 v3, p2, 0x1

    rem-int/lit8 v3, v3, 0x10

    rsub-int/lit8 v3, v3, 0x10

    rem-int/lit8 v2, v3, 0x10

    .line 34
    .local v2, "padCount":I
    add-int v3, p2, v2

    add-int/lit8 v3, v3, 0x1

    new-array v0, v3, [B

    .line 36
    .local v0, "enData":[B
    const/4 v3, 0x0

    int-to-byte v4, v2

    aput-byte v4, v0, v3

    .line 37
    const/4 v3, 0x1

    invoke-static {p0, p1, v0, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 39
    add-int/lit8 v1, p2, 0x1

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 40
    const/16 v3, 0x7b

    aput-byte v3, v0, v1

    .line 39
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 42
    :cond_0
    return-object v0
.end method

.method public static b([B)I
    .locals 7
    .param p0, "words"    # [B

    .prologue
    const v6, 0xffff

    .line 153
    const/4 v2, 0x0

    .line 154
    .local v2, "sum":I
    array-length v1, p0

    .line 155
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 156
    aget-byte v3, p0, v0

    and-int/lit16 v4, v3, 0xff

    add-int/lit8 v3, v0, 0x1

    if-lt v3, v1, :cond_0

    const/4 v3, 0x0

    :goto_1
    add-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 157
    and-int v3, v2, v6

    shr-int/lit8 v4, v2, 0x10

    add-int v2, v3, v4

    .line 155
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 156
    :cond_0
    add-int/lit8 v3, v0, 0x1

    aget-byte v3, p0, v3

    shl-int/lit8 v3, v3, 0x8

    const v5, 0xff00

    and-int/2addr v3, v5

    goto :goto_1

    .line 160
    :cond_1
    xor-int/lit8 v3, v2, -0x1

    and-int/2addr v3, v6

    return v3
.end method

.method public static b([BII)S
    .locals 3
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 58
    add-int/lit8 v0, p1, 0x2

    array-length v1, p0

    if-le v0, v1, :cond_0

    .line 59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "byte array length error, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    aget-byte v0, p0, p1

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public static c([BII)I
    .locals 3
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 76
    add-int/lit8 v0, p1, 0x2

    array-length v1, p0

    if-le v0, v1, :cond_0

    .line 77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "byte array length error, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_0
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method
