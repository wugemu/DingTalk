.class public Lcom/amap/api/maps/InfoWindowAnimationManager;
.super Ljava/lang/Object;
.source "InfoWindowAnimationManager.java"


# instance fields
.field a:Lcom/autonavi/amap/mapcore/interfaces/IInfoWindowManager;


# direct methods
.method public constructor <init>(Lcom/autonavi/amap/mapcore/interfaces/IInfoWindowManager;)V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/maps/InfoWindowAnimationManager;->a:Lcom/autonavi/amap/mapcore/interfaces/IInfoWindowManager;

    .line 19
    iput-object p1, p0, Lcom/amap/api/maps/InfoWindowAnimationManager;->a:Lcom/autonavi/amap/mapcore/interfaces/IInfoWindowManager;

    .line 20
    return-void
.end method


# virtual methods
.method public setInfoWindowAnimation(Lcom/amap/api/maps/model/animation/Animation;Lcom/amap/api/maps/model/animation/Animation$AnimationListener;)V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/amap/api/maps/InfoWindowAnimationManager;->a:Lcom/autonavi/amap/mapcore/interfaces/IInfoWindowManager;

    invoke-interface {v0, p1, p2}, Lcom/autonavi/amap/mapcore/interfaces/IInfoWindowManager;->setInfoWindowAnimation(Lcom/amap/api/maps/model/animation/Animation;Lcom/amap/api/maps/model/animation/Animation$AnimationListener;)V

    .line 32
    return-void
.end method

.method public setInfoWindowAppearAnimation(Lcom/amap/api/maps/model/animation/Animation;)V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/amap/api/maps/InfoWindowAnimationManager;->a:Lcom/autonavi/amap/mapcore/interfaces/IInfoWindowManager;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IInfoWindowManager;->setInfoWindowAppearAnimation(Lcom/amap/api/maps/model/animation/Animation;)V

    .line 41
    return-void
.end method

.method public setInfoWindowBackColor(I)V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/amap/api/maps/InfoWindowAnimationManager;->a:Lcom/autonavi/amap/mapcore/interfaces/IInfoWindowManager;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IInfoWindowManager;->setInfoWindowBackColor(I)V

    .line 50
    return-void
.end method

.method public setInfoWindowBackEnable(Z)V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/amap/api/maps/InfoWindowAnimationManager;->a:Lcom/autonavi/amap/mapcore/interfaces/IInfoWindowManager;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IInfoWindowManager;->setInfoWindowBackEnable(Z)V

    .line 59
    return-void
.end method

.method public setInfoWindowBackScale(FF)V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/amap/api/maps/InfoWindowAnimationManager;->a:Lcom/autonavi/amap/mapcore/interfaces/IInfoWindowManager;

    invoke-interface {v0, p1, p2}, Lcom/autonavi/amap/mapcore/interfaces/IInfoWindowManager;->setInfoWindowBackScale(FF)V

    .line 69
    return-void
.end method

.method public setInfoWindowDisappearAnimation(Lcom/amap/api/maps/model/animation/Animation;)V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/amap/api/maps/InfoWindowAnimationManager;->a:Lcom/autonavi/amap/mapcore/interfaces/IInfoWindowManager;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IInfoWindowManager;->setInfoWindowDisappearAnimation(Lcom/amap/api/maps/model/animation/Animation;)V

    .line 78
    return-void
.end method

.method public setInfoWindowMovingAnimation(Lcom/amap/api/maps/model/animation/Animation;)V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/amap/api/maps/InfoWindowAnimationManager;->a:Lcom/autonavi/amap/mapcore/interfaces/IInfoWindowManager;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IInfoWindowManager;->setInfoWindowMovingAnimation(Lcom/amap/api/maps/model/animation/Animation;)V

    .line 87
    return-void
.end method

.method public startAnimation()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/amap/api/maps/InfoWindowAnimationManager;->a:Lcom/autonavi/amap/mapcore/interfaces/IInfoWindowManager;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IInfoWindowManager;->startAnimation()V

    .line 94
    return-void
.end method
