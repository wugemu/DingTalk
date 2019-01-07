.class Lcom/amap/api/mapcore/util/t;
.super Ljava/lang/Object;
.source "ProjectionDelegateImp.java"

# interfaces
.implements Lcom/amap/api/mapcore/util/n;


# instance fields
.field private a:Lcom/amap/api/mapcore/util/l;


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore/util/l;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/amap/api/mapcore/util/t;->a:Lcom/amap/api/mapcore/util/l;

    .line 22
    return-void
.end method


# virtual methods
.method public fromBoundsToTile(Lcom/amap/api/maps/model/LatLngBounds;II)Lcom/amap/api/maps/model/TileProjection;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 113
    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    const/16 v0, 0x14

    if-gt p2, v0, :cond_0

    if-gtz p3, :cond_1

    .line 114
    :cond_0
    const/4 v0, 0x0

    .line 138
    :goto_0
    return-object v0

    .line 118
    :cond_1
    :try_start_0
    new-instance v6, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v6}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 119
    new-instance v12, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v12}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 120
    iget-object v1, p0, Lcom/amap/api/mapcore/util/t;->a:Lcom/amap/api/mapcore/util/l;

    iget-object v0, p1, Lcom/amap/api/maps/model/LatLngBounds;->southwest:Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-object v0, p1, Lcom/amap/api/maps/model/LatLngBounds;->southwest:Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-interface/range {v1 .. v6}, Lcom/amap/api/mapcore/util/l;->a(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 121
    iget-object v7, p0, Lcom/amap/api/mapcore/util/t;->a:Lcom/amap/api/mapcore/util/l;

    iget-object v0, p1, Lcom/amap/api/maps/model/LatLngBounds;->northeast:Lcom/amap/api/maps/model/LatLng;

    iget-wide v8, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-object v0, p1, Lcom/amap/api/maps/model/LatLngBounds;->northeast:Lcom/amap/api/maps/model/LatLng;

    iget-wide v10, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-interface/range {v7 .. v12}, Lcom/amap/api/mapcore/util/l;->a(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 123
    iget v0, v6, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    rsub-int/lit8 v1, p2, 0x14

    shr-int/2addr v0, v1

    div-int v3, v0, p3

    .line 124
    iget v0, v6, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    rsub-int/lit8 v1, p2, 0x14

    shr-int/2addr v0, v1

    div-int v7, v0, p3

    .line 125
    iget v0, v12, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    rsub-int/lit8 v1, p2, 0x14

    shr-int/2addr v0, v1

    div-int v4, v0, p3

    .line 126
    iget v0, v12, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    rsub-int/lit8 v1, p2, 0x14

    shr-int/2addr v0, v1

    div-int v5, v0, p3

    .line 128
    rsub-int/lit8 v0, p2, 0x14

    shl-int v0, v3, v0

    mul-int v0, v0, p3

    .line 129
    rsub-int/lit8 v1, p2, 0x14

    shl-int v1, v5, v1

    mul-int v2, v1, p3

    .line 130
    iget v1, v6, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    sub-int v0, v1, v0

    rsub-int/lit8 v1, p2, 0x14

    shr-int v1, v0, v1

    .line 131
    iget v0, v12, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    sub-int/2addr v0, v2

    rsub-int/lit8 v2, p2, 0x14

    shr-int v2, v0, v2

    .line 133
    new-instance v0, Lcom/amap/api/maps/model/TileProjection;

    move v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/amap/api/maps/model/TileProjection;-><init>(IIIIII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 134
    :catch_0
    move-exception v0

    .line 135
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 138
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public fromScreenLocation(Landroid/graphics/Point;)Lcom/amap/api/maps/model/LatLng;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 27
    if-nez p1, :cond_0

    .line 37
    :goto_0
    return-object v0

    .line 30
    :cond_0
    :try_start_0
    new-instance v2, Lcom/autonavi/amap/mapcore/DPoint;

    invoke-direct {v2}, Lcom/autonavi/amap/mapcore/DPoint;-><init>()V

    .line 31
    iget-object v1, p0, Lcom/amap/api/mapcore/util/t;->a:Lcom/amap/api/mapcore/util/l;

    iget v3, p1, Landroid/graphics/Point;->x:I

    iget v4, p1, Landroid/graphics/Point;->y:I

    invoke-interface {v1, v3, v4, v2}, Lcom/amap/api/mapcore/util/l;->a(IILcom/autonavi/amap/mapcore/DPoint;)V

    .line 32
    new-instance v1, Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v2, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v2, v2, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    invoke-direct {v1, v4, v5, v2, v3}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 33
    :catch_0
    move-exception v1

    .line 34
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getMapBounds(Lcom/amap/api/maps/model/LatLng;F)Lcom/amap/api/maps/model/LatLngBounds;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 144
    iget-object v1, p0, Lcom/amap/api/mapcore/util/t;->a:Lcom/amap/api/mapcore/util/l;

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 154
    :cond_0
    :goto_0
    return-object v0

    .line 149
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/t;->a:Lcom/amap/api/mapcore/util/l;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, p1, p2, v2, v3}, Lcom/amap/api/mapcore/util/l;->a(Lcom/amap/api/maps/model/LatLng;FFF)Lcom/amap/api/maps/model/LatLngBounds;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 150
    :catch_0
    move-exception v1

    .line 151
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getVisibleRegion()Lcom/amap/api/maps/model/VisibleRegion;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/t;->a:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/l;->getMapWidth()I

    move-result v0

    .line 62
    iget-object v1, p0, Lcom/amap/api/mapcore/util/t;->a:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v1}, Lcom/amap/api/mapcore/util/l;->getMapHeight()I

    move-result v2

    .line 63
    new-instance v1, Landroid/graphics/Point;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0, v1}, Lcom/amap/api/mapcore/util/t;->fromScreenLocation(Landroid/graphics/Point;)Lcom/amap/api/maps/model/LatLng;

    move-result-object v3

    .line 64
    new-instance v1, Landroid/graphics/Point;

    const/4 v4, 0x0

    invoke-direct {v1, v0, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0, v1}, Lcom/amap/api/mapcore/util/t;->fromScreenLocation(Landroid/graphics/Point;)Lcom/amap/api/maps/model/LatLng;

    move-result-object v4

    .line 65
    new-instance v1, Landroid/graphics/Point;

    const/4 v5, 0x0

    invoke-direct {v1, v5, v2}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0, v1}, Lcom/amap/api/mapcore/util/t;->fromScreenLocation(Landroid/graphics/Point;)Lcom/amap/api/maps/model/LatLng;

    move-result-object v1

    .line 66
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, v0, v2}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0, v5}, Lcom/amap/api/mapcore/util/t;->fromScreenLocation(Landroid/graphics/Point;)Lcom/amap/api/maps/model/LatLng;

    move-result-object v2

    .line 67
    invoke-static {}, Lcom/amap/api/maps/model/LatLngBounds;->builder()Lcom/amap/api/maps/model/LatLngBounds$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;

    move-result-object v0

    .line 68
    invoke-virtual {v0, v2}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->build()Lcom/amap/api/maps/model/LatLngBounds;

    move-result-object v5

    .line 69
    new-instance v0, Lcom/amap/api/maps/model/VisibleRegion;

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/maps/model/VisibleRegion;-><init>(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLngBounds;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_0
    return-object v0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 74
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toMapLenWithWin(I)F
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 97
    if-gtz p1, :cond_0

    .line 107
    :goto_0
    return v0

    .line 102
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/t;->a:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v1, p1}, Lcom/amap/api/mapcore/util/l;->a(I)F
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 103
    :catch_0
    move-exception v1

    .line 104
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public toMapLocation(Lcom/amap/api/maps/model/LatLng;)Landroid/graphics/PointF;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 79
    if-nez p1, :cond_0

    .line 92
    :goto_0
    return-object v0

    .line 84
    :cond_0
    :try_start_0
    new-instance v6, Lcom/autonavi/amap/mapcore/FPoint;

    invoke-direct {v6}, Lcom/autonavi/amap/mapcore/FPoint;-><init>()V

    .line 85
    iget-object v1, p0, Lcom/amap/api/mapcore/util/t;->a:Lcom/amap/api/mapcore/util/l;

    iget-wide v2, p1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v4, p1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-interface/range {v1 .. v6}, Lcom/amap/api/mapcore/util/l;->a(DDLcom/autonavi/amap/mapcore/FPoint;)V

    .line 87
    new-instance v1, Landroid/graphics/PointF;

    iget v2, v6, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    iget v3, v6, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 88
    :catch_0
    move-exception v1

    .line 89
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public toScreenLocation(Lcom/amap/api/maps/model/LatLng;)Landroid/graphics/Point;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 44
    if-nez p1, :cond_0

    .line 55
    :goto_0
    return-object v0

    .line 47
    :cond_0
    :try_start_0
    new-instance v6, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v6}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 48
    iget-object v1, p0, Lcom/amap/api/mapcore/util/t;->a:Lcom/amap/api/mapcore/util/l;

    iget-wide v2, p1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v4, p1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-interface/range {v1 .. v6}, Lcom/amap/api/mapcore/util/l;->b(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 50
    new-instance v1, Landroid/graphics/Point;

    iget v2, v6, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v3, v6, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 51
    :catch_0
    move-exception v1

    .line 52
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
