.class public final Liyl;
.super Ljava/lang/Object;
.source "ZStream.java"


# instance fields
.field public a:[B

.field public b:I

.field public c:I

.field public d:J

.field public e:[B

.field public f:I

.field public g:I

.field public h:J

.field public i:Ljava/lang/String;

.field j:Liyc;

.field k:Liyg;

.field l:I

.field public m:J

.field n:Liyb;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Liyb;

    invoke-direct {v0}, Liyb;-><init>()V

    iput-object v0, p0, Liyl;->n:Liyb;

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 1
    .param p1, "f"    # I

    .prologue
    .line 82
    iget-object v0, p0, Liyl;->k:Liyg;

    if-nez v0, :cond_0

    const/4 v0, -0x2

    .line 83
    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1}, Liyg;->b(Liyl;I)I

    move-result v0

    goto :goto_0
.end method

.method final a()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 142
    iget-object v1, p0, Liyl;->j:Liyc;

    iget v0, v1, Liyc;->h:I

    .line 144
    .local v0, "len":I
    iget v1, p0, Liyl;->g:I

    if-le v0, v1, :cond_0

    iget v0, p0, Liyl;->g:I

    .line 145
    :cond_0
    if-nez v0, :cond_2

    .line 167
    :cond_1
    :goto_0
    return-void

    .line 147
    :cond_2
    iget-object v1, p0, Liyl;->j:Liyc;

    iget-object v1, v1, Liyc;->e:[B

    array-length v1, v1

    iget-object v2, p0, Liyl;->j:Liyc;

    iget v2, v2, Liyc;->g:I

    if-le v1, v2, :cond_3

    iget-object v1, p0, Liyl;->e:[B

    array-length v1, v1

    iget v2, p0, Liyl;->f:I

    if-le v1, v2, :cond_3

    iget-object v1, p0, Liyl;->j:Liyc;

    iget-object v1, v1, Liyc;->e:[B

    array-length v1, v1

    iget-object v2, p0, Liyl;->j:Liyc;

    iget v2, v2, Liyc;->g:I

    add-int/2addr v2, v0

    if-lt v1, v2, :cond_3

    iget-object v1, p0, Liyl;->e:[B

    array-length v1, v1

    iget v2, p0, Liyl;->f:I

    add-int/2addr v2, v0

    if-ge v1, v2, :cond_4

    .line 151
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Liyl;->j:Liyc;

    iget-object v2, v2, Liyc;->e:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Liyl;->j:Liyc;

    iget v2, v2, Liyc;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Liyl;->e:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Liyl;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lzb;->d(Ljava/lang/String;)I

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "avail_out="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Liyl;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lzb;->d(Ljava/lang/String;)I

    .line 156
    :cond_4
    iget-object v1, p0, Liyl;->j:Liyc;

    iget-object v1, v1, Liyc;->e:[B

    iget-object v2, p0, Liyl;->j:Liyc;

    iget v2, v2, Liyc;->g:I

    iget-object v3, p0, Liyl;->e:[B

    iget v4, p0, Liyl;->f:I

    invoke-static {v1, v2, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 159
    iget v1, p0, Liyl;->f:I

    add-int/2addr v1, v0

    iput v1, p0, Liyl;->f:I

    .line 160
    iget-object v1, p0, Liyl;->j:Liyc;

    iget v2, v1, Liyc;->g:I

    add-int/2addr v2, v0

    iput v2, v1, Liyc;->g:I

    .line 161
    iget-wide v2, p0, Liyl;->h:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Liyl;->h:J

    .line 162
    iget v1, p0, Liyl;->g:I

    sub-int/2addr v1, v0

    iput v1, p0, Liyl;->g:I

    .line 163
    iget-object v1, p0, Liyl;->j:Liyc;

    iget v2, v1, Liyc;->h:I

    sub-int/2addr v2, v0

    iput v2, v1, Liyc;->h:I

    .line 164
    iget-object v1, p0, Liyl;->j:Liyc;

    iget v1, v1, Liyc;->h:I

    if-nez v1, :cond_1

    .line 165
    iget-object v1, p0, Liyl;->j:Liyc;

    const/4 v2, 0x0

    iput v2, v1, Liyc;->g:I

    goto/16 :goto_0
.end method

.method public final b(I)I
    .locals 14
    .param p1, "flush"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v12, 0x4

    const/4 v1, 0x3

    const/4 v3, 0x0

    .line 116
    iget-object v0, p0, Liyl;->j:Liyc;

    if-nez v0, :cond_1

    .line 117
    const/4 v3, -0x2

    .line 2621
    :cond_0
    :goto_0
    return v3

    .line 119
    :cond_1
    iget-object v6, p0, Liyl;->j:Liyc;

    .line 2484
    if-gt p1, v12, :cond_2

    if-gez p1, :cond_3

    .line 2485
    :cond_2
    const/4 v3, -0x2

    goto :goto_0

    .line 2488
    :cond_3
    iget-object v0, p0, Liyl;->e:[B

    if-eqz v0, :cond_5

    iget-object v0, p0, Liyl;->a:[B

    if-nez v0, :cond_4

    iget v0, p0, Liyl;->c:I

    if-nez v0, :cond_5

    :cond_4
    iget v0, v6, Liyc;->d:I

    const/16 v5, 0x29a

    if-ne v0, v5, :cond_6

    if-eq p1, v12, :cond_6

    .line 2491
    :cond_5
    sget-object v0, Liyc;->b:[Ljava/lang/String;

    aget-object v0, v0, v12

    iput-object v0, p0, Liyl;->i:Ljava/lang/String;

    .line 2492
    const/4 v3, -0x2

    goto :goto_0

    .line 2494
    :cond_6
    iget v0, p0, Liyl;->g:I

    if-nez v0, :cond_7

    .line 2495
    sget-object v0, Liyc;->b:[Ljava/lang/String;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    iput-object v0, p0, Liyl;->i:Ljava/lang/String;

    .line 2496
    const/4 v3, -0x5

    goto :goto_0

    .line 2499
    :cond_7
    iput-object p0, v6, Liyc;->c:Liyl;

    .line 2500
    iget v5, v6, Liyc;->l:I

    .line 2501
    iput p1, v6, Liyc;->l:I

    .line 2504
    iget v0, v6, Liyc;->d:I

    const/16 v7, 0x2a

    if-ne v0, v7, :cond_b

    .line 2505
    iget v0, v6, Liyc;->n:I

    add-int/lit8 v0, v0, -0x8

    shl-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x8

    shl-int/lit8 v7, v0, 0x8

    .line 2506
    iget v0, v6, Liyc;->I:I

    add-int/lit8 v0, v0, -0x1

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v0, v0, 0x1

    .line 2508
    if-le v0, v1, :cond_8

    move v0, v1

    .line 2509
    :cond_8
    shl-int/lit8 v0, v0, 0x6

    or-int/2addr v0, v7

    .line 2510
    iget v7, v6, Liyc;->C:I

    if-eqz v7, :cond_9

    or-int/lit8 v0, v0, 0x20

    .line 2511
    :cond_9
    rem-int/lit8 v7, v0, 0x1f

    rsub-int/lit8 v7, v7, 0x1f

    add-int/2addr v0, v7

    .line 2513
    const/16 v7, 0x71

    iput v7, v6, Liyc;->d:I

    .line 2514
    invoke-virtual {v6, v0}, Liyc;->a(I)V

    .line 2518
    iget v0, v6, Liyc;->C:I

    if-eqz v0, :cond_a

    .line 2519
    iget-wide v8, p0, Liyl;->m:J

    const/16 v0, 0x10

    ushr-long/2addr v8, v0

    long-to-int v0, v8

    invoke-virtual {v6, v0}, Liyc;->a(I)V

    .line 2520
    iget-wide v8, p0, Liyl;->m:J

    const-wide/32 v10, 0xffff

    and-long/2addr v8, v10

    long-to-int v0, v8

    invoke-virtual {v6, v0}, Liyc;->a(I)V

    .line 2522
    :cond_a
    const-wide/16 v8, 0x0

    const/4 v0, 0x0

    invoke-static {v8, v9, v0, v3, v3}, Liyb;->a(J[BII)J

    move-result-wide v8

    iput-wide v8, p0, Liyl;->m:J

    .line 2526
    :cond_b
    iget v0, v6, Liyc;->h:I

    if-eqz v0, :cond_c

    .line 2527
    invoke-virtual {p0}, Liyl;->a()V

    .line 2528
    iget v0, p0, Liyl;->g:I

    if-nez v0, :cond_d

    .line 2535
    const/4 v0, -0x1

    iput v0, v6, Liyc;->l:I

    goto/16 :goto_0

    .line 2543
    :cond_c
    iget v0, p0, Liyl;->c:I

    if-nez v0, :cond_d

    if-gt p1, v5, :cond_d

    if-eq p1, v12, :cond_d

    .line 2545
    sget-object v0, Liyc;->b:[Ljava/lang/String;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    iput-object v0, p0, Liyl;->i:Ljava/lang/String;

    .line 2546
    const/4 v3, -0x5

    goto/16 :goto_0

    .line 2550
    :cond_d
    iget v0, v6, Liyc;->d:I

    const/16 v5, 0x29a

    if-ne v0, v5, :cond_e

    iget v0, p0, Liyl;->c:I

    if-eqz v0, :cond_e

    .line 2551
    sget-object v0, Liyc;->b:[Ljava/lang/String;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    iput-object v0, p0, Liyl;->i:Ljava/lang/String;

    .line 2552
    const/4 v3, -0x5

    goto/16 :goto_0

    .line 2556
    :cond_e
    iget v0, p0, Liyl;->c:I

    if-nez v0, :cond_f

    iget v0, v6, Liyc;->E:I

    if-nez v0, :cond_f

    if-eqz p1, :cond_3f

    iget v0, v6, Liyc;->d:I

    const/16 v5, 0x29a

    if-eq v0, v5, :cond_3f

    .line 2558
    :cond_f
    const/4 v0, -0x1

    .line 2559
    sget-object v5, Liyc;->a:[Liyc$a;

    iget v7, v6, Liyc;->I:I

    aget-object v5, v5, v7

    iget v5, v5, Liyc$a;->e:I

    packed-switch v5, :pswitch_data_0

    .line 2572
    :goto_1
    if-eq v0, v4, :cond_10

    if-ne v0, v1, :cond_11

    .line 2573
    :cond_10
    const/16 v5, 0x29a

    iput v5, v6, Liyc;->d:I

    .line 2575
    :cond_11
    if-eqz v0, :cond_12

    if-ne v0, v4, :cond_3b

    .line 2576
    :cond_12
    iget v0, p0, Liyl;->g:I

    if-nez v0, :cond_0

    .line 2577
    const/4 v0, -0x1

    iput v0, v6, Liyc;->l:I

    goto/16 :goto_0

    .line 2790
    :pswitch_0
    const v0, 0xffff

    .line 2793
    const v5, 0xffff

    iget v7, v6, Liyc;->f:I

    add-int/lit8 v7, v7, -0x5

    if-le v5, v7, :cond_13

    .line 2794
    iget v0, v6, Liyc;->f:I

    add-int/lit8 v0, v0, -0x5

    .line 2800
    :cond_13
    iget v5, v6, Liyc;->E:I

    if-gt v5, v2, :cond_15

    .line 2801
    invoke-virtual {v6}, Liyc;->c()V

    .line 2802
    iget v5, v6, Liyc;->E:I

    if-nez v5, :cond_14

    if-nez p1, :cond_14

    move v0, v3

    goto :goto_1

    .line 2803
    :cond_14
    iget v5, v6, Liyc;->E:I

    if-eqz v5, :cond_18

    .line 2806
    :cond_15
    iget v5, v6, Liyc;->C:I

    iget v7, v6, Liyc;->E:I

    add-int/2addr v5, v7

    iput v5, v6, Liyc;->C:I

    .line 2807
    iput v3, v6, Liyc;->E:I

    .line 2810
    iget v5, v6, Liyc;->y:I

    add-int/2addr v5, v0

    .line 2811
    iget v7, v6, Liyc;->C:I

    if-eqz v7, :cond_16

    iget v7, v6, Liyc;->C:I

    if-lt v7, v5, :cond_17

    .line 2813
    :cond_16
    iget v7, v6, Liyc;->C:I

    sub-int/2addr v7, v5

    iput v7, v6, Liyc;->E:I

    .line 2814
    iput v5, v6, Liyc;->C:I

    .line 2816
    invoke-virtual {v6, v3}, Liyc;->a(Z)V

    .line 2817
    iget-object v5, v6, Liyc;->c:Liyl;

    iget v5, v5, Liyl;->g:I

    if-nez v5, :cond_17

    move v0, v3

    goto :goto_1

    .line 2823
    :cond_17
    iget v5, v6, Liyc;->C:I

    iget v7, v6, Liyc;->y:I

    sub-int/2addr v5, v7

    iget v7, v6, Liyc;->m:I

    add-int/lit16 v7, v7, -0x106

    if-lt v5, v7, :cond_13

    .line 2824
    invoke-virtual {v6, v3}, Liyc;->a(Z)V

    .line 2825
    iget-object v5, v6, Liyc;->c:Liyl;

    iget v5, v5, Liyl;->g:I

    if-nez v5, :cond_13

    move v0, v3

    goto :goto_1

    .line 2829
    :cond_18
    if-ne p1, v12, :cond_19

    move v0, v2

    :goto_2
    invoke-virtual {v6, v0}, Liyc;->a(Z)V

    .line 2830
    iget-object v0, v6, Liyc;->c:Liyl;

    iget v0, v0, Liyl;->g:I

    if-nez v0, :cond_1b

    .line 2831
    if-ne p1, v12, :cond_1a

    move v0, v4

    goto/16 :goto_1

    :cond_19
    move v0, v3

    .line 2829
    goto :goto_2

    :cond_1a
    move v0, v3

    .line 2831
    goto/16 :goto_1

    .line 2833
    :cond_1b
    if-ne p1, v12, :cond_1c

    move v0, v1

    goto/16 :goto_1

    :cond_1c
    move v0, v2

    goto/16 :goto_1

    :pswitch_1
    move v0, v3

    .line 3012
    :cond_1d
    iget v5, v6, Liyc;->E:I

    const/16 v7, 0x106

    if-ge v5, v7, :cond_1f

    .line 3013
    invoke-virtual {v6}, Liyc;->c()V

    .line 3014
    iget v5, v6, Liyc;->E:I

    const/16 v7, 0x106

    if-ge v5, v7, :cond_1e

    if-nez p1, :cond_1e

    move v0, v3

    .line 3015
    goto/16 :goto_1

    .line 3017
    :cond_1e
    iget v5, v6, Liyc;->E:I

    if-eqz v5, :cond_24

    .line 3022
    :cond_1f
    iget v5, v6, Liyc;->E:I

    if-lt v5, v1, :cond_41

    .line 3023
    iget v0, v6, Liyc;->t:I

    iget v5, v6, Liyc;->x:I

    shl-int/2addr v0, v5

    iget-object v5, v6, Liyc;->p:[B

    iget v7, v6, Liyc;->C:I

    add-int/lit8 v7, v7, 0x2

    aget-byte v5, v5, v7

    and-int/lit16 v5, v5, 0xff

    xor-int/2addr v0, v5

    iget v5, v6, Liyc;->w:I

    and-int/2addr v0, v5

    iput v0, v6, Liyc;->t:I

    .line 3026
    iget-object v0, v6, Liyc;->s:[S

    iget v5, v6, Liyc;->t:I

    aget-short v0, v0, v5

    const v5, 0xffff

    and-int/2addr v5, v0

    .line 3027
    iget-object v0, v6, Liyc;->r:[S

    iget v7, v6, Liyc;->C:I

    iget v8, v6, Liyc;->o:I

    and-int/2addr v7, v8

    iget-object v8, v6, Liyc;->s:[S

    iget v9, v6, Liyc;->t:I

    aget-short v8, v8, v9

    aput-short v8, v0, v7

    .line 3028
    iget-object v0, v6, Liyc;->s:[S

    iget v7, v6, Liyc;->t:I

    iget v8, v6, Liyc;->C:I

    int-to-short v8, v8

    aput-short v8, v0, v7

    .line 3034
    :goto_3
    int-to-long v8, v5

    const-wide/16 v10, 0x0

    cmp-long v0, v8, v10

    if-eqz v0, :cond_20

    iget v0, v6, Liyc;->C:I

    sub-int/2addr v0, v5

    const v7, 0xffff

    and-int/2addr v0, v7

    iget v7, v6, Liyc;->m:I

    add-int/lit16 v7, v7, -0x106

    if-gt v0, v7, :cond_20

    .line 3040
    iget v0, v6, Liyc;->J:I

    if-eq v0, v4, :cond_20

    .line 3041
    invoke-virtual {v6, v5}, Liyc;->b(I)I

    move-result v0

    iput v0, v6, Liyc;->z:I

    .line 3045
    :cond_20
    iget v0, v6, Liyc;->z:I

    if-lt v0, v1, :cond_23

    .line 3048
    iget v0, v6, Liyc;->C:I

    iget v7, v6, Liyc;->D:I

    sub-int/2addr v0, v7

    iget v7, v6, Liyc;->z:I

    add-int/lit8 v7, v7, -0x3

    invoke-virtual {v6, v0, v7}, Liyc;->b(II)Z

    move-result v0

    .line 3050
    iget v7, v6, Liyc;->E:I

    iget v8, v6, Liyc;->z:I

    sub-int/2addr v7, v8

    iput v7, v6, Liyc;->E:I

    .line 3054
    iget v7, v6, Liyc;->z:I

    iget v8, v6, Liyc;->H:I

    if-gt v7, v8, :cond_22

    iget v7, v6, Liyc;->E:I

    if-lt v7, v1, :cond_22

    .line 3056
    iget v5, v6, Liyc;->z:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v6, Liyc;->z:I

    .line 3058
    :cond_21
    iget v5, v6, Liyc;->C:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v6, Liyc;->C:I

    .line 3060
    iget v5, v6, Liyc;->t:I

    iget v7, v6, Liyc;->x:I

    shl-int/2addr v5, v7

    iget-object v7, v6, Liyc;->p:[B

    iget v8, v6, Liyc;->C:I

    add-int/lit8 v8, v8, 0x2

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    xor-int/2addr v5, v7

    iget v7, v6, Liyc;->w:I

    and-int/2addr v5, v7

    iput v5, v6, Liyc;->t:I

    .line 3062
    iget-object v5, v6, Liyc;->s:[S

    iget v7, v6, Liyc;->t:I

    aget-short v5, v5, v7

    const v7, 0xffff

    and-int/2addr v5, v7

    .line 3063
    iget-object v7, v6, Liyc;->r:[S

    iget v8, v6, Liyc;->C:I

    iget v9, v6, Liyc;->o:I

    and-int/2addr v8, v9

    iget-object v9, v6, Liyc;->s:[S

    iget v10, v6, Liyc;->t:I

    aget-short v9, v9, v10

    aput-short v9, v7, v8

    .line 3064
    iget-object v7, v6, Liyc;->s:[S

    iget v8, v6, Liyc;->t:I

    iget v9, v6, Liyc;->C:I

    int-to-short v9, v9

    aput-short v9, v7, v8

    .line 3069
    iget v7, v6, Liyc;->z:I

    add-int/lit8 v7, v7, -0x1

    iput v7, v6, Liyc;->z:I

    if-nez v7, :cond_21

    .line 3070
    iget v7, v6, Liyc;->C:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Liyc;->C:I

    move v13, v0

    move v0, v5

    move v5, v13

    .line 3089
    :goto_4
    if-eqz v5, :cond_1d

    .line 3091
    invoke-virtual {v6, v3}, Liyc;->a(Z)V

    .line 3092
    iget-object v5, v6, Liyc;->c:Liyl;

    iget v5, v5, Liyl;->g:I

    if-nez v5, :cond_1d

    move v0, v3

    goto/16 :goto_1

    .line 3073
    :cond_22
    iget v7, v6, Liyc;->C:I

    iget v8, v6, Liyc;->z:I

    add-int/2addr v7, v8

    iput v7, v6, Liyc;->C:I

    .line 3074
    iput v3, v6, Liyc;->z:I

    .line 3075
    iget-object v7, v6, Liyc;->p:[B

    iget v8, v6, Liyc;->C:I

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    iput v7, v6, Liyc;->t:I

    .line 3077
    iget v7, v6, Liyc;->t:I

    iget v8, v6, Liyc;->x:I

    shl-int/2addr v7, v8

    iget-object v8, v6, Liyc;->p:[B

    iget v9, v6, Liyc;->C:I

    add-int/lit8 v9, v9, 0x1

    aget-byte v8, v8, v9

    and-int/lit16 v8, v8, 0xff

    xor-int/2addr v7, v8

    iget v8, v6, Liyc;->w:I

    and-int/2addr v7, v8

    iput v7, v6, Liyc;->t:I

    move v13, v0

    move v0, v5

    move v5, v13

    goto :goto_4

    .line 3085
    :cond_23
    iget-object v0, v6, Liyc;->p:[B

    iget v7, v6, Liyc;->C:I

    aget-byte v0, v0, v7

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {v6, v3, v0}, Liyc;->b(II)Z

    move-result v0

    .line 3086
    iget v7, v6, Liyc;->E:I

    add-int/lit8 v7, v7, -0x1

    iput v7, v6, Liyc;->E:I

    .line 3087
    iget v7, v6, Liyc;->C:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Liyc;->C:I

    move v13, v0

    move v0, v5

    move v5, v13

    goto :goto_4

    .line 3096
    :cond_24
    if-ne p1, v12, :cond_25

    move v0, v2

    :goto_5
    invoke-virtual {v6, v0}, Liyc;->a(Z)V

    .line 3097
    iget-object v0, v6, Liyc;->c:Liyl;

    iget v0, v0, Liyl;->g:I

    if-nez v0, :cond_27

    .line 3098
    if-ne p1, v12, :cond_26

    move v0, v4

    goto/16 :goto_1

    :cond_25
    move v0, v3

    .line 3096
    goto :goto_5

    :cond_26
    move v0, v3

    .line 3099
    goto/16 :goto_1

    .line 3101
    :cond_27
    if-ne p1, v12, :cond_28

    move v0, v1

    goto/16 :goto_1

    :cond_28
    move v0, v2

    goto/16 :goto_1

    :pswitch_2
    move v0, v3

    .line 3119
    :cond_29
    :goto_6
    iget v5, v6, Liyc;->E:I

    const/16 v7, 0x106

    if-ge v5, v7, :cond_2b

    .line 3120
    invoke-virtual {v6}, Liyc;->c()V

    .line 3121
    iget v5, v6, Liyc;->E:I

    const/16 v7, 0x106

    if-ge v5, v7, :cond_2a

    if-nez p1, :cond_2a

    move v0, v3

    .line 3122
    goto/16 :goto_1

    .line 3124
    :cond_2a
    iget v5, v6, Liyc;->E:I

    if-eqz v5, :cond_35

    .line 3130
    :cond_2b
    iget v5, v6, Liyc;->E:I

    if-lt v5, v1, :cond_2c

    .line 3131
    iget v0, v6, Liyc;->t:I

    iget v5, v6, Liyc;->x:I

    shl-int/2addr v0, v5

    iget-object v5, v6, Liyc;->p:[B

    iget v7, v6, Liyc;->C:I

    add-int/lit8 v7, v7, 0x2

    aget-byte v5, v5, v7

    and-int/lit16 v5, v5, 0xff

    xor-int/2addr v0, v5

    iget v5, v6, Liyc;->w:I

    and-int/2addr v0, v5

    iput v0, v6, Liyc;->t:I

    .line 3133
    iget-object v0, v6, Liyc;->s:[S

    iget v5, v6, Liyc;->t:I

    aget-short v0, v0, v5

    const v5, 0xffff

    and-int/2addr v0, v5

    .line 3134
    iget-object v5, v6, Liyc;->r:[S

    iget v7, v6, Liyc;->C:I

    iget v8, v6, Liyc;->o:I

    and-int/2addr v7, v8

    iget-object v8, v6, Liyc;->s:[S

    iget v9, v6, Liyc;->t:I

    aget-short v8, v8, v9

    aput-short v8, v5, v7

    .line 3135
    iget-object v5, v6, Liyc;->s:[S

    iget v7, v6, Liyc;->t:I

    iget v8, v6, Liyc;->C:I

    int-to-short v8, v8

    aput-short v8, v5, v7

    .line 3139
    :cond_2c
    iget v5, v6, Liyc;->z:I

    iput v5, v6, Liyc;->F:I

    iget v5, v6, Liyc;->D:I

    iput v5, v6, Liyc;->A:I

    .line 3140
    iput v4, v6, Liyc;->z:I

    .line 3142
    if-eqz v0, :cond_2f

    iget v5, v6, Liyc;->F:I

    iget v7, v6, Liyc;->H:I

    if-ge v5, v7, :cond_2f

    iget v5, v6, Liyc;->C:I

    sub-int/2addr v5, v0

    const v7, 0xffff

    and-int/2addr v5, v7

    iget v7, v6, Liyc;->m:I

    add-int/lit16 v7, v7, -0x106

    if-gt v5, v7, :cond_2f

    .line 3149
    iget v5, v6, Liyc;->J:I

    if-eq v5, v4, :cond_2d

    .line 3150
    invoke-virtual {v6, v0}, Liyc;->b(I)I

    move-result v5

    iput v5, v6, Liyc;->z:I

    .line 3154
    :cond_2d
    iget v5, v6, Liyc;->z:I

    const/4 v7, 0x5

    if-gt v5, v7, :cond_2f

    iget v5, v6, Liyc;->J:I

    if-eq v5, v2, :cond_2e

    iget v5, v6, Liyc;->z:I

    if-ne v5, v1, :cond_2f

    iget v5, v6, Liyc;->C:I

    iget v7, v6, Liyc;->D:I

    sub-int/2addr v5, v7

    const/16 v7, 0x1000

    if-le v5, v7, :cond_2f

    .line 3160
    :cond_2e
    iput v4, v6, Liyc;->z:I

    .line 3166
    :cond_2f
    iget v5, v6, Liyc;->F:I

    if-lt v5, v1, :cond_32

    iget v5, v6, Liyc;->z:I

    iget v7, v6, Liyc;->F:I

    if-gt v5, v7, :cond_32

    .line 3167
    iget v5, v6, Liyc;->C:I

    iget v7, v6, Liyc;->E:I

    add-int/2addr v5, v7

    add-int/lit8 v5, v5, -0x3

    .line 3172
    iget v7, v6, Liyc;->C:I

    add-int/lit8 v7, v7, -0x1

    iget v8, v6, Liyc;->A:I

    sub-int/2addr v7, v8

    iget v8, v6, Liyc;->F:I

    add-int/lit8 v8, v8, -0x3

    invoke-virtual {v6, v7, v8}, Liyc;->b(II)Z

    move-result v7

    .line 3178
    iget v8, v6, Liyc;->E:I

    iget v9, v6, Liyc;->F:I

    add-int/lit8 v9, v9, -0x1

    sub-int/2addr v8, v9

    iput v8, v6, Liyc;->E:I

    .line 3179
    iget v8, v6, Liyc;->F:I

    add-int/lit8 v8, v8, -0x2

    iput v8, v6, Liyc;->F:I

    .line 3181
    :cond_30
    iget v8, v6, Liyc;->C:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v6, Liyc;->C:I

    if-gt v8, v5, :cond_31

    .line 3182
    iget v0, v6, Liyc;->t:I

    iget v8, v6, Liyc;->x:I

    shl-int/2addr v0, v8

    iget-object v8, v6, Liyc;->p:[B

    iget v9, v6, Liyc;->C:I

    add-int/lit8 v9, v9, 0x2

    aget-byte v8, v8, v9

    and-int/lit16 v8, v8, 0xff

    xor-int/2addr v0, v8

    iget v8, v6, Liyc;->w:I

    and-int/2addr v0, v8

    iput v0, v6, Liyc;->t:I

    .line 3184
    iget-object v0, v6, Liyc;->s:[S

    iget v8, v6, Liyc;->t:I

    aget-short v0, v0, v8

    const v8, 0xffff

    and-int/2addr v0, v8

    .line 3185
    iget-object v8, v6, Liyc;->r:[S

    iget v9, v6, Liyc;->C:I

    iget v10, v6, Liyc;->o:I

    and-int/2addr v9, v10

    iget-object v10, v6, Liyc;->s:[S

    iget v11, v6, Liyc;->t:I

    aget-short v10, v10, v11

    aput-short v10, v8, v9

    .line 3186
    iget-object v8, v6, Liyc;->s:[S

    iget v9, v6, Liyc;->t:I

    iget v10, v6, Liyc;->C:I

    int-to-short v10, v10

    aput-short v10, v8, v9

    .line 3189
    :cond_31
    iget v8, v6, Liyc;->F:I

    add-int/lit8 v8, v8, -0x1

    iput v8, v6, Liyc;->F:I

    if-nez v8, :cond_30

    .line 3190
    iput v3, v6, Liyc;->B:I

    .line 3191
    iput v4, v6, Liyc;->z:I

    .line 3192
    iget v5, v6, Liyc;->C:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v6, Liyc;->C:I

    .line 3194
    if-eqz v7, :cond_29

    .line 3195
    invoke-virtual {v6, v3}, Liyc;->a(Z)V

    .line 3196
    iget-object v5, v6, Liyc;->c:Liyl;

    iget v5, v5, Liyl;->g:I

    if-nez v5, :cond_29

    move v0, v3

    goto/16 :goto_1

    .line 3198
    :cond_32
    iget v5, v6, Liyc;->B:I

    if-eqz v5, :cond_34

    .line 3204
    iget-object v5, v6, Liyc;->p:[B

    iget v7, v6, Liyc;->C:I

    add-int/lit8 v7, v7, -0x1

    aget-byte v5, v5, v7

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v6, v3, v5}, Liyc;->b(II)Z

    move-result v5

    .line 3206
    if-eqz v5, :cond_33

    .line 3207
    invoke-virtual {v6, v3}, Liyc;->a(Z)V

    .line 3209
    :cond_33
    iget v5, v6, Liyc;->C:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v6, Liyc;->C:I

    .line 3210
    iget v5, v6, Liyc;->E:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v6, Liyc;->E:I

    .line 3211
    iget-object v5, v6, Liyc;->c:Liyl;

    iget v5, v5, Liyl;->g:I

    if-nez v5, :cond_29

    move v0, v3

    goto/16 :goto_1

    .line 3216
    :cond_34
    iput v2, v6, Liyc;->B:I

    .line 3217
    iget v5, v6, Liyc;->C:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v6, Liyc;->C:I

    .line 3218
    iget v5, v6, Liyc;->E:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v6, Liyc;->E:I

    goto/16 :goto_6

    .line 3222
    :cond_35
    iget v0, v6, Liyc;->B:I

    if-eqz v0, :cond_36

    .line 3223
    iget-object v0, v6, Liyc;->p:[B

    iget v5, v6, Liyc;->C:I

    add-int/lit8 v5, v5, -0x1

    aget-byte v0, v0, v5

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {v6, v3, v0}, Liyc;->b(II)Z

    .line 3224
    iput v3, v6, Liyc;->B:I

    .line 3226
    :cond_36
    if-ne p1, v12, :cond_37

    move v0, v2

    :goto_7
    invoke-virtual {v6, v0}, Liyc;->a(Z)V

    .line 3228
    iget-object v0, v6, Liyc;->c:Liyl;

    iget v0, v0, Liyl;->g:I

    if-nez v0, :cond_39

    .line 3229
    if-ne p1, v12, :cond_38

    move v0, v4

    goto/16 :goto_1

    :cond_37
    move v0, v3

    .line 3226
    goto :goto_7

    :cond_38
    move v0, v3

    .line 3230
    goto/16 :goto_1

    .line 3233
    :cond_39
    if-ne p1, v12, :cond_3a

    move v0, v1

    goto/16 :goto_1

    :cond_3a
    move v0, v2

    goto/16 :goto_1

    .line 2588
    :cond_3b
    if-ne v0, v2, :cond_3f

    .line 2589
    if-ne p1, v2, :cond_3e

    .line 3603
    invoke-virtual {v6, v4, v1}, Liyc;->a(II)V

    .line 3604
    const/16 v0, 0x100

    sget-object v5, Liyh;->a:[S

    invoke-virtual {v6, v0, v5}, Liyc;->a(I[S)V

    .line 3606
    invoke-virtual {v6}, Liyc;->b()V

    .line 3612
    iget v0, v6, Liyc;->ae:I

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0xa

    iget v5, v6, Liyc;->ag:I

    sub-int/2addr v0, v5

    const/16 v5, 0x9

    if-ge v0, v5, :cond_3c

    .line 3613
    invoke-virtual {v6, v4, v1}, Liyc;->a(II)V

    .line 3614
    const/16 v0, 0x100

    sget-object v1, Liyh;->a:[S

    invoke-virtual {v6, v0, v1}, Liyc;->a(I[S)V

    .line 3615
    invoke-virtual {v6}, Liyc;->b()V

    .line 3617
    :cond_3c
    const/4 v0, 0x7

    iput v0, v6, Liyc;->ae:I

    .line 2602
    :cond_3d
    invoke-virtual {p0}, Liyl;->a()V

    .line 2603
    iget v0, p0, Liyl;->g:I

    if-nez v0, :cond_3f

    .line 2604
    const/4 v0, -0x1

    iput v0, v6, Liyc;->l:I

    goto/16 :goto_0

    .line 2593
    :cond_3e
    invoke-virtual {v6, v3, v3, v3}, Liyc;->a(IIZ)V

    .line 2596
    if-ne p1, v1, :cond_3d

    move v0, v3

    .line 2598
    :goto_8
    iget v1, v6, Liyc;->u:I

    if-ge v0, v1, :cond_3d

    .line 2599
    iget-object v1, v6, Liyc;->s:[S

    aput-short v3, v1, v0

    .line 2598
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 2610
    :cond_3f
    if-ne p1, v12, :cond_0

    .line 2611
    iget v0, v6, Liyc;->i:I

    if-nez v0, :cond_40

    .line 2614
    iget-wide v0, p0, Liyl;->m:J

    const/16 v4, 0x10

    ushr-long/2addr v0, v4

    long-to-int v0, v0

    invoke-virtual {v6, v0}, Liyc;->a(I)V

    .line 2615
    iget-wide v0, p0, Liyl;->m:J

    const-wide/32 v4, 0xffff

    and-long/2addr v0, v4

    long-to-int v0, v0

    invoke-virtual {v6, v0}, Liyc;->a(I)V

    .line 2616
    invoke-virtual {p0}, Liyl;->a()V

    .line 2620
    const/4 v0, -0x1

    iput v0, v6, Liyc;->i:I

    .line 2621
    iget v0, v6, Liyc;->h:I

    if-nez v0, :cond_0

    :cond_40
    move v3, v2

    .line 119
    goto/16 :goto_0

    :cond_41
    move v5, v0

    goto/16 :goto_3

    .line 2559
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
