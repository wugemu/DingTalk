.class public final Lcom/amap/api/maps/model/TileOverlay;
.super Ljava/lang/Object;
.source "TileOverlay.java"


# instance fields
.field private a:Lcom/autonavi/amap/mapcore/interfaces/ITileOverlay;


# direct methods
.method public constructor <init>(Lcom/autonavi/amap/mapcore/interfaces/ITileOverlay;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/amap/api/maps/model/TileOverlay;->a:Lcom/autonavi/amap/mapcore/interfaces/ITileOverlay;

    .line 22
    return-void
.end method


# virtual methods
.method public final clearTileCache()V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/amap/api/maps/model/TileOverlay;->a:Lcom/autonavi/amap/mapcore/interfaces/ITileOverlay;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/ITileOverlay;->clearTileCache()V

    .line 40
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 93
    instance-of v0, p1, Lcom/amap/api/maps/model/TileOverlay;

    if-nez v0, :cond_0

    .line 94
    const/4 v0, 0x0

    .line 96
    :goto_0
    return v0

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/model/TileOverlay;->a:Lcom/autonavi/amap/mapcore/interfaces/ITileOverlay;

    check-cast p1, Lcom/amap/api/maps/model/TileOverlay;

    iget-object v1, p1, Lcom/amap/api/maps/model/TileOverlay;->a:Lcom/autonavi/amap/mapcore/interfaces/ITileOverlay;

    .line 96
    invoke-interface {v0, v1}, Lcom/autonavi/amap/mapcore/interfaces/ITileOverlay;->equalsRemote(Lcom/autonavi/amap/mapcore/interfaces/ITileOverlay;)Z

    move-result v0

    goto :goto_0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/amap/api/maps/model/TileOverlay;->a:Lcom/autonavi/amap/mapcore/interfaces/ITileOverlay;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/ITileOverlay;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getZIndex()F
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/amap/api/maps/model/TileOverlay;->a:Lcom/autonavi/amap/mapcore/interfaces/ITileOverlay;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/ITileOverlay;->getZIndex()F

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/amap/api/maps/model/TileOverlay;->a:Lcom/autonavi/amap/mapcore/interfaces/ITileOverlay;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/ITileOverlay;->hashCodeRemote()I

    move-result v0

    return v0
.end method

.method public final isVisible()Z
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/amap/api/maps/model/TileOverlay;->a:Lcom/autonavi/amap/mapcore/interfaces/ITileOverlay;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/ITileOverlay;->isVisible()Z

    move-result v0

    return v0
.end method

.method public final remove()V
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/amap/api/maps/model/TileOverlay;->a:Lcom/autonavi/amap/mapcore/interfaces/ITileOverlay;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/ITileOverlay;->remove()V

    .line 31
    return-void
.end method

.method public final setVisible(Z)V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/amap/api/maps/model/TileOverlay;->a:Lcom/autonavi/amap/mapcore/interfaces/ITileOverlay;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/ITileOverlay;->setVisible(Z)V

    .line 80
    return-void
.end method

.method public final setZIndex(F)V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/amap/api/maps/model/TileOverlay;->a:Lcom/autonavi/amap/mapcore/interfaces/ITileOverlay;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/ITileOverlay;->setZIndex(F)V

    .line 60
    return-void
.end method
