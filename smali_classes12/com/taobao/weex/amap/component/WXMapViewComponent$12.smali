.class Lcom/taobao/weex/amap/component/WXMapViewComponent$12;
.super Ljava/lang/Object;
.source "WXMapViewComponent.java"

# interfaces
.implements Lcom/taobao/weex/amap/component/WXMapViewComponent$MapOperationTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/amap/component/WXMapViewComponent;->setCenter(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/amap/component/WXMapViewComponent;

.field final synthetic val$location:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/taobao/weex/amap/component/WXMapViewComponent;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 417
    iput-object p1, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent$12;->this$0:Lcom/taobao/weex/amap/component/WXMapViewComponent;

    iput-object p2, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent$12;->val$location:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/amap/api/maps/TextureMapView;)V
    .locals 8
    .param p1, "mapView"    # Lcom/amap/api/maps/TextureMapView;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 421
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    iget-object v3, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent$12;->val$location:Ljava/lang/String;

    invoke-direct {v1, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 422
    .local v1, "jsonArray":Lorg/json/JSONArray;
    new-instance v2, Lcom/amap/api/maps/model/LatLng;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v4

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v6

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    .line 423
    .local v2, "latLng":Lcom/amap/api/maps/model/LatLng;
    iget-object v3, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent$12;->this$0:Lcom/taobao/weex/amap/component/WXMapViewComponent;

    invoke-static {v3}, Lcom/taobao/weex/amap/component/WXMapViewComponent;->access$500(Lcom/taobao/weex/amap/component/WXMapViewComponent;)Lcom/amap/api/maps/AMap;

    move-result-object v3

    invoke-static {v2}, Lcom/amap/api/maps/CameraUpdateFactory;->changeLatLng(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/CameraUpdate;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amap/api/maps/AMap;->moveCamera(Lcom/amap/api/maps/CameraUpdate;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 427
    .end local v1    # "jsonArray":Lorg/json/JSONArray;
    .end local v2    # "latLng":Lcom/amap/api/maps/model/LatLng;
    :goto_0
    return-void

    .line 424
    :catch_0
    move-exception v0

    .line 425
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
