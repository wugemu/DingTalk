.class public Lcom/amap/api/mapcore/util/as;
.super Lcom/amap/api/mapcore/util/ar;
.source "HoverGestureMapMessage.java"


# instance fields
.field public a:F


# direct methods
.method public constructor <init>(IF)V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/ar;-><init>(I)V

    .line 9
    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/mapcore/util/as;->a:F

    .line 13
    iput p2, p0, Lcom/amap/api/mapcore/util/as;->a:F

    .line 14
    return-void
.end method


# virtual methods
.method public runCameraUpdate(Lcom/autonavi/amap/mapcore/MapProjection;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/high16 v1, 0x42820000    # 65.0f

    const/4 v0, 0x0

    const/high16 v2, 0x42200000    # 40.0f

    .line 24
    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/MapProjection;->getCameraHeaderAngle()F

    move-result v3

    iget v4, p0, Lcom/amap/api/mapcore/util/as;->a:F

    add-float/2addr v3, v4

    .line 26
    cmpg-float v4, v3, v0

    if-gez v4, :cond_0

    .line 34
    :goto_0
    invoke-virtual {p1, v0}, Lcom/autonavi/amap/mapcore/MapProjection;->setCameraHeaderAngle(F)V

    .line 35
    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/MapProjection;->recalculate()V

    .line 36
    return-void

    .line 28
    :cond_0
    cmpl-float v0, v3, v1

    if-lez v0, :cond_1

    move v0, v1

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/MapProjection;->getCameraHeaderAngle()F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    cmpl-float v0, v3, v2

    if-lez v0, :cond_2

    .line 32
    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/MapProjection;->getCameraHeaderAngle()F

    move-result v0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_2

    move v0, v2

    .line 33
    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_0
.end method
