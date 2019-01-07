.class Lcom/taobao/weex/amap/util/GifDecoder$GifFrame;
.super Ljava/lang/Object;
.source "GifDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/amap/util/GifDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GifFrame"
.end annotation


# instance fields
.field public delay:I

.field public image:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 0
    .param p1, "im"    # Landroid/graphics/Bitmap;
    .param p2, "del"    # I

    .prologue
    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
    iput-object p1, p0, Lcom/taobao/weex/amap/util/GifDecoder$GifFrame;->image:Landroid/graphics/Bitmap;

    .line 287
    iput p2, p0, Lcom/taobao/weex/amap/util/GifDecoder$GifFrame;->delay:I

    .line 288
    return-void
.end method
