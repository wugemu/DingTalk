.class public Lamm;
.super Ljava/lang/Object;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lamm$c;,
        Lamm$b;,
        Lamm$a;
    }
.end annotation


# static fields
.field static final synthetic a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lamm;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lamm;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 750
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 751
    return-void
.end method

.method public static a([BI)[B
    .locals 14
    .param p0, "input"    # [B
    .param p1, "flags"    # I

    .prologue
    const/4 v13, -0x2

    const/4 v12, -0x1

    const/4 v11, 0x6

    const/4 v3, 0x0

    .line 135
    array-length v0, p0

    const/4 v1, 0x2

    .line 1156
    new-instance v6, Lamm$b;

    mul-int/lit8 v2, v0, 0x3

    div-int/lit8 v2, v2, 0x4

    new-array v2, v2, [B

    invoke-direct {v6, v1, v2}, Lamm$b;-><init>(I[B)V

    .line 1266
    iget v1, v6, Lamm$b;->c:I

    if-ne v1, v11, :cond_0

    move v0, v3

    .line 1158
    :goto_0
    if-nez v0, :cond_c

    .line 1159
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "bad base-64"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1269
    :cond_0
    add-int v7, v0, v3

    .line 1276
    iget v0, v6, Lamm$b;->c:I

    .line 1277
    iget v1, v6, Lamm$b;->d:I

    .line 1279
    iget-object v8, v6, Lamm$b;->a:[B

    .line 1280
    iget-object v9, v6, Lamm$b;->e:[I

    move v4, v0

    move v2, v3

    move v0, v3

    .line 1282
    :goto_1
    if-ge v2, v7, :cond_b

    .line 1297
    if-nez v4, :cond_2

    .line 1298
    :goto_2
    add-int/lit8 v5, v2, 0x4

    if-gt v5, v7, :cond_1

    aget-byte v1, p0, v2

    and-int/lit16 v1, v1, 0xff

    aget v1, v9, v1

    shl-int/lit8 v1, v1, 0x12

    add-int/lit8 v5, v2, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    aget v5, v9, v5

    shl-int/lit8 v5, v5, 0xc

    or-int/2addr v1, v5

    add-int/lit8 v5, v2, 0x2

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    aget v5, v9, v5

    shl-int/lit8 v5, v5, 0x6

    or-int/2addr v1, v5

    add-int/lit8 v5, v2, 0x3

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    aget v5, v9, v5

    or-int/2addr v1, v5

    if-ltz v1, :cond_1

    .line 1303
    add-int/lit8 v5, v0, 0x2

    int-to-byte v10, v1

    aput-byte v10, v8, v5

    .line 1304
    add-int/lit8 v5, v0, 0x1

    shr-int/lit8 v10, v1, 0x8

    int-to-byte v10, v10

    aput-byte v10, v8, v5

    .line 1305
    shr-int/lit8 v5, v1, 0x10

    int-to-byte v5, v5

    aput-byte v5, v8, v0

    .line 1306
    add-int/lit8 v0, v0, 0x3

    .line 1307
    add-int/lit8 v2, v2, 0x4

    goto :goto_2

    .line 1309
    :cond_1
    if-ge v2, v7, :cond_b

    .line 1317
    :cond_2
    add-int/lit8 v5, v2, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    aget v2, v9, v2

    .line 1319
    packed-switch v4, :pswitch_data_0

    :cond_3
    move v2, v5

    .line 1393
    goto :goto_1

    .line 1321
    :pswitch_0
    if-ltz v2, :cond_4

    .line 1323
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v1, v2

    move v2, v5

    goto :goto_1

    .line 1324
    :cond_4
    if-eq v2, v12, :cond_3

    .line 1325
    iput v11, v6, Lamm$b;->c:I

    move v0, v3

    .line 1326
    goto/16 :goto_0

    .line 1331
    :pswitch_1
    if-ltz v2, :cond_5

    .line 1332
    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v1, v2

    .line 1333
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v2, v5

    goto :goto_1

    .line 1334
    :cond_5
    if-eq v2, v12, :cond_3

    .line 1335
    iput v11, v6, Lamm$b;->c:I

    move v0, v3

    .line 1336
    goto/16 :goto_0

    .line 1341
    :pswitch_2
    if-ltz v2, :cond_6

    .line 1342
    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v1, v2

    .line 1343
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v2, v5

    goto/16 :goto_1

    .line 1344
    :cond_6
    if-ne v2, v13, :cond_7

    .line 1347
    add-int/lit8 v2, v0, 0x1

    shr-int/lit8 v4, v1, 0x4

    int-to-byte v4, v4

    aput-byte v4, v8, v0

    .line 1348
    const/4 v0, 0x4

    move v4, v0

    move v0, v2

    move v2, v5

    goto/16 :goto_1

    .line 1349
    :cond_7
    if-eq v2, v12, :cond_3

    .line 1350
    iput v11, v6, Lamm$b;->c:I

    move v0, v3

    .line 1351
    goto/16 :goto_0

    .line 1356
    :pswitch_3
    if-ltz v2, :cond_8

    .line 1358
    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v1, v2

    .line 1359
    add-int/lit8 v2, v0, 0x2

    int-to-byte v4, v1

    aput-byte v4, v8, v2

    .line 1360
    add-int/lit8 v2, v0, 0x1

    shr-int/lit8 v4, v1, 0x8

    int-to-byte v4, v4

    aput-byte v4, v8, v2

    .line 1361
    shr-int/lit8 v2, v1, 0x10

    int-to-byte v2, v2

    aput-byte v2, v8, v0

    .line 1362
    add-int/lit8 v0, v0, 0x3

    move v4, v3

    move v2, v5

    .line 1363
    goto/16 :goto_1

    .line 1364
    :cond_8
    if-ne v2, v13, :cond_9

    .line 1367
    add-int/lit8 v2, v0, 0x1

    shr-int/lit8 v4, v1, 0x2

    int-to-byte v4, v4

    aput-byte v4, v8, v2

    .line 1368
    shr-int/lit8 v2, v1, 0xa

    int-to-byte v2, v2

    aput-byte v2, v8, v0

    .line 1369
    add-int/lit8 v0, v0, 0x2

    .line 1370
    const/4 v2, 0x5

    move v4, v2

    move v2, v5

    goto/16 :goto_1

    .line 1371
    :cond_9
    if-eq v2, v12, :cond_3

    .line 1372
    iput v11, v6, Lamm$b;->c:I

    move v0, v3

    .line 1373
    goto/16 :goto_0

    .line 1378
    :pswitch_4
    if-ne v2, v13, :cond_a

    .line 1379
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v2, v5

    goto/16 :goto_1

    .line 1380
    :cond_a
    if-eq v2, v12, :cond_3

    .line 1381
    iput v11, v6, Lamm$b;->c:I

    move v0, v3

    .line 1382
    goto/16 :goto_0

    .line 1387
    :pswitch_5
    if-eq v2, v12, :cond_3

    .line 1388
    iput v11, v6, Lamm$b;->c:I

    move v0, v3

    .line 1389
    goto/16 :goto_0

    :cond_b
    move v2, v1

    .line 1407
    packed-switch v4, :pswitch_data_1

    .line 1437
    :goto_3
    :pswitch_6
    iput v4, v6, Lamm$b;->c:I

    .line 1438
    iput v0, v6, Lamm$b;->b:I

    .line 1439
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1414
    :pswitch_7
    iput v11, v6, Lamm$b;->c:I

    move v0, v3

    .line 1415
    goto/16 :goto_0

    .line 1419
    :pswitch_8
    add-int/lit8 v1, v0, 0x1

    shr-int/lit8 v2, v2, 0x4

    int-to-byte v2, v2

    aput-byte v2, v8, v0

    move v0, v1

    .line 1420
    goto :goto_3

    .line 1424
    :pswitch_9
    add-int/lit8 v1, v0, 0x1

    shr-int/lit8 v5, v2, 0xa

    int-to-byte v5, v5

    aput-byte v5, v8, v0

    .line 1425
    add-int/lit8 v0, v1, 0x1

    shr-int/lit8 v2, v2, 0x2

    int-to-byte v2, v2

    aput-byte v2, v8, v1

    goto :goto_3

    .line 1429
    :pswitch_a
    iput v11, v6, Lamm$b;->c:I

    move v0, v3

    .line 1430
    goto/16 :goto_0

    .line 1163
    :cond_c
    iget v0, v6, Lamm$b;->b:I

    iget-object v1, v6, Lamm$b;->a:[B

    array-length v1, v1

    if-ne v0, v1, :cond_d

    .line 1164
    iget-object v0, v6, Lamm$b;->a:[B

    :goto_4
    return-object v0

    .line 1169
    :cond_d
    iget v0, v6, Lamm$b;->b:I

    new-array v0, v0, [B

    .line 1170
    iget-object v1, v6, Lamm$b;->a:[B

    iget v2, v6, Lamm$b;->b:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4

    .line 1319
    .line 1407
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
    .locals 4
    .param p0, "input"    # [B
    .param p1, "flags"    # I

    .prologue
    .line 458
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {p0, v2}, Lamm;->c([BI)[B

    move-result-object v2

    const-string/jumbo v3, "US-ASCII"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 459
    :catch_0
    move-exception v0

    .line 461
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static c([BI)[B
    .locals 12
    .param p0, "input"    # [B
    .param p1, "flags"    # I

    .prologue
    .line 496
    array-length v4, p0

    .line 1512
    new-instance v7, Lamm$c;

    const/4 v0, 0x0

    invoke-direct {v7, p1, v0}, Lamm$c;-><init>(I[B)V

    .line 1515
    div-int/lit8 v0, v4, 0x3

    mul-int/lit8 v0, v0, 0x4

    .line 1518
    iget-boolean v1, v7, Lamm$c;->f:Z

    if-eqz v1, :cond_4

    .line 1519
    rem-int/lit8 v1, v4, 0x3

    if-lez v1, :cond_0

    .line 1520
    add-int/lit8 v0, v0, 0x4

    .line 1536
    :cond_0
    :goto_0
    :pswitch_0
    iget-boolean v1, v7, Lamm$c;->g:Z

    if-eqz v1, :cond_1

    if-lez v4, :cond_1

    .line 1537
    add-int/lit8 v1, v4, -0x1

    div-int/lit8 v1, v1, 0x39

    add-int/lit8 v2, v1, 0x1

    iget-boolean v1, v7, Lamm$c;->h:Z

    if-eqz v1, :cond_5

    const/4 v1, 0x2

    :goto_1
    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 1541
    :cond_1
    new-array v1, v0, [B

    iput-object v1, v7, Lamm$c;->a:[B

    .line 1542
    const/4 v3, 0x0

    .line 1614
    iget-object v8, v7, Lamm$c;->i:[B

    .line 1615
    iget-object v9, v7, Lamm$c;->a:[B

    .line 1616
    const/4 v5, 0x0

    .line 1617
    iget v2, v7, Lamm$c;->e:I

    .line 1620
    add-int v10, v4, v3

    .line 1621
    const/4 v1, -0x1

    .line 1627
    iget v4, v7, Lamm$c;->d:I

    packed-switch v4, :pswitch_data_0

    :cond_2
    move v4, v1

    .line 1655
    :goto_2
    const/4 v1, -0x1

    if-eq v4, v1, :cond_1a

    .line 1656
    const/4 v1, 0x0

    shr-int/lit8 v5, v4, 0x12

    and-int/lit8 v5, v5, 0x3f

    aget-byte v5, v8, v5

    aput-byte v5, v9, v1

    .line 1657
    const/4 v1, 0x1

    shr-int/lit8 v5, v4, 0xc

    and-int/lit8 v5, v5, 0x3f

    aget-byte v5, v8, v5

    aput-byte v5, v9, v1

    .line 1658
    const/4 v1, 0x2

    shr-int/lit8 v5, v4, 0x6

    and-int/lit8 v5, v5, 0x3f

    aget-byte v5, v8, v5

    aput-byte v5, v9, v1

    .line 1659
    const/4 v5, 0x3

    const/4 v1, 0x4

    and-int/lit8 v4, v4, 0x3f

    aget-byte v4, v8, v4

    aput-byte v4, v9, v5

    .line 1660
    add-int/lit8 v2, v2, -0x1

    if-nez v2, :cond_19

    .line 1661
    iget-boolean v2, v7, Lamm$c;->h:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x4

    const/4 v1, 0x5

    const/16 v4, 0xd

    aput-byte v4, v9, v2

    .line 1662
    :cond_3
    add-int/lit8 v5, v1, 0x1

    const/16 v2, 0xa

    aput-byte v2, v9, v1

    .line 1663
    const/16 v1, 0x13

    move v6, v1

    .line 1672
    :goto_3
    add-int/lit8 v1, v3, 0x3

    if-gt v1, v10, :cond_6

    .line 1673
    aget-byte v1, p0, v3

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/lit8 v2, v3, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, v3, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    .line 1676
    shr-int/lit8 v2, v1, 0x12

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, v8, v2

    aput-byte v2, v9, v5

    .line 1677
    add-int/lit8 v2, v5, 0x1

    shr-int/lit8 v4, v1, 0xc

    and-int/lit8 v4, v4, 0x3f

    aget-byte v4, v8, v4

    aput-byte v4, v9, v2

    .line 1678
    add-int/lit8 v2, v5, 0x2

    shr-int/lit8 v4, v1, 0x6

    and-int/lit8 v4, v4, 0x3f

    aget-byte v4, v8, v4

    aput-byte v4, v9, v2

    .line 1679
    add-int/lit8 v2, v5, 0x3

    and-int/lit8 v1, v1, 0x3f

    aget-byte v1, v8, v1

    aput-byte v1, v9, v2

    .line 1680
    add-int/lit8 v3, v3, 0x3

    .line 1681
    add-int/lit8 v2, v5, 0x4

    .line 1682
    add-int/lit8 v1, v6, -0x1

    if-nez v1, :cond_18

    .line 1683
    iget-boolean v1, v7, Lamm$c;->h:Z

    if-eqz v1, :cond_17

    add-int/lit8 v1, v2, 0x1

    const/16 v4, 0xd

    aput-byte v4, v9, v2

    .line 1684
    :goto_4
    add-int/lit8 v5, v1, 0x1

    const/16 v2, 0xa

    aput-byte v2, v9, v1

    .line 1685
    const/16 v1, 0x13

    move v6, v1

    goto :goto_3

    .line 1523
    :cond_4
    rem-int/lit8 v1, v4, 0x3

    packed-switch v1, :pswitch_data_1

    goto/16 :goto_0

    .line 1527
    :pswitch_1
    add-int/lit8 v0, v0, 0x2

    .line 1528
    goto/16 :goto_0

    .line 1530
    :pswitch_2
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_0

    .line 1537
    :cond_5
    const/4 v1, 0x1

    goto/16 :goto_1

    :pswitch_3
    move v4, v1

    .line 1630
    goto/16 :goto_2

    .line 1633
    :pswitch_4
    const/4 v4, 0x2

    if-gt v4, v10, :cond_2

    .line 1636
    iget-object v1, v7, Lamm$c;->c:[B

    const/4 v4, 0x0

    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    const/4 v4, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    const/4 v3, 0x2

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v1, v4

    .line 1639
    const/4 v4, 0x0

    iput v4, v7, Lamm$c;->d:I

    move v4, v1

    goto/16 :goto_2

    .line 1645
    :pswitch_5
    const/4 v4, 0x1

    if-gt v4, v10, :cond_2

    .line 1647
    iget-object v1, v7, Lamm$c;->c:[B

    const/4 v4, 0x0

    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    iget-object v4, v7, Lamm$c;->c:[B

    const/4 v6, 0x1

    aget-byte v4, v4, v6

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v1, v4

    const/4 v4, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v1, v3

    .line 1650
    const/4 v3, 0x0

    iput v3, v7, Lamm$c;->d:I

    move v3, v4

    move v4, v1

    goto/16 :goto_2

    .line 1695
    :cond_6
    iget v1, v7, Lamm$c;->d:I

    sub-int v1, v3, v1

    add-int/lit8 v2, v10, -0x1

    if-ne v1, v2, :cond_c

    .line 1696
    const/4 v2, 0x0

    .line 1697
    iget v1, v7, Lamm$c;->d:I

    if-lez v1, :cond_b

    iget-object v1, v7, Lamm$c;->c:[B

    const/4 v4, 0x0

    const/4 v2, 0x1

    aget-byte v1, v1, v4

    :goto_5
    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v4, v1, 0x4

    .line 1698
    iget v1, v7, Lamm$c;->d:I

    sub-int/2addr v1, v2

    iput v1, v7, Lamm$c;->d:I

    .line 1699
    add-int/lit8 v2, v5, 0x1

    shr-int/lit8 v1, v4, 0x6

    and-int/lit8 v1, v1, 0x3f

    aget-byte v1, v8, v1

    aput-byte v1, v9, v5

    .line 1700
    add-int/lit8 v1, v2, 0x1

    and-int/lit8 v4, v4, 0x3f

    aget-byte v4, v8, v4

    aput-byte v4, v9, v2

    .line 1701
    iget-boolean v2, v7, Lamm$c;->f:Z

    if-eqz v2, :cond_7

    .line 1702
    add-int/lit8 v2, v1, 0x1

    const/16 v4, 0x3d

    aput-byte v4, v9, v1

    .line 1703
    add-int/lit8 v1, v2, 0x1

    const/16 v4, 0x3d

    aput-byte v4, v9, v2

    .line 1705
    :cond_7
    iget-boolean v2, v7, Lamm$c;->g:Z

    if-eqz v2, :cond_9

    .line 1706
    iget-boolean v2, v7, Lamm$c;->h:Z

    if-eqz v2, :cond_8

    add-int/lit8 v2, v1, 0x1

    const/16 v4, 0xd

    aput-byte v4, v9, v1

    move v1, v2

    .line 1707
    :cond_8
    add-int/lit8 v2, v1, 0x1

    const/16 v4, 0xa

    aput-byte v4, v9, v1

    move v1, v2

    :cond_9
    move v5, v1

    .line 1729
    :cond_a
    :goto_6
    sget-boolean v1, Lamm$c;->j:Z

    if-nez v1, :cond_12

    iget v1, v7, Lamm$c;->d:I

    if-eqz v1, :cond_12

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1697
    :cond_b
    add-int/lit8 v4, v3, 0x1

    aget-byte v1, p0, v3

    move v3, v4

    goto :goto_5

    .line 1709
    :cond_c
    iget v1, v7, Lamm$c;->d:I

    sub-int v1, v3, v1

    add-int/lit8 v2, v10, -0x2

    if-ne v1, v2, :cond_11

    .line 1710
    const/4 v2, 0x0

    .line 1711
    iget v1, v7, Lamm$c;->d:I

    const/4 v4, 0x1

    if-le v1, v4, :cond_f

    iget-object v1, v7, Lamm$c;->c:[B

    const/4 v4, 0x0

    const/4 v2, 0x1

    aget-byte v1, v1, v4

    :goto_7
    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v11, v1, 0xa

    iget v1, v7, Lamm$c;->d:I

    if-lez v1, :cond_10

    iget-object v1, v7, Lamm$c;->c:[B

    add-int/lit8 v4, v2, 0x1

    aget-byte v1, v1, v2

    move v2, v4

    :goto_8
    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x2

    or-int/2addr v1, v11

    .line 1713
    iget v4, v7, Lamm$c;->d:I

    sub-int v2, v4, v2

    iput v2, v7, Lamm$c;->d:I

    .line 1714
    add-int/lit8 v2, v5, 0x1

    shr-int/lit8 v4, v1, 0xc

    and-int/lit8 v4, v4, 0x3f

    aget-byte v4, v8, v4

    aput-byte v4, v9, v5

    .line 1715
    add-int/lit8 v4, v2, 0x1

    shr-int/lit8 v5, v1, 0x6

    and-int/lit8 v5, v5, 0x3f

    aget-byte v5, v8, v5

    aput-byte v5, v9, v2

    .line 1716
    add-int/lit8 v2, v4, 0x1

    and-int/lit8 v1, v1, 0x3f

    aget-byte v1, v8, v1

    aput-byte v1, v9, v4

    .line 1717
    iget-boolean v1, v7, Lamm$c;->f:Z

    if-eqz v1, :cond_16

    .line 1718
    add-int/lit8 v1, v2, 0x1

    const/16 v4, 0x3d

    aput-byte v4, v9, v2

    .line 1720
    :goto_9
    iget-boolean v2, v7, Lamm$c;->g:Z

    if-eqz v2, :cond_e

    .line 1721
    iget-boolean v2, v7, Lamm$c;->h:Z

    if-eqz v2, :cond_d

    add-int/lit8 v2, v1, 0x1

    const/16 v4, 0xd

    aput-byte v4, v9, v1

    move v1, v2

    .line 1722
    :cond_d
    add-int/lit8 v2, v1, 0x1

    const/16 v4, 0xa

    aput-byte v4, v9, v1

    move v1, v2

    :cond_e
    move v5, v1

    .line 1724
    goto/16 :goto_6

    .line 1711
    :cond_f
    add-int/lit8 v4, v3, 0x1

    aget-byte v1, p0, v3

    move v3, v4

    goto :goto_7

    :cond_10
    add-int/lit8 v4, v3, 0x1

    aget-byte v1, p0, v3

    move v3, v4

    goto :goto_8

    .line 1724
    :cond_11
    iget-boolean v1, v7, Lamm$c;->g:Z

    if-eqz v1, :cond_a

    if-lez v5, :cond_a

    const/16 v1, 0x13

    if-eq v6, v1, :cond_a

    .line 1725
    iget-boolean v1, v7, Lamm$c;->h:Z

    if-eqz v1, :cond_15

    add-int/lit8 v1, v5, 0x1

    const/16 v2, 0xd

    aput-byte v2, v9, v5

    .line 1726
    :goto_a
    add-int/lit8 v5, v1, 0x1

    const/16 v2, 0xa

    aput-byte v2, v9, v1

    goto/16 :goto_6

    .line 1730
    :cond_12
    sget-boolean v1, Lamm$c;->j:Z

    if-nez v1, :cond_13

    if-eq v3, v10, :cond_13

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1743
    :cond_13
    iput v5, v7, Lamm$c;->b:I

    .line 1744
    iput v6, v7, Lamm$c;->e:I

    .line 1544
    sget-boolean v1, Lamm;->a:Z

    if-nez v1, :cond_14

    iget v1, v7, Lamm$c;->b:I

    if-eq v1, v0, :cond_14

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1546
    :cond_14
    iget-object v0, v7, Lamm$c;->a:[B

    .line 496
    return-object v0

    :cond_15
    move v1, v5

    goto :goto_a

    :cond_16
    move v1, v2

    goto :goto_9

    :cond_17
    move v1, v2

    goto/16 :goto_4

    :cond_18
    move v6, v1

    move v5, v2

    goto/16 :goto_3

    :cond_19
    move v6, v2

    move v5, v1

    goto/16 :goto_3

    :cond_1a
    move v6, v2

    goto/16 :goto_3

    .line 1627
    .line 1523
    nop

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
