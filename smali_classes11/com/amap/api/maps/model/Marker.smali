.class public final Lcom/amap/api/maps/model/Marker;
.super Ljava/lang/Object;
.source "Marker.java"


# instance fields
.field private a:Lcom/autonavi/amap/mapcore/interfaces/IMarker;


# direct methods
.method public constructor <init>(Lcom/autonavi/amap/mapcore/interfaces/IMarker;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/amap/api/maps/model/Marker;->a:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    .line 32
    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 1

    .prologue
    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->a:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->a:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->destroy()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 125
    :catch_0
    move-exception v0

    .line 126
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 389
    instance-of v1, p1, Lcom/amap/api/maps/model/Marker;

    if-nez v1, :cond_0

    .line 397
    :goto_0
    return v0

    .line 393
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/maps/model/Marker;->a:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    check-cast p1, Lcom/amap/api/maps/model/Marker;

    iget-object v2, p1, Lcom/amap/api/maps/model/Marker;->a:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    .line 394
    invoke-interface {v1, v2}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->equalsRemote(Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 395
    :catch_0
    move-exception v1

    .line 396
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public final getAlpha()F
    .locals 1

    .prologue
    .line 589
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->a:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->getIMarkerAction()Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;

    move-result-object v0

    .line 590
    if-eqz v0, :cond_0

    .line 591
    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;->getAlpha()F

    move-result v0

    .line 593
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public final getAnchorU()F
    .locals 1

    .prologue
    .line 820
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->a:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->getAnchorU()F

    move-result v0

    return v0
.end method

.method public final getAnchorV()F
    .locals 1

    .prologue
    .line 831
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->a:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->getAnchorV()F

    move-result v0

    return v0
.end method

.method public final getDisplayLevel()I
    .locals 1

    .prologue
    .line 618
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->a:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->getIMarkerAction()Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;

    move-result-object v0

    .line 619
    if-eqz v0, :cond_0

    .line 620
    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;->getDisplayLevel()I

    move-result v0

    .line 622
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x5

    goto :goto_0
.end method

.method public final getGeoPoint()Lcom/autonavi/amap/mapcore/IPoint;
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->a:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->getGeoPoint()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v0

    return-object v0
.end method

.method public final getIcons()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/maps/model/BitmapDescriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->a:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->getIcons()Ljava/util/ArrayList;
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

.method public final getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->a:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->getId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 141
    :goto_0
    return-object v0

    .line 139
    :catch_0
    move-exception v0

    .line 140
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 141
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public final getObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->a:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->getObject()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getOptions()Lcom/amap/api/maps/model/MarkerOptions;
    .locals 1

    .prologue
    .line 632
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->a:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->getIMarkerAction()Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;

    move-result-object v0

    .line 633
    if-eqz v0, :cond_0

    .line 634
    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;->getOptions()Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v0

    .line 636
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getPeriod()I
    .locals 1

    .prologue
    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->a:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->getPeriod()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 59
    :goto_0
    return v0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 59
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getPosition()Lcom/amap/api/maps/model/LatLng;
    .locals 1

    .prologue
    .line 199
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->a:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->getPosition()Lcom/amap/api/maps/model/LatLng;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 202
    :goto_0
    return-object v0

    .line 200
    :catch_0
    move-exception v0

    .line 201
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 202
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getRotateAngle()F
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->a:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->getRotateAngle()F

    move-result v0

    return v0
.end method

.method public final getSnippet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 257
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->a:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->getSnippet()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 260
    :goto_0
    return-object v0

    .line 258
    :catch_0
    move-exception v0

    .line 259
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 260
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 228
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->a:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->getTitle()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 231
    :goto_0
    return-object v0

    .line 229
    :catch_0
    move-exception v0

    .line 230
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 231
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public final getZIndex()F
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->a:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->getZIndex()F

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->a:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->hashCodeRemote()I

    move-result v0

    return v0
.end method

.method public final hideInfoWindow()V
    .locals 1

    .prologue
    .line 341
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->a:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->hideInfoWindow()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    :goto_0
    return-void

    .line 342
    :catch_0
    move-exception v0

    .line 343
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public final isClickable()Z
    .locals 1

    .prologue
    .line 646
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->a:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->getIMarkerAction()Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;

    move-result-object v0

    .line 647
    if-eqz v0, :cond_0

    .line 648
    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;->isClickable()Z

    move-result v0

    .line 650
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isDraggable()Z
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->a:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->isDraggable()Z

    move-result v0

    return v0
.end method

.method public final isFlat()Z
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->a:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->isFlat()Z

    move-result v0

    return v0
.end method

.method public final isInfoWindowAutoOverturn()Z
    .locals 1

    .prologue
    .line 660
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->a:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->getIMarkerAction()Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;

    move-result-object v0

    .line 661
    if-eqz v0, :cond_0

    .line 662
    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;->isInfoWindowAutoOverturn()Z

    move-result v0

    .line 664
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isInfoWindowEnable()Z
    .locals 1

    .prologue
    .line 673
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->a:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->getIMarkerAction()Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;

    move-result-object v0

    .line 674
    if-eqz v0, :cond_0

    .line 675
    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;->isInfoWindowEnable()Z

    move-result v0

    .line 677
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isInfoWindowShown()Z
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->a:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->isInfoWindowShown()Z

    move-result v0

    return v0
.end method

.method public final isPerspective()Z
    .locals 1

    .prologue
    .line 169
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->a:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->isPerspective()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 172
    :goto_0
    return v0

    .line 170
    :catch_0
    move-exception v0

    .line 171
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 172
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isVisible()Z
    .locals 1

    .prologue
    .line 379
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->a:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->isVisible()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 382
    :goto_0
    return v0

    .line 380
    :catch_0
    move-exception v0

    .line 381
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 382
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final remove()V
    .locals 1

    .prologue
    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->a:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->remove()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :goto_0
    return-void

    .line 101
    :catch_0
    move-exception v0

    .line 102
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public final setAlpha(F)V
    .locals 1

    .prologue
    .line 603
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->a:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->getIMarkerAction()Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;

    move-result-object v0

    .line 604
    if-eqz v0, :cond_0

    .line 605
    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;->setAlpha(F)V

    .line 607
    :cond_0
    return-void
.end method

.method public final setAnchor(FF)V
    .locals 1

    .prologue
    .line 291
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->a:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {v0, p1, p2}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->setAnchor(FF)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    :goto_0
    return-void

    .line 292
    :catch_0
    move-exception v0

    .line 293
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public final setAnimation(Lcom/amap/api/maps/model/animation/Animation;)V
    .locals 1

    .prologue
    .line 545
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->a:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->setAnimation(Lcom/amap/api/maps/model/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 553
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final setAnimationListener(Lcom/amap/api/maps/model/animation/Animation$AnimationListener;)V
    .locals 1

    .prologue
    .line 580
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->a:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->setAnimationListener(Lcom/amap/api/maps/model/animation/Animation$AnimationListener;)V

    .line 581
    return-void
.end method

.method public final setAutoOverturnInfoWindow(Z)V
    .locals 1

    .prologue
    .line 716
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->a:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->getIMarkerAction()Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;

    move-result-object v0

    .line 717
    if-eqz v0, :cond_0

    .line 718
    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;->setAutoOverturnInfoWindow(Z)V

    .line 721
    :cond_0
    return-void
.end method

.method public final setBelowMaskLayer(Z)V
    .locals 1

    .prologue
    .line 807
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->a:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->setBelowMaskLayer(Z)V

    .line 808
    return-void
.end method

.method public final setClickable(Z)V
    .locals 1

    .prologue
    .line 730
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->a:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->getIMarkerAction()Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;

    move-result-object v0

    .line 731
    if-eqz v0, :cond_0

    .line 732
    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;->setClickable(Z)V

    .line 735
    :cond_0
    return-void
.end method

.method public final setDisplayLevel(I)V
    .locals 1

    .prologue
    .line 748
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->a:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->getIMarkerAction()Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;

    move-result-object v0

    .line 749
    if-eqz v0, :cond_0

    .line 750
    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;->setDisplayLevel(I)V

    .line 753
    :cond_0
    return-void
.end method

.method public final setDraggable(Z)V
    .locals 1

    .prologue
    .line 305
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->a:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->setDraggable(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    :goto_0
    return-void

    .line 306
    :catch_0
    move-exception v0

    .line 307
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public final setFixingPointEnable(Z)V
    .locals 1

    .prologue
    .line 763
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->a:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->getIMarkerAction()Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;

    move-result-object v0

    .line 764
    if-eqz v0, :cond_0

    .line 765
    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;->setFixingPointEnable(Z)V

    .line 768
    :cond_0
    return-void
.end method

.method public final setFlat(Z)V
    .locals 1

    .prologue
    .line 489
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->a:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->setFlat(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 493
    :goto_0
    return-void

    .line 490
    :catch_0
    move-exception v0

    .line 491
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public final setGeoPoint(Lcom/autonavi/amap/mapcore/IPoint;)V
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->a:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->setGeoPoint(Lcom/autonavi/amap/mapcore/IPoint;)V

    .line 472
    return-void
.end method

.method public final setIcon(Lcom/amap/api/maps/model/BitmapDescriptor;)V
    .locals 1

    .prologue
    .line 272
    if-eqz p1, :cond_0

    .line 273
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->a:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->setIcon(Lcom/amap/api/maps/model/BitmapDescriptor;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 275
    :catch_0
    move-exception v0

    .line 276
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public final setIcons(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/maps/model/BitmapDescriptor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->a:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->setIcons(Ljava/util/ArrayList;)V
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

.method public final setInfoWindowEnable(Z)V
    .locals 1

    .prologue
    .line 688
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->a:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->getIMarkerAction()Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;

    move-result-object v0

    .line 689
    if-eqz v0, :cond_0

    .line 690
    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;->setInfoWindowEnable(Z)V

    .line 693
    :cond_0
    return-void
.end method

.method public final setMarkerOptions(Lcom/amap/api/maps/model/MarkerOptions;)V
    .locals 1

    .prologue
    .line 702
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->a:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->getIMarkerAction()Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;

    move-result-object v0

    .line 703
    if-eqz v0, :cond_0

    .line 704
    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;->setMarkerOptions(Lcom/amap/api/maps/model/MarkerOptions;)V

    .line 707
    :cond_0
    return-void
.end method

.method public final setObject(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->a:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->setObject(Ljava/lang/Object;)V

    .line 418
    return-void
.end method

.method public final setPeriod(I)V
    .locals 1

    .prologue
    .line 42
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->a:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->setPeriod(I)V
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

.method public final setPerspective(Z)V
    .locals 1

    .prologue
    .line 154
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->a:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->setPerspective(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :goto_0
    return-void

    .line 155
    :catch_0
    move-exception v0

    .line 156
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public final setPosition(Lcom/amap/api/maps/model/LatLng;)V
    .locals 1

    .prologue
    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->a:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->setPosition(Lcom/amap/api/maps/model/LatLng;)V
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

.method public final setPositionByPixels(II)V
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->a:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {v0, p1, p2}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->setPositionByPixels(II)V

    .line 514
    return-void
.end method

.method public final setPositionNotUpdate(Lcom/amap/api/maps/model/LatLng;)V
    .locals 0

    .prologue
    .line 782
    invoke-virtual {p0, p1}, Lcom/amap/api/maps/model/Marker;->setPosition(Lcom/amap/api/maps/model/LatLng;)V

    .line 784
    return-void
.end method

.method public final setRotateAngle(F)V
    .locals 1

    .prologue
    .line 438
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->a:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->setRotateAngle(F)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 442
    :goto_0
    return-void

    .line 439
    :catch_0
    move-exception v0

    .line 440
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public final setRotateAngleNotUpdate(F)V
    .locals 1

    .prologue
    .line 793
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->a:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->getIMarkerAction()Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;

    move-result-object v0

    .line 794
    if-eqz v0, :cond_0

    .line 795
    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;->setRotateAngleNotUpdate(F)V

    .line 798
    :cond_0
    return-void
.end method

.method public final setSnippet(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 243
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->a:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->setSnippet(Ljava/lang/String;)V
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

.method public final setTitle(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 214
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->a:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->setTitle(Ljava/lang/String;)V
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

.method public final setToTop()V
    .locals 1

    .prologue
    .line 461
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->a:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->set2Top()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 465
    :goto_0
    return-void

    .line 462
    :catch_0
    move-exception v0

    .line 463
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public final setVisible(Z)V
    .locals 1

    .prologue
    .line 365
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->a:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->setVisible(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 369
    :goto_0
    return-void

    .line 366
    :catch_0
    move-exception v0

    .line 367
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public final setZIndex(F)V
    .locals 1

    .prologue
    .line 523
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->a:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->setZIndex(F)V

    .line 524
    return-void
.end method

.method public final showInfoWindow()V
    .locals 1

    .prologue
    .line 328
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->a:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->showInfoWindow()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    :goto_0
    return-void

    .line 329
    :catch_0
    move-exception v0

    .line 330
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public final startAnimation()Z
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Lcom/amap/api/maps/model/Marker;->a:Lcom/autonavi/amap/mapcore/interfaces/IMarker;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->startAnimation()Z

    move-result v0

    return v0
.end method
