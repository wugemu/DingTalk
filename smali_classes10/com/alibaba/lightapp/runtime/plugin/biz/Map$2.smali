.class Lcom/alibaba/lightapp/runtime/plugin/biz/Map$2;
.super Landroid/content/BroadcastReceiver;
.source "Map.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Map;->registerReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Map;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Map;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Map;

    .prologue
    .line 291
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Map$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Map;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 294
    const-string/jumbo v8, "poi_info_key"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/amap/api/services/core/PoiItem;

    .line 296
    .local v3, "poiItem":Lcom/amap/api/services/core/PoiItem;
    if-eqz v3, :cond_2

    .line 297
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 299
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v8, "map_longitude"

    const-wide/16 v10, 0x0

    invoke-virtual {p2, v8, v10, v11}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v6

    .line 300
    .local v6, "longitude":D
    const-wide/16 v8, 0x0

    cmpl-double v8, v6, v8

    if-nez v8, :cond_0

    .line 301
    invoke-virtual {v3}, Lcom/amap/api/services/core/PoiItem;->getLatLonPoint()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v2

    .line 302
    .local v2, "latLonPoint":Lcom/amap/api/services/core/LatLonPoint;
    if-eqz v2, :cond_0

    .line 303
    invoke-virtual {v2}, Lcom/amap/api/services/core/LatLonPoint;->getLongitude()D

    move-result-wide v6

    .line 308
    .end local v2    # "latLonPoint":Lcom/amap/api/services/core/LatLonPoint;
    :cond_0
    const-string/jumbo v8, "map_latitude"

    const-wide/16 v10, 0x0

    invoke-virtual {p2, v8, v10, v11}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v4

    .line 309
    .local v4, "latitude":D
    const-wide/16 v8, 0x0

    cmpl-double v8, v4, v8

    if-nez v8, :cond_1

    .line 310
    invoke-virtual {v3}, Lcom/amap/api/services/core/PoiItem;->getLatLonPoint()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v2

    .line 311
    .restart local v2    # "latLonPoint":Lcom/amap/api/services/core/LatLonPoint;
    if-eqz v2, :cond_1

    .line 312
    invoke-virtual {v3}, Lcom/amap/api/services/core/PoiItem;->getLatLonPoint()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v8

    invoke-virtual {v8}, Lcom/amap/api/services/core/LatLonPoint;->getLatitude()D

    move-result-wide v4

    .line 316
    .end local v2    # "latLonPoint":Lcom/amap/api/services/core/LatLonPoint;
    :cond_1
    const-string/jumbo v8, "province"

    invoke-virtual {v3}, Lcom/amap/api/services/core/PoiItem;->getProvinceName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 317
    const-string/jumbo v8, "provinceCode"

    invoke-virtual {v3}, Lcom/amap/api/services/core/PoiItem;->getProvinceCode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 318
    const-string/jumbo v8, "city"

    invoke-virtual {v3}, Lcom/amap/api/services/core/PoiItem;->getCityName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 319
    const-string/jumbo v8, "cityCode"

    invoke-virtual {v3}, Lcom/amap/api/services/core/PoiItem;->getCityCode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 320
    const-string/jumbo v8, "adCode"

    invoke-virtual {v3}, Lcom/amap/api/services/core/PoiItem;->getAdCode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 321
    const-string/jumbo v8, "adName"

    invoke-virtual {v3}, Lcom/amap/api/services/core/PoiItem;->getAdName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 322
    const-string/jumbo v8, "direction"

    invoke-virtual {v3}, Lcom/amap/api/services/core/PoiItem;->getDirection()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 323
    const-string/jumbo v8, "distance"

    invoke-virtual {v3}, Lcom/amap/api/services/core/PoiItem;->getDistance()I

    move-result v9

    invoke-virtual {v1, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 324
    const-string/jumbo v8, "postCode"

    invoke-virtual {v3}, Lcom/amap/api/services/core/PoiItem;->getPostcode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 325
    const-string/jumbo v8, "title"

    invoke-virtual {v3}, Lcom/amap/api/services/core/PoiItem;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 326
    const-string/jumbo v8, "snippet"

    invoke-virtual {v3}, Lcom/amap/api/services/core/PoiItem;->getSnippet()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 327
    const-string/jumbo v8, "longitude"

    invoke-virtual {v1, v8, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 328
    const-string/jumbo v8, "latitude"

    invoke-virtual {v1, v8, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 329
    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Map$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Map;

    new-instance v9, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v10, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v9, v10, v1}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    iget-object v10, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Map$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Map;

    invoke-static {v10}, Lcom/alibaba/lightapp/runtime/plugin/biz/Map;->access$800(Lcom/alibaba/lightapp/runtime/plugin/biz/Map;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/alibaba/lightapp/runtime/plugin/biz/Map;->access$900(Lcom/alibaba/lightapp/runtime/plugin/biz/Map;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "latitude":D
    .end local v6    # "longitude":D
    :goto_0
    return-void

    .line 330
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 331
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 332
    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Map$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Map;

    new-instance v9, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v10, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v11, 0x3

    .line 333
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    iget-object v10, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Map$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Map;

    invoke-static {v10}, Lcom/alibaba/lightapp/runtime/plugin/biz/Map;->access$800(Lcom/alibaba/lightapp/runtime/plugin/biz/Map;)Ljava/lang/String;

    move-result-object v10

    .line 332
    invoke-static {v8, v9, v10}, Lcom/alibaba/lightapp/runtime/plugin/biz/Map;->access$1000(Lcom/alibaba/lightapp/runtime/plugin/biz/Map;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    goto :goto_0

    .line 336
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :cond_2
    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Map$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Map;

    new-instance v9, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v10, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v11, 0x3

    const-string/jumbo v12, "location error"

    .line 337
    invoke-static {v11, v12}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    iget-object v10, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Map$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Map;

    invoke-static {v10}, Lcom/alibaba/lightapp/runtime/plugin/biz/Map;->access$800(Lcom/alibaba/lightapp/runtime/plugin/biz/Map;)Ljava/lang/String;

    move-result-object v10

    .line 336
    invoke-static {v8, v9, v10}, Lcom/alibaba/lightapp/runtime/plugin/biz/Map;->access$1100(Lcom/alibaba/lightapp/runtime/plugin/biz/Map;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    goto :goto_0
.end method
