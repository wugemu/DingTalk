.class Lcom/taobao/weex/amap/util/GifDecoder$ApplicationExtension;
.super Ljava/lang/Object;
.source "GifDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/amap/util/GifDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ApplicationExtension"
.end annotation


# instance fields
.field public bytes:[B

.field public size:I

.field final synthetic this$0:Lcom/taobao/weex/amap/util/GifDecoder;


# direct methods
.method public constructor <init>(Lcom/taobao/weex/amap/util/GifDecoder;[BI)V
    .locals 4
    .param p2, "bytes"    # [B
    .param p3, "offset"    # I

    .prologue
    .line 454
    iput-object p1, p0, Lcom/taobao/weex/amap/util/GifDecoder$ApplicationExtension;->this$0:Lcom/taobao/weex/amap/util/GifDecoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 457
    const/16 v1, 0xe

    iput v1, p0, Lcom/taobao/weex/amap/util/GifDecoder$ApplicationExtension;->size:I

    .line 459
    iget v1, p0, Lcom/taobao/weex/amap/util/GifDecoder$ApplicationExtension;->size:I

    add-int/2addr v1, p3

    aget-byte v1, p2, v1

    and-int/lit16 v0, v1, 0xff

    .line 460
    .local v0, "blockSize":I
    iget v1, p0, Lcom/taobao/weex/amap/util/GifDecoder$ApplicationExtension;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/taobao/weex/amap/util/GifDecoder$ApplicationExtension;->size:I

    .line 461
    :goto_0
    if-eqz v0, :cond_0

    .line 462
    iget v1, p0, Lcom/taobao/weex/amap/util/GifDecoder$ApplicationExtension;->size:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/taobao/weex/amap/util/GifDecoder$ApplicationExtension;->size:I

    .line 463
    iget v1, p0, Lcom/taobao/weex/amap/util/GifDecoder$ApplicationExtension;->size:I

    add-int/2addr v1, p3

    aget-byte v1, p2, v1

    and-int/lit16 v0, v1, 0xff

    .line 464
    iget v1, p0, Lcom/taobao/weex/amap/util/GifDecoder$ApplicationExtension;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/taobao/weex/amap/util/GifDecoder$ApplicationExtension;->size:I

    goto :goto_0

    .line 467
    :cond_0
    iget v1, p0, Lcom/taobao/weex/amap/util/GifDecoder$ApplicationExtension;->size:I

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/taobao/weex/amap/util/GifDecoder$ApplicationExtension;->bytes:[B

    .line 468
    iget-object v1, p0, Lcom/taobao/weex/amap/util/GifDecoder$ApplicationExtension;->bytes:[B

    const/4 v2, 0x0

    iget v3, p0, Lcom/taobao/weex/amap/util/GifDecoder$ApplicationExtension;->size:I

    invoke-static {p2, p3, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 469
    return-void
.end method


# virtual methods
.method public getApplicationAuthenticationCode()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 488
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/taobao/weex/amap/util/GifDecoder$ApplicationExtension;->bytes:[B

    const/16 v2, 0xb

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    return-object v0
.end method

.method public getApplicationIdentifier()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 484
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/taobao/weex/amap/util/GifDecoder$ApplicationExtension;->bytes:[B

    const/4 v2, 0x3

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    return-object v0
.end method

.method public getBlockSize1()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 480
    iget-object v0, p0, Lcom/taobao/weex/amap/util/GifDecoder$ApplicationExtension;->bytes:[B

    const/4 v1, 0x2

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getExtensionIntroducer()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 472
    iget-object v0, p0, Lcom/taobao/weex/amap/util/GifDecoder$ApplicationExtension;->bytes:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getExtensionLabel()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 476
    iget-object v0, p0, Lcom/taobao/weex/amap/util/GifDecoder$ApplicationExtension;->bytes:[B

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method
