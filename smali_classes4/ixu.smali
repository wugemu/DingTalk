.class final Lixu;
.super Ljava/lang/Object;
.source "MaskUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method static a(Lixs;Z)I
    .locals 11
    .param p0, "matrix"    # Lixs;
    .param p1, "isHorizontal"    # Z

    .prologue
    const/4 v10, 0x5

    .line 192
    const/4 v7, 0x0

    .line 193
    .local v7, "penalty":I
    if-eqz p1, :cond_0

    .line 1045
    iget v3, p0, Lixs;->c:I

    .line 194
    .local v3, "iLimit":I
    :goto_0
    if-eqz p1, :cond_1

    .line 2049
    iget v5, p0, Lixs;->b:I

    .line 3057
    .local v5, "jLimit":I
    :goto_1
    iget-object v0, p0, Lixs;->a:[[B

    .line 196
    .local v0, "array":[[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v3, :cond_7

    .line 197
    const/4 v6, 0x0

    .line 198
    .local v6, "numSameBitCells":I
    const/4 v8, -0x1

    .line 199
    .local v8, "prevBit":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_3
    if-ge v4, v5, :cond_5

    .line 200
    if-eqz p1, :cond_2

    aget-object v9, v0, v2

    aget-byte v1, v9, v4

    .line 201
    .local v1, "bit":I
    :goto_4
    if-ne v1, v8, :cond_3

    .line 202
    add-int/lit8 v6, v6, 0x1

    .line 199
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1049
    .end local v0    # "array":[[B
    .end local v1    # "bit":I
    .end local v2    # "i":I
    .end local v3    # "iLimit":I
    .end local v4    # "j":I
    .end local v5    # "jLimit":I
    .end local v6    # "numSameBitCells":I
    .end local v8    # "prevBit":I
    :cond_0
    iget v3, p0, Lixs;->b:I

    goto :goto_0

    .line 3045
    .restart local v3    # "iLimit":I
    :cond_1
    iget v5, p0, Lixs;->c:I

    goto :goto_1

    .line 200
    .restart local v0    # "array":[[B
    .restart local v2    # "i":I
    .restart local v4    # "j":I
    .restart local v5    # "jLimit":I
    .restart local v6    # "numSameBitCells":I
    .restart local v8    # "prevBit":I
    :cond_2
    aget-object v9, v0, v4

    aget-byte v1, v9, v2

    goto :goto_4

    .line 204
    .restart local v1    # "bit":I
    :cond_3
    if-lt v6, v10, :cond_4

    .line 205
    add-int/lit8 v9, v6, -0x5

    add-int/lit8 v9, v9, 0x3

    add-int/2addr v7, v9

    .line 207
    :cond_4
    const/4 v6, 0x1

    .line 208
    move v8, v1

    goto :goto_5

    .line 211
    .end local v1    # "bit":I
    :cond_5
    if-le v6, v10, :cond_6

    .line 212
    add-int/lit8 v9, v6, -0x5

    add-int/lit8 v9, v9, 0x3

    add-int/2addr v7, v9

    .line 196
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 215
    .end local v4    # "j":I
    .end local v6    # "numSameBitCells":I
    .end local v8    # "prevBit":I
    :cond_7
    return v7
.end method
