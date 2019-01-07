.class public Lcom/amap/api/mapcore/util/au;
.super Lcom/amap/api/mapcore/util/ar;
.source "RotateGestureMapMessage.java"


# instance fields
.field public a:I

.field public b:I

.field public c:F


# direct methods
.method public constructor <init>(IFII)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/ar;-><init>(I)V

    .line 10
    iput v0, p0, Lcom/amap/api/mapcore/util/au;->a:I

    .line 11
    iput v0, p0, Lcom/amap/api/mapcore/util/au;->b:I

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/mapcore/util/au;->c:F

    .line 17
    iput p2, p0, Lcom/amap/api/mapcore/util/au;->c:F

    .line 18
    iput p3, p0, Lcom/amap/api/mapcore/util/au;->a:I

    .line 19
    iput p4, p0, Lcom/amap/api/mapcore/util/au;->b:I

    .line 20
    return-void
.end method


# virtual methods
.method public runCameraUpdate(Lcom/autonavi/amap/mapcore/MapProjection;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 30
    iget v2, p0, Lcom/amap/api/mapcore/util/au;->a:I

    .line 31
    iget v3, p0, Lcom/amap/api/mapcore/util/au;->b:I

    .line 34
    if-gtz v2, :cond_0

    if-lez v3, :cond_3

    .line 35
    :cond_0
    new-instance v1, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v1}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 36
    new-instance v0, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 37
    invoke-virtual {p0, p1, v2, v3, v1}, Lcom/amap/api/mapcore/util/au;->win2geo(Lcom/autonavi/amap/mapcore/MapProjection;IILcom/autonavi/amap/mapcore/IPoint;)V

    .line 38
    iget v4, v1, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v5, v1, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-virtual {p1, v4, v5}, Lcom/autonavi/amap/mapcore/MapProjection;->setGeoCenter(II)V

    .line 41
    :goto_0
    iget v4, p0, Lcom/amap/api/mapcore/util/au;->c:F

    .line 42
    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapAngle()F

    move-result v5

    add-float/2addr v4, v5

    .line 43
    invoke-virtual {p1, v4}, Lcom/autonavi/amap/mapcore/MapProjection;->setMapAngle(F)V

    .line 44
    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/MapProjection;->recalculate()V

    .line 46
    if-gtz v2, :cond_1

    if-lez v3, :cond_2

    .line 47
    :cond_1
    invoke-virtual {p0, p1, v2, v3, v0}, Lcom/amap/api/mapcore/util/au;->win2geo(Lcom/autonavi/amap/mapcore/MapProjection;IILcom/autonavi/amap/mapcore/IPoint;)V

    .line 49
    iget v2, v1, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    mul-int/lit8 v2, v2, 0x2

    iget v3, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    sub-int/2addr v2, v3

    iget v1, v1, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    mul-int/lit8 v1, v1, 0x2

    iget v0, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    sub-int v0, v1, v0

    invoke-virtual {p1, v2, v0}, Lcom/autonavi/amap/mapcore/MapProjection;->setGeoCenter(II)V

    .line 52
    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/MapProjection;->recalculate()V

    .line 54
    :cond_2
    return-void

    :cond_3
    move-object v1, v0

    goto :goto_0
.end method
