.class public Lcom/android/internal/telephony/IccUtils;
.super Ljava/lang/Object;
.source "IccUtils.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "IccUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adnStringFieldToString([BII)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 163
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToStringUcs2Helper([BII)Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "s":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 165
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToStringGsm8BitHelper([BII)Ljava/lang/String;

    move-result-object v0

    .line 167
    :cond_0
    return-object v0
.end method

.method private static adnStringFieldToStringGsm8BitHelper([BII)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 267
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 268
    const-string/jumbo v0, ""

    .line 270
    .local v0, "defaultCharset":Ljava/lang/String;
    const-string/jumbo v0, "UTF-8"

    .line 274
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, p2, v1}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static adnStringFieldToStringKsc5601Support([BII)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 178
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToStringUcs2Helper([BII)Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, "s":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 182
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToStringGsm8BitHelper([BII)Ljava/lang/String;

    move-result-object v0

    .line 184
    .end local v0    # "s":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private static adnStringFieldToStringUcs2Helper([BII)Ljava/lang/String;
    .locals 11
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 188
    if-nez p2, :cond_0

    .line 189
    const-string/jumbo v8, ""

    .line 263
    :goto_0
    return-object v8

    .line 191
    :cond_0
    if-lez p2, :cond_2

    .line 192
    aget-byte v8, p0, p1

    const/16 v9, -0x80

    if-ne v8, v9, :cond_2

    .line 193
    add-int/lit8 v8, p2, -0x1

    div-int/lit8 v7, v8, 0x2

    .line 194
    .local v7, "ucslen":I
    const/4 v5, 0x0

    .line 197
    .local v5, "ret":Ljava/lang/String;
    :try_start_0
    new-instance v6, Ljava/lang/String;

    add-int/lit8 v8, p1, 0x1

    mul-int/lit8 v9, v7, 0x2

    const-string/jumbo v10, "utf-16be"

    invoke-direct {v6, p0, v8, v9, v10}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v5    # "ret":Ljava/lang/String;
    .local v6, "ret":Ljava/lang/String;
    move-object v5, v6

    .line 202
    .end local v6    # "ret":Ljava/lang/String;
    .restart local v5    # "ret":Ljava/lang/String;
    :goto_1
    if-eqz v5, :cond_2

    .line 205
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    .line 206
    :goto_2
    if-lez v7, :cond_1

    add-int/lit8 v8, v7, -0x1

    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const v9, 0xffff

    if-ne v8, v9, :cond_1

    .line 207
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 198
    :catch_0
    move-exception v2

    .line 199
    .local v2, "ex":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v8, "IccUtils"

    const-string/jumbo v9, "implausible UnsupportedEncodingException"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 209
    .end local v2    # "ex":Ljava/io/UnsupportedEncodingException;
    :cond_1
    const/4 v8, 0x0

    invoke-virtual {v5, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 214
    .end local v5    # "ret":Ljava/lang/String;
    .end local v7    # "ucslen":I
    :cond_2
    const/4 v3, 0x0

    .line 215
    .local v3, "isucs2":Z
    const/4 v0, 0x0

    .line 216
    .local v0, "base":C
    const/4 v4, 0x0

    .line 218
    .local v4, "len":I
    const/4 v8, 0x3

    if-lt p2, v8, :cond_6

    aget-byte v8, p0, p1

    const/16 v9, -0x7f

    if-ne v8, v9, :cond_6

    .line 219
    add-int/lit8 v8, p1, 0x1

    aget-byte v8, p0, v8

    and-int/lit16 v4, v8, 0xff

    .line 220
    add-int/lit8 v8, p2, -0x3

    if-le v4, v8, :cond_3

    .line 221
    add-int/lit8 v4, p2, -0x3

    .line 223
    :cond_3
    add-int/lit8 v8, p1, 0x2

    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x7

    int-to-char v0, v8

    .line 224
    add-int/lit8 p1, p1, 0x3

    .line 225
    const/4 v3, 0x1

    .line 236
    :cond_4
    :goto_3
    if-eqz v3, :cond_a

    .line 238
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v5

    .line 240
    .local v5, "ret":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :goto_4
    if-lez v4, :cond_9

    .line 243
    aget-byte v8, p0, p1

    if-gez v8, :cond_5

    .line 244
    aget-byte v8, p0, p1

    and-int/lit8 v8, v8, 0x7f

    add-int/2addr v8, v0

    int-to-char v8, v8

    invoke-virtual {v5, v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(C)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 245
    add-int/lit8 p1, p1, 0x1

    .line 246
    add-int/lit8 v4, v4, -0x1

    .line 251
    :cond_5
    const/4 v1, 0x0

    .line 252
    .local v1, "count":I
    :goto_5
    if-ge v1, v4, :cond_8

    add-int v8, p1, v1

    aget-byte v8, p0, v8

    if-ltz v8, :cond_8

    .line 253
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 226
    .end local v1    # "count":I
    .end local v5    # "ret":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :cond_6
    const/4 v8, 0x4

    if-lt p2, v8, :cond_4

    aget-byte v8, p0, p1

    const/16 v9, -0x7e

    if-ne v8, v9, :cond_4

    .line 227
    add-int/lit8 v8, p1, 0x1

    aget-byte v8, p0, v8

    and-int/lit16 v4, v8, 0xff

    .line 228
    add-int/lit8 v8, p2, -0x4

    if-le v4, v8, :cond_7

    .line 229
    add-int/lit8 v4, p2, -0x4

    .line 231
    :cond_7
    add-int/lit8 v8, p1, 0x2

    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    add-int/lit8 v9, p1, 0x3

    aget-byte v9, p0, v9

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v8, v9

    int-to-char v0, v8

    .line 232
    add-int/lit8 p1, p1, 0x4

    .line 233
    const/4 v3, 0x1

    goto :goto_3

    .line 255
    .restart local v1    # "count":I
    .restart local v5    # "ret":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :cond_8
    invoke-static {p0, p1, v1}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 257
    add-int/2addr p1, v1

    .line 258
    sub-int/2addr v4, v1

    .line 259
    goto :goto_4

    .line 261
    .end local v1    # "count":I
    :cond_9
    invoke-virtual {v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 263
    .end local v5    # "ret":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :cond_a
    const/4 v8, 0x0

    goto/16 :goto_0
.end method

.method public static bcdToString([BII)Ljava/lang/String;
    .locals 5
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    const/16 v4, 0x9

    .line 43
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    .line 45
    .local v1, "ret":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    move v0, p1

    .local v0, "i":I
    :goto_0
    add-int v3, p1, p2

    if-ge v0, v3, :cond_1

    .line 49
    aget-byte v3, p0, v0

    and-int/lit8 v2, v3, 0xf

    .line 50
    .local v2, "v":I
    if-gt v2, v4, :cond_1

    .line 52
    add-int/lit8 v3, v2, 0x30

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(C)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 54
    aget-byte v3, p0, v0

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v2, v3, 0xf

    .line 56
    const/16 v3, 0xf

    if-eq v2, v3, :cond_0

    .line 58
    if-gt v2, v4, :cond_1

    .line 60
    add-int/lit8 v3, v2, 0x30

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(C)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 45
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 63
    .end local v2    # "v":I
    :cond_1
    invoke-virtual {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static bitToRGB(I)I
    .locals 1
    .param p0, "bit"    # I

    .prologue
    .line 424
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 425
    const/4 v0, -0x1

    .line 427
    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x1000000

    goto :goto_0
.end method

.method public static bytesToHexString([B)Ljava/lang/String;
    .locals 4
    .param p0, "bytes"    # [B

    .prologue
    .line 320
    if-nez p0, :cond_0

    .line 321
    const/4 v3, 0x0

    .line 338
    :goto_0
    return-object v3

    .line 324
    :cond_0
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    .line 326
    .local v2, "ret":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, p0

    if-ge v1, v3, :cond_1

    .line 329
    aget-byte v3, p0, v1

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v0, v3, 0xf

    .line 331
    .local v0, "b":I
    const-string/jumbo v3, "0123456789abcdef"

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(C)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 333
    aget-byte v3, p0, v1

    and-int/lit8 v0, v3, 0xf

    .line 335
    const-string/jumbo v3, "0123456789abcdef"

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(C)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 326
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 338
    .end local v0    # "b":I
    :cond_1
    invoke-virtual {v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static cdmaBcdByteToInt(B)I
    .locals 3
    .param p0, "b"    # B

    .prologue
    .line 123
    const/4 v0, 0x0

    .line 126
    .local v0, "ret":I
    and-int/lit16 v1, p0, 0xf0

    const/16 v2, 0x90

    if-gt v1, v2, :cond_0

    .line 127
    shr-int/lit8 v1, p0, 0x4

    and-int/lit8 v1, v1, 0xf

    mul-int/lit8 v0, v1, 0xa

    .line 130
    :cond_0
    and-int/lit8 v1, p0, 0xf

    const/16 v2, 0x9

    if-gt v1, v2, :cond_1

    .line 131
    and-int/lit8 v1, p0, 0xf

    add-int/2addr v0, v1

    .line 134
    :cond_1
    return v0
.end method

.method public static cdmaBcdToString([BII)Ljava/lang/String;
    .locals 6
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    const/16 v5, 0x9

    .line 71
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    .line 73
    .local v2, "ret":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const/4 v0, 0x0

    .line 74
    .local v0, "count":I
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-ge v0, p2, :cond_2

    .line 76
    aget-byte v4, p0, v1

    and-int/lit8 v3, v4, 0xf

    .line 77
    .local v3, "v":I
    if-le v3, v5, :cond_0

    .line 78
    const/4 v3, 0x0

    .line 79
    :cond_0
    add-int/lit8 v4, v3, 0x30

    int-to-char v4, v4

    invoke-virtual {v2, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(C)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 81
    add-int/lit8 v0, v0, 0x1

    if-eq v0, p2, :cond_2

    .line 84
    aget-byte v4, p0, v1

    shr-int/lit8 v4, v4, 0x4

    and-int/lit8 v3, v4, 0xf

    .line 85
    if-le v3, v5, :cond_1

    .line 86
    const/4 v3, 0x0

    .line 87
    :cond_1
    add-int/lit8 v4, v3, 0x30

    int-to-char v4, v4

    invoke-virtual {v2, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(C)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 88
    add-int/lit8 v0, v0, 0x1

    .line 74
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 90
    .end local v3    # "v":I
    :cond_2
    invoke-virtual {v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static getCLUT([BII)[I
    .locals 8
    .param p0, "rawData"    # [B
    .param p1, "offset"    # I
    .param p2, "number"    # I

    .prologue
    .line 509
    if-nez p0, :cond_1

    .line 510
    const/4 v3, 0x0

    .line 522
    :cond_0
    return-object v3

    .line 513
    :cond_1
    new-array v3, p2, [I

    .line 514
    .local v3, "result":[I
    mul-int/lit8 v6, p2, 0x3

    add-int v2, p1, v6

    .line 515
    .local v2, "endIndex":I
    move v4, p1

    .line 516
    .local v4, "valueIndex":I
    const/4 v0, 0x0

    .line 519
    .local v0, "colorIndex":I
    :goto_0
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "colorIndex":I
    .local v1, "colorIndex":I
    const/high16 v6, -0x1000000

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "valueIndex":I
    .local v5, "valueIndex":I
    aget-byte v7, p0, v4

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "valueIndex":I
    .restart local v4    # "valueIndex":I
    aget-byte v7, p0, v5

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "valueIndex":I
    .restart local v5    # "valueIndex":I
    aget-byte v7, p0, v4

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v6, v7

    aput v6, v3, v0

    .line 521
    if-ge v5, v2, :cond_0

    move v0, v1

    .end local v1    # "colorIndex":I
    .restart local v0    # "colorIndex":I
    move v4, v5

    .end local v5    # "valueIndex":I
    .restart local v4    # "valueIndex":I
    goto :goto_0
.end method

.method public static gsmBcdByteToInt(B)I
    .locals 3
    .param p0, "b"    # B

    .prologue
    .line 102
    const/4 v0, 0x0

    .line 105
    .local v0, "ret":I
    and-int/lit16 v1, p0, 0xf0

    const/16 v2, 0x90

    if-gt v1, v2, :cond_0

    .line 106
    shr-int/lit8 v1, p0, 0x4

    and-int/lit8 v0, v1, 0xf

    .line 109
    :cond_0
    and-int/lit8 v1, p0, 0xf

    const/16 v2, 0x9

    if-gt v1, v2, :cond_1

    .line 110
    and-int/lit8 v1, p0, 0xf

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    .line 113
    :cond_1
    return v0
.end method

.method static hexCharToInt(C)I
    .locals 3
    .param p0, "c"    # C

    .prologue
    .line 278
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 279
    add-int/lit8 v0, p0, -0x30

    .line 283
    :goto_0
    return v0

    .line 280
    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x46

    if-gt p0, v0, :cond_1

    .line 281
    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 282
    :cond_1
    const/16 v0, 0x61

    if-lt p0, v0, :cond_2

    const/16 v0, 0x66

    if-gt p0, v0, :cond_2

    .line 283
    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 285
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "invalid hex char \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static hexStringToBytes(Ljava/lang/String;)[B
    .locals 6
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 299
    if-nez p0, :cond_1

    .line 300
    const/4 v1, 0x0

    .line 310
    :cond_0
    return-object v1

    .line 302
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 304
    .local v2, "sz":I
    div-int/lit8 v3, v2, 0x2

    new-array v1, v3, [B

    .line 306
    .local v1, "ret":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 307
    div-int/lit8 v3, v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->hexCharToInt(C)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/android/internal/telephony/IccUtils;->hexCharToInt(C)I

    move-result v5

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 306
    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method private static mapTo2OrderBitColor([BII[II)[I
    .locals 11
    .param p0, "data"    # [B
    .param p1, "valueIndex"    # I
    .param p2, "length"    # I
    .param p3, "colorArray"    # [I
    .param p4, "bits"    # I

    .prologue
    const/16 v10, 0x8

    .line 463
    rem-int v9, v10, p4

    if-eqz v9, :cond_0

    .line 464
    const-string/jumbo v9, "IccUtils"

    const-string/jumbo v10, "not event number of color"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/IccUtils;->mapToNon2OrderBitColor([BII[II)[I

    move-result-object v2

    .line 494
    :goto_0
    return-object v2

    .line 468
    :cond_0
    const/4 v0, 0x1

    .line 469
    .local v0, "mask":I
    packed-switch p4, :pswitch_data_0

    .line 484
    :goto_1
    :pswitch_0
    new-array v2, p2, [I

    .line 485
    .local v2, "resultArray":[I
    const/4 v3, 0x0

    .line 486
    .local v3, "resultIndex":I
    div-int v5, v10, p4

    .local v5, "run":I
    move v8, p1

    .line 487
    .end local p1    # "valueIndex":I
    .local v8, "valueIndex":I
    :goto_2
    if-ge v3, p2, :cond_2

    .line 488
    add-int/lit8 p1, v8, 0x1

    .end local v8    # "valueIndex":I
    .restart local p1    # "valueIndex":I
    aget-byte v7, p0, v8

    .line 489
    .local v7, "tempByte":B
    const/4 v6, 0x0

    .local v6, "runIndex":I
    move v4, v3

    .end local v3    # "resultIndex":I
    .local v4, "resultIndex":I
    :goto_3
    if-ge v6, v5, :cond_1

    .line 490
    sub-int v9, v5, v6

    add-int/lit8 v1, v9, -0x1

    .line 491
    .local v1, "offset":I
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "resultIndex":I
    .restart local v3    # "resultIndex":I
    mul-int v9, v1, p4

    shr-int v9, v7, v9

    and-int/2addr v9, v0

    aget v9, p3, v9

    aput v9, v2, v4

    .line 489
    add-int/lit8 v6, v6, 0x1

    move v4, v3

    .end local v3    # "resultIndex":I
    .restart local v4    # "resultIndex":I
    goto :goto_3

    .line 471
    .end local v1    # "offset":I
    .end local v2    # "resultArray":[I
    .end local v4    # "resultIndex":I
    .end local v5    # "run":I
    .end local v6    # "runIndex":I
    .end local v7    # "tempByte":B
    :pswitch_1
    const/4 v0, 0x1

    .line 472
    goto :goto_1

    .line 474
    :pswitch_2
    const/4 v0, 0x3

    .line 475
    goto :goto_1

    .line 477
    :pswitch_3
    const/16 v0, 0xf

    .line 478
    goto :goto_1

    .line 480
    :pswitch_4
    const/16 v0, 0xff

    goto :goto_1

    .restart local v2    # "resultArray":[I
    .restart local v4    # "resultIndex":I
    .restart local v5    # "run":I
    .restart local v6    # "runIndex":I
    .restart local v7    # "tempByte":B
    :cond_1
    move v3, v4

    .end local v4    # "resultIndex":I
    .restart local v3    # "resultIndex":I
    move v8, p1

    .line 493
    .end local p1    # "valueIndex":I
    .restart local v8    # "valueIndex":I
    goto :goto_2

    .end local v6    # "runIndex":I
    .end local v7    # "tempByte":B
    :cond_2
    move p1, v8

    .line 494
    .end local v8    # "valueIndex":I
    .restart local p1    # "valueIndex":I
    goto :goto_0

    .line 469
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private static mapToNon2OrderBitColor([BII[II)[I
    .locals 3
    .param p0, "data"    # [B
    .param p1, "valueIndex"    # I
    .param p2, "length"    # I
    .param p3, "colorArray"    # [I
    .param p4, "bits"    # I

    .prologue
    .line 498
    const/16 v1, 0x8

    rem-int/2addr v1, p4

    if-nez v1, :cond_0

    .line 499
    const-string/jumbo v1, "IccUtils"

    const-string/jumbo v2, "not odd number of color"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/IccUtils;->mapTo2OrderBitColor([BII[II)[I

    move-result-object v0

    .line 505
    :goto_0
    return-object v0

    .line 503
    :cond_0
    new-array v0, p2, [I

    .line 505
    .local v0, "resultArray":[I
    goto :goto_0
.end method

.method public static networkNameToString([BII)Ljava/lang/String;
    .locals 7
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 349
    aget-byte v4, p0, p1

    and-int/lit16 v4, v4, 0x80

    const/16 v5, 0x80

    if-ne v4, v5, :cond_0

    if-gtz p2, :cond_1

    .line 350
    :cond_0
    const-string/jumbo v2, ""

    .line 386
    :goto_0
    return-object v2

    .line 353
    :cond_1
    aget-byte v4, p0, p1

    ushr-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0x7

    packed-switch v4, :pswitch_data_0

    .line 373
    const-string/jumbo v2, ""

    .local v2, "ret":Ljava/lang/String;
    goto :goto_0

    .line 357
    .end local v2    # "ret":Ljava/lang/String;
    :pswitch_0
    aget-byte v4, p0, p1

    and-int/lit8 v3, v4, 0x7

    .line 358
    .local v3, "unusedBits":I
    add-int/lit8 v4, p2, -0x1

    mul-int/lit8 v4, v4, 0x8

    sub-int/2addr v4, v3

    div-int/lit8 v0, v4, 0x7

    .line 359
    .local v0, "countSeptets":I
    add-int/lit8 v4, p1, 0x1

    invoke-static {p0, v4, v0}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    move-result-object v2

    .line 360
    .restart local v2    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 364
    .end local v0    # "countSeptets":I
    .end local v2    # "ret":Ljava/lang/String;
    .end local v3    # "unusedBits":I
    :pswitch_1
    :try_start_0
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v4, p1, 0x1

    add-int/lit8 v5, p2, -0x1

    const-string/jumbo v6, "utf-16"

    invoke-direct {v2, p0, v4, v5, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v2    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 365
    .end local v2    # "ret":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 366
    .local v1, "ex":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v2, ""

    .line 367
    .restart local v2    # "ret":Ljava/lang/String;
    const-string/jumbo v4, "IccUtils"

    const-string/jumbo v5, "implausible UnsupportedEncodingException"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 353
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static parseToBnW([BI)Landroid/graphics/Bitmap;
    .locals 13
    .param p0, "data"    # [B
    .param p1, "length"    # I

    .prologue
    .line 397
    const/4 v8, 0x0

    .line 398
    .local v8, "valueIndex":I
    const/4 v11, 0x0

    add-int/lit8 v8, v8, 0x1

    aget-byte v11, p0, v11

    and-int/lit16 v10, v11, 0xff

    .line 399
    .local v10, "width":I
    const/4 v11, 0x1

    add-int/lit8 v8, v8, 0x1

    aget-byte v11, p0, v11

    and-int/lit16 v3, v11, 0xff

    .line 400
    .local v3, "height":I
    mul-int v4, v10, v3

    .line 402
    .local v4, "numOfPixels":I
    new-array v7, v4, [I

    .line 404
    .local v7, "pixels":[I
    const/4 v5, 0x0

    .line 405
    .local v5, "pixelIndex":I
    const/4 v0, 0x7

    .line 406
    .local v0, "bitIndex":I
    const/4 v2, 0x0

    .local v2, "currentByte":B
    move v6, v5

    .end local v5    # "pixelIndex":I
    .local v6, "pixelIndex":I
    move v9, v8

    .line 407
    .end local v8    # "valueIndex":I
    .local v9, "valueIndex":I
    :goto_0
    if-ge v6, v4, :cond_0

    .line 409
    rem-int/lit8 v11, v6, 0x8

    if-nez v11, :cond_2

    .line 410
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "valueIndex":I
    .restart local v8    # "valueIndex":I
    aget-byte v2, p0, v9

    .line 411
    const/4 v0, 0x7

    .line 413
    :goto_1
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "pixelIndex":I
    .restart local v5    # "pixelIndex":I
    add-int/lit8 v1, v0, -0x1

    .end local v0    # "bitIndex":I
    .local v1, "bitIndex":I
    shr-int v11, v2, v0

    and-int/lit8 v11, v11, 0x1

    invoke-static {v11}, Lcom/android/internal/telephony/IccUtils;->bitToRGB(I)I

    move-result v11

    aput v11, v7, v6

    move v0, v1

    .end local v1    # "bitIndex":I
    .restart local v0    # "bitIndex":I
    move v6, v5

    .end local v5    # "pixelIndex":I
    .restart local v6    # "pixelIndex":I
    move v9, v8

    .end local v8    # "valueIndex":I
    .restart local v9    # "valueIndex":I
    goto :goto_0

    .line 417
    :cond_0
    if-eq v6, v4, :cond_1

    .line 418
    const-string/jumbo v11, "IccUtils"

    const-string/jumbo v12, "parse end and size error"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :cond_1
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v10, v3, v11}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    return-object v11

    :cond_2
    move v8, v9

    .end local v9    # "valueIndex":I
    .restart local v8    # "valueIndex":I
    goto :goto_1
.end method

.method public static parseToRGB([BIZ)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "data"    # [B
    .param p1, "length"    # I
    .param p2, "transparency"    # Z

    .prologue
    const/4 v11, 0x6

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 441
    aget-byte v7, p0, v9

    and-int/lit16 v6, v7, 0xff

    .line 442
    .local v6, "width":I
    aget-byte v7, p0, v10

    and-int/lit16 v4, v7, 0xff

    .line 443
    .local v4, "height":I
    const/4 v7, 0x2

    aget-byte v7, p0, v7

    and-int/lit16 v0, v7, 0xff

    .line 444
    .local v0, "bits":I
    const/4 v7, 0x3

    aget-byte v7, p0, v7

    and-int/lit16 v3, v7, 0xff

    .line 445
    .local v3, "colorNumber":I
    const/4 v7, 0x4

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    const/4 v8, 0x5

    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    or-int v1, v7, v8

    .line 447
    .local v1, "clutOffset":I
    invoke-static {p0, v1, v3}, Lcom/android/internal/telephony/IccUtils;->getCLUT([BII)[I

    move-result-object v2

    .line 448
    .local v2, "colorIndexArray":[I
    if-ne v10, p2, :cond_0

    .line 449
    add-int/lit8 v7, v3, -0x1

    aput v9, v2, v7

    .line 453
    :cond_0
    const/16 v7, 0x8

    rem-int/2addr v7, v0

    if-nez v7, :cond_1

    .line 454
    mul-int v7, v6, v4

    invoke-static {p0, v11, v7, v2, v0}, Lcom/android/internal/telephony/IccUtils;->mapTo2OrderBitColor([BII[II)[I

    move-result-object v5

    .line 459
    .local v5, "resultArray":[I
    :goto_0
    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v4, v7}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    return-object v7

    .line 456
    .end local v5    # "resultArray":[I
    :cond_1
    mul-int v7, v6, v4

    invoke-static {p0, v11, v7, v2, v0}, Lcom/android/internal/telephony/IccUtils;->mapToNon2OrderBitColor([BII[II)[I

    move-result-object v5

    .restart local v5    # "resultArray":[I
    goto :goto_0
.end method
