.class public Lhv;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field static final synthetic a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lhv;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lhv;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 740
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([BIII)Ljava/lang/String;
    .locals 4

    .prologue
    .line 477
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    const/16 v2, 0x8

    const/16 v3, 0xb

    invoke-static {p0, v1, v2, v3}, Lhv;->b([BIII)[B

    move-result-object v1

    const-string/jumbo v2, "US-ASCII"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 478
    :catch_0
    move-exception v0

    .line 480
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static a(Ljava/lang/String;I)[B
    .locals 1

    .prologue
    .line 118
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, p1}, Lhv;->a([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public static a([BI)[B
    .locals 14

    .prologue
    const/4 v13, -0x2

    const/4 v12, -0x1

    const/4 v11, 0x6

    const/4 v3, 0x0

    .line 136
    array-length v0, p0

    .line 1158
    new-instance v6, Lhx;

    mul-int/lit8 v1, v0, 0x3

    div-int/lit8 v1, v1, 0x4

    new-array v1, v1, [B

    invoke-direct {v6, p1, v1}, Lhx;-><init>(I[B)V

    .line 1264
    iget v1, v6, Lhx;->c:I

    if-ne v1, v11, :cond_0

    move v0, v3

    .line 1160
    :goto_0
    if-nez v0, :cond_c

    .line 1161
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "bad base-64"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1267
    :cond_0
    add-int v7, v0, v3

    .line 1274
    iget v0, v6, Lhx;->c:I

    .line 1275
    iget v1, v6, Lhx;->d:I

    .line 1277
    iget-object v8, v6, Lhx;->a:[B

    .line 1278
    iget-object v9, v6, Lhx;->e:[I

    move v2, v3

    move v5, v0

    move v0, v3

    .line 1280
    :goto_1
    if-ge v2, v7, :cond_b

    .line 1295
    if-nez v5, :cond_2

    .line 1296
    :goto_2
    add-int/lit8 v4, v2, 0x4

    if-gt v4, v7, :cond_1

    aget-byte v1, p0, v2

    and-int/lit16 v1, v1, 0xff

    aget v1, v9, v1

    shl-int/lit8 v1, v1, 0x12

    add-int/lit8 v4, v2, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    aget v4, v9, v4

    shl-int/lit8 v4, v4, 0xc

    or-int/2addr v1, v4

    add-int/lit8 v4, v2, 0x2

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    aget v4, v9, v4

    shl-int/lit8 v4, v4, 0x6

    or-int/2addr v1, v4

    add-int/lit8 v4, v2, 0x3

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    aget v4, v9, v4

    or-int/2addr v1, v4

    if-ltz v1, :cond_1

    .line 1301
    add-int/lit8 v4, v0, 0x2

    int-to-byte v10, v1

    aput-byte v10, v8, v4

    .line 1302
    add-int/lit8 v4, v0, 0x1

    shr-int/lit8 v10, v1, 0x8

    int-to-byte v10, v10

    aput-byte v10, v8, v4

    .line 1303
    shr-int/lit8 v4, v1, 0x10

    int-to-byte v4, v4

    aput-byte v4, v8, v0

    .line 1304
    add-int/lit8 v0, v0, 0x3

    .line 1305
    add-int/lit8 v2, v2, 0x4

    goto :goto_2

    .line 1307
    :cond_1
    if-ge v2, v7, :cond_b

    .line 1315
    :cond_2
    add-int/lit8 v4, v2, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    aget v2, v9, v2

    .line 1317
    packed-switch v5, :pswitch_data_0

    :cond_3
    move v2, v4

    .line 1391
    goto :goto_1

    .line 1319
    :pswitch_0
    if-ltz v2, :cond_4

    .line 1321
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move v1, v2

    move v2, v4

    goto :goto_1

    .line 1322
    :cond_4
    if-eq v2, v12, :cond_3

    .line 1323
    iput v11, v6, Lhx;->c:I

    move v0, v3

    .line 1324
    goto/16 :goto_0

    .line 1329
    :pswitch_1
    if-ltz v2, :cond_5

    .line 1330
    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v1, v2

    .line 1331
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move v2, v4

    goto :goto_1

    .line 1332
    :cond_5
    if-eq v2, v12, :cond_3

    .line 1333
    iput v11, v6, Lhx;->c:I

    move v0, v3

    .line 1334
    goto/16 :goto_0

    .line 1339
    :pswitch_2
    if-ltz v2, :cond_6

    .line 1340
    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v1, v2

    .line 1341
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move v2, v4

    goto/16 :goto_1

    .line 1342
    :cond_6
    if-ne v2, v13, :cond_7

    .line 1345
    add-int/lit8 v2, v0, 0x1

    shr-int/lit8 v5, v1, 0x4

    int-to-byte v5, v5

    aput-byte v5, v8, v0

    .line 1346
    const/4 v0, 0x4

    move v5, v0

    move v0, v2

    move v2, v4

    goto/16 :goto_1

    .line 1347
    :cond_7
    if-eq v2, v12, :cond_3

    .line 1348
    iput v11, v6, Lhx;->c:I

    move v0, v3

    .line 1349
    goto/16 :goto_0

    .line 1354
    :pswitch_3
    if-ltz v2, :cond_8

    .line 1356
    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v1, v2

    .line 1357
    add-int/lit8 v2, v0, 0x2

    int-to-byte v5, v1

    aput-byte v5, v8, v2

    .line 1358
    add-int/lit8 v2, v0, 0x1

    shr-int/lit8 v5, v1, 0x8

    int-to-byte v5, v5

    aput-byte v5, v8, v2

    .line 1359
    shr-int/lit8 v2, v1, 0x10

    int-to-byte v2, v2

    aput-byte v2, v8, v0

    .line 1360
    add-int/lit8 v0, v0, 0x3

    move v2, v4

    move v5, v3

    .line 1361
    goto/16 :goto_1

    .line 1362
    :cond_8
    if-ne v2, v13, :cond_9

    .line 1365
    add-int/lit8 v2, v0, 0x1

    shr-int/lit8 v5, v1, 0x2

    int-to-byte v5, v5

    aput-byte v5, v8, v2

    .line 1366
    shr-int/lit8 v2, v1, 0xa

    int-to-byte v2, v2

    aput-byte v2, v8, v0

    .line 1367
    add-int/lit8 v0, v0, 0x2

    .line 1368
    const/4 v2, 0x5

    move v5, v2

    move v2, v4

    goto/16 :goto_1

    .line 1369
    :cond_9
    if-eq v2, v12, :cond_3

    .line 1370
    iput v11, v6, Lhx;->c:I

    move v0, v3

    .line 1371
    goto/16 :goto_0

    .line 1376
    :pswitch_4
    if-ne v2, v13, :cond_a

    .line 1377
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move v2, v4

    goto/16 :goto_1

    .line 1378
    :cond_a
    if-eq v2, v12, :cond_3

    .line 1379
    iput v11, v6, Lhx;->c:I

    move v0, v3

    .line 1380
    goto/16 :goto_0

    .line 1385
    :pswitch_5
    if-eq v2, v12, :cond_3

    .line 1386
    iput v11, v6, Lhx;->c:I

    move v0, v3

    .line 1387
    goto/16 :goto_0

    :cond_b
    move v2, v1

    .line 1405
    packed-switch v5, :pswitch_data_1

    .line 1435
    :goto_3
    :pswitch_6
    iput v5, v6, Lhx;->c:I

    .line 1436
    iput v0, v6, Lhx;->b:I

    .line 1437
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1412
    :pswitch_7
    iput v11, v6, Lhx;->c:I

    move v0, v3

    .line 1413
    goto/16 :goto_0

    .line 1417
    :pswitch_8
    add-int/lit8 v1, v0, 0x1

    shr-int/lit8 v2, v2, 0x4

    int-to-byte v2, v2

    aput-byte v2, v8, v0

    move v0, v1

    .line 1418
    goto :goto_3

    .line 1422
    :pswitch_9
    add-int/lit8 v1, v0, 0x1

    shr-int/lit8 v4, v2, 0xa

    int-to-byte v4, v4

    aput-byte v4, v8, v0

    .line 1423
    add-int/lit8 v0, v1, 0x1

    shr-int/lit8 v2, v2, 0x2

    int-to-byte v2, v2

    aput-byte v2, v8, v1

    goto :goto_3

    .line 1427
    :pswitch_a
    iput v11, v6, Lhx;->c:I

    move v0, v3

    .line 1428
    goto/16 :goto_0

    .line 1165
    :cond_c
    iget v0, v6, Lhx;->b:I

    iget-object v1, v6, Lhx;->a:[B

    array-length v1, v1

    if-ne v0, v1, :cond_d

    .line 1166
    iget-object v0, v6, Lhx;->a:[B

    :goto_4
    return-object v0

    .line 1171
    :cond_d
    iget v0, v6, Lhx;->b:I

    new-array v0, v0, [B

    .line 1172
    iget-object v1, v6, Lhx;->a:[B

    iget v2, v6, Lhx;->b:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4

    .line 1317
    .line 1405
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public static b([BI)Ljava/lang/String;
    .locals 3

    .prologue
    .line 456
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-static {p0, p1}, Lhv;->c([BI)[B

    move-result-object v1

    const-string/jumbo v2, "US-ASCII"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 457
    :catch_0
    move-exception v0

    .line 459
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static b([BIII)[B
    .locals 12

    .prologue
    .line 510
    new-instance v7, Lhy;

    const/4 v0, 0x0

    invoke-direct {v7, p3, v0}, Lhy;-><init>(I[B)V

    .line 513
    div-int/lit8 v0, p2, 0x3

    mul-int/lit8 v0, v0, 0x4

    .line 516
    iget-boolean v1, v7, Lhy;->f:Z

    if-eqz v1, :cond_4

    .line 517
    rem-int/lit8 v1, p2, 0x3

    if-lez v1, :cond_0

    .line 518
    add-int/lit8 v0, v0, 0x4

    .line 529
    :cond_0
    :goto_0
    :pswitch_0
    iget-boolean v1, v7, Lhy;->g:Z

    if-eqz v1, :cond_1

    if-lez p2, :cond_1

    .line 530
    add-int/lit8 v1, p2, -0x1

    div-int/lit8 v1, v1, 0x39

    add-int/lit8 v2, v1, 0x1

    iget-boolean v1, v7, Lhy;->h:Z

    if-eqz v1, :cond_5

    const/4 v1, 0x2

    :goto_1
    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 534
    :cond_1
    new-array v1, v0, [B

    iput-object v1, v7, Lhy;->a:[B

    .line 1605
    iget-object v8, v7, Lhy;->i:[B

    .line 1606
    iget-object v9, v7, Lhy;->a:[B

    .line 1607
    const/4 v5, 0x0

    .line 1608
    iget v3, v7, Lhy;->e:I

    .line 1611
    add-int v10, p2, p1

    .line 1612
    const/4 v1, -0x1

    .line 1618
    iget v2, v7, Lhy;->d:I

    packed-switch v2, :pswitch_data_0

    :cond_2
    move v4, v1

    move v2, p1

    .line 1645
    :goto_2
    const/4 v1, -0x1

    if-eq v4, v1, :cond_1a

    .line 1646
    const/4 v1, 0x0

    shr-int/lit8 v5, v4, 0x12

    and-int/lit8 v5, v5, 0x3f

    aget-byte v5, v8, v5

    aput-byte v5, v9, v1

    .line 1647
    const/4 v1, 0x1

    shr-int/lit8 v5, v4, 0xc

    and-int/lit8 v5, v5, 0x3f

    aget-byte v5, v8, v5

    aput-byte v5, v9, v1

    .line 1648
    const/4 v1, 0x2

    shr-int/lit8 v5, v4, 0x6

    and-int/lit8 v5, v5, 0x3f

    aget-byte v5, v8, v5

    aput-byte v5, v9, v1

    .line 1649
    const/4 v5, 0x3

    const/4 v1, 0x4

    and-int/lit8 v4, v4, 0x3f

    aget-byte v4, v8, v4

    aput-byte v4, v9, v5

    .line 1650
    add-int/lit8 v3, v3, -0x1

    if-nez v3, :cond_19

    .line 1651
    iget-boolean v3, v7, Lhy;->h:Z

    if-eqz v3, :cond_3

    const/4 v3, 0x4

    const/4 v1, 0x5

    const/16 v4, 0xd

    aput-byte v4, v9, v3

    .line 1652
    :cond_3
    add-int/lit8 v5, v1, 0x1

    const/16 v3, 0xa

    aput-byte v3, v9, v1

    .line 1653
    const/16 v1, 0x13

    move v6, v1

    .line 1662
    :goto_3
    add-int/lit8 v1, v2, 0x3

    if-gt v1, v10, :cond_6

    .line 1663
    aget-byte v1, p0, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/lit8 v3, v2, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    add-int/lit8 v3, v2, 0x2

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v1, v3

    .line 1666
    shr-int/lit8 v3, v1, 0x12

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v8, v3

    aput-byte v3, v9, v5

    .line 1667
    add-int/lit8 v3, v5, 0x1

    shr-int/lit8 v4, v1, 0xc

    and-int/lit8 v4, v4, 0x3f

    aget-byte v4, v8, v4

    aput-byte v4, v9, v3

    .line 1668
    add-int/lit8 v3, v5, 0x2

    shr-int/lit8 v4, v1, 0x6

    and-int/lit8 v4, v4, 0x3f

    aget-byte v4, v8, v4

    aput-byte v4, v9, v3

    .line 1669
    add-int/lit8 v3, v5, 0x3

    and-int/lit8 v1, v1, 0x3f

    aget-byte v1, v8, v1

    aput-byte v1, v9, v3

    .line 1670
    add-int/lit8 v3, v2, 0x3

    .line 1671
    add-int/lit8 v2, v5, 0x4

    .line 1672
    add-int/lit8 v1, v6, -0x1

    if-nez v1, :cond_18

    .line 1673
    iget-boolean v1, v7, Lhy;->h:Z

    if-eqz v1, :cond_17

    add-int/lit8 v1, v2, 0x1

    const/16 v4, 0xd

    aput-byte v4, v9, v2

    .line 1674
    :goto_4
    add-int/lit8 v5, v1, 0x1

    const/16 v2, 0xa

    aput-byte v2, v9, v1

    .line 1675
    const/16 v1, 0x13

    move v2, v3

    move v6, v1

    goto :goto_3

    .line 521
    :cond_4
    rem-int/lit8 v1, p2, 0x3

    packed-switch v1, :pswitch_data_1

    goto/16 :goto_0

    .line 523
    :pswitch_1
    add-int/lit8 v0, v0, 0x2

    goto/16 :goto_0

    .line 524
    :pswitch_2
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_0

    .line 530
    :cond_5
    const/4 v1, 0x1

    goto/16 :goto_1

    :pswitch_3
    move v4, v1

    move v2, p1

    .line 1621
    goto/16 :goto_2

    .line 1624
    :pswitch_4
    add-int/lit8 v2, p1, 0x2

    if-gt v2, v10, :cond_2

    .line 1627
    iget-object v1, v7, Lhy;->c:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/lit8 v2, p1, 0x1

    aget-byte v4, p0, p1

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v1, v4

    add-int/lit8 p1, v2, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    .line 1630
    const/4 v2, 0x0

    iput v2, v7, Lhy;->d:I

    move v4, v1

    move v2, p1

    goto/16 :goto_2

    .line 1635
    :pswitch_5
    add-int/lit8 v2, p1, 0x1

    if-gt v2, v10, :cond_2

    .line 1637
    iget-object v1, v7, Lhy;->c:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    iget-object v2, v7, Lhy;->c:[B

    const/4 v4, 0x1

    aget-byte v2, v2, v4

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, p1, 0x1

    aget-byte v4, p0, p1

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v1, v4

    .line 1640
    const/4 v4, 0x0

    iput v4, v7, Lhy;->d:I

    move v4, v1

    goto/16 :goto_2

    .line 1685
    :cond_6
    iget v1, v7, Lhy;->d:I

    sub-int v1, v2, v1

    add-int/lit8 v3, v10, -0x1

    if-ne v1, v3, :cond_c

    .line 1686
    const/4 v4, 0x0

    .line 1687
    iget v1, v7, Lhy;->d:I

    if-lez v1, :cond_b

    iget-object v1, v7, Lhy;->c:[B

    const/4 v4, 0x0

    const/4 v3, 0x1

    aget-byte v1, v1, v4

    :goto_5
    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v4, v1, 0x4

    .line 1688
    iget v1, v7, Lhy;->d:I

    sub-int/2addr v1, v3

    iput v1, v7, Lhy;->d:I

    .line 1689
    add-int/lit8 v3, v5, 0x1

    shr-int/lit8 v1, v4, 0x6

    and-int/lit8 v1, v1, 0x3f

    aget-byte v1, v8, v1

    aput-byte v1, v9, v5

    .line 1690
    add-int/lit8 v1, v3, 0x1

    and-int/lit8 v4, v4, 0x3f

    aget-byte v4, v8, v4

    aput-byte v4, v9, v3

    .line 1691
    iget-boolean v3, v7, Lhy;->f:Z

    if-eqz v3, :cond_7

    .line 1692
    add-int/lit8 v3, v1, 0x1

    const/16 v4, 0x3d

    aput-byte v4, v9, v1

    .line 1693
    add-int/lit8 v1, v3, 0x1

    const/16 v4, 0x3d

    aput-byte v4, v9, v3

    .line 1695
    :cond_7
    iget-boolean v3, v7, Lhy;->g:Z

    if-eqz v3, :cond_9

    .line 1696
    iget-boolean v3, v7, Lhy;->h:Z

    if-eqz v3, :cond_8

    add-int/lit8 v3, v1, 0x1

    const/16 v4, 0xd

    aput-byte v4, v9, v1

    move v1, v3

    .line 1697
    :cond_8
    add-int/lit8 v3, v1, 0x1

    const/16 v4, 0xa

    aput-byte v4, v9, v1

    move v1, v3

    :cond_9
    move v5, v1

    .line 1719
    :cond_a
    :goto_6
    sget-boolean v1, Lhy;->j:Z

    if-nez v1, :cond_12

    iget v1, v7, Lhy;->d:I

    if-eqz v1, :cond_12

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1687
    :cond_b
    add-int/lit8 v3, v2, 0x1

    aget-byte v1, p0, v2

    move v2, v3

    move v3, v4

    goto :goto_5

    .line 1699
    :cond_c
    iget v1, v7, Lhy;->d:I

    sub-int v1, v2, v1

    add-int/lit8 v3, v10, -0x2

    if-ne v1, v3, :cond_11

    .line 1700
    const/4 v4, 0x0

    .line 1701
    iget v1, v7, Lhy;->d:I

    const/4 v3, 0x1

    if-le v1, v3, :cond_f

    iget-object v1, v7, Lhy;->c:[B

    const/4 v4, 0x0

    const/4 v3, 0x1

    aget-byte v1, v1, v4

    :goto_7
    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v11, v1, 0xa

    iget v1, v7, Lhy;->d:I

    if-lez v1, :cond_10

    iget-object v1, v7, Lhy;->c:[B

    add-int/lit8 v4, v3, 0x1

    aget-byte v1, v1, v3

    move v3, v4

    :goto_8
    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x2

    or-int/2addr v1, v11

    .line 1703
    iget v4, v7, Lhy;->d:I

    sub-int v3, v4, v3

    iput v3, v7, Lhy;->d:I

    .line 1704
    add-int/lit8 v3, v5, 0x1

    shr-int/lit8 v4, v1, 0xc

    and-int/lit8 v4, v4, 0x3f

    aget-byte v4, v8, v4

    aput-byte v4, v9, v5

    .line 1705
    add-int/lit8 v4, v3, 0x1

    shr-int/lit8 v5, v1, 0x6

    and-int/lit8 v5, v5, 0x3f

    aget-byte v5, v8, v5

    aput-byte v5, v9, v3

    .line 1706
    add-int/lit8 v3, v4, 0x1

    and-int/lit8 v1, v1, 0x3f

    aget-byte v1, v8, v1

    aput-byte v1, v9, v4

    .line 1707
    iget-boolean v1, v7, Lhy;->f:Z

    if-eqz v1, :cond_16

    .line 1708
    add-int/lit8 v1, v3, 0x1

    const/16 v4, 0x3d

    aput-byte v4, v9, v3

    .line 1710
    :goto_9
    iget-boolean v3, v7, Lhy;->g:Z

    if-eqz v3, :cond_e

    .line 1711
    iget-boolean v3, v7, Lhy;->h:Z

    if-eqz v3, :cond_d

    add-int/lit8 v3, v1, 0x1

    const/16 v4, 0xd

    aput-byte v4, v9, v1

    move v1, v3

    .line 1712
    :cond_d
    add-int/lit8 v3, v1, 0x1

    const/16 v4, 0xa

    aput-byte v4, v9, v1

    move v1, v3

    :cond_e
    move v5, v1

    .line 1714
    goto/16 :goto_6

    .line 1701
    :cond_f
    add-int/lit8 v3, v2, 0x1

    aget-byte v1, p0, v2

    move v2, v3

    move v3, v4

    goto :goto_7

    :cond_10
    add-int/lit8 v4, v2, 0x1

    aget-byte v1, p0, v2

    move v2, v4

    goto :goto_8

    .line 1714
    :cond_11
    iget-boolean v1, v7, Lhy;->g:Z

    if-eqz v1, :cond_a

    if-lez v5, :cond_a

    const/16 v1, 0x13

    if-eq v6, v1, :cond_a

    .line 1715
    iget-boolean v1, v7, Lhy;->h:Z

    if-eqz v1, :cond_15

    add-int/lit8 v1, v5, 0x1

    const/16 v3, 0xd

    aput-byte v3, v9, v5

    .line 1716
    :goto_a
    add-int/lit8 v5, v1, 0x1

    const/16 v3, 0xa

    aput-byte v3, v9, v1

    goto/16 :goto_6

    .line 1720
    :cond_12
    sget-boolean v1, Lhy;->j:Z

    if-nez v1, :cond_13

    if-eq v2, v10, :cond_13

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1733
    :cond_13
    iput v5, v7, Lhy;->b:I

    .line 1734
    iput v6, v7, Lhy;->e:I

    .line 537
    sget-boolean v1, Lhv;->a:Z

    if-nez v1, :cond_14

    iget v1, v7, Lhy;->b:I

    if-eq v1, v0, :cond_14

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 539
    :cond_14
    iget-object v0, v7, Lhy;->a:[B

    return-object v0

    :cond_15
    move v1, v5

    goto :goto_a

    :cond_16
    move v1, v3

    goto :goto_9

    :cond_17
    move v1, v2

    goto/16 :goto_4

    :cond_18
    move v6, v1

    move v5, v2

    move v2, v3

    goto/16 :goto_3

    :cond_19
    move v6, v3

    move v5, v1

    goto/16 :goto_3

    :cond_1a
    move v6, v3

    goto/16 :goto_3

    .line 1618
    .line 521
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static c([BI)[B
    .locals 2

    .prologue
    .line 494
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lhv;->b([BIII)[B

    move-result-object v0

    return-object v0
.end method
