.class Lcom/taobao/weex/amap/util/GifDecoder$ImageBlock;
.super Ljava/lang/Object;
.source "GifDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/amap/util/GifDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImageBlock"
.end annotation


# instance fields
.field public bytes:[B

.field public size:I

.field final synthetic this$0:Lcom/taobao/weex/amap/util/GifDecoder;


# direct methods
.method public constructor <init>(Lcom/taobao/weex/amap/util/GifDecoder;[BI)V
    .locals 10
    .param p2, "bytes"    # [B
    .param p3, "offset"    # I

    .prologue
    const/4 v3, 0x0

    .line 365
    iput-object p1, p0, Lcom/taobao/weex/amap/util/GifDecoder$ImageBlock;->this$0:Lcom/taobao/weex/amap/util/GifDecoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 367
    add-int/lit8 v4, p3, 0x9

    aget-byte v4, p2, v4

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    .line 368
    .local v1, "localColorTableFlag":Z
    :goto_0
    add-int/lit8 v4, p3, 0x9

    aget-byte v4, p2, v4

    and-int/lit8 v2, v4, 0x7

    .line 371
    .local v2, "localColorTableSize":I
    const/16 v4, 0xa

    iput v4, p0, Lcom/taobao/weex/amap/util/GifDecoder$ImageBlock;->size:I

    .line 372
    if-eqz v1, :cond_0

    .line 373
    iget v4, p0, Lcom/taobao/weex/amap/util/GifDecoder$ImageBlock;->size:I

    int-to-double v4, v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    add-int/lit8 v8, v2, 0x1

    int-to-double v8, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, p0, Lcom/taobao/weex/amap/util/GifDecoder$ImageBlock;->size:I

    .line 375
    :cond_0
    iget v4, p0, Lcom/taobao/weex/amap/util/GifDecoder$ImageBlock;->size:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/taobao/weex/amap/util/GifDecoder$ImageBlock;->size:I

    .line 378
    iget v4, p0, Lcom/taobao/weex/amap/util/GifDecoder$ImageBlock;->size:I

    add-int/2addr v4, p3

    aget-byte v4, p2, v4

    and-int/lit16 v0, v4, 0xff

    .line 379
    .local v0, "blockSize":I
    iget v4, p0, Lcom/taobao/weex/amap/util/GifDecoder$ImageBlock;->size:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/taobao/weex/amap/util/GifDecoder$ImageBlock;->size:I

    .line 380
    :goto_1
    if-eqz v0, :cond_2

    .line 381
    iget v4, p0, Lcom/taobao/weex/amap/util/GifDecoder$ImageBlock;->size:I

    add-int/2addr v4, v0

    iput v4, p0, Lcom/taobao/weex/amap/util/GifDecoder$ImageBlock;->size:I

    .line 382
    iget v4, p0, Lcom/taobao/weex/amap/util/GifDecoder$ImageBlock;->size:I

    add-int/2addr v4, p3

    aget-byte v4, p2, v4

    and-int/lit16 v0, v4, 0xff

    .line 383
    iget v4, p0, Lcom/taobao/weex/amap/util/GifDecoder$ImageBlock;->size:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/taobao/weex/amap/util/GifDecoder$ImageBlock;->size:I

    goto :goto_1

    .end local v0    # "blockSize":I
    .end local v1    # "localColorTableFlag":Z
    .end local v2    # "localColorTableSize":I
    :cond_1
    move v1, v3

    .line 367
    goto :goto_0

    .line 386
    .restart local v0    # "blockSize":I
    .restart local v1    # "localColorTableFlag":Z
    .restart local v2    # "localColorTableSize":I
    :cond_2
    iget v4, p0, Lcom/taobao/weex/amap/util/GifDecoder$ImageBlock;->size:I

    new-array v4, v4, [B

    iput-object v4, p0, Lcom/taobao/weex/amap/util/GifDecoder$ImageBlock;->bytes:[B

    .line 387
    iget-object v4, p0, Lcom/taobao/weex/amap/util/GifDecoder$ImageBlock;->bytes:[B

    iget v5, p0, Lcom/taobao/weex/amap/util/GifDecoder$ImageBlock;->size:I

    invoke-static {p2, p3, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 388
    return-void
.end method


# virtual methods
.method public ImageLeftPosition()I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 395
    iget-object v0, p0, Lcom/taobao/weex/amap/util/GifDecoder$ImageBlock;->bytes:[B

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iget-object v1, p0, Lcom/taobao/weex/amap/util/GifDecoder$ImageBlock;->bytes:[B

    const/4 v2, 0x2

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    return v0
.end method

.method public getImageHeight()I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 407
    iget-object v0, p0, Lcom/taobao/weex/amap/util/GifDecoder$ImageBlock;->bytes:[B

    const/4 v1, 0x7

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iget-object v1, p0, Lcom/taobao/weex/amap/util/GifDecoder$ImageBlock;->bytes:[B

    const/16 v2, 0x8

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    return v0
.end method

.method public getImageSeparator()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 391
    iget-object v0, p0, Lcom/taobao/weex/amap/util/GifDecoder$ImageBlock;->bytes:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getImageTopPosition()I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 399
    iget-object v0, p0, Lcom/taobao/weex/amap/util/GifDecoder$ImageBlock;->bytes:[B

    const/4 v1, 0x3

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iget-object v1, p0, Lcom/taobao/weex/amap/util/GifDecoder$ImageBlock;->bytes:[B

    const/4 v2, 0x4

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    return v0
.end method

.method public getImageWidth()I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 403
    iget-object v0, p0, Lcom/taobao/weex/amap/util/GifDecoder$ImageBlock;->bytes:[B

    const/4 v1, 0x5

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iget-object v1, p0, Lcom/taobao/weex/amap/util/GifDecoder$ImageBlock;->bytes:[B

    const/4 v2, 0x6

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    return v0
.end method

.method public getInterlaceFlag()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 415
    iget-object v0, p0, Lcom/taobao/weex/amap/util/GifDecoder$ImageBlock;->bytes:[B

    const/16 v1, 0x9

    aget-byte v0, v0, v1

    and-int/lit8 v0, v0, 0x40

    shr-int/lit8 v0, v0, 0x6

    return v0
.end method

.method public getLZWMinimumCodeSize()I
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 442
    invoke-virtual {p0}, Lcom/taobao/weex/amap/util/GifDecoder$ImageBlock;->getLocalColorTableFlag()I

    move-result v0

    if-nez v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/taobao/weex/amap/util/GifDecoder$ImageBlock;->bytes:[B

    const/16 v1, 0xa

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 445
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/amap/util/GifDecoder$ImageBlock;->bytes:[B

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-virtual {p0}, Lcom/taobao/weex/amap/util/GifDecoder$ImageBlock;->getSizeOfLocalColorTable()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    int-to-double v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-int v1, v2

    mul-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, 0xa

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method public getLocalColorTable()[I
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 431
    invoke-virtual {p0}, Lcom/taobao/weex/amap/util/GifDecoder$ImageBlock;->getLocalColorTableFlag()I

    move-result v2

    if-nez v2, :cond_1

    .line 432
    const/4 v2, 0x0

    new-array v0, v2, [I

    .line 438
    :cond_0
    return-object v0

    .line 434
    :cond_1
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-virtual {p0}, Lcom/taobao/weex/amap/util/GifDecoder$ImageBlock;->getSizeOfLocalColorTable()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    int-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-int v2, v2

    new-array v0, v2, [I

    .line 435
    .local v0, "colors":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 436
    iget-object v2, p0, Lcom/taobao/weex/amap/util/GifDecoder$ImageBlock;->bytes:[B

    mul-int/lit8 v3, v1, 0x3

    add-int/lit8 v3, v3, 0xa

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    iget-object v3, p0, Lcom/taobao/weex/amap/util/GifDecoder$ImageBlock;->bytes:[B

    mul-int/lit8 v4, v1, 0x3

    add-int/lit8 v4, v4, 0xa

    add-int/lit8 v4, v4, 0x1

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/taobao/weex/amap/util/GifDecoder$ImageBlock;->bytes:[B

    mul-int/lit8 v4, v1, 0x3

    add-int/lit8 v4, v4, 0xa

    add-int/lit8 v4, v4, 0x2

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    aput v2, v0, v1

    .line 435
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getLocalColorTableFlag()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 411
    iget-object v0, p0, Lcom/taobao/weex/amap/util/GifDecoder$ImageBlock;->bytes:[B

    const/16 v1, 0x9

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0x80

    shr-int/lit8 v0, v0, 0x7

    return v0
.end method

.method public getReserved()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 423
    iget-object v0, p0, Lcom/taobao/weex/amap/util/GifDecoder$ImageBlock;->bytes:[B

    const/16 v1, 0x9

    aget-byte v0, v0, v1

    and-int/lit8 v0, v0, 0x18

    shr-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getSizeOfLocalColorTable()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 427
    iget-object v0, p0, Lcom/taobao/weex/amap/util/GifDecoder$ImageBlock;->bytes:[B

    const/16 v1, 0x9

    aget-byte v0, v0, v1

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public getSortFlag()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 419
    iget-object v0, p0, Lcom/taobao/weex/amap/util/GifDecoder$ImageBlock;->bytes:[B

    const/16 v1, 0x9

    aget-byte v0, v0, v1

    and-int/lit8 v0, v0, 0x20

    shr-int/lit8 v0, v0, 0x5

    return v0
.end method
