.class public Lcom/amap/api/mapcore/util/ep;
.super Landroid/widget/LinearLayout;
.source "CompassView.java"


# instance fields
.field a:Landroid/graphics/Bitmap;

.field b:Landroid/graphics/Bitmap;

.field c:Landroid/graphics/Bitmap;

.field d:Landroid/widget/ImageView;

.field e:Lcom/amap/api/mapcore/util/l;

.field f:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/mapcore/util/l;)V
    .locals 7

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 61
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 28
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ep;->f:Landroid/graphics/Matrix;

    .line 62
    iput-object p2, p0, Lcom/amap/api/mapcore/util/ep;->e:Lcom/amap/api/mapcore/util/l;

    .line 64
    :try_start_0
    const-string/jumbo v0, "maps_dav_compass_needle_large.png"

    invoke-static {p1, v0}, Lcom/amap/api/mapcore/util/en;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ep;->c:Landroid/graphics/Bitmap;

    .line 65
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ep;->c:Landroid/graphics/Bitmap;

    sget v1, Lcom/amap/api/mapcore/util/g;->a:F

    const v2, 0x3f4ccccd    # 0.8f

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/en;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ep;->b:Landroid/graphics/Bitmap;

    .line 67
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ep;->c:Landroid/graphics/Bitmap;

    sget v1, Lcom/amap/api/mapcore/util/g;->a:F

    const v2, 0x3f333333    # 0.7f

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/en;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ep;->c:Landroid/graphics/Bitmap;

    .line 69
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ep;->b:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ep;->c:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 119
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ep;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/ep;->b:Landroid/graphics/Bitmap;

    .line 73
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 72
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ep;->a:Landroid/graphics/Bitmap;

    .line 75
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/ep;->a:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 76
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 77
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 78
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 79
    iget-object v2, p0, Lcom/amap/api/mapcore/util/ep;->c:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/amap/api/mapcore/util/ep;->b:Landroid/graphics/Bitmap;

    .line 80
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/amap/api/mapcore/util/ep;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v6

    iget-object v4, p0, Lcom/amap/api/mapcore/util/ep;->b:Landroid/graphics/Bitmap;

    .line 81
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/amap/api/mapcore/util/ep;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v4, v6

    .line 79
    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 82
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ep;->d:Landroid/widget/ImageView;

    .line 83
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ep;->d:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 84
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ep;->d:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/ep;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 85
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ep;->d:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 86
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/ep;->a()V

    .line 87
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ep;->d:Landroid/widget/ImageView;

    new-instance v1, Lcom/amap/api/mapcore/util/ep$1;

    invoke-direct {v1, p0}, Lcom/amap/api/mapcore/util/ep$1;-><init>(Lcom/amap/api/mapcore/util/ep;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 114
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ep;->d:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/ep;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    const-string/jumbo v1, "CompassView"

    const-string/jumbo v2, "create"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ft;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0
.end method


# virtual methods
.method public a()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    .line 123
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ep;->e:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/l;->c()Lcom/autonavi/amap/mapcore/MapProjection;

    move-result-object v0

    .line 124
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/amap/api/mapcore/util/ep;->d:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 125
    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapAngle()F

    move-result v1

    .line 126
    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapProjection;->getCameraHeaderAngle()F

    move-result v0

    .line 127
    iget-object v2, p0, Lcom/amap/api/mapcore/util/ep;->f:Landroid/graphics/Matrix;

    if-nez v2, :cond_0

    .line 128
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcom/amap/api/mapcore/util/ep;->f:Landroid/graphics/Matrix;

    .line 129
    :cond_0
    iget-object v2, p0, Lcom/amap/api/mapcore/util/ep;->f:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 130
    iget-object v2, p0, Lcom/amap/api/mapcore/util/ep;->f:Landroid/graphics/Matrix;

    neg-float v1, v1

    iget-object v3, p0, Lcom/amap/api/mapcore/util/ep;->d:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 131
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v8

    iget-object v4, p0, Lcom/amap/api/mapcore/util/ep;->d:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 132
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v8

    .line 130
    invoke-virtual {v2, v1, v3, v4}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 133
    iget-object v1, p0, Lcom/amap/api/mapcore/util/ep;->f:Landroid/graphics/Matrix;

    const/high16 v2, 0x3f800000    # 1.0f

    float-to-double v4, v0

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, v6

    const-wide v6, 0x4066800000000000L    # 180.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v0, v4

    iget-object v3, p0, Lcom/amap/api/mapcore/util/ep;->d:Landroid/widget/ImageView;

    .line 134
    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v8

    iget-object v4, p0, Lcom/amap/api/mapcore/util/ep;->d:Landroid/widget/ImageView;

    .line 135
    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v8

    .line 133
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 136
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ep;->d:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/ep;->f:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :cond_1
    :goto_0
    return-void

    .line 139
    :catch_0
    move-exception v0

    .line 140
    const-string/jumbo v1, "CompassView"

    const-string/jumbo v2, "invalidateAngle"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ft;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 146
    if-eqz p1, :cond_0

    .line 147
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/ep;->setVisibility(I)V

    .line 148
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/ep;->a()V

    .line 152
    :goto_0
    return-void

    .line 150
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/ep;->setVisibility(I)V

    goto :goto_0
.end method
