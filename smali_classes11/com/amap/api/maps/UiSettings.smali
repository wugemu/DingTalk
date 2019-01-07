.class public final Lcom/amap/api/maps/UiSettings;
.super Ljava/lang/Object;
.source "UiSettings.java"


# instance fields
.field private final a:Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;


# direct methods
.method public constructor <init>(Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/amap/api/maps/UiSettings;->a:Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;

    .line 19
    return-void
.end method


# virtual methods
.method public final getLogoMarginRate(I)F
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 395
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/UiSettings;->a:Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;->getLogoMarginRate(I)F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 396
    :catch_0
    move-exception v0

    .line 397
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final getLogoPosition()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 330
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/UiSettings;->a:Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;->getLogoPosition()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 331
    :catch_0
    move-exception v0

    .line 332
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final getZoomPosition()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 204
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/UiSettings;->a:Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;->getZoomPosition()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 205
    :catch_0
    move-exception v0

    .line 206
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final isCompassEnabled()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 246
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/UiSettings;->a:Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;->isCompassEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 247
    :catch_0
    move-exception v0

    .line 248
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final isGestureScaleByMapCenter()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 464
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/UiSettings;->a:Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;->isGestureScaleByMapCenter()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 465
    :catch_0
    move-exception v0

    .line 466
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final isIndoorSwitchEnabled()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 345
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/UiSettings;->a:Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;->isIndoorSwitchEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 346
    :catch_0
    move-exception v0

    .line 347
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final isMyLocationButtonEnabled()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 260
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/UiSettings;->a:Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;->isMyLocationButtonEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 261
    :catch_0
    move-exception v0

    .line 262
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final isRotateGesturesEnabled()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 316
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/UiSettings;->a:Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;->isRotateGesturesEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 317
    :catch_0
    move-exception v0

    .line 318
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final isScaleControlsEnabled()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 218
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/UiSettings;->a:Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;->isScaleControlsEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 219
    :catch_0
    move-exception v0

    .line 220
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final isScrollGesturesEnabled()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 274
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/UiSettings;->a:Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;->isScrollGesturesEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 275
    :catch_0
    move-exception v0

    .line 276
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final isTiltGesturesEnabled()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 302
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/UiSettings;->a:Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;->isTiltGesturesEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 303
    :catch_0
    move-exception v0

    .line 304
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final isZoomControlsEnabled()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 232
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/UiSettings;->a:Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;->isZoomControlsEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 233
    :catch_0
    move-exception v0

    .line 234
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final isZoomGesturesEnabled()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 288
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/UiSettings;->a:Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;->isZoomGesturesEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 289
    :catch_0
    move-exception v0

    .line 290
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setAllGesturesEnabled(Z)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 162
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/UiSettings;->a:Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;->setAllGesturesEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    return-void

    .line 163
    :catch_0
    move-exception v0

    .line 164
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setCompassEnabled(Z)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/UiSettings;->a:Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;->setCompassEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setGestureScaleByMapCenter(Z)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 450
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/UiSettings;->a:Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;->setGestureScaleByMapCenter(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 453
    return-void

    .line 451
    :catch_0
    move-exception v0

    .line 452
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setIndoorSwitchEnabled(Z)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 360
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/UiSettings;->a:Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;->setIndoorSwitchEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    return-void

    .line 361
    :catch_0
    move-exception v0

    .line 362
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setLogoBottomMargin(I)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 421
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/UiSettings;->a:Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;->setLogoBottomMargin(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 424
    return-void

    .line 422
    :catch_0
    move-exception v0

    .line 423
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setLogoLeftMargin(I)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 408
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/UiSettings;->a:Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;->setLogoLeftMargin(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 411
    return-void

    .line 409
    :catch_0
    move-exception v0

    .line 410
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setLogoMarginRate(IF)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 377
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/UiSettings;->a:Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;

    invoke-interface {v0, p1, p2}, Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;->setLogoMarginRate(IF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    return-void

    .line 378
    :catch_0
    move-exception v0

    .line 379
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setLogoPosition(I)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 176
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/UiSettings;->a:Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;->setLogoPosition(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    return-void

    .line 177
    :catch_0
    move-exception v0

    .line 178
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setMyLocationButtonEnabled(Z)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/UiSettings;->a:Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;->setMyLocationButtonEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    return-void

    .line 79
    :catch_0
    move-exception v0

    .line 80
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setRotateGesturesEnabled(Z)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 147
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/UiSettings;->a:Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;->setRotateGesturesEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    return-void

    .line 148
    :catch_0
    move-exception v0

    .line 149
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setScaleControlsEnabled(Z)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 29
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/UiSettings;->a:Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;->setScaleControlsEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    return-void

    .line 30
    :catch_0
    move-exception v0

    .line 31
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setScrollGesturesEnabled(Z)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/UiSettings;->a:Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;->setScrollGesturesEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 97
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setTiltGesturesEnabled(Z)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/UiSettings;->a:Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;->setTiltGesturesEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    return-void

    .line 130
    :catch_0
    move-exception v0

    .line 131
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setZoomControlsEnabled(Z)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/UiSettings;->a:Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;->setZoomControlsEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    return-void

    .line 44
    :catch_0
    move-exception v0

    .line 45
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setZoomGesturesEnabled(Z)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/UiSettings;->a:Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;->setZoomGesturesEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    return-void

    .line 113
    :catch_0
    move-exception v0

    .line 114
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setZoomInByScreenCenter(Z)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 436
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/UiSettings;->a:Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;->setZoomInByScreenCenter(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 439
    return-void

    .line 437
    :catch_0
    move-exception v0

    .line 438
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setZoomPosition(I)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 190
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/UiSettings;->a:Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;->setZoomPosition(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    return-void

    .line 191
    :catch_0
    move-exception v0

    .line 192
    new-instance v1, Lcom/amap/api/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method
