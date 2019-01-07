.class public Lcom/amap/api/maps/model/NavigateArrow;
.super Ljava/lang/Object;
.source "NavigateArrow.java"


# instance fields
.field private final a:Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;


# direct methods
.method public constructor <init>(Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/amap/api/maps/model/NavigateArrow;->a:Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;

    .line 33
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

    .line 243
    instance-of v1, p1, Lcom/amap/api/maps/model/NavigateArrow;

    if-nez v1, :cond_0

    .line 250
    :goto_0
    return v0

    .line 246
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/maps/model/NavigateArrow;->a:Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;

    check-cast p1, Lcom/amap/api/maps/model/NavigateArrow;

    iget-object v2, p1, Lcom/amap/api/maps/model/NavigateArrow;->a:Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;

    .line 247
    invoke-interface {v1, v2}, Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;->equalsRemote(Lcom/autonavi/amap/mapcore/interfaces/IOverlay;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 248
    :catch_0
    move-exception v1

    .line 249
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/NavigateArrow;->a:Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;->getId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 59
    :goto_0
    return-object v0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 59
    const-string/jumbo v0, ""

    goto :goto_0
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
    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/NavigateArrow;->a:Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;->getPoints()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 89
    :goto_0
    return-object v0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 89
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSideColor()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 175
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/NavigateArrow;->a:Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;->getSideColor()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 178
    :goto_0
    return v0

    .line 176
    :catch_0
    move-exception v0

    .line 177
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 178
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTopColor()I
    .locals 1

    .prologue
    .line 144
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/NavigateArrow;->a:Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;->getTopColor()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 147
    :goto_0
    return v0

    .line 145
    :catch_0
    move-exception v0

    .line 146
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 147
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWidth()F
    .locals 1

    .prologue
    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/NavigateArrow;->a:Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;->getWidth()F
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 118
    :goto_0
    return v0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 118
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getZIndex()F
    .locals 1

    .prologue
    .line 204
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/NavigateArrow;->a:Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;->getZIndex()F
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 207
    :goto_0
    return v0

    .line 205
    :catch_0
    move-exception v0

    .line 206
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 207
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 257
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/NavigateArrow;->a:Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;->hashCodeRemote()I
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
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 234
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/NavigateArrow;->a:Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;->isVisible()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 237
    :goto_0
    return v0

    .line 235
    :catch_0
    move-exception v0

    .line 236
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 237
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 42
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/NavigateArrow;->a:Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;->remove()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :goto_0
    return-void

    .line 43
    :catch_0
    move-exception v0

    .line 44
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
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
    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/NavigateArrow;->a:Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;->setPoints(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_0
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 73
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setSideColor(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 160
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/NavigateArrow;->a:Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;->setSideColor(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :goto_0
    return-void

    .line 161
    :catch_0
    move-exception v0

    .line 162
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setTopColor(I)V
    .locals 1

    .prologue
    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/NavigateArrow;->a:Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;->setTopColor(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :goto_0
    return-void

    .line 131
    :catch_0
    move-exception v0

    .line 132
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setVisible(Z)V
    .locals 1

    .prologue
    .line 220
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/NavigateArrow;->a:Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;->setVisible(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    :goto_0
    return-void

    .line 221
    :catch_0
    move-exception v0

    .line 222
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setWidth(F)V
    .locals 1

    .prologue
    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/NavigateArrow;->a:Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;->setWidth(F)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :goto_0
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 103
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setZIndex(F)V
    .locals 1

    .prologue
    .line 190
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/NavigateArrow;->a:Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;->setZIndex(F)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :goto_0
    return-void

    .line 191
    :catch_0
    move-exception v0

    .line 192
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
