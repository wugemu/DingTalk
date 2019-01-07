.class public Lcom/amap/api/mapcore/util/av;
.super Lcom/amap/api/mapcore/util/ar;
.source "ScaleGestureMapMessage.java"


# instance fields
.field public a:F

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>(IFIIZ)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 16
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/ar;-><init>(I)V

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/mapcore/util/av;->a:F

    .line 12
    iput v1, p0, Lcom/amap/api/mapcore/util/av;->b:I

    .line 13
    iput v1, p0, Lcom/amap/api/mapcore/util/av;->c:I

    .line 17
    iput p2, p0, Lcom/amap/api/mapcore/util/av;->a:F

    .line 18
    iput p3, p0, Lcom/amap/api/mapcore/util/av;->b:I

    .line 19
    iput p4, p0, Lcom/amap/api/mapcore/util/av;->c:I

    .line 20
    iput-boolean p5, p0, Lcom/amap/api/mapcore/util/av;->isGestureScaleByMapCenter:Z

    .line 21
    return-void
.end method

.method private a(Lcom/autonavi/amap/mapcore/MapProjection;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 60
    iget v0, p0, Lcom/amap/api/mapcore/util/av;->a:F

    .line 61
    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapZoomer()F

    move-result v1

    add-float/2addr v0, v1

    .line 62
    invoke-virtual {p1, v0}, Lcom/autonavi/amap/mapcore/MapProjection;->setMapZoomer(F)V

    .line 63
    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/MapProjection;->recalculate()V

    .line 64
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

    .line 31
    iget-boolean v1, p0, Lcom/amap/api/mapcore/util/av;->isGestureScaleByMapCenter:Z

    if-eqz v1, :cond_1

    .line 32
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/av;->a(Lcom/autonavi/amap/mapcore/MapProjection;)V

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 36
    :cond_1
    iget v2, p0, Lcom/amap/api/mapcore/util/av;->b:I

    .line 37
    iget v3, p0, Lcom/amap/api/mapcore/util/av;->c:I

    .line 40
    if-gtz v2, :cond_2

    if-lez v3, :cond_4

    .line 41
    :cond_2
    new-instance v1, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v1}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 42
    new-instance v0, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 43
    invoke-virtual {p0, p1, v2, v3, v1}, Lcom/amap/api/mapcore/util/av;->win2geo(Lcom/autonavi/amap/mapcore/MapProjection;IILcom/autonavi/amap/mapcore/IPoint;)V

    .line 44
    iget v4, v1, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v5, v1, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-virtual {p1, v4, v5}, Lcom/autonavi/amap/mapcore/MapProjection;->setGeoCenter(II)V

    .line 47
    :goto_1
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/av;->a(Lcom/autonavi/amap/mapcore/MapProjection;)V

    .line 49
    if-gtz v2, :cond_3

    if-lez v3, :cond_0

    .line 50
    :cond_3
    invoke-virtual {p0, p1, v2, v3, v0}, Lcom/amap/api/mapcore/util/av;->win2geo(Lcom/autonavi/amap/mapcore/MapProjection;IILcom/autonavi/amap/mapcore/IPoint;)V

    .line 52
    iget v2, v1, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    mul-int/lit8 v2, v2, 0x2

    iget v3, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    sub-int/2addr v2, v3

    iget v1, v1, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    mul-int/lit8 v1, v1, 0x2

    iget v0, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    sub-int v0, v1, v0

    invoke-virtual {p1, v2, v0}, Lcom/autonavi/amap/mapcore/MapProjection;->setGeoCenter(II)V

    .line 55
    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/MapProjection;->recalculate()V

    goto :goto_0

    :cond_4
    move-object v1, v0

    goto :goto_1
.end method
