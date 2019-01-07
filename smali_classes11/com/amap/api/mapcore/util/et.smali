.class public Lcom/amap/api/mapcore/util/et;
.super Landroid/view/View;
.source "ScaleView.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Lcom/amap/api/mapcore/util/l;

.field private d:Landroid/graphics/Paint;

.field private e:Landroid/graphics/Paint;

.field private f:Landroid/graphics/Rect;

.field private final g:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/mapcore/util/l;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/high16 v3, -0x1000000

    .line 46
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 23
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/amap/api/mapcore/util/et;->a:Ljava/lang/String;

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/mapcore/util/et;->b:I

    .line 30
    const/16 v0, 0x15

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/et;->g:[I

    .line 47
    iput-object p2, p0, Lcom/amap/api/mapcore/util/et;->c:Lcom/amap/api/mapcore/util/l;

    .line 48
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/et;->d:Landroid/graphics/Paint;

    .line 49
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/et;->f:Landroid/graphics/Rect;

    .line 50
    iget-object v0, p0, Lcom/amap/api/mapcore/util/et;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 51
    iget-object v0, p0, Lcom/amap/api/mapcore/util/et;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 52
    iget-object v0, p0, Lcom/amap/api/mapcore/util/et;->d:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    sget v2, Lcom/amap/api/mapcore/util/g;->a:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 53
    iget-object v0, p0, Lcom/amap/api/mapcore/util/et;->d:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 54
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/et;->e:Landroid/graphics/Paint;

    .line 55
    iget-object v0, p0, Lcom/amap/api/mapcore/util/et;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 56
    iget-object v0, p0, Lcom/amap/api/mapcore/util/et;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 57
    iget-object v0, p0, Lcom/amap/api/mapcore/util/et;->e:Landroid/graphics/Paint;

    const/high16 v1, 0x41a00000    # 20.0f

    sget v2, Lcom/amap/api/mapcore/util/g;->a:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 58
    return-void

    .line 30
    :array_0
    .array-data 4
        0x989680
        0x4c4b40
        0x1e8480
        0xf4240
        0x7a120
        0x30d40
        0x186a0
        0xc350
        0x7530
        0x4e20
        0x2710
        0x1388
        0x7d0
        0x3e8
        0x1f4
        0xc8
        0x64
        0x32
        0x19
        0xa
        0x5
    .end array-data
.end method


# virtual methods
.method public a()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide v10, 0x400921fb54442d18L    # Math.PI

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    .line 100
    iget-object v0, p0, Lcom/amap/api/mapcore/util/et;->c:Lcom/amap/api/mapcore/util/l;

    if-nez v0, :cond_1

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/et;->c:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/l;->getCameraPosition()Lcom/amap/api/maps/model/CameraPosition;

    move-result-object v0

    .line 106
    if-eqz v0, :cond_0

    .line 109
    iget-object v0, v0, Lcom/amap/api/maps/model/CameraPosition;->target:Lcom/amap/api/maps/model/LatLng;

    .line 110
    iget-object v1, p0, Lcom/amap/api/mapcore/util/et;->c:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v1}, Lcom/amap/api/mapcore/util/l;->o()F

    move-result v1

    .line 112
    iget-object v2, p0, Lcom/amap/api/mapcore/util/et;->c:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v2}, Lcom/amap/api/mapcore/util/l;->u()F

    move-result v2

    .line 113
    iget-wide v4, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    mul-double/2addr v4, v10

    const-wide v6, 0x4066800000000000L    # 180.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v4, v8

    mul-double/2addr v4, v10

    const-wide v6, 0x415854a640000000L    # 6378137.0

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4070000000000000L    # 256.0

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    float-to-double v10, v1

    .line 114
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    mul-double/2addr v6, v8

    div-double/2addr v4, v6

    double-to-float v0, v4

    float-to-double v4, v0

    .line 115
    iget-object v0, p0, Lcom/amap/api/mapcore/util/et;->g:[I

    float-to-int v3, v1

    aget v0, v0, v3

    int-to-double v6, v0

    float-to-double v2, v2

    mul-double/2addr v2, v4

    div-double v2, v6, v2

    double-to-int v0, v2

    .line 116
    iget-object v2, p0, Lcom/amap/api/mapcore/util/et;->g:[I

    float-to-int v1, v1

    aget v1, v2, v1

    invoke-static {v1}, Lcom/amap/api/mapcore/util/en;->b(I)Ljava/lang/String;

    move-result-object v1

    .line 117
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/et;->a(I)V

    .line 118
    invoke-virtual {p0, v1}, Lcom/amap/api/mapcore/util/et;->a(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/et;->invalidate()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 120
    :catch_0
    move-exception v0

    .line 121
    const-string/jumbo v1, "AMapDelegateImpGLSurfaceView"

    const-string/jumbo v2, "changeScaleState"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ft;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 83
    iput p1, p0, Lcom/amap/api/mapcore/util/et;->b:I

    .line 84
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/amap/api/mapcore/util/et;->a:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public a(Z)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 87
    if-eqz p1, :cond_0

    .line 88
    invoke-virtual {p0, v1}, Lcom/amap/api/mapcore/util/et;->setVisibility(I)V

    .line 90
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/et;->a()V

    .line 96
    :goto_0
    return-void

    .line 92
    :cond_0
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/et;->a(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0, v1}, Lcom/amap/api/mapcore/util/et;->a(I)V

    .line 94
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/et;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 62
    iget-object v0, p0, Lcom/amap/api/mapcore/util/et;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/et;->a:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/amap/api/mapcore/util/et;->b:I

    if-nez v0, :cond_1

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/et;->c:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/l;->q()Landroid/graphics/Point;

    move-result-object v0

    .line 66
    if-eqz v0, :cond_0

    .line 67
    iget-object v1, p0, Lcom/amap/api/mapcore/util/et;->e:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/et;->a:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/amap/api/mapcore/util/et;->a:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, p0, Lcom/amap/api/mapcore/util/et;->f:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 68
    iget v6, v0, Landroid/graphics/Point;->x:I

    .line 69
    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-object v1, p0, Lcom/amap/api/mapcore/util/et;->f:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x5

    .line 70
    iget-object v1, p0, Lcom/amap/api/mapcore/util/et;->a:Ljava/lang/String;

    int-to-float v2, v6

    int-to-float v3, v0

    iget-object v4, p0, Lcom/amap/api/mapcore/util/et;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 71
    iget-object v1, p0, Lcom/amap/api/mapcore/util/et;->f:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int/lit8 v1, v1, -0x5

    add-int v7, v0, v1

    .line 72
    int-to-float v1, v6

    add-int/lit8 v0, v7, -0x2

    int-to-float v2, v0

    int-to-float v3, v6

    add-int/lit8 v0, v7, 0x2

    int-to-float v4, v0

    iget-object v5, p0, Lcom/amap/api/mapcore/util/et;->d:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 73
    int-to-float v1, v6

    int-to-float v2, v7

    iget v0, p0, Lcom/amap/api/mapcore/util/et;->b:I

    add-int/2addr v0, v6

    int-to-float v3, v0

    int-to-float v4, v7

    iget-object v5, p0, Lcom/amap/api/mapcore/util/et;->d:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 74
    iget v0, p0, Lcom/amap/api/mapcore/util/et;->b:I

    add-int/2addr v0, v6

    int-to-float v1, v0

    add-int/lit8 v0, v7, -0x2

    int-to-float v2, v0

    iget v0, p0, Lcom/amap/api/mapcore/util/et;->b:I

    add-int/2addr v0, v6

    int-to-float v3, v0

    add-int/lit8 v0, v7, 0x2

    int-to-float v4, v0

    iget-object v5, p0, Lcom/amap/api/mapcore/util/et;->d:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method
