.class final Ljdz$1;
.super Ljava/lang/Object;
.source "GPSLocation.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljdz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljdz;


# direct methods
.method constructor <init>(Ljdz;)V
    .locals 0

    iput-object p1, p0, Ljdz$1;->a:Ljdz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const-wide/16 v8, 0x1f40

    .line 0
    iget-object v0, p0, Ljdz$1;->a:Ljdz;

    iget-object v0, v0, Ljdz;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljdz$1;->a:Ljdz;

    iget-object v0, v0, Ljdz;->a:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    if-nez p1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    :try_start_0
    new-instance v0, Lcom/amap/api/location/AMapLocation;

    invoke-direct {v0, p1}, Lcom/amap/api/location/AMapLocation;-><init>(Landroid/location/Location;)V

    invoke-static {v0}, Ljdx;->a(Lcom/amap/api/location/AMapLocation;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setLocationType(I)V

    invoke-virtual {p1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    iget-object v1, p0, Ljdz$1;->a:Ljdz;

    iget-boolean v1, v1, Ljdz;->g:Z

    if-nez v1, :cond_3

    invoke-static {v0}, Ljdx;->a(Lcom/amap/api/location/AMapLocation;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Ljdz$1;->a:Ljdz;

    invoke-static {v1}, Ljdz;->a(Ljdz;)Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Ljdx;->b()J

    move-result-wide v2

    iget-object v4, p0, Ljdz$1;->a:Ljdz;

    invoke-static {v4}, Ljdz;->b(Ljdz;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljdo;->a(DD)Z

    move-result v4

    invoke-static {v1, v2, v3, v4}, Ljdt;->a(Landroid/content/Context;JZ)V

    iget-object v1, p0, Ljdz$1;->a:Ljdz;

    const/4 v2, 0x1

    iput-boolean v2, v1, Ljdz;->g:Z

    :cond_3
    iget-object v1, p0, Ljdz$1;->a:Ljdz;

    iget v1, v1, Ljdz;->z:I

    invoke-static {p1, v1}, Ljdx;->a(Landroid/location/Location;I)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setMock(Z)V

    iget-object v1, p0, Ljdz$1;->a:Ljdz;

    iget-object v1, v1, Ljdz;->d:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocationClientOption;->isMockEnable()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Ljdz$1;->a:Ljdz;

    iget v1, v1, Ljdz;->x:I

    const/4 v2, 0x3

    if-le v1, v2, :cond_4

    const/4 v1, 0x0

    const/16 v2, 0x868

    invoke-static {v1, v2}, Ljdt;->a(Ljava/lang/String;I)V

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setErrorCode(I)V

    const-string/jumbo v1, "GPSLocation has been mocked!#1501"

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setLocationDetail(Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/amap/api/location/AMapLocation;->setLatitude(D)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/amap/api/location/AMapLocation;->setLongitude(D)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/amap/api/location/AMapLocation;->setAltitude(D)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setSpeed(F)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setAccuracy(F)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setBearing(F)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setExtras(Landroid/os/Bundle;)V

    iget-object v1, p0, Ljdz$1;->a:Ljdz;

    invoke-static {v1, v0}, Ljdz;->a(Ljdz;Lcom/amap/api/location/AMapLocation;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "GPSLocation"

    const-string/jumbo v2, "onLocationChanged"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    :try_start_1
    iget-object v0, p0, Ljdz$1;->a:Ljdz;

    iget v1, v0, Ljdz;->x:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Ljdz;->x:I

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Ljdz$1;->a:Ljdz;

    const/4 v2, 0x0

    iput v2, v1, Ljdz;->x:I

    :cond_6
    iget-object v1, p0, Ljdz$1;->a:Ljdz;

    iget v1, v1, Ljdz;->z:I

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setSatellites(I)V

    iget-object v1, p0, Ljdz$1;->a:Ljdz;

    invoke-static {v1, v0}, Ljdz;->b(Ljdz;Lcom/amap/api/location/AMapLocation;)V

    iget-object v1, p0, Ljdz$1;->a:Ljdz;

    invoke-static {v1, v0}, Ljdz;->c(Ljdz;Lcom/amap/api/location/AMapLocation;)V

    iget-object v1, p0, Ljdz$1;->a:Ljdz;

    invoke-static {v1, v0}, Ljdz;->d(Ljdz;Lcom/amap/api/location/AMapLocation;)Lcom/amap/api/location/AMapLocation;

    move-result-object v1

    iget-object v0, p0, Ljdz$1;->a:Ljdz;

    invoke-static {v0, v1}, Ljdz;->e(Ljdz;Lcom/amap/api/location/AMapLocation;)V

    iget-object v0, p0, Ljdz$1;->a:Ljdz;

    .line 1000
    invoke-static {v1}, Ljdx;->a(Lcom/amap/api/location/AMapLocation;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, v0, Ljdz;->a:Landroid/os/Handler;

    if-eqz v2, :cond_9

    iget-object v2, v0, Ljdz;->d:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocationClientOption;->isNeedAddress()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {}, Ljdx;->b()J

    move-result-wide v2

    iget-object v4, v0, Ljdz;->d:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v4}, Lcom/amap/api/location/AMapLocationClientOption;->getInterval()J

    move-result-wide v4

    cmp-long v4, v4, v8

    if-lez v4, :cond_7

    iget-wide v4, v0, Ljdz;->w:J

    sub-long/2addr v2, v4

    iget-object v4, v0, Ljdz;->d:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v4}, Lcom/amap/api/location/AMapLocationClientOption;->getInterval()J

    move-result-wide v4

    sub-long/2addr v4, v8

    cmp-long v2, v2, v4

    if-lez v2, :cond_9

    :cond_7
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "lat"

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string/jumbo v3, "lon"

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    const/4 v2, 0x5

    iput v2, v3, Landroid/os/Message;->what:I

    iget-object v2, v0, Ljdz;->q:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v4, v0, Ljdz;->C:Lcom/amap/api/location/AMapLocation;

    if-nez v4, :cond_c

    iget-object v0, v0, Ljdz;->a:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_8
    :goto_1
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 0
    :cond_9
    :try_start_3
    iget-object v0, p0, Ljdz$1;->a:Ljdz;

    iget-object v2, v0, Ljdz;->q:Ljava/lang/Object;

    monitor-enter v2
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    iget-object v0, p0, Ljdz$1;->a:Ljdz;

    iget-object v3, p0, Ljdz$1;->a:Ljdz;

    iget-object v3, v3, Ljdz;->C:Lcom/amap/api/location/AMapLocation;

    invoke-static {v0, v1, v3}, Ljdz;->a(Ljdz;Lcom/amap/api/location/AMapLocation;Lcom/amap/api/location/AMapLocation;)V

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-static {v1}, Ljdx;->a(Lcom/amap/api/location/AMapLocation;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Ljdz$1;->a:Ljdz;

    iget-object v0, v0, Ljdz;->k:Lcom/amap/api/location/AMapLocation;

    if-eqz v0, :cond_a

    iget-object v0, p0, Ljdz$1;->a:Ljdz;

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    iget-object v4, p0, Ljdz$1;->a:Ljdz;

    iget-object v4, v4, Ljdz;->k:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v4}, Lcom/amap/api/location/AMapLocation;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iput-wide v2, v0, Ljdz;->o:J

    iget-object v0, p0, Ljdz$1;->a:Ljdz;

    iget-object v2, p0, Ljdz$1;->a:Ljdz;

    iget-object v2, v2, Ljdz;->k:Lcom/amap/api/location/AMapLocation;

    invoke-static {v2, v1}, Ljdx;->a(Lcom/amap/api/location/AMapLocation;Lcom/amap/api/location/AMapLocation;)F

    move-result v2

    iput v2, v0, Ljdz;->p:F

    :cond_a
    iget-object v0, p0, Ljdz$1;->a:Ljdz;

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocation;->clone()Lcom/amap/api/location/AMapLocation;

    move-result-object v2

    iput-object v2, v0, Ljdz;->k:Lcom/amap/api/location/AMapLocation;

    iget-object v0, p0, Ljdz$1;->a:Ljdz;

    invoke-static {v0}, Ljdz;->c(Ljdz;)Ljava/lang/String;

    iget-object v0, p0, Ljdz$1;->a:Ljdz;

    invoke-static {v0}, Ljdz;->d(Ljdz;)Z

    iget-object v0, p0, Ljdz$1;->a:Ljdz;

    invoke-static {v0}, Ljdz;->e(Ljdz;)I
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    :cond_b
    :goto_2
    :try_start_6
    iget-object v0, p0, Ljdz$1;->a:Ljdz;

    invoke-static {v0, v1}, Ljdz;->a(Ljdz;Lcom/amap/api/location/AMapLocation;)V

    iget-object v0, p0, Ljdz$1;->a:Ljdz;

    invoke-static {v0, v1}, Ljdz;->f(Ljdz;Lcom/amap/api/location/AMapLocation;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    .line 1000
    :cond_c
    :try_start_7
    iget-object v4, v0, Ljdz;->C:Lcom/amap/api/location/AMapLocation;

    invoke-static {v1, v4}, Ljdx;->a(Lcom/amap/api/location/AMapLocation;Lcom/amap/api/location/AMapLocation;)F

    move-result v4

    iget v5, v0, Ljdz;->j:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_8

    iget-object v0, v0, Ljdz;->a:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_8
    monitor-exit v2

    throw v0

    .line 0
    :catchall_1
    move-exception v0

    monitor-exit v2

    throw v0

    :catch_1
    move-exception v0

    const-string/jumbo v2, "GPSLocation"

    const-string/jumbo v3, "onLocationChangedLast"

    invoke-static {v0, v2, v3}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_2
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    :try_start_0
    const-string/jumbo v0, "gps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljdz$1;->a:Ljdz;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Ljdz;->f:J

    iget-object v0, p0, Ljdz$1;->a:Ljdz;

    const/4 v1, 0x0

    iput v1, v0, Ljdz;->z:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    if-nez p2, :cond_0

    :try_start_0
    iget-object v0, p0, Ljdz$1;->a:Ljdz;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Ljdz;->f:J

    iget-object v0, p0, Ljdz$1;->a:Ljdz;

    const/4 v1, 0x0

    iput v1, v0, Ljdz;->z:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
