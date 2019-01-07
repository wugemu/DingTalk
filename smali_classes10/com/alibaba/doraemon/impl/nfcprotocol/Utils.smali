.class public Lcom/alibaba/doraemon/impl/nfcprotocol/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static final BLOCK_SIZE:I = 0x10

.field public static final PADDING:B = 0x7bt

.field public static final SIZEOF_SHORT:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static asBytes(II)[B
    .locals 4
    .param p0, "value"    # I
    .param p1, "size"    # I

    .prologue
    .line 22
    new-array v1, p1, [B

    .line 23
    .local v1, "bs":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_0

    .line 24
    add-int/lit8 v3, p1, -0x1

    sub-int/2addr v3, v2

    mul-int/lit8 v0, v3, 0x8

    .line 25
    .local v0, "bit":I
    shr-int v3, p0, v0

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 23
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 27
    .end local v0    # "bit":I
    :cond_0
    return-object v1
.end method

.method static asBytes(JI)[B
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

.method public static byteToInt([BI)I
    .locals 3
    .param p0, "ipBytes"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 133
    aget-byte v1, p0, p1

    and-int/lit16 v0, v1, 0xff

    .line 134
    .local v0, "n":I
    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 135
    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x10

    const/high16 v2, 0xff0000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 136
    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x18

    const/high16 v2, -0x1000000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 137
    return v0
.end method

.method public static checksum([B)I
    .locals 7
    .param p0, "words"    # [B

    .prologue
    const v6, 0xffff

    .line 162
    const/4 v2, 0x0

    .line 163
    .local v2, "sum":I
    array-length v1, p0

    .line 164
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 165
    aget-byte v3, p0, v0

    and-int/lit16 v4, v3, 0xff

    add-int/lit8 v3, v0, 0x1

    if-lt v3, v1, :cond_0

    const/4 v3, 0x0

    :goto_1
    add-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 166
    and-int v3, v2, v6

    shr-int/lit8 v4, v2, 0x10

    add-int v2, v3, v4

    .line 164
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 165
    :cond_0
    add-int/lit8 v3, v0, 0x1

    aget-byte v3, p0, v3

    shl-int/lit8 v3, v3, 0x8

    const v5, 0xff00

    and-int/2addr v3, v5

    goto :goto_1

    .line 169
    :cond_1
    xor-int/lit8 v3, v2, -0x1

    and-int/2addr v3, v6

    return v3
.end method

.method public static intToBytes(I)[B
    .locals 3
    .param p0, "ipInt"    # I

    .prologue
    .line 153
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 154
    .local v0, "ipBytes":[B
    const/4 v1, 0x0

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 155
    const/4 v1, 0x1

    const v2, 0xff00

    and-int/2addr v2, p0

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 156
    const/4 v1, 0x2

    const/high16 v2, 0xff0000

    and-int/2addr v2, p0

    shr-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 157
    const/4 v1, 0x3

    const/high16 v2, -0x1000000

    and-int/2addr v2, p0

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 158
    return-object v0
.end method

.method public static intToIp(I)Ljava/lang/String;
    .locals 4
    .param p0, "ipInt"    # I

    .prologue
    .line 141
    invoke-static {p0}, Lcom/alibaba/doraemon/impl/nfcprotocol/Utils;->intToBytes(I)[B

    move-result-object v2

    .line 142
    .local v2, "ipBytes":[B
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v3, 0x4

    if-ge v1, v3, :cond_1

    .line 144
    aget-byte v3, v2, v1

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 145
    const/4 v3, 0x3

    if-ge v1, v3, :cond_0

    .line 146
    const-string/jumbo v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 149
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static ipToInt(Ljava/lang/String;)I
    .locals 5
    .param p0, "ipString"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x4

    .line 123
    const-string/jumbo v3, "\\."

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, "ipArray":[Ljava/lang/String;
    array-length v3, v1

    if-eq v3, v4, :cond_0

    const/4 v3, -0x1

    .line 129
    :goto_0
    return v3

    .line 125
    :cond_0
    new-array v2, v4, [B

    .line 126
    .local v2, "ipBytes":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v4, :cond_1

    .line 127
    aget-object v3, v1, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 126
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 129
    :cond_1
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/alibaba/doraemon/impl/nfcprotocol/Utils;->byteToInt([BI)I

    move-result v3

    goto :goto_0
.end method

.method public static isNullOrEmpty(Ljava/lang/String;)Z
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

.method public static varargs mergeArray([[B)[B
    .locals 7
    .param p0, "a"    # [[B

    .prologue
    .line 178
    const/4 v1, 0x0

    .line 179
    .local v1, "index":I
    const/4 v4, 0x0

    .line 180
    .local v4, "sum":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, p0

    if-ge v0, v5, :cond_0

    .line 181
    aget-object v5, p0, v0

    array-length v5, v5

    add-int/2addr v4, v5

    .line 180
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 183
    :cond_0
    new-array v3, v4, [B

    .line 184
    .local v3, "result":[B
    const/4 v0, 0x0

    :goto_1
    array-length v5, p0

    if-ge v0, v5, :cond_2

    .line 185
    aget-object v5, p0, v0

    array-length v2, v5

    .line 186
    .local v2, "lengthOne":I
    if-eqz v2, :cond_1

    .line 189
    aget-object v5, p0, v0

    const/4 v6, 0x0

    invoke-static {v5, v6, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 190
    add-int/2addr v1, v2

    .line 184
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 192
    .end local v2    # "lengthOne":I
    :cond_2
    return-object v3
.end method

.method public static padding([BII)[B
    .locals 5
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 42
    add-int/lit8 v3, p2, 0x1

    rem-int/lit8 v3, v3, 0x10

    rsub-int/lit8 v3, v3, 0x10

    rem-int/lit8 v2, v3, 0x10

    .line 43
    .local v2, "padCount":I
    add-int v3, p2, v2

    add-int/lit8 v3, v3, 0x1

    new-array v0, v3, [B

    .line 45
    .local v0, "enData":[B
    const/4 v3, 0x0

    int-to-byte v4, v2

    aput-byte v4, v0, v3

    .line 46
    const/4 v3, 0x1

    invoke-static {p0, p1, v0, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 48
    add-int/lit8 v1, p2, 0x1

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 49
    const/16 v3, 0x7b

    aput-byte v3, v0, v1

    .line 48
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 51
    :cond_0
    return-object v0
.end method

.method public static putShort([BIS)I
    .locals 3
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "val"    # S

    .prologue
    .line 74
    array-length v0, p0

    sub-int/2addr v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Not enough room to put a short at offset "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " in a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " byte array"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_0
    add-int/lit8 v0, p1, 0x1

    int-to-byte v1, p2

    aput-byte v1, p0, v0

    .line 79
    shr-int/lit8 v0, p2, 0x8

    int-to-short p2, v0

    .line 80
    int-to-byte v0, p2

    aput-byte v0, p0, p1

    .line 81
    add-int/lit8 v0, p1, 0x2

    return v0
.end method

.method public static randomInt()I
    .locals 3

    .prologue
    .line 173
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 174
    .local v0, "random":Ljava/util/Random;
    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v1

    const v2, 0xffff

    and-int/2addr v1, v2

    return v1
.end method

.method public static readUnsignedInt([BII)I
    .locals 5
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 92
    const/4 v2, 0x4

    if-ne p2, v2, :cond_0

    add-int v2, p1, p2

    array-length v3, p0

    if-le v2, v3, :cond_1

    .line 93
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "byte array length error, "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 95
    :cond_1
    const/4 v1, 0x0

    .line 96
    .local v1, "n":I
    move v0, p1

    .local v0, "i":I
    :goto_0
    add-int v2, p1, p2

    if-ge v0, v2, :cond_2

    .line 97
    shl-int/lit8 v1, v1, 0x8

    .line 98
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    xor-int/2addr v1, v2

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 100
    :cond_2
    return v1
.end method

.method public static readUnsignedShort([BII)I
    .locals 3
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 85
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    add-int v0, p1, p2

    array-length v1, p0

    if-le v0, v1, :cond_1

    .line 86
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "byte array length error, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    .line 88
    :cond_1
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public static toBytes(Ljava/nio/ByteBuffer;)[B
    .locals 5
    .param p0, "bb"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 112
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 113
    .local v0, "length":I
    new-array v1, v0, [B

    .line 114
    .local v1, "result":[B
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 115
    return-object v1
.end method

.method public static toBytes(S)[B
    .locals 3
    .param p0, "val"    # S

    .prologue
    .line 104
    const/4 v1, 0x2

    new-array v0, v1, [B

    .line 105
    .local v0, "b":[B
    const/4 v1, 0x1

    int-to-byte v2, p0

    aput-byte v2, v0, v1

    .line 106
    shr-int/lit8 v1, p0, 0x8

    int-to-short p0, v1

    .line 107
    const/4 v1, 0x0

    int-to-byte v2, p0

    aput-byte v2, v0, v1

    .line 108
    return-object v0
.end method

.method public static toShort([B)S
    .locals 2
    .param p0, "bytes"    # [B

    .prologue
    .line 63
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Lcom/alibaba/doraemon/impl/nfcprotocol/Utils;->toShort([BII)S

    move-result v0

    return v0
.end method

.method public static toShort([BII)S
    .locals 3
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 67
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    add-int v0, p1, p2

    array-length v1, p0

    if-le v0, v1, :cond_1

    .line 68
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "byte array length error, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    .line 70
    :cond_1
    aget-byte v0, p0, p1

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public static unpadding([B)[B
    .locals 5
    .param p0, "deData"    # [B

    .prologue
    const/4 v4, 0x0

    .line 55
    aget-byte v2, p0, v4

    .line 56
    .local v2, "padCount":I
    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    sub-int v0, v3, v2

    .line 57
    .local v0, "origDataLength":I
    new-array v1, v0, [B

    .line 58
    .local v1, "outData":[B
    const/4 v3, 0x1

    invoke-static {p0, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59
    return-object v1
.end method

.method static unsignedNumber([B)J
    .locals 10
    .param p0, "value"    # [B

    .prologue
    .line 31
    const-wide/16 v4, 0x0

    .line 32
    .local v4, "r":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 33
    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v2

    mul-int/lit8 v1, v3, 0x8

    .line 34
    .local v1, "bit":I
    aget-byte v0, p0, v2

    .line 35
    .local v0, "b":B
    shl-int v3, v0, v1

    int-to-long v6, v3

    const-wide/16 v8, 0xff

    shl-long/2addr v8, v1

    and-long/2addr v6, v8

    or-long/2addr v4, v6

    .line 32
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 37
    .end local v0    # "b":B
    .end local v1    # "bit":I
    :cond_0
    return-wide v4
.end method
