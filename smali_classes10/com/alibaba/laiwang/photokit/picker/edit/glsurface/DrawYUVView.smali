.class public Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/DrawYUVView;
.super Landroid/view/View;
.source "DrawYUVView.java"

# interfaces
.implements Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraView$a;


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/DrawYUVView;->a:Landroid/graphics/Bitmap;

    .line 15
    const/16 v0, 0x280

    iput v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/DrawYUVView;->b:I

    const/16 v0, 0x1e0

    iput v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/DrawYUVView;->c:I

    .line 19
    iget v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/DrawYUVView;->b:I

    iget v1, p0, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/DrawYUVView;->c:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/DrawYUVView;->a:Landroid/graphics/Bitmap;

    .line 21
    const-string/jumbo v0, "#707070"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/DrawYUVView;->setBackgroundColor(I)V

    .line 22
    return-void
.end method


# virtual methods
.method public final a([BI)V
    .locals 12
    .param p1, "data"    # [B
    .param p2, "length"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 31
    iget v3, p0, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/DrawYUVView;->b:I

    iget v7, p0, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/DrawYUVView;->c:I

    .line 1037
    mul-int v8, v3, v7

    .line 1038
    new-array v1, v8, [I

    .line 1064
    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-ge v6, v7, :cond_8

    .line 1066
    const/4 v0, 0x0

    move v5, v0

    :goto_1
    if-ge v5, v3, :cond_7

    .line 1068
    mul-int v0, v6, v3

    add-int/2addr v0, v5

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    .line 1069
    shr-int/lit8 v2, v6, 0x1

    mul-int/2addr v2, v3

    add-int/2addr v2, v8

    and-int/lit8 v4, v5, -0x2

    add-int/2addr v2, v4

    add-int/lit8 v2, v2, 0x0

    aget-byte v2, p1, v2

    and-int/lit16 v9, v2, 0xff

    .line 1070
    shr-int/lit8 v2, v6, 0x1

    mul-int/2addr v2, v3

    add-int/2addr v2, v8

    and-int/lit8 v4, v5, -0x2

    add-int/2addr v2, v4

    add-int/lit8 v2, v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    .line 1075
    const/16 v4, 0x10

    if-ge v0, v4, :cond_0

    const/16 v0, 0x10

    .line 1077
    :cond_0
    const v4, 0x3f94fdf4    # 1.164f

    add-int/lit8 v10, v0, -0x10

    int-to-float v10, v10

    mul-float/2addr v4, v10

    const v10, 0x3fcc49ba    # 1.596f

    add-int/lit8 v11, v2, -0x80

    int-to-float v11, v11

    mul-float/2addr v10, v11

    add-float/2addr v4, v10

    float-to-int v4, v4

    .line 1078
    const v10, 0x3f94fdf4    # 1.164f

    add-int/lit8 v11, v0, -0x10

    int-to-float v11, v11

    mul-float/2addr v10, v11

    const v11, 0x3f5020c5    # 0.813f

    add-int/lit8 v2, v2, -0x80

    int-to-float v2, v2

    mul-float/2addr v2, v11

    sub-float v2, v10, v2

    const v10, 0x3ec83127    # 0.391f

    add-int/lit8 v11, v9, -0x80

    int-to-float v11, v11

    mul-float/2addr v10, v11

    sub-float/2addr v2, v10

    float-to-int v2, v2

    .line 1079
    const v10, 0x3f94fdf4    # 1.164f

    add-int/lit8 v0, v0, -0x10

    int-to-float v0, v0

    mul-float/2addr v0, v10

    const v10, 0x400126e9    # 2.018f

    add-int/lit8 v9, v9, -0x80

    int-to-float v9, v9

    mul-float/2addr v9, v10

    add-float/2addr v0, v9

    float-to-int v0, v0

    .line 1084
    if-gez v4, :cond_4

    const/4 v4, 0x0

    .line 1085
    :cond_1
    :goto_2
    if-gez v2, :cond_5

    const/4 v2, 0x0

    .line 1086
    :cond_2
    :goto_3
    if-gez v0, :cond_6

    const/4 v0, 0x0

    .line 1088
    :cond_3
    :goto_4
    mul-int v9, v6, v3

    add-int/2addr v9, v5

    const/high16 v10, -0x1000000

    shl-int/lit8 v0, v0, 0x10

    add-int/2addr v0, v10

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v0, v2

    add-int/2addr v0, v4

    aput v0, v1, v9

    .line 1066
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_1

    .line 1084
    :cond_4
    const/16 v9, 0xff

    if-le v4, v9, :cond_1

    const/16 v4, 0xff

    goto :goto_2

    .line 1085
    :cond_5
    const/16 v9, 0xff

    if-le v2, v9, :cond_2

    const/16 v2, 0xff

    goto :goto_3

    .line 1086
    :cond_6
    const/16 v9, 0xff

    if-le v0, v9, :cond_3

    const/16 v0, 0xff

    goto :goto_4

    .line 1064
    :cond_7
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto/16 :goto_0

    .line 1092
    :cond_8
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v7, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1093
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 31
    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/DrawYUVView;->a:Landroid/graphics/Bitmap;

    .line 32
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/DrawYUVView;->invalidate()V

    .line 33
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 26
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/DrawYUVView;->a:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 27
    return-void
.end method
