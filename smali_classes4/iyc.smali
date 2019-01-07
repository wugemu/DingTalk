.class public final Liyc;
.super Ljava/lang/Object;
.source "Deflate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Liyc$a;
    }
.end annotation


# static fields
.field static final a:[Liyc$a;

.field static final b:[Ljava/lang/String;


# instance fields
.field A:I

.field B:I

.field C:I

.field D:I

.field E:I

.field F:I

.field G:I

.field H:I

.field I:I

.field J:I

.field K:I

.field L:I

.field M:[S

.field N:[S

.field O:[S

.field P:Liyi;

.field Q:Liyi;

.field R:Liyi;

.field S:[S

.field T:[I

.field U:I

.field V:I

.field W:[B

.field X:I

.field Y:I

.field Z:I

.field aa:I

.field ab:I

.field ac:I

.field ad:I

.field ae:I

.field af:S

.field ag:I

.field c:Liyl;

.field d:I

.field e:[B

.field f:I

.field g:I

.field h:I

.field i:I

.field j:B

.field k:B

.field l:I

.field m:I

.field n:I

.field o:I

.field p:[B

.field q:I

.field r:[S

.field s:[S

.field t:I

.field u:I

.field v:I

.field w:I

.field x:I

.field y:I

.field z:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/16 v12, 0x20

    const/16 v11, 0x8

    const/4 v1, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x4

    .line 68
    const/16 v0, 0xa

    new-array v6, v0, [Liyc$a;

    .line 70
    sput-object v6, Liyc;->a:[Liyc$a;

    new-instance v0, Liyc$a;

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    invoke-direct/range {v0 .. v5}, Liyc$a;-><init>(IIIII)V

    aput-object v0, v6, v1

    .line 71
    sget-object v0, Liyc;->a:[Liyc$a;

    const/4 v8, 0x1

    new-instance v2, Liyc$a;

    const/4 v7, 0x1

    move v3, v9

    move v4, v9

    move v5, v11

    move v6, v9

    invoke-direct/range {v2 .. v7}, Liyc$a;-><init>(IIIII)V

    aput-object v2, v0, v8

    .line 72
    sget-object v0, Liyc;->a:[Liyc$a;

    new-instance v2, Liyc$a;

    const/4 v4, 0x5

    const/16 v5, 0x10

    const/4 v7, 0x1

    move v3, v9

    move v6, v11

    invoke-direct/range {v2 .. v7}, Liyc$a;-><init>(IIIII)V

    aput-object v2, v0, v10

    .line 73
    sget-object v0, Liyc;->a:[Liyc$a;

    const/4 v8, 0x3

    new-instance v2, Liyc$a;

    const/4 v4, 0x6

    const/4 v7, 0x1

    move v3, v9

    move v5, v12

    move v6, v12

    invoke-direct/range {v2 .. v7}, Liyc$a;-><init>(IIIII)V

    aput-object v2, v0, v8

    .line 75
    sget-object v0, Liyc;->a:[Liyc$a;

    new-instance v2, Liyc$a;

    const/16 v5, 0x10

    const/16 v6, 0x10

    move v3, v9

    move v4, v9

    move v7, v10

    invoke-direct/range {v2 .. v7}, Liyc$a;-><init>(IIIII)V

    aput-object v2, v0, v9

    .line 76
    sget-object v0, Liyc;->a:[Liyc$a;

    const/4 v8, 0x5

    new-instance v2, Liyc$a;

    const/16 v4, 0x10

    move v3, v11

    move v5, v12

    move v6, v12

    move v7, v10

    invoke-direct/range {v2 .. v7}, Liyc$a;-><init>(IIIII)V

    aput-object v2, v0, v8

    .line 77
    sget-object v0, Liyc;->a:[Liyc$a;

    const/4 v8, 0x6

    new-instance v2, Liyc$a;

    const/16 v4, 0x10

    const/16 v5, 0x80

    const/16 v6, 0x80

    move v3, v11

    move v7, v10

    invoke-direct/range {v2 .. v7}, Liyc$a;-><init>(IIIII)V

    aput-object v2, v0, v8

    .line 78
    sget-object v0, Liyc;->a:[Liyc$a;

    const/4 v8, 0x7

    new-instance v2, Liyc$a;

    const/16 v5, 0x80

    const/16 v6, 0x100

    move v3, v11

    move v4, v12

    move v7, v10

    invoke-direct/range {v2 .. v7}, Liyc$a;-><init>(IIIII)V

    aput-object v2, v0, v8

    .line 79
    sget-object v0, Liyc;->a:[Liyc$a;

    new-instance v2, Liyc$a;

    const/16 v4, 0x80

    const/16 v5, 0x102

    const/16 v6, 0x400

    move v3, v12

    move v7, v10

    invoke-direct/range {v2 .. v7}, Liyc$a;-><init>(IIIII)V

    aput-object v2, v0, v11

    .line 80
    sget-object v0, Liyc;->a:[Liyc$a;

    const/16 v8, 0x9

    new-instance v2, Liyc$a;

    const/16 v4, 0x102

    const/16 v5, 0x102

    const/16 v6, 0x1000

    move v3, v12

    move v7, v10

    invoke-direct/range {v2 .. v7}, Liyc$a;-><init>(IIIII)V

    aput-object v2, v0, v8

    .line 83
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v2, "need dictionary"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "stream end"

    aput-object v2, v0, v1

    const-string/jumbo v1, ""

    aput-object v1, v0, v10

    const/4 v1, 0x3

    const-string/jumbo v2, "file error"

    aput-object v2, v0, v1

    const-string/jumbo v1, "stream error"

    aput-object v1, v0, v9

    const/4 v1, 0x5

    const-string/jumbo v2, "data error"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "insufficient memory"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "buffer error"

    aput-object v2, v0, v1

    const-string/jumbo v1, "incompatible version"

    aput-object v1, v0, v11

    const/16 v1, 0x9

    const-string/jumbo v2, ""

    aput-object v2, v0, v1

    sput-object v0, Liyc;->b:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x23d

    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    new-instance v0, Liyi;

    invoke-direct {v0}, Liyi;-><init>()V

    iput-object v0, p0, Liyc;->P:Liyi;

    .line 261
    new-instance v0, Liyi;

    invoke-direct {v0}, Liyi;-><init>()V

    iput-object v0, p0, Liyc;->Q:Liyi;

    .line 262
    new-instance v0, Liyi;

    invoke-direct {v0}, Liyi;-><init>()V

    iput-object v0, p0, Liyc;->R:Liyi;

    .line 265
    const/16 v0, 0x10

    new-array v0, v0, [S

    iput-object v0, p0, Liyc;->S:[S

    .line 268
    new-array v0, v1, [I

    iput-object v0, p0, Liyc;->T:[I

    .line 276
    new-array v0, v1, [B

    iput-object v0, p0, Liyc;->W:[B

    .line 321
    const/16 v0, 0x47a

    new-array v0, v0, [S

    iput-object v0, p0, Liyc;->M:[S

    .line 322
    const/16 v0, 0x7a

    new-array v0, v0, [S

    iput-object v0, p0, Liyc;->N:[S

    .line 323
    const/16 v0, 0x4e

    new-array v0, v0, [S

    iput-object v0, p0, Liyc;->O:[S

    .line 324
    return-void
.end method

.method private a(B)V
    .locals 3
    .param p1, "c"    # B

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 561
    iget-object v0, p0, Liyc;->e:[B

    iget v1, p0, Liyc;->h:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Liyc;->h:I

    aput-byte p1, v0, v1

    .line 562
    return-void
.end method

.method private a([S[S)V
    .locals 9
    .param p1, "ltree"    # [S
    .param p2, "dtree"    # [S

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 667
    const/4 v4, 0x0

    .line 671
    .local v4, "lx":I
    iget v5, p0, Liyc;->Z:I

    if-eqz v5, :cond_2

    .line 673
    :cond_0
    iget-object v5, p0, Liyc;->e:[B

    iget v6, p0, Liyc;->aa:I

    mul-int/lit8 v7, v4, 0x2

    add-int/2addr v6, v7

    aget-byte v5, v5, v6

    shl-int/lit8 v5, v5, 0x8

    const v6, 0xff00

    and-int/2addr v5, v6

    iget-object v6, p0, Liyc;->e:[B

    iget v7, p0, Liyc;->aa:I

    mul-int/lit8 v8, v4, 0x2

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x1

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    or-int v1, v5, v6

    .line 675
    .local v1, "dist":I
    iget-object v5, p0, Liyc;->e:[B

    iget v6, p0, Liyc;->X:I

    add-int/2addr v6, v4

    aget-byte v5, v5, v6

    and-int/lit16 v3, v5, 0xff

    .local v3, "lc":I
    add-int/lit8 v4, v4, 0x1

    .line 677
    if-nez v1, :cond_3

    .line 678
    invoke-virtual {p0, v3, p1}, Liyc;->a(I[S)V

    .line 703
    :cond_1
    :goto_0
    iget v5, p0, Liyc;->Z:I

    if-lt v4, v5, :cond_0

    .line 706
    .end local v1    # "dist":I
    .end local v3    # "lc":I
    :cond_2
    const/16 v5, 0x100

    invoke-virtual {p0, v5, p1}, Liyc;->a(I[S)V

    .line 707
    const/16 v5, 0x201

    aget-short v5, p1, v5

    iput v5, p0, Liyc;->ae:I

    .line 708
    return-void

    .line 682
    .restart local v1    # "dist":I
    .restart local v3    # "lc":I
    :cond_3
    sget-object v5, Liyi;->f:[B

    aget-byte v0, v5, v3

    .line 684
    .local v0, "code":I
    add-int/lit16 v5, v0, 0x100

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5, p1}, Liyc;->a(I[S)V

    .line 685
    sget-object v5, Liyi;->a:[I

    aget v2, v5, v0

    .line 686
    .local v2, "extra":I
    if-eqz v2, :cond_4

    .line 687
    sget-object v5, Liyi;->g:[I

    aget v5, v5, v0

    sub-int/2addr v3, v5

    .line 688
    invoke-virtual {p0, v3, v2}, Liyc;->a(II)V

    .line 690
    :cond_4
    add-int/lit8 v1, v1, -0x1

    .line 691
    invoke-static {v1}, Liyi;->a(I)I

    move-result v0

    .line 693
    invoke-virtual {p0, v0, p2}, Liyc;->a(I[S)V

    .line 694
    sget-object v5, Liyi;->b:[I

    aget v2, v5, v0

    .line 695
    if-eqz v2, :cond_1

    .line 696
    sget-object v5, Liyi;->h:[I

    aget v5, v5, v0

    sub-int/2addr v1, v5

    .line 697
    invoke-virtual {p0, v1, v2}, Liyc;->a(II)V

    goto :goto_0
.end method

.method private static a([SII[B)Z
    .locals 4
    .param p0, "tree"    # [S
    .param p1, "n"    # I
    .param p2, "m"    # I
    .param p3, "depth"    # [B

    .prologue
    .line 406
    mul-int/lit8 v2, p1, 0x2

    aget-short v1, p0, v2

    .line 407
    .local v1, "tn2":S
    mul-int/lit8 v2, p2, 0x2

    aget-short v0, p0, v2

    .line 408
    .local v0, "tm2":S
    if-lt v1, v0, :cond_0

    if-ne v1, v0, :cond_1

    aget-byte v2, p3, p1

    aget-byte v3, p3, p2

    if-gt v2, v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private b([SI)V
    .locals 10
    .param p1, "tree"    # [S
    .param p2, "max_code"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 418
    const/4 v6, -0x1

    .line 420
    .local v6, "prevlen":I
    const/4 v7, 0x1

    aget-short v5, p1, v7

    .line 421
    .local v5, "nextlen":I
    const/4 v0, 0x0

    .line 422
    .local v0, "count":I
    const/4 v2, 0x7

    .line 423
    .local v2, "max_count":I
    const/4 v3, 0x4

    .line 425
    .local v3, "min_count":I
    if-nez v5, :cond_0

    const/16 v2, 0x8a

    const/4 v3, 0x3

    .line 426
    :cond_0
    add-int/lit8 v7, p2, 0x1

    mul-int/lit8 v7, v7, 0x2

    add-int/lit8 v7, v7, 0x1

    const/4 v8, -0x1

    aput-short v8, p1, v7

    .line 428
    const/4 v4, 0x0

    .local v4, "n":I
    :goto_0
    if-gt v4, p2, :cond_9

    .line 429
    move v1, v5

    .local v1, "curlen":I
    add-int/lit8 v7, v4, 0x1

    mul-int/lit8 v7, v7, 0x2

    add-int/lit8 v7, v7, 0x1

    aget-short v5, p1, v7

    .line 430
    add-int/lit8 v0, v0, 0x1

    if-ge v0, v2, :cond_1

    if-eq v1, v5, :cond_2

    .line 433
    :cond_1
    if-ge v0, v3, :cond_3

    .line 434
    iget-object v7, p0, Liyc;->O:[S

    mul-int/lit8 v8, v1, 0x2

    aget-short v9, v7, v8

    add-int/2addr v9, v0

    int-to-short v9, v9

    aput-short v9, v7, v8

    .line 446
    :goto_1
    const/4 v0, 0x0

    move v6, v1

    .line 447
    if-nez v5, :cond_7

    .line 448
    const/16 v2, 0x8a

    const/4 v3, 0x3

    .line 428
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 436
    :cond_3
    if-eqz v1, :cond_5

    .line 437
    if-eq v1, v6, :cond_4

    iget-object v7, p0, Liyc;->O:[S

    mul-int/lit8 v8, v1, 0x2

    aget-short v9, v7, v8

    add-int/lit8 v9, v9, 0x1

    int-to-short v9, v9

    aput-short v9, v7, v8

    .line 438
    :cond_4
    iget-object v7, p0, Liyc;->O:[S

    const/16 v8, 0x20

    aget-short v9, v7, v8

    add-int/lit8 v9, v9, 0x1

    int-to-short v9, v9

    aput-short v9, v7, v8

    goto :goto_1

    .line 440
    :cond_5
    const/16 v7, 0xa

    if-gt v0, v7, :cond_6

    .line 441
    iget-object v7, p0, Liyc;->O:[S

    const/16 v8, 0x22

    aget-short v9, v7, v8

    add-int/lit8 v9, v9, 0x1

    int-to-short v9, v9

    aput-short v9, v7, v8

    goto :goto_1

    .line 444
    :cond_6
    iget-object v7, p0, Liyc;->O:[S

    const/16 v8, 0x24

    aget-short v9, v7, v8

    add-int/lit8 v9, v9, 0x1

    int-to-short v9, v9

    aput-short v9, v7, v8

    goto :goto_1

    .line 450
    :cond_7
    if-ne v1, v5, :cond_8

    .line 451
    const/4 v2, 0x6

    const/4 v3, 0x3

    goto :goto_2

    .line 454
    :cond_8
    const/4 v2, 0x7

    const/4 v3, 0x4

    goto :goto_2

    .line 457
    .end local v1    # "curlen":I
    :cond_9
    return-void
.end method

.method private c(I)V
    .locals 1
    .param p1, "w"    # I

    .prologue
    .line 564
    int-to-byte v0, p1

    invoke-direct {p0, v0}, Liyc;->a(B)V

    .line 565
    ushr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    invoke-direct {p0, v0}, Liyc;->a(B)V

    .line 566
    return-void
.end method

.method private c([SI)V
    .locals 9
    .param p1, "tree"    # [S
    .param p2, "max_code"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 508
    const/4 v6, -0x1

    .line 510
    .local v6, "prevlen":I
    const/4 v7, 0x1

    aget-short v5, p1, v7

    .line 511
    .local v5, "nextlen":I
    const/4 v0, 0x0

    .line 512
    .local v0, "count":I
    const/4 v2, 0x7

    .line 513
    .local v2, "max_count":I
    const/4 v3, 0x4

    .line 515
    .local v3, "min_count":I
    if-nez v5, :cond_0

    const/16 v2, 0x8a

    const/4 v3, 0x3

    .line 517
    :cond_0
    const/4 v4, 0x0

    .local v4, "n":I
    :goto_0
    if-gt v4, p2, :cond_a

    .line 518
    move v1, v5

    .local v1, "curlen":I
    add-int/lit8 v7, v4, 0x1

    mul-int/lit8 v7, v7, 0x2

    add-int/lit8 v7, v7, 0x1

    aget-short v5, p1, v7

    .line 519
    add-int/lit8 v0, v0, 0x1

    if-ge v0, v2, :cond_1

    if-eq v1, v5, :cond_3

    .line 522
    :cond_1
    if-ge v0, v3, :cond_4

    .line 523
    :cond_2
    iget-object v7, p0, Liyc;->O:[S

    invoke-virtual {p0, v1, v7}, Liyc;->a(I[S)V

    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_2

    .line 540
    :goto_1
    const/4 v0, 0x0

    move v6, v1

    .line 541
    if-nez v5, :cond_8

    .line 542
    const/16 v2, 0x8a

    const/4 v3, 0x3

    .line 517
    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 525
    :cond_4
    if-eqz v1, :cond_6

    .line 526
    if-eq v1, v6, :cond_5

    .line 527
    iget-object v7, p0, Liyc;->O:[S

    invoke-virtual {p0, v1, v7}, Liyc;->a(I[S)V

    add-int/lit8 v0, v0, -0x1

    .line 529
    :cond_5
    const/16 v7, 0x10

    iget-object v8, p0, Liyc;->O:[S

    invoke-virtual {p0, v7, v8}, Liyc;->a(I[S)V

    .line 530
    add-int/lit8 v7, v0, -0x3

    const/4 v8, 0x2

    invoke-virtual {p0, v7, v8}, Liyc;->a(II)V

    goto :goto_1

    .line 532
    :cond_6
    const/16 v7, 0xa

    if-gt v0, v7, :cond_7

    .line 533
    const/16 v7, 0x11

    iget-object v8, p0, Liyc;->O:[S

    invoke-virtual {p0, v7, v8}, Liyc;->a(I[S)V

    .line 534
    add-int/lit8 v7, v0, -0x3

    const/4 v8, 0x3

    invoke-virtual {p0, v7, v8}, Liyc;->a(II)V

    goto :goto_1

    .line 537
    :cond_7
    const/16 v7, 0x12

    iget-object v8, p0, Liyc;->O:[S

    invoke-virtual {p0, v7, v8}, Liyc;->a(I[S)V

    .line 538
    add-int/lit8 v7, v0, -0xb

    const/4 v8, 0x7

    invoke-virtual {p0, v7, v8}, Liyc;->a(II)V

    goto :goto_1

    .line 544
    :cond_8
    if-ne v1, v5, :cond_9

    .line 545
    const/4 v2, 0x6

    const/4 v3, 0x3

    goto :goto_2

    .line 548
    :cond_9
    const/4 v2, 0x7

    const/4 v3, 0x4

    goto :goto_2

    .line 551
    .end local v1    # "curlen":I
    :cond_a
    return-void
.end method

.method private d()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 740
    iget v0, p0, Liyc;->ag:I

    const/16 v1, 0x8

    if-le v0, v1, :cond_1

    .line 741
    iget-short v0, p0, Liyc;->af:S

    invoke-direct {p0, v0}, Liyc;->c(I)V

    .line 745
    :cond_0
    :goto_0
    iput-short v2, p0, Liyc;->af:S

    .line 746
    iput v2, p0, Liyc;->ag:I

    .line 747
    return-void

    .line 742
    :cond_1
    iget v0, p0, Liyc;->ag:I

    if-lez v0, :cond_0

    .line 743
    iget-short v0, p0, Liyc;->af:S

    int-to-byte v0, v0

    invoke-direct {p0, v0}, Liyc;->a(B)V

    goto :goto_0
.end method


# virtual methods
.method final a(Liyl;II)I
    .locals 7
    .param p1, "strm"    # Liyl;
    .param p2, "level"    # I
    .param p3, "bits"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1316
    .line 5333
    iput-object v4, p1, Liyl;->i:Ljava/lang/String;

    .line 5335
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 p2, 0x6

    .line 5337
    .end local p2    # "level":I
    :cond_0
    if-gez p3, :cond_6

    .line 5339
    neg-int p3, p3

    move v0, v2

    .line 5342
    .end local p3    # "bits":I
    :goto_0
    const/16 v3, 0x9

    if-lt p3, v3, :cond_1

    const/16 v3, 0xf

    if-gt p3, v3, :cond_1

    if-ltz p2, :cond_1

    const/16 v3, 0x9

    if-le p2, v3, :cond_2

    .line 5346
    :cond_1
    const/4 v1, -0x2

    :goto_1
    return v1

    .line 5349
    :cond_2
    iput-object p0, p1, Liyl;->j:Liyc;

    .line 5351
    iput v0, p0, Liyc;->i:I

    .line 5352
    iput p3, p0, Liyc;->n:I

    .line 5353
    iget v0, p0, Liyc;->n:I

    shl-int v0, v2, v0

    iput v0, p0, Liyc;->m:I

    .line 5354
    iget v0, p0, Liyc;->m:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Liyc;->o:I

    .line 5356
    const/16 v0, 0xf

    iput v0, p0, Liyc;->v:I

    .line 5357
    iget v0, p0, Liyc;->v:I

    shl-int v0, v2, v0

    iput v0, p0, Liyc;->u:I

    .line 5358
    iget v0, p0, Liyc;->u:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Liyc;->w:I

    .line 5359
    iget v0, p0, Liyc;->v:I

    add-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Liyc;->x:I

    .line 5361
    iget v0, p0, Liyc;->m:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Liyc;->p:[B

    .line 5362
    iget v0, p0, Liyc;->m:I

    new-array v0, v0, [S

    iput-object v0, p0, Liyc;->r:[S

    .line 5363
    iget v0, p0, Liyc;->u:I

    new-array v0, v0, [S

    iput-object v0, p0, Liyc;->s:[S

    .line 5365
    const/16 v0, 0x4000

    iput v0, p0, Liyc;->Y:I

    .line 5369
    iget v0, p0, Liyc;->Y:I

    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Liyc;->e:[B

    .line 5370
    iget v0, p0, Liyc;->Y:I

    mul-int/lit8 v0, v0, 0x4

    iput v0, p0, Liyc;->f:I

    .line 5372
    iget v0, p0, Liyc;->Y:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Liyc;->aa:I

    .line 5373
    iget v0, p0, Liyc;->Y:I

    mul-int/lit8 v0, v0, 0x3

    iput v0, p0, Liyc;->X:I

    .line 5375
    iput p2, p0, Liyc;->I:I

    .line 5379
    iput v1, p0, Liyc;->J:I

    .line 5380
    iput-byte v6, p0, Liyc;->k:B

    .line 5386
    const-wide/16 v2, 0x0

    iput-wide v2, p1, Liyl;->h:J

    iput-wide v2, p1, Liyl;->d:J

    .line 5387
    iput-object v4, p1, Liyl;->i:Ljava/lang/String;

    .line 5388
    iput v5, p1, Liyl;->l:I

    .line 5390
    iput v1, p0, Liyc;->h:I

    .line 5391
    iput v1, p0, Liyc;->g:I

    .line 5393
    iget v0, p0, Liyc;->i:I

    if-gez v0, :cond_3

    .line 5394
    iput v1, p0, Liyc;->i:I

    .line 5396
    :cond_3
    iget v0, p0, Liyc;->i:I

    if-eqz v0, :cond_4

    const/16 v0, 0x71

    :goto_2
    iput v0, p0, Liyc;->d:I

    .line 5397
    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v4, v1, v1}, Liyb;->a(J[BII)J

    move-result-wide v2

    iput-wide v2, p1, Liyl;->m:J

    .line 5399
    iput v1, p0, Liyc;->l:I

    .line 6351
    iget-object v0, p0, Liyc;->P:Liyi;

    iget-object v2, p0, Liyc;->M:[S

    iput-object v2, v0, Liyi;->i:[S

    .line 6352
    iget-object v0, p0, Liyc;->P:Liyi;

    sget-object v2, Liyh;->c:Liyh;

    iput-object v2, v0, Liyi;->k:Liyh;

    .line 6354
    iget-object v0, p0, Liyc;->Q:Liyi;

    iget-object v2, p0, Liyc;->N:[S

    iput-object v2, v0, Liyi;->i:[S

    .line 6355
    iget-object v0, p0, Liyc;->Q:Liyi;

    sget-object v2, Liyh;->d:Liyh;

    iput-object v2, v0, Liyi;->k:Liyh;

    .line 6357
    iget-object v0, p0, Liyc;->R:Liyi;

    iget-object v2, p0, Liyc;->O:[S

    iput-object v2, v0, Liyi;->i:[S

    .line 6358
    iget-object v0, p0, Liyc;->R:Liyi;

    sget-object v2, Liyh;->e:Liyh;

    iput-object v2, v0, Liyi;->k:Liyh;

    .line 6360
    iput-short v1, p0, Liyc;->af:S

    .line 6361
    iput v1, p0, Liyc;->ag:I

    .line 6362
    iput v6, p0, Liyc;->ae:I

    .line 6365
    invoke-virtual {p0}, Liyc;->a()V

    .line 7327
    iget v0, p0, Liyc;->m:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Liyc;->q:I

    .line 7329
    iget-object v0, p0, Liyc;->s:[S

    iget v2, p0, Liyc;->u:I

    add-int/lit8 v2, v2, -0x1

    aput-short v1, v0, v2

    move v0, v1

    .line 7330
    :goto_3
    iget v2, p0, Liyc;->u:I

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_5

    .line 7331
    iget-object v2, p0, Liyc;->s:[S

    aput-short v1, v2, v0

    .line 7330
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 5396
    :cond_4
    const/16 v0, 0x2a

    goto :goto_2

    .line 7335
    :cond_5
    sget-object v0, Liyc;->a:[Liyc$a;

    iget v2, p0, Liyc;->I:I

    aget-object v0, v0, v2

    iget v0, v0, Liyc$a;->b:I

    iput v0, p0, Liyc;->H:I

    .line 7336
    sget-object v0, Liyc;->a:[Liyc$a;

    iget v2, p0, Liyc;->I:I

    aget-object v0, v0, v2

    iget v0, v0, Liyc$a;->a:I

    iput v0, p0, Liyc;->K:I

    .line 7337
    sget-object v0, Liyc;->a:[Liyc$a;

    iget v2, p0, Liyc;->I:I

    aget-object v0, v0, v2

    iget v0, v0, Liyc$a;->c:I

    iput v0, p0, Liyc;->L:I

    .line 7338
    sget-object v0, Liyc;->a:[Liyc$a;

    iget v2, p0, Liyc;->I:I

    aget-object v0, v0, v2

    iget v0, v0, Liyc$a;->d:I

    iput v0, p0, Liyc;->G:I

    .line 7340
    iput v1, p0, Liyc;->C:I

    .line 7341
    iput v1, p0, Liyc;->y:I

    .line 7342
    iput v1, p0, Liyc;->E:I

    .line 7343
    iput v5, p0, Liyc;->F:I

    iput v5, p0, Liyc;->z:I

    .line 7344
    iput v1, p0, Liyc;->B:I

    .line 7345
    iput v1, p0, Liyc;->t:I

    goto/16 :goto_1

    .restart local p3    # "bits":I
    :cond_6
    move v0, v1

    goto/16 :goto_0
.end method

.method final a()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 370
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x11e

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Liyc;->M:[S

    mul-int/lit8 v2, v0, 0x2

    aput-short v4, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 371
    :cond_0
    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x1e

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Liyc;->N:[S

    mul-int/lit8 v2, v0, 0x2

    aput-short v4, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 372
    :cond_1
    const/4 v0, 0x0

    :goto_2
    const/16 v1, 0x13

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Liyc;->O:[S

    mul-int/lit8 v2, v0, 0x2

    aput-short v4, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 374
    :cond_2
    iget-object v1, p0, Liyc;->M:[S

    const/16 v2, 0x200

    const/4 v3, 0x1

    aput-short v3, v1, v2

    .line 375
    iput v4, p0, Liyc;->ac:I

    iput v4, p0, Liyc;->ab:I

    .line 376
    iput v4, p0, Liyc;->ad:I

    iput v4, p0, Liyc;->Z:I

    .line 377
    return-void
.end method

.method final a(I)V
    .locals 1
    .param p1, "b"    # I

    .prologue
    .line 568
    shr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    invoke-direct {p0, v0}, Liyc;->a(B)V

    .line 569
    int-to-byte v0, p1

    invoke-direct {p0, v0}, Liyc;->a(B)V

    .line 570
    return-void
.end method

.method final a(II)V
    .locals 5
    .param p1, "value"    # I
    .param p2, "length"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const v4, 0xffff

    .line 578
    move v0, p2

    .line 579
    .local v0, "len":I
    iget v2, p0, Liyc;->ag:I

    rsub-int/lit8 v3, v0, 0x10

    if-le v2, v3, :cond_0

    .line 580
    move v1, p1

    .line 582
    .local v1, "val":I
    iget-short v2, p0, Liyc;->af:S

    iget v3, p0, Liyc;->ag:I

    shl-int v3, v1, v3

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    int-to-short v2, v2

    iput-short v2, p0, Liyc;->af:S

    .line 583
    iget-short v2, p0, Liyc;->af:S

    invoke-direct {p0, v2}, Liyc;->c(I)V

    .line 584
    iget v2, p0, Liyc;->ag:I

    rsub-int/lit8 v2, v2, 0x10

    ushr-int v2, v1, v2

    int-to-short v2, v2

    iput-short v2, p0, Liyc;->af:S

    .line 585
    iget v2, p0, Liyc;->ag:I

    add-int/lit8 v3, v0, -0x10

    add-int/2addr v2, v3

    iput v2, p0, Liyc;->ag:I

    .line 591
    .end local v1    # "val":I
    :goto_0
    return-void

    .line 588
    :cond_0
    iget-short v2, p0, Liyc;->af:S

    iget v3, p0, Liyc;->ag:I

    shl-int v3, p1, v3

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    int-to-short v2, v2

    iput-short v2, p0, Liyc;->af:S

    .line 589
    iget v2, p0, Liyc;->ag:I

    add-int/2addr v2, v0

    iput v2, p0, Liyc;->ag:I

    goto :goto_0
.end method

.method final a(IIZ)V
    .locals 3
    .param p1, "buf"    # I
    .param p2, "stored_len"    # I
    .param p3, "eof"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 841
    if-eqz p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/lit8 v0, v0, 0x0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Liyc;->a(II)V

    .line 3756
    invoke-direct {p0}, Liyc;->d()V

    .line 3757
    const/16 v0, 0x8

    iput v0, p0, Liyc;->ae:I

    .line 3760
    int-to-short v0, p2

    invoke-direct {p0, v0}, Liyc;->c(I)V

    .line 3761
    xor-int/lit8 v0, p2, -0x1

    int-to-short v0, v0

    invoke-direct {p0, v0}, Liyc;->c(I)V

    .line 3768
    iget-object v0, p0, Liyc;->p:[B

    .line 4556
    iget-object v1, p0, Liyc;->e:[B

    iget v2, p0, Liyc;->h:I

    invoke-static {v0, p1, v1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4557
    iget v0, p0, Liyc;->h:I

    add-int/2addr v0, p2

    iput v0, p0, Liyc;->h:I

    .line 843
    return-void

    .line 841
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final a(I[S)V
    .locals 4
    .param p1, "c"    # I
    .param p2, "tree"    # [S

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const v3, 0xffff

    .line 573
    mul-int/lit8 v0, p1, 0x2

    .line 574
    .local v0, "c2":I
    aget-short v1, p2, v0

    and-int/2addr v1, v3

    add-int/lit8 v2, v0, 0x1

    aget-short v2, p2, v2

    and-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Liyc;->a(II)V

    .line 575
    return-void
.end method

.method final a(Z)V
    .locals 12
    .param p1, "eof"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v11, 0x5

    const/4 v1, -0x1

    const/4 v4, 0x1

    const/4 v10, 0x3

    const/4 v3, 0x0

    .line 772
    iget v0, p0, Liyc;->y:I

    if-ltz v0, :cond_0

    iget v0, p0, Liyc;->y:I

    :goto_0
    iget v2, p0, Liyc;->C:I

    iget v5, p0, Liyc;->y:I

    sub-int v7, v2, v5

    .line 1855
    iget v2, p0, Liyc;->I:I

    if-lez v2, :cond_8

    .line 1857
    iget-byte v2, p0, Liyc;->j:B

    const/4 v5, 0x2

    if-ne v2, v5, :cond_3

    move v2, v3

    move v5, v3

    .line 2718
    :goto_1
    const/4 v6, 0x7

    if-ge v5, v6, :cond_e

    iget-object v6, p0, Liyc;->M:[S

    mul-int/lit8 v8, v5, 0x2

    aget-short v6, v6, v8

    add-int/2addr v2, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    move v0, v1

    .line 772
    goto :goto_0

    .line 2719
    :goto_2
    const/16 v8, 0x80

    if-ge v5, v8, :cond_1

    iget-object v8, p0, Liyc;->M:[S

    mul-int/lit8 v9, v5, 0x2

    aget-short v8, v8, v9

    add-int/2addr v6, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 2720
    :cond_1
    :goto_3
    const/16 v8, 0x100

    if-ge v5, v8, :cond_2

    iget-object v8, p0, Liyc;->M:[S

    mul-int/lit8 v9, v5, 0x2

    aget-short v8, v8, v9

    add-int/2addr v2, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 2721
    :cond_2
    ushr-int/lit8 v5, v6, 0x2

    if-le v2, v5, :cond_4

    move v2, v3

    :goto_4
    int-to-byte v2, v2

    iput-byte v2, p0, Liyc;->j:B

    .line 1860
    :cond_3
    iget-object v2, p0, Liyc;->P:Liyi;

    invoke-virtual {v2, p0}, Liyi;->a(Liyc;)V

    .line 1862
    iget-object v2, p0, Liyc;->Q:Liyi;

    invoke-virtual {v2, p0}, Liyi;->a(Liyc;)V

    .line 3465
    iget-object v2, p0, Liyc;->M:[S

    iget-object v5, p0, Liyc;->P:Liyi;

    iget v5, v5, Liyi;->j:I

    invoke-direct {p0, v2, v5}, Liyc;->b([SI)V

    .line 3466
    iget-object v2, p0, Liyc;->N:[S

    iget-object v5, p0, Liyc;->Q:Liyi;

    iget v5, v5, Liyi;->j:I

    invoke-direct {p0, v2, v5}, Liyc;->b([SI)V

    .line 3469
    iget-object v2, p0, Liyc;->R:Liyi;

    invoke-virtual {v2, p0}, Liyi;->a(Liyc;)V

    .line 3476
    const/16 v2, 0x12

    :goto_5
    if-lt v2, v10, :cond_5

    .line 3477
    iget-object v5, p0, Liyc;->O:[S

    sget-object v6, Liyi;->d:[B

    aget-byte v6, v6, v2

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x1

    aget-short v5, v5, v6

    if-nez v5, :cond_5

    .line 3476
    add-int/lit8 v2, v2, -0x1

    goto :goto_5

    :cond_4
    move v2, v4

    .line 2721
    goto :goto_4

    .line 3480
    :cond_5
    iget v5, p0, Liyc;->ab:I

    add-int/lit8 v6, v2, 0x1

    mul-int/lit8 v6, v6, 0x3

    add-int/lit8 v6, v6, 0x5

    add-int/lit8 v6, v6, 0x5

    add-int/lit8 v6, v6, 0x4

    add-int/2addr v5, v6

    iput v5, p0, Liyc;->ab:I

    .line 1872
    iget v5, p0, Liyc;->ab:I

    add-int/lit8 v5, v5, 0x3

    add-int/lit8 v5, v5, 0x7

    ushr-int/lit8 v6, v5, 0x3

    .line 1873
    iget v5, p0, Liyc;->ac:I

    add-int/lit8 v5, v5, 0x3

    add-int/lit8 v5, v5, 0x7

    ushr-int/lit8 v5, v5, 0x3

    .line 1875
    if-gt v5, v6, :cond_6

    move v6, v5

    .line 1881
    :cond_6
    :goto_6
    add-int/lit8 v8, v7, 0x4

    if-gt v8, v6, :cond_9

    if-eq v0, v1, :cond_9

    .line 1888
    invoke-virtual {p0, v0, v7, p1}, Liyc;->a(IIZ)V

    .line 1903
    :goto_7
    invoke-virtual {p0}, Liyc;->a()V

    .line 1905
    if-eqz p1, :cond_7

    .line 1906
    invoke-direct {p0}, Liyc;->d()V

    .line 775
    :cond_7
    iget v0, p0, Liyc;->C:I

    iput v0, p0, Liyc;->y:I

    .line 776
    iget-object v0, p0, Liyc;->c:Liyl;

    invoke-virtual {v0}, Liyl;->a()V

    .line 777
    return-void

    .line 1878
    :cond_8
    add-int/lit8 v2, v7, 0x5

    move v5, v2

    move v6, v2

    move v2, v3

    goto :goto_6

    .line 1890
    :cond_9
    if-ne v5, v6, :cond_b

    .line 1891
    if-eqz p1, :cond_a

    :goto_8
    add-int/lit8 v0, v4, 0x2

    invoke-virtual {p0, v0, v10}, Liyc;->a(II)V

    .line 1892
    sget-object v0, Liyh;->a:[S

    sget-object v1, Liyh;->b:[S

    invoke-direct {p0, v0, v1}, Liyc;->a([S[S)V

    goto :goto_7

    :cond_a
    move v4, v3

    .line 1891
    goto :goto_8

    .line 1895
    :cond_b
    if-eqz p1, :cond_c

    :goto_9
    add-int/lit8 v0, v4, 0x4

    invoke-virtual {p0, v0, v10}, Liyc;->a(II)V

    .line 1896
    iget-object v0, p0, Liyc;->P:Liyi;

    iget v0, v0, Liyi;->j:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Liyc;->Q:Liyi;

    iget v1, v1, Liyi;->j:I

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    .line 3492
    add-int/lit16 v4, v0, -0x101

    invoke-virtual {p0, v4, v11}, Liyc;->a(II)V

    .line 3493
    add-int/lit8 v4, v1, -0x1

    invoke-virtual {p0, v4, v11}, Liyc;->a(II)V

    .line 3494
    add-int/lit8 v4, v2, -0x4

    const/4 v5, 0x4

    invoke-virtual {p0, v4, v5}, Liyc;->a(II)V

    .line 3495
    :goto_a
    if-ge v3, v2, :cond_d

    .line 3496
    iget-object v4, p0, Liyc;->O:[S

    sget-object v5, Liyi;->d:[B

    aget-byte v5, v5, v3

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-short v4, v4, v5

    invoke-virtual {p0, v4, v10}, Liyc;->a(II)V

    .line 3495
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_c
    move v4, v3

    .line 1895
    goto :goto_9

    .line 3498
    :cond_d
    iget-object v2, p0, Liyc;->M:[S

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v2, v0}, Liyc;->c([SI)V

    .line 3499
    iget-object v0, p0, Liyc;->N:[S

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v0, v1}, Liyc;->c([SI)V

    .line 1897
    iget-object v0, p0, Liyc;->M:[S

    iget-object v1, p0, Liyc;->N:[S

    invoke-direct {p0, v0, v1}, Liyc;->a([S[S)V

    goto/16 :goto_7

    :cond_e
    move v6, v3

    goto/16 :goto_2
.end method

.method final a([SI)V
    .locals 5
    .param p1, "tree"    # [S
    .param p2, "k"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 386
    iget-object v2, p0, Liyc;->T:[I

    aget v1, v2, p2

    .line 387
    .local v1, "v":I
    shl-int/lit8 v0, p2, 0x1

    .line 388
    .local v0, "j":I
    :goto_0
    iget v2, p0, Liyc;->U:I

    if-gt v0, v2, :cond_1

    .line 390
    iget v2, p0, Liyc;->U:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Liyc;->T:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    iget-object v3, p0, Liyc;->T:[I

    aget v3, v3, v0

    iget-object v4, p0, Liyc;->W:[B

    .line 391
    invoke-static {p1, v2, v3, v4}, Liyc;->a([SII[B)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 392
    add-int/lit8 v0, v0, 0x1

    .line 395
    :cond_0
    iget-object v2, p0, Liyc;->T:[I

    aget v2, v2, v0

    iget-object v3, p0, Liyc;->W:[B

    invoke-static {p1, v1, v2, v3}, Liyc;->a([SII[B)Z

    move-result v2

    if-nez v2, :cond_1

    .line 398
    iget-object v2, p0, Liyc;->T:[I

    iget-object v3, p0, Liyc;->T:[I

    aget v3, v3, v0

    aput v3, v2, p2

    move p2, v0

    .line 400
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 402
    :cond_1
    iget-object v2, p0, Liyc;->T:[I

    aput v1, v2, p2

    .line 403
    return-void
.end method

.method final b(I)I
    .locals 14
    .param p1, "cur_match"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 1237
    iget v1, p0, Liyc;->G:I

    .line 1238
    .local v1, "chain_length":I
    iget v6, p0, Liyc;->C:I

    .line 1241
    .local v6, "scan":I
    iget v0, p0, Liyc;->F:I

    .line 1242
    .local v0, "best_len":I
    iget v11, p0, Liyc;->C:I

    iget v12, p0, Liyc;->m:I

    add-int/lit16 v12, v12, -0x106

    if-le v11, v12, :cond_6

    iget v11, p0, Liyc;->C:I

    iget v12, p0, Liyc;->m:I

    add-int/lit16 v12, v12, -0x106

    sub-int v3, v11, v12

    .line 1244
    .local v3, "limit":I
    :goto_0
    iget v5, p0, Liyc;->L:I

    .line 1249
    .local v5, "nice_match":I
    iget v10, p0, Liyc;->o:I

    .line 1251
    .local v10, "wmask":I
    iget v11, p0, Liyc;->C:I

    add-int/lit16 v9, v11, 0x102

    .line 1252
    .local v9, "strend":I
    iget-object v11, p0, Liyc;->p:[B

    add-int v12, v6, v0

    add-int/lit8 v12, v12, -0x1

    aget-byte v8, v11, v12

    .line 1253
    .local v8, "scan_end1":B
    iget-object v11, p0, Liyc;->p:[B

    add-int v12, v6, v0

    aget-byte v7, v11, v12

    .line 1259
    .local v7, "scan_end":B
    iget v11, p0, Liyc;->F:I

    iget v12, p0, Liyc;->K:I

    if-lt v11, v12, :cond_0

    .line 1260
    shr-int/lit8 v1, v1, 0x2

    .line 1265
    :cond_0
    iget v11, p0, Liyc;->E:I

    if-le v5, v11, :cond_1

    iget v5, p0, Liyc;->E:I

    .line 1268
    :cond_1
    move v4, p1

    .line 1272
    .local v4, "match":I
    iget-object v11, p0, Liyc;->p:[B

    add-int v12, v4, v0

    aget-byte v11, v11, v12

    if-ne v11, v7, :cond_4

    iget-object v11, p0, Liyc;->p:[B

    add-int v12, v4, v0

    add-int/lit8 v12, v12, -0x1

    aget-byte v11, v11, v12

    if-ne v11, v8, :cond_4

    iget-object v11, p0, Liyc;->p:[B

    aget-byte v11, v11, v4

    iget-object v12, p0, Liyc;->p:[B

    aget-byte v12, v12, v6

    if-ne v11, v12, :cond_4

    iget-object v11, p0, Liyc;->p:[B

    add-int/lit8 v4, v4, 0x1

    aget-byte v11, v11, v4

    iget-object v12, p0, Liyc;->p:[B

    add-int/lit8 v13, v6, 0x1

    aget-byte v12, v12, v13

    if-ne v11, v12, :cond_4

    .line 1282
    add-int/lit8 v6, v6, 0x2

    add-int/lit8 v4, v4, 0x1

    .line 1287
    :cond_2
    iget-object v11, p0, Liyc;->p:[B

    add-int/lit8 v6, v6, 0x1

    aget-byte v11, v11, v6

    iget-object v12, p0, Liyc;->p:[B

    add-int/lit8 v4, v4, 0x1

    aget-byte v12, v12, v4

    if-ne v11, v12, :cond_3

    iget-object v11, p0, Liyc;->p:[B

    add-int/lit8 v6, v6, 0x1

    aget-byte v11, v11, v6

    iget-object v12, p0, Liyc;->p:[B

    add-int/lit8 v4, v4, 0x1

    aget-byte v12, v12, v4

    if-ne v11, v12, :cond_3

    iget-object v11, p0, Liyc;->p:[B

    add-int/lit8 v6, v6, 0x1

    aget-byte v11, v11, v6

    iget-object v12, p0, Liyc;->p:[B

    add-int/lit8 v4, v4, 0x1

    aget-byte v12, v12, v4

    if-ne v11, v12, :cond_3

    iget-object v11, p0, Liyc;->p:[B

    add-int/lit8 v6, v6, 0x1

    aget-byte v11, v11, v6

    iget-object v12, p0, Liyc;->p:[B

    add-int/lit8 v4, v4, 0x1

    aget-byte v12, v12, v4

    if-ne v11, v12, :cond_3

    iget-object v11, p0, Liyc;->p:[B

    add-int/lit8 v6, v6, 0x1

    aget-byte v11, v11, v6

    iget-object v12, p0, Liyc;->p:[B

    add-int/lit8 v4, v4, 0x1

    aget-byte v12, v12, v4

    if-ne v11, v12, :cond_3

    iget-object v11, p0, Liyc;->p:[B

    add-int/lit8 v6, v6, 0x1

    aget-byte v11, v11, v6

    iget-object v12, p0, Liyc;->p:[B

    add-int/lit8 v4, v4, 0x1

    aget-byte v12, v12, v4

    if-ne v11, v12, :cond_3

    iget-object v11, p0, Liyc;->p:[B

    add-int/lit8 v6, v6, 0x1

    aget-byte v11, v11, v6

    iget-object v12, p0, Liyc;->p:[B

    add-int/lit8 v4, v4, 0x1

    aget-byte v12, v12, v4

    if-ne v11, v12, :cond_3

    iget-object v11, p0, Liyc;->p:[B

    add-int/lit8 v6, v6, 0x1

    aget-byte v11, v11, v6

    iget-object v12, p0, Liyc;->p:[B

    add-int/lit8 v4, v4, 0x1

    aget-byte v12, v12, v4

    if-ne v11, v12, :cond_3

    if-lt v6, v9, :cond_2

    .line 1297
    :cond_3
    sub-int v11, v9, v6

    rsub-int v2, v11, 0x102

    .line 1298
    .local v2, "len":I
    add-int/lit16 v6, v9, -0x102

    .line 1300
    if-le v2, v0, :cond_4

    .line 1301
    iput p1, p0, Liyc;->D:I

    .line 1302
    move v0, v2

    .line 1303
    if-ge v2, v5, :cond_5

    .line 1304
    iget-object v11, p0, Liyc;->p:[B

    add-int v12, v6, v0

    add-int/lit8 v12, v12, -0x1

    aget-byte v8, v11, v12

    .line 1305
    iget-object v11, p0, Liyc;->p:[B

    add-int v12, v6, v0

    aget-byte v7, v11, v12

    .line 1308
    .end local v2    # "len":I
    :cond_4
    iget-object v11, p0, Liyc;->r:[S

    and-int v12, p1, v10

    aget-short v11, v11, v12

    const v12, 0xffff

    and-int p1, v11, v12

    if-le p1, v3, :cond_5

    add-int/lit8 v1, v1, -0x1

    if-nez v1, :cond_1

    .line 1311
    :cond_5
    iget v11, p0, Liyc;->E:I

    if-gt v0, v11, :cond_7

    .line 1312
    .end local v0    # "best_len":I
    :goto_1
    return v0

    .line 1242
    .end local v3    # "limit":I
    .end local v4    # "match":I
    .end local v5    # "nice_match":I
    .end local v7    # "scan_end":B
    .end local v8    # "scan_end1":B
    .end local v9    # "strend":I
    .end local v10    # "wmask":I
    .restart local v0    # "best_len":I
    :cond_6
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1312
    .restart local v3    # "limit":I
    .restart local v4    # "match":I
    .restart local v5    # "nice_match":I
    .restart local v7    # "scan_end":B
    .restart local v8    # "scan_end1":B
    .restart local v9    # "strend":I
    .restart local v10    # "wmask":I
    :cond_7
    iget v0, p0, Liyc;->E:I

    goto :goto_1
.end method

.method final b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 726
    iget v0, p0, Liyc;->ag:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    .line 727
    iget-short v0, p0, Liyc;->af:S

    invoke-direct {p0, v0}, Liyc;->c(I)V

    .line 728
    iput-short v2, p0, Liyc;->af:S

    .line 729
    iput v2, p0, Liyc;->ag:I

    .line 736
    :cond_0
    :goto_0
    return-void

    .line 731
    :cond_1
    iget v0, p0, Liyc;->ag:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 732
    iget-short v0, p0, Liyc;->af:S

    int-to-byte v0, v0

    invoke-direct {p0, v0}, Liyc;->a(B)V

    .line 733
    iget-short v0, p0, Liyc;->af:S

    ushr-int/lit8 v0, v0, 0x8

    int-to-short v0, v0

    iput-short v0, p0, Liyc;->af:S

    .line 734
    iget v0, p0, Liyc;->ag:I

    add-int/lit8 v0, v0, -0x8

    iput v0, p0, Liyc;->ag:I

    goto :goto_0
.end method

.method final b(II)Z
    .locals 12
    .param p1, "dist"    # I
    .param p2, "lc"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 627
    iget-object v4, p0, Liyc;->e:[B

    iget v5, p0, Liyc;->aa:I

    iget v6, p0, Liyc;->Z:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    ushr-int/lit8 v6, p1, 0x8

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 628
    iget-object v4, p0, Liyc;->e:[B

    iget v5, p0, Liyc;->aa:I

    iget v6, p0, Liyc;->Z:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    int-to-byte v6, p1

    aput-byte v6, v4, v5

    .line 630
    iget-object v4, p0, Liyc;->e:[B

    iget v5, p0, Liyc;->X:I

    iget v6, p0, Liyc;->Z:I

    add-int/2addr v5, v6

    int-to-byte v6, p2

    aput-byte v6, v4, v5

    iget v4, p0, Liyc;->Z:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Liyc;->Z:I

    .line 632
    if-nez p1, :cond_0

    .line 634
    iget-object v4, p0, Liyc;->M:[S

    mul-int/lit8 v5, p2, 0x2

    aget-short v6, v4, v5

    add-int/lit8 v6, v6, 0x1

    int-to-short v6, v6

    aput-short v6, v4, v5

    .line 644
    :goto_0
    iget v4, p0, Liyc;->Z:I

    and-int/lit16 v4, v4, 0x1fff

    if-nez v4, :cond_3

    iget v4, p0, Liyc;->I:I

    const/4 v5, 0x2

    if-le v4, v5, :cond_3

    .line 646
    iget v4, p0, Liyc;->Z:I

    mul-int/lit8 v2, v4, 0x8

    .line 647
    .local v2, "out_length":I
    iget v4, p0, Liyc;->C:I

    iget v5, p0, Liyc;->y:I

    sub-int v1, v4, v5

    .line 649
    .local v1, "in_length":I
    const/4 v0, 0x0

    .local v0, "dcode":I
    :goto_1
    const/16 v4, 0x1e

    if-ge v0, v4, :cond_1

    .line 650
    int-to-long v4, v2

    iget-object v6, p0, Liyc;->N:[S

    mul-int/lit8 v7, v0, 0x2

    aget-short v6, v6, v7

    int-to-long v6, v6

    const-wide/16 v8, 0x5

    sget-object v10, Liyi;->b:[I

    aget v10, v10, v0

    int-to-long v10, v10

    add-long/2addr v8, v10

    mul-long/2addr v6, v8

    add-long/2addr v4, v6

    long-to-int v2, v4

    .line 649
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 637
    .end local v0    # "dcode":I
    .end local v1    # "in_length":I
    .end local v2    # "out_length":I
    :cond_0
    iget v4, p0, Liyc;->ad:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Liyc;->ad:I

    .line 639
    add-int/lit8 p1, p1, -0x1

    .line 640
    iget-object v4, p0, Liyc;->M:[S

    sget-object v5, Liyi;->f:[B

    aget-byte v5, v5, p2

    add-int/lit16 v5, v5, 0x100

    add-int/lit8 v5, v5, 0x1

    mul-int/lit8 v5, v5, 0x2

    aget-short v6, v4, v5

    add-int/lit8 v6, v6, 0x1

    int-to-short v6, v6

    aput-short v6, v4, v5

    .line 641
    iget-object v4, p0, Liyc;->N:[S

    invoke-static {p1}, Liyi;->a(I)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    aget-short v6, v4, v5

    add-int/lit8 v6, v6, 0x1

    int-to-short v6, v6

    aput-short v6, v4, v5

    goto :goto_0

    .line 653
    .restart local v0    # "dcode":I
    .restart local v1    # "in_length":I
    .restart local v2    # "out_length":I
    :cond_1
    ushr-int/lit8 v2, v2, 0x3

    .line 654
    iget v4, p0, Liyc;->ad:I

    iget v5, p0, Liyc;->Z:I

    div-int/lit8 v5, v5, 0x2

    if-ge v4, v5, :cond_3

    div-int/lit8 v4, v1, 0x2

    if-ge v2, v4, :cond_3

    .line 657
    .end local v0    # "dcode":I
    .end local v1    # "in_length":I
    .end local v2    # "out_length":I
    :cond_2
    :goto_2
    return v3

    :cond_3
    iget v4, p0, Liyc;->Z:I

    iget v5, p0, Liyc;->Y:I

    add-int/lit8 v5, v5, -0x1

    if-eq v4, v5, :cond_2

    const/4 v3, 0x0

    goto :goto_2
.end method

.method final c()V
    .locals 13

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const v12, 0xffff

    const/4 v5, 0x0

    .line 924
    :cond_0
    iget v4, p0, Liyc;->q:I

    iget v6, p0, Liyc;->E:I

    sub-int/2addr v4, v6

    iget v6, p0, Liyc;->C:I

    sub-int v1, v4, v6

    .line 927
    .local v1, "more":I
    if-nez v1, :cond_3

    iget v4, p0, Liyc;->C:I

    if-nez v4, :cond_3

    iget v4, p0, Liyc;->E:I

    if-nez v4, :cond_3

    .line 928
    iget v1, p0, Liyc;->m:I

    .line 970
    :cond_1
    :goto_0
    iget-object v4, p0, Liyc;->c:Liyl;

    iget v4, v4, Liyl;->c:I

    if-nez v4, :cond_9

    .line 995
    :cond_2
    :goto_1
    return-void

    .line 930
    :cond_3
    const/4 v4, -0x1

    if-ne v1, v4, :cond_4

    .line 933
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 938
    :cond_4
    iget v4, p0, Liyc;->C:I

    iget v6, p0, Liyc;->m:I

    iget v7, p0, Liyc;->m:I

    add-int/2addr v6, v7

    add-int/lit16 v6, v6, -0x106

    if-lt v4, v6, :cond_1

    .line 939
    iget-object v4, p0, Liyc;->p:[B

    iget v6, p0, Liyc;->m:I

    iget-object v7, p0, Liyc;->p:[B

    iget v8, p0, Liyc;->m:I

    invoke-static {v4, v6, v7, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 940
    iget v4, p0, Liyc;->D:I

    iget v6, p0, Liyc;->m:I

    sub-int/2addr v4, v6

    iput v4, p0, Liyc;->D:I

    .line 941
    iget v4, p0, Liyc;->C:I

    iget v6, p0, Liyc;->m:I

    sub-int/2addr v4, v6

    iput v4, p0, Liyc;->C:I

    .line 942
    iget v4, p0, Liyc;->y:I

    iget v6, p0, Liyc;->m:I

    sub-int/2addr v4, v6

    iput v4, p0, Liyc;->y:I

    .line 950
    iget v2, p0, Liyc;->u:I

    .line 951
    .local v2, "n":I
    move v3, v2

    .line 953
    .local v3, "p":I
    :cond_5
    iget-object v4, p0, Liyc;->s:[S

    add-int/lit8 v3, v3, -0x1

    aget-short v4, v4, v3

    and-int v0, v4, v12

    .line 954
    .local v0, "m":I
    iget-object v6, p0, Liyc;->s:[S

    iget v4, p0, Liyc;->m:I

    if-lt v0, v4, :cond_7

    iget v4, p0, Liyc;->m:I

    sub-int v4, v0, v4

    int-to-short v4, v4

    :goto_2
    aput-short v4, v6, v3

    .line 956
    add-int/lit8 v2, v2, -0x1

    if-nez v2, :cond_5

    .line 958
    iget v2, p0, Liyc;->m:I

    .line 959
    move v3, v2

    .line 961
    :cond_6
    iget-object v4, p0, Liyc;->r:[S

    add-int/lit8 v3, v3, -0x1

    aget-short v4, v4, v3

    and-int v0, v4, v12

    .line 962
    iget-object v6, p0, Liyc;->r:[S

    iget v4, p0, Liyc;->m:I

    if-lt v0, v4, :cond_8

    iget v4, p0, Liyc;->m:I

    sub-int v4, v0, v4

    int-to-short v4, v4

    :goto_3
    aput-short v4, v6, v3

    .line 966
    add-int/lit8 v2, v2, -0x1

    if-nez v2, :cond_6

    .line 967
    iget v4, p0, Liyc;->m:I

    add-int/2addr v1, v4

    goto :goto_0

    :cond_7
    move v4, v5

    .line 954
    goto :goto_2

    :cond_8
    move v4, v5

    .line 962
    goto :goto_3

    .line 983
    .end local v0    # "m":I
    .end local v2    # "n":I
    .end local v3    # "p":I
    :cond_9
    iget-object v4, p0, Liyc;->c:Liyl;

    iget-object v6, p0, Liyc;->p:[B

    iget v7, p0, Liyc;->C:I

    iget v8, p0, Liyc;->E:I

    add-int/2addr v7, v8

    .line 5175
    iget v2, v4, Liyl;->c:I

    .line 5177
    if-le v2, v1, :cond_a

    move v2, v1

    .line 5178
    :cond_a
    if-nez v2, :cond_c

    move v2, v5

    .line 984
    .restart local v2    # "n":I
    :goto_4
    iget v4, p0, Liyc;->E:I

    add-int/2addr v4, v2

    iput v4, p0, Liyc;->E:I

    .line 987
    iget v4, p0, Liyc;->E:I

    const/4 v6, 0x3

    if-lt v4, v6, :cond_b

    .line 988
    iget-object v4, p0, Liyc;->p:[B

    iget v6, p0, Liyc;->C:I

    aget-byte v4, v4, v6

    and-int/lit16 v4, v4, 0xff

    iput v4, p0, Liyc;->t:I

    .line 989
    iget v4, p0, Liyc;->t:I

    iget v6, p0, Liyc;->x:I

    shl-int/2addr v4, v6

    iget-object v6, p0, Liyc;->p:[B

    iget v7, p0, Liyc;->C:I

    add-int/lit8 v7, v7, 0x1

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    xor-int/2addr v4, v6

    iget v6, p0, Liyc;->w:I

    and-int/2addr v4, v6

    iput v4, p0, Liyc;->t:I

    .line 994
    :cond_b
    iget v4, p0, Liyc;->E:I

    const/16 v6, 0x106

    if-ge v4, v6, :cond_2

    iget-object v4, p0, Liyc;->c:Liyl;

    iget v4, v4, Liyl;->c:I

    if-nez v4, :cond_0

    goto/16 :goto_1

    .line 5180
    .end local v2    # "n":I
    :cond_c
    iget v8, v4, Liyl;->c:I

    sub-int/2addr v8, v2

    iput v8, v4, Liyl;->c:I

    .line 5182
    iget-object v8, v4, Liyl;->j:Liyc;

    iget v8, v8, Liyc;->i:I

    if-nez v8, :cond_d

    .line 5183
    iget-wide v8, v4, Liyl;->m:J

    iget-object v10, v4, Liyl;->a:[B

    iget v11, v4, Liyl;->b:I

    invoke-static {v8, v9, v10, v11, v2}, Liyb;->a(J[BII)J

    move-result-wide v8

    iput-wide v8, v4, Liyl;->m:J

    .line 5185
    :cond_d
    iget-object v8, v4, Liyl;->a:[B

    iget v9, v4, Liyl;->b:I

    invoke-static {v8, v9, v6, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5186
    iget v6, v4, Liyl;->b:I

    add-int/2addr v6, v2

    iput v6, v4, Liyl;->b:I

    .line 5187
    iget-wide v6, v4, Liyl;->d:J

    int-to-long v8, v2

    add-long/2addr v6, v8

    iput-wide v6, v4, Liyl;->d:J

    goto :goto_4
.end method
