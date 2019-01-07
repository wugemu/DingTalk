.class public final Lcom/amap/api/maps/model/Circle;
.super Ljava/lang/Object;
.source "Circle.java"


# instance fields
.field private final a:Lcom/autonavi/amap/mapcore/interfaces/ICircle;


# direct methods
.method public constructor <init>(Lcom/autonavi/amap/mapcore/interfaces/ICircle;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/amap/api/maps/model/Circle;->a:Lcom/autonavi/amap/mapcore/interfaces/ICircle;

    .line 28
    return-void
.end method


# virtual methods
.method public final contains(Lcom/amap/api/maps/model/LatLng;)Z
    .locals 1

    .prologue
    .line 294
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Circle;->a:Lcom/autonavi/amap/mapcore/interfaces/ICircle;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/ICircle;->contains(Lcom/amap/api/maps/model/LatLng;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 297
    :goto_0
    return v0

    .line 295
    :catch_0
    move-exception v0

    .line 296
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 297
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

    .line 265
    instance-of v1, p1, Lcom/amap/api/maps/model/Circle;

    if-nez v1, :cond_0

    .line 272
    :goto_0
    return v0

    .line 268
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/maps/model/Circle;->a:Lcom/autonavi/amap/mapcore/interfaces/ICircle;

    check-cast p1, Lcom/amap/api/maps/model/Circle;

    iget-object v2, p1, Lcom/amap/api/maps/model/Circle;->a:Lcom/autonavi/amap/mapcore/interfaces/ICircle;

    .line 269
    invoke-interface {v1, v2}, Lcom/autonavi/amap/mapcore/interfaces/ICircle;->equalsRemote(Lcom/autonavi/amap/mapcore/interfaces/IOverlay;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 270
    :catch_0
    move-exception v1

    .line 271
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public final getCenter()Lcom/amap/api/maps/model/LatLng;
    .locals 1

    .prologue
    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Circle;->a:Lcom/autonavi/amap/mapcore/interfaces/ICircle;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/ICircle;->getCenter()Lcom/amap/api/maps/model/LatLng;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 84
    :goto_0
    return-object v0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 84
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getFillColor()I
    .locals 1

    .prologue
    .line 199
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Circle;->a:Lcom/autonavi/amap/mapcore/interfaces/ICircle;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/ICircle;->getFillColor()I
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

.method public final getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Circle;->a:Lcom/autonavi/amap/mapcore/interfaces/ICircle;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/ICircle;->getId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 54
    :goto_0
    return-object v0

    .line 52
    :catch_0
    move-exception v0

    .line 53
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 54
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public final getRadius()D
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Circle;->a:Lcom/autonavi/amap/mapcore/interfaces/ICircle;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/ICircle;->getRadius()D
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 114
    :goto_0
    return-wide v0

    .line 112
    :catch_0
    move-exception v0

    .line 113
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 114
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public final getStrokeColor()I
    .locals 1

    .prologue
    .line 170
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Circle;->a:Lcom/autonavi/amap/mapcore/interfaces/ICircle;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/ICircle;->getStrokeColor()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 173
    :goto_0
    return v0

    .line 171
    :catch_0
    move-exception v0

    .line 172
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 173
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getStrokeWidth()F
    .locals 1

    .prologue
    .line 141
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Circle;->a:Lcom/autonavi/amap/mapcore/interfaces/ICircle;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/ICircle;->getStrokeWidth()F
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 144
    :goto_0
    return v0

    .line 142
    :catch_0
    move-exception v0

    .line 143
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 144
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getZIndex()F
    .locals 1

    .prologue
    .line 228
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Circle;->a:Lcom/autonavi/amap/mapcore/interfaces/ICircle;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/ICircle;->getZIndex()F
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 231
    :goto_0
    return v0

    .line 229
    :catch_0
    move-exception v0

    .line 230
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 231
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 278
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Circle;->a:Lcom/autonavi/amap/mapcore/interfaces/ICircle;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/ICircle;->hashCodeRemote()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 281
    :goto_0
    return v0

    .line 279
    :catch_0
    move-exception v0

    .line 280
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 281
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public final isVisible()Z
    .locals 1

    .prologue
    .line 257
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Circle;->a:Lcom/autonavi/amap/mapcore/interfaces/ICircle;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/ICircle;->isVisible()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 260
    :goto_0
    return v0

    .line 258
    :catch_0
    move-exception v0

    .line 259
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 260
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final remove()V
    .locals 1

    .prologue
    .line 37
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Circle;->a:Lcom/autonavi/amap/mapcore/interfaces/ICircle;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/ICircle;->remove()V
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

.method public final setCenter(Lcom/amap/api/maps/model/LatLng;)V
    .locals 1

    .prologue
    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Circle;->a:Lcom/autonavi/amap/mapcore/interfaces/ICircle;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/ICircle;->setCenter(Lcom/amap/api/maps/model/LatLng;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v0

    .line 69
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public final setFillColor(I)V
    .locals 1

    .prologue
    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Circle;->a:Lcom/autonavi/amap/mapcore/interfaces/ICircle;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/ICircle;->setFillColor(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :goto_0
    return-void

    .line 186
    :catch_0
    move-exception v0

    .line 187
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public final setRadius(D)V
    .locals 1

    .prologue
    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Circle;->a:Lcom/autonavi/amap/mapcore/interfaces/ICircle;

    invoke-interface {v0, p1, p2}, Lcom/autonavi/amap/mapcore/interfaces/ICircle;->setRadius(D)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :goto_0
    return-void

    .line 98
    :catch_0
    move-exception v0

    .line 99
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public final setStrokeColor(I)V
    .locals 1

    .prologue
    .line 156
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Circle;->a:Lcom/autonavi/amap/mapcore/interfaces/ICircle;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/ICircle;->setStrokeColor(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :goto_0
    return-void

    .line 157
    :catch_0
    move-exception v0

    .line 158
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public final setStrokeWidth(F)V
    .locals 1

    .prologue
    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Circle;->a:Lcom/autonavi/amap/mapcore/interfaces/ICircle;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/ICircle;->setStrokeWidth(F)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :goto_0
    return-void

    .line 128
    :catch_0
    move-exception v0

    .line 129
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public final setVisible(Z)V
    .locals 1

    .prologue
    .line 243
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Circle;->a:Lcom/autonavi/amap/mapcore/interfaces/ICircle;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/ICircle;->setVisible(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    :goto_0
    return-void

    .line 244
    :catch_0
    move-exception v0

    .line 245
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public final setZIndex(F)V
    .locals 1

    .prologue
    .line 214
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Circle;->a:Lcom/autonavi/amap/mapcore/interfaces/ICircle;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/ICircle;->setZIndex(F)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    :goto_0
    return-void

    .line 215
    :catch_0
    move-exception v0

    .line 216
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
