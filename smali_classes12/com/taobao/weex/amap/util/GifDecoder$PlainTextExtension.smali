.class Lcom/taobao/weex/amap/util/GifDecoder$PlainTextExtension;
.super Ljava/lang/Object;
.source "GifDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/amap/util/GifDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PlainTextExtension"
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
    .line 570
    iput-object p1, p0, Lcom/taobao/weex/amap/util/GifDecoder$PlainTextExtension;->this$0:Lcom/taobao/weex/amap/util/GifDecoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 573
    const/16 v1, 0xf

    iput v1, p0, Lcom/taobao/weex/amap/util/GifDecoder$PlainTextExtension;->size:I

    .line 575
    iget v1, p0, Lcom/taobao/weex/amap/util/GifDecoder$PlainTextExtension;->size:I

    add-int/2addr v1, p3

    aget-byte v1, p2, v1

    and-int/lit16 v0, v1, 0xff

    .line 576
    .local v0, "blockSize":I
    iget v1, p0, Lcom/taobao/weex/amap/util/GifDecoder$PlainTextExtension;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/taobao/weex/amap/util/GifDecoder$PlainTextExtension;->size:I

    .line 577
    :goto_0
    if-eqz v0, :cond_0

    .line 578
    iget v1, p0, Lcom/taobao/weex/amap/util/GifDecoder$PlainTextExtension;->size:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/taobao/weex/amap/util/GifDecoder$PlainTextExtension;->size:I

    .line 579
    iget v1, p0, Lcom/taobao/weex/amap/util/GifDecoder$PlainTextExtension;->size:I

    add-int/2addr v1, p3

    aget-byte v1, p2, v1

    and-int/lit16 v0, v1, 0xff

    .line 580
    iget v1, p0, Lcom/taobao/weex/amap/util/GifDecoder$PlainTextExtension;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/taobao/weex/amap/util/GifDecoder$PlainTextExtension;->size:I

    goto :goto_0

    .line 583
    :cond_0
    iget v1, p0, Lcom/taobao/weex/amap/util/GifDecoder$PlainTextExtension;->size:I

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/taobao/weex/amap/util/GifDecoder$PlainTextExtension;->bytes:[B

    .line 584
    iget-object v1, p0, Lcom/taobao/weex/amap/util/GifDecoder$PlainTextExtension;->bytes:[B

    const/4 v2, 0x0

    iget v3, p0, Lcom/taobao/weex/amap/util/GifDecoder$PlainTextExtension;->size:I

    invoke-static {p2, p3, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 585
    return-void
.end method
