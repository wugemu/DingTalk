.class public Lcom/autonavi/amap/mapcore/Convert;
.super Ljava/lang/Object;
.source "Convert.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final bytesToHexString([B)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 205
    new-instance v2, Ljava/lang/StringBuffer;

    array-length v0, p0

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    move v0, v1

    .line 207
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_1

    .line 208
    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 209
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_0

    .line 210
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 211
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 207
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 213
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static convert1bString([BILcom/autonavi/amap/mapcore/ConvertString;)V
    .locals 4

    .prologue
    .line 177
    :try_start_0
    aget-byte v0, p0, p1

    iput v0, p2, Lcom/autonavi/amap/mapcore/ConvertString;->byteLength:I

    .line 178
    new-instance v0, Ljava/lang/String;

    add-int/lit8 v1, p1, 0x1

    iget v2, p2, Lcom/autonavi/amap/mapcore/ConvertString;->byteLength:I

    const-string/jumbo v3, "UTF-8"

    invoke-direct {v0, p0, v1, v2, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v0, p2, Lcom/autonavi/amap/mapcore/ConvertString;->value:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :goto_0
    return-void

    .line 179
    :catch_0
    move-exception v0

    .line 181
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 182
    const/4 v0, 0x0

    iput v0, p2, Lcom/autonavi/amap/mapcore/ConvertString;->byteLength:I

    .line 183
    const-string/jumbo v0, ""

    iput-object v0, p2, Lcom/autonavi/amap/mapcore/ConvertString;->value:Ljava/lang/String;

    goto :goto_0
.end method

.method public static convert2bString([BILcom/autonavi/amap/mapcore/ConvertString;)V
    .locals 4

    .prologue
    .line 189
    :try_start_0
    invoke-static {p0, p1}, Lcom/autonavi/amap/mapcore/Convert;->getShort([BI)S

    move-result v0

    iput v0, p2, Lcom/autonavi/amap/mapcore/ConvertString;->byteLength:I

    .line 190
    new-instance v0, Ljava/lang/String;

    add-int/lit8 v1, p1, 0x2

    iget v2, p2, Lcom/autonavi/amap/mapcore/ConvertString;->byteLength:I

    const-string/jumbo v3, "UTF-8"

    invoke-direct {v0, p0, v1, v2, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v0, p2, Lcom/autonavi/amap/mapcore/ConvertString;->value:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :goto_0
    return-void

    .line 191
    :catch_0
    move-exception v0

    .line 193
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 194
    const/4 v0, 0x0

    iput v0, p2, Lcom/autonavi/amap/mapcore/ConvertString;->byteLength:I

    .line 195
    const-string/jumbo v0, ""

    iput-object v0, p2, Lcom/autonavi/amap/mapcore/ConvertString;->value:Ljava/lang/String;

    goto :goto_0
.end method

.method public static convertDouble([BI)D
    .locals 6

    .prologue
    .line 151
    const-wide/16 v2, 0x0

    .line 152
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 154
    add-int v1, v0, p1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    int-to-long v4, v1

    mul-int/lit8 v1, v0, 0x8

    shl-long/2addr v4, v1

    add-long/2addr v2, v4

    .line 152
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 156
    :cond_0
    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public static convertInt(I)[B
    .locals 3

    .prologue
    .line 55
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 56
    const/4 v1, 0x0

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 57
    const/4 v1, 0x1

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 58
    const/4 v1, 0x2

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 59
    const/4 v1, 0x3

    shr-int/lit8 v2, p0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 60
    return-object v0
.end method

.method public static convertShort(I)[B
    .locals 3

    .prologue
    .line 79
    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 80
    const/4 v1, 0x0

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 81
    const/4 v1, 0x1

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 82
    return-object v0
.end method

.method public static copyString([BII)[B
    .locals 2

    .prologue
    .line 43
    new-array v0, p2, [B

    .line 44
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 45
    return-object v0
.end method

.method public static covertBytes(B)[B
    .locals 2

    .prologue
    .line 49
    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 50
    const/4 v1, 0x0

    aput-byte p0, v0, v1

    .line 51
    return-object v0
.end method

.method public static encodeHex(I)Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x10

    .line 230
    new-instance v0, Ljava/lang/StringBuffer;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 231
    and-int/lit16 v1, p0, 0xff

    if-ge v1, v4, :cond_0

    .line 232
    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 234
    :cond_0
    and-int/lit16 v1, p0, 0xff

    int-to-long v2, v1

    invoke-static {v2, v3, v4}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 235
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static get1BString(Ljava/lang/String;)[B
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 118
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 120
    const-string/jumbo v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 121
    const/4 v2, 0x1

    new-array v2, v2, [B

    .line 122
    const/4 v3, 0x0

    array-length v4, v1

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 123
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 124
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 125
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 129
    :goto_0
    return-object v0

    .line 126
    :catch_0
    move-exception v0

    .line 128
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 129
    new-array v0, v5, [B

    goto :goto_0
.end method

.method public static get2BString(Ljava/lang/String;)[B
    .locals 3

    .prologue
    .line 136
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 138
    const-string/jumbo v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 139
    array-length v2, v1

    invoke-static {v2}, Lcom/autonavi/amap/mapcore/Convert;->convertShort(I)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 140
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 141
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 145
    :goto_0
    return-object v0

    .line 142
    :catch_0
    move-exception v0

    .line 144
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 145
    const/4 v0, 0x1

    new-array v0, v0, [B

    goto :goto_0
.end method

.method public static getBit(BI)Z
    .locals 2

    .prologue
    .line 32
    rsub-int/lit8 v0, p1, 0x20

    shl-int v0, p0, v0

    .line 33
    rsub-int/lit8 v1, p1, 0x20

    ushr-int/2addr v0, v1

    .line 34
    add-int/lit8 v1, p1, -0x1

    ushr-int/2addr v0, v1

    .line 35
    if-lez v0, :cond_0

    .line 36
    const/4 v0, 0x1

    .line 38
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getDouble(D)[B
    .locals 8

    .prologue
    const/16 v6, 0x8

    .line 161
    new-array v1, v6, [B

    .line 162
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 163
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    .line 166
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v6, :cond_0

    .line 168
    mul-int/lit8 v3, v0, 0x2

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 169
    rsub-int/lit8 v4, v0, 0x7

    const/16 v5, 0x10

    invoke-static {v3, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v4

    .line 166
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 171
    :cond_0
    return-object v1
.end method

.method public static getInt([BI)I
    .locals 4

    .prologue
    .line 8
    add-int/lit8 v0, p1, 0x3

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    .line 9
    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    .line 10
    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    .line 11
    add-int/lit8 v3, p1, 0x0

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    .line 12
    shl-int/lit8 v0, v0, 0x18

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    shl-int/lit8 v1, v2, 0x8

    add-int/2addr v0, v1

    shl-int/lit8 v1, v3, 0x0

    add-int/2addr v0, v1

    .line 13
    return v0
.end method

.method public static getNum(BII)I
    .locals 2

    .prologue
    .line 65
    rsub-int/lit8 v0, p2, 0x20

    add-int/lit8 v0, v0, -0x1

    shl-int v0, p0, v0

    .line 66
    rsub-int/lit8 v1, p2, 0x20

    add-int/lit8 v1, v1, -0x1

    ushr-int/2addr v0, v1

    .line 67
    ushr-int/2addr v0, p1

    .line 68
    return v0
.end method

.method public static getNum(SII)I
    .locals 2

    .prologue
    .line 73
    rsub-int/lit8 v0, p2, 0x20

    shl-int v0, p0, v0

    .line 74
    rsub-int/lit8 v1, p2, 0x20

    ushr-int/2addr v0, v1

    .line 75
    add-int/lit8 v1, p1, -0x1

    ushr-int/2addr v0, v1

    .line 76
    return v0
.end method

.method public static getShort([BI)S
    .locals 2

    .prologue
    .line 17
    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    .line 18
    add-int/lit8 v1, p1, 0x0

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    .line 19
    shl-int/lit8 v0, v0, 0x8

    shl-int/lit8 v1, v1, 0x0

    add-int/2addr v0, v1

    int-to-short v0, v0

    .line 20
    return v0
.end method

.method public static getString([BII)Ljava/lang/String;
    .locals 2

    .prologue
    .line 103
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "UTF-8"

    invoke-direct {v0, p0, p1, p2, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static getSubBytes([BII)[B
    .locals 2

    .prologue
    .line 111
    new-array v0, p2, [B

    .line 112
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 113
    return-object v0
.end method

.method public static getUShort([BI)I
    .locals 2

    .prologue
    .line 23
    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    .line 24
    add-int/lit8 v1, p1, 0x0

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    .line 25
    shl-int/lit8 v0, v0, 0x8

    shl-int/lit8 v1, v1, 0x0

    add-int/2addr v0, v1

    .line 26
    return v0
.end method

.method public static moveArray([BI[BII)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 96
    new-array v0, p4, [B

    .line 97
    invoke-static {p0, p1, v0, v1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    invoke-static {v0, v1, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 99
    return-void
.end method

.method public static readOneByteToInt([BI)I
    .locals 1

    .prologue
    .line 223
    aget-byte v0, p0, p1

    .line 226
    return v0
.end method

.method public static writeInt([BII)V
    .locals 3

    .prologue
    .line 86
    invoke-static {p2}, Lcom/autonavi/amap/mapcore/Convert;->convertInt(I)[B

    move-result-object v0

    .line 87
    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v0, v1, p0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 88
    return-void
.end method

.method public static writeShort([BIS)V
    .locals 3

    .prologue
    .line 91
    invoke-static {p2}, Lcom/autonavi/amap/mapcore/Convert;->convertShort(I)[B

    move-result-object v0

    .line 92
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, v1, p0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 93
    return-void
.end method
