.class public Lcom/amap/api/mapcore/util/at;
.super Lcom/amap/api/mapcore/util/ar;
.source "MoveGestureMapMessage.java"


# instance fields
.field public a:F

.field public b:F


# direct methods
.method public constructor <init>(IFF)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/ar;-><init>(I)V

    .line 10
    iput v0, p0, Lcom/amap/api/mapcore/util/at;->a:F

    .line 11
    iput v0, p0, Lcom/amap/api/mapcore/util/at;->b:F

    .line 15
    iput p2, p0, Lcom/amap/api/mapcore/util/at;->a:F

    .line 16
    iput p3, p0, Lcom/amap/api/mapcore/util/at;->b:F

    .line 17
    return-void
.end method


# virtual methods
.method public runCameraUpdate(Lcom/autonavi/amap/mapcore/MapProjection;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 28
    iget v0, p0, Lcom/amap/api/mapcore/util/at;->a:F

    float-to-int v0, v0

    .line 29
    iget v1, p0, Lcom/amap/api/mapcore/util/at;->b:F

    float-to-int v1, v1

    .line 30
    iget v2, p0, Lcom/amap/api/mapcore/util/at;->width:I

    shr-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    .line 31
    iget v3, p0, Lcom/amap/api/mapcore/util/at;->height:I

    shr-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    .line 32
    int-to-float v0, v0

    sub-float v0, v2, v0

    float-to-int v0, v0

    .line 33
    int-to-float v1, v1

    sub-float v1, v3, v1

    float-to-int v1, v1

    .line 35
    new-instance v2, Lcom/autonavi/amap/mapcore/FPoint;

    invoke-direct {v2}, Lcom/autonavi/amap/mapcore/FPoint;-><init>()V

    .line 36
    invoke-virtual {p1, v0, v1, v2}, Lcom/autonavi/amap/mapcore/MapProjection;->win2Map(IILcom/autonavi/amap/mapcore/FPoint;)V

    .line 38
    iget v0, v2, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    iget v1, v2, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    invoke-virtual {p1, v0, v1}, Lcom/autonavi/amap/mapcore/MapProjection;->setMapCenter(FF)V

    .line 39
    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/MapProjection;->recalculate()V

    .line 40
    return-void
.end method
