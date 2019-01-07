.class public final Lkro;
.super Ljava/lang/Object;
.source "AddressListParserTokenManager.java"

# interfaces
.implements Lkrn;


# static fields
.field static a:I

.field static final c:[J

.field static final d:[I

.field public static final e:[Ljava/lang/String;

.field public static final g:[Ljava/lang/String;

.field public static final h:[I

.field static final i:[J

.field static final j:[J

.field static final k:[J

.field static final l:[J


# instance fields
.field public b:Ljava/io/PrintStream;

.field protected m:Lkru;

.field protected n:C

.field o:I

.field p:I

.field q:I

.field r:I

.field s:I

.field t:I

.field private final u:[I

.field private final v:[I

.field private final w:Ljava/lang/StringBuilder;

.field private x:Ljava/lang/StringBuilder;

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 204
    new-array v0, v6, [J

    fill-array-data v0, :array_0

    sput-object v0, Lkro;->c:[J

    .line 645
    new-array v0, v4, [I

    sput-object v0, Lkro;->d:[I

    .line 649
    const/16 v0, 0x22

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, ""

    aput-object v1, v0, v4

    const-string/jumbo v1, "\r"

    aput-object v1, v0, v5

    const-string/jumbo v1, "\n"

    aput-object v1, v0, v7

    const/4 v1, 0x3

    const-string/jumbo v2, ","

    aput-object v2, v0, v1

    const-string/jumbo v1, ":"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string/jumbo v2, ";"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "<"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, ">"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "@"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "."

    aput-object v2, v0, v1

    const/16 v1, 0xa

    aput-object v3, v0, v1

    const/16 v1, 0xb

    aput-object v3, v0, v1

    const/16 v1, 0xc

    aput-object v3, v0, v1

    const/16 v1, 0xd

    aput-object v3, v0, v1

    const/16 v1, 0xe

    aput-object v3, v0, v1

    const/16 v1, 0xf

    aput-object v3, v0, v1

    const/16 v1, 0x10

    aput-object v3, v0, v1

    const/16 v1, 0x11

    aput-object v3, v0, v1

    const/16 v1, 0x12

    aput-object v3, v0, v1

    const/16 v1, 0x13

    aput-object v3, v0, v1

    const/16 v1, 0x14

    aput-object v3, v0, v1

    const/16 v1, 0x15

    aput-object v3, v0, v1

    const/16 v1, 0x16

    aput-object v3, v0, v1

    const/16 v1, 0x17

    aput-object v3, v0, v1

    const/16 v1, 0x18

    aput-object v3, v0, v1

    const/16 v1, 0x19

    aput-object v3, v0, v1

    const/16 v1, 0x1a

    aput-object v3, v0, v1

    const/16 v1, 0x1b

    aput-object v3, v0, v1

    const/16 v1, 0x1c

    aput-object v3, v0, v1

    const/16 v1, 0x1d

    aput-object v3, v0, v1

    const/16 v1, 0x1e

    aput-object v3, v0, v1

    const/16 v1, 0x1f

    aput-object v3, v0, v1

    const/16 v1, 0x20

    aput-object v3, v0, v1

    const/16 v1, 0x21

    aput-object v3, v0, v1

    sput-object v0, Lkro;->e:[Ljava/lang/String;

    .line 655
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "DEFAULT"

    aput-object v1, v0, v4

    const-string/jumbo v1, "INDOMAINLITERAL"

    aput-object v1, v0, v5

    const-string/jumbo v1, "INCOMMENT"

    aput-object v1, v0, v7

    const/4 v1, 0x3

    const-string/jumbo v2, "NESTED_COMMENT"

    aput-object v2, v0, v1

    const-string/jumbo v1, "INQUOTEDSTRING"

    aput-object v1, v0, v6

    sput-object v0, Lkro;->g:[Ljava/lang/String;

    .line 664
    const/16 v0, 0x22

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lkro;->h:[I

    .line 668
    new-array v0, v5, [J

    const-wide v2, 0x800443ffL

    aput-wide v2, v0, v4

    sput-object v0, Lkro;->i:[J

    .line 671
    new-array v0, v5, [J

    const-wide/32 v2, 0x100400

    aput-wide v2, v0, v4

    sput-object v0, Lkro;->j:[J

    .line 674
    new-array v0, v5, [J

    const-wide/16 v2, 0x400

    aput-wide v2, v0, v4

    sput-object v0, Lkro;->k:[J

    .line 677
    new-array v0, v5, [J

    const-wide/32 v2, 0x7feb8000

    aput-wide v2, v0, v4

    sput-object v0, Lkro;->l:[J

    return-void

    .line 204
    .line 664
    :array_0
    .array-data 8
        0x0
        0x0
        -0x1
        -0x1
    .end array-data

    :array_1
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
        0x1
        -0x1
        -0x1
        0x0
        0x2
        0x0
        -0x1
        0x3
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x4
        -0x1
        -0x1
        0x0
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>(Lkru;)V
    .locals 2
    .param p1, "stream"    # Lkru;

    .prologue
    const/4 v1, 0x0

    .line 689
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iput-object v0, p0, Lkro;->b:Ljava/io/PrintStream;

    .line 681
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lkro;->u:[I

    .line 682
    const/4 v0, 0x6

    new-array v0, v0, [I

    iput-object v0, p0, Lkro;->v:[I

    .line 683
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lkro;->w:Ljava/lang/StringBuilder;

    .line 684
    iget-object v0, p0, Lkro;->w:Ljava/lang/StringBuilder;

    iput-object v0, p0, Lkro;->x:Ljava/lang/StringBuilder;

    .line 757
    iput v1, p0, Lkro;->o:I

    .line 758
    iput v1, p0, Lkro;->p:I

    .line 692
    iput-object p1, p0, Lkro;->m:Lkru;

    .line 693
    return-void
.end method

.method private a(II)I
    .locals 1
    .param p1, "pos"    # I
    .param p2, "kind"    # I

    .prologue
    .line 51
    iput p2, p0, Lkro;->t:I

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lkro;->s:I

    .line 53
    const/4 v0, 0x1

    return v0
.end method

.method private a(I)V
    .locals 3
    .param p1, "state"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 951
    iget-object v0, p0, Lkro;->u:[I

    aget v0, v0, p1

    iget v1, p0, Lkro;->r:I

    if-eq v0, v1, :cond_0

    .line 953
    iget-object v0, p0, Lkro;->v:[I

    iget v1, p0, Lkro;->q:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lkro;->q:I

    aput p1, v0, v1

    .line 954
    iget-object v0, p0, Lkro;->u:[I

    iget v1, p0, Lkro;->r:I

    aput v1, v0, p1

    .line 956
    :cond_0
    return-void
.end method

.method private b(II)I
    .locals 10
    .param p1, "startState"    # I
    .param p2, "curPos"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 89
    const/4 v4, 0x0

    .line 90
    .local v4, "startsAt":I
    const/4 v5, 0x3

    iput v5, p0, Lkro;->q:I

    .line 91
    const/4 v0, 0x1

    .line 92
    .local v0, "i":I
    iget-object v5, p0, Lkro;->v:[I

    const/4 v6, 0x0

    const/4 v7, 0x1

    aput v7, v5, v6

    .line 93
    const v1, 0x7fffffff

    .line 96
    .local v1, "kind":I
    :goto_0
    iget v5, p0, Lkro;->r:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lkro;->r:I

    const v6, 0x7fffffff

    if-ne v5, v6, :cond_0

    .line 97
    invoke-direct {p0}, Lkro;->b()V

    .line 98
    :cond_0
    iget-char v5, p0, Lkro;->n:C

    const/16 v6, 0x40

    if-ge v5, v6, :cond_9

    .line 100
    const-wide/16 v6, 0x1

    iget-char v5, p0, Lkro;->n:C

    shl-long v2, v6, v5

    .line 103
    .local v2, "l":J
    :cond_1
    iget-object v5, p0, Lkro;->v:[I

    add-int/lit8 v0, v0, -0x1

    aget v5, v5, v0

    packed-switch v5, :pswitch_data_0

    .line 134
    :cond_2
    :goto_1
    if-ne v0, v4, :cond_1

    .line 167
    .end local v2    # "l":J
    :cond_3
    :goto_2
    const v5, 0x7fffffff

    if-eq v1, v5, :cond_4

    .line 169
    iput v1, p0, Lkro;->t:I

    .line 170
    iput p2, p0, Lkro;->s:I

    .line 171
    const v1, 0x7fffffff

    .line 173
    :cond_4
    add-int/lit8 p2, p2, 0x1

    .line 174
    iget v0, p0, Lkro;->q:I

    iput v4, p0, Lkro;->q:I

    rsub-int/lit8 v4, v4, 0x3

    if-ne v0, v4, :cond_d

    .line 177
    :goto_3
    return p2

    .line 106
    .restart local v2    # "l":J
    :pswitch_0
    const-wide v6, -0x5c00530600000000L

    and-long/2addr v6, v2

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_6

    .line 108
    const/16 v5, 0xe

    if-le v1, v5, :cond_5

    .line 109
    const/16 v1, 0xe

    .line 110
    :cond_5
    const/4 v5, 0x2

    invoke-direct {p0, v5}, Lkro;->a(I)V

    goto :goto_1

    .line 112
    :cond_6
    const-wide v6, 0x100000200L

    and-long/2addr v6, v2

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_2

    .line 114
    const/16 v5, 0xa

    if-le v1, v5, :cond_7

    .line 115
    const/16 v1, 0xa

    .line 116
    :cond_7
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lkro;->a(I)V

    goto :goto_1

    .line 120
    :pswitch_1
    const-wide v6, 0x100000200L

    and-long/2addr v6, v2

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_2

    .line 122
    const/16 v1, 0xa

    .line 123
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lkro;->a(I)V

    goto :goto_1

    .line 126
    :pswitch_2
    const-wide v6, -0x5c00130600000000L

    and-long/2addr v6, v2

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_2

    .line 128
    const/16 v5, 0xe

    if-le v1, v5, :cond_8

    .line 129
    const/16 v1, 0xe

    .line 130
    :cond_8
    const/4 v5, 0x2

    invoke-direct {p0, v5}, Lkro;->a(I)V

    goto :goto_1

    .line 136
    .end local v2    # "l":J
    :cond_9
    iget-char v5, p0, Lkro;->n:C

    const/16 v6, 0x80

    if-ge v5, v6, :cond_3

    .line 138
    const-wide/16 v6, 0x1

    iget-char v5, p0, Lkro;->n:C

    and-int/lit8 v5, v5, 0x3f

    shl-long v2, v6, v5

    .line 141
    .restart local v2    # "l":J
    :cond_a
    iget-object v5, p0, Lkro;->v:[I

    add-int/lit8 v0, v0, -0x1

    aget v5, v5, v0

    packed-switch v5, :pswitch_data_1

    .line 153
    :cond_b
    :goto_4
    if-ne v0, v4, :cond_a

    goto/16 :goto_2

    .line 145
    :pswitch_3
    const-wide v6, 0x7fffffffc7fffffeL

    and-long/2addr v6, v2

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_b

    .line 147
    const/16 v5, 0xe

    if-le v1, v5, :cond_c

    .line 148
    const/16 v1, 0xe

    .line 149
    :cond_c
    const/4 v5, 0x2

    invoke-direct {p0, v5}, Lkro;->a(I)V

    goto :goto_4

    .line 176
    .end local v2    # "l":J
    :cond_d
    :try_start_0
    iget-object v5, p0, Lkro;->m:Lkru;

    invoke-virtual {v5}, Lkru;->a()C

    move-result v5

    iput-char v5, p0, Lkro;->n:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 177
    :catch_0
    move-exception v5

    goto/16 :goto_3

    .line 103
    .line 141
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private b()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 712
    const v2, -0x7fffffff

    iput v2, p0, Lkro;->r:I

    .line 713
    const/4 v0, 0x3

    .local v0, "i":I
    move v1, v0

    .end local v0    # "i":I
    .local v1, "i":I
    :goto_0
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    if-lez v1, :cond_0

    .line 714
    iget-object v2, p0, Lkro;->u:[I

    const/high16 v3, -0x80000000

    aput v3, v2, v0

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 715
    .end local v1    # "i":I
    .restart local v0    # "i":I
    :cond_0
    return-void
.end method

.method private c(II)I
    .locals 10
    .param p1, "startState"    # I
    .param p2, "curPos"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 209
    const/4 v3, 0x0

    .line 210
    .local v3, "startsAt":I
    const/4 v6, 0x3

    iput v6, p0, Lkro;->q:I

    .line 211
    const/4 v0, 0x1

    .line 212
    .local v0, "i":I
    iget-object v6, p0, Lkro;->v:[I

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput v8, v6, v7

    .line 213
    const v2, 0x7fffffff

    .line 216
    .local v2, "kind":I
    :goto_0
    iget v6, p0, Lkro;->r:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lkro;->r:I

    const v7, 0x7fffffff

    if-ne v6, v7, :cond_0

    .line 217
    invoke-direct {p0}, Lkro;->b()V

    .line 218
    :cond_0
    iget-char v6, p0, Lkro;->n:C

    const/16 v7, 0x40

    if-ge v6, v7, :cond_4

    .line 223
    :cond_1
    iget-object v6, p0, Lkro;->v:[I

    add-int/lit8 v0, v0, -0x1

    aget v6, v6, v0

    packed-switch v6, :pswitch_data_0

    .line 235
    :cond_2
    :goto_1
    if-ne v0, v3, :cond_1

    .line 282
    :goto_2
    const v6, 0x7fffffff

    if-eq v2, v6, :cond_3

    .line 284
    iput v2, p0, Lkro;->t:I

    .line 285
    iput p2, p0, Lkro;->s:I

    .line 286
    const v2, 0x7fffffff

    .line 288
    :cond_3
    add-int/lit8 p2, p2, 0x1

    .line 289
    iget v0, p0, Lkro;->q:I

    iput v3, p0, Lkro;->q:I

    rsub-int/lit8 v3, v3, 0x3

    if-ne v0, v3, :cond_b

    .line 292
    :goto_3
    return p2

    .line 226
    :pswitch_0
    const/16 v6, 0x17

    if-le v2, v6, :cond_2

    .line 227
    const/16 v2, 0x17

    goto :goto_1

    .line 230
    :pswitch_1
    const/16 v6, 0x15

    if-le v2, v6, :cond_2

    .line 231
    const/16 v2, 0x15

    goto :goto_1

    .line 237
    :cond_4
    iget-char v6, p0, Lkro;->n:C

    const/16 v7, 0x80

    if-ge v6, v7, :cond_8

    .line 242
    :cond_5
    iget-object v6, p0, Lkro;->v:[I

    add-int/lit8 v0, v0, -0x1

    aget v6, v6, v0

    packed-switch v6, :pswitch_data_1

    .line 260
    :cond_6
    :goto_4
    if-ne v0, v3, :cond_5

    goto :goto_2

    .line 245
    :pswitch_2
    const/16 v6, 0x17

    if-le v2, v6, :cond_7

    .line 246
    const/16 v2, 0x17

    .line 247
    :cond_7
    iget-char v6, p0, Lkro;->n:C

    const/16 v7, 0x5c

    if-ne v6, v7, :cond_6

    .line 248
    iget-object v6, p0, Lkro;->v:[I

    iget v7, p0, Lkro;->q:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lkro;->q:I

    const/4 v8, 0x1

    aput v8, v6, v7

    goto :goto_4

    .line 251
    :pswitch_3
    const/16 v6, 0x15

    if-le v2, v6, :cond_6

    .line 252
    const/16 v2, 0x15

    goto :goto_4

    .line 255
    :pswitch_4
    const/16 v6, 0x17

    if-le v2, v6, :cond_6

    .line 256
    const/16 v2, 0x17

    goto :goto_4

    .line 264
    :cond_8
    iget-char v6, p0, Lkro;->n:C

    and-int/lit16 v6, v6, 0xff

    shr-int/lit8 v1, v6, 0x6

    .line 265
    .local v1, "i2":I
    const-wide/16 v6, 0x1

    iget-char v8, p0, Lkro;->n:C

    and-int/lit8 v8, v8, 0x3f

    shl-long v4, v6, v8

    .line 268
    .local v4, "l2":J
    :cond_9
    iget-object v6, p0, Lkro;->v:[I

    add-int/lit8 v0, v0, -0x1

    aget v6, v6, v0

    packed-switch v6, :pswitch_data_2

    .line 280
    :cond_a
    :goto_5
    if-ne v0, v3, :cond_9

    goto/16 :goto_2

    .line 271
    :pswitch_5
    sget-object v6, Lkro;->c:[J

    aget-wide v6, v6, v1

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_a

    const/16 v6, 0x17

    if-le v2, v6, :cond_a

    .line 272
    const/16 v2, 0x17

    goto :goto_5

    .line 275
    :pswitch_6
    sget-object v6, Lkro;->c:[J

    aget-wide v6, v6, v1

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_a

    const/16 v6, 0x15

    if-le v2, v6, :cond_a

    .line 276
    const/16 v2, 0x15

    goto :goto_5

    .line 291
    .end local v1    # "i2":I
    .end local v4    # "l2":J
    :cond_b
    :try_start_0
    iget-object v6, p0, Lkro;->m:Lkru;

    invoke-virtual {v6}, Lkru;->a()C

    move-result v6

    iput-char v6, p0, Lkro;->n:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 292
    :catch_0
    move-exception v6

    goto/16 :goto_3

    .line 223
    .line 242
    .line 268
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private c()Lorg/apache/james/mime4j/field/address/parser/Token;
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 741
    sget-object v7, Lkro;->e:[Ljava/lang/String;

    iget v8, p0, Lkro;->t:I

    aget-object v5, v7, v8

    .line 742
    .local v5, "im":Ljava/lang/String;
    if-nez v5, :cond_0

    iget-object v7, p0, Lkro;->m:Lkru;

    invoke-virtual {v7}, Lkru;->f()Ljava/lang/String;

    move-result-object v2

    .line 743
    .local v2, "curTokenImage":Ljava/lang/String;
    :goto_0
    iget-object v7, p0, Lkro;->m:Lkru;

    invoke-virtual {v7}, Lkru;->e()I

    move-result v1

    .line 744
    .local v1, "beginLine":I
    iget-object v7, p0, Lkro;->m:Lkru;

    invoke-virtual {v7}, Lkru;->d()I

    move-result v0

    .line 745
    .local v0, "beginColumn":I
    iget-object v7, p0, Lkro;->m:Lkru;

    invoke-virtual {v7}, Lkru;->c()I

    move-result v4

    .line 746
    .local v4, "endLine":I
    iget-object v7, p0, Lkro;->m:Lkru;

    invoke-virtual {v7}, Lkru;->b()I

    move-result v3

    .line 747
    .local v3, "endColumn":I
    iget v7, p0, Lkro;->t:I

    invoke-static {v7, v2}, Lorg/apache/james/mime4j/field/address/parser/Token;->newToken(ILjava/lang/String;)Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v6

    .line 749
    .local v6, "t":Lorg/apache/james/mime4j/field/address/parser/Token;
    iput v1, v6, Lorg/apache/james/mime4j/field/address/parser/Token;->beginLine:I

    .line 750
    iput v4, v6, Lorg/apache/james/mime4j/field/address/parser/Token;->endLine:I

    .line 751
    iput v0, v6, Lorg/apache/james/mime4j/field/address/parser/Token;->beginColumn:I

    .line 752
    iput v3, v6, Lorg/apache/james/mime4j/field/address/parser/Token;->endColumn:I

    .line 754
    return-object v6

    .end local v0    # "beginColumn":I
    .end local v1    # "beginLine":I
    .end local v2    # "curTokenImage":Ljava/lang/String;
    .end local v3    # "endColumn":I
    .end local v4    # "endLine":I
    .end local v6    # "t":Lorg/apache/james/mime4j/field/address/parser/Token;
    :cond_0
    move-object v2, v5

    .line 742
    goto :goto_0
.end method

.method private d(II)I
    .locals 12
    .param p1, "startState"    # I
    .param p2, "curPos"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 319
    const/4 v3, 0x0

    .line 320
    .local v3, "startsAt":I
    const/4 v8, 0x3

    iput v8, p0, Lkro;->q:I

    .line 321
    const/4 v0, 0x1

    .line 322
    .local v0, "i":I
    iget-object v8, p0, Lkro;->v:[I

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput v10, v8, v9

    .line 323
    const v2, 0x7fffffff

    .line 326
    .local v2, "kind":I
    :goto_0
    iget v8, p0, Lkro;->r:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lkro;->r:I

    const v9, 0x7fffffff

    if-ne v8, v9, :cond_0

    .line 327
    invoke-direct {p0}, Lkro;->b()V

    .line 328
    :cond_0
    iget-char v8, p0, Lkro;->n:C

    const/16 v9, 0x40

    if-ge v8, v9, :cond_5

    .line 330
    const-wide/16 v8, 0x1

    iget-char v10, p0, Lkro;->n:C

    shl-long v4, v8, v10

    .line 333
    .local v4, "l":J
    :cond_1
    iget-object v8, p0, Lkro;->v:[I

    add-int/lit8 v0, v0, -0x1

    aget v8, v8, v0

    packed-switch v8, :pswitch_data_0

    .line 349
    :cond_2
    :goto_1
    if-ne v0, v3, :cond_1

    .line 407
    .end local v4    # "l":J
    :goto_2
    const v8, 0x7fffffff

    if-eq v2, v8, :cond_3

    .line 409
    iput v2, p0, Lkro;->t:I

    .line 410
    iput p2, p0, Lkro;->s:I

    .line 411
    const v2, 0x7fffffff

    .line 413
    :cond_3
    add-int/lit8 p2, p2, 0x1

    .line 414
    iget v0, p0, Lkro;->q:I

    iput v3, p0, Lkro;->q:I

    rsub-int/lit8 v3, v3, 0x3

    if-ne v0, v3, :cond_f

    .line 417
    :goto_3
    return p2

    .line 337
    .restart local v4    # "l":J
    :pswitch_0
    const-wide v8, -0x400000001L

    and-long/2addr v8, v4

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_2

    .line 339
    const/16 v8, 0x1e

    if-le v2, v8, :cond_4

    .line 340
    const/16 v2, 0x1e

    .line 341
    :cond_4
    const/4 v8, 0x2

    invoke-direct {p0, v8}, Lkro;->a(I)V

    goto :goto_1

    .line 344
    :pswitch_1
    const/16 v8, 0x1d

    if-le v2, v8, :cond_2

    .line 345
    const/16 v2, 0x1d

    goto :goto_1

    .line 351
    .end local v4    # "l":J
    :cond_5
    iget-char v8, p0, Lkro;->n:C

    const/16 v9, 0x80

    if-ge v8, v9, :cond_b

    .line 353
    const-wide/16 v8, 0x1

    iget-char v10, p0, Lkro;->n:C

    and-int/lit8 v10, v10, 0x3f

    shl-long v4, v8, v10

    .line 356
    .restart local v4    # "l":J
    :cond_6
    iget-object v8, p0, Lkro;->v:[I

    add-int/lit8 v0, v0, -0x1

    aget v8, v8, v0

    packed-switch v8, :pswitch_data_1

    .line 381
    :cond_7
    :goto_4
    if-ne v0, v3, :cond_6

    goto :goto_2

    .line 359
    :pswitch_2
    const-wide/32 v8, -0x10000001

    and-long/2addr v8, v4

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_9

    .line 361
    const/16 v8, 0x1e

    if-le v2, v8, :cond_8

    .line 362
    const/16 v2, 0x1e

    .line 363
    :cond_8
    const/4 v8, 0x2

    invoke-direct {p0, v8}, Lkro;->a(I)V

    goto :goto_4

    .line 365
    :cond_9
    iget-char v8, p0, Lkro;->n:C

    const/16 v9, 0x5c

    if-ne v8, v9, :cond_7

    .line 366
    iget-object v8, p0, Lkro;->v:[I

    iget v9, p0, Lkro;->q:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lkro;->q:I

    const/4 v10, 0x1

    aput v10, v8, v9

    goto :goto_4

    .line 369
    :pswitch_3
    const/16 v8, 0x1d

    if-le v2, v8, :cond_7

    .line 370
    const/16 v2, 0x1d

    goto :goto_4

    .line 373
    :pswitch_4
    const-wide/32 v8, -0x10000001

    and-long/2addr v8, v4

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_7

    .line 375
    const/16 v8, 0x1e

    if-le v2, v8, :cond_a

    .line 376
    const/16 v2, 0x1e

    .line 377
    :cond_a
    const/4 v8, 0x2

    invoke-direct {p0, v8}, Lkro;->a(I)V

    goto :goto_4

    .line 385
    .end local v4    # "l":J
    :cond_b
    iget-char v8, p0, Lkro;->n:C

    and-int/lit16 v8, v8, 0xff

    shr-int/lit8 v1, v8, 0x6

    .line 386
    .local v1, "i2":I
    const-wide/16 v8, 0x1

    iget-char v10, p0, Lkro;->n:C

    and-int/lit8 v10, v10, 0x3f

    shl-long v6, v8, v10

    .line 389
    .local v6, "l2":J
    :cond_c
    iget-object v8, p0, Lkro;->v:[I

    add-int/lit8 v0, v0, -0x1

    aget v8, v8, v0

    packed-switch v8, :pswitch_data_2

    .line 405
    :cond_d
    :goto_5
    if-ne v0, v3, :cond_c

    goto/16 :goto_2

    .line 393
    :pswitch_5
    sget-object v8, Lkro;->c:[J

    aget-wide v8, v8, v1

    and-long/2addr v8, v6

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_d

    .line 395
    const/16 v8, 0x1e

    if-le v2, v8, :cond_e

    .line 396
    const/16 v2, 0x1e

    .line 397
    :cond_e
    const/4 v8, 0x2

    invoke-direct {p0, v8}, Lkro;->a(I)V

    goto :goto_5

    .line 400
    :pswitch_6
    sget-object v8, Lkro;->c:[J

    aget-wide v8, v8, v1

    and-long/2addr v8, v6

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_d

    const/16 v8, 0x1d

    if-le v2, v8, :cond_d

    .line 401
    const/16 v2, 0x1d

    goto :goto_5

    .line 416
    .end local v1    # "i2":I
    .end local v6    # "l2":J
    :cond_f
    :try_start_0
    iget-object v8, p0, Lkro;->m:Lkru;

    invoke-virtual {v8}, Lkru;->a()C

    move-result v8

    iput-char v8, p0, Lkro;->n:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 417
    :catch_0
    move-exception v8

    goto/16 :goto_3

    .line 333
    .line 356
    .line 389
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method private e(II)I
    .locals 10
    .param p1, "startState"    # I
    .param p2, "curPos"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 446
    const/4 v3, 0x0

    .line 447
    .local v3, "startsAt":I
    const/4 v6, 0x3

    iput v6, p0, Lkro;->q:I

    .line 448
    const/4 v0, 0x1

    .line 449
    .local v0, "i":I
    iget-object v6, p0, Lkro;->v:[I

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput v8, v6, v7

    .line 450
    const v2, 0x7fffffff

    .line 453
    .local v2, "kind":I
    :goto_0
    iget v6, p0, Lkro;->r:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lkro;->r:I

    const v7, 0x7fffffff

    if-ne v6, v7, :cond_0

    .line 454
    invoke-direct {p0}, Lkro;->b()V

    .line 455
    :cond_0
    iget-char v6, p0, Lkro;->n:C

    const/16 v7, 0x40

    if-ge v6, v7, :cond_4

    .line 460
    :cond_1
    iget-object v6, p0, Lkro;->v:[I

    add-int/lit8 v0, v0, -0x1

    aget v6, v6, v0

    packed-switch v6, :pswitch_data_0

    .line 472
    :cond_2
    :goto_1
    if-ne v0, v3, :cond_1

    .line 519
    :goto_2
    const v6, 0x7fffffff

    if-eq v2, v6, :cond_3

    .line 521
    iput v2, p0, Lkro;->t:I

    .line 522
    iput p2, p0, Lkro;->s:I

    .line 523
    const v2, 0x7fffffff

    .line 525
    :cond_3
    add-int/lit8 p2, p2, 0x1

    .line 526
    iget v0, p0, Lkro;->q:I

    iput v3, p0, Lkro;->q:I

    rsub-int/lit8 v3, v3, 0x3

    if-ne v0, v3, :cond_b

    .line 529
    :goto_3
    return p2

    .line 463
    :pswitch_0
    const/16 v6, 0x1b

    if-le v2, v6, :cond_2

    .line 464
    const/16 v2, 0x1b

    goto :goto_1

    .line 467
    :pswitch_1
    const/16 v6, 0x18

    if-le v2, v6, :cond_2

    .line 468
    const/16 v2, 0x18

    goto :goto_1

    .line 474
    :cond_4
    iget-char v6, p0, Lkro;->n:C

    const/16 v7, 0x80

    if-ge v6, v7, :cond_8

    .line 479
    :cond_5
    iget-object v6, p0, Lkro;->v:[I

    add-int/lit8 v0, v0, -0x1

    aget v6, v6, v0

    packed-switch v6, :pswitch_data_1

    .line 497
    :cond_6
    :goto_4
    if-ne v0, v3, :cond_5

    goto :goto_2

    .line 482
    :pswitch_2
    const/16 v6, 0x1b

    if-le v2, v6, :cond_7

    .line 483
    const/16 v2, 0x1b

    .line 484
    :cond_7
    iget-char v6, p0, Lkro;->n:C

    const/16 v7, 0x5c

    if-ne v6, v7, :cond_6

    .line 485
    iget-object v6, p0, Lkro;->v:[I

    iget v7, p0, Lkro;->q:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lkro;->q:I

    const/4 v8, 0x1

    aput v8, v6, v7

    goto :goto_4

    .line 488
    :pswitch_3
    const/16 v6, 0x18

    if-le v2, v6, :cond_6

    .line 489
    const/16 v2, 0x18

    goto :goto_4

    .line 492
    :pswitch_4
    const/16 v6, 0x1b

    if-le v2, v6, :cond_6

    .line 493
    const/16 v2, 0x1b

    goto :goto_4

    .line 501
    :cond_8
    iget-char v6, p0, Lkro;->n:C

    and-int/lit16 v6, v6, 0xff

    shr-int/lit8 v1, v6, 0x6

    .line 502
    .local v1, "i2":I
    const-wide/16 v6, 0x1

    iget-char v8, p0, Lkro;->n:C

    and-int/lit8 v8, v8, 0x3f

    shl-long v4, v6, v8

    .line 505
    .local v4, "l2":J
    :cond_9
    iget-object v6, p0, Lkro;->v:[I

    add-int/lit8 v0, v0, -0x1

    aget v6, v6, v0

    packed-switch v6, :pswitch_data_2

    .line 517
    :cond_a
    :goto_5
    if-ne v0, v3, :cond_9

    goto/16 :goto_2

    .line 508
    :pswitch_5
    sget-object v6, Lkro;->c:[J

    aget-wide v6, v6, v1

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_a

    const/16 v6, 0x1b

    if-le v2, v6, :cond_a

    .line 509
    const/16 v2, 0x1b

    goto :goto_5

    .line 512
    :pswitch_6
    sget-object v6, Lkro;->c:[J

    aget-wide v6, v6, v1

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_a

    const/16 v6, 0x18

    if-le v2, v6, :cond_a

    .line 513
    const/16 v2, 0x18

    goto :goto_5

    .line 528
    .end local v1    # "i2":I
    .end local v4    # "l2":J
    :cond_b
    :try_start_0
    iget-object v6, p0, Lkro;->m:Lkru;

    invoke-virtual {v6}, Lkru;->a()C

    move-result v6

    iput-char v6, p0, Lkro;->n:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 529
    :catch_0
    move-exception v6

    goto/16 :goto_3

    .line 460
    .line 479
    .line 505
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private f(II)I
    .locals 12
    .param p1, "startState"    # I
    .param p2, "curPos"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 556
    const/4 v3, 0x0

    .line 557
    .local v3, "startsAt":I
    const/4 v8, 0x3

    iput v8, p0, Lkro;->q:I

    .line 558
    const/4 v0, 0x1

    .line 559
    .local v0, "i":I
    iget-object v8, p0, Lkro;->v:[I

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput v10, v8, v9

    .line 560
    const v2, 0x7fffffff

    .line 563
    .local v2, "kind":I
    :goto_0
    iget v8, p0, Lkro;->r:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lkro;->r:I

    const v9, 0x7fffffff

    if-ne v8, v9, :cond_0

    .line 564
    invoke-direct {p0}, Lkro;->b()V

    .line 565
    :cond_0
    iget-char v8, p0, Lkro;->n:C

    const/16 v9, 0x40

    if-ge v8, v9, :cond_4

    .line 570
    :cond_1
    iget-object v8, p0, Lkro;->v:[I

    add-int/lit8 v0, v0, -0x1

    aget v8, v8, v0

    packed-switch v8, :pswitch_data_0

    .line 582
    :cond_2
    :goto_1
    if-ne v0, v3, :cond_1

    .line 632
    :goto_2
    const v8, 0x7fffffff

    if-eq v2, v8, :cond_3

    .line 634
    iput v2, p0, Lkro;->t:I

    .line 635
    iput p2, p0, Lkro;->s:I

    .line 636
    const v2, 0x7fffffff

    .line 638
    :cond_3
    add-int/lit8 p2, p2, 0x1

    .line 639
    iget v0, p0, Lkro;->q:I

    iput v3, p0, Lkro;->q:I

    rsub-int/lit8 v3, v3, 0x3

    if-ne v0, v3, :cond_b

    .line 642
    :goto_3
    return p2

    .line 573
    :pswitch_0
    const/16 v8, 0x11

    if-le v2, v8, :cond_2

    .line 574
    const/16 v2, 0x11

    goto :goto_1

    .line 577
    :pswitch_1
    const/16 v8, 0x10

    if-le v2, v8, :cond_2

    .line 578
    const/16 v2, 0x10

    goto :goto_1

    .line 584
    :cond_4
    iget-char v8, p0, Lkro;->n:C

    const/16 v9, 0x80

    if-ge v8, v9, :cond_8

    .line 586
    const-wide/16 v8, 0x1

    iget-char v10, p0, Lkro;->n:C

    and-int/lit8 v10, v10, 0x3f

    shl-long v4, v8, v10

    .line 589
    .local v4, "l":J
    :cond_5
    iget-object v8, p0, Lkro;->v:[I

    add-int/lit8 v0, v0, -0x1

    aget v8, v8, v0

    packed-switch v8, :pswitch_data_1

    .line 610
    :cond_6
    :goto_4
    if-ne v0, v3, :cond_5

    goto :goto_2

    .line 592
    :pswitch_2
    const-wide/32 v8, -0x38000001

    and-long/2addr v8, v4

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_7

    .line 594
    const/16 v8, 0x11

    if-le v2, v8, :cond_6

    .line 595
    const/16 v2, 0x11

    goto :goto_4

    .line 597
    :cond_7
    iget-char v8, p0, Lkro;->n:C

    const/16 v9, 0x5c

    if-ne v8, v9, :cond_6

    .line 598
    iget-object v8, p0, Lkro;->v:[I

    iget v9, p0, Lkro;->q:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lkro;->q:I

    const/4 v10, 0x1

    aput v10, v8, v9

    goto :goto_4

    .line 601
    :pswitch_3
    const/16 v8, 0x10

    if-le v2, v8, :cond_6

    .line 602
    const/16 v2, 0x10

    goto :goto_4

    .line 605
    :pswitch_4
    const-wide/32 v8, -0x38000001

    and-long/2addr v8, v4

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_6

    const/16 v8, 0x11

    if-le v2, v8, :cond_6

    .line 606
    const/16 v2, 0x11

    goto :goto_4

    .line 614
    .end local v4    # "l":J
    :cond_8
    iget-char v8, p0, Lkro;->n:C

    and-int/lit16 v8, v8, 0xff

    shr-int/lit8 v1, v8, 0x6

    .line 615
    .local v1, "i2":I
    const-wide/16 v8, 0x1

    iget-char v10, p0, Lkro;->n:C

    and-int/lit8 v10, v10, 0x3f

    shl-long v6, v8, v10

    .line 618
    .local v6, "l2":J
    :cond_9
    iget-object v8, p0, Lkro;->v:[I

    add-int/lit8 v0, v0, -0x1

    aget v8, v8, v0

    packed-switch v8, :pswitch_data_2

    .line 630
    :cond_a
    :goto_5
    if-ne v0, v3, :cond_9

    goto/16 :goto_2

    .line 621
    :pswitch_5
    sget-object v8, Lkro;->c:[J

    aget-wide v8, v8, v1

    and-long/2addr v8, v6

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_a

    const/16 v8, 0x11

    if-le v2, v8, :cond_a

    .line 622
    const/16 v2, 0x11

    goto :goto_5

    .line 625
    :pswitch_6
    sget-object v8, Lkro;->c:[J

    aget-wide v8, v8, v1

    and-long/2addr v8, v6

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_a

    const/16 v8, 0x10

    if-le v2, v8, :cond_a

    .line 626
    const/16 v2, 0x10

    goto :goto_5

    .line 641
    .end local v1    # "i2":I
    .end local v6    # "l2":J
    :cond_b
    :try_start_0
    iget-object v8, p0, Lkro;->m:Lkru;

    invoke-virtual {v8}, Lkru;->a()C

    move-result v8

    iput-char v8, p0, Lkro;->n:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 642
    :catch_0
    move-exception v8

    goto/16 :goto_3

    .line 570
    .line 589
    .line 618
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public final a()Lorg/apache/james/mime4j/field/address/parser/Token;
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 767
    const/4 v11, 0x0

    .line 769
    .local v11, "specialToken":Lorg/apache/james/mime4j/field/address/parser/Token;
    const/4 v8, 0x0

    .line 776
    .local v8, "curPos":I
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lkro;->m:Lkru;

    .line 1153
    const/4 v2, -0x1

    iput v2, v0, Lkru;->c:I

    .line 1154
    invoke-virtual {v0}, Lkru;->a()C

    move-result v2

    .line 1155
    iget v6, v0, Lkru;->d:I

    iput v6, v0, Lkru;->c:I

    .line 776
    iput-char v2, p0, Lkro;->n:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 785
    iget-object v0, p0, Lkro;->w:Ljava/lang/StringBuilder;

    iput-object v0, p0, Lkro;->x:Ljava/lang/StringBuilder;

    .line 786
    iget-object v0, p0, Lkro;->x:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 787
    const/4 v0, 0x0

    iput v0, p0, Lkro;->y:I

    .line 791
    :goto_1
    iget v0, p0, Lkro;->o:I

    packed-switch v0, :pswitch_data_0

    .line 819
    :goto_2
    iget v0, p0, Lkro;->t:I

    const v2, 0x7fffffff

    if-eq v0, v2, :cond_9

    .line 821
    iget v0, p0, Lkro;->s:I

    add-int/lit8 v0, v0, 0x1

    if-ge v0, v8, :cond_1

    .line 822
    iget-object v0, p0, Lkro;->m:Lkru;

    iget v2, p0, Lkro;->s:I

    sub-int v2, v8, v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Lkru;->a(I)V

    .line 823
    :cond_1
    sget-object v0, Lkro;->i:[J

    iget v2, p0, Lkro;->t:I

    shr-int/lit8 v2, v2, 0x6

    aget-wide v6, v0, v2

    const-wide/16 v12, 0x1

    iget v0, p0, Lkro;->t:I

    and-int/lit8 v0, v0, 0x3f

    shl-long/2addr v12, v0

    and-long/2addr v6, v12

    const-wide/16 v12, 0x0

    cmp-long v0, v6, v12

    if-eqz v0, :cond_3

    .line 825
    invoke-direct {p0}, Lkro;->c()Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v9

    .line 826
    .local v9, "matchedToken":Lorg/apache/james/mime4j/field/address/parser/Token;
    iput-object v11, v9, Lorg/apache/james/mime4j/field/address/parser/Token;->specialToken:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 4935
    iget v0, p0, Lkro;->t:I

    sparse-switch v0, :sswitch_data_0

    .line 828
    :goto_3
    sget-object v0, Lkro;->h:[I

    iget v2, p0, Lkro;->t:I

    aget v0, v0, v2

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    .line 829
    sget-object v0, Lkro;->h:[I

    iget v2, p0, Lkro;->t:I

    aget v0, v0, v2

    iput v0, p0, Lkro;->o:I

    :cond_2
    move-object v10, v9

    .line 830
    .end local v9    # "matchedToken":Lorg/apache/james/mime4j/field/address/parser/Token;
    .local v10, "matchedToken":Lorg/apache/james/mime4j/field/address/parser/Token;
    :goto_4
    return-object v10

    .line 780
    .end local v10    # "matchedToken":Lorg/apache/james/mime4j/field/address/parser/Token;
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    iput v0, p0, Lkro;->t:I

    .line 781
    invoke-direct {p0}, Lkro;->c()Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v9

    .line 782
    .restart local v9    # "matchedToken":Lorg/apache/james/mime4j/field/address/parser/Token;
    iput-object v11, v9, Lorg/apache/james/mime4j/field/address/parser/Token;->specialToken:Lorg/apache/james/mime4j/field/address/parser/Token;

    move-object v10, v9

    .line 783
    .end local v9    # "matchedToken":Lorg/apache/james/mime4j/field/address/parser/Token;
    .restart local v10    # "matchedToken":Lorg/apache/james/mime4j/field/address/parser/Token;
    goto :goto_4

    .line 794
    .end local v10    # "matchedToken":Lorg/apache/james/mime4j/field/address/parser/Token;
    :pswitch_0
    const v0, 0x7fffffff

    iput v0, p0, Lkro;->t:I

    .line 795
    const/4 v0, 0x0

    iput v0, p0, Lkro;->s:I

    .line 2057
    iget-char v0, p0, Lkro;->n:C

    sparse-switch v0, :sswitch_data_1

    .line 2084
    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lkro;->b(II)I

    move-result v8

    .line 797
    :goto_5
    goto :goto_2

    .line 2060
    :sswitch_0
    const/4 v0, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, v0, v2}, Lkro;->a(II)I

    move-result v8

    goto :goto_5

    .line 2062
    :sswitch_1
    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lkro;->a(II)I

    move-result v8

    goto :goto_5

    .line 2064
    :sswitch_2
    const/4 v0, 0x0

    const/16 v2, 0x1c

    invoke-direct {p0, v0, v2}, Lkro;->a(II)I

    move-result v8

    goto :goto_5

    .line 2066
    :sswitch_3
    const/4 v0, 0x0

    const/16 v2, 0x13

    invoke-direct {p0, v0, v2}, Lkro;->a(II)I

    move-result v8

    goto :goto_5

    .line 2068
    :sswitch_4
    const/4 v0, 0x0

    const/4 v2, 0x3

    invoke-direct {p0, v0, v2}, Lkro;->a(II)I

    move-result v8

    goto :goto_5

    .line 2070
    :sswitch_5
    const/4 v0, 0x0

    const/16 v2, 0x9

    invoke-direct {p0, v0, v2}, Lkro;->a(II)I

    move-result v8

    goto :goto_5

    .line 2072
    :sswitch_6
    const/4 v0, 0x0

    const/4 v2, 0x4

    invoke-direct {p0, v0, v2}, Lkro;->a(II)I

    move-result v8

    goto :goto_5

    .line 2074
    :sswitch_7
    const/4 v0, 0x0

    const/4 v2, 0x5

    invoke-direct {p0, v0, v2}, Lkro;->a(II)I

    move-result v8

    goto :goto_5

    .line 2076
    :sswitch_8
    const/4 v0, 0x0

    const/4 v2, 0x6

    invoke-direct {p0, v0, v2}, Lkro;->a(II)I

    move-result v8

    goto :goto_5

    .line 2078
    :sswitch_9
    const/4 v0, 0x0

    const/4 v2, 0x7

    invoke-direct {p0, v0, v2}, Lkro;->a(II)I

    move-result v8

    goto :goto_5

    .line 2080
    :sswitch_a
    const/4 v0, 0x0

    const/16 v2, 0x8

    invoke-direct {p0, v0, v2}, Lkro;->a(II)I

    move-result v8

    goto :goto_5

    .line 2082
    :sswitch_b
    const/4 v0, 0x0

    const/16 v2, 0xf

    invoke-direct {p0, v0, v2}, Lkro;->a(II)I

    move-result v8

    goto :goto_5

    .line 799
    :pswitch_1
    const v0, 0x7fffffff

    iput v0, p0, Lkro;->t:I

    .line 800
    const/4 v0, 0x0

    iput v0, p0, Lkro;->s:I

    .line 2546
    iget-char v0, p0, Lkro;->n:C

    packed-switch v0, :pswitch_data_1

    .line 2551
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lkro;->f(II)I

    move-result v8

    .line 802
    :goto_6
    goto/16 :goto_2

    .line 2549
    :pswitch_2
    const/4 v0, 0x0

    const/16 v2, 0x12

    invoke-direct {p0, v0, v2}, Lkro;->a(II)I

    move-result v8

    goto :goto_6

    .line 804
    :pswitch_3
    const v0, 0x7fffffff

    iput v0, p0, Lkro;->t:I

    .line 805
    const/4 v0, 0x0

    iput v0, p0, Lkro;->s:I

    .line 3194
    iget-char v0, p0, Lkro;->n:C

    packed-switch v0, :pswitch_data_2

    .line 3201
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lkro;->c(II)I

    move-result v8

    .line 807
    :goto_7
    goto/16 :goto_2

    .line 3197
    :pswitch_4
    const/4 v0, 0x0

    const/16 v2, 0x16

    invoke-direct {p0, v0, v2}, Lkro;->a(II)I

    move-result v8

    goto :goto_7

    .line 3199
    :pswitch_5
    const/4 v0, 0x0

    const/16 v2, 0x14

    invoke-direct {p0, v0, v2}, Lkro;->a(II)I

    move-result v8

    goto :goto_7

    .line 809
    :pswitch_6
    const v0, 0x7fffffff

    iput v0, p0, Lkro;->t:I

    .line 810
    const/4 v0, 0x0

    iput v0, p0, Lkro;->s:I

    .line 3434
    iget-char v0, p0, Lkro;->n:C

    packed-switch v0, :pswitch_data_3

    .line 3441
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lkro;->e(II)I

    move-result v8

    .line 812
    :goto_8
    goto/16 :goto_2

    .line 3437
    :pswitch_7
    const/4 v0, 0x0

    const/16 v2, 0x19

    invoke-direct {p0, v0, v2}, Lkro;->a(II)I

    move-result v8

    goto :goto_8

    .line 3439
    :pswitch_8
    const/4 v0, 0x0

    const/16 v2, 0x1a

    invoke-direct {p0, v0, v2}, Lkro;->a(II)I

    move-result v8

    goto :goto_8

    .line 814
    :pswitch_9
    const v0, 0x7fffffff

    iput v0, p0, Lkro;->t:I

    .line 815
    const/4 v0, 0x0

    iput v0, p0, Lkro;->s:I

    .line 4309
    iget-char v0, p0, Lkro;->n:C

    packed-switch v0, :pswitch_data_4

    .line 4314
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lkro;->d(II)I

    move-result v8

    .line 816
    :goto_9
    goto/16 :goto_2

    .line 4312
    :pswitch_a
    const/4 v0, 0x0

    const/16 v2, 0x1f

    invoke-direct {p0, v0, v2}, Lkro;->a(II)I

    move-result v8

    goto :goto_9

    .line 4938
    .restart local v9    # "matchedToken":Lorg/apache/james/mime4j/field/address/parser/Token;
    :sswitch_c
    iget-object v0, p0, Lkro;->x:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lkro;->m:Lkru;

    iget v6, p0, Lkro;->y:I

    iget v7, p0, Lkro;->s:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lkro;->z:I

    add-int/2addr v6, v7

    invoke-virtual {v2, v6}, Lkru;->b(I)[C

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 4939
    iget-object v0, p0, Lkro;->x:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lorg/apache/james/mime4j/field/address/parser/Token;->image:Ljava/lang/String;

    goto/16 :goto_3

    .line 4942
    :sswitch_d
    iget-object v0, p0, Lkro;->x:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lkro;->m:Lkru;

    iget v6, p0, Lkro;->y:I

    iget v7, p0, Lkro;->s:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lkro;->z:I

    add-int/2addr v6, v7

    invoke-virtual {v2, v6}, Lkru;->b(I)[C

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 4943
    iget-object v0, p0, Lkro;->x:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    iget-object v6, p0, Lkro;->x:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v0, v2, v6}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lorg/apache/james/mime4j/field/address/parser/Token;->image:Ljava/lang/String;

    goto/16 :goto_3

    .line 832
    .end local v9    # "matchedToken":Lorg/apache/james/mime4j/field/address/parser/Token;
    :cond_3
    sget-object v0, Lkro;->j:[J

    iget v2, p0, Lkro;->t:I

    shr-int/lit8 v2, v2, 0x6

    aget-wide v6, v0, v2

    const-wide/16 v12, 0x1

    iget v0, p0, Lkro;->t:I

    and-int/lit8 v0, v0, 0x3f

    shl-long/2addr v12, v0

    and-long/2addr v6, v12

    const-wide/16 v12, 0x0

    cmp-long v0, v6, v12

    if-eqz v0, :cond_6

    .line 834
    sget-object v0, Lkro;->k:[J

    iget v2, p0, Lkro;->t:I

    shr-int/lit8 v2, v2, 0x6

    aget-wide v6, v0, v2

    const-wide/16 v12, 0x1

    iget v0, p0, Lkro;->t:I

    and-int/lit8 v0, v0, 0x3f

    shl-long/2addr v12, v0

    and-long/2addr v6, v12

    const-wide/16 v12, 0x0

    cmp-long v0, v6, v12

    if-eqz v0, :cond_4

    .line 836
    invoke-direct {p0}, Lkro;->c()Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v9

    .line 837
    .restart local v9    # "matchedToken":Lorg/apache/james/mime4j/field/address/parser/Token;
    if-nez v11, :cond_5

    .line 838
    move-object v11, v9

    .line 845
    .end local v9    # "matchedToken":Lorg/apache/james/mime4j/field/address/parser/Token;
    :cond_4
    :goto_a
    sget-object v0, Lkro;->h:[I

    iget v2, p0, Lkro;->t:I

    aget v0, v0, v2

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 846
    sget-object v0, Lkro;->h:[I

    iget v2, p0, Lkro;->t:I

    aget v0, v0, v2

    iput v0, p0, Lkro;->o:I

    goto/16 :goto_0

    .line 841
    .restart local v9    # "matchedToken":Lorg/apache/james/mime4j/field/address/parser/Token;
    :cond_5
    iput-object v11, v9, Lorg/apache/james/mime4j/field/address/parser/Token;->specialToken:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 842
    iput-object v9, v11, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;

    move-object v11, v9

    goto :goto_a

    .line 5886
    .end local v9    # "matchedToken":Lorg/apache/james/mime4j/field/address/parser/Token;
    :cond_6
    iget v0, p0, Lkro;->y:I

    iget v2, p0, Lkro;->s:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lkro;->z:I

    add-int/2addr v0, v2

    iput v0, p0, Lkro;->y:I

    .line 5887
    iget v0, p0, Lkro;->t:I

    packed-switch v0, :pswitch_data_5

    .line 850
    :cond_7
    :goto_b
    :pswitch_b
    sget-object v0, Lkro;->h:[I

    iget v2, p0, Lkro;->t:I

    aget v0, v0, v2

    const/4 v2, -0x1

    if-eq v0, v2, :cond_8

    .line 851
    sget-object v0, Lkro;->h:[I

    iget v2, p0, Lkro;->t:I

    aget v0, v0, v2

    iput v0, p0, Lkro;->o:I

    .line 852
    :cond_8
    const/4 v8, 0x0

    .line 853
    const v0, 0x7fffffff

    iput v0, p0, Lkro;->t:I

    .line 855
    :try_start_1
    iget-object v0, p0, Lkro;->m:Lkru;

    invoke-virtual {v0}, Lkru;->a()C

    move-result v0

    iput-char v0, p0, Lkro;->n:C
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    .line 860
    :cond_9
    iget-object v0, p0, Lkro;->m:Lkru;

    invoke-virtual {v0}, Lkru;->c()I

    move-result v3

    .line 861
    .local v3, "error_line":I
    iget-object v0, p0, Lkro;->m:Lkru;

    invoke-virtual {v0}, Lkru;->b()I

    move-result v4

    .line 862
    .local v4, "error_column":I
    const/4 v5, 0x0

    .line 863
    .local v5, "error_after":Ljava/lang/String;
    const/4 v1, 0x0

    .line 864
    .local v1, "EOFSeen":Z
    :try_start_2
    iget-object v0, p0, Lkro;->m:Lkru;

    invoke-virtual {v0}, Lkru;->a()C

    iget-object v0, p0, Lkro;->m:Lkru;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lkru;->a(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 875
    :goto_c
    if-nez v1, :cond_a

    .line 876
    iget-object v0, p0, Lkro;->m:Lkru;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lkru;->a(I)V

    .line 877
    const/4 v0, 0x1

    if-gt v8, v0, :cond_e

    const-string/jumbo v5, ""

    .line 879
    :cond_a
    :goto_d
    new-instance v0, Lorg/apache/james/mime4j/field/address/parser/TokenMgrError;

    iget v2, p0, Lkro;->o:I

    iget-char v6, p0, Lkro;->n:C

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lorg/apache/james/mime4j/field/address/parser/TokenMgrError;-><init>(ZIIILjava/lang/String;CI)V

    throw v0

    .line 5890
    .end local v1    # "EOFSeen":Z
    .end local v3    # "error_line":I
    .end local v4    # "error_column":I
    .end local v5    # "error_after":Ljava/lang/String;
    :pswitch_c
    iget-object v0, p0, Lkro;->x:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lkro;->m:Lkru;

    iget v6, p0, Lkro;->y:I

    invoke-virtual {v2, v6}, Lkru;->b(I)[C

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 5891
    const/4 v0, 0x0

    iput v0, p0, Lkro;->y:I

    .line 5892
    iget-object v0, p0, Lkro;->x:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lkro;->x:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 5895
    :pswitch_d
    iget-object v0, p0, Lkro;->x:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lkro;->m:Lkru;

    iget v6, p0, Lkro;->y:I

    invoke-virtual {v2, v6}, Lkru;->b(I)[C

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 5896
    const/4 v0, 0x0

    iput v0, p0, Lkro;->y:I

    .line 5897
    iget-object v0, p0, Lkro;->x:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lkro;->x:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 5900
    :pswitch_e
    iget-object v0, p0, Lkro;->x:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lkro;->m:Lkru;

    iget v6, p0, Lkro;->y:I

    invoke-virtual {v2, v6}, Lkru;->b(I)[C

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 5901
    const/4 v0, 0x0

    iput v0, p0, Lkro;->y:I

    .line 5902
    const/4 v0, 0x1

    sput v0, Lkro;->a:I

    goto/16 :goto_b

    .line 5905
    :pswitch_f
    iget-object v0, p0, Lkro;->x:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lkro;->m:Lkru;

    iget v6, p0, Lkro;->y:I

    invoke-virtual {v2, v6}, Lkru;->b(I)[C

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 5906
    const/4 v0, 0x0

    iput v0, p0, Lkro;->y:I

    .line 5907
    iget-object v0, p0, Lkro;->x:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lkro;->x:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 5910
    :pswitch_10
    iget-object v0, p0, Lkro;->x:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lkro;->m:Lkru;

    iget v6, p0, Lkro;->y:I

    invoke-virtual {v2, v6}, Lkru;->b(I)[C

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 5911
    const/4 v0, 0x0

    iput v0, p0, Lkro;->y:I

    .line 5912
    sget v0, Lkro;->a:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lkro;->a:I

    goto/16 :goto_b

    .line 5915
    :pswitch_11
    iget-object v0, p0, Lkro;->x:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lkro;->m:Lkru;

    iget v6, p0, Lkro;->y:I

    invoke-virtual {v2, v6}, Lkru;->b(I)[C

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 5916
    const/4 v0, 0x0

    iput v0, p0, Lkro;->y:I

    .line 5917
    sget v0, Lkro;->a:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lkro;->a:I

    if-nez v0, :cond_7

    .line 6730
    const/4 v0, 0x2

    iput v0, p0, Lkro;->o:I

    goto/16 :goto_b

    .line 5920
    :pswitch_12
    iget-object v0, p0, Lkro;->x:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lkro;->m:Lkru;

    iget v6, p0, Lkro;->y:I

    invoke-virtual {v2, v6}, Lkru;->b(I)[C

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 5921
    const/4 v0, 0x0

    iput v0, p0, Lkro;->y:I

    .line 5922
    iget-object v0, p0, Lkro;->x:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lkro;->x:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 5925
    :pswitch_13
    iget-object v0, p0, Lkro;->x:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lkro;->m:Lkru;

    iget v6, p0, Lkro;->y:I

    invoke-virtual {v2, v6}, Lkru;->b(I)[C

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 5926
    const/4 v0, 0x0

    iput v0, p0, Lkro;->y:I

    .line 5927
    iget-object v0, p0, Lkro;->x:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lkro;->x:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 866
    .restart local v1    # "EOFSeen":Z
    .restart local v3    # "error_line":I
    .restart local v4    # "error_column":I
    .restart local v5    # "error_after":Ljava/lang/String;
    :catch_2
    move-exception v0

    const/4 v1, 0x1

    .line 867
    const/4 v0, 0x1

    if-gt v8, v0, :cond_c

    const-string/jumbo v5, ""

    .line 868
    :goto_e
    iget-char v0, p0, Lkro;->n:C

    const/16 v2, 0xa

    if-eq v0, v2, :cond_b

    iget-char v0, p0, Lkro;->n:C

    const/16 v2, 0xd

    if-ne v0, v2, :cond_d

    .line 869
    :cond_b
    add-int/lit8 v3, v3, 0x1

    .line 870
    const/4 v4, 0x0

    goto/16 :goto_c

    .line 867
    :cond_c
    iget-object v0, p0, Lkro;->m:Lkru;

    invoke-virtual {v0}, Lkru;->f()Ljava/lang/String;

    move-result-object v5

    goto :goto_e

    .line 873
    :cond_d
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_c

    .line 877
    :cond_e
    iget-object v0, p0, Lkro;->m:Lkru;

    invoke-virtual {v0}, Lkru;->f()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_d

    .line 791
    .line 4935
    .line 2057
    .line 2546
    .line 3194
    .line 3434
    .line 4309
    .line 5887
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_6
        :pswitch_9
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x12 -> :sswitch_c
        0x1f -> :sswitch_d
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0xa -> :sswitch_0
        0xd -> :sswitch_1
        0x22 -> :sswitch_2
        0x28 -> :sswitch_3
        0x2c -> :sswitch_4
        0x2e -> :sswitch_5
        0x3a -> :sswitch_6
        0x3b -> :sswitch_7
        0x3c -> :sswitch_8
        0x3e -> :sswitch_9
        0x40 -> :sswitch_a
        0x5b -> :sswitch_b
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x5d
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x28
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x28
        :pswitch_7
        :pswitch_8
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x22
        :pswitch_a
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x10
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_d
        :pswitch_e
        :pswitch_b
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_b
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method
