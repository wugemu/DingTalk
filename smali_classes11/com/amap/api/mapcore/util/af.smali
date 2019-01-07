.class public abstract Lcom/amap/api/mapcore/util/af;
.super Lcom/autonavi/amap/mapcore/MapMessage;
.source "CameraUpdateDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/util/af$a;
    }
.end annotation


# instance fields
.field public a:Lcom/amap/api/mapcore/util/af$a;

.field public b:F

.field public c:F

.field public d:F

.field public e:Lcom/amap/api/maps/model/CameraPosition;

.field public f:Lcom/amap/api/maps/model/LatLngBounds;

.field public g:Landroid/graphics/Point;

.field public h:I

.field public i:I

.field public j:I

.field public k:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/autonavi/amap/mapcore/MapMessage;-><init>()V

    .line 46
    sget-object v0, Lcom/amap/api/mapcore/util/af$a;->a:Lcom/amap/api/mapcore/util/af$a;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/af;->a:Lcom/amap/api/mapcore/util/af$a;

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/af;->g:Landroid/graphics/Point;

    .line 18
    return-void
.end method


# virtual methods
.method protected a(Lcom/autonavi/amap/mapcore/MapProjection;II)Lcom/autonavi/amap/mapcore/IPoint;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 128
    new-instance v0, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 129
    iget v1, p0, Lcom/amap/api/mapcore/util/af;->width:I

    div-int/lit8 v1, v1, 0x2

    if-ne p2, v1, :cond_0

    iget v1, p0, Lcom/amap/api/mapcore/util/af;->height:I

    div-int/lit8 v1, v1, 0x2

    if-ne p3, v1, :cond_0

    .line 130
    invoke-virtual {p1, v0}, Lcom/autonavi/amap/mapcore/MapProjection;->getGeoCenter(Lcom/autonavi/amap/mapcore/IPoint;)V

    .line 136
    :goto_0
    return-object v0

    .line 132
    :cond_0
    new-instance v1, Lcom/autonavi/amap/mapcore/FPoint;

    invoke-direct {v1}, Lcom/autonavi/amap/mapcore/FPoint;-><init>()V

    .line 133
    invoke-virtual {p1, p2, p3, v1}, Lcom/autonavi/amap/mapcore/MapProjection;->win2Map(IILcom/autonavi/amap/mapcore/FPoint;)V

    .line 134
    iget v2, v1, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    iget v1, v1, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    invoke-virtual {p1, v2, v1, v0}, Lcom/autonavi/amap/mapcore/MapProjection;->map2Geo(FFLcom/autonavi/amap/mapcore/IPoint;)V

    goto :goto_0
.end method

