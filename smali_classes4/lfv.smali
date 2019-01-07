.class public abstract Llfv;
.super Ljava/lang/Object;
.source "nsPSMDetector.java"


# instance fields
.field public b:[Llga;

.field c:[Llfm;

.field d:Llfl;

.field public e:[B

.field public f:[I

.field public g:I

.field h:I

.field public i:Z

.field public j:Z

.field k:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Llfl;

    invoke-direct {v0}, Llfl;-><init>()V

    iput-object v0, p0, Llfv;->d:Llfl;

    .line 49
    new-array v0, v1, [B

    iput-object v0, p0, Llfv;->e:[B

    .line 51
    new-array v0, v1, [I

    iput-object v0, p0, Llfv;->f:[I

    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Llfv;->a(I)V

    .line 65
    invoke-virtual {p0}, Llfv;->a()V

    .line 66
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "langFlag"    # I

    .prologue
    const/16 v1, 0x10

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Llfl;

    invoke-direct {v0}, Llfl;-><init>()V

    iput-object v0, p0, Llfv;->d:Llfl;

    .line 49
    new-array v0, v1, [B

    iput-object v0, p0, Llfv;->e:[B

    .line 51
    new-array v0, v1, [I

    iput-object v0, p0, Llfv;->f:[I

    .line 69
    invoke-direct {p0, p1}, Llfv;->a(I)V

    .line 70
    invoke-virtual {p0}, Llfv;->a()V

    .line 71
    return-void
.end method

.method private a(I)V
    .locals 9
    .param p1, "currVerSet"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x6

    const/4 v5, 0x3

    const/4 v1, 0x1

    .line 100
    if-ltz p1, :cond_1

    if-ge p1, v6, :cond_1

    .line 101
    move v0, p1

    .line 107
    .local v0, "currVerifierSet":I
    :goto_0
    const/4 v2, 0x0

    iput-object v2, p0, Llfv;->b:[Llga;

    .line 108
    const/4 v2, 0x0

    iput-object v2, p0, Llfv;->c:[Llfm;

    .line 110
    if-ne v0, v8, :cond_2

    .line 112
    const/4 v2, 0x7

    new-array v2, v2, [Llga;

    const/4 v3, 0x0

    .line 113
    new-instance v4, Llfz;

    invoke-direct {v4}, Llfz;-><init>()V

    aput-object v4, v2, v3

    new-instance v3, Llfg;

    invoke-direct {v3}, Llfg;-><init>()V

    aput-object v3, v2, v1

    new-instance v3, Llfs;

    invoke-direct {v3}, Llfs;-><init>()V

    aput-object v3, v2, v7

    new-instance v3, Llfn;

    invoke-direct {v3}, Llfn;-><init>()V

    aput-object v3, v2, v5

    new-instance v3, Llfh;

    invoke-direct {v3}, Llfh;-><init>()V

    aput-object v3, v2, v8

    const/4 v3, 0x5

    .line 114
    new-instance v4, Llfx;

    invoke-direct {v4}, Llfx;-><init>()V

    aput-object v4, v2, v3

    new-instance v3, Llfy;

    invoke-direct {v3}, Llfy;-><init>()V

    aput-object v3, v2, v6

    iput-object v2, p0, Llfv;->b:[Llga;

    .line 117
    const/4 v2, 0x7

    new-array v2, v2, [Llfm;

    .line 118
    new-instance v3, Llfb;

    invoke-direct {v3}, Llfb;-><init>()V

    aput-object v3, v2, v1

    new-instance v3, Llfe;

    invoke-direct {v3}, Llfe;-><init>()V

    aput-object v3, v2, v5

    iput-object v2, p0, Llfv;->c:[Llfm;

    .line 176
    :cond_0
    :goto_1
    iget-object v2, p0, Llfv;->c:[Llfm;

    if-eqz v2, :cond_7

    :goto_2
    iput-boolean v1, p0, Llfv;->k:Z

    .line 177
    iget-object v1, p0, Llfv;->b:[Llga;

    array-length v1, v1

    iput v1, p0, Llfv;->h:I

    .line 179
    return-void

    .line 104
    .end local v0    # "currVerifierSet":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "currVerifierSet":I
    goto :goto_0

    .line 123
    :cond_2
    const/4 v2, 0x5

    if-ne v0, v2, :cond_3

    .line 125
    new-array v2, v6, [Llga;

    const/4 v3, 0x0

    .line 126
    new-instance v4, Llfz;

    invoke-direct {v4}, Llfz;-><init>()V

    aput-object v4, v2, v3

    new-instance v3, Llfk;

    invoke-direct {v3}, Llfk;-><init>()V

    aput-object v3, v2, v1

    new-instance v3, Llfu;

    invoke-direct {v3}, Llfu;-><init>()V

    aput-object v3, v2, v7

    new-instance v3, Llfh;

    invoke-direct {v3}, Llfh;-><init>()V

    aput-object v3, v2, v5

    new-instance v3, Llfx;

    invoke-direct {v3}, Llfx;-><init>()V

    aput-object v3, v2, v8

    const/4 v3, 0x5

    .line 127
    new-instance v4, Llfy;

    invoke-direct {v4}, Llfy;-><init>()V

    aput-object v4, v2, v3

    iput-object v2, p0, Llfv;->b:[Llga;

    goto :goto_1

    .line 132
    :cond_3
    if-ne v0, v5, :cond_4

    .line 134
    const/16 v2, 0x8

    new-array v2, v2, [Llga;

    const/4 v3, 0x0

    .line 135
    new-instance v4, Llfz;

    invoke-direct {v4}, Llfz;-><init>()V

    aput-object v4, v2, v3

    new-instance v3, Llfp;

    invoke-direct {v3}, Llfp;-><init>()V

    aput-object v3, v2, v1

    new-instance v3, Llfo;

    invoke-direct {v3}, Llfo;-><init>()V

    aput-object v3, v2, v7

    new-instance v3, Llfs;

    invoke-direct {v3}, Llfs;-><init>()V

    aput-object v3, v2, v5

    new-instance v3, Llfq;

    invoke-direct {v3}, Llfq;-><init>()V

    aput-object v3, v2, v8

    const/4 v3, 0x5

    .line 136
    new-instance v4, Llfh;

    invoke-direct {v4}, Llfh;-><init>()V

    aput-object v4, v2, v3

    new-instance v3, Llfx;

    invoke-direct {v3}, Llfx;-><init>()V

    aput-object v3, v2, v6

    const/4 v3, 0x7

    new-instance v4, Llfy;

    invoke-direct {v4}, Llfy;-><init>()V

    aput-object v4, v2, v3

    iput-object v2, p0, Llfv;->b:[Llga;

    goto/16 :goto_1

    .line 141
    :cond_4
    if-ne v0, v1, :cond_5

    .line 143
    const/4 v2, 0x7

    new-array v2, v2, [Llga;

    const/4 v3, 0x0

    .line 144
    new-instance v4, Llfz;

    invoke-direct {v4}, Llfz;-><init>()V

    aput-object v4, v2, v3

    new-instance v3, Llfw;

    invoke-direct {v3}, Llfw;-><init>()V

    aput-object v3, v2, v1

    new-instance v3, Llfj;

    invoke-direct {v3}, Llfj;-><init>()V

    aput-object v3, v2, v7

    new-instance v3, Llft;

    invoke-direct {v3}, Llft;-><init>()V

    aput-object v3, v2, v5

    new-instance v3, Llfh;

    invoke-direct {v3}, Llfh;-><init>()V

    aput-object v3, v2, v8

    const/4 v3, 0x5

    .line 145
    new-instance v4, Llfx;

    invoke-direct {v4}, Llfx;-><init>()V

    aput-object v4, v2, v3

    new-instance v3, Llfy;

    invoke-direct {v3}, Llfy;-><init>()V

    aput-object v3, v2, v6

    iput-object v2, p0, Llfv;->b:[Llga;

    goto/16 :goto_1

    .line 149
    :cond_5
    if-ne v0, v7, :cond_6

    .line 151
    const/16 v2, 0xa

    new-array v2, v2, [Llga;

    const/4 v3, 0x0

    .line 152
    new-instance v4, Llfz;

    invoke-direct {v4}, Llfz;-><init>()V

    aput-object v4, v2, v3

    new-instance v3, Llfp;

    invoke-direct {v3}, Llfp;-><init>()V

    aput-object v3, v2, v1

    new-instance v3, Llfo;

    invoke-direct {v3}, Llfo;-><init>()V

    aput-object v3, v2, v7

    new-instance v3, Llfg;

    invoke-direct {v3}, Llfg;-><init>()V

    aput-object v3, v2, v5

    new-instance v3, Llfs;

    invoke-direct {v3}, Llfs;-><init>()V

    aput-object v3, v2, v8

    const/4 v3, 0x5

    .line 153
    new-instance v4, Llfq;

    invoke-direct {v4}, Llfq;-><init>()V

    aput-object v4, v2, v3

    new-instance v3, Llfn;

    invoke-direct {v3}, Llfn;-><init>()V

    aput-object v3, v2, v6

    const/4 v3, 0x7

    new-instance v4, Llfh;

    invoke-direct {v4}, Llfh;-><init>()V

    aput-object v4, v2, v3

    const/16 v3, 0x8

    new-instance v4, Llfx;

    invoke-direct {v4}, Llfx;-><init>()V

    aput-object v4, v2, v3

    const/16 v3, 0x9

    new-instance v4, Llfy;

    invoke-direct {v4}, Llfy;-><init>()V

    aput-object v4, v2, v3

    iput-object v2, p0, Llfv;->b:[Llga;

    .line 156
    const/16 v2, 0xa

    new-array v2, v2, [Llfm;

    .line 157
    new-instance v3, Llff;

    invoke-direct {v3}, Llff;-><init>()V

    aput-object v3, v2, v1

    new-instance v3, Llfb;

    invoke-direct {v3}, Llfb;-><init>()V

    aput-object v3, v2, v5

    new-instance v3, Llfe;

    invoke-direct {v3}, Llfe;-><init>()V

    aput-object v3, v2, v6

    iput-object v2, p0, Llfv;->c:[Llfm;

    goto/16 :goto_1

    .line 162
    :cond_6
    if-nez v0, :cond_0

    .line 164
    const/16 v2, 0xf

    new-array v2, v2, [Llga;

    const/4 v3, 0x0

    .line 165
    new-instance v4, Llfz;

    invoke-direct {v4}, Llfz;-><init>()V

    aput-object v4, v2, v3

    new-instance v3, Llfw;

    invoke-direct {v3}, Llfw;-><init>()V

    aput-object v3, v2, v1

    new-instance v3, Llfj;

    invoke-direct {v3}, Llfj;-><init>()V

    aput-object v3, v2, v7

    new-instance v3, Llft;

    invoke-direct {v3}, Llft;-><init>()V

    aput-object v3, v2, v5

    new-instance v3, Llfk;

    invoke-direct {v3}, Llfk;-><init>()V

    aput-object v3, v2, v8

    const/4 v3, 0x5

    .line 166
    new-instance v4, Llfu;

    invoke-direct {v4}, Llfu;-><init>()V

    aput-object v4, v2, v3

    new-instance v3, Llfg;

    invoke-direct {v3}, Llfg;-><init>()V

    aput-object v3, v2, v6

    const/4 v3, 0x7

    new-instance v4, Llfn;

    invoke-direct {v4}, Llfn;-><init>()V

    aput-object v4, v2, v3

    const/16 v3, 0x8

    new-instance v4, Llfp;

    invoke-direct {v4}, Llfp;-><init>()V

    aput-object v4, v2, v3

    const/16 v3, 0x9

    new-instance v4, Llfo;

    invoke-direct {v4}, Llfo;-><init>()V

    aput-object v4, v2, v3

    const/16 v3, 0xa

    .line 167
    new-instance v4, Llfs;

    invoke-direct {v4}, Llfs;-><init>()V

    aput-object v4, v2, v3

    const/16 v3, 0xb

    new-instance v4, Llfq;

    invoke-direct {v4}, Llfq;-><init>()V

    aput-object v4, v2, v3

    const/16 v3, 0xc

    new-instance v4, Llfh;

    invoke-direct {v4}, Llfh;-><init>()V

    aput-object v4, v2, v3

    const/16 v3, 0xd

    new-instance v4, Llfx;

    invoke-direct {v4}, Llfx;-><init>()V

    aput-object v4, v2, v3

    const/16 v3, 0xe

    new-instance v4, Llfy;

    invoke-direct {v4}, Llfy;-><init>()V

    aput-object v4, v2, v3

    iput-object v2, p0, Llfv;->b:[Llga;

    .line 170
    const/16 v2, 0xf

    new-array v2, v2, [Llfm;

    .line 171
    new-instance v3, Llfc;

    invoke-direct {v3}, Llfc;-><init>()V

    aput-object v3, v2, v7

    new-instance v3, Llfd;

    invoke-direct {v3}, Llfd;-><init>()V

    aput-object v3, v2, v8

    new-instance v3, Llfb;

    invoke-direct {v3}, Llfb;-><init>()V

    aput-object v3, v2, v6

    const/4 v3, 0x7

    new-instance v4, Llfe;

    invoke-direct {v4}, Llfe;-><init>()V

    aput-object v4, v2, v3

    const/16 v3, 0x8

    .line 172
    new-instance v4, Llff;

    invoke-direct {v4}, Llff;-><init>()V

    aput-object v4, v2, v3

    iput-object v2, p0, Llfv;->c:[Llfm;

    goto/16 :goto_1

    .line 176
    :cond_7
    const/4 v1, 0x0

    goto/16 :goto_2
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 83
    iget-boolean v1, p0, Llfv;->k:Z

    iput-boolean v1, p0, Llfv;->j:Z

    .line 84
    iput-boolean v2, p0, Llfv;->i:Z

    .line 85
    iget v1, p0, Llfv;->h:I

    iput v1, p0, Llfv;->g:I

    .line 87
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Llfv;->g:I

    if-lt v0, v1, :cond_0

    .line 92
    iget-object v1, p0, Llfv;->d:Llfl;

    invoke-virtual {v1}, Llfl;->a()V

    .line 93
    return-void

    .line 88
    :cond_0
    iget-object v1, p0, Llfv;->e:[B

    aput-byte v2, v1, v0

    .line 89
    iget-object v1, p0, Llfv;->f:[I

    aput v0, v1, v0

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public abstract a(Ljava/lang/String;)V
.end method

.method public final a([BIZ)V
    .locals 15
    .param p1, "aBuf"    # [B
    .param p2, "aLen"    # I
    .param p3, "aLastChance"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 284
    const/4 v7, 0x0

    .line 286
    .local v7, "possibleCandidateNum":I
    const/4 v5, 0x0

    .line 288
    .local v5, "eucNum":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_0
    iget v9, p0, Llfv;->g:I

    if-lt v6, v9, :cond_4

    .line 295
    const/4 v9, 0x1

    if-le v5, v9, :cond_7

    const/4 v9, 0x1

    :goto_1
    iput-boolean v9, p0, Llfv;->j:Z

    .line 297
    iget-boolean v9, p0, Llfv;->j:Z

    if-eqz v9, :cond_3

    .line 298
    iget-object v11, p0, Llfv;->d:Llfl;

    .line 1057
    iget v9, v11, Llfl;->c:I

    const/4 v10, 0x1

    if-eq v9, v10, :cond_f

    .line 1060
    const/4 v10, 0x0

    .line 1066
    const/4 v9, 0x0

    :goto_2
    move/from16 v0, p2

    if-ge v9, v0, :cond_0

    const/4 v12, 0x1

    iget v13, v11, Llfl;->c:I

    if-ne v12, v13, :cond_8

    .line 1102
    :cond_0
    const/4 v9, 0x1

    iget v10, v11, Llfl;->c:I

    if-eq v9, v10, :cond_f

    const/4 v9, 0x1

    .line 298
    :goto_3
    iput-boolean v9, p0, Llfv;->j:Z

    .line 299
    if-eqz p3, :cond_1

    iget-object v9, p0, Llfv;->d:Llfl;

    .line 2053
    iget v9, v9, Llfl;->a:I

    const/4 v10, 0x1

    if-le v9, v10, :cond_10

    const/4 v9, 0x1

    .line 299
    :goto_4
    if-nez v9, :cond_2

    :cond_1
    iget-object v9, p0, Llfv;->d:Llfl;

    .line 3051
    iget v10, v9, Llfl;->a:I

    iget v9, v9, Llfl;->b:I

    if-le v10, v9, :cond_11

    const/4 v9, 0x1

    .line 299
    :goto_5
    if-eqz v9, :cond_3

    :cond_2
    if-ne v5, v7, :cond_3

    .line 300
    iget-object v10, p0, Llfv;->d:Llfl;

    .line 3107
    const/4 v9, 0x0

    :goto_6
    const/16 v11, 0x5e

    if-lt v9, v11, :cond_12

    .line 302
    const/4 v1, -0x1

    .line 303
    .local v1, "bestIdx":I
    const/4 v3, 0x0

    .line 304
    .local v3, "eucCnt":I
    const/4 v2, 0x0

    .line 305
    .local v2, "bestScore":F
    const/4 v6, 0x0

    move v4, v3

    .end local v3    # "eucCnt":I
    .local v4, "eucCnt":I
    :goto_7
    iget v9, p0, Llfv;->g:I

    if-lt v6, v9, :cond_13

    .line 317
    if-ltz v1, :cond_3

    .line 318
    iget-object v9, p0, Llfv;->b:[Llga;

    iget-object v10, p0, Llfv;->f:[I

    aget v10, v10, v1

    aget-object v9, v9, v10

    invoke-virtual {v9}, Llga;->d()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Llfv;->a(Ljava/lang/String;)V

    .line 319
    const/4 v9, 0x1

    iput-boolean v9, p0, Llfv;->i:Z

    .line 323
    .end local v1    # "bestIdx":I
    .end local v2    # "bestScore":F
    .end local v4    # "eucCnt":I
    :cond_3
    return-void

    .line 289
    :cond_4
    iget-object v9, p0, Llfv;->c:[Llfm;

    iget-object v10, p0, Llfv;->f:[I

    aget v10, v10, v6

    aget-object v9, v9, v10

    if-eqz v9, :cond_5

    .line 290
    add-int/lit8 v5, v5, 0x1

    .line 291
    :cond_5
    iget-object v9, p0, Llfv;->b:[Llga;

    iget-object v10, p0, Llfv;->f:[I

    aget v10, v10, v6

    aget-object v9, v9, v10

    invoke-virtual {v9}, Llga;->e()Z

    move-result v9

    if-nez v9, :cond_6

    iget-object v9, p0, Llfv;->b:[Llga;

    iget-object v10, p0, Llfv;->f:[I

    aget v10, v10, v6

    aget-object v9, v9, v10

    invoke-virtual {v9}, Llga;->d()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "GB18030"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 292
    add-int/lit8 v7, v7, 0x1

    .line 288
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 295
    :cond_7
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 1068
    :cond_8
    iget v12, v11, Llfl;->c:I

    packed-switch v12, :pswitch_data_0

    .line 1099
    const/4 v12, 0x1

    iput v12, v11, Llfl;->c:I

    .line 1066
    :cond_9
    :goto_8
    :pswitch_0
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    .line 1070
    :pswitch_1
    aget-byte v12, p1, v10

    and-int/lit16 v12, v12, 0x80

    if-eqz v12, :cond_9

    .line 1072
    const/16 v12, 0xff

    aget-byte v13, p1, v10

    and-int/lit16 v13, v13, 0xff

    if-eq v12, v13, :cond_a

    const/16 v12, 0xa1

    aget-byte v13, p1, v10

    and-int/lit16 v13, v13, 0xff

    if-le v12, v13, :cond_b

    .line 1073
    :cond_a
    const/4 v12, 0x1

    iput v12, v11, Llfl;->c:I

    goto :goto_8

    .line 1075
    :cond_b
    iget v12, v11, Llfl;->a:I

    add-int/lit8 v12, v12, 0x1

    iput v12, v11, Llfl;->a:I

    .line 1076
    iget-object v12, v11, Llfl;->d:[I

    aget-byte v13, p1, v10

    and-int/lit16 v13, v13, 0xff

    add-int/lit16 v13, v13, -0xa1

    aget v14, v12, v13

    add-int/lit8 v14, v14, 0x1

    aput v14, v12, v13

    .line 1077
    const/4 v12, 0x2

    iput v12, v11, Llfl;->c:I

    goto :goto_8

    .line 1084
    :pswitch_2
    aget-byte v12, p1, v10

    and-int/lit16 v12, v12, 0x80

    if-eqz v12, :cond_e

    .line 1086
    const/16 v12, 0xff

    aget-byte v13, p1, v10

    and-int/lit16 v13, v13, 0xff

    if-eq v12, v13, :cond_c

    .line 1087
    const/16 v12, 0xa1

    aget-byte v13, p1, v10

    and-int/lit16 v13, v13, 0xff

    if-le v12, v13, :cond_d

    .line 1088
    :cond_c
    const/4 v12, 0x1

    iput v12, v11, Llfl;->c:I

    goto :goto_8

    .line 1090
    :cond_d
    iget v12, v11, Llfl;->a:I

    add-int/lit8 v12, v12, 0x1

    iput v12, v11, Llfl;->a:I

    .line 1091
    iget-object v12, v11, Llfl;->e:[I

    aget-byte v13, p1, v10

    and-int/lit16 v13, v13, 0xff

    add-int/lit16 v13, v13, -0xa1

    aget v14, v12, v13

    add-int/lit8 v14, v14, 0x1

    aput v14, v12, v13

    .line 1092
    const/4 v12, 0x0

    iput v12, v11, Llfl;->c:I

    goto :goto_8

    .line 1095
    :cond_e
    const/4 v12, 0x1

    iput v12, v11, Llfl;->c:I

    goto :goto_8

    .line 1102
    :cond_f
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 2053
    :cond_10
    const/4 v9, 0x0

    goto/16 :goto_4

    .line 3051
    :cond_11
    const/4 v9, 0x0

    goto/16 :goto_5

    .line 3108
    :cond_12
    iget-object v11, v10, Llfl;->f:[F

    iget-object v12, v10, Llfl;->d:[I

    aget v12, v12, v9

    int-to-float v12, v12

    iget v13, v10, Llfl;->a:I

    int-to-float v13, v13

    div-float/2addr v12, v13

    aput v12, v11, v9

    .line 3109
    iget-object v11, v10, Llfl;->g:[F

    iget-object v12, v10, Llfl;->e:[I

    aget v12, v12, v9

    int-to-float v12, v12

    iget v13, v10, Llfl;->a:I

    int-to-float v13, v13

    div-float/2addr v12, v13

    aput v12, v11, v9

    .line 3107
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_6

    .line 306
    .restart local v1    # "bestIdx":I
    .restart local v2    # "bestScore":F
    .restart local v4    # "eucCnt":I
    :cond_13
    iget-object v9, p0, Llfv;->c:[Llfm;

    iget-object v10, p0, Llfv;->f:[I

    aget v10, v10, v6

    aget-object v9, v9, v10

    if-eqz v9, :cond_16

    iget-object v9, p0, Llfv;->b:[Llga;

    iget-object v10, p0, Llfv;->f:[I

    aget v10, v10, v6

    aget-object v9, v9, v10

    invoke-virtual {v9}, Llga;->d()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "Big5"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_16

    .line 307
    iget-object v9, p0, Llfv;->d:Llfl;

    iget-object v10, p0, Llfv;->c:[Llfm;

    iget-object v11, p0, Llfv;->f:[I

    aget v11, v11, v6

    aget-object v10, v10, v11

    invoke-virtual {v10}, Llfm;->a()[F

    move-result-object v10

    iget-object v11, p0, Llfv;->c:[Llfm;

    iget-object v12, p0, Llfv;->f:[I

    aget v12, v12, v6

    aget-object v11, v11, v12

    invoke-virtual {v11}, Llfm;->b()F

    move-result v11

    .line 308
    iget-object v12, p0, Llfv;->c:[Llfm;

    iget-object v13, p0, Llfv;->f:[I

    aget v13, v13, v6

    aget-object v12, v12, v13

    invoke-virtual {v12}, Llfm;->c()[F

    move-result-object v12

    iget-object v13, p0, Llfv;->c:[Llfm;

    iget-object v14, p0, Llfv;->f:[I

    aget v14, v14, v6

    aget-object v13, v13, v14

    invoke-virtual {v13}, Llfm;->d()F

    move-result v13

    .line 3116
    iget-object v14, v9, Llfl;->f:[F

    invoke-static {v10, v14}, Llfl;->a([F[F)F

    move-result v10

    mul-float/2addr v10, v11

    .line 3117
    iget-object v9, v9, Llfl;->g:[F

    invoke-static {v12, v9}, Llfl;->a([F[F)F

    move-result v9

    mul-float/2addr v9, v13

    .line 3116
    add-float v8, v10, v9

    .line 311
    .local v8, "score":F
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "eucCnt":I
    .restart local v3    # "eucCnt":I
    if-eqz v4, :cond_14

    cmpl-float v9, v2, v8

    if-lez v9, :cond_15

    .line 312
    :cond_14
    move v2, v8

    .line 313
    move v1, v6

    .line 305
    .end local v8    # "score":F
    :cond_15
    :goto_9
    add-int/lit8 v6, v6, 0x1

    move v4, v3

    .end local v3    # "eucCnt":I
    .restart local v4    # "eucCnt":I
    goto/16 :goto_7

    :cond_16
    move v3, v4

    .end local v4    # "eucCnt":I
    .restart local v3    # "eucCnt":I
    goto :goto_9

    .line 1068
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final b()[Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 327
    iget v3, p0, Llfv;->g:I

    if-gtz v3, :cond_0

    .line 328
    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/String;

    .line 329
    .local v1, "nomatch":[Ljava/lang/String;
    const/4 v3, 0x0

    const-string/jumbo v4, "nomatch"

    aput-object v4, v1, v3

    .line 336
    .end local v1    # "nomatch":[Ljava/lang/String;
    :goto_0
    return-object v1

    .line 333
    :cond_0
    iget v3, p0, Llfv;->g:I

    new-array v2, v3, [Ljava/lang/String;

    .line 334
    .local v2, "ret":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v3, p0, Llfv;->g:I

    if-lt v0, v3, :cond_1

    move-object v1, v2

    .line 336
    goto :goto_0

    .line 335
    :cond_1
    iget-object v3, p0, Llfv;->b:[Llga;

    iget-object v4, p0, Llfv;->f:[I

    aget v4, v4, v0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Llga;->d()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 334
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
