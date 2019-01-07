.class public final Lixt;
.super Ljava/lang/Object;
.source "Encoder.java"


# static fields
.field private static final a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/16 v0, 0x60

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lixt;->a:[I

    return-void

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x24
        -0x1
        -0x1
        -0x1
        0x25
        0x26
        -0x1
        -0x1
        -0x1
        -0x1
        0x27
        0x28
        -0x1
        0x29
        0x2a
        0x2b
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0x2c
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method private static a(I)I
    .locals 1
    .param p0, "code"    # I

    .prologue
    .line 188
    const/16 v0, 0x60

    if-ge p0, v0, :cond_0

    .line 189
    sget-object v0, Lixt;->a:[I

    aget v0, v0, p0

    .line 191
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private static a(Lixk;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lixq;Lixs;)I
    .locals 19
    .param p0, "bits"    # Lixk;
    .param p1, "ecLevel"    # Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    .param p2, "version"    # Lixq;
    .param p3, "matrix"    # Lixs;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 254
    const v6, 0x7fffffff

    .line 255
    .local v6, "minPenalty":I
    const/4 v4, -0x1

    .line 257
    .local v4, "bestMaskPattern":I
    const/4 v5, 0x0

    .local v5, "maskPattern":I
    :goto_0
    const/16 v8, 0x8

    if-ge v5, v8, :cond_f

    .line 258
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-static {v0, v1, v2, v5, v3}, Lixv;->a(Lixk;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lixq;ILixs;)V

    .line 12041
    const/4 v8, 0x1

    move-object/from16 v0, p3

    invoke-static {v0, v8}, Lixu;->a(Lixs;Z)I

    move-result v8

    const/4 v9, 0x0

    .line 12042
    move-object/from16 v0, p3

    invoke-static {v0, v9}, Lixu;->a(Lixs;Z)I

    move-result v9

    add-int v11, v8, v9

    .line 12053
    const/4 v9, 0x0

    .line 13057
    move-object/from16 v0, p3

    iget-object v12, v0, Lixs;->a:[[B

    .line 14049
    move-object/from16 v0, p3

    iget v13, v0, Lixs;->b:I

    .line 15045
    move-object/from16 v0, p3

    iget v14, v0, Lixs;->c:I

    .line 12057
    const/4 v8, 0x0

    move v10, v8

    :goto_1
    add-int/lit8 v8, v14, -0x1

    if-ge v10, v8, :cond_2

    .line 12058
    const/4 v8, 0x0

    move/from16 v18, v8

    move v8, v9

    move/from16 v9, v18

    :goto_2
    add-int/lit8 v15, v13, -0x1

    if-ge v9, v15, :cond_1

    .line 12059
    aget-object v15, v12, v10

    aget-byte v15, v15, v9

    .line 12060
    aget-object v16, v12, v10

    add-int/lit8 v17, v9, 0x1

    aget-byte v16, v16, v17

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    add-int/lit8 v16, v10, 0x1

    aget-object v16, v12, v16

    aget-byte v16, v16, v9

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    add-int/lit8 v16, v10, 0x1

    aget-object v16, v12, v16

    add-int/lit8 v17, v9, 0x1

    aget-byte v16, v16, v17

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 12062
    add-int/lit8 v8, v8, 0x1

    .line 12058
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 12057
    :cond_1
    add-int/lit8 v9, v10, 0x1

    move v10, v9

    move v9, v8

    goto :goto_1

    .line 12066
    :cond_2
    mul-int/lit8 v8, v9, 0x3

    .line 11060
    add-int/2addr v11, v8

    .line 15075
    const/4 v9, 0x0

    .line 16057
    move-object/from16 v0, p3

    iget-object v12, v0, Lixs;->a:[[B

    .line 17049
    move-object/from16 v0, p3

    iget v13, v0, Lixs;->b:I

    .line 18045
    move-object/from16 v0, p3

    iget v14, v0, Lixs;->c:I

    .line 15079
    const/4 v8, 0x0

    move v10, v8

    :goto_3
    if-ge v10, v14, :cond_a

    .line 15080
    const/4 v8, 0x0

    move/from16 v18, v8

    move v8, v9

    move/from16 v9, v18

    :goto_4
    if-ge v9, v13, :cond_9

    .line 15082
    add-int/lit8 v15, v9, 0x6

    if-ge v15, v13, :cond_5

    aget-object v15, v12, v10

    aget-byte v15, v15, v9

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_5

    aget-object v15, v12, v10

    add-int/lit8 v16, v9, 0x1

    aget-byte v15, v15, v16

    if-nez v15, :cond_5

    aget-object v15, v12, v10

    add-int/lit8 v16, v9, 0x2

    aget-byte v15, v15, v16

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_5

    aget-object v15, v12, v10

    add-int/lit8 v16, v9, 0x3

    aget-byte v15, v15, v16

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_5

    aget-object v15, v12, v10

    add-int/lit8 v16, v9, 0x4

    aget-byte v15, v15, v16

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_5

    aget-object v15, v12, v10

    add-int/lit8 v16, v9, 0x5

    aget-byte v15, v15, v16

    if-nez v15, :cond_5

    aget-object v15, v12, v10

    add-int/lit8 v16, v9, 0x6

    aget-byte v15, v15, v16

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_5

    add-int/lit8 v15, v9, 0xa

    if-ge v15, v13, :cond_3

    aget-object v15, v12, v10

    add-int/lit8 v16, v9, 0x7

    aget-byte v15, v15, v16

    if-nez v15, :cond_3

    aget-object v15, v12, v10

    add-int/lit8 v16, v9, 0x8

    aget-byte v15, v15, v16

    if-nez v15, :cond_3

    aget-object v15, v12, v10

    add-int/lit8 v16, v9, 0x9

    aget-byte v15, v15, v16

    if-nez v15, :cond_3

    aget-object v15, v12, v10

    add-int/lit8 v16, v9, 0xa

    aget-byte v15, v15, v16

    if-eqz v15, :cond_4

    :cond_3
    add-int/lit8 v15, v9, -0x4

    if-ltz v15, :cond_5

    aget-object v15, v12, v10

    add-int/lit8 v16, v9, -0x1

    aget-byte v15, v15, v16

    if-nez v15, :cond_5

    aget-object v15, v12, v10

    add-int/lit8 v16, v9, -0x2

    aget-byte v15, v15, v16

    if-nez v15, :cond_5

    aget-object v15, v12, v10

    add-int/lit8 v16, v9, -0x3

    aget-byte v15, v15, v16

    if-nez v15, :cond_5

    aget-object v15, v12, v10

    add-int/lit8 v16, v9, -0x4

    aget-byte v15, v15, v16

    if-nez v15, :cond_5

    .line 15095
    :cond_4
    add-int/lit8 v8, v8, 0x28

    .line 15097
    :cond_5
    add-int/lit8 v15, v10, 0x6

    if-ge v15, v14, :cond_8

    aget-object v15, v12, v10

    aget-byte v15, v15, v9

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_8

    add-int/lit8 v15, v10, 0x1

    aget-object v15, v12, v15

    aget-byte v15, v15, v9

    if-nez v15, :cond_8

    add-int/lit8 v15, v10, 0x2

    aget-object v15, v12, v15

    aget-byte v15, v15, v9

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_8

    add-int/lit8 v15, v10, 0x3

    aget-object v15, v12, v15

    aget-byte v15, v15, v9

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_8

    add-int/lit8 v15, v10, 0x4

    aget-object v15, v12, v15

    aget-byte v15, v15, v9

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_8

    add-int/lit8 v15, v10, 0x5

    aget-object v15, v12, v15

    aget-byte v15, v15, v9

    if-nez v15, :cond_8

    add-int/lit8 v15, v10, 0x6

    aget-object v15, v12, v15

    aget-byte v15, v15, v9

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_8

    add-int/lit8 v15, v10, 0xa

    if-ge v15, v14, :cond_6

    add-int/lit8 v15, v10, 0x7

    aget-object v15, v12, v15

    aget-byte v15, v15, v9

    if-nez v15, :cond_6

    add-int/lit8 v15, v10, 0x8

    aget-object v15, v12, v15

    aget-byte v15, v15, v9

    if-nez v15, :cond_6

    add-int/lit8 v15, v10, 0x9

    aget-object v15, v12, v15

    aget-byte v15, v15, v9

    if-nez v15, :cond_6

    add-int/lit8 v15, v10, 0xa

    aget-object v15, v12, v15

    aget-byte v15, v15, v9

    if-eqz v15, :cond_7

    :cond_6
    add-int/lit8 v15, v10, -0x4

    if-ltz v15, :cond_8

    add-int/lit8 v15, v10, -0x1

    aget-object v15, v12, v15

    aget-byte v15, v15, v9

    if-nez v15, :cond_8

    add-int/lit8 v15, v10, -0x2

    aget-object v15, v12, v15

    aget-byte v15, v15, v9

    if-nez v15, :cond_8

    add-int/lit8 v15, v10, -0x3

    aget-object v15, v12, v15

    aget-byte v15, v15, v9

    if-nez v15, :cond_8

    add-int/lit8 v15, v10, -0x4

    aget-object v15, v12, v15

    aget-byte v15, v15, v9

    if-nez v15, :cond_8

    .line 15110
    :cond_7
    add-int/lit8 v8, v8, 0x28

    .line 15080
    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_4

    .line 15079
    :cond_9
    add-int/lit8 v9, v10, 0x1

    move v10, v9

    move v9, v8

    goto/16 :goto_3

    .line 11061
    :cond_a
    add-int/2addr v11, v9

    .line 18123
    const/4 v9, 0x0

    .line 19057
    move-object/from16 v0, p3

    iget-object v12, v0, Lixs;->a:[[B

    .line 20049
    move-object/from16 v0, p3

    iget v13, v0, Lixs;->b:I

    .line 21045
    move-object/from16 v0, p3

    iget v14, v0, Lixs;->c:I

    .line 18127
    const/4 v8, 0x0

    move v10, v8

    :goto_5
    if-ge v10, v14, :cond_d

    .line 18128
    aget-object v15, v12, v10

    .line 18129
    const/4 v8, 0x0

    move/from16 v18, v8

    move v8, v9

    move/from16 v9, v18

    :goto_6
    if-ge v9, v13, :cond_c

    .line 18130
    aget-byte v16, v15, v9

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_b

    .line 18131
    add-int/lit8 v8, v8, 0x1

    .line 18129
    :cond_b
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 18127
    :cond_c
    add-int/lit8 v9, v10, 0x1

    move v10, v9

    move v9, v8

    goto :goto_5

    .line 22045
    :cond_d
    move-object/from16 v0, p3

    iget v8, v0, Lixs;->c:I

    .line 22049
    move-object/from16 v0, p3

    iget v10, v0, Lixs;->b:I

    .line 18135
    mul-int/2addr v8, v10

    .line 18136
    int-to-double v12, v9

    int-to-double v8, v8

    div-double v8, v12, v8

    .line 18137
    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v8, v12

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const-wide/high16 v12, 0x4034000000000000L    # 20.0

    mul-double/2addr v8, v12

    double-to-int v8, v8

    .line 18141
    mul-int/lit8 v8, v8, 0xa

    .line 11062
    add-int v7, v11, v8

    .line 260
    .local v7, "penalty":I
    if-ge v7, v6, :cond_e

    .line 261
    move v6, v7

    .line 262
    move v4, v5

    .line 257
    :cond_e
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 265
    .end local v7    # "penalty":I
    :cond_f
    return v4
.end method

.method private static a(Lixk;III)Lixk;
    .locals 22
    .param p0, "bits"    # Lixk;
    .param p1, "numTotalBytes"    # I
    .param p2, "numDataBytes"    # I
    .param p3, "numRSBlocks"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 382
    invoke-virtual/range {p0 .. p0}, Lixk;->a()I

    move-result v14

    move/from16 v0, p2

    if-eq v14, v0, :cond_0

    .line 383
    new-instance v14, Lcom/google/zxing/WriterException;

    const-string/jumbo v15, "Number of bits and data bytes does not match"

    invoke-direct {v14, v15}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 391
    :cond_0
    const/4 v5, 0x0

    .line 392
    .local v5, "dataBytesOffset":I
    const/4 v8, 0x0

    .line 393
    .local v8, "maxNumDataBytes":I
    const/4 v9, 0x0

    .line 397
    .local v9, "maxNumEcBytes":I
    new-instance v3, Ljava/util/ArrayList;

    move/from16 v0, p3

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 399
    .local v3, "blocks":Ljava/util/Collection;, "Ljava/util/Collection<Lixr;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    move/from16 v0, p3

    if-ge v7, v0, :cond_6

    .line 400
    const/4 v14, 0x1

    new-array v10, v14, [I

    .line 401
    .local v10, "numDataBytesInBlock":[I
    const/4 v14, 0x1

    new-array v11, v14, [I

    .line 27330
    .local v11, "numEcBytesInBlock":[I
    move/from16 v0, p3

    if-lt v7, v0, :cond_1

    .line 27331
    new-instance v14, Lcom/google/zxing/WriterException;

    const-string/jumbo v15, "Block ID too large"

    invoke-direct {v14, v15}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 27334
    :cond_1
    rem-int v14, p1, p3

    .line 27336
    sub-int v15, p3, v14

    .line 27338
    div-int v16, p1, p3

    .line 27340
    add-int/lit8 v17, v16, 0x1

    .line 27342
    div-int v18, p2, p3

    .line 27344
    add-int/lit8 v19, v18, 0x1

    .line 27346
    sub-int v16, v16, v18

    .line 27348
    sub-int v17, v17, v19

    .line 27351
    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_2

    .line 27352
    new-instance v14, Lcom/google/zxing/WriterException;

    const-string/jumbo v15, "EC bytes mismatch"

    invoke-direct {v14, v15}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 27355
    :cond_2
    add-int v20, v15, v14

    move/from16 v0, p3

    move/from16 v1, v20

    if-eq v0, v1, :cond_3

    .line 27356
    new-instance v14, Lcom/google/zxing/WriterException;

    const-string/jumbo v15, "RS blocks mismatch"

    invoke-direct {v14, v15}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 27359
    :cond_3
    add-int v20, v18, v16

    mul-int v20, v20, v15

    add-int v21, v19, v17

    mul-int v14, v14, v21

    add-int v14, v14, v20

    move/from16 v0, p1

    if-eq v0, v14, :cond_4

    .line 27361
    new-instance v14, Lcom/google/zxing/WriterException;

    const-string/jumbo v15, "Total bytes mismatch"

    invoke-direct {v14, v15}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 27364
    :cond_4
    if-ge v7, v15, :cond_5

    .line 27365
    const/4 v14, 0x0

    aput v18, v10, v14

    .line 27366
    const/4 v14, 0x0

    aput v16, v11, v14

    .line 405
    :goto_1
    const/4 v14, 0x0

    aget v13, v10, v14

    .line 406
    .local v13, "size":I
    new-array v4, v13, [B

    .line 407
    .local v4, "dataBytes":[B
    mul-int/lit8 v14, v5, 0x8

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v4, v15, v13}, Lixk;->a(I[BII)V

    .line 408
    const/4 v14, 0x0

    aget v14, v11, v14

    invoke-static {v4, v14}, Lixt;->a([BI)[B

    move-result-object v6

    .line 409
    .local v6, "ecBytes":[B
    new-instance v14, Lixr;

    invoke-direct {v14, v4, v6}, Lixr;-><init>([B[B)V

    invoke-interface {v3, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 411
    invoke-static {v8, v13}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 412
    array-length v14, v6

    invoke-static {v9, v14}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 413
    const/4 v14, 0x0

    aget v14, v10, v14

    add-int/2addr v5, v14

    .line 399
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 27368
    .end local v4    # "dataBytes":[B
    .end local v6    # "ecBytes":[B
    .end local v13    # "size":I
    :cond_5
    const/4 v14, 0x0

    aput v19, v10, v14

    .line 27369
    const/4 v14, 0x0

    aput v17, v11, v14

    goto :goto_1

    .line 415
    .end local v10    # "numDataBytesInBlock":[I
    .end local v11    # "numEcBytesInBlock":[I
    :cond_6
    move/from16 v0, p2

    if-eq v0, v5, :cond_7

    .line 416
    new-instance v14, Lcom/google/zxing/WriterException;

    const-string/jumbo v15, "Data bytes does not match offset"

    invoke-direct {v14, v15}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 419
    :cond_7
    new-instance v12, Lixk;

    invoke-direct {v12}, Lixk;-><init>()V

    .line 422
    .local v12, "result":Lixk;
    const/4 v7, 0x0

    :goto_2
    if-ge v7, v8, :cond_a

    .line 423
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_8
    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_9

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lixr;

    .line 28030
    .local v2, "block":Lixr;
    iget-object v4, v2, Lixr;->a:[B

    .line 425
    .restart local v4    # "dataBytes":[B
    array-length v15, v4

    if-ge v7, v15, :cond_8

    .line 426
    aget-byte v15, v4, v7

    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Lixk;->a(II)V

    goto :goto_3

    .line 422
    .end local v2    # "block":Lixr;
    .end local v4    # "dataBytes":[B
    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 431
    :cond_a
    const/4 v7, 0x0

    :goto_4
    if-ge v7, v9, :cond_d

    .line 432
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_b
    :goto_5
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_c

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lixr;

    .line 28034
    .restart local v2    # "block":Lixr;
    iget-object v6, v2, Lixr;->b:[B

    .line 434
    .restart local v6    # "ecBytes":[B
    array-length v15, v6

    if-ge v7, v15, :cond_b

    .line 435
    aget-byte v15, v6, v7

    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Lixk;->a(II)V

    goto :goto_5

    .line 431
    .end local v2    # "block":Lixr;
    .end local v6    # "ecBytes":[B
    :cond_c
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 439
    :cond_d
    invoke-virtual {v12}, Lixk;->a()I

    move-result v14

    move/from16 v0, p1

    if-eq v0, v14, :cond_e

    .line 440
    new-instance v14, Lcom/google/zxing/WriterException;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "Interleaving error: "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " and "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 441
    invoke-virtual {v12}, Lixk;->a()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " differ."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 444
    :cond_e
    return-object v12
.end method

.method private static a(ILcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lixq;
    .locals 9
    .param p0, "numInputBits"    # I
    .param p1, "ecLevel"    # Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 271
    const/4 v6, 0x7

    .local v6, "versionNum":I
    :goto_0
    const/16 v7, 0x28

    if-gt v6, v7, :cond_1

    .line 272
    invoke-static {v6}, Lixq;->a(I)Lixq;

    move-result-object v5

    .line 22071
    .local v5, "version":Lixq;
    iget v1, v5, Lixq;->b:I

    .line 276
    .local v1, "numBytes":I
    invoke-virtual {v5, p1}, Lixq;->a(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lixq$b;

    move-result-object v0

    .line 277
    .local v0, "ecBlocks":Lixq$b;
    invoke-virtual {v0}, Lixq$b;->b()I

    move-result v3

    .line 279
    .local v3, "numEcBytes":I
    sub-int v2, v1, v3

    .line 280
    .local v2, "numDataBytes":I
    add-int/lit8 v7, p0, 0x7

    div-int/lit8 v4, v7, 0x8

    .line 281
    .local v4, "totalInputBytes":I
    if-lt v2, v4, :cond_0

    .line 282
    return-object v5

    .line 271
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 285
    .end local v0    # "ecBlocks":Lixq$b;
    .end local v1    # "numBytes":I
    .end local v2    # "numDataBytes":I
    .end local v3    # "numEcBytes":I
    .end local v4    # "totalInputBytes":I
    .end local v5    # "version":Lixq;
    :cond_1
    new-instance v7, Lcom/google/zxing/WriterException;

    const-string/jumbo v8, "Data too big"

    invoke-direct {v7, v8}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public static a(Ljava/lang/String;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Ljava/util/Map;)Lixw;
    .locals 25
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "ecLevel"    # Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/EncodeHintType;",
            "*>;)",
            "Lixw;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 88
    .local p2, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;*>;"
    if-nez p2, :cond_2

    const/4 v7, 0x0

    .line 90
    .local v7, "encoding":Ljava/lang/String;
    :goto_0
    if-nez v7, :cond_0

    .line 91
    const-string/jumbo v7, "ISO-8859-1"

    .line 1204
    :cond_0
    const-string/jumbo v20, "Shift_JIS"

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 1206
    invoke-static/range {p0 .. p0}, Lixt;->a(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_3

    sget-object v13, Lcom/google/zxing/qrcode/decoder/Mode;->KANJI:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 102
    .local v13, "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    :goto_1
    new-instance v10, Lixk;

    invoke-direct {v10}, Lixk;-><init>()V

    .line 105
    .local v10, "headerBits":Lixk;
    sget-object v20, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    move-object/from16 v0, v20

    if-ne v13, v0, :cond_1

    const-string/jumbo v20, "ISO-8859-1"

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_1

    .line 107
    invoke-static {v7}, Lcom/google/zxing/common/CharacterSetECI;->getCharacterSetECIByName(Ljava/lang/String;)Lcom/google/zxing/common/CharacterSetECI;

    move-result-object v6

    .line 108
    .local v6, "eci":Lcom/google/zxing/common/CharacterSetECI;
    if-eqz v6, :cond_1

    .line 1597
    sget-object v20, Lcom/google/zxing/qrcode/decoder/Mode;->ECI:Lcom/google/zxing/qrcode/decoder/Mode;

    invoke-virtual/range {v20 .. v20}, Lcom/google/zxing/qrcode/decoder/Mode;->getBits()I

    move-result v20

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Lixk;->a(II)V

    .line 1599
    invoke-virtual {v6}, Lcom/google/zxing/common/CharacterSetECI;->getValue()I

    move-result v20

    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Lixk;->a(II)V

    .line 2467
    .end local v6    # "eci":Lcom/google/zxing/common/CharacterSetECI;
    :cond_1
    invoke-virtual {v13}, Lcom/google/zxing/qrcode/decoder/Mode;->getBits()I

    move-result v20

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Lixk;->a(II)V

    .line 119
    new-instance v3, Lixk;

    invoke-direct {v3}, Lixk;-><init>()V

    .line 2489
    .local v3, "dataBits":Lixk;
    sget-object v20, Lixt$1;->a:[I

    invoke-virtual {v13}, Lcom/google/zxing/qrcode/decoder/Mode;->ordinal()I

    move-result v21

    aget v20, v20, v21

    packed-switch v20, :pswitch_data_0

    .line 2503
    new-instance v20, Lcom/google/zxing/WriterException;

    new-instance v21, Ljava/lang/StringBuilder;

    const-string/jumbo v22, "Invalid mode: "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 88
    .end local v3    # "dataBits":Lixk;
    .end local v7    # "encoding":Ljava/lang/String;
    .end local v10    # "headerBits":Lixk;
    .end local v13    # "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    :cond_2
    sget-object v20, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    .line 89
    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v7, v20

    goto/16 :goto_0

    .line 1206
    .restart local v7    # "encoding":Ljava/lang/String;
    :cond_3
    sget-object v13, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    goto :goto_1

    .line 1208
    :cond_4
    const/16 v22, 0x0

    .line 1209
    const/16 v21, 0x0

    .line 1210
    const/16 v20, 0x0

    :goto_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v23

    move/from16 v0, v20

    move/from16 v1, v23

    if-ge v0, v1, :cond_7

    .line 1211
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v23

    .line 1212
    const/16 v24, 0x30

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_5

    const/16 v24, 0x39

    move/from16 v0, v23

    move/from16 v1, v24

    if-gt v0, v1, :cond_5

    .line 1213
    const/16 v22, 0x1

    .line 1210
    :goto_3
    add-int/lit8 v20, v20, 0x1

    goto :goto_2

    .line 1214
    :cond_5
    invoke-static/range {v23 .. v23}, Lixt;->a(I)I

    move-result v21

    const/16 v23, -0x1

    move/from16 v0, v21

    move/from16 v1, v23

    if-eq v0, v1, :cond_6

    .line 1215
    const/16 v21, 0x1

    goto :goto_3

    .line 1217
    :cond_6
    sget-object v13, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    goto/16 :goto_1

    .line 1220
    :cond_7
    if-eqz v21, :cond_8

    .line 1221
    sget-object v13, Lcom/google/zxing/qrcode/decoder/Mode;->ALPHANUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    goto/16 :goto_1

    .line 1223
    :cond_8
    if-eqz v22, :cond_9

    .line 1224
    sget-object v13, Lcom/google/zxing/qrcode/decoder/Mode;->NUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    goto/16 :goto_1

    .line 1226
    :cond_9
    sget-object v13, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    goto/16 :goto_1

    .line 2508
    .restart local v3    # "dataBits":Lixk;
    .restart local v10    # "headerBits":Lixk;
    .restart local v13    # "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    :pswitch_0
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v21

    .line 2509
    const/16 v20, 0x0

    .line 2510
    :goto_4
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_f

    .line 2511
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v22

    add-int/lit8 v22, v22, -0x30

    .line 2512
    add-int/lit8 v23, v20, 0x2

    move/from16 v0, v23

    move/from16 v1, v21

    if-ge v0, v1, :cond_a

    .line 2514
    add-int/lit8 v23, v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v23

    add-int/lit8 v23, v23, -0x30

    .line 2515
    add-int/lit8 v24, v20, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v24

    add-int/lit8 v24, v24, -0x30

    .line 2516
    mul-int/lit8 v22, v22, 0x64

    mul-int/lit8 v23, v23, 0xa

    add-int v22, v22, v23

    add-int v22, v22, v24

    const/16 v23, 0xa

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v3, v0, v1}, Lixk;->a(II)V

    .line 2517
    add-int/lit8 v20, v20, 0x3

    .line 2518
    goto :goto_4

    :cond_a
    add-int/lit8 v23, v20, 0x1

    move/from16 v0, v23

    move/from16 v1, v21

    if-ge v0, v1, :cond_b

    .line 2520
    add-int/lit8 v23, v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v23

    add-int/lit8 v23, v23, -0x30

    .line 2521
    mul-int/lit8 v22, v22, 0xa

    add-int v22, v22, v23

    const/16 v23, 0x7

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v3, v0, v1}, Lixk;->a(II)V

    .line 2522
    add-int/lit8 v20, v20, 0x2

    .line 2523
    goto :goto_4

    .line 2525
    :cond_b
    const/16 v23, 0x4

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v3, v0, v1}, Lixk;->a(II)V

    .line 2526
    add-int/lit8 v20, v20, 0x1

    .line 2528
    goto :goto_4

    .line 2533
    :pswitch_1
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v21

    .line 2534
    const/16 v20, 0x0

    .line 2535
    :goto_5
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_f

    .line 2536
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v22

    invoke-static/range {v22 .. v22}, Lixt;->a(I)I

    move-result v22

    .line 2537
    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_c

    .line 2538
    new-instance v20, Lcom/google/zxing/WriterException;

    invoke-direct/range {v20 .. v20}, Lcom/google/zxing/WriterException;-><init>()V

    throw v20

    .line 2540
    :cond_c
    add-int/lit8 v23, v20, 0x1

    move/from16 v0, v23

    move/from16 v1, v21

    if-ge v0, v1, :cond_e

    .line 2541
    add-int/lit8 v23, v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v23

    invoke-static/range {v23 .. v23}, Lixt;->a(I)I

    move-result v23

    .line 2542
    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_d

    .line 2543
    new-instance v20, Lcom/google/zxing/WriterException;

    invoke-direct/range {v20 .. v20}, Lcom/google/zxing/WriterException;-><init>()V

    throw v20

    .line 2546
    :cond_d
    mul-int/lit8 v22, v22, 0x2d

    add-int v22, v22, v23

    const/16 v23, 0xb

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v3, v0, v1}, Lixk;->a(II)V

    .line 2547
    add-int/lit8 v20, v20, 0x2

    .line 2548
    goto :goto_5

    .line 2550
    :cond_e
    const/16 v23, 0x6

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v3, v0, v1}, Lixk;->a(II)V

    .line 2551
    add-int/lit8 v20, v20, 0x1

    .line 2553
    goto :goto_5

    .line 2497
    :pswitch_2
    move-object/from16 v0, p0

    invoke-static {v0, v3, v7}, Lixt;->a(Ljava/lang/String;Lixk;Ljava/lang/String;)V

    .line 3046
    :cond_f
    :goto_6
    iget v0, v10, Lixk;->b:I

    move/from16 v20, v0

    .line 128
    const/16 v21, 0x1

    .line 129
    invoke-static/range {v21 .. v21}, Lixq;->a(I)Lixq;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/google/zxing/qrcode/decoder/Mode;->getCharacterCountBits(Lixq;)I

    move-result v21

    add-int v20, v20, v21

    .line 4046
    iget v0, v3, Lixk;->b:I

    move/from16 v21, v0

    .line 130
    add-int v16, v20, v21

    .line 131
    .local v16, "provisionalBitsNeeded":I
    move/from16 v0, v16

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lixt;->a(ILcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lixq;

    move-result-object v17

    .line 5046
    .local v17, "provisionalVersion":Lixq;
    iget v0, v10, Lixk;->b:I

    move/from16 v20, v0

    .line 138
    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/google/zxing/qrcode/decoder/Mode;->getCharacterCountBits(Lixq;)I

    move-result v21

    add-int v20, v20, v21

    .line 6046
    iget v0, v3, Lixk;->b:I

    move/from16 v21, v0

    .line 139
    add-int v2, v20, v21

    .line 140
    .local v2, "bitsNeeded":I
    move-object/from16 v0, p1

    invoke-static {v2, v0}, Lixt;->a(ILcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lixq;

    move-result-object v19

    .line 142
    .local v19, "version":Lixq;
    new-instance v9, Lixk;

    invoke-direct {v9}, Lixk;-><init>()V

    .line 143
    .local v9, "headerAndDataBits":Lixk;
    invoke-virtual {v9, v10}, Lixk;->a(Lixk;)V

    .line 145
    sget-object v20, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    move-object/from16 v0, v20

    if-ne v13, v0, :cond_10

    invoke-virtual {v3}, Lixk;->a()I

    move-result v15

    .line 6475
    .local v15, "numLetters":I
    :goto_7
    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/google/zxing/qrcode/decoder/Mode;->getCharacterCountBits(Lixq;)I

    move-result v20

    .line 6476
    const/16 v21, 0x1

    shl-int v21, v21, v20

    move/from16 v0, v21

    if-lt v15, v0, :cond_11

    .line 6477
    new-instance v21, Lcom/google/zxing/WriterException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " is bigger than "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const/16 v23, 0x1

    shl-int v20, v23, v20

    add-int/lit8 v20, v20, -0x1

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 2500
    .end local v2    # "bitsNeeded":I
    .end local v9    # "headerAndDataBits":Lixk;
    .end local v15    # "numLetters":I
    .end local v16    # "provisionalBitsNeeded":I
    .end local v17    # "provisionalVersion":Lixq;
    .end local v19    # "version":Lixq;
    :pswitch_3
    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lixt;->a(Ljava/lang/String;Lixk;)V

    goto/16 :goto_6

    .line 146
    .restart local v2    # "bitsNeeded":I
    .restart local v9    # "headerAndDataBits":Lixk;
    .restart local v16    # "provisionalBitsNeeded":I
    .restart local v17    # "provisionalVersion":Lixq;
    .restart local v19    # "version":Lixq;
    :cond_10
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v15

    goto :goto_7

    .line 6480
    .restart local v15    # "numLetters":I
    :cond_11
    move/from16 v0, v20

    invoke-virtual {v9, v15, v0}, Lixk;->a(II)V

    .line 149
    invoke-virtual {v9, v3}, Lixk;->a(Lixk;)V

    .line 151
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lixq;->a(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lixq$b;

    move-result-object v5

    .line 7071
    .local v5, "ecBlocks":Lixq$b;
    move-object/from16 v0, v19

    iget v0, v0, Lixq;->b:I

    move/from16 v20, v0

    .line 153
    invoke-virtual {v5}, Lixq$b;->b()I

    move-result v21

    sub-int v14, v20, v21

    .line 156
    .local v14, "numDataBytes":I
    invoke-static {v14, v9}, Lixt;->a(ILixk;)V

    .line 8071
    move-object/from16 v0, v19

    iget v0, v0, Lixq;->b:I

    move/from16 v20, v0

    .line 161
    invoke-virtual {v5}, Lixq$b;->a()I

    move-result v21

    .line 159
    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v9, v0, v14, v1}, Lixt;->a(Lixk;III)Lixk;

    move-result-object v8

    .line 163
    .local v8, "finalBits":Lixk;
    new-instance v18, Lixw;

    invoke-direct/range {v18 .. v18}, Lixw;-><init>()V

    .line 8091
    .local v18, "qrCode":Lixw;
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    iput-object v0, v1, Lixw;->b:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    .line 9087
    move-object/from16 v0, v18

    iput-object v13, v0, Lixw;->a:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 9095
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lixw;->c:Lixq;

    .line 10075
    move-object/from16 v0, v19

    iget v0, v0, Lixq;->a:I

    move/from16 v20, v0

    mul-int/lit8 v20, v20, 0x4

    add-int/lit8 v4, v20, 0x11

    .line 171
    .local v4, "dimension":I
    new-instance v12, Lixs;

    invoke-direct {v12, v4, v4}, Lixs;-><init>(II)V

    .line 172
    .local v12, "matrix":Lixs;
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-static {v8, v0, v1, v12}, Lixt;->a(Lixk;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lixq;Lixs;)I

    move-result v11

    .line 10099
    .local v11, "maskPattern":I
    move-object/from16 v0, v18

    iput v11, v0, Lixw;->d:I

    .line 177
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-static {v8, v0, v1, v11, v12}, Lixv;->a(Lixk;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lixq;ILixs;)V

    .line 10103
    move-object/from16 v0, v18

    iput-object v12, v0, Lixw;->e:Lixs;

    .line 180
    return-object v18

    .line 2489
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static a(ILixk;)V
    .locals 7
    .param p0, "numDataBytes"    # I
    .param p1, "bits"    # Lixk;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 293
    shl-int/lit8 v0, p0, 0x3

    .line 23046
    .local v0, "capacity":I
    iget v4, p1, Lixk;->b:I

    .line 294
    if-le v4, v0, :cond_0

    .line 295
    new-instance v4, Lcom/google/zxing/WriterException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "data bits cannot fit in the QR Code"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24046
    iget v6, p1, Lixk;->b:I

    .line 296
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " > "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 298
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v4, 0x4

    if-ge v1, v4, :cond_1

    .line 25046
    iget v4, p1, Lixk;->b:I

    .line 298
    if-ge v4, v0, :cond_1

    .line 299
    invoke-virtual {p1, v5}, Lixk;->a(Z)V

    .line 298
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 26046
    :cond_1
    iget v4, p1, Lixk;->b:I

    .line 304
    and-int/lit8 v2, v4, 0x7

    .line 305
    .local v2, "numBitsInLastByte":I
    if-lez v2, :cond_2

    .line 306
    move v1, v2

    :goto_1
    if-ge v1, v6, :cond_2

    .line 307
    invoke-virtual {p1, v5}, Lixk;->a(Z)V

    .line 306
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 312
    :cond_2
    invoke-virtual {p1}, Lixk;->a()I

    move-result v4

    sub-int v3, p0, v4

    .line 313
    .local v3, "numPaddingBytes":I
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v3, :cond_4

    .line 314
    and-int/lit8 v4, v1, 0x1

    if-nez v4, :cond_3

    const/16 v4, 0xec

    :goto_3
    invoke-virtual {p1, v4, v6}, Lixk;->a(II)V

    .line 313
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 314
    :cond_3
    const/16 v4, 0x11

    goto :goto_3

    .line 27046
    :cond_4
    iget v4, p1, Lixk;->b:I

    .line 316
    if-eq v4, v0, :cond_5

    .line 317
    new-instance v4, Lcom/google/zxing/WriterException;

    const-string/jumbo v5, "Bits size does not equal capacity"

    invoke-direct {v4, v5}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 319
    :cond_5
    return-void
.end method

.method private static a(Ljava/lang/String;Lixk;)V
    .locals 12
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "bits"    # Lixk;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    const v11, 0x8140

    .line 573
    :try_start_0
    const-string/jumbo v9, "Shift_JIS"

    invoke-virtual {p0, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 577
    .local v2, "bytes":[B
    array-length v6, v2

    .line 578
    .local v6, "length":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v6, :cond_3

    .line 579
    aget-byte v9, v2, v5

    and-int/lit16 v0, v9, 0xff

    .line 580
    .local v0, "byte1":I
    add-int/lit8 v9, v5, 0x1

    aget-byte v9, v2, v9

    and-int/lit16 v1, v9, 0xff

    .line 581
    .local v1, "byte2":I
    shl-int/lit8 v9, v0, 0x8

    or-int v3, v9, v1

    .line 582
    .local v3, "code":I
    const/4 v7, -0x1

    .line 583
    .local v7, "subtracted":I
    if-lt v3, v11, :cond_1

    const v9, 0x9ffc

    if-gt v3, v9, :cond_1

    .line 584
    sub-int v7, v3, v11

    .line 588
    :cond_0
    :goto_1
    const/4 v9, -0x1

    if-ne v7, v9, :cond_2

    .line 589
    new-instance v9, Lcom/google/zxing/WriterException;

    const-string/jumbo v10, "Invalid byte sequence"

    invoke-direct {v9, v10}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 574
    .end local v0    # "byte1":I
    .end local v1    # "byte2":I
    .end local v2    # "bytes":[B
    .end local v3    # "code":I
    .end local v5    # "i":I
    .end local v6    # "length":I
    .end local v7    # "subtracted":I
    :catch_0
    move-exception v8

    .line 575
    .local v8, "uee":Ljava/io/UnsupportedEncodingException;
    new-instance v9, Lcom/google/zxing/WriterException;

    invoke-direct {v9, v8}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/Throwable;)V

    throw v9

    .line 585
    .end local v8    # "uee":Ljava/io/UnsupportedEncodingException;
    .restart local v0    # "byte1":I
    .restart local v1    # "byte2":I
    .restart local v2    # "bytes":[B
    .restart local v3    # "code":I
    .restart local v5    # "i":I
    .restart local v6    # "length":I
    .restart local v7    # "subtracted":I
    :cond_1
    const v9, 0xe040

    if-lt v3, v9, :cond_0

    const v9, 0xebbf

    if-gt v3, v9, :cond_0

    .line 586
    const v9, 0xc140

    sub-int v7, v3, v9

    goto :goto_1

    .line 591
    :cond_2
    shr-int/lit8 v9, v7, 0x8

    mul-int/lit16 v9, v9, 0xc0

    and-int/lit16 v10, v7, 0xff

    add-int v4, v9, v10

    .line 592
    .local v4, "encoded":I
    const/16 v9, 0xd

    invoke-virtual {p1, v4, v9}, Lixk;->a(II)V

    .line 578
    add-int/lit8 v5, v5, 0x2

    goto :goto_0

    .line 594
    .end local v0    # "byte1":I
    .end local v1    # "byte2":I
    .end local v3    # "code":I
    .end local v4    # "encoded":I
    .end local v7    # "subtracted":I
    :cond_3
    return-void
.end method

.method private static a(Ljava/lang/String;Lixk;Ljava/lang/String;)V
    .locals 6
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "bits"    # Lixk;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 560
    :try_start_0
    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 564
    .local v1, "bytes":[B
    array-length v4, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-byte v0, v1, v3

    .line 565
    .local v0, "b":B
    const/16 v5, 0x8

    invoke-virtual {p1, v0, v5}, Lixk;->a(II)V

    .line 564
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 561
    .end local v0    # "b":B
    .end local v1    # "bytes":[B
    :catch_0
    move-exception v2

    .line 562
    .local v2, "uee":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Lcom/google/zxing/WriterException;

    invoke-direct {v3, v2}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 567
    .end local v2    # "uee":Ljava/io/UnsupportedEncodingException;
    .restart local v1    # "bytes":[B
    :cond_0
    return-void
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 6
    .param p0, "content"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 232
    :try_start_0
    const-string/jumbo v5, "Shift_JIS"

    invoke-virtual {p0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 236
    .local v1, "bytes":[B
    array-length v3, v1

    .line 237
    .local v3, "length":I
    rem-int/lit8 v5, v3, 0x2

    if-eqz v5, :cond_1

    .line 247
    .end local v1    # "bytes":[B
    .end local v3    # "length":I
    :cond_0
    :goto_0
    return v4

    .line 240
    .restart local v1    # "bytes":[B
    .restart local v3    # "length":I
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_4

    .line 241
    aget-byte v5, v1, v2

    and-int/lit16 v0, v5, 0xff

    .line 242
    .local v0, "byte1":I
    const/16 v5, 0x81

    if-lt v0, v5, :cond_2

    const/16 v5, 0x9f

    if-le v0, v5, :cond_3

    :cond_2
    const/16 v5, 0xe0

    if-lt v0, v5, :cond_0

    const/16 v5, 0xeb

    if-gt v0, v5, :cond_0

    .line 240
    :cond_3
    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    .line 247
    .end local v0    # "byte1":I
    :cond_4
    const/4 v4, 0x1

    goto :goto_0

    .line 234
    .end local v1    # "bytes":[B
    .end local v2    # "i":I
    .end local v3    # "length":I
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method private static a([BI)[B
    .locals 11
    .param p0, "dataBytes"    # [B
    .param p1, "numEcBytesInBlock"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v5, 0x0

    .line 448
    array-length v2, p0

    .line 449
    .local v2, "numDataBytes":I
    add-int v4, v2, p1

    new-array v3, v4, [I

    .line 450
    .local v3, "toEncode":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 451
    aget-byte v4, p0, v1

    and-int/lit16 v4, v4, 0xff

    aput v4, v3, v1

    .line 450
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 453
    :cond_0
    new-instance v4, Lixo;

    sget-object v6, Lixm;->e:Lixm;

    invoke-direct {v4, v6}, Lixo;-><init>(Lixm;)V

    .line 28061
    if-nez p1, :cond_1

    .line 28062
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "No error correction bytes"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 28064
    :cond_1
    array-length v6, v3

    sub-int/2addr v6, p1

    .line 28065
    if-gtz v6, :cond_2

    .line 28066
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "No data bytes provided"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 28068
    :cond_2
    invoke-virtual {v4, p1}, Lixo;->a(I)Lixn;

    move-result-object v7

    .line 28069
    new-array v8, v6, [I

    .line 28070
    invoke-static {v3, v5, v8, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 28071
    new-instance v9, Lixn;

    iget-object v4, v4, Lixo;->a:Lixm;

    invoke-direct {v9, v4, v8}, Lixn;-><init>(Lixm;[I)V

    .line 28072
    invoke-virtual {v9, p1, v10}, Lixn;->a(II)Lixn;

    move-result-object v4

    .line 28073
    invoke-virtual {v4, v7}, Lixn;->a(Lixn;)[Lixn;

    move-result-object v4

    aget-object v4, v4, v10

    .line 29080
    iget-object v7, v4, Lixn;->b:[I

    .line 28075
    array-length v4, v7

    sub-int v8, p1, v4

    move v4, v5

    .line 28076
    :goto_1
    if-ge v4, v8, :cond_3

    .line 28077
    add-int v9, v6, v4

    aput v5, v3, v9

    .line 28076
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 28079
    :cond_3
    add-int v4, v6, v8

    array-length v6, v7

    invoke-static {v7, v5, v3, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 456
    new-array v0, p1, [B

    .line 457
    .local v0, "ecBytes":[B
    const/4 v1, 0x0

    :goto_2
    if-ge v1, p1, :cond_4

    .line 458
    add-int v4, v2, v1

    aget v4, v3, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 457
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 460
    :cond_4
    return-object v0
.end method
