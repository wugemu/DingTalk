.class public final Ljdv$a;
.super Landroid/os/Handler;
.source "AMapLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljdv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Ljdv;


# direct methods
.method public constructor <init>(Ljdv;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Ljdv$a;->a:Ljdv;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v8, 0x0

    .line 0
    :try_start_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    packed-switch v0, :pswitch_data_0

    .line 2000
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 0
    :pswitch_1
    :try_start_1
    iget-object v1, p0, Ljdv$a;->a:Ljdv;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/location/AMapLocationListener;

    invoke-static {v1, v0}, Ljdv;->a(Ljdv;Lcom/amap/api/location/AMapLocationListener;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v1, "AMapLocationManage$MHandlerr"

    const-string/jumbo v2, "handleMessage SET_LISTENER"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "AMapLocationManager$ActionHandler"

    const-string/jumbo v2, "handleMessage"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    :try_start_3
    iget-object v1, p0, Ljdv$a;->a:Ljdv;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/location/AMapLocationListener;

    invoke-static {v1, v0}, Ljdv;->b(Ljdv;Lcom/amap/api/location/AMapLocationListener;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    :try_start_4
    const-string/jumbo v1, "AMapLocationManager$MHandler"

    const-string/jumbo v2, "handleMessage REMOVE_LISTENER"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :pswitch_3
    :try_start_5
    iget-object v0, p0, Ljdv$a;->a:Ljdv;

    invoke-static {v0}, Ljdv;->d(Ljdv;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    :catch_3
    move-exception v0

    :try_start_6
    const-string/jumbo v1, "AMapLocationManager$MHandler"

    const-string/jumbo v2, "handleMessage START_LOCATION"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    :pswitch_4
    :try_start_7
    iget-object v0, p0, Ljdv$a;->a:Ljdv;

    invoke-static {v0}, Ljdv;->e(Ljdv;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_0

    :catch_4
    move-exception v0

    :try_start_8
    const-string/jumbo v1, "AMapLocationManager$MHandler"

    const-string/jumbo v2, "handleMessage STOP_LOCATION"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_0

    :pswitch_5
    :try_start_9
    iget-object v0, p0, Ljdv$a;->a:Ljdv;

    .line 1000
    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljdv;->a(ILandroid/os/Bundle;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Ljdv;->h:Z

    const/4 v1, 0x1

    iput-boolean v1, v0, Ljdv;->i:Z

    const/4 v1, 0x0

    iput-boolean v1, v0, Ljdv;->e:Z

    const/4 v1, 0x0

    iput-boolean v1, v0, Ljdv;->t:Z

    invoke-virtual {v0}, Ljdv;->a()V

    iget-object v1, v0, Ljdv;->s:Ljdt;

    if-eqz v1, :cond_1

    iget-object v1, v0, Ljdv;->s:Ljdt;

    iget-object v2, v0, Ljdv;->a:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljdt;->b(Landroid/content/Context;)V

    :cond_1
    iget-object v1, v0, Ljdv;->a:Landroid/content/Context;

    invoke-static {v1}, Ljdt;->a(Landroid/content/Context;)V

    iget-object v1, v0, Ljdv;->w:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_2

    iget-object v1, v0, Ljdv;->a:Landroid/content/Context;

    iget-object v2, v0, Ljdv;->w:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_2
    iget-object v1, v0, Ljdv;->f:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    iget-object v1, v0, Ljdv;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    iput-object v1, v0, Ljdv;->f:Ljava/util/ArrayList;

    :cond_3
    const/4 v1, 0x0

    iput-object v1, v0, Ljdv;->w:Landroid/content/ServiceConnection;

    iget-object v1, v0, Ljdv;->r:Ljava/lang/Object;

    monitor-enter v1
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_5

    :try_start_a
    iget-object v2, v0, Ljdv;->z:Ljdv$a;

    if-eqz v2, :cond_4

    iget-object v2, v0, Ljdv;->z:Ljdv$a;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljdv$a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_4
    const/4 v2, 0x0

    iput-object v2, v0, Ljdv;->z:Ljdv$a;

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    iget-object v1, v0, Ljdv;->o:Ljdv$b;

    if-eqz v1, :cond_5

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_5

    const/16 v2, 0x12

    if-lt v1, v2, :cond_7

    :try_start_c
    iget-object v1, v0, Ljdv;->o:Ljdv$b;

    const-class v2, Landroid/os/HandlerThread;

    const-string/jumbo v3, "quitSafely"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4}, Ljdr;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_6

    :cond_5
    :goto_1
    const/4 v1, 0x0

    :try_start_d
    iput-object v1, v0, Ljdv;->o:Ljdv$b;

    iget-object v1, v0, Ljdv;->c:Ljdv$c;

    if-eqz v1, :cond_6

    iget-object v1, v0, Ljdv;->c:Ljdv$c;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljdv$c;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_6
    iget-object v1, v0, Ljdv;->j:Lcom/loc/h;

    if-eqz v1, :cond_0

    iget-object v1, v0, Ljdv;->j:Lcom/loc/h;

    invoke-virtual {v1}, Lcom/loc/h;->c()V

    const/4 v1, 0x0

    iput-object v1, v0, Ljdv;->j:Lcom/loc/h;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_5

    goto/16 :goto_0

    .line 0
    :catch_5
    move-exception v0

    :try_start_e
    const-string/jumbo v1, "AMapLocationManager$MHandler"

    const-string/jumbo v2, "handleMessage DESTROY"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_1

    goto/16 :goto_0

    .line 1000
    :catchall_0
    move-exception v0

    :try_start_f
    monitor-exit v1

    throw v0

    :catch_6
    move-exception v1

    iget-object v1, v0, Ljdv;->o:Ljdv$b;

    invoke-virtual {v1}, Ljdv$b;->quit()Z

    goto :goto_1

    :cond_7
    iget-object v1, v0, Ljdv;->o:Ljdv$b;

    invoke-virtual {v1}, Ljdv$b;->quit()Z
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_5

    goto :goto_1

    .line 0
    :pswitch_6
    :try_start_10
    iget-object v0, p0, Ljdv$a;->a:Ljdv;

    invoke-static {v0, p1}, Ljdv;->b(Ljdv;Landroid/os/Message;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_1

    goto/16 :goto_0

    :pswitch_7
    :try_start_11
    iget-object v0, p0, Ljdv$a;->a:Ljdv;

    iget-object v7, v0, Ljdv;->d:Ljdz;

    iget-object v0, p0, Ljdv$a;->a:Ljdv;

    iget-object v0, v0, Ljdv;->b:Lcom/amap/api/location/AMapLocationClientOption;

    .line 2000
    iput-object v0, v7, Ljdz;->d:Lcom/amap/api/location/AMapLocationClientOption;

    iget-object v0, v7, Ljdz;->d:Lcom/amap/api/location/AMapLocationClientOption;

    if-nez v0, :cond_8

    new-instance v0, Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {v0}, Lcom/amap/api/location/AMapLocationClientOption;-><init>()V

    iput-object v0, v7, Ljdz;->d:Lcom/amap/api/location/AMapLocationClientOption;
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_8

    :cond_8
    :try_start_12
    iget-object v0, v7, Ljdz;->b:Landroid/content/Context;

    const-string/jumbo v1, "pref"

    const-string/jumbo v2, "lagt"

    sget-wide v4, Ljdz;->r:J

    invoke-static {v0, v1, v2, v4, v5}, Ljdw;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Ljdz;->r:J
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_10

    :goto_2
    :try_start_13
    invoke-static {}, Ljdx;->b()J

    move-result-wide v0

    sget-wide v2, Ljdz;->m:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-gtz v0, :cond_a

    sget-object v0, Ljdz;->l:Lcom/amap/api/location/AMapLocation;

    invoke-static {v0}, Ljdx;->a(Lcom/amap/api/location/AMapLocation;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, v7, Ljdz;->d:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->isMockEnable()Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Ljdz;->l:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocation;->isMock()Z

    move-result v0

    if-nez v0, :cond_a

    :cond_9
    invoke-static {}, Ljdx;->b()J

    move-result-wide v0

    iput-wide v0, v7, Ljdz;->f:J

    sget-object v0, Ljdz;->l:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v7, v0}, Ljdz;->a(Lcom/amap/api/location/AMapLocation;)V

    :cond_a
    const/4 v0, 0x1

    iput-boolean v0, v7, Ljdz;->t:Z

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v6

    if-nez v6, :cond_b

    iget-object v0, v7, Ljdz;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    :cond_b
    invoke-static {}, Ljdx;->b()J

    move-result-wide v0

    iput-wide v0, v7, Ljdz;->e:J

    iget-object v0, v7, Ljdz;->c:Landroid/location/LocationManager;

    invoke-static {v0}, Ljdz;->a(Landroid/location/LocationManager;)Z
    :try_end_13
    .catch Ljava/lang/SecurityException; {:try_start_13 .. :try_end_13} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_9

    move-result v0

    if-eqz v0, :cond_e

    :try_start_14
    invoke-static {}, Ljdx;->a()J

    move-result-wide v0

    sget-wide v2, Ljdz;->r:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xf731400

    cmp-long v0, v0, v2

    if-ltz v0, :cond_c

    iget-object v0, v7, Ljdz;->c:Landroid/location/LocationManager;

    const-string/jumbo v1, "gps"

    const-string/jumbo v2, "force_xtra_injection"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/location/LocationManager;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    invoke-static {}, Ljdx;->a()J

    move-result-wide v0

    sput-wide v0, Ljdz;->r:J

    iget-object v0, v7, Ljdz;->b:Landroid/content/Context;

    const-string/jumbo v1, "pref"

    const-string/jumbo v2, "lagt"

    sget-wide v4, Ljdz;->r:J

    invoke-static {v0, v1, v2, v4, v5}, Ljdw;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_f
    .catch Ljava/lang/SecurityException; {:try_start_14 .. :try_end_14} :catch_7

    :cond_c
    :goto_3
    :try_start_15
    iget-object v0, v7, Ljdz;->d:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->getLocationMode()Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    move-result-object v0

    sget-object v1, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Device_Sensors:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, v7, Ljdz;->d:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->getDeviceModeDistanceFilter()F

    move-result v0

    cmpl-float v0, v0, v8

    if-lez v0, :cond_d

    iget-object v0, v7, Ljdz;->c:Landroid/location/LocationManager;

    const-string/jumbo v1, "gps"

    iget-object v2, v7, Ljdz;->d:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocationClientOption;->getInterval()J

    move-result-wide v2

    iget-object v4, v7, Ljdz;->d:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v4}, Lcom/amap/api/location/AMapLocationClientOption;->getDeviceModeDistanceFilter()F

    move-result v4

    iget-object v5, v7, Ljdz;->y:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    :goto_4
    iget-object v0, v7, Ljdz;->c:Landroid/location/LocationManager;

    iget-object v1, v7, Ljdz;->B:Landroid/location/GpsStatus$Listener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    const/16 v1, 0x8

    const/16 v2, 0xe

    const-string/jumbo v3, "no enough satellites#1401"

    iget-object v0, v7, Ljdz;->d:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->getHttpTimeOut()J

    move-result-wide v4

    move-object v0, v7

    invoke-virtual/range {v0 .. v5}, Ljdz;->a(IILjava/lang/String;J)V
    :try_end_15
    .catch Ljava/lang/SecurityException; {:try_start_15 .. :try_end_15} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_9

    goto/16 :goto_0

    :catch_7
    move-exception v0

    const/4 v1, 0x0

    :try_start_16
    iput-boolean v1, v7, Ljdz;->t:Z

    const/4 v1, 0x0

    const/16 v2, 0x849

    invoke-static {v1, v2}, Ljdt;->a(Ljava/lang/String;I)V

    const/4 v1, 0x2

    const/16 v2, 0xc

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "#1201"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    move-object v0, v7

    invoke-virtual/range {v0 .. v5}, Ljdz;->a(IILjava/lang/String;J)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_8

    goto/16 :goto_0

    .line 0
    :catch_8
    move-exception v0

    :try_start_17
    const-string/jumbo v1, "AMapLocationManager$ActionHandler"

    const-string/jumbo v2, "handleMessage START_GPS_LOCATION"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_1

    goto/16 :goto_0

    .line 2000
    :cond_d
    :try_start_18
    iget-object v0, v7, Ljdz;->c:Landroid/location/LocationManager;

    const-string/jumbo v1, "gps"

    const-wide/16 v2, 0x384

    const/4 v4, 0x0

    iget-object v5, v7, Ljdz;->y:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V
    :try_end_18
    .catch Ljava/lang/SecurityException; {:try_start_18 .. :try_end_18} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_9

    goto :goto_4

    :catch_9
    move-exception v0

    :try_start_19
    const-string/jumbo v1, "GPSLocation"

    const-string/jumbo v2, "requestLocationUpdates part2"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_8

    goto/16 :goto_0

    :cond_e
    const/16 v1, 0x8

    const/16 v2, 0xe

    :try_start_1a
    const-string/jumbo v3, "no gps provider#1402"

    const-wide/16 v4, 0x0

    move-object v0, v7

    invoke-virtual/range {v0 .. v5}, Ljdz;->a(IILjava/lang/String;J)V
    :try_end_1a
    .catch Ljava/lang/SecurityException; {:try_start_1a .. :try_end_1a} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_9

    goto/16 :goto_0

    .line 0
    :pswitch_8
    :try_start_1b
    iget-object v0, p0, Ljdv$a;->a:Ljdv;

    iget-object v0, v0, Ljdv;->d:Ljdz;

    invoke-virtual {v0}, Ljdz;->b()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Ljdv$a;->a:Ljdv;

    invoke-static {v0}, Ljdv;->f(Ljdv;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_a

    goto/16 :goto_0

    :catch_a
    move-exception v0

    :try_start_1c
    const-string/jumbo v1, "AMapLocationManager$ActionHandler"

    const-string/jumbo v2, "handleMessage START_LBS_LOCATION"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_1

    goto/16 :goto_0

    :cond_f
    :try_start_1d
    iget-object v0, p0, Ljdv$a;->a:Ljdv;

    invoke-static {v0}, Ljdv;->g(Ljdv;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_a

    goto/16 :goto_0

    :pswitch_9
    :try_start_1e
    iget-object v0, p0, Ljdv$a;->a:Ljdv;

    iget-object v0, v0, Ljdv;->d:Ljdz;

    invoke-virtual {v0}, Ljdz;->a()V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_b

    goto/16 :goto_0

    :catch_b
    move-exception v0

    :try_start_1f
    const-string/jumbo v1, "AMapLocationManager$ActionHandler"

    const-string/jumbo v2, "handleMessage STOP_GPS_LOCATION"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_1

    goto/16 :goto_0

    :pswitch_a
    :try_start_20
    iget-object v1, p0, Ljdv$a;->a:Ljdv;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/location/AMapLocationClientOption;

    iput-object v0, v1, Ljdv;->b:Lcom/amap/api/location/AMapLocationClientOption;

    iget-object v0, p0, Ljdv$a;->a:Ljdv;

    iget-object v0, v0, Ljdv;->b:Lcom/amap/api/location/AMapLocationClientOption;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljdv$a;->a:Ljdv;

    invoke-static {v0}, Ljdv;->h(Ljdv;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_c

    goto/16 :goto_0

    :catch_c
    move-exception v0

    :try_start_21
    const-string/jumbo v1, "AMapLocationManager$ActionHandler"

    const-string/jumbo v2, "handleMessage SET_OPTION"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_1

    goto/16 :goto_0

    :pswitch_b
    :try_start_22
    iget-object v0, p0, Ljdv$a;->a:Ljdv;

    invoke-static {v0}, Ljdv;->i(Ljdv;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_d

    goto/16 :goto_0

    :catch_d
    move-exception v0

    :try_start_23
    const-string/jumbo v1, "AMapLocationManager$ActionHandler"

    const-string/jumbo v2, "handleMessage START_SOCKET"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_1

    goto/16 :goto_0

    :pswitch_c
    :try_start_24
    iget-object v0, p0, Ljdv$a;->a:Ljdv;

    invoke-static {v0}, Ljdv;->j(Ljdv;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_e

    goto/16 :goto_0

    :catch_e
    move-exception v0

    :try_start_25
    const-string/jumbo v1, "AMapLocationManager$ActionHandler"

    const-string/jumbo v2, "handleMessage STOP_SOCKET"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_1

    goto/16 :goto_0

    :catch_f
    move-exception v0

    goto/16 :goto_3

    :catch_10
    move-exception v0

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x3ea
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
