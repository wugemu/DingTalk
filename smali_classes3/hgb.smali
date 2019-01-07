.class public Lhgb;
.super Ljava/lang/Object;
.source "LightBeaconManager.java"

# interfaces
.implements Lcom/alibaba/doraemon/bluetooth/BeaconScanListener;


# static fields
.field private static volatile d:Lhgb;


# instance fields
.field public a:Lhgc;

.field public b:Lhga;

.field private c:Ljava/lang/String;

.field private e:Z


# direct methods
.method private constructor <init>()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v2, 0x0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const/4 v1, 0x1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-boolean v1, p0, Lhgb;->e:Z

    .line 81
    invoke-static {}, Lhgb;->b()Z

    move-result v0

    iput-boolean v0, p0, Lhgb;->e:Z

    .line 82
    iget-boolean v0, p0, Lhgb;->e:Z

    if-eqz v0, :cond_2

    .line 1488
    const-class v0, Lcom/alibaba/wukong/settings/CloudSettingService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/settings/CloudSettingService;

    const-string/jumbo v3, "dt_function"

    const-string/jumbo v6, "oa_old_beacon_disabled_android"

    invoke-interface {v0, v3, v6}, Lcom/alibaba/wukong/settings/CloudSettingService;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/wukong/settings/CloudSetting;

    move-result-object v0

    .line 1489
    if-eqz v0, :cond_4

    .line 1490
    invoke-interface {v0}, Lcom/alibaba/wukong/settings/CloudSetting;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 1491
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1493
    invoke-static {v0}, Ligb;->f(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_3

    move v0, v1

    .line 82
    :goto_0
    if-nez v0, :cond_2

    .line 2088
    new-instance v0, Lhga;

    invoke-direct {v0}, Lhga;-><init>()V

    iput-object v0, p0, Lhgb;->b:Lhga;

    .line 2089
    iget-object v0, p0, Lhgb;->b:Lhga;

    new-instance v1, Lhgb$1;

    invoke-direct {v1, p0}, Lhgb$1;-><init>(Lhgb;)V

    .line 3065
    iput-object v1, v0, Lhga;->c:Lhgd$a$a;

    .line 2132
    iget-object v1, p0, Lhgb;->b:Lhga;

    .line 4052
    const-string/jumbo v0, "LIFECYCLE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

    .line 4053
    iget-object v3, v1, Lhga;->d:Lcom/alibaba/doraemon/lifecycle/APPStateListener;

    invoke-interface {v0, v3}, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;->registerAppStateListener(Lcom/alibaba/doraemon/lifecycle/APPStateListener;)V

    .line 4055
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->c()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-lez v0, :cond_0

    .line 4057
    const-string/jumbo v0, "old_beacon_device_request_key"

    invoke-static {v0, v2}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lhga;->b:Z

    .line 4058
    iget-boolean v0, v1, Lhga;->b:Z

    if-nez v0, :cond_0

    .line 4059
    invoke-virtual {v1}, Lhga;->a()V

    .line 2134
    :cond_0
    invoke-static {}, Lcms;->p()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2136
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "SW"

    const-string/jumbo v2, "beacon_unsatisfied"

    const-string/jumbo v3, "bluetooth_disable"

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/doraemon/statistics/Statistics;->commitCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 2139
    const-string/jumbo v0, "SW"

    const-string/jumbo v1, "LightBeaconManager init, bluetooth disable !!!"

    invoke-static {v0, v10, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2142
    :cond_1
    invoke-static {}, Lcms;->o()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2144
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "SW"

    const-string/jumbo v2, "beacon_unsatisfied"

    const-string/jumbo v3, "location_disable"

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/doraemon/statistics/Statistics;->commitCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 2147
    const-string/jumbo v0, "SW"

    const-string/jumbo v1, "LightBeaconManager init, location disable !!!"

    invoke-static {v0, v10, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 1493
    goto :goto_0

    :cond_4
    move v0, v1

    .line 1498
    goto/16 :goto_0
.end method

.method public static a()Lhgb;
    .locals 2

    .prologue
    .line 70
    sget-object v0, Lhgb;->d:Lhgb;

    if-nez v0, :cond_1

    .line 71
    const-class v1, Lhgb;

    monitor-enter v1

    .line 72
    :try_start_0
    sget-object v0, Lhgb;->d:Lhgb;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lhgb;

    invoke-direct {v0}, Lhgb;-><init>()V

    sput-object v0, Lhgb;->d:Lhgb;

    .line 75
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :cond_1
    sget-object v0, Lhgb;->d:Lhgb;

    return-object v0

    .line 75
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lhgb;)Lhgc;
    .locals 1
    .param p0, "x0"    # Lhgb;

    .prologue
    .line 60
    iget-object v0, p0, Lhgb;->a:Lhgc;

    return-object v0
.end method

.method static synthetic a(Lhgb;Lhgc;)Lhgc;
    .locals 0
    .param p0, "x0"    # Lhgb;
    .param p1, "x1"    # Lhgc;

    .prologue
    .line 60
    iput-object p1, p0, Lhgb;->a:Lhgc;

    return-object p1
.end method

.method private a(Lcom/amap/api/location/AMapLocation;Lorg/altbeacon/beacon/Region;J)V
    .locals 9
    .param p1, "aMapLocation"    # Lcom/amap/api/location/AMapLocation;
    .param p2, "region"    # Lorg/altbeacon/beacon/Region;
    .param p3, "startTime"    # J

    .prologue
    .line 389
    const-string/jumbo v6, "SW"

    const-string/jumbo v7, "notifyEnterRegion"

    const-string/jumbo v8, "notifyEnterRegion"

    invoke-static {v6, v7, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    new-instance v0, Lhih;

    invoke-direct {v0}, Lhih;-><init>()V

    .line 391
    .local v0, "model":Lhih;
    if-eqz p1, :cond_0

    .line 392
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    iput-object v6, v0, Lhih;->d:Ljava/lang/Double;

    .line 393
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    iput-object v6, v0, Lhih;->e:Ljava/lang/Double;

    .line 394
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getAccuracy()F

    move-result v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    iput-object v6, v0, Lhih;->f:Ljava/lang/Double;

    .line 396
    :cond_0
    if-eqz p2, :cond_1

    .line 397
    invoke-virtual {p2}, Lorg/altbeacon/beacon/Region;->getId1()Lorg/altbeacon/beacon/Identifier;

    move-result-object v6

    invoke-virtual {v6}, Lorg/altbeacon/beacon/Identifier;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lhih;->a:Ljava/lang/String;

    .line 398
    invoke-virtual {p2}, Lorg/altbeacon/beacon/Region;->getId2()Lorg/altbeacon/beacon/Identifier;

    move-result-object v6

    invoke-virtual {v6}, Lorg/altbeacon/beacon/Identifier;->toInt()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, v0, Lhih;->b:Ljava/lang/Integer;

    .line 399
    invoke-virtual {p2}, Lorg/altbeacon/beacon/Region;->getId3()Lorg/altbeacon/beacon/Identifier;

    move-result-object v6

    invoke-virtual {v6}, Lorg/altbeacon/beacon/Identifier;->toInt()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, v0, Lhih;->c:Ljava/lang/Integer;

    .line 400
    invoke-static {}, Lhge;->d()Lhge;

    move-result-object v6

    invoke-virtual {p2}, Lorg/altbeacon/beacon/Region;->getUniqueId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lhge;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lhih;->i:Ljava/lang/String;

    .line 5463
    :cond_1
    iget-object v6, p0, Lhgb;->c:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 5464
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v6

    invoke-virtual {v6}, Lcid;->c()Landroid/app/Application;

    move-result-object v6

    invoke-static {v6}, Lcom/ta/utdid2/device/UTUtdid;->instance(Landroid/content/Context;)Lcom/ta/utdid2/device/UTUtdid;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ta/utdid2/device/UTUtdid;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/lightapp/runtime/plugin/device/Base;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/lightapp/runtime/plugin/device/Base;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lhgb;->c:Ljava/lang/String;

    .line 5466
    :cond_2
    iget-object v6, p0, Lhgb;->c:Ljava/lang/String;

    .line 402
    iput-object v6, v0, Lhih;->h:Ljava/lang/String;

    .line 404
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v6

    invoke-virtual {v6}, Lcid;->c()Landroid/app/Application;

    move-result-object v6

    const-string/jumbo v7, "wifi"

    invoke-virtual {v6, v7}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    .line 405
    .local v5, "wifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v5, :cond_5

    .line 406
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v0, Lhih;->g:Ljava/util/List;

    .line 408
    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v2

    .line 409
    .local v2, "scanResultList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_4

    .line 410
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    .line 411
    .local v1, "scanResult":Landroid/net/wifi/ScanResult;
    if-eqz v1, :cond_3

    .line 412
    new-instance v4, Lhkj;

    invoke-direct {v4}, Lhkj;-><init>()V

    .line 413
    .local v4, "wifiInfoModel":Lhkj;
    iget-object v7, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iput-object v7, v4, Lhkj;->a:Ljava/lang/String;

    .line 414
    iget-object v7, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iput-object v7, v4, Lhkj;->b:Ljava/lang/String;

    .line 415
    iget-object v7, v0, Lhih;->g:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 419
    .end local v1    # "scanResult":Landroid/net/wifi/ScanResult;
    .end local v4    # "wifiInfoModel":Lhkj;
    :cond_4
    iget-object v6, v0, Lhih;->g:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_5

    .line 420
    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    .line 421
    .local v3, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v3, :cond_5

    .line 422
    new-instance v4, Lhkj;

    invoke-direct {v4}, Lhkj;-><init>()V

    .line 423
    .restart local v4    # "wifiInfoModel":Lhkj;
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lhkj;->a:Ljava/lang/String;

    .line 424
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lhkj;->b:Ljava/lang/String;

    .line 425
    iget-object v6, v0, Lhih;->g:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 429
    .end local v2    # "scanResultList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    .end local v3    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    .end local v4    # "wifiInfoModel":Lhkj;
    :cond_5
    const-class v6, Lcom/alibaba/lightapp/runtime/idl/ATBeaconIService;

    invoke-static {v6}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/lightapp/runtime/idl/ATBeaconIService;

    new-instance v7, Lhgb$5;

    invoke-direct {v7, p0, p2, p3, p4}, Lhgb$5;-><init>(Lhgb;Lorg/altbeacon/beacon/Region;J)V

    invoke-interface {v6, v0, v7}, Lcom/alibaba/lightapp/runtime/idl/ATBeaconIService;->uploadLocByBeacon(Lhih;Liyv;)V

    .line 460
    return-void
.end method

.method static synthetic a(Lhgb;Lcom/amap/api/location/AMapLocation;Lorg/altbeacon/beacon/Region;J)V
    .locals 1
    .param p0, "x0"    # Lhgb;
    .param p1, "x1"    # Lcom/amap/api/location/AMapLocation;
    .param p2, "x2"    # Lorg/altbeacon/beacon/Region;
    .param p3, "x3"    # J

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3, p4}, Lhgb;->a(Lcom/amap/api/location/AMapLocation;Lorg/altbeacon/beacon/Region;J)V

    return-void
.end method

.method static synthetic a(Lhgb;Ljava/lang/String;J)V
    .locals 10
    .param p0, "x0"    # Lhgb;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J

    .prologue
    const-wide/16 v8, 0x0

    .line 60
    .line 6280
    const/4 v1, 0x0

    .line 6281
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6284
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 6285
    const-string/jumbo v2, "corpIds"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 6291
    :cond_0
    :goto_0
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 6292
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 6293
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    .line 6294
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 6295
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/alibaba/dingtalk/oabase/OAInterface;->b(Ljava/lang/String;)Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    move-result-object v2

    .line 6296
    if-eqz v2, :cond_1

    .line 6297
    const-string/jumbo v3, "122"

    .line 6298
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, p2

    iget-wide v6, v2, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgId:J

    .line 6297
    invoke-static {v3, v4, v5, v6, v7}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->doCommitBeaconPerformanceFailed(Ljava/lang/String;JJ)V

    .line 6292
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 6286
    :catch_0
    move-exception v0

    .line 6287
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 6301
    :cond_2
    const-string/jumbo v2, "122"

    .line 6302
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, p2

    .line 6301
    invoke-static {v2, v4, v5, v8, v9}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->doCommitBeaconPerformanceFailed(Ljava/lang/String;JJ)V

    goto :goto_2

    .line 6306
    :cond_3
    const-string/jumbo v0, "122"

    .line 6307
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p2

    .line 6306
    invoke-static {v0, v2, v3, v8, v9}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->doCommitBeaconPerformanceFailed(Ljava/lang/String;JJ)V

    .line 6292
    :cond_4
    return-void
.end method

.method static synthetic b(Lhgb;Ljava/lang/String;J)V
    .locals 10
    .param p0, "x0"    # Lhgb;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J

    .prologue
    const-wide/16 v8, 0x0

    .line 60
    .line 7206
    const/4 v1, 0x0

    .line 7207
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7210
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 7211
    const-string/jumbo v2, "corpIds"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 7217
    :cond_0
    :goto_0
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 7218
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 7219
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    .line 7220
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 7221
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/alibaba/dingtalk/oabase/OAInterface;->b(Ljava/lang/String;)Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    move-result-object v2

    .line 7222
    if-eqz v2, :cond_1

    .line 7223
    const-string/jumbo v3, "123"

    .line 7224
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, p2

    iget-wide v6, v2, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgId:J

    .line 7223
    invoke-static {v3, v4, v5, v6, v7}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->doCommitBeaconPerformanceFailed(Ljava/lang/String;JJ)V

    .line 7218
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 7212
    :catch_0
    move-exception v0

    .line 7213
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 7227
    :cond_2
    const-string/jumbo v2, "123"

    .line 7228
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, p2

    .line 7227
    invoke-static {v2, v4, v5, v8, v9}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->doCommitBeaconPerformanceFailed(Ljava/lang/String;JJ)V

    goto :goto_2

    .line 7232
    :cond_3
    const-string/jumbo v0, "123"

    .line 7233
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p2

    .line 7232
    invoke-static {v0, v2, v3, v8, v9}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->doCommitBeaconPerformanceFailed(Ljava/lang/String;JJ)V

    .line 7218
    :cond_4
    return-void
.end method

.method public static b()Z
    .locals 5

    .prologue
    .line 470
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-ge v2, v3, :cond_0

    .line 471
    const/4 v0, 0x0

    .line 482
    .local v0, "hasSystemFeature":Z
    :goto_0
    return v0

    .line 473
    .end local v0    # "hasSystemFeature":Z
    :cond_0
    const/4 v0, 0x0

    .line 477
    .restart local v0    # "hasSystemFeature":Z
    :try_start_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v3, "android.hardware.bluetooth_le"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 478
    :catch_0
    move-exception v1

    .line 479
    .local v1, "t":Ljava/lang/Throwable;
    const-string/jumbo v2, "SW"

    const-string/jumbo v3, "checkAvailability"

    invoke-static {v1}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public didEnterRegion(Lorg/altbeacon/beacon/Region;)V
    .locals 6
    .param p1, "region"    # Lorg/altbeacon/beacon/Region;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 178
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->b()Lchy;

    move-result-object v0

    invoke-virtual {v0}, Lchy;->isLogin()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4377
    :goto_0
    return-void

    .line 181
    :cond_0
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v2, Lhgb$2;

    invoke-direct {v2, p0}, Lhgb$2;-><init>(Lhgb;)V

    invoke-virtual {v0, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 189
    const-string/jumbo v2, "SW"

    const-string/jumbo v3, "didEnterRegion"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    if-nez p1, :cond_1

    const-string/jumbo v0, " "

    .line 190
    :goto_1
    aput-object v0, v4, v1

    const/4 v0, 0x1

    iget-boolean v5, p0, Lhgb;->e:Z

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 189
    invoke-static {v2, v3, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4346
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 4348
    invoke-static {}, Lhge;->d()Lhge;

    move-result-object v0

    .line 5192
    if-eqz p1, :cond_2

    .line 5193
    iget-object v4, v0, Lhge;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/altbeacon/beacon/Region;->getUniqueId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 5194
    iget-object v0, v0, Lhge;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/altbeacon/beacon/Region;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 4348
    :goto_2
    if-eqz v0, :cond_3

    .line 4349
    new-instance v0, Lhgb$3;

    invoke-direct {v0, p0, p1, v2, v3}, Lhgb$3;-><init>(Lhgb;Lorg/altbeacon/beacon/Region;J)V

    .line 4371
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lhgb$4;

    invoke-direct {v2, p0, v0}, Lhgb$4;-><init>(Lhgb;Lcir;)V

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v4, v5}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 190
    :cond_1
    invoke-virtual {p1}, Lorg/altbeacon/beacon/Region;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    move v0, v1

    .line 5197
    goto :goto_2

    .line 4378
    :cond_3
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, v2, v3}, Lhgb;->a(Lcom/amap/api/location/AMapLocation;Lorg/altbeacon/beacon/Region;J)V

    goto :goto_0
.end method

.method public didExitRegion(Lorg/altbeacon/beacon/Region;)V
    .locals 5
    .param p1, "region"    # Lorg/altbeacon/beacon/Region;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 197
    const-string/jumbo v1, "SW"

    const-string/jumbo v2, "didExitRegion"

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    const/4 v4, 0x0

    if-nez p1, :cond_0

    const-string/jumbo v0, " "

    .line 198
    :goto_0
    aput-object v0, v3, v4

    const/4 v0, 0x1

    iget-boolean v4, p0, Lhgb;->e:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 197
    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    return-void

    .line 198
    :cond_0
    invoke-virtual {p1}, Lorg/altbeacon/beacon/Region;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onBeaconRangeChange(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/altbeacon/beacon/Beacon;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 173
    .local p1, "beacons":Ljava/util/List;, "Ljava/util/List<Lorg/altbeacon/beacon/Beacon;>;"
    return-void
.end method
