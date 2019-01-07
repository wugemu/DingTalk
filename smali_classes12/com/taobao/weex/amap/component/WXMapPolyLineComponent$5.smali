.class Lcom/taobao/weex/amap/component/WXMapPolyLineComponent$5;
.super Ljava/lang/Object;
.source "WXMapPolyLineComponent.java"

# interfaces
.implements Lcom/taobao/weex/amap/component/WXMapViewComponent$MapOperationTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/amap/component/WXMapPolyLineComponent;->initPolyLine()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/amap/component/WXMapPolyLineComponent;


# direct methods
.method constructor <init>(Lcom/taobao/weex/amap/component/WXMapPolyLineComponent;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/taobao/weex/amap/component/WXMapPolyLineComponent$5;->this$0:Lcom/taobao/weex/amap/component/WXMapPolyLineComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/amap/api/maps/TextureMapView;)V
    .locals 3
    .param p1, "mapView"    # Lcom/amap/api/maps/TextureMapView;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 120
    new-instance v0, Lcom/amap/api/maps/model/PolylineOptions;

    invoke-direct {v0}, Lcom/amap/api/maps/model/PolylineOptions;-><init>()V

    .line 121
    .local v0, "polylineOptions":Lcom/amap/api/maps/model/PolylineOptions;
    iget-object v1, p0, Lcom/taobao/weex/amap/component/WXMapPolyLineComponent$5;->this$0:Lcom/taobao/weex/amap/component/WXMapPolyLineComponent;

    iget-object v1, v1, Lcom/taobao/weex/amap/component/WXMapPolyLineComponent;->mPosition:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/PolylineOptions;->setPoints(Ljava/util/List;)V

    .line 122
    iget-object v1, p0, Lcom/taobao/weex/amap/component/WXMapPolyLineComponent$5;->this$0:Lcom/taobao/weex/amap/component/WXMapPolyLineComponent;

    invoke-static {v1}, Lcom/taobao/weex/amap/component/WXMapPolyLineComponent;->access$000(Lcom/taobao/weex/amap/component/WXMapPolyLineComponent;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/PolylineOptions;->color(I)Lcom/amap/api/maps/model/PolylineOptions;

    .line 123
    iget-object v1, p0, Lcom/taobao/weex/amap/component/WXMapPolyLineComponent$5;->this$0:Lcom/taobao/weex/amap/component/WXMapPolyLineComponent;

    invoke-static {v1}, Lcom/taobao/weex/amap/component/WXMapPolyLineComponent;->access$100(Lcom/taobao/weex/amap/component/WXMapPolyLineComponent;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/PolylineOptions;->width(F)Lcom/amap/api/maps/model/PolylineOptions;

    .line 124
    const-string/jumbo v1, "dashed"

    iget-object v2, p0, Lcom/taobao/weex/amap/component/WXMapPolyLineComponent$5;->this$0:Lcom/taobao/weex/amap/component/WXMapPolyLineComponent;

    invoke-static {v2}, Lcom/taobao/weex/amap/component/WXMapPolyLineComponent;->access$200(Lcom/taobao/weex/amap/component/WXMapPolyLineComponent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/PolylineOptions;->setDottedLine(Z)Lcom/amap/api/maps/model/PolylineOptions;

    .line 125
    iget-object v1, p0, Lcom/taobao/weex/amap/component/WXMapPolyLineComponent$5;->this$0:Lcom/taobao/weex/amap/component/WXMapPolyLineComponent;

    invoke-virtual {p1}, Lcom/amap/api/maps/TextureMapView;->getMap()Lcom/amap/api/maps/AMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/amap/api/maps/AMap;->addPolyline(Lcom/amap/api/maps/model/PolylineOptions;)Lcom/amap/api/maps/model/Polyline;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/taobao/weex/amap/component/WXMapPolyLineComponent;->setWidget(Ljava/lang/Object;)V

    .line 126
    return-void
.end method
