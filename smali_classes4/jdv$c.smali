.class public final Ljdv$c;
.super Landroid/os/Handler;
.source "AMapLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljdv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Ljdv;


# direct methods
.method public constructor <init>(Ljdv;)V
    .locals 0

    iput-object p1, p0, Ljdv$c;->a:Ljdv;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljdv;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Ljdv$c;->a:Ljdv;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 0
    :try_start_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Ljdv$c;->a:Ljdv;

    iget-boolean v0, v0, Ljdv;->p:Z

    if-eqz v0, :cond_1

    invoke-static {}, Ljdo;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1000
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 0
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_1
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Ljdv$c;->a:Ljdv;

    invoke-static {v1, v0}, Ljdv;->a(Ljdv;Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v1, "AMapLocationManager$ActionHandler"

    const-string/jumbo v2, "handleMessage RESULT_LBS_LOCATIONSUCCESS"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "AMapLocationManager$MHandler"

    const-string/jumbo v2, "handleMessage"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x0

    const/16 v1, 0x85d    # 3.0E-42f

    :try_start_3
    invoke-static {v0, v1}, Ljdt;->a(Ljava/lang/String;I)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :sswitch_3
    :try_start_4
    iget-object v0, p0, Ljdv$c;->a:Ljdv;

    invoke-static {v0, p1}, Ljdv;->a(Ljdv;Landroid/os/Message;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    :try_start_5
    const-string/jumbo v1, "AMapLocationManager$ActionHandler"

    const-string/jumbo v2, "handleMessage RESULT_GPS_LOCATIONSUCCESS"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    :sswitch_4
    :try_start_6
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "optBundle"

    iget-object v2, p0, Ljdv$c;->a:Ljdv;

    iget-object v2, v2, Ljdv;->b:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-static {v2}, Ljdo;->b(Lcom/amap/api/location/AMapLocationClientOption;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v1, p0, Ljdv$c;->a:Ljdv;

    invoke-static {v1, v0}, Ljdv;->b(Ljdv;Landroid/os/Bundle;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_0

    :catch_3
    move-exception v0

    :try_start_7
    const-string/jumbo v1, "AMapLocationManager$ActionHandler"

    const-string/jumbo v2, "handleMessage RESULT_GPS_LOCATIONCHANGE"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_0

    :sswitch_5
    :try_start_8
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Ljdv$c;->a:Ljdv;

    iget-object v1, v1, Ljdv;->d:Ljdz;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljdv$c;->a:Ljdv;

    iget-object v1, v1, Ljdv;->d:Ljdz;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_5

    .line 1000
    if-eqz v0, :cond_0

    :try_start_9
    const-class v2, Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string/jumbo v2, "lMaxGeoDis"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Ljdz;->i:I

    const-string/jumbo v2, "lMinGeoDis"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Ljdz;->j:I

    const-string/jumbo v2, "loc"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocation;->getAdCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v1, Ljdz;->q:Ljava/lang/Object;

    monitor-enter v2
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4

    :try_start_a
    iput-object v0, v1, Ljdz;->C:Lcom/amap/api/location/AMapLocation;

    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :try_start_b
    monitor-exit v2

    throw v0
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_4

    :catch_4
    move-exception v0

    :try_start_c
    const-string/jumbo v1, "GPSLocation"

    const-string/jumbo v2, "setLastGeoLocation"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_5

    goto/16 :goto_0

    .line 0
    :catch_5
    move-exception v0

    :try_start_d
    const-string/jumbo v1, "AMapLocationManager$ActionHandler"

    const-string/jumbo v2, "handleMessage RESULT_GPS_GEO_SUCCESS"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_1

    goto/16 :goto_0

    :sswitch_6
    :try_start_e
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Ljdv$c;->a:Ljdv;

    const-string/jumbo v2, "ngpsAble"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v1, v0}, Ljdv;->b(Ljdv;Z)Z
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_6

    goto/16 :goto_0

    :catch_6
    move-exception v0

    :try_start_f
    const-string/jumbo v1, "AMapLocationManager$ActionHandler"

    const-string/jumbo v2, "handleMessage RESULT_NGPS_ABLE"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_1

    goto/16 :goto_0

    :sswitch_7
    :try_start_10
    iget-object v0, p0, Ljdv$c;->a:Ljdv;

    invoke-static {v0}, Ljdv;->a(Ljdv;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_7

    goto/16 :goto_0

    :catch_7
    move-exception v0

    :try_start_11
    const-string/jumbo v1, "AMapLocationManager$ActionHandler"

    const-string/jumbo v2, "handleMessage RESULT_FASTSKY"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_1

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_3
        0x3 -> :sswitch_0
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_2
        0x64 -> :sswitch_7
    .end sparse-switch
.end method
