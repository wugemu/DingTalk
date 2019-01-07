.class public Lcom/ali/user/enterprise/base/session/encode/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field static final BASELENGTH:I = 0xff

.field static final CHUNK_SEPARATOR:[B

.field static final CHUNK_SIZE:I = 0x4c

.field static final EIGHTBIT:I = 0x8

.field static final FOURBYTE:I = 0x4

.field static final LOOKUPLENGTH:I = 0x40

.field static final PAD:B = 0x3dt

.field static final SIGN:I = -0x80

.field static final SIXTEENBIT:I = 0x10

.field static final TWENTYFOURBITGROUP:I = 0x18

.field private static base64Alphabet:[B

.field private static lookUpBase64Alphabet:[B


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0xff

    const/16 v7, 0x3f

    const/16 v6, 0x3e

    const/16 v5, 0x2f

    const/16 v4, 0x2b

    .line 51
    const-string/jumbo v2, "\r\n"

    const-string/jumbo v3, "UTF-8"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    sput-object v2, Lcom/ali/user/enterprise/base/session/encode/Base64;->CHUNK_SEPARATOR:[B

    .line 95
    new-array v2, v8, [B

    sput-object v2, Lcom/ali/user/enterprise/base/session/encode/Base64;->base64Alphabet:[B

    .line 96
    const/16 v2, 0x40

    new-array v2, v2, [B

    sput-object v2, Lcom/ali/user/enterprise/base/session/encode/Base64;->lookUpBase64Alphabet:[B

    .line 100
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v8, :cond_0

    .line 101
    sget-object v2, Lcom/ali/user/enterprise/base/session/encode/Base64;->base64Alphabet:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v0

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    :cond_0
    const/16 v0, 0x5a

    :goto_1
    const/16 v2, 0x41

    if-lt v0, v2, :cond_1

    .line 104
    sget-object v2, Lcom/ali/user/enterprise/base/session/encode/Base64;->base64Alphabet:[B

    add-int/lit8 v3, v0, -0x41

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 103
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 106
    :cond_1
    const/16 v0, 0x7a

    :goto_2
    const/16 v2, 0x61

    if-lt v0, v2, :cond_2

    .line 107
    sget-object v2, Lcom/ali/user/enterprise/base/session/encode/Base64;->base64Alphabet:[B

    add-int/lit8 v3, v0, -0x61

    add-int/lit8 v3, v3, 0x1a

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 106
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 109
    :cond_2
    const/16 v0, 0x39

    :goto_3
    const/16 v2, 0x30

    if-lt v0, v2, :cond_3

    .line 110
    sget-object v2, Lcom/ali/user/enterprise/base/session/encode/Base64;->base64Alphabet:[B

    add-int/lit8 v3, v0, -0x30

    add-int/lit8 v3, v3, 0x34

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 109
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 113
    :cond_3
    sget-object v2, Lcom/ali/user/enterprise/base/session/encode/Base64;->base64Alphabet:[B

    aput-byte v6, v2, v4

    .line 114
    sget-object v2, Lcom/ali/user/enterprise/base/session/encode/Base64;->base64Alphabet:[B

    aput-byte v7, v2, v5

    .line 116
    const/4 v0, 0x0

    :goto_4
    const/16 v2, 0x19

    if-gt v0, v2, :cond_4

    .line 117
    sget-object v2, Lcom/ali/user/enterprise/base/session/encode/Base64;->lookUpBase64Alphabet:[B

    add-int/lit8 v3, v0, 0x41

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 120
    :cond_4
    const/16 v0, 0x1a

    const/4 v1, 0x0

    .local v1, "j":I
    :goto_5
    const/16 v2, 0x33

    if-gt v0, v2, :cond_5

    .line 121
    sget-object v2, Lcom/ali/user/enterprise/base/session/encode/Base64;->lookUpBase64Alphabet:[B

    add-int/lit8 v3, v1, 0x61

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 120
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 124
    :cond_5
    const/16 v0, 0x34

    const/4 v1, 0x0

    :goto_6
    const/16 v2, 0x3d

    if-gt v0, v2, :cond_6

    .line 125
    sget-object v2, Lcom/ali/user/enterprise/base/session/encode/Base64;->lookUpBase64Alphabet:[B

    add-int/lit8 v3, v1, 0x30

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 124
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 128
    :cond_6
    sget-object v2, Lcom/ali/user/enterprise/base/session/encode/Base64;->lookUpBase64Alphabet:[B

    aput-byte v4, v2, v6

    .line 129
    sget-object v2, Lcom/ali/user/enterprise/base/session/encode/Base64;->lookUpBase64Alphabet:[B

    aput-byte v5, v2, v7

    .line 130
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeBase64([B)[B
    .locals 15
    .param p0, "base64Data"    # [B

    .prologue
    .line 372
    invoke-static {p0}, Lcom/ali/user/enterprise/base/session/encode/Base64;->discardNonBase64([B)[B

    move-result-object p0

    .line 375
    array-length v12, p0

    if-nez v12, :cond_1

    .line 376
    const/4 v12, 0x0

    new-array v5, v12, [B

    .line 429
    :cond_0
    :goto_0
    return-object v5

    .line 379
    :cond_1
    array-length v12, p0

    div-int/lit8 v11, v12, 0x4

    .line 385
    .local v11, "numberQuadruple":I
    const/4 v6, 0x0

    .line 389
    .local v6, "encodedIndex":I
    array-length v8, p0

    .line 391
    .local v8, "lastData":I
    :cond_2
    add-int/lit8 v12, v8, -0x1

    aget-byte v12, p0, v12

    const/16 v13, 0x3d

    if-ne v12, v13, :cond_3

    .line 392
    add-int/lit8 v8, v8, -0x1

    if-nez v8, :cond_2

    .line 393
    const/4 v12, 0x0

    new-array v5, v12, [B

    goto :goto_0

    .line 396
    :cond_3
    sub-int v12, v8, v11

    new-array v5, v12, [B

    .line 399
    .local v5, "decodedData":[B
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v11, :cond_0

    .line 400
    mul-int/lit8 v4, v7, 0x4

    .line 401
    .local v4, "dataIndex":I
    add-int/lit8 v12, v4, 0x2

    aget-byte v9, p0, v12

    .line 402
    .local v9, "marker0":B
    add-int/lit8 v12, v4, 0x3

    aget-byte v10, p0, v12

    .line 404
    .local v10, "marker1":B
    sget-object v12, Lcom/ali/user/enterprise/base/session/encode/Base64;->base64Alphabet:[B

    aget-byte v13, p0, v4

    aget-byte v0, v12, v13

    .line 405
    .local v0, "b1":B
    sget-object v12, Lcom/ali/user/enterprise/base/session/encode/Base64;->base64Alphabet:[B

    add-int/lit8 v13, v4, 0x1

    aget-byte v13, p0, v13

    aget-byte v1, v12, v13

    .line 407
    .local v1, "b2":B
    const/16 v12, 0x3d

    if-eq v9, v12, :cond_5

    const/16 v12, 0x3d

    if-eq v10, v12, :cond_5

    .line 409
    sget-object v12, Lcom/ali/user/enterprise/base/session/encode/Base64;->base64Alphabet:[B

    aget-byte v2, v12, v9

    .line 410
    .local v2, "b3":B
    sget-object v12, Lcom/ali/user/enterprise/base/session/encode/Base64;->base64Alphabet:[B

    aget-byte v3, v12, v10

    .line 412
    .local v3, "b4":B
    shl-int/lit8 v12, v0, 0x2

    shr-int/lit8 v13, v1, 0x4

    or-int/2addr v12, v13

    int-to-byte v12, v12

    aput-byte v12, v5, v6

    .line 413
    add-int/lit8 v12, v6, 0x1

    and-int/lit8 v13, v1, 0xf

    shl-int/lit8 v13, v13, 0x4

    shr-int/lit8 v14, v2, 0x2

    and-int/lit8 v14, v14, 0xf

    or-int/2addr v13, v14

    int-to-byte v13, v13

    aput-byte v13, v5, v12

    .line 415
    add-int/lit8 v12, v6, 0x2

    shl-int/lit8 v13, v2, 0x6

    or-int/2addr v13, v3

    int-to-byte v13, v13

    aput-byte v13, v5, v12

    .line 427
    .end local v2    # "b3":B
    .end local v3    # "b4":B
    :cond_4
    :goto_2
    add-int/lit8 v6, v6, 0x3

    .line 399
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 416
    :cond_5
    const/16 v12, 0x3d

    if-ne v9, v12, :cond_6

    .line 418
    shl-int/lit8 v12, v0, 0x2

    shr-int/lit8 v13, v1, 0x4

    or-int/2addr v12, v13

    int-to-byte v12, v12

    aput-byte v12, v5, v6

    goto :goto_2

    .line 419
    :cond_6
    const/16 v12, 0x3d

    if-ne v10, v12, :cond_4

    .line 421
    sget-object v12, Lcom/ali/user/enterprise/base/session/encode/Base64;->base64Alphabet:[B

    aget-byte v2, v12, v9

    .line 423
    .restart local v2    # "b3":B
    shl-int/lit8 v12, v0, 0x2

    shr-int/lit8 v13, v1, 0x4

    or-int/2addr v12, v13

    int-to-byte v12, v12

    aput-byte v12, v5, v6

    .line 424
    add-int/lit8 v12, v6, 0x1

    and-int/lit8 v13, v1, 0xf

    shl-int/lit8 v13, v13, 0x4

    shr-int/lit8 v14, v2, 0x2

    and-int/lit8 v14, v14, 0xf

    or-int/2addr v13, v14

    int-to-byte v13, v13

    aput-byte v13, v5, v12

    goto :goto_2
.end method

.method static discardNonBase64([B)[B
    .locals 7
    .param p0, "data"    # [B

    .prologue
    const/4 v6, 0x0

    .line 472
    array-length v5, p0

    new-array v2, v5, [B

    .line 473
    .local v2, "groomedData":[B
    const/4 v0, 0x0

    .line 475
    .local v0, "bytesCopied":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v5, p0

    if-ge v3, v5, :cond_1

    .line 476
    aget-byte v5, p0, v3

    invoke-static {v5}, Lcom/ali/user/enterprise/base/session/encode/Base64;->isBase64(B)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 477
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "bytesCopied":I
    .local v1, "bytesCopied":I
    aget-byte v5, p0, v3

    aput-byte v5, v2, v0

    move v0, v1

    .line 475
    .end local v1    # "bytesCopied":I
    .restart local v0    # "bytesCopied":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 481
    :cond_1
    new-array v4, v0, [B

    .line 483
    .local v4, "packedData":[B
    invoke-static {v2, v6, v4, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 485
    return-object v4
.end method

.method static discardWhitespace([B)[B
    .locals 7
    .param p0, "data"    # [B

    .prologue
    const/4 v6, 0x0

    .line 440
    array-length v5, p0

    new-array v2, v5, [B

    .line 441
    .local v2, "groomedData":[B
    const/4 v0, 0x0

    .line 443
    .local v0, "bytesCopied":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v5, p0

    if-ge v3, v5, :cond_0

    .line 444
    aget-byte v5, p0, v3

    sparse-switch v5, :sswitch_data_0

    .line 451
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "bytesCopied":I
    .local v1, "bytesCopied":I
    aget-byte v5, p0, v3

    aput-byte v5, v2, v0

    move v0, v1

    .line 443
    .end local v1    # "bytesCopied":I
    .restart local v0    # "bytesCopied":I
    :sswitch_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 455
    :cond_0
    new-array v4, v0, [B

    .line 457
    .local v4, "packedData":[B
    invoke-static {v2, v6, v4, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 459
    return-object v4

    .line 444
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method public static encodeBase64([B)[B
    .locals 1
    .param p0, "binaryData"    # [B

    .prologue
    .line 176
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/ali/user/enterprise/base/session/encode/Base64;->encodeBase64([BZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeBase64([BZ)[B
    .locals 27
    .param p0, "binaryData"    # [B
    .param p1, "isChunked"    # Z

    .prologue
    .line 231
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v23, v0

    mul-int/lit8 v16, v23, 0x8

    .line 232
    .local v16, "lengthDataBits":I
    rem-int/lit8 v12, v16, 0x18

    .line 233
    .local v12, "fewerThan24bits":I
    div-int/lit8 v19, v16, 0x18

    .line 236
    .local v19, "numberTriplets":I
    const/16 v17, 0x0

    .line 238
    .local v17, "nbrChunks":I
    if-eqz v12, :cond_2

    .line 240
    add-int/lit8 v23, v19, 0x1

    mul-int/lit8 v10, v23, 0x4

    .line 249
    .local v10, "encodedDataLength":I
    :goto_0
    if-eqz p1, :cond_0

    .line 251
    sget-object v23, Lcom/ali/user/enterprise/base/session/encode/Base64;->CHUNK_SEPARATOR:[B

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    if-nez v23, :cond_3

    const/16 v17, 0x0

    .line 253
    :goto_1
    sget-object v23, Lcom/ali/user/enterprise/base/session/encode/Base64;->CHUNK_SEPARATOR:[B

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    mul-int v23, v23, v17

    add-int v10, v10, v23

    .line 256
    :cond_0
    new-array v9, v10, [B

    .line 260
    .local v9, "encodedData":[B
    const/4 v11, 0x0

    .line 263
    .local v11, "encodedIndex":I
    const/16 v18, 0x4c

    .line 264
    .local v18, "nextSeparatorIndex":I
    const/4 v7, 0x0

    .line 267
    .local v7, "chunksSoFar":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_2
    move/from16 v0, v19

    if-ge v13, v0, :cond_7

    .line 268
    mul-int/lit8 v8, v13, 0x3

    .line 269
    .local v8, "dataIndex":I
    aget-byte v4, p0, v8

    .line 270
    .local v4, "b1":B
    add-int/lit8 v23, v8, 0x1

    aget-byte v5, p0, v23

    .line 271
    .local v5, "b2":B
    add-int/lit8 v23, v8, 0x2

    aget-byte v6, p0, v23

    .line 275
    .local v6, "b3":B
    and-int/lit8 v23, v5, 0xf

    move/from16 v0, v23

    int-to-byte v15, v0

    .line 276
    .local v15, "l":B
    and-int/lit8 v23, v4, 0x3

    move/from16 v0, v23

    int-to-byte v14, v0

    .line 278
    .local v14, "k":B
    and-int/lit8 v23, v4, -0x80

    if-nez v23, :cond_4

    shr-int/lit8 v23, v4, 0x2

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v20, v0

    .line 280
    .local v20, "val1":B
    :goto_3
    and-int/lit8 v23, v5, -0x80

    if-nez v23, :cond_5

    shr-int/lit8 v23, v5, 0x4

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v21, v0

    .line 282
    .local v21, "val2":B
    :goto_4
    and-int/lit8 v23, v6, -0x80

    if-nez v23, :cond_6

    shr-int/lit8 v23, v6, 0x6

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v22, v0

    .line 285
    .local v22, "val3":B
    :goto_5
    sget-object v23, Lcom/ali/user/enterprise/base/session/encode/Base64;->lookUpBase64Alphabet:[B

    aget-byte v23, v23, v20

    aput-byte v23, v9, v11

    .line 289
    add-int/lit8 v23, v11, 0x1

    sget-object v24, Lcom/ali/user/enterprise/base/session/encode/Base64;->lookUpBase64Alphabet:[B

    shl-int/lit8 v25, v14, 0x4

    or-int v25, v25, v21

    aget-byte v24, v24, v25

    aput-byte v24, v9, v23

    .line 291
    add-int/lit8 v23, v11, 0x2

    sget-object v24, Lcom/ali/user/enterprise/base/session/encode/Base64;->lookUpBase64Alphabet:[B

    shl-int/lit8 v25, v15, 0x2

    or-int v25, v25, v22

    aget-byte v24, v24, v25

    aput-byte v24, v9, v23

    .line 293
    add-int/lit8 v23, v11, 0x3

    sget-object v24, Lcom/ali/user/enterprise/base/session/encode/Base64;->lookUpBase64Alphabet:[B

    and-int/lit8 v25, v6, 0x3f

    aget-byte v24, v24, v25

    aput-byte v24, v9, v23

    .line 295
    add-int/lit8 v11, v11, 0x4

    .line 298
    if-eqz p1, :cond_1

    .line 300
    move/from16 v0, v18

    if-ne v11, v0, :cond_1

    .line 301
    sget-object v23, Lcom/ali/user/enterprise/base/session/encode/Base64;->CHUNK_SEPARATOR:[B

    const/16 v24, 0x0

    sget-object v25, Lcom/ali/user/enterprise/base/session/encode/Base64;->CHUNK_SEPARATOR:[B

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v1, v9, v11, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 307
    add-int/lit8 v7, v7, 0x1

    .line 308
    add-int/lit8 v23, v7, 0x1

    mul-int/lit8 v23, v23, 0x4c

    sget-object v24, Lcom/ali/user/enterprise/base/session/encode/Base64;->CHUNK_SEPARATOR:[B

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    mul-int v24, v24, v7

    add-int v18, v23, v24

    .line 311
    sget-object v23, Lcom/ali/user/enterprise/base/session/encode/Base64;->CHUNK_SEPARATOR:[B

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    add-int v11, v11, v23

    .line 267
    :cond_1
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    .line 243
    .end local v4    # "b1":B
    .end local v5    # "b2":B
    .end local v6    # "b3":B
    .end local v7    # "chunksSoFar":I
    .end local v8    # "dataIndex":I
    .end local v9    # "encodedData":[B
    .end local v10    # "encodedDataLength":I
    .end local v11    # "encodedIndex":I
    .end local v13    # "i":I
    .end local v14    # "k":B
    .end local v15    # "l":B
    .end local v18    # "nextSeparatorIndex":I
    .end local v20    # "val1":B
    .end local v21    # "val2":B
    .end local v22    # "val3":B
    :cond_2
    mul-int/lit8 v10, v19, 0x4

    .restart local v10    # "encodedDataLength":I
    goto/16 :goto_0

    .line 251
    :cond_3
    int-to-float v0, v10

    move/from16 v23, v0

    const/high16 v24, 0x42980000    # 76.0f

    div-float v23, v23, v24

    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v24, v0

    .line 252
    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-int v0, v0

    move/from16 v17, v0

    goto/16 :goto_1

    .line 278
    .restart local v4    # "b1":B
    .restart local v5    # "b2":B
    .restart local v6    # "b3":B
    .restart local v7    # "chunksSoFar":I
    .restart local v8    # "dataIndex":I
    .restart local v9    # "encodedData":[B
    .restart local v11    # "encodedIndex":I
    .restart local v13    # "i":I
    .restart local v14    # "k":B
    .restart local v15    # "l":B
    .restart local v18    # "nextSeparatorIndex":I
    :cond_4
    shr-int/lit8 v23, v4, 0x2

    move/from16 v0, v23

    xor-int/lit16 v0, v0, 0xc0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v20, v0

    goto/16 :goto_3

    .line 280
    .restart local v20    # "val1":B
    :cond_5
    shr-int/lit8 v23, v5, 0x4

    move/from16 v0, v23

    xor-int/lit16 v0, v0, 0xf0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v21, v0

    goto/16 :goto_4

    .line 282
    .restart local v21    # "val2":B
    :cond_6
    shr-int/lit8 v23, v6, 0x6

    move/from16 v0, v23

    xor-int/lit16 v0, v0, 0xfc

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v22, v0

    goto/16 :goto_5

    .line 317
    .end local v4    # "b1":B
    .end local v5    # "b2":B
    .end local v6    # "b3":B
    .end local v8    # "dataIndex":I
    .end local v14    # "k":B
    .end local v15    # "l":B
    .end local v20    # "val1":B
    .end local v21    # "val2":B
    :cond_7
    mul-int/lit8 v8, v13, 0x3

    .line 319
    .restart local v8    # "dataIndex":I
    const/16 v23, 0x8

    move/from16 v0, v23

    if-ne v12, v0, :cond_b

    .line 320
    aget-byte v4, p0, v8

    .line 321
    .restart local v4    # "b1":B
    and-int/lit8 v23, v4, 0x3

    move/from16 v0, v23

    int-to-byte v14, v0

    .line 324
    .restart local v14    # "k":B
    and-int/lit8 v23, v4, -0x80

    if-nez v23, :cond_a

    shr-int/lit8 v23, v4, 0x2

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v20, v0

    .line 326
    .restart local v20    # "val1":B
    :goto_6
    sget-object v23, Lcom/ali/user/enterprise/base/session/encode/Base64;->lookUpBase64Alphabet:[B

    aget-byte v23, v23, v20

    aput-byte v23, v9, v11

    .line 327
    add-int/lit8 v23, v11, 0x1

    sget-object v24, Lcom/ali/user/enterprise/base/session/encode/Base64;->lookUpBase64Alphabet:[B

    shl-int/lit8 v25, v14, 0x4

    aget-byte v24, v24, v25

    aput-byte v24, v9, v23

    .line 328
    add-int/lit8 v23, v11, 0x2

    const/16 v24, 0x3d

    aput-byte v24, v9, v23

    .line 329
    add-int/lit8 v23, v11, 0x3

    const/16 v24, 0x3d

    aput-byte v24, v9, v23

    .line 349
    .end local v4    # "b1":B
    .end local v14    # "k":B
    .end local v20    # "val1":B
    :cond_8
    :goto_7
    if-eqz p1, :cond_9

    .line 351
    move/from16 v0, v17

    if-ge v7, v0, :cond_9

    .line 352
    sget-object v23, Lcom/ali/user/enterprise/base/session/encode/Base64;->CHUNK_SEPARATOR:[B

    const/16 v24, 0x0

    sget-object v25, Lcom/ali/user/enterprise/base/session/encode/Base64;->CHUNK_SEPARATOR:[B

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    sub-int v25, v10, v25

    sget-object v26, Lcom/ali/user/enterprise/base/session/encode/Base64;->CHUNK_SEPARATOR:[B

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-static {v0, v1, v9, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 361
    :cond_9
    return-object v9

    .line 324
    .restart local v4    # "b1":B
    .restart local v14    # "k":B
    :cond_a
    shr-int/lit8 v23, v4, 0x2

    move/from16 v0, v23

    xor-int/lit16 v0, v0, 0xc0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v20, v0

    goto :goto_6

    .line 330
    .end local v4    # "b1":B
    .end local v14    # "k":B
    :cond_b
    const/16 v23, 0x10

    move/from16 v0, v23

    if-ne v12, v0, :cond_8

    .line 332
    aget-byte v4, p0, v8

    .line 333
    .restart local v4    # "b1":B
    add-int/lit8 v23, v8, 0x1

    aget-byte v5, p0, v23

    .line 334
    .restart local v5    # "b2":B
    and-int/lit8 v23, v5, 0xf

    move/from16 v0, v23

    int-to-byte v15, v0

    .line 335
    .restart local v15    # "l":B
    and-int/lit8 v23, v4, 0x3

    move/from16 v0, v23

    int-to-byte v14, v0

    .line 337
    .restart local v14    # "k":B
    and-int/lit8 v23, v4, -0x80

    if-nez v23, :cond_c

    shr-int/lit8 v23, v4, 0x2

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v20, v0

    .line 339
    .restart local v20    # "val1":B
    :goto_8
    and-int/lit8 v23, v5, -0x80

    if-nez v23, :cond_d

    shr-int/lit8 v23, v5, 0x4

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v21, v0

    .line 342
    .restart local v21    # "val2":B
    :goto_9
    sget-object v23, Lcom/ali/user/enterprise/base/session/encode/Base64;->lookUpBase64Alphabet:[B

    aget-byte v23, v23, v20

    aput-byte v23, v9, v11

    .line 343
    add-int/lit8 v23, v11, 0x1

    sget-object v24, Lcom/ali/user/enterprise/base/session/encode/Base64;->lookUpBase64Alphabet:[B

    shl-int/lit8 v25, v14, 0x4

    or-int v25, v25, v21

    aget-byte v24, v24, v25

    aput-byte v24, v9, v23

    .line 345
    add-int/lit8 v23, v11, 0x2

    sget-object v24, Lcom/ali/user/enterprise/base/session/encode/Base64;->lookUpBase64Alphabet:[B

    shl-int/lit8 v25, v15, 0x2

    aget-byte v24, v24, v25

    aput-byte v24, v9, v23

    .line 346
    add-int/lit8 v23, v11, 0x3

    const/16 v24, 0x3d

    aput-byte v24, v9, v23

    goto/16 :goto_7

    .line 337
    .end local v20    # "val1":B
    .end local v21    # "val2":B
    :cond_c
    shr-int/lit8 v23, v4, 0x2

    move/from16 v0, v23

    xor-int/lit16 v0, v0, 0xc0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v20, v0

    goto :goto_8

    .line 339
    .restart local v20    # "val1":B
    :cond_d
    shr-int/lit8 v23, v5, 0x4

    move/from16 v0, v23

    xor-int/lit16 v0, v0, 0xf0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v21, v0

    goto :goto_9
.end method

.method public static encodeBase64Chunked([B)[B
    .locals 1
    .param p0, "binaryData"    # [B

    .prologue
    .line 187
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/ali/user/enterprise/base/session/encode/Base64;->encodeBase64([BZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static isArrayByteBase64([B)Z
    .locals 4
    .param p0, "arrayOctect"    # [B

    .prologue
    const/4 v2, 0x1

    .line 152
    invoke-static {p0}, Lcom/ali/user/enterprise/base/session/encode/Base64;->discardWhitespace([B)[B

    move-result-object p0

    .line 154
    array-length v1, p0

    .line 155
    .local v1, "length":I
    if-nez v1, :cond_1

    .line 165
    :cond_0
    :goto_0
    return v2

    .line 160
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 161
    aget-byte v3, p0, v0

    invoke-static {v3}, Lcom/ali/user/enterprise/base/session/encode/Base64;->isBase64(B)Z

    move-result v3

    if-nez v3, :cond_2

    .line 162
    const/4 v2, 0x0

    goto :goto_0

    .line 160
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static isBase64(B)Z
    .locals 3
    .param p0, "octect"    # B

    .prologue
    const/4 v0, 0x1

    .line 133
    const/16 v1, 0x3d

    if-ne p0, v1, :cond_1

    .line 138
    :cond_0
    :goto_0
    return v0

    .line 135
    :cond_1
    sget-object v1, Lcom/ali/user/enterprise/base/session/encode/Base64;->base64Alphabet:[B

    aget-byte v1, v1, p0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 136
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public decode([B)[B
    .locals 1
    .param p1, "pArray"    # [B

    .prologue
    .line 218
    invoke-static {p1}, Lcom/ali/user/enterprise/base/session/encode/Base64;->decodeBase64([B)[B

    move-result-object v0

    return-object v0
.end method

.method public encode([B)[B
    .locals 1
    .param p1, "pArray"    # [B

    .prologue
    .line 519
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/ali/user/enterprise/base/session/encode/Base64;->encodeBase64([BZ)[B

    move-result-object v0

    return-object v0
.end method
