.class public final Lcom/amap/api/maps/model/Arc;
.super Ljava/lang/Object;
.source "Arc.java"


# instance fields
.field private final a:Lcom/autonavi/amap/mapcore/interfaces/IArc;


# direct methods
.method public constructor <init>(Lcom/autonavi/amap/mapcore/interfaces/IArc;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/amap/api/maps/model/Arc;->a:Lcom/autonavi/amap/mapcore/interfaces/IArc;

    .line 31
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

    .line 180
    instance-of v1, p1, Lcom/amap/api/maps/model/Arc;

    if-nez v1, :cond_0

    .line 187
    :goto_0
    return v0

    .line 183
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/maps/model/Arc;->a:Lcom/autonavi/amap/mapcore/interfaces/IArc;

    check-cast p1, Lcom/amap/api/maps/model/Arc;

    iget-object v2, p1, Lcom/amap/api/maps/model/Arc;->a:Lcom/autonavi/amap/mapcore/interfaces/IArc;

    .line 184
    invoke-interface {v1, v2}, Lcom/autonavi/amap/mapcore/interfaces/IArc;->equalsRemote(Lcom/autonavi/amap/mapcore/interfaces/IOverlay;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 185
    :catch_0
    move-exception v1

    .line 186
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Arc;->a:Lcom/autonavi/amap/mapcore/interfaces/IArc;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IArc;->getId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 57
    :goto_0
    return-object v0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 57
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public final getStrokeColor()I
    .locals 1

    .prologue
    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Arc;->a:Lcom/autonavi/amap/mapcore/interfaces/IArc;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IArc;->getStrokeColor()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 117
    :goto_0
    return v0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 117
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getStrokeWidth()F
    .locals 1

    .prologue
    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Arc;->a:Lcom/autonavi/amap/mapcore/interfaces/IArc;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IArc;->getStrokeWidth()F
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 88
    :goto_0
    return v0

    .line 86
    :catch_0
    move-exception v0

    .line 87
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 88
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getZIndex()F
    .locals 1

    .prologue
    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Arc;->a:Lcom/autonavi/amap/mapcore/interfaces/IArc;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IArc;->getZIndex()F
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 146
    :goto_0
    return v0

    .line 144
    :catch_0
    move-exception v0

    .line 145
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 146
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 193
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Arc;->a:Lcom/autonavi/amap/mapcore/interfaces/IArc;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IArc;->hashCodeRemote()I
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
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public final isVisible()Z
    .locals 1

    .prologue
    .line 172
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Arc;->a:Lcom/autonavi/amap/mapcore/interfaces/IArc;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IArc;->isVisible()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 175
    :goto_0
    return v0

    .line 173
    :catch_0
    move-exception v0

    .line 174
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 175
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final remove()V
    .locals 1

    .prologue
    .line 40
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Arc;->a:Lcom/autonavi/amap/mapcore/interfaces/IArc;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IArc;->remove()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :goto_0
    return-void

    .line 41
    :catch_0
    move-exception v0

    .line 42
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public final setStrokeColor(I)V
    .locals 1

    .prologue
    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Arc;->a:Lcom/autonavi/amap/mapcore/interfaces/IArc;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IArc;->setStrokeColor(I)V
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

.method public final setStrokeWidth(F)V
    .locals 1

    .prologue
    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Arc;->a:Lcom/autonavi/amap/mapcore/interfaces/IArc;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IArc;->setStrokeWidth(F)V
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

.method public final setVisible(Z)V
    .locals 1

    .prologue
    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Arc;->a:Lcom/autonavi/amap/mapcore/interfaces/IArc;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IArc;->setVisible(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :goto_0
    return-void

    .line 159
    :catch_0
    move-exception v0

    .line 160
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public final setZIndex(F)V
    .locals 1

    .prologue
    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/Arc;->a:Lcom/autonavi/amap/mapcore/interfaces/IArc;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IArc;->setZIndex(F)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :goto_0
    return-void

    .line 130
    :catch_0
    move-exception v0

    .line 131
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
