.class public final Lixl;
.super Ljava/lang/Object;
.source "BitMatrix.java"


# instance fields
.field public final a:I

.field public final b:I

.field private final c:I

.field private final d:[I


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    .line 58
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Both dimensions must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_1
    iput p1, p0, Lixl;->a:I

    .line 62
    iput p2, p0, Lixl;->b:I

    .line 63
    add-int/lit8 v0, p1, 0x1f

    shr-int/lit8 v0, v0, 0x5

    iput v0, p0, Lixl;->c:I

    .line 64
    iget v0, p0, Lixl;->c:I

    mul-int/2addr v0, p2

    new-array v0, v0, [I

    iput-object v0, p0, Lixl;->d:[I

    .line 65
    return-void
.end method


# virtual methods
.method public final a(IIII)V
    .locals 10
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 138
    if-ltz p2, :cond_0

    if-gez p1, :cond_1

    .line 139
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "Left and top must be nonnegative"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 142
    :cond_1
    if-lez p4, :cond_2

    if-gtz p3, :cond_3

    .line 143
    :cond_2
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "Height and width must be at least 1"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 146
    :cond_3
    add-int v2, p1, p3

    .line 147
    .local v2, "right":I
    add-int v0, p2, p4

    .line 148
    .local v0, "bottom":I
    iget v5, p0, Lixl;->b:I

    if-gt v0, v5, :cond_4

    iget v5, p0, Lixl;->a:I

    if-le v2, v5, :cond_5

    .line 149
    :cond_4
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "The region must fit inside the matrix"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 152
    :cond_5
    move v4, p2

    .local v4, "y":I
    :goto_0
    if-ge v4, v0, :cond_7

    .line 153
    iget v5, p0, Lixl;->c:I

    mul-int v1, v4, v5

    .line 154
    .local v1, "offset":I
    move v3, p1

    .local v3, "x":I
    :goto_1
    if-ge v3, v2, :cond_6

    .line 155
    iget-object v5, p0, Lixl;->d:[I

    shr-int/lit8 v6, v3, 0x5

    add-int/2addr v6, v1

    aget v7, v5, v6

    const/4 v8, 0x1

    and-int/lit8 v9, v3, 0x1f

    shl-int/2addr v8, v9

    or-int/2addr v7, v8

    aput v7, v5, v6

    .line 154
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 152
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 158
    .end local v1    # "offset":I
    .end local v3    # "x":I
    :cond_7
    return-void
.end method

.method public final a(II)Z
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 79
    iget v1, p0, Lixl;->c:I

    mul-int/2addr v1, p2

    shr-int/lit8 v2, p1, 0x5

    add-int v0, v1, v2

    .line 80
    .local v0, "offset":I
    iget-object v1, p0, Lixl;->d:[I

    aget v1, v1, v0

    and-int/lit8 v2, p1, 0x1f

    ushr-int/2addr v1, v2

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 310
    instance-of v3, p1, Lixl;

    if-nez v3, :cond_1

    .line 323
    :cond_0
    :goto_0
    return v2

    :cond_1
    move-object v1, p1

    .line 313
    check-cast v1, Lixl;

    .line 314
    .local v1, "other":Lixl;
    iget v3, p0, Lixl;->a:I

    iget v4, v1, Lixl;->a:I

    if-ne v3, v4, :cond_0

    iget v3, p0, Lixl;->b:I

    iget v4, v1, Lixl;->b:I

    if-ne v3, v4, :cond_0

    iget v3, p0, Lixl;->c:I

    iget v4, v1, Lixl;->c:I

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lixl;->d:[I

    array-length v3, v3

    iget-object v4, v1, Lixl;->d:[I

    array-length v4, v4

    if-ne v3, v4, :cond_0

    .line 318
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lixl;->d:[I

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 319
    iget-object v3, p0, Lixl;->d:[I

    aget v3, v3, v0

    iget-object v4, v1, Lixl;->d:[I

    aget v4, v4, v0

    if-ne v3, v4, :cond_0

    .line 318
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 323
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 328
    iget v1, p0, Lixl;->a:I

    .line 329
    .local v1, "hash":I
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lixl;->a:I

    add-int v1, v2, v3

    .line 330
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lixl;->b:I

    add-int v1, v2, v3

    .line 331
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lixl;->c:I

    add-int v1, v2, v3

    .line 332
    iget-object v3, p0, Lixl;->d:[I

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget v0, v3, v2

    .line 333
    .local v0, "bit":I
    mul-int/lit8 v5, v1, 0x1f

    add-int v1, v5, v0

    .line 332
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 335
    .end local v0    # "bit":I
    :cond_0
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 341
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 342
    .local v0, "result":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const/4 v2, 0x0

    .local v2, "y":I
    :goto_0
    iget v3, p0, Lixl;->b:I

    if-ge v2, v3, :cond_2

    .line 343
    const/4 v1, 0x0

    .local v1, "x":I
    :goto_1
    iget v3, p0, Lixl;->a:I

    if-ge v1, v3, :cond_1

    .line 344
    invoke-virtual {p0, v1, v2}, Lixl;->a(II)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "X "

    :goto_2
    invoke-virtual {v0, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 343
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 344
    :cond_0
    const-string/jumbo v3, "  "

    goto :goto_2

    .line 346
    :cond_1
    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(C)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 342
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 348
    .end local v1    # "x":I
    :cond_2
    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
