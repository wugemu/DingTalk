.class Lcom/taobao/weex/amap/component/WXMapMarkerComponent$5;
.super Ljava/lang/Object;
.source "WXMapMarkerComponent.java"

# interfaces
.implements Lcom/taobao/weex/amap/component/WXMapViewComponent$MapOperationTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/amap/component/WXMapMarkerComponent;->initMarker(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/amap/component/WXMapMarkerComponent;

.field final synthetic val$icon:Ljava/lang/String;

.field final synthetic val$position:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/taobao/weex/amap/component/WXMapMarkerComponent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/taobao/weex/amap/component/WXMapMarkerComponent$5;->this$0:Lcom/taobao/weex/amap/component/WXMapMarkerComponent;

    iput-object p2, p0, Lcom/taobao/weex/amap/component/WXMapMarkerComponent$5;->val$title:Ljava/lang/String;

    iput-object p3, p0, Lcom/taobao/weex/amap/component/WXMapMarkerComponent$5;->val$position:Ljava/lang/String;

    iput-object p4, p0, Lcom/taobao/weex/amap/component/WXMapMarkerComponent$5;->val$icon:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/amap/api/maps/TextureMapView;)V
    .locals 4
    .param p1, "mapView"    # Lcom/amap/api/maps/TextureMapView;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 165
    new-instance v1, Lcom/amap/api/maps/model/MarkerOptions;

    invoke-direct {v1}, Lcom/amap/api/maps/model/MarkerOptions;-><init>()V

    .line 167
    .local v1, "markerOptions":Lcom/amap/api/maps/model/MarkerOptions;
    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/MarkerOptions;->draggable(Z)Lcom/amap/api/maps/model/MarkerOptions;

    .line 169
    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/MarkerOptions;->setFlat(Z)Lcom/amap/api/maps/model/MarkerOptions;

    .line 170
    invoke-virtual {p1}, Lcom/amap/api/maps/TextureMapView;->getMap()Lcom/amap/api/maps/AMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/amap/api/maps/AMap;->addMarker(Lcom/amap/api/maps/model/MarkerOptions;)Lcom/amap/api/maps/model/Marker;

    move-result-object v0

    .line 171
    .local v0, "marker":Lcom/amap/api/maps/model/Marker;
    iget-object v2, p0, Lcom/taobao/weex/amap/component/WXMapMarkerComponent$5;->this$0:Lcom/taobao/weex/amap/component/WXMapMarkerComponent;

    iget-object v3, p0, Lcom/taobao/weex/amap/component/WXMapMarkerComponent$5;->val$title:Ljava/lang/String;

    invoke-static {v2, v0, v3}, Lcom/taobao/weex/amap/component/WXMapMarkerComponent;->access$000(Lcom/taobao/weex/amap/component/WXMapMarkerComponent;Lcom/amap/api/maps/model/Marker;Ljava/lang/String;)V

    .line 172
    iget-object v2, p0, Lcom/taobao/weex/amap/component/WXMapMarkerComponent$5;->this$0:Lcom/taobao/weex/amap/component/WXMapMarkerComponent;

    iget-object v3, p0, Lcom/taobao/weex/amap/component/WXMapMarkerComponent$5;->val$position:Ljava/lang/String;

    invoke-static {v2, v0, v3}, Lcom/taobao/weex/amap/component/WXMapMarkerComponent;->access$300(Lcom/taobao/weex/amap/component/WXMapMarkerComponent;Lcom/amap/api/maps/model/Marker;Ljava/lang/String;)V

    .line 173
    iget-object v2, p0, Lcom/taobao/weex/amap/component/WXMapMarkerComponent$5;->this$0:Lcom/taobao/weex/amap/component/WXMapMarkerComponent;

    iget-object v3, p0, Lcom/taobao/weex/amap/component/WXMapMarkerComponent$5;->val$icon:Ljava/lang/String;

    invoke-static {v2, v0, v3}, Lcom/taobao/weex/amap/component/WXMapMarkerComponent;->access$100(Lcom/taobao/weex/amap/component/WXMapMarkerComponent;Lcom/amap/api/maps/model/Marker;Ljava/lang/String;)V

    .line 174
    iget-object v2, p0, Lcom/taobao/weex/amap/component/WXMapMarkerComponent$5;->this$0:Lcom/taobao/weex/amap/component/WXMapMarkerComponent;

    invoke-virtual {v2, v0}, Lcom/taobao/weex/amap/component/WXMapMarkerComponent;->setWidget(Ljava/lang/Object;)V

    .line 175
    return-void
.end method
