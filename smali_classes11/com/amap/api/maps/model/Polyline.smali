.class public Lcom/amap/api/maps/model/Polyline;
.super Ljava/lang/Object;
.source "Polyline.java"


# instance fields
.field private final a:Lcom/autonavi/amap/mapcore/interfaces/IPolyline;


# direct methods
.method public constructor <init>(Lcom/autonavi/amap/mapcore/interfaces/IPolyline;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/amap/api/maps/model/Polyline;->a:Lcom/autonavi/amap/mapcore/interfaces/IPolyline;

    .line 34
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 260
    instance-of v1, p1, Lcom/amap/api/maps/model/Polyline;

    if-nez v1, :cond_0

    .line 267
    :goto_0
    return v0

    .line 263
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/maps/model/Polyline;->a:Lcom/autonavi/amap/mapcore/interfaces/IPolyline;

    check-cast p1, Lcom/amap/api/maps/model/Polyline;

    iget-object v2, p1, Lcom/amap/api/maps/model/Polyline;->a:Lcom/autonavi/amap/mapcore/interfaces/IPolyline;

    .line 264
    invoke-interface {v1, v2}, Lcom/autonavi/amap/mapcore/interfaces/IPolyline;->equalsRemote(Lcom/autonavi/amap/mapcore/interfaces/IOverlay;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 265
    :catch_0
    move-exception v1

    .line 266
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 193
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polyline;->a:Lcom/autonavi/amap/mapcore/interfaces/IPolyline;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IPolyline;->getColor()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 196
    :goto_0
    return v0

    .line 194
    :catch_0
    move-exception v0

    .line 195
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 196
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polyline;->a:Lcom/autonavi/amap/mapcore/interfaces/IPolyline;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IPolyline;->getId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 60
    :goto_0
    return-object v0

    .line 58
    :catch_0
    move-exception v0

    .line 59
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 60
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getNearestLatLng(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLng;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/amap/api/maps/model/Polyline;->a:Lcom/autonavi/amap/mapcore/interfaces/IPolyline;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IPolyline;->getNearestLatLng(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLng;

    move-result-object v0

    return-object v0
.end method

.method public getOptions()Lcom/amap/api/maps/model/PolylineOptions;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/amap/api/maps/model/Polyline;->a:Lcom/autonavi/amap/mapcore/interfaces/IPolyline;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IPolyline;->getOptions()Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object v0

    return-object v0
.end method

.method public getPoints()Ljava/util/List;
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
    iget-object v0, p0, Lcom/amap/api/maps/model/Polyline;->a:Lcom/autonavi/amap/mapcore/interfaces/IPolyline;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IPolyline;->getPoints()Ljava/util/List;
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

.method public getWidth()F
    .locals 1

    .prologue
    .line 164
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polyline;->a:Lcom/autonavi/amap/mapcore/interfaces/IPolyline;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IPolyline;->getWidth()F
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 167
    :goto_0
    return v0

    .line 165
    :catch_0
    move-exception v0

    .line 166
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 167
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getZIndex()F
    .locals 1

    .prologue
    .line 222
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polyline;->a:Lcom/autonavi/amap/mapcore/interfaces/IPolyline;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IPolyline;->getZIndex()F
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 225
    :goto_0
    return v0

    .line 223
    :catch_0
    move-exception v0

    .line 224
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 225
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 274
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polyline;->a:Lcom/autonavi/amap/mapcore/interfaces/IPolyline;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IPolyline;->hashCodeRemote()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 277
    :goto_0
    return v0

    .line 275
    :catch_0
    move-exception v0

    .line 276
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 277
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public isDottedLine()Z
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/amap/api/maps/model/Polyline;->a:Lcom/autonavi/amap/mapcore/interfaces/IPolyline;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IPolyline;->isDottedLine()Z

    move-result v0

    return v0
.end method

.method public isGeodesic()Z
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/amap/api/maps/model/Polyline;->a:Lcom/autonavi/amap/mapcore/interfaces/IPolyline;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IPolyline;->isGeodesic()Z

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 251
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polyline;->a:Lcom/autonavi/amap/mapcore/interfaces/IPolyline;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IPolyline;->isVisible()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 254
    :goto_0
    return v0

    .line 252
    :catch_0
    move-exception v0

    .line 253
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 254
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polyline;->a:Lcom/autonavi/amap/mapcore/interfaces/IPolyline;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IPolyline;->remove()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :goto_0
    return-void

    .line 44
    :catch_0
    move-exception v0

    .line 45
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setAboveMaskLayer(Z)V
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/amap/api/maps/model/Polyline;->a:Lcom/autonavi/amap/mapcore/interfaces/IPolyline;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IPolyline;->setAboveMaskLayer(Z)V

    .line 315
    return-void
.end method

.method public setColor(I)V
    .locals 1

    .prologue
    .line 179
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polyline;->a:Lcom/autonavi/amap/mapcore/interfaces/IPolyline;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IPolyline;->setColor(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :goto_0
    return-void

    .line 180
    :catch_0
    move-exception v0

    .line 181
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setCustomTexture(Lcom/amap/api/maps/model/BitmapDescriptor;)V
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/amap/api/maps/model/Polyline;->a:Lcom/autonavi/amap/mapcore/interfaces/IPolyline;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IPolyline;->setCustomTexture(Lcom/amap/api/maps/model/BitmapDescriptor;)V

    .line 324
    return-void
.end method

.method public setDottedLine(Z)V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/amap/api/maps/model/Polyline;->a:Lcom/autonavi/amap/mapcore/interfaces/IPolyline;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IPolyline;->setDottedLine(Z)V

    .line 130
    return-void
.end method

.method public setGeodesic(Z)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polyline;->a:Lcom/autonavi/amap/mapcore/interfaces/IPolyline;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IPolyline;->isGeodesic()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/amap/api/maps/model/Polyline;->getPoints()Ljava/util/List;

    move-result-object v0

    .line 104
    iget-object v1, p0, Lcom/amap/api/maps/model/Polyline;->a:Lcom/autonavi/amap/mapcore/interfaces/IPolyline;

    invoke-interface {v1, p1}, Lcom/autonavi/amap/mapcore/interfaces/IPolyline;->setGeodesic(Z)V

    .line 105
    invoke-virtual {p0, v0}, Lcom/amap/api/maps/model/Polyline;->setPoints(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 107
    :catch_0
    move-exception v0

    .line 108
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setOptions(Lcom/amap/api/maps/model/PolylineOptions;)V
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/amap/api/maps/model/Polyline;->a:Lcom/autonavi/amap/mapcore/interfaces/IPolyline;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IPolyline;->setOptions(Lcom/amap/api/maps/model/PolylineOptions;)V

    .line 334
    return-void
.end method

.method public setPoints(Ljava/util/List;)V
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
    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polyline;->a:Lcom/autonavi/amap/mapcore/interfaces/IPolyline;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IPolyline;->setPoints(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :goto_0
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 74
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setTransparency(F)V
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/amap/api/maps/model/Polyline;->a:Lcom/autonavi/amap/mapcore/interfaces/IPolyline;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IPolyline;->setTransparency(F)V

    .line 304
    return-void
.end method

.method public setVisible(Z)V
    .locals 1

    .prologue
    .line 237
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polyline;->a:Lcom/autonavi/amap/mapcore/interfaces/IPolyline;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IPolyline;->setVisible(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    :goto_0
    return-void

    .line 238
    :catch_0
    move-exception v0

    .line 239
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setWidth(F)V
    .locals 1

    .prologue
    .line 150
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polyline;->a:Lcom/autonavi/amap/mapcore/interfaces/IPolyline;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IPolyline;->setWidth(F)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :goto_0
    return-void

    .line 151
    :catch_0
    move-exception v0

    .line 152
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setZIndex(F)V
    .locals 1

    .prologue
    .line 208
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Polyline;->a:Lcom/autonavi/amap/mapcore/interfaces/IPolyline;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IPolyline;->setZIndex(F)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    :goto_0
    return-void

    .line 209
    :catch_0
    move-exception v0

    .line 210
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
