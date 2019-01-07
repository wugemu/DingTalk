.class Lcom/taobao/weex/amap/component/WXMapPolygonComponent$5;
.super Ljava/lang/Object;
.source "WXMapPolygonComponent.java"

# interfaces
.implements Lcom/taobao/weex/amap/component/WXMapViewComponent$MapOperationTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/amap/component/WXMapPolygonComponent;->initPolygon()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/amap/component/WXMapPolygonComponent;


# direct methods
.method constructor <init>(Lcom/taobao/weex/amap/component/WXMapPolygonComponent;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/taobao/weex/amap/component/WXMapPolygonComponent$5;->this$0:Lcom/taobao/weex/amap/component/WXMapPolygonComponent;

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
    .line 119
    new-instance v0, Lcom/amap/api/maps/model/PolygonOptions;

    invoke-direct {v0}, Lcom/amap/api/maps/model/PolygonOptions;-><init>()V

    .line 120
    .local v0, "polygonOptions":Lcom/amap/api/maps/model/PolygonOptions;
    iget-object v1, p0, Lcom/taobao/weex/amap/component/WXMapPolygonComponent$5;->this$0:Lcom/taobao/weex/amap/component/WXMapPolygonComponent;

    iget-object v1, v1, Lcom/taobao/weex/amap/component/WXMapPolygonComponent;->mPosition:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/PolygonOptions;->addAll(Ljava/lang/Iterable;)Lcom/amap/api/maps/model/PolygonOptions;

    .line 121
    iget-object v1, p0, Lcom/taobao/weex/amap/component/WXMapPolygonComponent$5;->this$0:Lcom/taobao/weex/amap/component/WXMapPolygonComponent;

    invoke-static {v1}, Lcom/taobao/weex/amap/component/WXMapPolygonComponent;->access$000(Lcom/taobao/weex/amap/component/WXMapPolygonComponent;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/PolygonOptions;->strokeColor(I)Lcom/amap/api/maps/model/PolygonOptions;

    .line 122
    iget-object v1, p0, Lcom/taobao/weex/amap/component/WXMapPolygonComponent$5;->this$0:Lcom/taobao/weex/amap/component/WXMapPolygonComponent;

    invoke-static {v1}, Lcom/taobao/weex/amap/component/WXMapPolygonComponent;->access$200(Lcom/taobao/weex/amap/component/WXMapPolygonComponent;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/PolygonOptions;->strokeWidth(F)Lcom/amap/api/maps/model/PolygonOptions;

    .line 123
    iget-object v1, p0, Lcom/taobao/weex/amap/component/WXMapPolygonComponent$5;->this$0:Lcom/taobao/weex/amap/component/WXMapPolygonComponent;

    invoke-virtual {p1}, Lcom/amap/api/maps/TextureMapView;->getMap()Lcom/amap/api/maps/AMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/amap/api/maps/AMap;->addPolygon(Lcom/amap/api/maps/model/PolygonOptions;)Lcom/amap/api/maps/model/Polygon;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/taobao/weex/amap/component/WXMapPolygonComponent;->setWidget(Ljava/lang/Object;)V

    .line 124
    return-void
.end method
