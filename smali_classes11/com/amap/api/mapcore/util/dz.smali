.class public Lcom/amap/api/mapcore/util/dz;
.super Ljava/lang/Object;
.source "EarClippingTriangulator.java"


# instance fields
.field private final a:Lcom/amap/api/mapcore/util/em;

.field private b:[S

.field private c:[F

.field private d:I

.field private final e:Lcom/amap/api/mapcore/util/eg;

.field private final f:Lcom/amap/api/mapcore/util/em;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Lcom/amap/api/mapcore/util/em;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/em;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/dz;->a:Lcom/amap/api/mapcore/util/em;

    .line 11
    new-instance v0, Lcom/amap/api/mapcore/util/eg;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/eg;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/dz;->e:Lcom/amap/api/mapcore/util/eg;

    .line 12
    new-instance v0, Lcom/amap/api/mapcore/util/em;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/em;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/dz;->f:Lcom/amap/api/mapcore/util/em;

    return-void
.end method

.method private static a(FFFFFF)I
    .locals 2

    .prologue
    .line 188
    sub-float v0, p5, p3

    mul-float/2addr v0, p0

    .line 189
    sub-float v1, p1, p5

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    .line 190
    sub-float v1, p3, p1

    mul-float/2addr v1, p4

    add-float/2addr v0, v1

    .line 191
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private a(I)I
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 85
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dz;->b:[S

    .line 86
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/dz;->d(I)I

    move-result v1

    aget-short v1, v0, v1

    mul-int/lit8 v1, v1, 0x2

    .line 87
    aget-short v2, v0, p1

    mul-int/lit8 v3, v2, 0x2

    .line 88
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/dz;->e(I)I

    move-result v2

    aget-short v0, v0, v2

    mul-int/lit8 v5, v0, 0x2

    .line 89
    iget-object v6, p0, Lcom/amap/api/mapcore/util/dz;->c:[F

    .line 90
    aget v0, v6, v1

    add-int/lit8 v1, v1, 0x1

    aget v1, v6, v1

    aget v2, v6, v3

    add-int/lit8 v3, v3, 0x1

    aget v3, v6, v3

    aget v4, v6, v5

    add-int/lit8 v5, v5, 0x1

    aget v5, v6, v5

    invoke-static/range {v0 .. v5}, Lcom/amap/api/mapcore/util/dz;->a(FFFFFF)I

    move-result v0

    return v0
.end method

.method private a()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x3

    const/4 v1, 0x0

    .line 61
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dz;->e:Lcom/amap/api/mapcore/util/eg;

    iget-object v2, v0, Lcom/amap/api/mapcore/util/eg;->a:[I

    .line 63
    :goto_0
    iget v0, p0, Lcom/amap/api/mapcore/util/dz;->d:I

    if-le v0, v5, :cond_1

    .line 64
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/dz;->b()I

    move-result v0

    .line 65
    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/dz;->c(I)V

    .line 68
    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/dz;->d(I)I

    move-result v3

    .line 69
    iget v4, p0, Lcom/amap/api/mapcore/util/dz;->d:I

    if-ne v0, v4, :cond_0

    move v0, v1

    .line 70
    :cond_0
    invoke-direct {p0, v3}, Lcom/amap/api/mapcore/util/dz;->a(I)I

    move-result v4

    aput v4, v2, v3

    .line 71
    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/dz;->a(I)I

    move-result v3

    aput v3, v2, v0

    goto :goto_0

    .line 74
    :cond_1
    iget v0, p0, Lcom/amap/api/mapcore/util/dz;->d:I

    if-ne v0, v5, :cond_2

    .line 75
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dz;->f:Lcom/amap/api/mapcore/util/em;

    .line 76
    iget-object v2, p0, Lcom/amap/api/mapcore/util/dz;->b:[S

    .line 77
    aget-short v1, v2, v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/em;->a(S)V

    .line 78
    const/4 v1, 0x1

    aget-short v1, v2, v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/em;->a(S)V

    .line 79
    const/4 v1, 0x2

    aget-short v1, v2, v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/em;->a(S)V

    .line 81
    :cond_2
    return-void
.end method

.method private b()I
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 95
    iget v2, p0, Lcom/amap/api/mapcore/util/dz;->d:I

    move v0, v1

    .line 96
    :goto_0
    if-ge v0, v2, :cond_2

    .line 97
    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/dz;->b(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 109
    :cond_0
    :goto_1
    return v0

    .line 96
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 106
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dz;->e:Lcom/amap/api/mapcore/util/eg;

    iget-object v3, v0, Lcom/amap/api/mapcore/util/eg;->a:[I

    move v0, v1

    .line 107
    :goto_2
    if-ge v0, v2, :cond_3

    .line 108
    aget v4, v3, v0

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 107
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    move v0, v1

    .line 109
    goto :goto_1
.end method

.method private b(I)Z
    .locals 20

    .prologue
    .line 113
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/amap/api/mapcore/util/dz;->e:Lcom/amap/api/mapcore/util/eg;

    iget-object v0, v1, Lcom/amap/api/mapcore/util/eg;->a:[I

    move-object/from16 v16, v0

    .line 114
    aget v1, v16, p1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    .line 146
    :goto_0
    return v1

    .line 116
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/amap/api/mapcore/util/dz;->d(I)I

    move-result v17

    .line 117
    invoke-direct/range {p0 .. p1}, Lcom/amap/api/mapcore/util/dz;->e(I)I

    move-result v5

    .line 118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amap/api/mapcore/util/dz;->b:[S

    move-object/from16 v18, v0

    .line 119
    aget-short v1, v18, v17

    mul-int/lit8 v1, v1, 0x2

    .line 120
    aget-short v2, v18, p1

    mul-int/lit8 v2, v2, 0x2

    .line 121
    aget-short v3, v18, v5

    mul-int/lit8 v6, v3, 0x2

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amap/api/mapcore/util/dz;->c:[F

    move-object/from16 v19, v0

    .line 123
    aget v3, v19, v1

    add-int/lit8 v1, v1, 0x1

    aget v4, v19, v1

    .line 124
    aget v9, v19, v2

    add-int/lit8 v1, v2, 0x1

    aget v10, v19, v1

    .line 125
    aget v1, v19, v6

    add-int/lit8 v2, v6, 0x1

    aget v2, v19, v2

    .line 129
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/amap/api/mapcore/util/dz;->e(I)I

    move-result v5

    move v15, v5

    :goto_1
    move/from16 v0, v17

    if-eq v15, v0, :cond_2

    .line 132
    aget v5, v16, v15

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1

    .line 133
    aget-short v5, v18, v15

    mul-int/lit8 v6, v5, 0x2

    .line 134
    aget v5, v19, v6

    .line 135
    add-int/lit8 v6, v6, 0x1

    aget v6, v19, v6

    .line 139
    invoke-static/range {v1 .. v6}, Lcom/amap/api/mapcore/util/dz;->a(FFFFFF)I

    move-result v7

    if-ltz v7, :cond_1

    move v7, v3

    move v8, v4

    move v11, v5

    move v12, v6

    .line 140
    invoke-static/range {v7 .. v12}, Lcom/amap/api/mapcore/util/dz;->a(FFFFFF)I

    move-result v7

    if-ltz v7, :cond_1

    move v11, v1

    move v12, v2

    move v13, v5

    move v14, v6

    .line 141
    invoke-static/range {v9 .. v14}, Lcom/amap/api/mapcore/util/dz;->a(FFFFFF)I

    move-result v5

    if-ltz v5, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    .line 129
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/amap/api/mapcore/util/dz;->e(I)I

    move-result v5

    move v15, v5

    goto :goto_1

    .line 146
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static b([FII)Z
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 171
    const/4 v1, 0x2

    if-gt p2, v1, :cond_1

    .line 184
    :cond_0
    :goto_0
    return v0

    .line 173
    :cond_1
    add-int v1, p1, p2

    add-int/lit8 v4, v1, -0x3

    move v1, p1

    move v2, v3

    :goto_1
    if-ge v1, v4, :cond_2

    .line 174
    aget v5, p0, v1

    .line 175
    add-int/lit8 v6, v1, 0x1

    aget v6, p0, v6

    .line 176
    add-int/lit8 v7, v1, 0x2

    aget v7, p0, v7

    .line 177
    add-int/lit8 v8, v1, 0x3

    aget v8, p0, v8

    .line 178
    mul-float/2addr v5, v8

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    add-float/2addr v2, v5

    .line 173
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 180
    :cond_2
    add-int v1, p1, p2

    add-int/lit8 v1, v1, -0x2

    aget v1, p0, v1

    .line 181
    add-int v4, p1, p2

    add-int/lit8 v4, v4, -0x1

    aget v4, p0, v4

    .line 182
    aget v5, p0, p1

    .line 183
    add-int/lit8 v6, p1, 0x1

    aget v6, p0, v6

    .line 184
    mul-float/2addr v1, v6

    add-float/2addr v1, v2

    mul-float v2, v5, v4

    sub-float/2addr v1, v2

    cmpg-float v1, v1, v3

    if-gez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private c(I)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 150
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dz;->b:[S

    .line 151
    iget-object v1, p0, Lcom/amap/api/mapcore/util/dz;->f:Lcom/amap/api/mapcore/util/em;

    .line 153
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/dz;->d(I)I

    move-result v2

    aget-short v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/amap/api/mapcore/util/em;->a(S)V

    .line 154
    aget-short v2, v0, p1

    invoke-virtual {v1, v2}, Lcom/amap/api/mapcore/util/em;->a(S)V

    .line 155
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/dz;->e(I)I

    move-result v2

    aget-short v0, v0, v2

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore/util/em;->a(S)V

    .line 157
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dz;->a:Lcom/amap/api/mapcore/util/em;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/em;->b(I)S

    .line 158
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dz;->e:Lcom/amap/api/mapcore/util/eg;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/eg;->b(I)I

    .line 159
    iget v0, p0, Lcom/amap/api/mapcore/util/dz;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/amap/api/mapcore/util/dz;->d:I

    .line 160
    return-void
.end method

.method private d(I)I
    .locals 1

    .prologue
    .line 163
    if-nez p1, :cond_0

    iget p1, p0, Lcom/amap/api/mapcore/util/dz;->d:I

    :cond_0
    add-int/lit8 v0, p1, -0x1

    return v0
.end method

.method private e(I)I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 167
    add-int/lit8 v0, p1, 0x1

    iget v1, p0, Lcom/amap/api/mapcore/util/dz;->d:I

    rem-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public a([F)Lcom/amap/api/mapcore/util/em;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 21
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/amap/api/mapcore/util/dz;->a([FII)Lcom/amap/api/mapcore/util/em;

    move-result-object v0

    return-object v0
.end method

.method public a([FII)Lcom/amap/api/mapcore/util/em;
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 29
    iput-object p1, p0, Lcom/amap/api/mapcore/util/dz;->c:[F

    .line 30
    div-int/lit8 v2, p3, 0x2

    iput v2, p0, Lcom/amap/api/mapcore/util/dz;->d:I

    .line 31
    div-int/lit8 v3, p2, 0x2

    .line 33
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dz;->a:Lcom/amap/api/mapcore/util/em;

    .line 34
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/em;->a()V

    .line 35
    invoke-virtual {v0, v2}, Lcom/amap/api/mapcore/util/em;->c(I)[S

    .line 36
    iput v2, v0, Lcom/amap/api/mapcore/util/em;->b:I

    .line 37
    iget-object v4, v0, Lcom/amap/api/mapcore/util/em;->a:[S

    iput-object v4, p0, Lcom/amap/api/mapcore/util/dz;->b:[S

    .line 38
    invoke-static {p1, p2, p3}, Lcom/amap/api/mapcore/util/dz;->b([FII)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 39
    :goto_0
    if-ge v0, v2, :cond_1

    .line 40
    add-int v5, v3, v0

    int-to-short v5, v5

    aput-short v5, v4, v0

    .line 39
    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    goto :goto_0

    .line 42
    :cond_0
    add-int/lit8 v5, v2, -0x1

    move v0, v1

    :goto_1
    if-ge v0, v2, :cond_1

    .line 43
    add-int v6, v3, v5

    sub-int/2addr v6, v0

    int-to-short v6, v6

    aput-short v6, v4, v0

    .line 42
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 46
    :cond_1
    iget-object v3, p0, Lcom/amap/api/mapcore/util/dz;->e:Lcom/amap/api/mapcore/util/eg;

    .line 47
    invoke-virtual {v3}, Lcom/amap/api/mapcore/util/eg;->a()V

    .line 48
    invoke-virtual {v3, v2}, Lcom/amap/api/mapcore/util/eg;->c(I)[I

    move v0, v1

    .line 49
    :goto_2
    if-ge v0, v2, :cond_2

    .line 50
    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/dz;->a(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/amap/api/mapcore/util/eg;->a(I)V

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 53
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dz;->f:Lcom/amap/api/mapcore/util/em;

    .line 54
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/em;->a()V

    .line 55
    add-int/lit8 v2, v2, -0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/em;->c(I)[S

    .line 56
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/dz;->a()V

    .line 57
    return-object v0
.end method
