.class Lcom/taobao/weex/amap/component/WXMapViewComponent$4;
.super Ljava/lang/Object;
.source "WXMapViewComponent.java"

# interfaces
.implements Lcom/amap/api/maps/AMap$OnCameraChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/amap/component/WXMapViewComponent;->initMap()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mZoomChanged:Z

.field final synthetic this$0:Lcom/taobao/weex/amap/component/WXMapViewComponent;


# direct methods
.method constructor <init>(Lcom/taobao/weex/amap/component/WXMapViewComponent;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent$4;->this$0:Lcom/taobao/weex/amap/component/WXMapViewComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraChange(Lcom/amap/api/maps/model/CameraPosition;)V
    .locals 2
    .param p1, "cameraPosition"    # Lcom/amap/api/maps/model/CameraPosition;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 166
    iget-object v0, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent$4;->this$0:Lcom/taobao/weex/amap/component/WXMapViewComponent;

    invoke-static {v0}, Lcom/taobao/weex/amap/component/WXMapViewComponent;->access$400(Lcom/taobao/weex/amap/component/WXMapViewComponent;)F

    move-result v0

    iget v1, p1, Lcom/amap/api/maps/model/CameraPosition;->zoom:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent$4;->mZoomChanged:Z

    .line 167
    iget-object v0, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent$4;->this$0:Lcom/taobao/weex/amap/component/WXMapViewComponent;

    iget v1, p1, Lcom/amap/api/maps/model/CameraPosition;->zoom:F

    invoke-static {v0, v1}, Lcom/taobao/weex/amap/component/WXMapViewComponent;->access$402(Lcom/taobao/weex/amap/component/WXMapViewComponent;F)F

    .line 168
    return-void

    .line 166
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCameraChangeFinish(Lcom/amap/api/maps/model/CameraPosition;)V
    .locals 8
    .param p1, "cameraPosition"    # Lcom/amap/api/maps/model/CameraPosition;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 172
    iget-boolean v5, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent$4;->mZoomChanged:Z

    if-eqz v5, :cond_0

    .line 174
    iget-object v5, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent$4;->this$0:Lcom/taobao/weex/amap/component/WXMapViewComponent;

    invoke-static {v5}, Lcom/taobao/weex/amap/component/WXMapViewComponent;->access$500(Lcom/taobao/weex/amap/component/WXMapViewComponent;)Lcom/amap/api/maps/AMap;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amap/api/maps/AMap;->getScalePerPixel()F

    move-result v2

    .line 175
    .local v2, "scale":F
    invoke-static {v2}, Lcom/taobao/weex/utils/WXViewUtils;->getWeexPxByReal(F)F

    move-result v5

    div-float v3, v2, v5

    .line 177
    .local v3, "scaleInWeex":F
    iget-object v5, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent$4;->this$0:Lcom/taobao/weex/amap/component/WXMapViewComponent;

    invoke-static {v5}, Lcom/taobao/weex/amap/component/WXMapViewComponent;->access$500(Lcom/taobao/weex/amap/component/WXMapViewComponent;)Lcom/amap/api/maps/AMap;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amap/api/maps/AMap;->getProjection()Lcom/amap/api/maps/Projection;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amap/api/maps/Projection;->getVisibleRegion()Lcom/amap/api/maps/model/VisibleRegion;

    move-result-object v4

    .line 178
    .local v4, "visibleRegion":Lcom/amap/api/maps/model/VisibleRegion;
    const-string/jumbo v5, "WXMapViewComponent"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Visible region: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/amap/api/maps/model/VisibleRegion;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 180
    .local v1, "region":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v5, "northeast"

    iget-object v6, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent$4;->this$0:Lcom/taobao/weex/amap/component/WXMapViewComponent;

    iget-object v7, v4, Lcom/amap/api/maps/model/VisibleRegion;->latLngBounds:Lcom/amap/api/maps/model/LatLngBounds;

    iget-object v7, v7, Lcom/amap/api/maps/model/LatLngBounds;->northeast:Lcom/amap/api/maps/model/LatLng;

    invoke-static {v6, v7}, Lcom/taobao/weex/amap/component/WXMapViewComponent;->access$700(Lcom/taobao/weex/amap/component/WXMapViewComponent;Lcom/amap/api/maps/model/LatLng;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    const-string/jumbo v5, "southwest"

    iget-object v6, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent$4;->this$0:Lcom/taobao/weex/amap/component/WXMapViewComponent;

    iget-object v7, v4, Lcom/amap/api/maps/model/VisibleRegion;->latLngBounds:Lcom/amap/api/maps/model/LatLngBounds;

    iget-object v7, v7, Lcom/amap/api/maps/model/LatLngBounds;->southwest:Lcom/amap/api/maps/model/LatLng;

    invoke-static {v6, v7}, Lcom/taobao/weex/amap/component/WXMapViewComponent;->access$700(Lcom/taobao/weex/amap/component/WXMapViewComponent;Lcom/amap/api/maps/model/LatLng;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 184
    .local v0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v5, "targetCoordinate"

    iget-object v6, p1, Lcom/amap/api/maps/model/CameraPosition;->target:Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {v6}, Lcom/amap/api/maps/model/LatLng;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    const-string/jumbo v5, "zoom"

    iget v6, p1, Lcom/amap/api/maps/model/CameraPosition;->zoom:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    const-string/jumbo v5, "tilt"

    iget v6, p1, Lcom/amap/api/maps/model/CameraPosition;->tilt:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    const-string/jumbo v5, "bearing"

    iget v6, p1, Lcom/amap/api/maps/model/CameraPosition;->bearing:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    const-string/jumbo v5, "isAbroad"

    iget-boolean v6, p1, Lcom/amap/api/maps/model/CameraPosition;->isAbroad:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    const-string/jumbo v5, "scalePerPixel"

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    const-string/jumbo v5, "visibleRegion"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    iget-object v5, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent$4;->this$0:Lcom/taobao/weex/amap/component/WXMapViewComponent;

    invoke-virtual {v5}, Lcom/taobao/weex/amap/component/WXMapViewComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v5

    iget-object v6, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent$4;->this$0:Lcom/taobao/weex/amap/component/WXMapViewComponent;

    invoke-virtual {v6}, Lcom/taobao/weex/amap/component/WXMapViewComponent;->getRef()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "zoomchange"

    invoke-virtual {v5, v6, v7, v0}, Lcom/taobao/weex/WXSDKInstance;->fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 193
    .end local v0    # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v1    # "region":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "scale":F
    .end local v3    # "scaleInWeex":F
    .end local v4    # "visibleRegion":Lcom/amap/api/maps/model/VisibleRegion;
    :cond_0
    return-void
.end method
