.class public final Lixn;
.super Ljava/lang/Object;
.source "GenericGFPoly.java"


# instance fields
.field final a:Lixm;

.field public final b:[I


# direct methods
.method public constructor <init>(Lixm;[I)V
    .locals 5
    .param p1, "field"    # Lixm;
    .param p2, "coefficients"    # [I

    .prologue
    const/4 v4, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    array-length v2, p2

    if-nez v2, :cond_0

    .line 55
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 57
    :cond_0
    iput-object p1, p0, Lixn;->a:Lixm;

    .line 58
    array-length v0, p2

    .line 59
    .local v0, "coefficientsLength":I
    const/4 v2, 0x1

    if-le v0, v2, :cond_3

    aget v2, p2, v4

    if-nez v2, :cond_3

    .line 62
    const/4 v1, 0x1

    .line 63
    .local v1, "firstNonZero":I
    :goto_0
    if-ge v1, v0, :cond_1

    aget v2, p2, v1

    if-nez v2, :cond_1

    .line 65
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 67
    :cond_1
    if-ne v1, v0, :cond_2

    .line 68
    invoke-virtual {p1}, Lixm;->b()Lixn;

    move-result-object v2

    iget-object v2, v2, Lixn;->b:[I

    iput-object v2, p0, Lixn;->b:[I

    .line 77
    .end local v1    # "firstNonZero":I
    :goto_1
    return-void

    .line 70
    .restart local v1    # "firstNonZero":I
    :cond_2
    sub-int v2, v0, v1

    new-array v2, v2, [I

    iput-object v2, p0, Lixn;->b:[I

    .line 71
    iget-object v2, p0, Lixn;->b:[I

    iget-object v3, p0, Lixn;->b:[I

    array-length v3, v3

    invoke-static {p2, v1, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 75
    .end local v1    # "firstNonZero":I
    :cond_3
    iput-object p2, p0, Lixn;->b:[I

    goto :goto_1
.end method

.method private a(I)I
    .locals 2
    .param p1, "degree"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 101
    iget-object v0, p0, Lixn;->b:[I

    iget-object v1, p0, Lixn;->b:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, p1

    aget v0, v0, v1

    return v0
.end method

.method private b(Lixn;)Lixn;
    .locals 9
    .param p1, "other"    # Lixn;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v8, 0x0

    .line 130
    iget-object v6, p0, Lixn;->a:Lixm;

    iget-object v7, p1, Lixn;->a:Lixm;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 131
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "GenericGFPolys do not have same GenericGF field"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 134
    :cond_0
    invoke-virtual {p0}, Lixn;->a()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 159
    .end local p1    # "other":Lixn;
    :goto_0
    return-object p1

    .line 137
    .restart local p1    # "other":Lixn;
    :cond_1
    invoke-virtual {p1}, Lixn;->a()Z

    move-result v6

    if-eqz v6, :cond_2

    move-object p1, p0

    .line 138
    goto :goto_0

    .line 141
    :cond_2
    iget-object v3, p0, Lixn;->b:[I

    .line 142
    .local v3, "smallerCoefficients":[I
    iget-object v1, p1, Lixn;->b:[I

    .line 143
    .local v1, "largerCoefficients":[I
    array-length v6, v3

    array-length v7, v1

    if-le v6, v7, :cond_3

    .line 144
    move-object v5, v3

    .line 145
    .local v5, "temp":[I
    move-object v3, v1

    .line 146
    move-object v1, v5

    .line 148
    .end local v5    # "temp":[I
    :cond_3
    array-length v6, v1

    new-array v4, v6, [I

    .line 149
    .local v4, "sumDiff":[I
    array-length v6, v1

    array-length v7, v3

    sub-int v2, v6, v7

    .line 152
    .local v2, "lengthDiff":I
    invoke-static {v1, v8, v4, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 154
    move v0, v2

    .local v0, "i":I
    :goto_1
    array-length v6, v1

    if-ge v0, v6, :cond_4

    .line 155
    sub-int v6, v0, v2

    aget v6, v3, v6

    aget v7, v1, v0

    invoke-static {v6, v7}, Lixm;->b(II)I

    move-result v6

    aput v6, v4, v0

    .line 154
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 159
    :cond_4
    new-instance p1, Lixn;

    .end local p1    # "other":Lixn;
    iget-object v6, p0, Lixn;->a:Lixm;

    invoke-direct {p1, v6, v4}, Lixn;-><init>(Lixm;[I)V

    goto :goto_0
.end method


# virtual methods
.method public final a(II)Lixn;
    .locals 5
    .param p1, "degree"    # I
    .param p2, "coefficient"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 201
    if-gez p1, :cond_0

    .line 202
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 204
    :cond_0
    if-nez p2, :cond_1

    .line 205
    iget-object v3, p0, Lixn;->a:Lixm;

    invoke-virtual {v3}, Lixm;->b()Lixn;

    move-result-object v3

    .line 212
    :goto_0
    return-object v3

    .line 207
    :cond_1
    iget-object v3, p0, Lixn;->b:[I

    array-length v2, v3

    .line 208
    .local v2, "size":I
    add-int v3, v2, p1

    new-array v1, v3, [I

    .line 209
    .local v1, "product":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 210
    iget-object v3, p0, Lixn;->a:Lixm;

    iget-object v4, p0, Lixn;->b:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4, p2}, Lixm;->c(II)I

    move-result v3

    aput v3, v1, v0

    .line 209
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 212
    :cond_2
    new-instance v3, Lixn;

    iget-object v4, p0, Lixn;->a:Lixm;

    invoke-direct {v3, v4, v1}, Lixn;-><init>(Lixm;[I)V

    goto :goto_0
.end method

.method final a()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 94
    iget-object v1, p0, Lixn;->b:[I

    aget v1, v1, v0

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final a(Lixn;)[Lixn;
    .locals 10
    .param p1, "other"    # Lixn;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 216
    iget-object v8, p0, Lixn;->a:Lixm;

    iget-object v9, p1, Lixn;->a:Lixm;

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 217
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "GenericGFPolys do not have same GenericGF field"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 220
    :cond_0
    invoke-virtual {p1}, Lixn;->a()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 221
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "Divide by 0"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 224
    :cond_1
    iget-object v8, p0, Lixn;->a:Lixm;

    invoke-virtual {v8}, Lixm;->b()Lixn;

    move-result-object v4

    .line 225
    .local v4, "quotient":Lixn;
    move-object v5, p0

    .line 1087
    .local v5, "remainder":Lixn;
    iget-object v8, p1, Lixn;->b:[I

    array-length v8, v8

    add-int/lit8 v8, v8, -0x1

    .line 227
    invoke-direct {p1, v8}, Lixn;->a(I)I

    move-result v1

    .line 228
    .local v1, "denominatorLeadingTerm":I
    iget-object v8, p0, Lixn;->a:Lixm;

    .line 229
    invoke-virtual {v8, v1}, Lixm;->b(I)I

    move-result v2

    .line 2087
    .local v2, "inverseDenominatorLeadingTerm":I
    :goto_0
    iget-object v8, v5, Lixn;->b:[I

    array-length v8, v8

    add-int/lit8 v8, v8, -0x1

    .line 3087
    iget-object v9, p1, Lixn;->b:[I

    array-length v9, v9

    add-int/lit8 v9, v9, -0x1

    .line 231
    if-lt v8, v9, :cond_2

    .line 232
    invoke-virtual {v5}, Lixn;->a()Z

    move-result v8

    if-nez v8, :cond_2

    .line 4087
    iget-object v8, v5, Lixn;->b:[I

    array-length v8, v8

    add-int/lit8 v8, v8, -0x1

    .line 5087
    iget-object v9, p1, Lixn;->b:[I

    array-length v9, v9

    add-int/lit8 v9, v9, -0x1

    .line 233
    sub-int v0, v8, v9

    .line 234
    .local v0, "degreeDifference":I
    iget-object v8, p0, Lixn;->a:Lixm;

    .line 6087
    iget-object v9, v5, Lixn;->b:[I

    array-length v9, v9

    add-int/lit8 v9, v9, -0x1

    .line 235
    invoke-direct {v5, v9}, Lixn;->a(I)I

    move-result v9

    .line 234
    invoke-virtual {v8, v9, v2}, Lixm;->c(II)I

    move-result v6

    .line 237
    .local v6, "scale":I
    invoke-virtual {p1, v0, v6}, Lixn;->a(II)Lixn;

    move-result-object v7

    .line 239
    .local v7, "term":Lixn;
    iget-object v8, p0, Lixn;->a:Lixm;

    invoke-virtual {v8, v0, v6}, Lixm;->a(II)Lixn;

    move-result-object v3

    .line 241
    .local v3, "iterationQuotient":Lixn;
    invoke-direct {v4, v3}, Lixn;->b(Lixn;)Lixn;

    move-result-object v4

    .line 242
    invoke-direct {v5, v7}, Lixn;->b(Lixn;)Lixn;

    move-result-object v5

    .line 243
    goto :goto_0

    .line 245
    .end local v0    # "degreeDifference":I
    .end local v3    # "iterationQuotient":Lixn;
    .end local v6    # "scale":I
    .end local v7    # "term":Lixn;
    :cond_2
    const/4 v8, 0x2

    new-array v8, v8, [Lixn;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    const/4 v9, 0x1

    aput-object v5, v8, v9

    return-object v8
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v5, 0x1

    .line 251
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    .line 7087
    .local v3, "result":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    iget-object v4, p0, Lixn;->b:[I

    array-length v4, v4

    add-int/lit8 v2, v4, -0x1

    .line 252
    .local v2, "degree":I
    :goto_0
    if-ltz v2, :cond_9

    .line 253
    invoke-direct {p0, v2}, Lixn;->a(I)I

    move-result v1

    .line 254
    .local v1, "coefficient":I
    if-eqz v1, :cond_5

    .line 255
    if-gez v1, :cond_2

    .line 256
    const-string/jumbo v4, " - "

    invoke-virtual {v3, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 257
    neg-int v1, v1

    .line 263
    :cond_0
    :goto_1
    if-eqz v2, :cond_1

    if-eq v1, v5, :cond_4

    .line 264
    :cond_1
    iget-object v4, p0, Lixn;->a:Lixm;

    .line 7180
    invoke-virtual {v4}, Lixm;->a()V

    .line 7182
    if-nez v1, :cond_3

    .line 7183
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 259
    :cond_2
    invoke-virtual {v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 260
    const-string/jumbo v4, " + "

    invoke-virtual {v3, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_1

    .line 7185
    :cond_3
    iget-object v4, v4, Lixm;->i:[I

    aget v0, v4, v1

    .line 265
    .local v0, "alphaPower":I
    if-nez v0, :cond_6

    .line 266
    const/16 v4, 0x31

    invoke-virtual {v3, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(C)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 274
    .end local v0    # "alphaPower":I
    :cond_4
    :goto_2
    if-eqz v2, :cond_5

    .line 275
    if-ne v2, v5, :cond_8

    .line 276
    const/16 v4, 0x78

    invoke-virtual {v3, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(C)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 252
    :cond_5
    :goto_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 267
    .restart local v0    # "alphaPower":I
    :cond_6
    if-ne v0, v5, :cond_7

    .line 268
    const/16 v4, 0x61

    invoke-virtual {v3, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(C)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_2

    .line 270
    :cond_7
    const-string/jumbo v4, "a^"

    invoke-virtual {v3, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 271
    invoke-virtual {v3, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_2

    .line 278
    .end local v0    # "alphaPower":I
    :cond_8
    const-string/jumbo v4, "x^"

    invoke-virtual {v3, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 279
    invoke-virtual {v3, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_3

    .line 284
    .end local v1    # "coefficient":I
    :cond_9
    invoke-virtual {v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
