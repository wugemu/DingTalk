.class public Lcom/amap/api/mapcore/util/eg;
.super Ljava/lang/Object;
.source "IntArray.java"


# instance fields
.field public a:[I

.field public b:I

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 15
    const/4 v0, 0x1

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1}, Lcom/amap/api/mapcore/util/eg;-><init>(ZI)V

    .line 16
    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/eg;->c:Z

    .line 32
    new-array v0, p2, [I

    iput-object v0, p0, Lcom/amap/api/mapcore/util/eg;->a:[I

    .line 33
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 258
    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/mapcore/util/eg;->b:I

    .line 259
    return-void
.end method

.method public a(I)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 69
    iget-object v0, p0, Lcom/amap/api/mapcore/util/eg;->a:[I

    .line 70
    iget v1, p0, Lcom/amap/api/mapcore/util/eg;->b:I

    array-length v2, v0

    if-ne v1, v2, :cond_0

    const/16 v0, 0x8

    iget v1, p0, Lcom/amap/api/mapcore/util/eg;->b:I

    int-to-float v1, v1

    const/high16 v2, 0x3fe00000    # 1.75f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/eg;->d(I)[I

    move-result-object v0

    .line 71
    :cond_0
    iget v1, p0, Lcom/amap/api/mapcore/util/eg;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/amap/api/mapcore/util/eg;->b:I

    aput p1, v0, v1

    .line 72
    return-void
.end method

.method public b(I)I
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 181
    iget v0, p0, Lcom/amap/api/mapcore/util/eg;->b:I

    if-lt p1, v0, :cond_0

    .line 182
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "index can\'t be >= size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/amap/api/mapcore/util/eg;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/eg;->a:[I

    .line 184
    aget v1, v0, p1

    .line 185
    iget v2, p0, Lcom/amap/api/mapcore/util/eg;->b:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/amap/api/mapcore/util/eg;->b:I

    .line 186
    iget-boolean v2, p0, Lcom/amap/api/mapcore/util/eg;->c:Z

    if-eqz v2, :cond_1

    .line 187
    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lcom/amap/api/mapcore/util/eg;->b:I

    sub-int/2addr v3, p1

    invoke-static {v0, v2, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 190
    :goto_0
    return v1

    .line 189
    :cond_1
    iget v2, p0, Lcom/amap/api/mapcore/util/eg;->b:I

    aget v2, v0, v2

    aput v2, v0, p1

    goto :goto_0
.end method

.method public c(I)[I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 279
    iget v0, p0, Lcom/amap/api/mapcore/util/eg;->b:I

    add-int/2addr v0, p1

    .line 280
    iget-object v1, p0, Lcom/amap/api/mapcore/util/eg;->a:[I

    array-length v1, v1

    if-le v0, v1, :cond_0

    const/16 v1, 0x8

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/eg;->d(I)[I

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/eg;->a:[I

    return-object v0
.end method

.method protected d(I)[I
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 285
    new-array v0, p1, [I

    .line 286
    iget-object v1, p0, Lcom/amap/api/mapcore/util/eg;->a:[I

    .line 287
    iget v2, p0, Lcom/amap/api/mapcore/util/eg;->b:I

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 288
    iput-object v0, p0, Lcom/amap/api/mapcore/util/eg;->a:[I

    .line 289
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 341
    if-ne p1, p0, :cond_1

    .line 348
    :cond_0
    :goto_0
    return v0

    .line 342
    :cond_1
    instance-of v2, p1, Lcom/amap/api/mapcore/util/eg;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 343
    :cond_2
    check-cast p1, Lcom/amap/api/mapcore/util/eg;

    .line 344
    iget v3, p0, Lcom/amap/api/mapcore/util/eg;->b:I

    .line 345
    iget v2, p1, Lcom/amap/api/mapcore/util/eg;->b:I

    if-eq v3, v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    move v2, v1

    .line 346
    :goto_1
    if-ge v2, v3, :cond_0

    .line 347
    iget-object v4, p0, Lcom/amap/api/mapcore/util/eg;->a:[I

    aget v4, v4, v2

    iget-object v5, p1, Lcom/amap/api/mapcore/util/eg;->a:[I

    aget v5, v5, v2

    if-eq v4, v5, :cond_4

    move v0, v1

    goto :goto_0

    .line 346
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public hashCode()I
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 379
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/eg;->c:Z

    if-nez v0, :cond_1

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 384
    :cond_0
    return v0

    .line 380
    :cond_1
    iget-object v3, p0, Lcom/amap/api/mapcore/util/eg;->a:[I

    .line 381
    const/4 v1, 0x1

    .line 382
    const/4 v0, 0x0

    iget v4, p0, Lcom/amap/api/mapcore/util/eg;->b:I

    move v5, v0

    move v0, v1

    move v1, v5

    :goto_0
    if-ge v1, v4, :cond_0

    .line 383
    mul-int/lit8 v0, v0, 0x1f

    aget v2, v3, v1

    add-int/2addr v2, v0

    .line 382
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 352
    iget v0, p0, Lcom/amap/api/mapcore/util/eg;->b:I

    if-nez v0, :cond_0

    const-string/jumbo v0, "[]"

    .line 362
    :goto_0
    return-object v0

    .line 353
    :cond_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/eg;->a:[I

    .line 354
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 355
    const/16 v0, 0x5b

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 356
    const/4 v0, 0x0

    aget v0, v1, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 357
    const/4 v0, 0x1

    :goto_1
    iget v3, p0, Lcom/amap/api/mapcore/util/eg;->b:I

    if-ge v0, v3, :cond_1

    .line 358
    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    aget v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 357
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 361
    :cond_1
    const/16 v0, 0x5d

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 362
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
