.class public Lcom/amap/api/mapcore/util/ah;
.super Lcom/amap/api/mapcore/util/af;
.source "CameraZoomMessage.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/af;-><init>()V

    return-void
.end method


# virtual methods
.method public mergeCameraUpdateDelegate(Lcom/autonavi/amap/mapcore/MapMessage;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 22
    iget v0, p1, Lcom/autonavi/amap/mapcore/MapMessage;->zoom:F

    iget v1, p0, Lcom/amap/api/mapcore/util/ah;->d:F

    add-float/2addr v0, v1

    iput v0, p1, Lcom/autonavi/amap/mapcore/MapMessage;->zoom:F

    .line 23
    return-void
.end method

.method public runCameraUpdate(Lcom/autonavi/amap/mapcore/MapProjection;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 15
    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapZoomer()F

    move-result v0

    iget v1, p0, Lcom/amap/api/mapcore/util/ah;->d:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/amap/api/mapcore/util/ah;->zoom:F

    .line 16
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ah;->mapConfig:Lcom/autonavi/amap/mapcore/MapConfig;

    iget v1, p0, Lcom/amap/api/mapcore/util/ah;->zoom:F

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/en;->a(Lcom/autonavi/amap/mapcore/MapConfig;F)F

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/ah;->zoom:F

    .line 17
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/ah;->a(Lcom/autonavi/amap/mapcore/MapProjection;)V

    .line 18
    return-void
.end method
