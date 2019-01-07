.class public Lcom/taobao/weex/amap/module/WXMapModule;
.super Lcom/taobao/weex/common/WXModule;
.source "WXMapModule.java"


# annotations
.annotation build Lcom/alibaba/weex/plugin/annotation/WeexModule;
    name = "amap"
.end annotation


# static fields
.field private static final DATA:Ljava/lang/String; = "data"

.field private static final RESULT:Ljava/lang/String; = "result"

.field private static final RESULT_FAILED:Ljava/lang/String; = "failed"

.field private static final RESULT_OK:Ljava/lang/String; = "success"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/taobao/weex/common/WXModule;-><init>()V

    return-void
.end method


# virtual methods
.method public getLineDistance(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)V
    .locals 12
    .param p1, "posA"    # Ljava/lang/String;
    .param p2, "posB"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/taobao/weex/bridge/JSCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 44
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    const/high16 v1, -0x40800000    # -1.0f

    .line 47
    .local v1, "distance":F
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 48
    .local v3, "jsonArray":Lorg/json/JSONArray;
    new-instance v5, Lcom/amap/api/maps/model/LatLng;

    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v8

    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v10

    invoke-direct {v5, v8, v9, v10, v11}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    .line 49
    .local v5, "latLngA":Lcom/amap/api/maps/model/LatLng;
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 50
    .local v4, "jsonArrayB":Lorg/json/JSONArray;
    new-instance v6, Lcom/amap/api/maps/model/LatLng;

    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v8

    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v10

    invoke-direct {v6, v8, v9, v10, v11}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    .line 51
    .local v6, "latLngB":Lcom/amap/api/maps/model/LatLng;
    invoke-static {v5, v6}, Lcom/amap/api/maps/AMapUtils;->calculateLineDistance(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)F
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 55
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    .end local v4    # "jsonArrayB":Lorg/json/JSONArray;
    .end local v5    # "latLngA":Lcom/amap/api/maps/model/LatLng;
    .end local v6    # "latLngB":Lcom/amap/api/maps/model/LatLng;
    :goto_0
    if-eqz p3, :cond_0

    .line 56
    new-instance v7, Ljava/util/HashMap;

    const/4 v8, 0x2

    invoke-direct {v7, v8}, Ljava/util/HashMap;-><init>(I)V

    .line 57
    .local v7, "map":Ljava/util/HashMap;
    new-instance v0, Ljava/util/HashMap;

    const/4 v8, 0x1

    invoke-direct {v0, v8}, Ljava/util/HashMap;-><init>(I)V

    .line 58
    .local v0, "data":Ljava/util/HashMap;
    const-string/jumbo v8, "distance"

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string/jumbo v8, "data"

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string/jumbo v9, "result"

    const/4 v8, 0x0

    cmpl-float v8, v1, v8

    if-ltz v8, :cond_1

    const-string/jumbo v8, "success"

    :goto_1
    invoke-virtual {v7, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    invoke-interface {p3, v7}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    .line 64
    .end local v0    # "data":Ljava/util/HashMap;
    .end local v7    # "map":Ljava/util/HashMap;
    :cond_0
    return-void

    .line 52
    :catch_0
    move-exception v2

    .line 53
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 60
    .end local v2    # "e":Lorg/json/JSONException;
    .restart local v0    # "data":Ljava/util/HashMap;
    .restart local v7    # "map":Ljava/util/HashMap;
    :cond_1
    const-string/jumbo v8, "failed"

    goto :goto_1
.end method

.method public getUserLocation(Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/taobao/weex/bridge/JSCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 97
    new-instance v0, Lcom/amap/api/location/AMapLocationClient;

    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/amap/api/location/AMapLocationClient;-><init>(Landroid/content/Context;)V

    .line 99
    .local v0, "client":Lcom/amap/api/location/AMapLocationClient;
    new-instance v1, Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {v1}, Lcom/amap/api/location/AMapLocationClientOption;-><init>()V

    .line 101
    .local v1, "clientOption":Lcom/amap/api/location/AMapLocationClientOption;
    new-instance v2, Lcom/taobao/weex/amap/module/WXMapModule$1;

    invoke-direct {v2, p0, p2, v0}, Lcom/taobao/weex/amap/module/WXMapModule$1;-><init>(Lcom/taobao/weex/amap/module/WXMapModule;Lcom/taobao/weex/bridge/JSCallback;Lcom/amap/api/location/AMapLocationClient;)V

    invoke-virtual {v0, v2}, Lcom/amap/api/location/AMapLocationClient;->setLocationListener(Lcom/amap/api/location/AMapLocationListener;)V

    .line 126
    sget-object v2, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Hight_Accuracy:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    invoke-virtual {v1, v2}, Lcom/amap/api/location/AMapLocationClientOption;->setLocationMode(Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;)Lcom/amap/api/location/AMapLocationClientOption;

    .line 127
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/amap/api/location/AMapLocationClientOption;->setOnceLocation(Z)Lcom/amap/api/location/AMapLocationClientOption;

    .line 129
    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClient;->setLocationOption(Lcom/amap/api/location/AMapLocationClientOption;)V

    .line 134
    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClient;->startLocation()V

    .line 135
    return-void
.end method

.method public polygonContainsMarker(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)V
    .locals 12
    .param p1, "position"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/taobao/weex/bridge/JSCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 68
    const/4 v1, 0x0

    .line 69
    .local v1, "contains":Z
    const/4 v6, 0x0

    .line 71
    .local v6, "success":Z
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 72
    .local v3, "jsonArray":Lorg/json/JSONArray;
    new-instance v4, Lcom/amap/api/maps/model/LatLng;

    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v8

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v10

    invoke-direct {v4, v8, v9, v10, v11}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    .line 74
    .local v4, "latLng":Lcom/amap/api/maps/model/LatLng;
    invoke-virtual {p0, p2}, Lcom/taobao/weex/amap/module/WXMapModule;->findComponent(Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    .line 76
    .local v0, "component":Lcom/taobao/weex/ui/component/WXComponent;
    if-eqz v0, :cond_0

    instance-of v7, v0, Lcom/taobao/weex/amap/component/WXMapPolygonComponent;

    if-eqz v7, :cond_0

    .line 77
    check-cast v0, Lcom/taobao/weex/amap/component/WXMapPolygonComponent;

    .end local v0    # "component":Lcom/taobao/weex/ui/component/WXComponent;
    invoke-virtual {v0, v4}, Lcom/taobao/weex/amap/component/WXMapPolygonComponent;->contains(Lcom/amap/api/maps/model/LatLng;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 78
    const/4 v6, 0x1

    .line 83
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    .end local v4    # "latLng":Lcom/amap/api/maps/model/LatLng;
    :cond_0
    :goto_0
    if-eqz p3, :cond_1

    .line 84
    new-instance v5, Ljava/util/HashMap;

    const/4 v7, 0x2

    invoke-direct {v5, v7}, Ljava/util/HashMap;-><init>(I)V

    .line 85
    .local v5, "map":Ljava/util/HashMap;
    const-string/jumbo v7, "data"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string/jumbo v8, "result"

    if-eqz v6, :cond_2

    const-string/jumbo v7, "success"

    :goto_1
    invoke-virtual {v5, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    invoke-interface {p3, v5}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    .line 90
    .end local v5    # "map":Ljava/util/HashMap;
    :cond_1
    return-void

    .line 80
    :catch_0
    move-exception v2

    .line 81
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 86
    .end local v2    # "e":Lorg/json/JSONException;
    .restart local v5    # "map":Ljava/util/HashMap;
    :cond_2
    const-string/jumbo v7, "failed"

    goto :goto_1
.end method
