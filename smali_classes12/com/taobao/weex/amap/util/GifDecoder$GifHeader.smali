.class Lcom/taobao/weex/amap/util/GifDecoder$GifHeader;
.super Ljava/lang/Object;
.source "GifDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/amap/util/GifDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GifHeader"
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
    const/4 v2, 0x0

    .line 295
    iput-object p1, p0, Lcom/taobao/weex/amap/util/GifDecoder$GifHeader;->this$0:Lcom/taobao/weex/amap/util/GifDecoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 296
    add-int/lit8 v3, p3, 0xa

    aget-byte v3, p2, v3

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    .line 297
    .local v0, "globalColorTableFlag":Z
    :goto_0
    add-int/lit8 v3, p3, 0xa

    aget-byte v3, p2, v3

    and-int/lit8 v1, v3, 0x7

    .line 300
    .local v1, "globalColorTableSize":I
    const/16 v3, 0xd

    iput v3, p0, Lcom/taobao/weex/amap/util/GifDecoder$GifHeader;->size:I

    .line 301
    if-eqz v0, :cond_0

    .line 302
    iget v3, p0, Lcom/taobao/weex/amap/util/GifDecoder$GifHeader;->size:I

    int-to-double v4, v3

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    add-int/lit8 v3, v1, 0x1

    int-to-double v8, v3

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-int v3, v4

    iput v3, p0, Lcom/taobao/weex/amap/util/GifDecoder$GifHeader;->size:I

    .line 305
    :cond_0
    iget v3, p0, Lcom/taobao/weex/amap/util/GifDecoder$GifHeader;->size:I

    new-array v3, v3, [B

    iput-object v3, p0, Lcom/taobao/weex/amap/util/GifDecoder$GifHeader;->bytes:[B

    .line 306
    iget-object v3, p0, Lcom/taobao/weex/amap/util/GifDecoder$GifHeader;->bytes:[B

    iget v4, p0, Lcom/taobao/weex/amap/util/GifDecoder$GifHeader;->size:I

    invoke-static {p2, p3, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 307
    return-void

    .end local v0    # "globalColorTableFlag":Z
    .end local v1    # "globalColorTableSize":I
    :cond_1
    move v0, v2

    .line 296
    goto :goto_0
.end method


# virtual methods
.method public getBackgroundColorIndex()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 342
    iget-object v0, p0, Lcom/taobao/weex/amap/util/GifDecoder$GifHeader;->bytes:[B

    const/16 v1, 0xb

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getColorResolution()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 330
    iget-object v0, p0, Lcom/taobao/weex/amap/util/GifDecoder$GifHeader;->bytes:[B

    const/16 v1, 0xa

    aget-byte v0, v0, v1

    and-int/lit8 v0, v0, 0x70

    shr-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public getGlobalColorTable()[I
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 350
    invoke-virtual {p0}, Lcom/taobao/weex/amap/util/GifDecoder$GifHeader;->getGlobalColorTableFlag()I

    move-result v2

    if-nez v2, :cond_1

    .line 351
    const/4 v2, 0x0

    new-array v0, v2, [I

    .line 357
    :cond_0
    return-object v0

    .line 353
    :cond_1
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-virtual {p0}, Lcom/taobao/weex/amap/util/GifDecoder$GifHeader;->getSizeOfGlobalColorTable()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    int-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-int v2, v2

    new-array v0, v2, [I

    .line 354
    .local v0, "colors":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 355
    iget-object v2, p0, Lcom/taobao/weex/amap/util/GifDecoder$GifHeader;->bytes:[B

    mul-int/lit8 v3, v1, 0x3

    add-int/lit8 v3, v3, 0xd

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    iget-object v3, p0, Lcom/taobao/weex/amap/util/GifDecoder$GifHeader;->bytes:[B

    mul-int/lit8 v4, v1, 0x3

    add-int/lit8 v4, v4, 0xd

    add-int/lit8 v4, v4, 0x1

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/taobao/weex/amap/util/GifDecoder$GifHeader;->bytes:[B

    mul-int/lit8 v4, v1, 0x3

    add-int/lit8 v4, v4, 0xd

    add-int/lit8 v4, v4, 0x2

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    aput v2, v0, v1

    .line 354
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getGlobalColorTableFlag()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 326
    iget-object v0, p0, Lcom/taobao/weex/amap/util/GifDecoder$GifHeader;->bytes:[B

    const/16 v1, 0xa

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0x80

    shr-int/lit8 v0, v0, 0x7

    return v0
.end method

.method public getHeight()I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 322
    iget-object v0, p0, Lcom/taobao/weex/amap/util/GifDecoder$GifHeader;->bytes:[B

    const/16 v1, 0x8

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iget-object v1, p0, Lcom/taobao/weex/amap/util/GifDecoder$GifHeader;->bytes:[B

    const/16 v2, 0x9

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    return v0
.end method

.method public getPixelAspectRatio()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 346
    iget-object v0, p0, Lcom/taobao/weex/amap/util/GifDecoder$GifHeader;->bytes:[B

    const/16 v1, 0xc

    aget-byte v0, v0, v1

    return v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 310
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/taobao/weex/amap/util/GifDecoder$GifHeader;->bytes:[B

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    return-object v0
.end method

.method public getSizeOfGlobalColorTable()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 338
    iget-object v0, p0, Lcom/taobao/weex/amap/util/GifDecoder$GifHeader;->bytes:[B

    const/16 v1, 0xa

    aget-byte v0, v0, v1

    and-int/lit8 v0, v0, 0x7

    return v0
.end method

.method public getSortFlag()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 334
    iget-object v0, p0, Lcom/taobao/weex/amap/util/GifDecoder$GifHeader;->bytes:[B

    const/16 v1, 0xa

    aget-byte v0, v0, v1

    and-int/lit8 v0, v0, 0x8

    shr-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x3

    .line 314
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/taobao/weex/amap/util/GifDecoder$GifHeader;->bytes:[B

    invoke-direct {v0, v1, v2, v2}, Ljava/lang/String;-><init>([BII)V

    return-object v0
.end method

.method public getWidth()I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 318
    iget-object v0, p0, Lcom/taobao/weex/amap/util/GifDecoder$GifHeader;->bytes:[B

    const/4 v1, 0x6

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iget-object v1, p0, Lcom/taobao/weex/amap/util/GifDecoder$GifHeader;->bytes:[B

    const/4 v2, 0x7

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    return v0
.end method
