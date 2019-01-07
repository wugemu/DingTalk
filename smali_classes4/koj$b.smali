.class final Lkoj$b;
.super Ljava/lang/Object;
.source "Hpack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkoj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:[Lkoi;

.field d:I

.field e:I

.field f:I

.field private final g:Lokio/Buffer;

.field private final h:Z

.field private i:I

.field private j:Z


# direct methods
.method private constructor <init>(IZLokio/Buffer;)V
    .locals 3
    .param p1, "headerTableSizeSetting"    # I
    .param p2, "useCompression"    # Z
    .param p3, "out"    # Lokio/Buffer;

    .prologue
    const/16 v2, 0x1000

    const/4 v1, 0x0

    .line 400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 383
    const v0, 0x7fffffff

    iput v0, p0, Lkoj$b;->i:I

    .line 390
    const/16 v0, 0x8

    new-array v0, v0, [Lkoi;

    iput-object v0, p0, Lkoj$b;->c:[Lkoi;

    .line 392
    iget-object v0, p0, Lkoj$b;->c:[Lkoi;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lkoj$b;->d:I

    .line 393
    iput v1, p0, Lkoj$b;->e:I

    .line 394
    iput v1, p0, Lkoj$b;->f:I

    .line 401
    iput v2, p0, Lkoj$b;->a:I

    .line 402
    iput v2, p0, Lkoj$b;->b:I

    .line 403
    const/4 v0, 0x1

    iput-boolean v0, p0, Lkoj$b;->h:Z

    .line 404
    iput-object p3, p0, Lkoj$b;->g:Lokio/Buffer;

    .line 405
    return-void
.end method

.method constructor <init>(Lokio/Buffer;)V
    .locals 2
    .param p1, "out"    # Lokio/Buffer;

    .prologue
    .line 397
    const/16 v0, 0x1000

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lkoj$b;-><init>(IZLokio/Buffer;)V

    .line 398
    return-void
.end method

.method private a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 408
    iget-object v0, p0, Lkoj$b;->c:[Lkoi;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 409
    iget-object v0, p0, Lkoj$b;->c:[Lkoi;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lkoj$b;->d:I

    .line 410
    iput v2, p0, Lkoj$b;->e:I

    .line 411
    iput v2, p0, Lkoj$b;->f:I

    .line 412
    return-void
.end method

.method private a(III)V
    .locals 3
    .param p1, "value"    # I
    .param p2, "prefixMask"    # I
    .param p3, "bits"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 533
    if-ge p1, p2, :cond_0

    .line 534
    iget-object v1, p0, Lkoj$b;->g:Lokio/Buffer;

    or-int v2, p3, p1

    invoke-virtual {v1, v2}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 549
    :goto_0
    return-void

    .line 539
    :cond_0
    iget-object v1, p0, Lkoj$b;->g:Lokio/Buffer;

    or-int v2, p3, p2

    invoke-virtual {v1, v2}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 540
    sub-int/2addr p1, p2

    .line 543
    :goto_1
    const/16 v1, 0x80

    if-lt p1, v1, :cond_1

    .line 544
    and-int/lit8 v0, p1, 0x7f

    .line 545
    .local v0, "b":I
    iget-object v1, p0, Lkoj$b;->g:Lokio/Buffer;

    or-int/lit16 v2, v0, 0x80

    invoke-virtual {v1, v2}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 546
    ushr-int/lit8 p1, p1, 0x7

    .line 547
    goto :goto_1

    .line 548
    .end local v0    # "b":I
    :cond_1
    iget-object v1, p0, Lkoj$b;->g:Lokio/Buffer;

    invoke-virtual {v1, p1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    goto :goto_0
.end method

.method private a(Lkoi;)V
    .locals 8
    .param p1, "entry"    # Lkoi;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 434
    iget v1, p1, Lkoi;->i:I

    .line 437
    .local v1, "delta":I
    iget v4, p0, Lkoj$b;->b:I

    if-le v1, v4, :cond_0

    .line 438
    invoke-direct {p0}, Lkoj$b;->a()V

    .line 456
    :goto_0
    return-void

    .line 443
    :cond_0
    iget v4, p0, Lkoj$b;->f:I

    add-int/2addr v4, v1

    iget v5, p0, Lkoj$b;->b:I

    sub-int v0, v4, v5

    .line 444
    .local v0, "bytesToRecover":I
    invoke-direct {p0, v0}, Lkoj$b;->b(I)I

    .line 446
    iget v4, p0, Lkoj$b;->e:I

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lkoj$b;->c:[Lkoi;

    array-length v5, v5

    if-le v4, v5, :cond_1

    .line 447
    iget-object v4, p0, Lkoj$b;->c:[Lkoi;

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x2

    new-array v2, v4, [Lkoi;

    .line 448
    .local v2, "doubled":[Lkoi;
    iget-object v4, p0, Lkoj$b;->c:[Lkoi;

    const/4 v5, 0x0

    iget-object v6, p0, Lkoj$b;->c:[Lkoi;

    array-length v6, v6

    iget-object v7, p0, Lkoj$b;->c:[Lkoi;

    array-length v7, v7

    invoke-static {v4, v5, v2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 449
    iget-object v4, p0, Lkoj$b;->c:[Lkoi;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lkoj$b;->d:I

    .line 450
    iput-object v2, p0, Lkoj$b;->c:[Lkoi;

    .line 452
    .end local v2    # "doubled":[Lkoi;
    :cond_1
    iget v3, p0, Lkoj$b;->d:I

    add-int/lit8 v4, v3, -0x1

    iput v4, p0, Lkoj$b;->d:I

    .line 453
    .local v3, "index":I
    iget-object v4, p0, Lkoj$b;->c:[Lkoi;

    aput-object p1, v4, v3

    .line 454
    iget v4, p0, Lkoj$b;->e:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lkoj$b;->e:I

    .line 455
    iget v4, p0, Lkoj$b;->f:I

    add-int/2addr v4, v1

    iput v4, p0, Lkoj$b;->f:I

    goto :goto_0
.end method

.method private a(Lokio/ByteString;)V
    .locals 5
    .param p1, "data"    # Lokio/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/16 v4, 0x7f

    .line 552
    iget-boolean v2, p0, Lkoj$b;->h:Z

    if-eqz v2, :cond_0

    invoke-static {}, Lkoq;->a()Lkoq;

    invoke-static {p1}, Lkoq;->a(Lokio/ByteString;)I

    move-result v2

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 553
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    .line 554
    .local v0, "huffmanBuffer":Lokio/Buffer;
    invoke-static {}, Lkoq;->a()Lkoq;

    invoke-static {p1, v0}, Lkoq;->a(Lokio/ByteString;Lokio/BufferedSink;)V

    .line 555
    invoke-virtual {v0}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    move-result-object v1

    .line 556
    .local v1, "huffmanBytes":Lokio/ByteString;
    invoke-virtual {v1}, Lokio/ByteString;->size()I

    move-result v2

    const/16 v3, 0x80

    invoke-direct {p0, v2, v4, v3}, Lkoj$b;->a(III)V

    .line 557
    iget-object v2, p0, Lkoj$b;->g:Lokio/Buffer;

    invoke-virtual {v2, v1}, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;

    .line 562
    .end local v0    # "huffmanBuffer":Lokio/Buffer;
    .end local v1    # "huffmanBytes":Lokio/ByteString;
    :goto_0
    return-void

    .line 559
    :cond_0
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {p0, v2, v4, v3}, Lkoj$b;->a(III)V

    .line 560
    iget-object v2, p0, Lkoj$b;->g:Lokio/Buffer;

    invoke-virtual {v2, p1}, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;

    goto :goto_0
.end method

.method private b(I)I
    .locals 7
    .param p1, "bytesToRecover"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 416
    const/4 v0, 0x0

    .line 417
    .local v0, "entriesToEvict":I
    if-lez p1, :cond_1

    .line 419
    iget-object v2, p0, Lkoj$b;->c:[Lkoi;

    array-length v2, v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "j":I
    :goto_0
    iget v2, p0, Lkoj$b;->d:I

    if-lt v1, v2, :cond_0

    if-lez p1, :cond_0

    .line 420
    iget-object v2, p0, Lkoj$b;->c:[Lkoi;

    aget-object v2, v2, v1

    iget v2, v2, Lkoi;->i:I

    sub-int/2addr p1, v2

    .line 421
    iget v2, p0, Lkoj$b;->f:I

    iget-object v3, p0, Lkoj$b;->c:[Lkoi;

    aget-object v3, v3, v1

    iget v3, v3, Lkoi;->i:I

    sub-int/2addr v2, v3

    iput v2, p0, Lkoj$b;->f:I

    .line 422
    iget v2, p0, Lkoj$b;->e:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lkoj$b;->e:I

    .line 423
    add-int/lit8 v0, v0, 0x1

    .line 419
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 425
    :cond_0
    iget-object v2, p0, Lkoj$b;->c:[Lkoi;

    iget v3, p0, Lkoj$b;->d:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lkoj$b;->c:[Lkoi;

    iget v5, p0, Lkoj$b;->d:I

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v5, v0

    iget v6, p0, Lkoj$b;->e:I

    invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 427
    iget-object v2, p0, Lkoj$b;->c:[Lkoi;

    iget v3, p0, Lkoj$b;->d:I

    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Lkoj$b;->d:I

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v4, v0

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 428
    iget v2, p0, Lkoj$b;->d:I

    add-int/2addr v2, v0

    iput v2, p0, Lkoj$b;->d:I

    .line 430
    .end local v1    # "j":I
    :cond_1
    return v0
.end method


# virtual methods
.method final a(I)V
    .locals 3
    .param p1, "headerTableSizeSetting"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 565
    iput p1, p0, Lkoj$b;->a:I

    .line 566
    const/16 v1, 0x4000

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 569
    .local v0, "effectiveHeaderTableSize":I
    iget v1, p0, Lkoj$b;->b:I

    if-ne v1, v0, :cond_1

    .line 1583
    :cond_0
    :goto_0
    return-void

    .line 571
    :cond_1
    iget v1, p0, Lkoj$b;->b:I

    if-ge v0, v1, :cond_2

    .line 572
    iget v1, p0, Lkoj$b;->i:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lkoj$b;->i:I

    .line 575
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lkoj$b;->j:Z

    .line 576
    iput v0, p0, Lkoj$b;->b:I

    .line 1581
    iget v1, p0, Lkoj$b;->b:I

    iget v2, p0, Lkoj$b;->f:I

    if-ge v1, v2, :cond_0

    .line 1582
    iget v1, p0, Lkoj$b;->b:I

    if-nez v1, :cond_3

    .line 1583
    invoke-direct {p0}, Lkoj$b;->a()V

    goto :goto_0

    .line 1585
    :cond_3
    iget v1, p0, Lkoj$b;->f:I

    iget v2, p0, Lkoj$b;->b:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v1}, Lkoj$b;->b(I)I

    goto :goto_0
.end method

.method final a(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkoi;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 461
    .local p1, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lkoi;>;"
    iget-boolean v10, p0, Lkoj$b;->j:Z

    if-eqz v10, :cond_1

    .line 462
    iget v10, p0, Lkoj$b;->i:I

    iget v11, p0, Lkoj$b;->b:I

    if-ge v10, v11, :cond_0

    .line 464
    iget v10, p0, Lkoj$b;->i:I

    const/16 v11, 0x1f

    const/16 v12, 0x20

    invoke-direct {p0, v10, v11, v12}, Lkoj$b;->a(III)V

    .line 466
    :cond_0
    const/4 v10, 0x0

    iput-boolean v10, p0, Lkoj$b;->j:Z

    .line 467
    const v10, 0x7fffffff

    iput v10, p0, Lkoj$b;->i:I

    .line 468
    iget v10, p0, Lkoj$b;->b:I

    const/16 v11, 0x1f

    const/16 v12, 0x20

    invoke-direct {p0, v10, v11, v12}, Lkoj$b;->a(III)V

    .line 471
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    .local v7, "size":I
    :goto_0
    if-ge v3, v7, :cond_a

    .line 472
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkoi;

    .line 473
    .local v0, "header":Lkoi;
    iget-object v10, v0, Lkoi;->g:Lokio/ByteString;

    invoke-virtual {v10}, Lokio/ByteString;->toAsciiLowercase()Lokio/ByteString;

    move-result-object v6

    .line 474
    .local v6, "name":Lokio/ByteString;
    iget-object v9, v0, Lkoi;->h:Lokio/ByteString;

    .line 475
    .local v9, "value":Lokio/ByteString;
    const/4 v1, -0x1

    .line 476
    .local v1, "headerIndex":I
    const/4 v2, -0x1

    .line 478
    .local v2, "headerNameIndex":I
    sget-object v10, Lkoj;->b:Ljava/util/Map;

    invoke-interface {v10, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 479
    .local v8, "staticIndex":Ljava/lang/Integer;
    if-eqz v8, :cond_2

    .line 480
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v10

    add-int/lit8 v2, v10, 0x1

    .line 481
    const/4 v10, 0x1

    if-le v2, v10, :cond_2

    const/16 v10, 0x8

    if-ge v2, v10, :cond_2

    .line 486
    sget-object v10, Lkoj;->a:[Lkoi;

    add-int/lit8 v11, v2, -0x1

    aget-object v10, v10, v11

    iget-object v10, v10, Lkoi;->h:Lokio/ByteString;

    invoke-static {v10, v9}, Lknj;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 487
    move v1, v2

    .line 494
    :cond_2
    :goto_1
    const/4 v10, -0x1

    if-ne v1, v10, :cond_3

    .line 495
    iget v10, p0, Lkoj$b;->d:I

    add-int/lit8 v4, v10, 0x1

    .local v4, "j":I
    iget-object v10, p0, Lkoj$b;->c:[Lkoi;

    array-length v5, v10

    .local v5, "length":I
    :goto_2
    if-ge v4, v5, :cond_3

    .line 496
    iget-object v10, p0, Lkoj$b;->c:[Lkoi;

    aget-object v10, v10, v4

    iget-object v10, v10, Lkoi;->g:Lokio/ByteString;

    invoke-static {v10, v6}, Lknj;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 497
    iget-object v10, p0, Lkoj$b;->c:[Lkoi;

    aget-object v10, v10, v4

    iget-object v10, v10, Lkoi;->h:Lokio/ByteString;

    invoke-static {v10, v9}, Lknj;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 498
    iget v10, p0, Lkoj$b;->d:I

    sub-int v10, v4, v10

    sget-object v11, Lkoj;->a:[Lkoi;

    add-int/lit8 v1, v10, 0x3d

    .line 507
    .end local v4    # "j":I
    .end local v5    # "length":I
    :cond_3
    const/4 v10, -0x1

    if-eq v1, v10, :cond_7

    .line 509
    const/16 v10, 0x7f

    const/16 v11, 0x80

    invoke-direct {p0, v1, v10, v11}, Lkoj$b;->a(III)V

    .line 471
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 488
    :cond_4
    sget-object v10, Lkoj;->a:[Lkoi;

    aget-object v10, v10, v2

    iget-object v10, v10, Lkoi;->h:Lokio/ByteString;

    invoke-static {v10, v9}, Lknj;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 489
    add-int/lit8 v1, v2, 0x1

    goto :goto_1

    .line 500
    .restart local v4    # "j":I
    .restart local v5    # "length":I
    :cond_5
    const/4 v10, -0x1

    if-ne v2, v10, :cond_6

    .line 501
    iget v10, p0, Lkoj$b;->d:I

    sub-int v10, v4, v10

    sget-object v11, Lkoj;->a:[Lkoi;

    add-int/lit8 v2, v10, 0x3d

    .line 495
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 510
    .end local v4    # "j":I
    .end local v5    # "length":I
    :cond_7
    const/4 v10, -0x1

    if-ne v2, v10, :cond_8

    .line 512
    iget-object v10, p0, Lkoj$b;->g:Lokio/Buffer;

    const/16 v11, 0x40

    invoke-virtual {v10, v11}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 513
    invoke-direct {p0, v6}, Lkoj$b;->a(Lokio/ByteString;)V

    .line 514
    invoke-direct {p0, v9}, Lkoj$b;->a(Lokio/ByteString;)V

    .line 515
    invoke-direct {p0, v0}, Lkoj$b;->a(Lkoi;)V

    goto :goto_3

    .line 516
    :cond_8
    sget-object v10, Lkoi;->a:Lokio/ByteString;

    invoke-virtual {v6, v10}, Lokio/ByteString;->startsWith(Lokio/ByteString;)Z

    move-result v10

    if-eqz v10, :cond_9

    sget-object v10, Lkoi;->f:Lokio/ByteString;

    invoke-virtual {v10, v6}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9

    .line 519
    const/16 v10, 0xf

    const/4 v11, 0x0

    invoke-direct {p0, v2, v10, v11}, Lkoj$b;->a(III)V

    .line 520
    invoke-direct {p0, v9}, Lkoj$b;->a(Lokio/ByteString;)V

    goto :goto_3

    .line 523
    :cond_9
    const/16 v10, 0x3f

    const/16 v11, 0x40

    invoke-direct {p0, v2, v10, v11}, Lkoj$b;->a(III)V

    .line 524
    invoke-direct {p0, v9}, Lkoj$b;->a(Lokio/ByteString;)V

    .line 525
    invoke-direct {p0, v0}, Lkoj$b;->a(Lkoi;)V

    goto :goto_3

    .line 528
    .end local v0    # "header":Lkoi;
    .end local v1    # "headerIndex":I
    .end local v2    # "headerNameIndex":I
    .end local v6    # "name":Lokio/ByteString;
    .end local v8    # "staticIndex":Ljava/lang/Integer;
    .end local v9    # "value":Lokio/ByteString;
    :cond_a
    return-void
.end method
