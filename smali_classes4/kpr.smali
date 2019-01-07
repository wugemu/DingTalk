.class public abstract Lkpr;
.super Ljava/lang/Object;
.source "BaseNCodec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkpr$a;
    }
.end annotation


# instance fields
.field private final a:I

.field protected final b:B

.field protected final c:I

.field private final d:I

.field private final e:I


# direct methods
.method protected constructor <init>(IIII)V
    .locals 3
    .param p1, "unencodedBlockSize"    # I
    .param p2, "encodedBlockSize"    # I
    .param p3, "lineLength"    # I
    .param p4, "chunkSeparatorLength"    # I

    .prologue
    const/4 v1, 0x0

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    const/16 v2, 0x3d

    iput-byte v2, p0, Lkpr;->b:B

    .line 186
    const/4 v2, 0x3

    iput v2, p0, Lkpr;->a:I

    .line 187
    const/4 v2, 0x4

    iput v2, p0, Lkpr;->d:I

    .line 188
    if-lez p3, :cond_1

    if-lez p4, :cond_1

    const/4 v0, 0x1

    .line 189
    .local v0, "useChunking":Z
    :goto_0
    if-eqz v0, :cond_0

    div-int/lit8 v1, p3, 0x4

    mul-int/lit8 v1, v1, 0x4

    :cond_0
    iput v1, p0, Lkpr;->c:I

    .line 190
    iput p4, p0, Lkpr;->e:I

    .line 191
    return-void

    .end local v0    # "useChunking":Z
    :cond_1
    move v0, v1

    .line 188
    goto :goto_0
.end method


# virtual methods
.method abstract a([BIILkpr$a;)V
.end method

.method protected abstract a(B)Z
.end method

.method protected final a(ILkpr$a;)[B
    .locals 4
    .param p1, "size"    # I
    .param p2, "context"    # Lkpr$a;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 246
    iget-object v0, p2, Lkpr$a;->b:[B

    if-eqz v0, :cond_0

    iget-object v0, p2, Lkpr$a;->b:[B

    array-length v0, v0

    iget v1, p2, Lkpr$a;->c:I

    add-int/2addr v1, p1

    if-ge v0, v1, :cond_2

    .line 1227
    :cond_0
    iget-object v0, p2, Lkpr$a;->b:[B

    if-nez v0, :cond_1

    .line 1228
    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p2, Lkpr$a;->b:[B

    .line 1229
    iput v3, p2, Lkpr$a;->c:I

    .line 1230
    iput v3, p2, Lkpr$a;->d:I

    .line 1236
    :goto_0
    iget-object v0, p2, Lkpr$a;->b:[B

    .line 249
    :goto_1
    return-object v0

    .line 1232
    :cond_1
    iget-object v0, p2, Lkpr$a;->b:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 1233
    iget-object v1, p2, Lkpr$a;->b:[B

    iget-object v2, p2, Lkpr$a;->b:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1234
    iput-object v0, p2, Lkpr$a;->b:[B

    goto :goto_0

    .line 249
    :cond_2
    iget-object v0, p2, Lkpr$a;->b:[B

    goto :goto_1
.end method

.method abstract b([BIILkpr$a;)V
.end method

.method final c([BIILkpr$a;)I
    .locals 4
    .param p1, "b"    # [B
    .param p2, "bPos"    # I
    .param p3, "bAvail"    # I
    .param p4, "context"    # Lkpr$a;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 269
    iget-object v1, p4, Lkpr$a;->b:[B

    if-eqz v1, :cond_2

    .line 2210
    iget-object v1, p4, Lkpr$a;->b:[B

    if-eqz v1, :cond_1

    iget v1, p4, Lkpr$a;->c:I

    iget v3, p4, Lkpr$a;->d:I

    sub-int/2addr v1, v3

    .line 270
    :goto_0
    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 271
    .local v0, "len":I
    iget-object v1, p4, Lkpr$a;->b:[B

    iget v3, p4, Lkpr$a;->d:I

    invoke-static {v1, v3, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 272
    iget v1, p4, Lkpr$a;->d:I

    add-int/2addr v1, v0

    iput v1, p4, Lkpr$a;->d:I

    .line 273
    iget v1, p4, Lkpr$a;->d:I

    iget v2, p4, Lkpr$a;->c:I

    if-lt v1, v2, :cond_0

    .line 274
    const/4 v1, 0x0

    iput-object v1, p4, Lkpr$a;->b:[B

    .line 278
    .end local v0    # "len":I
    :cond_0
    :goto_1
    return v0

    :cond_1
    move v1, v2

    .line 2210
    goto :goto_0

    .line 278
    :cond_2
    iget-boolean v1, p4, Lkpr$a;->e:Z

    if-eqz v1, :cond_3

    const/4 v0, -0x1

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method protected final c([B)Z
    .locals 6
    .param p1, "arrayOctet"    # [B

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 473
    if-nez p1, :cond_1

    .line 481
    :cond_0
    :goto_0
    return v4

    .line 476
    :cond_1
    move-object v0, p1

    .local v0, "arr$":[B
    array-length v3, p1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-byte v1, v0, v2

    .line 477
    .local v1, "element":B
    const/16 v5, 0x3d

    if-eq v5, v1, :cond_2

    invoke-virtual {p0, v1}, Lkpr;->a(B)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 478
    :cond_2
    const/4 v4, 0x1

    goto :goto_0

    .line 476
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public final d([B)J
    .locals 6
    .param p1, "pArray"    # [B

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 495
    array-length v2, p1

    iget v3, p0, Lkpr;->a:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lkpr;->a:I

    div-int/2addr v2, v3

    int-to-long v2, v2

    iget v4, p0, Lkpr;->d:I

    int-to-long v4, v4

    mul-long v0, v2, v4

    .line 496
    .local v0, "len":J
    iget v2, p0, Lkpr;->c:I

    if-lez v2, :cond_0

    .line 498
    iget v2, p0, Lkpr;->c:I

    int-to-long v2, v2

    add-long/2addr v2, v0

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    iget v4, p0, Lkpr;->c:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    iget v4, p0, Lkpr;->e:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 500
    :cond_0
    return-wide v0
.end method