.method protected a(Lcom/autonavi/amap/mapcore/MapProjection;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide v2, 0x4076800000000000L    # 360.0

    .line 56
    iget v0, p0, Lcom/amap/api/mapcore/util/af;->zoom:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapZoomer()F

    move-result v0

    :goto_0
    iput v0, p0, Lcom/amap/api/mapcore/util/af;->zoom:F

    .line 58
    iget v0, p0, Lcom/amap/api/mapcore/util/af;->bearing:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapAngle()F

    move-result v0

    :goto_1
    iput v0, p0, Lcom/amap/api/mapcore/util/af;->bearing:F

    .line 60
    iget v0, p0, Lcom/amap/api/mapcore/util/af;->tilt:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/MapProjection;->getCameraHeaderAngle()F

    move-result v0

    :goto_2
    iput v0, p0, Lcom/amap/api/mapcore/util/af;->tilt:F

    .line 63
    iget-object v0, p0, Lcom/amap/api/mapcore/util/af;->mapConfig:Lcom/autonavi/amap/mapcore/MapConfig;

    iget v1, p0, Lcom/amap/api/mapcore/util/af;->zoom:F

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/en;->a(Lcom/autonavi/amap/mapcore/MapConfig;F)F

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/af;->zoom:F

    .line 64
    iget v0, p0, Lcom/amap/api/mapcore/util/af;->tilt:F

    iget v1, p0, Lcom/amap/api/mapcore/util/af;->zoom:F

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/en;->a(FF)F

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/af;->tilt:F

    .line 65
    iget v0, p0, Lcom/amap/api/mapcore/util/af;->bearing:F

    float-to-double v0, v0

    rem-double/2addr v0, v2

    add-double/2addr v0, v2

    rem-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/amap/api/mapcore/util/af;->bearing:F

    .line 78
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/af;->isUseAnchor:Z

    if-eqz v0, :cond_8

    .line 80
    iget-object v0, p0, Lcom/amap/api/mapcore/util/af;->geoPoint:Lcom/autonavi/amap/mapcore/IPoint;

    if-nez v0, :cond_0

    .line 81
    iget v0, p0, Lcom/amap/api/mapcore/util/af;->anchorX:I

    iget v1, p0, Lcom/amap/api/mapcore/util/af;->anchorY:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/amap/api/mapcore/util/af;->a(Lcom/autonavi/amap/mapcore/MapProjection;II)Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/af;->geoPoint:Lcom/autonavi/amap/mapcore/IPoint;

    .line 87
    :cond_0
    :goto_3
    iget v0, p0, Lcom/amap/api/mapcore/util/af;->zoom:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1

    .line 88
    iget v0, p0, Lcom/amap/api/mapcore/util/af;->zoom:F

    invoke-virtual {p1, v0}, Lcom/autonavi/amap/mapcore/MapProjection;->setMapZoomer(F)V

    .line 89
    :cond_1
    iget v0, p0, Lcom/amap/api/mapcore/util/af;->bearing:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_2

    .line 90
    iget v0, p0, Lcom/amap/api/mapcore/util/af;->bearing:F

    invoke-virtual {p1, v0}, Lcom/autonavi/amap/mapcore/MapProjection;->setMapAngle(F)V

    .line 91
    :cond_2
    iget v0, p0, Lcom/amap/api/mapcore/util/af;->tilt:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_3

    .line 92
    iget v0, p0, Lcom/amap/api/mapcore/util/af;->tilt:F

    invoke-virtual {p1, v0}, Lcom/autonavi/amap/mapcore/MapProjection;->setCameraHeaderAngle(F)V

    .line 94
    :cond_3
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/af;->isUseAnchor:Z

    if-eqz v0, :cond_9

    .line 95
    iget-object v0, p0, Lcom/amap/api/mapcore/util/af;->geoPoint:Lcom/autonavi/amap/mapcore/IPoint;

    invoke-virtual {p0, p1, v0}, Lcom/amap/api/mapcore/util/af;->a(Lcom/autonavi/amap/mapcore/MapProjection;Lcom/autonavi/amap/mapcore/IPoint;)V

    .line 106
    :cond_4
    :goto_4
    return-void

    .line 56
    :cond_5
    iget v0, p0, Lcom/amap/api/mapcore/util/af;->zoom:F

    goto :goto_0

    .line 58
    :cond_6
    iget v0, p0, Lcom/amap/api/mapcore/util/af;->bearing:F

    goto :goto_1

    .line 60
    :cond_7
    iget v0, p0, Lcom/amap/api/mapcore/util/af;->tilt:F

    goto :goto_2

    .line 83
    :cond_8
    iget-object v0, p0, Lcom/amap/api/mapcore/util/af;->g:Landroid/graphics/Point;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/af;->geoPoint:Lcom/autonavi/amap/mapcore/IPoint;

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/amap/api/mapcore/util/af;->g:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/amap/api/mapcore/util/af;->g:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/amap/api/mapcore/util/af;->a(Lcom/autonavi/amap/mapcore/MapProjection;II)Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/af;->geoPoint:Lcom/autonavi/amap/mapcore/IPoint;

    goto :goto_3

    .line 96
    :cond_9
    iget-object v0, p0, Lcom/amap/api/mapcore/util/af;->g:Landroid/graphics/Point;

    if-eqz v0, :cond_a

    .line 97
    iget-object v0, p0, Lcom/amap/api/mapcore/util/af;->geoPoint:Lcom/autonavi/amap/mapcore/IPoint;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/af;->g:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/amap/api/mapcore/util/af;->g:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/amap/api/mapcore/util/af;->a(Lcom/autonavi/amap/mapcore/MapProjection;Lcom/autonavi/amap/mapcore/IPoint;II)V

    goto :goto_4

    .line 100
    :cond_a
    iget-object v0, p0, Lcom/amap/api/mapcore/util/af;->geoPoint:Lcom/autonavi/amap/mapcore/IPoint;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/mapcore/util/af;->geoPoint:Lcom/autonavi/amap/mapcore/IPoint;

    iget v0, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/amap/api/mapcore/util/af;->geoPoint:Lcom/autonavi/amap/mapcore/IPoint;

    iget v0, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    if-eqz v0, :cond_4

    .line 101
    :cond_b
    iget-object v0, p0, Lcom/amap/api/mapcore/util/af;->geoPoint:Lcom/autonavi/amap/mapcore/IPoint;

    iget v0, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget-object v1, p0, Lcom/amap/api/mapcore/util/af;->geoPoint:Lcom/autonavi/amap/mapcore/IPoint;

    iget v1, v1, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-virtual {p1, v0, v1}, Lcom/autonavi/amap/mapcore/MapProjection;->setGeoCenter(II)V

    goto :goto_4
.end method

.method protected a(Lcom/autonavi/amap/mapcore/MapProjection;Lcom/autonavi/amap/mapcore/IPoint;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 110
    iget v0, p0, Lcom/amap/api/mapcore/util/af;->anchorX:I

    iget v1, p0, Lcom/amap/api/mapcore/util/af;->anchorY:I

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/amap/api/mapcore/util/af;->a(Lcom/autonavi/amap/mapcore/MapProjection;Lcom/autonavi/amap/mapcore/IPoint;II)V

    .line 111
    return-void
.end method

.method protected a(Lcom/autonavi/amap/mapcore/MapProjection;Lcom/autonavi/amap/mapcore/IPoint;II)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 115
    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/MapProjection;->recalculate()V

    .line 116
    invoke-virtual {p0, p1, p3, p4}, Lcom/amap/api/mapcore/util/af;->a(Lcom/autonavi/amap/mapcore/MapProjection;II)Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v0

    .line 117
    iget v1, p0, Lcom/amap/api/mapcore/util/af;->width:I

    div-int/lit8 v1, v1, 0x2

    if-ne p3, v1, :cond_0

    iget v1, p0, Lcom/amap/api/mapcore/util/af;->height:I

    div-int/lit8 v1, v1, 0x2

    if-ne p4, v1, :cond_0

    .line 118
    iget v1, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v0, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-virtual {p1, v1, v0}, Lcom/autonavi/amap/mapcore/MapProjection;->setGeoCenter(II)V

    .line 125
    :goto_0
    return-void

    .line 120
    :cond_0
    new-instance v1, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v1}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 121
    invoke-virtual {p1, v1}, Lcom/autonavi/amap/mapcore/MapProjection;->getGeoCenter(Lcom/autonavi/amap/mapcore/IPoint;)V

    .line 122
    iget v2, v1, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v3, p2, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    add-int/2addr v2, v3

    iget v3, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    sub-int/2addr v2, v3

    iget v1, v1, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iget v3, p2, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    add-int/2addr v1, v3

    iget v0, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    sub-int v0, v1, v0

    invoke-virtual {p1, v2, v0}, Lcom/autonavi/amap/mapcore/MapProjection;->setGeoCenter(II)V

    goto :goto_0
.end method
