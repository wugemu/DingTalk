.class public Lcom/amap/api/mapcore/util/em;
.super Ljava/lang/Object;
.source "ShortArray.java"


# instance fields
.field public a:[S

.field public b:I

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 21
    const/4 v0, 0x1

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1}, Lcom/amap/api/mapcore/util/em;-><init>(ZI)V

    .line 22
    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/em;->c:Z

    .line 38
    new-array v0, p2, [S

    iput-object v0, p0, Lcom/amap/api/mapcore/util/em;->a:[S

    .line 39
    return-void
.end method


# virtual methods
.method public a(I)S
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 112
    iget v0, p0, Lcom/amap/api/mapcore/util/em;->b:I

    if-lt p1, v0, :cond_0

    .line 113
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "index can\'t be >= size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/amap/api/mapcore/util/em;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/em;->a:[S

    aget-short v0, v0, p1

    return v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 273
    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/mapcore/util/em;->b:I

    .line 274
    return-void
.end method

.method public a(S)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 84
    iget-object v0, p0, Lcom/amap/api/mapcore/util/em;->a:[S

    .line 85
    iget v1, p0, Lcom/amap/api/mapcore/util/em;->b:I

    array-length v2, v0

    if-ne v1, v2, :cond_0

    const/16 v0, 0x8

    iget v1, p0, Lcom/amap/api/mapcore/util/em;->b:I

    int-to-float v1, v1

    const/high16 v2, 0x3fe00000    # 1.75f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/em;->d(I)[S

    move-result-object v0

    .line 86
    :cond_0
    iget v1, p0, Lcom/amap/api/mapcore/util/em;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/amap/api/mapcore/util/em;->b:I

    aput-short p1, v0, v1

    .line 87
    return-void
.end method

.method public b(I)S
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 196
    iget v0, p0, Lcom/amap/api/mapcore/util/em;->b:I

    if-lt p1, v0, :cond_0

    .line 197
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "index can\'t be >= size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/amap/api/mapcore/util/em;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/em;->a:[S

    .line 199
    aget-short v1, v0, p1

    .line 200
    iget v2, p0, Lcom/amap/api/mapcore/util/em;->b:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/amap/api/mapcore/util/em;->b:I

    .line 201
    iget-boolean v2, p0, Lcom/amap/api/mapcore/util/em;->c:Z

    if-eqz v2, :cond_1

    .line 202
    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lcom/amap/api/mapcore/util/em;->b:I

    sub-int/2addr v3, p1

    invoke-static {v0, v2, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 205
    :goto_0
    return v1

    .line 204
    :cond_1
    iget v2, p0, Lcom/amap/api/mapcore/util/em;->b:I

    aget-short v2, v0, v2

    aput-short v2, v0, p1

    goto :goto_0
.end method

.method public c(I)[S
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 294
    iget v0, p0, Lcom/amap/api/mapcore/util/em;->b:I

    add-int/2addr v0, p1

    .line 295
    iget-object v1, p0, Lcom/amap/api/mapcore/util/em;->a:[S

    array-length v1, v1

    if-le v0, v1, :cond_0

    const/16 v1, 0x8

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/em;->d(I)[S

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/em;->a:[S

    return-object v0
.end method

.method protected d(I)[S
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 300
    new-array v0, p1, [S

    .line 301
    iget-object v1, p0, Lcom/amap/api/mapcore/util/em;->a:[S

    .line 302
    iget v2, p0, Lcom/amap/api/mapcore/util/em;->b:I

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 303
    iput-object v0, p0, Lcom/amap/api/mapcore/util/em;->a:[S

    .line 304
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

    .line 356
    if-ne p1, p0, :cond_1

    .line 363
    :cond_0
    :goto_0
    return v0

    .line 357
    :cond_1
    instance-of v2, p1, Lcom/amap/api/mapcore/util/em;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 358
    :cond_2
    check-cast p1, Lcom/amap/api/mapcore/util/em;

    .line 359
    iget v3, p0, Lcom/amap/api/mapcore/util/em;->b:I

    .line 360
    iget v2, p1, Lcom/amap/api/mapcore/util/em;->b:I

    if-eq v3, v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    move v2, v1

    .line 361
    :goto_1
    if-ge v2, v3, :cond_0

    .line 362
    iget-object v4, p0, Lcom/amap/api/mapcore/util/em;->a:[S

    aget-short v4, v4, v2

    iget-object v5, p1, Lcom/amap/api/mapcore/util/em;->a:[S

    aget-short v5, v5, v2

    if-eq v4, v5, :cond_4

    move v0, v1

    goto :goto_0

    .line 361
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
    .line 394
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/em;->c:Z

    if-nez v0, :cond_1

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 399
    :cond_0
    return v0

    .line 395
    :cond_1
    iget-object v3, p0, Lcom/amap/api/mapcore/util/em;->a:[S

    .line 396
    const/4 v1, 0x1

    .line 397
    const/4 v0, 0x0

    iget v4, p0, Lcom/amap/api/mapcore/util/em;->b:I

    move v5, v0

    move v0, v1

    move v1, v5

    :goto_0
    if-ge v1, v4, :cond_0

    .line 398
    mul-int/lit8 v0, v0, 0x1f

    aget-short v2, v3, v1

    add-int/2addr v2, v0

    .line 397
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
    .line 367
    iget v0, p0, Lcom/amap/api/mapcore/util/em;->b:I

    if-nez v0, :cond_0

    const-string/jumbo v0, "[]"

    .line 377
    :goto_0
    return-object v0

    .line 368
    :cond_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/em;->a:[S

    .line 369
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 370
    const/16 v0, 0x5b

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 371
    const/4 v0, 0x0

    aget-short v0, v1, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 372
    const/4 v0, 0x1

    :goto_1
    iget v3, p0, Lcom/amap/api/mapcore/util/em;->b:I

    if-ge v0, v3, :cond_1

    .line 373
    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    aget-short v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 372
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 376
    :cond_1
    const/16 v0, 0x5d

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 377
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
