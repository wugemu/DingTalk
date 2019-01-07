.class final Liyd;
.super Ljava/lang/Object;
.source "InfBlocks.java"


# static fields
.field static final a:[I

.field static final b:[I


# instance fields
.field c:I

.field d:I

.field e:I

.field f:I

.field g:[I

.field h:[I

.field i:[I

.field j:Liye;

.field k:I

.field l:I

.field m:I

.field n:[I

.field o:[B

.field p:I

.field q:I

.field r:I

.field s:Ljava/lang/Object;

.field t:J

.field u:Liyf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Liyd;->a:[I

    .line 49
    const/16 v0, 0x13

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Liyd;->b:[I

    return-void

    .line 41
    .line 49
    nop

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

    :array_1
    .array-data 4
        0x10
        0x11
        0x12
        0x0
        0x8
        0x7
        0x9
        0x6
        0xa
        0x5
        0xb
        0x4
        0xc
        0x3
        0xd
        0x2
        0xe
        0x1
        0xf
    .end array-data
.end method

.method constructor <init>(Liyl;Ljava/lang/Object;I)V
    .locals 2
    .param p1, "z"    # Liyl;
    .param p2, "checkfn"    # Ljava/lang/Object;
    .param p3, "w"    # I

    .prologue
    const/4 v1, 0x1

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-array v0, v1, [I

    iput-object v0, p0, Liyd;->h:[I

    .line 82
    new-array v0, v1, [I

    iput-object v0, p0, Liyd;->i:[I

    .line 84
    new-instance v0, Liye;

    invoke-direct {v0}, Liye;-><init>()V

    iput-object v0, p0, Liyd;->j:Liye;

    .line 99
    new-instance v0, Liyf;

    invoke-direct {v0}, Liyf;-><init>()V

    iput-object v0, p0, Liyd;->u:Liyf;

    .line 102
    const/16 v0, 0x10e0

    new-array v0, v0, [I

    iput-object v0, p0, Liyd;->n:[I

    .line 103
    new-array v0, p3, [B

    iput-object v0, p0, Liyd;->o:[B

    .line 104
    iput p3, p0, Liyd;->p:I

    .line 105
    iput-object p2, p0, Liyd;->s:Ljava/lang/Object;

    .line 106
    const/4 v0, 0x0

    iput v0, p0, Liyd;->c:I

    .line 107
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Liyd;->a(Liyl;[J)V

    .line 108
    return-void
.end method


# virtual methods
.method final a(Liyl;I)I
    .locals 10
    .param p1, "z"    # Liyl;
    .param p2, "r"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v9, -0x5

    const/4 v8, 0x0

    .line 560
    iget v1, p1, Liyl;->f:I

    .line 561
    .local v1, "p":I
    iget v2, p0, Liyd;->q:I

    .line 564
    .local v2, "q":I
    iget v3, p0, Liyd;->r:I

    if-gt v2, v3, :cond_8

    iget v3, p0, Liyd;->r:I

    :goto_0
    sub-int v0, v3, v2

    .line 565
    .local v0, "n":I
    iget v3, p1, Liyl;->g:I

    if-le v0, v3, :cond_0

    iget v0, p1, Liyl;->g:I

    .line 566
    :cond_0
    if-eqz v0, :cond_1

    if-ne p2, v9, :cond_1

    const/4 p2, 0x0

    .line 569
    :cond_1
    iget v3, p1, Liyl;->g:I

    sub-int/2addr v3, v0

    iput v3, p1, Liyl;->g:I

    .line 570
    iget-wide v4, p1, Liyl;->h:J

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p1, Liyl;->h:J

    .line 573
    iget-object v3, p0, Liyd;->s:Ljava/lang/Object;

    if-eqz v3, :cond_2

    .line 574
    iget-wide v4, p0, Liyd;->t:J

    iget-object v3, p0, Liyd;->o:[B

    invoke-static {v4, v5, v3, v2, v0}, Liyb;->a(J[BII)J

    move-result-wide v4

    iput-wide v4, p0, Liyd;->t:J

    iput-wide v4, p1, Liyl;->m:J

    .line 577
    :cond_2
    iget-object v3, p0, Liyd;->o:[B

    iget-object v4, p1, Liyl;->e:[B

    invoke-static {v3, v2, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 578
    add-int/2addr v1, v0

    .line 579
    add-int/2addr v2, v0

    .line 582
    iget v3, p0, Liyd;->p:I

    if-ne v2, v3, :cond_7

    .line 585
    iget v3, p0, Liyd;->r:I

    iget v4, p0, Liyd;->p:I

    if-ne v3, v4, :cond_3

    .line 586
    iput v8, p0, Liyd;->r:I

    .line 589
    :cond_3
    iget v3, p0, Liyd;->r:I

    add-int/lit8 v0, v3, 0x0

    .line 590
    iget v3, p1, Liyl;->g:I

    if-le v0, v3, :cond_4

    iget v0, p1, Liyl;->g:I

    .line 591
    :cond_4
    if-eqz v0, :cond_5

    if-ne p2, v9, :cond_5

    const/4 p2, 0x0

    .line 594
    :cond_5
    iget v3, p1, Liyl;->g:I

    sub-int/2addr v3, v0

    iput v3, p1, Liyl;->g:I

    .line 595
    iget-wide v4, p1, Liyl;->h:J

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p1, Liyl;->h:J

    .line 598
    iget-object v3, p0, Liyd;->s:Ljava/lang/Object;

    if-eqz v3, :cond_6

    .line 599
    iget-wide v4, p0, Liyd;->t:J

    iget-object v3, p0, Liyd;->o:[B

    invoke-static {v4, v5, v3, v8, v0}, Liyb;->a(J[BII)J

    move-result-wide v4

    iput-wide v4, p0, Liyd;->t:J

    iput-wide v4, p1, Liyl;->m:J

    .line 602
    :cond_6
    iget-object v3, p0, Liyd;->o:[B

    iget-object v4, p1, Liyl;->e:[B

    invoke-static {v3, v8, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 603
    add-int/2addr v1, v0

    .line 604
    add-int/lit8 v2, v0, 0x0

    .line 608
    :cond_7
    iput v1, p1, Liyl;->f:I

    .line 609
    iput v2, p0, Liyd;->q:I

    .line 612
    return p2

    .line 564
    .end local v0    # "n":I
    :cond_8
    iget v3, p0, Liyd;->p:I

    goto :goto_0
.end method

.method final a(Liyl;[J)V
    .locals 4
    .param p1, "z"    # Liyl;
    .param p2, "c"    # [J

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 111
    if-eqz p2, :cond_0

    iget-wide v0, p0, Liyd;->t:J

    aput-wide v0, p2, v3

    .line 114
    :cond_0
    iget v0, p0, Liyd;->c:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 115
    invoke-static {}, Liye;->a()V

    .line 117
    :cond_1
    iput v3, p0, Liyd;->c:I

    .line 118
    iput v3, p0, Liyd;->l:I

    .line 119
    iput v3, p0, Liyd;->m:I

    .line 120
    iput v3, p0, Liyd;->r:I

    iput v3, p0, Liyd;->q:I

    .line 122
    iget-object v0, p0, Liyd;->s:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 123
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v3, v3}, Liyb;->a(J[BII)J

    move-result-wide v0

    iput-wide v0, p0, Liyd;->t:J

    iput-wide v0, p1, Liyl;->m:J

    .line 124
    :cond_2
    return-void
.end method
