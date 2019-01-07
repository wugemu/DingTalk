.class public final Lcom/amap/api/maps/model/Polygon;
.super Ljava/lang/Object;
.source "Polygon.java"


# instance fields
.field private a:Lcom/autonavi/amap/mapcore/interfaces/IPolygon;


# direct methods
.method public constructor <init>(Lcom/autonavi/amap/mapcore/interfaces/IPolygon;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/amap/api/maps/model/Polygon;->a:Lcom/autonavi/amap/mapcore/interfaces/IPolygon;

    .line 35
    return-void
.end method


# virtual methods
.method public final contains(Lcom/amap/api/maps/model/LatLng;)Z
    .locals 1

    .prologue
    .line 258
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polygon;->a:Lcom/autonavi/amap/mapcore/interfaces/IPolygon;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IPolygon;->contains(Lcom/amap/api/maps/model/LatLng;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 261
    :goto_0
    return v0

    .line 259
    :catch_0
    move-exception v0

    .line 260
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 261
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 278
    instance-of v1, p1, Lcom/amap/api/maps/model/Polygon;

    if-nez v1, :cond_0

    .line 286
    :goto_0
    return v0

    .line 282
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/maps/model/Polygon;->a:Lcom/autonavi/amap/mapcore/interfaces/IPolygon;

    check-cast p1, Lcom/amap/api/maps/model/Polygon;

    iget-object v2, p1, Lcom/amap/api/maps/model/Polygon;->a:Lcom/autonavi/amap/mapcore/interfaces/IPolygon;

    .line 283
    invoke-interface {v1, v2}, Lcom/autonavi/amap/mapcore/interfaces/IPolygon;->equalsRemote(Lcom/autonavi/amap/mapcore/interfaces/IOverlay;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 284
    :catch_0
    move-exception v1

    .line 285
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public final getFillColor()I
    .locals 1

    .prologue
    .line 186
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polygon;->a:Lcom/autonavi/amap/mapcore/interfaces/IPolygon;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IPolygon;->getFillColor()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 188
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polygon;->a:Lcom/autonavi/amap/mapcore/interfaces/IPolygon;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IPolygon;->getId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 61
    :goto_0
    return-object v0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 61
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public final getPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polygon;->a:Lcom/autonavi/amap/mapcore/interfaces/IPolygon;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IPolygon;->getPoints()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 90
    :goto_0
    return-object v0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 90
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getStrokeColor()I
    .locals 1

    .prologue
    .line 157
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polygon;->a:Lcom/autonavi/amap/mapcore/interfaces/IPolygon;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IPolygon;->getStrokeColor()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 160
    :goto_0
    return v0

    .line 158
    :catch_0
    move-exception v0

    .line 159
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 160
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getStrokeWidth()F
    .locals 1

    .prologue
    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polygon;->a:Lcom/autonavi/amap/mapcore/interfaces/IPolygon;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IPolygon;->getStrokeWidth()F
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 131
    :goto_0
    return v0

    .line 129
    :catch_0
    move-exception v0

    .line 130
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 131
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getZIndex()F
    .locals 1

    .prologue
    .line 214
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polygon;->a:Lcom/autonavi/amap/mapcore/interfaces/IPolygon;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IPolygon;->getZIndex()F
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 217
    :goto_0
    return v0

    .line 215
    :catch_0
    move-exception v0

    .line 216
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 217
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 293
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polygon;->a:Lcom/autonavi/amap/mapcore/interfaces/IPolygon;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IPolygon;->hashCodeRemote()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 295
    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public final isVisible()Z
    .locals 1

    .prologue
    .line 243
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polygon;->a:Lcom/autonavi/amap/mapcore/interfaces/IPolygon;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IPolygon;->isVisible()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 245
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final remove()V
    .locals 1

    .prologue
    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polygon;->a:Lcom/autonavi/amap/mapcore/interfaces/IPolygon;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IPolygon;->remove()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :goto_0
    return-void

    .line 45
    :catch_0
    move-exception v0

    .line 46
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public final setFillColor(I)V
    .locals 1

    .prologue
    .line 172
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polygon;->a:Lcom/autonavi/amap/mapcore/interfaces/IPolygon;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IPolygon;->setFillColor(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    :goto_0
    return-void

    .line 173
    :catch_0
    move-exception v0

    .line 174
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public final setPoints(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polygon;->a:Lcom/autonavi/amap/mapcore/interfaces/IPolygon;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IPolygon;->setPoints(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 75
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public final setStrokeColor(I)V
    .locals 1

    .prologue
    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polygon;->a:Lcom/autonavi/amap/mapcore/interfaces/IPolygon;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IPolygon;->setStrokeColor(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :goto_0
    return-void

    .line 144
    :catch_0
    move-exception v0

    .line 145
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public final setStrokeWidth(F)V
    .locals 1

    .prologue
    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polygon;->a:Lcom/autonavi/amap/mapcore/interfaces/IPolygon;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IPolygon;->setStrokeWidth(F)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :goto_0
    return-void

    .line 115
    :catch_0
    move-exception v0

    .line 116
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public final setVisible(Z)V
    .locals 1

    .prologue
    .line 229
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polygon;->a:Lcom/autonavi/amap/mapcore/interfaces/IPolygon;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IPolygon;->setVisible(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :goto_0
    return-void

    .line 230
    :catch_0
    move-exception v0

    .line 231
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public final setZIndex(F)V
    .locals 1

    .prologue
    .line 200
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polygon;->a:Lcom/autonavi/amap/mapcore/interfaces/IPolygon;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IPolygon;->setZIndex(F)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    :goto_0
    return-void

    .line 201
    :catch_0
    move-exception v0

    .line 202
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
