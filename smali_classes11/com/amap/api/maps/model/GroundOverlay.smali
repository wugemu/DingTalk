.class public final Lcom/amap/api/maps/model/GroundOverlay;
.super Ljava/lang/Object;
.source "GroundOverlay.java"


# instance fields
.field private a:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;


# direct methods
.method public constructor <init>(Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/amap/api/maps/model/GroundOverlay;->a:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

    .line 30
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 288
    instance-of v1, p1, Lcom/amap/api/maps/model/GroundOverlay;

    if-nez v1, :cond_0

    .line 294
    :goto_0
    return v0

    .line 291
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/maps/model/GroundOverlay;->a:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

    check-cast p1, Lcom/amap/api/maps/model/GroundOverlay;

    iget-object v2, p1, Lcom/amap/api/maps/model/GroundOverlay;->a:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

    invoke-interface {v1, v2}, Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;->equalsRemote(Lcom/autonavi/amap/mapcore/interfaces/IOverlay;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 292
    :catch_0
    move-exception v1

    .line 293
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public final getBearing()F
    .locals 1

    .prologue
    .line 199
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->a:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;->getBearing()F
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 202
    :goto_0
    return v0

    .line 200
    :catch_0
    move-exception v0

    .line 201
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 202
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getBounds()Lcom/amap/api/maps/model/LatLngBounds;
    .locals 1

    .prologue
    .line 172
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->a:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;->getBounds()Lcom/amap/api/maps/model/LatLngBounds;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 175
    :goto_0
    return-object v0

    .line 173
    :catch_0
    move-exception v0

    .line 174
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 175
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getHeight()F
    .locals 1

    .prologue
    .line 145
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->a:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;->getHeight()F
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 148
    :goto_0
    return v0

    .line 146
    :catch_0
    move-exception v0

    .line 147
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 148
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->a:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;->getId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 53
    :goto_0
    return-object v0

    .line 51
    :catch_0
    move-exception v0

    .line 52
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 53
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public final getPosition()Lcom/amap/api/maps/model/LatLng;
    .locals 1

    .prologue
    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->a:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;->getPosition()Lcom/amap/api/maps/model/LatLng;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 80
    :goto_0
    return-object v0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 80
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getTransparency()F
    .locals 1

    .prologue
    .line 280
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->a:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;->getTransparency()F
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 283
    :goto_0
    return v0

    .line 281
    :catch_0
    move-exception v0

    .line 282
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 283
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getWidth()F
    .locals 1

    .prologue
    .line 131
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->a:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;->getWidth()F
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 134
    :goto_0
    return v0

    .line 132
    :catch_0
    move-exception v0

    .line 133
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 134
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getZIndex()F
    .locals 1

    .prologue
    .line 226
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->a:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;->getZIndex()F
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 229
    :goto_0
    return v0

    .line 227
    :catch_0
    move-exception v0

    .line 228
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 229
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->a:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final isVisible()Z
    .locals 1

    .prologue
    .line 253
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->a:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;->isVisible()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 256
    :goto_0
    return v0

    .line 254
    :catch_0
    move-exception v0

    .line 255
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 256
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final remove()V
    .locals 1

    .prologue
    .line 37
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->a:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;->remove()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :goto_0
    return-void

    .line 38
    :catch_0
    move-exception v0

    .line 39
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public final setBearing(F)V
    .locals 1

    .prologue
    .line 186
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->a:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;->setBearing(F)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :goto_0
    return-void

    .line 187
    :catch_0
    move-exception v0

    .line 188
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public final setDimensions(F)V
    .locals 1

    .prologue
    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->a:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;->setDimensions(F)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 93
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public final setDimensions(FF)V
    .locals 1

    .prologue
    .line 118
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->a:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

    invoke-interface {v0, p1, p2}, Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;->setDimensions(FF)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_0
    return-void

    .line 119
    :catch_0
    move-exception v0

    .line 120
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public final setImage(Lcom/amap/api/maps/model/BitmapDescriptor;)V
    .locals 1

    .prologue
    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->a:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;->setImage(Lcom/amap/api/maps/model/BitmapDescriptor;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :goto_0
    return-void

    .line 105
    :catch_0
    move-exception v0

    .line 106
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public final setPosition(Lcom/amap/api/maps/model/LatLng;)V
    .locals 1

    .prologue
    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->a:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;->setPosition(Lcom/amap/api/maps/model/LatLng;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :goto_0
    return-void

    .line 65
    :catch_0
    move-exception v0

    .line 66
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public final setPositionFromBounds(Lcom/amap/api/maps/model/LatLngBounds;)V
    .locals 1

    .prologue
    .line 159
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->a:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;->setPositionFromBounds(Lcom/amap/api/maps/model/LatLngBounds;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :goto_0
    return-void

    .line 160
    :catch_0
    move-exception v0

    .line 161
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public final setTransparency(F)V
    .locals 1

    .prologue
    .line 267
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->a:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;->setTransparency(F)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    :goto_0
    return-void

    .line 268
    :catch_0
    move-exception v0

    .line 269
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public final setVisible(Z)V
    .locals 1

    .prologue
    .line 240
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->a:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;->setVisible(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    :goto_0
    return-void

    .line 241
    :catch_0
    move-exception v0

    .line 242
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public final setZIndex(F)V
    .locals 1

    .prologue
    .line 213
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->a:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;->setZIndex(F)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :goto_0
    return-void

    .line 214
    :catch_0
    move-exception v0

    .line 215
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
