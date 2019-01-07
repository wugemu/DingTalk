.class Lcom/taobao/weex/amap/util/GifDecoder$GraphicControlExtension;
.super Ljava/lang/Object;
.source "GifDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/amap/util/GifDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GraphicControlExtension"
.end annotation


# instance fields
.field public bytes:[B

.field public size:I

.field final synthetic this$0:Lcom/taobao/weex/amap/util/GifDecoder;


# direct methods
.method public constructor <init>(Lcom/taobao/weex/amap/util/GifDecoder;[BI)V
    .locals 3
    .param p2, "bytes"    # [B
    .param p3, "offset"    # I

    .prologue
    .line 496
    iput-object p1, p0, Lcom/taobao/weex/amap/util/GifDecoder$GraphicControlExtension;->this$0:Lcom/taobao/weex/amap/util/GifDecoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 497
    const/16 v0, 0x8

    iput v0, p0, Lcom/taobao/weex/amap/util/GifDecoder$GraphicControlExtension;->size:I

    .line 498
    iget v0, p0, Lcom/taobao/weex/amap/util/GifDecoder$GraphicControlExtension;->size:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/taobao/weex/amap/util/GifDecoder$GraphicControlExtension;->bytes:[B

    .line 499
    iget-object v0, p0, Lcom/taobao/weex/amap/util/GifDecoder$GraphicControlExtension;->bytes:[B

    const/4 v1, 0x0

    iget v2, p0, Lcom/taobao/weex/amap/util/GifDecoder$GraphicControlExtension;->size:I

    invoke-static {p2, p3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 500
    return-void
.end method


# virtual methods
.method public getBlockSize()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 511
    iget-object v0, p0, Lcom/taobao/weex/amap/util/GifDecoder$GraphicControlExtension;->bytes:[B

    const/4 v1, 0x2

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getDelayTime()I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 531
    iget-object v0, p0, Lcom/taobao/weex/amap/util/GifDecoder$GraphicControlExtension;->bytes:[B

    const/4 v1, 0x4

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iget-object v1, p0, Lcom/taobao/weex/amap/util/GifDecoder$GraphicControlExtension;->bytes:[B

    const/4 v2, 0x5

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    return v0
.end method

.method public getDisposalMothod()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 519
    iget-object v0, p0, Lcom/taobao/weex/amap/util/GifDecoder$GraphicControlExtension;->bytes:[B

    const/4 v1, 0x3

    aget-byte v0, v0, v1

    and-int/lit8 v0, v0, 0x1c

    shr-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getExtensionIntroducer()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 503
    iget-object v0, p0, Lcom/taobao/weex/amap/util/GifDecoder$GraphicControlExtension;->bytes:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getGraphicControlLabel()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 507
    iget-object v0, p0, Lcom/taobao/weex/amap/util/GifDecoder$GraphicControlExtension;->bytes:[B

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getReserved()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 515
    iget-object v0, p0, Lcom/taobao/weex/amap/util/GifDecoder$GraphicControlExtension;->bytes:[B

    const/4 v1, 0x3

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xe0

    shr-int/lit8 v0, v0, 0x5

    return v0
.end method

.method public getTransparentColorFlag()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 527
    iget-object v0, p0, Lcom/taobao/weex/amap/util/GifDecoder$GraphicControlExtension;->bytes:[B

    const/4 v1, 0x3

    aget-byte v0, v0, v1

    and-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getTransparentColorIndex()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 535
    iget-object v0, p0, Lcom/taobao/weex/amap/util/GifDecoder$GraphicControlExtension;->bytes:[B

    const/4 v1, 0x6

    aget-byte v0, v0, v1

    return v0
.end method

.method public getUserInputFlag()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 523
    iget-object v0, p0, Lcom/taobao/weex/amap/util/GifDecoder$GraphicControlExtension;->bytes:[B

    const/4 v1, 0x3

    aget-byte v0, v0, v1

    and-int/lit8 v0, v0, 0x2

    shr-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public setTransparentColorFlagTrue()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 539
    invoke-virtual {p0}, Lcom/taobao/weex/amap/util/GifDecoder$GraphicControlExtension;->getReserved()I

    move-result v1

    invoke-virtual {p0}, Lcom/taobao/weex/amap/util/GifDecoder$GraphicControlExtension;->getDisposalMothod()I

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/taobao/weex/amap/util/GifDecoder$GraphicControlExtension;->getUserInputFlag()I

    move-result v2

    or-int/2addr v1, v2

    or-int/lit8 v0, v1, 0x1

    .line 540
    .local v0, "value":I
    iget-object v1, p0, Lcom/taobao/weex/amap/util/GifDecoder$GraphicControlExtension;->bytes:[B

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-static {v0, v3}, Lcom/taobao/weex/amap/util/GifDecoder;->toHex(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 541
    return-void
.end method
