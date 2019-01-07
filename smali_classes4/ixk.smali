.class public final Lixk;
.super Ljava/lang/Object;
.source "BitArray.java"


# instance fields
.field public a:[I

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lixk;->b:I

    .line 37
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lixk;->a:[I

    .line 38
    return-void
.end method

.method private b(I)V
    .locals 4
    .param p1, "size"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 54
    iget-object v1, p0, Lixk;->a:[I

    array-length v1, v1

    shl-int/lit8 v1, v1, 0x5

    if-le p1, v1, :cond_0

    .line 1339
    add-int/lit8 v1, p1, 0x1f

    shr-int/lit8 v1, v1, 0x5

    new-array v0, v1, [I

    .line 56
    .local v0, "newBits":[I
    iget-object v1, p0, Lixk;->a:[I

    iget-object v2, p0, Lixk;->a:[I

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57
    iput-object v0, p0, Lixk;->a:[I

    .line 59
    .end local v0    # "newBits":[I
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lixk;->b:I

    add-int/lit8 v0, v0, 0x7

    shr-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public final a(II)V
    .locals 3
    .param p1, "value"    # I
    .param p2, "numBits"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 261
    if-ltz p2, :cond_0

    const/16 v1, 0x20

    if-le p2, v1, :cond_1

    .line 262
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Num bits must be between 0 and 32"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 265
    :cond_1
    iget v1, p0, Lixk;->b:I

    add-int/2addr v1, p2

    invoke-direct {p0, v1}, Lixk;->b(I)V

    .line 266
    move v0, p2

    .local v0, "numBitsLeft":I
    :goto_0
    if-lez v0, :cond_3

    .line 267
    add-int/lit8 v1, v0, -0x1

    shr-int v1, p1, v1

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {p0, v1}, Lixk;->a(Z)V

    .line 266
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 267
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 269
    :cond_3
    return-void
.end method

.method public final a(I[BII)V
    .locals 5
    .param p1, "bitOffset"    # I
    .param p2, "array"    # [B
    .param p3, "offset"    # I
    .param p4, "numBytes"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 304
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p4, :cond_2

    .line 305
    const/4 v2, 0x0

    .line 306
    .local v2, "theByte":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    const/16 v3, 0x8

    if-ge v1, v3, :cond_1

    .line 307
    invoke-virtual {p0, p1}, Lixk;->a(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 308
    const/4 v3, 0x1

    rsub-int/lit8 v4, v1, 0x7

    shl-int/2addr v3, v4

    or-int/2addr v2, v3

    .line 310
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 306
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 312
    :cond_1
    add-int/lit8 v3, v0, 0x0

    int-to-byte v4, v2

    aput-byte v4, p2, v3

    .line 304
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 314
    .end local v1    # "j":I
    .end local v2    # "theByte":I
    :cond_2
    return-void
.end method

.method public final a(Lixk;)V
    .locals 3
    .param p1, "other"    # Lixk;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 272
    iget v1, p1, Lixk;->b:I

    .line 273
    .local v1, "otherSize":I
    iget v2, p0, Lixk;->b:I

    add-int/2addr v2, v1

    invoke-direct {p0, v2}, Lixk;->b(I)V

    .line 274
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 275
    invoke-virtual {p1, v0}, Lixk;->a(I)Z

    move-result v2

    invoke-virtual {p0, v2}, Lixk;->a(Z)V

    .line 274
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 277
    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 5
    .param p1, "bit"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 248
    iget v0, p0, Lixk;->b:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lixk;->b(I)V

    .line 249
    if-eqz p1, :cond_0

    .line 250
    iget-object v0, p0, Lixk;->a:[I

    iget v1, p0, Lixk;->b:I

    shr-int/lit8 v1, v1, 0x5

    aget v2, v0, v1

    const/4 v3, 0x1

    iget v4, p0, Lixk;->b:I

    and-int/lit8 v4, v4, 0x1f

    shl-int/2addr v3, v4

    or-int/2addr v2, v3

    aput v2, v0, v1

    .line 252
    :cond_0
    iget v0, p0, Lixk;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lixk;->b:I

    .line 253
    return-void
.end method

.method public final a(I)Z
    .locals 3
    .param p1, "i"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 67
    iget-object v1, p0, Lixk;->a:[I

    shr-int/lit8 v2, p1, 0x5

    aget v1, v1, v2

    and-int/lit8 v2, p1, 0x1f

    shl-int v2, v0, v2

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 345
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    .line 346
    .local v1, "result":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lixk;->b:I

    if-ge v0, v2, :cond_2

    .line 347
    and-int/lit8 v2, v0, 0x7

    if-nez v2, :cond_0

    .line 348
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(C)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 350
    :cond_0
    invoke-virtual {p0, v0}, Lixk;->a(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x58

    :goto_1
    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(C)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 346
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 350
    :cond_1
    const/16 v2, 0x2e

    goto :goto_1

    .line 352
    :cond_2
    invoke-virtual {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
