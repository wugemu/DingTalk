.class Lcom/taobao/weex/amap/component/WXMapInfoWindowComponent$4;
.super Ljava/lang/Object;
.source "WXMapInfoWindowComponent.java"

# interfaces
.implements Lcom/taobao/weex/amap/component/WXMapViewComponent$MapOperationTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/amap/component/WXMapInfoWindowComponent;->initMarker()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/amap/component/WXMapInfoWindowComponent;

.field final synthetic val$wxMapViewComponent:Lcom/taobao/weex/amap/component/WXMapViewComponent;


# direct methods
.method constructor <init>(Lcom/taobao/weex/amap/component/WXMapInfoWindowComponent;Lcom/taobao/weex/amap/component/WXMapViewComponent;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/taobao/weex/amap/component/WXMapInfoWindowComponent$4;->this$0:Lcom/taobao/weex/amap/component/WXMapInfoWindowComponent;

    iput-object p2, p0, Lcom/taobao/weex/amap/component/WXMapInfoWindowComponent$4;->val$wxMapViewComponent:Lcom/taobao/weex/amap/component/WXMapViewComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/amap/api/maps/TextureMapView;)V
    .locals 6
    .param p1, "mapView"    # Lcom/amap/api/maps/TextureMapView;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 133
    new-instance v2, Lcom/amap/api/maps/model/MarkerOptions;

    invoke-direct {v2}, Lcom/amap/api/maps/model/MarkerOptions;-><init>()V

    .line 135
    .local v2, "markerOptions":Lcom/amap/api/maps/model/MarkerOptions;
    invoke-virtual {v2, v3}, Lcom/amap/api/maps/model/MarkerOptions;->setFlat(Z)Lcom/amap/api/maps/model/MarkerOptions;

    .line 136
    invoke-virtual {v2, v3}, Lcom/amap/api/maps/model/MarkerOptions;->infoWindowEnable(Z)Lcom/amap/api/maps/model/MarkerOptions;

    .line 138
    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Lcom/amap/api/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/amap/api/maps/model/MarkerOptions;

    .line 139
    invoke-virtual {p1}, Lcom/amap/api/maps/TextureMapView;->getMap()Lcom/amap/api/maps/AMap;

    move-result-object v0

    .line 140
    .local v0, "mMap":Lcom/amap/api/maps/AMap;
    invoke-virtual {v0, v2}, Lcom/amap/api/maps/AMap;->addMarker(Lcom/amap/api/maps/model/MarkerOptions;)Lcom/amap/api/maps/model/Marker;

    move-result-object v1

    .line 141
    .local v1, "marker":Lcom/amap/api/maps/model/Marker;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/amap/api/maps/model/Marker;->setClickable(Z)V

    .line 142
    iget-object v3, p0, Lcom/taobao/weex/amap/component/WXMapInfoWindowComponent$4;->val$wxMapViewComponent:Lcom/taobao/weex/amap/component/WXMapViewComponent;

    invoke-virtual {v3}, Lcom/taobao/weex/amap/component/WXMapViewComponent;->getCachedInfoWindow()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v1}, Lcom/amap/api/maps/model/Marker;->getId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/taobao/weex/amap/component/WXMapInfoWindowComponent$4;->this$0:Lcom/taobao/weex/amap/component/WXMapInfoWindowComponent;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object v3, p0, Lcom/taobao/weex/amap/component/WXMapInfoWindowComponent$4;->this$0:Lcom/taobao/weex/amap/component/WXMapInfoWindowComponent;

    invoke-virtual {v3, v1}, Lcom/taobao/weex/amap/component/WXMapInfoWindowComponent;->setWidget(Ljava/lang/Object;)V

    .line 144
    return-void
.end method
