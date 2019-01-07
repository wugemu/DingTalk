.class final Liye;
.super Ljava/lang/Object;
.source "InfCodes.java"


# static fields
.field static final a:[I


# instance fields
.field b:I

.field c:I

.field d:[I

.field e:I

.field f:I

.field g:I

.field h:I

.field i:I

.field j:B

.field k:B

.field l:[I

.field m:I

.field n:[I

.field o:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Liye;->a:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x3
        0x7
        0xf
        0x1f
        0x3f
        0x7f
        0xff
        0x1ff
        0x3ff
        0x7ff
        0xfff
        0x1fff
        0x3fff
        0x7fff
        0xffff
    .end array-data
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Liye;->e:I

    .line 93
    return-void
.end method

.method static a(II[II[IILiyd;Liyl;)I
    .locals 30
    .param p0, "bl"    # I
    .param p1, "bd"    # I
    .param p2, "tl"    # [I
    .param p3, "tl_index"    # I
    .param p4, "td"    # [I
    .param p5, "td_index"    # I
    .param p6, "s"    # Liyd;
    .param p7, "z"    # Liyl;

    .prologue
    .line 424
    move-object/from16 v0, p7

    iget v15, v0, Liyl;->b:I

    .local v15, "p":I
    move-object/from16 v0, p7

    iget v14, v0, Liyl;->c:I

    .local v14, "n":I
    move-object/from16 v0, p6

    iget v6, v0, Liyd;->m:I

    .local v6, "b":I
    move-object/from16 v0, p6

    iget v10, v0, Liyd;->l:I

    .line 425
    .local v10, "k":I
    move-object/from16 v0, p6

    iget v0, v0, Liyd;->r:I

    move/from16 v17, v0

    .local v17, "q":I
    move-object/from16 v0, p6

    iget v0, v0, Liyd;->q:I

    move/from16 v25, v0

    move/from16 v0, v17

    move/from16 v1, v25

    if-ge v0, v1, :cond_0

    move-object/from16 v0, p6

    iget v0, v0, Liyd;->q:I

    move/from16 v25, v0

    sub-int v25, v25, v17

    add-int/lit8 v11, v25, -0x1

    .line 428
    .local v11, "m":I
    :goto_0
    sget-object v25, Liye;->a:[I

    aget v13, v25, p0

    .line 429
    .local v13, "ml":I
    sget-object v25, Liye;->a:[I

    aget v12, v25, p1

    .local v12, "md":I
    move/from16 v18, v17

    .end local v17    # "q":I
    .local v18, "q":I
    move/from16 v16, v15

    .line 434
    .end local v15    # "p":I
    .local v16, "p":I
    :goto_1
    const/16 v25, 0x14

    move/from16 v0, v25

    if-ge v10, v0, :cond_1

    .line 435
    add-int/lit8 v14, v14, -0x1

    .line 436
    move-object/from16 v0, p7

    iget-object v0, v0, Liyl;->a:[B

    move-object/from16 v25, v0

    add-int/lit8 v15, v16, 0x1

    .end local v16    # "p":I
    .restart local v15    # "p":I
    aget-byte v25, v25, v16

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    shl-int v25, v25, v10

    or-int v6, v6, v25

    add-int/lit8 v10, v10, 0x8

    move/from16 v16, v15

    .end local v15    # "p":I
    .restart local v16    # "p":I
    goto :goto_1

    .line 425
    .end local v11    # "m":I
    .end local v12    # "md":I
    .end local v13    # "ml":I
    .end local v16    # "p":I
    .end local v18    # "q":I
    .restart local v15    # "p":I
    .restart local v17    # "q":I
    :cond_0
    move-object/from16 v0, p6

    iget v0, v0, Liyd;->p:I

    move/from16 v25, v0

    sub-int v11, v25, v17

    goto :goto_0

    .line 439
    .end local v15    # "p":I
    .end local v17    # "q":I
    .restart local v11    # "m":I
    .restart local v12    # "md":I
    .restart local v13    # "ml":I
    .restart local v16    # "p":I
    .restart local v18    # "q":I
    :cond_1
    and-int v21, v6, v13

    .line 440
    .local v21, "t":I
    move-object/from16 v22, p2

    .line 442
    .local v22, "tp":[I
    move/from16 v23, p3

    .local v23, "tp_index":I
    add-int v25, p3, v21

    mul-int/lit8 v24, v25, 0x3

    .line 443
    .local v24, "tp_index_t_3":I
    aget v9, v22, v24

    .local v9, "e":I
    if-nez v9, :cond_4

    .line 444
    add-int/lit8 v25, v24, 0x1

    aget v25, v22, v25

    shr-int v6, v6, v25

    add-int/lit8 v25, v24, 0x1

    aget v25, v22, v25

    sub-int v10, v10, v25

    .line 446
    move-object/from16 v0, p6

    iget-object v0, v0, Liyd;->o:[B

    move-object/from16 v25, v0

    add-int/lit8 v17, v18, 0x1

    .end local v18    # "q":I
    .restart local v17    # "q":I
    add-int/lit8 v26, v24, 0x2

    aget v26, v22, v26

    move/from16 v0, v26

    int-to-byte v0, v0

    move/from16 v26, v0

    aput-byte v26, v25, v18

    .line 447
    add-int/lit8 v11, v11, -0x1

    move/from16 v15, v16

    .line 594
    .end local v16    # "p":I
    .restart local v15    # "p":I
    :goto_2
    const/16 v25, 0x102

    move/from16 v0, v25

    if-lt v11, v0, :cond_2

    const/16 v25, 0xa

    move/from16 v0, v25

    if-ge v14, v0, :cond_14

    .line 597
    :cond_2
    move-object/from16 v0, p7

    iget v0, v0, Liyl;->c:I

    move/from16 v25, v0

    sub-int v7, v25, v14

    .local v7, "c":I
    shr-int/lit8 v25, v10, 0x3

    move/from16 v0, v25

    if-ge v0, v7, :cond_3

    shr-int/lit8 v7, v10, 0x3

    :cond_3
    add-int/2addr v14, v7

    sub-int/2addr v15, v7

    shl-int/lit8 v25, v7, 0x3

    sub-int v10, v10, v25

    .line 599
    move-object/from16 v0, p6

    iput v6, v0, Liyd;->m:I

    move-object/from16 v0, p6

    iput v10, v0, Liyd;->l:I

    .line 600
    move-object/from16 v0, p7

    iput v14, v0, Liyl;->c:I

    move-object/from16 v0, p7

    iget-wide v0, v0, Liyl;->d:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p7

    iget v0, v0, Liyl;->b:I

    move/from16 v25, v0

    sub-int v25, v15, v25

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v28, v0

    add-long v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, p7

    iput-wide v0, v2, Liyl;->d:J

    move-object/from16 v0, p7

    iput v15, v0, Liyl;->b:I

    .line 601
    move/from16 v0, v17

    move-object/from16 v1, p6

    iput v0, v1, Liyd;->r:I

    .line 603
    const/16 v25, 0x0

    :goto_3
    return v25

    .line 452
    .end local v7    # "c":I
    .end local v15    # "p":I
    .end local v17    # "q":I
    .restart local v16    # "p":I
    .restart local v18    # "q":I
    :cond_4
    add-int/lit8 v25, v24, 0x1

    aget v25, v22, v25

    shr-int v6, v6, v25

    add-int/lit8 v25, v24, 0x1

    aget v25, v22, v25

    sub-int v10, v10, v25

    .line 454
    and-int/lit8 v25, v9, 0x10

    if-eqz v25, :cond_f

    .line 455
    and-int/lit8 v9, v9, 0xf

    .line 456
    add-int/lit8 v25, v24, 0x2

    aget v25, v22, v25

    sget-object v26, Liye;->a:[I

    aget v26, v26, v9

    and-int v26, v26, v6

    add-int v7, v25, v26

    .line 458
    .restart local v7    # "c":I
    shr-int/2addr v6, v9

    sub-int/2addr v10, v9

    .line 461
    :goto_4
    const/16 v25, 0xf

    move/from16 v0, v25

    if-ge v10, v0, :cond_5

    .line 462
    add-int/lit8 v14, v14, -0x1

    .line 463
    move-object/from16 v0, p7

    iget-object v0, v0, Liyl;->a:[B

    move-object/from16 v25, v0

    add-int/lit8 v15, v16, 0x1

    .end local v16    # "p":I
    .restart local v15    # "p":I
    aget-byte v25, v25, v16

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    shl-int v25, v25, v10

    or-int v6, v6, v25

    add-int/lit8 v10, v10, 0x8

    move/from16 v16, v15

    .end local v15    # "p":I
    .restart local v16    # "p":I
    goto :goto_4

    .line 466
    :cond_5
    and-int v21, v6, v12

    .line 467
    move-object/from16 v22, p4

    .line 469
    move/from16 v23, p5

    add-int v25, p5, v21

    mul-int/lit8 v24, v25, 0x3

    .line 470
    aget v9, v22, v24

    .line 474
    :goto_5
    add-int/lit8 v25, v24, 0x1

    aget v25, v22, v25

    shr-int v6, v6, v25

    add-int/lit8 v25, v24, 0x1

    aget v25, v22, v25

    sub-int v10, v10, v25

    .line 476
    and-int/lit8 v25, v9, 0x10

    if-eqz v25, :cond_c

    .line 478
    and-int/lit8 v9, v9, 0xf

    .line 479
    :goto_6
    if-ge v10, v9, :cond_6

    .line 480
    add-int/lit8 v14, v14, -0x1

    .line 481
    move-object/from16 v0, p7

    iget-object v0, v0, Liyl;->a:[B

    move-object/from16 v25, v0

    add-int/lit8 v15, v16, 0x1

    .end local v16    # "p":I
    .restart local v15    # "p":I
    aget-byte v25, v25, v16

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    shl-int v25, v25, v10

    or-int v6, v6, v25

    add-int/lit8 v10, v10, 0x8

    move/from16 v16, v15

    .end local v15    # "p":I
    .restart local v16    # "p":I
    goto :goto_6

    .line 484
    :cond_6
    add-int/lit8 v25, v24, 0x2

    aget v25, v22, v25

    sget-object v26, Liye;->a:[I

    aget v26, v26, v9

    and-int v26, v26, v6

    add-int v8, v25, v26

    .line 486
    .local v8, "d":I
    shr-int/2addr v6, v9

    sub-int/2addr v10, v9

    .line 489
    sub-int/2addr v11, v7

    .line 490
    move/from16 v0, v18

    if-lt v0, v8, :cond_8

    .line 492
    sub-int v19, v18, v8

    .line 493
    .local v19, "r":I
    sub-int v25, v18, v19

    if-lez v25, :cond_7

    const/16 v25, 0x2

    sub-int v26, v18, v19

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_7

    .line 494
    move-object/from16 v0, p6

    iget-object v0, v0, Liyd;->o:[B

    move-object/from16 v25, v0

    add-int/lit8 v17, v18, 0x1

    .end local v18    # "q":I
    .restart local v17    # "q":I
    move-object/from16 v0, p6

    iget-object v0, v0, Liyd;->o:[B

    move-object/from16 v26, v0

    add-int/lit8 v20, v19, 0x1

    .end local v19    # "r":I
    .local v20, "r":I
    aget-byte v26, v26, v19

    aput-byte v26, v25, v18

    .line 495
    move-object/from16 v0, p6

    iget-object v0, v0, Liyd;->o:[B

    move-object/from16 v25, v0

    add-int/lit8 v18, v17, 0x1

    .end local v17    # "q":I
    .restart local v18    # "q":I
    move-object/from16 v0, p6

    iget-object v0, v0, Liyd;->o:[B

    move-object/from16 v26, v0

    add-int/lit8 v19, v20, 0x1

    .end local v20    # "r":I
    .restart local v19    # "r":I
    aget-byte v26, v26, v20

    aput-byte v26, v25, v17

    .line 496
    add-int/lit8 v7, v7, -0x2

    move/from16 v17, v18

    .line 525
    .end local v18    # "q":I
    .restart local v17    # "q":I
    :goto_7
    sub-int v25, v17, v19

    if-lez v25, :cond_b

    sub-int v25, v17, v19

    move/from16 v0, v25

    if-le v7, v0, :cond_b

    .line 526
    :goto_8
    move-object/from16 v0, p6

    iget-object v0, v0, Liyd;->o:[B

    move-object/from16 v25, v0

    add-int/lit8 v18, v17, 0x1

    .end local v17    # "q":I
    .restart local v18    # "q":I
    move-object/from16 v0, p6

    iget-object v0, v0, Liyd;->o:[B

    move-object/from16 v26, v0

    add-int/lit8 v20, v19, 0x1

    .end local v19    # "r":I
    .restart local v20    # "r":I
    aget-byte v26, v26, v19

    aput-byte v26, v25, v17

    .line 527
    add-int/lit8 v7, v7, -0x1

    if-nez v7, :cond_15

    move/from16 v17, v18

    .end local v18    # "q":I
    .restart local v17    # "q":I
    move/from16 v15, v16

    .end local v16    # "p":I
    .restart local v15    # "p":I
    goto/16 :goto_2

    .line 499
    .end local v15    # "p":I
    .end local v17    # "q":I
    .end local v20    # "r":I
    .restart local v16    # "p":I
    .restart local v18    # "q":I
    .restart local v19    # "r":I
    :cond_7
    move-object/from16 v0, p6

    iget-object v0, v0, Liyd;->o:[B

    move-object/from16 v25, v0

    move-object/from16 v0, p6

    iget-object v0, v0, Liyd;->o:[B

    move-object/from16 v26, v0

    const/16 v27, 0x2

    move-object/from16 v0, v25

    move/from16 v1, v19

    move-object/from16 v2, v26

    move/from16 v3, v18

    move/from16 v4, v27

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 500
    add-int/lit8 v17, v18, 0x2

    .end local v18    # "q":I
    .restart local v17    # "q":I
    add-int/lit8 v19, v19, 0x2

    add-int/lit8 v7, v7, -0x2

    goto :goto_7

    .line 504
    .end local v17    # "q":I
    .end local v19    # "r":I
    .restart local v18    # "q":I
    :cond_8
    sub-int v19, v18, v8

    .line 506
    .restart local v19    # "r":I
    :cond_9
    move-object/from16 v0, p6

    iget v0, v0, Liyd;->p:I

    move/from16 v25, v0

    add-int v19, v19, v25

    .line 507
    if-ltz v19, :cond_9

    .line 508
    move-object/from16 v0, p6

    iget v0, v0, Liyd;->p:I

    move/from16 v25, v0

    sub-int v9, v25, v19

    .line 509
    if-le v7, v9, :cond_17

    .line 510
    sub-int/2addr v7, v9

    .line 511
    sub-int v25, v18, v19

    if-lez v25, :cond_a

    sub-int v25, v18, v19

    move/from16 v0, v25

    if-le v9, v0, :cond_a

    move/from16 v17, v18

    .line 512
    .end local v18    # "q":I
    .restart local v17    # "q":I
    :goto_9
    move-object/from16 v0, p6

    iget-object v0, v0, Liyd;->o:[B

    move-object/from16 v25, v0

    add-int/lit8 v18, v17, 0x1

    .end local v17    # "q":I
    .restart local v18    # "q":I
    move-object/from16 v0, p6

    iget-object v0, v0, Liyd;->o:[B

    move-object/from16 v26, v0

    add-int/lit8 v20, v19, 0x1

    .end local v19    # "r":I
    .restart local v20    # "r":I
    aget-byte v26, v26, v19

    aput-byte v26, v25, v17

    .line 513
    add-int/lit8 v9, v9, -0x1

    if-nez v9, :cond_16

    move/from16 v19, v20

    .end local v20    # "r":I
    .restart local v19    # "r":I
    move/from16 v17, v18

    .line 519
    .end local v18    # "q":I
    .restart local v17    # "q":I
    :goto_a
    const/16 v19, 0x0

    goto/16 :goto_7

    .line 516
    .end local v17    # "q":I
    .restart local v18    # "q":I
    :cond_a
    move-object/from16 v0, p6

    iget-object v0, v0, Liyd;->o:[B

    move-object/from16 v25, v0

    move-object/from16 v0, p6

    iget-object v0, v0, Liyd;->o:[B

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    move/from16 v1, v19

    move-object/from16 v2, v26

    move/from16 v3, v18

    invoke-static {v0, v1, v2, v3, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 517
    add-int v17, v18, v9

    .end local v18    # "q":I
    .restart local v17    # "q":I
    goto :goto_a

    .line 530
    :cond_b
    move-object/from16 v0, p6

    iget-object v0, v0, Liyd;->o:[B

    move-object/from16 v25, v0

    move-object/from16 v0, p6

    iget-object v0, v0, Liyd;->o:[B

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    move/from16 v1, v19

    move-object/from16 v2, v26

    move/from16 v3, v17

    invoke-static {v0, v1, v2, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 531
    add-int v17, v17, v7

    move/from16 v15, v16

    .line 533
    .end local v16    # "p":I
    .restart local v15    # "p":I
    goto/16 :goto_2

    .line 535
    .end local v8    # "d":I
    .end local v15    # "p":I
    .end local v17    # "q":I
    .end local v19    # "r":I
    .restart local v16    # "p":I
    .restart local v18    # "q":I
    :cond_c
    and-int/lit8 v25, v9, 0x40

    if-nez v25, :cond_d

    .line 536
    add-int/lit8 v25, v24, 0x2

    aget v25, v22, v25

    add-int v21, v21, v25

    .line 537
    sget-object v25, Liye;->a:[I

    aget v25, v25, v9

    and-int v25, v25, v6

    add-int v21, v21, v25

    .line 538
    add-int v25, v23, v21

    mul-int/lit8 v24, v25, 0x3

    .line 539
    aget v9, v22, v24

    goto/16 :goto_5

    .line 542
    :cond_d
    const-string/jumbo v25, "invalid distance code"

    move-object/from16 v0, v25

    move-object/from16 v1, p7

    iput-object v0, v1, Liyl;->i:Ljava/lang/String;

    .line 544
    move-object/from16 v0, p7

    iget v0, v0, Liyl;->c:I

    move/from16 v25, v0

    sub-int v7, v25, v14

    shr-int/lit8 v25, v10, 0x3

    move/from16 v0, v25

    if-ge v0, v7, :cond_e

    shr-int/lit8 v7, v10, 0x3

    :cond_e
    add-int/2addr v14, v7

    sub-int v15, v16, v7

    .end local v16    # "p":I
    .restart local v15    # "p":I
    shl-int/lit8 v25, v7, 0x3

    sub-int v10, v10, v25

    .line 546
    move-object/from16 v0, p6

    iput v6, v0, Liyd;->m:I

    move-object/from16 v0, p6

    iput v10, v0, Liyd;->l:I

    .line 547
    move-object/from16 v0, p7

    iput v14, v0, Liyl;->c:I

    move-object/from16 v0, p7

    iget-wide v0, v0, Liyl;->d:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p7

    iget v0, v0, Liyl;->b:I

    move/from16 v25, v0

    sub-int v25, v15, v25

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v28, v0

    add-long v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, p7

    iput-wide v0, v2, Liyl;->d:J

    move-object/from16 v0, p7

    iput v15, v0, Liyl;->b:I

    .line 548
    move/from16 v0, v18

    move-object/from16 v1, p6

    iput v0, v1, Liyd;->r:I

    .line 550
    const/16 v25, -0x3

    move/from16 v17, v18

    .end local v18    # "q":I
    .restart local v17    # "q":I
    goto/16 :goto_3

    .line 557
    .end local v7    # "c":I
    .end local v15    # "p":I
    .end local v17    # "q":I
    .restart local v16    # "p":I
    .restart local v18    # "q":I
    :cond_f
    and-int/lit8 v25, v9, 0x40

    if-nez v25, :cond_10

    .line 558
    add-int/lit8 v25, v24, 0x2

    aget v25, v22, v25

    add-int v21, v21, v25

    .line 559
    sget-object v25, Liye;->a:[I

    aget v25, v25, v9

    and-int v25, v25, v6

    add-int v21, v21, v25

    .line 560
    add-int v25, v23, v21

    mul-int/lit8 v24, v25, 0x3

    .line 561
    aget v9, v22, v24

    if-nez v9, :cond_4

    .line 563
    add-int/lit8 v25, v24, 0x1

    aget v25, v22, v25

    shr-int v6, v6, v25

    add-int/lit8 v25, v24, 0x1

    aget v25, v22, v25

    sub-int v10, v10, v25

    .line 565
    move-object/from16 v0, p6

    iget-object v0, v0, Liyd;->o:[B

    move-object/from16 v25, v0

    add-int/lit8 v17, v18, 0x1

    .end local v18    # "q":I
    .restart local v17    # "q":I
    add-int/lit8 v26, v24, 0x2

    aget v26, v22, v26

    move/from16 v0, v26

    int-to-byte v0, v0

    move/from16 v26, v0

    aput-byte v26, v25, v18

    .line 566
    add-int/lit8 v11, v11, -0x1

    move/from16 v15, v16

    .line 567
    .end local v16    # "p":I
    .restart local v15    # "p":I
    goto/16 :goto_2

    .line 570
    .end local v15    # "p":I
    .end local v17    # "q":I
    .restart local v16    # "p":I
    .restart local v18    # "q":I
    :cond_10
    and-int/lit8 v25, v9, 0x20

    if-eqz v25, :cond_12

    .line 572
    move-object/from16 v0, p7

    iget v0, v0, Liyl;->c:I

    move/from16 v25, v0

    sub-int v7, v25, v14

    .restart local v7    # "c":I
    shr-int/lit8 v25, v10, 0x3

    move/from16 v0, v25

    if-ge v0, v7, :cond_11

    shr-int/lit8 v7, v10, 0x3

    :cond_11
    add-int/2addr v14, v7

    sub-int v15, v16, v7

    .end local v16    # "p":I
    .restart local v15    # "p":I
    shl-int/lit8 v25, v7, 0x3

    sub-int v10, v10, v25

    .line 574
    move-object/from16 v0, p6

    iput v6, v0, Liyd;->m:I

    move-object/from16 v0, p6

    iput v10, v0, Liyd;->l:I

    .line 575
    move-object/from16 v0, p7

    iput v14, v0, Liyl;->c:I

    move-object/from16 v0, p7

    iget-wide v0, v0, Liyl;->d:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p7

    iget v0, v0, Liyl;->b:I

    move/from16 v25, v0

    sub-int v25, v15, v25

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v28, v0

    add-long v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, p7

    iput-wide v0, v2, Liyl;->d:J

    move-object/from16 v0, p7

    iput v15, v0, Liyl;->b:I

    .line 576
    move/from16 v0, v18

    move-object/from16 v1, p6

    iput v0, v1, Liyd;->r:I

    .line 578
    const/16 v25, 0x1

    move/from16 v17, v18

    .end local v18    # "q":I
    .restart local v17    # "q":I
    goto/16 :goto_3

    .line 581
    .end local v7    # "c":I
    .end local v15    # "p":I
    .end local v17    # "q":I
    .restart local v16    # "p":I
    .restart local v18    # "q":I
    :cond_12
    const-string/jumbo v25, "invalid literal/length code"

    move-object/from16 v0, v25

    move-object/from16 v1, p7

    iput-object v0, v1, Liyl;->i:Ljava/lang/String;

    .line 583
    move-object/from16 v0, p7

    iget v0, v0, Liyl;->c:I

    move/from16 v25, v0

    sub-int v7, v25, v14

    .restart local v7    # "c":I
    shr-int/lit8 v25, v10, 0x3

    move/from16 v0, v25

    if-ge v0, v7, :cond_13

    shr-int/lit8 v7, v10, 0x3

    :cond_13
    add-int/2addr v14, v7

    sub-int v15, v16, v7

    .end local v16    # "p":I
    .restart local v15    # "p":I
    shl-int/lit8 v25, v7, 0x3

    sub-int v10, v10, v25

    .line 585
    move-object/from16 v0, p6

    iput v6, v0, Liyd;->m:I

    move-object/from16 v0, p6

    iput v10, v0, Liyd;->l:I

    .line 586
    move-object/from16 v0, p7

    iput v14, v0, Liyl;->c:I

    move-object/from16 v0, p7

    iget-wide v0, v0, Liyl;->d:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p7

    iget v0, v0, Liyl;->b:I

    move/from16 v25, v0

    sub-int v25, v15, v25

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v28, v0

    add-long v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, p7

    iput-wide v0, v2, Liyl;->d:J

    move-object/from16 v0, p7

    iput v15, v0, Liyl;->b:I

    .line 587
    move/from16 v0, v18

    move-object/from16 v1, p6

    iput v0, v1, Liyd;->r:I

    .line 589
    const/16 v25, -0x3

    move/from16 v17, v18

    .end local v18    # "q":I
    .restart local v17    # "q":I
    goto/16 :goto_3

    .end local v7    # "c":I
    :cond_14
    move/from16 v18, v17

    .end local v17    # "q":I
    .restart local v18    # "q":I
    move/from16 v16, v15

    .end local v15    # "p":I
    .restart local v16    # "p":I
    goto/16 :goto_1

    .restart local v7    # "c":I
    .restart local v8    # "d":I
    .restart local v20    # "r":I
    :cond_15
    move/from16 v19, v20

    .end local v20    # "r":I
    .restart local v19    # "r":I
    move/from16 v17, v18

    .end local v18    # "q":I
    .restart local v17    # "q":I
    goto/16 :goto_8

    .end local v17    # "q":I
    .end local v19    # "r":I
    .restart local v18    # "q":I
    .restart local v20    # "r":I
    :cond_16
    move/from16 v19, v20

    .end local v20    # "r":I
    .restart local v19    # "r":I
    move/from16 v17, v18

    .end local v18    # "q":I
    .restart local v17    # "q":I
    goto/16 :goto_9

    .end local v17    # "q":I
    .restart local v18    # "q":I
    :cond_17
    move/from16 v17, v18

    .end local v18    # "q":I
    .restart local v17    # "q":I
    goto/16 :goto_7
.end method

.method static a()V
    .locals 0

    .prologue
    .line 394
    return-void
.end method


# virtual methods
.method final a(II[II[II)V
    .locals 1
    .param p1, "bl"    # I
    .param p2, "bd"    # I
    .param p3, "tl"    # [I
    .param p4, "tl_index"    # I
    .param p5, "td"    # [I
    .param p6, "td_index"    # I

    .prologue
    .line 97
    const/4 v0, 0x0

    iput v0, p0, Liye;->b:I

    .line 98
    int-to-byte v0, p1

    iput-byte v0, p0, Liye;->j:B

    .line 99
    int-to-byte v0, p2

    iput-byte v0, p0, Liye;->k:B

    .line 100
    iput-object p3, p0, Liye;->l:[I

    .line 101
    iput p4, p0, Liye;->m:I

    .line 102
    iput-object p5, p0, Liye;->n:[I

    .line 103
    iput p6, p0, Liye;->o:I

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Liye;->d:[I

    .line 105
    return-void
.end method
