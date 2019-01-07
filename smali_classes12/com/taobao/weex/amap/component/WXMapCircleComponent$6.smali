.class Lcom/taobao/weex/amap/component/WXMapCircleComponent$6;
.super Ljava/lang/Object;
.source "WXMapCircleComponent.java"

# interfaces
.implements Lcom/taobao/weex/amap/component/WXMapViewComponent$MapOperationTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/amap/component/WXMapCircleComponent;->initCircle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/amap/component/WXMapCircleComponent;


# direct methods
.method constructor <init>(Lcom/taobao/weex/amap/component/WXMapCircleComponent;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/taobao/weex/amap/component/WXMapCircleComponent$6;->this$0:Lcom/taobao/weex/amap/component/WXMapCircleComponent;

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
    .line 127
    new-instance v0, Lcom/amap/api/maps/model/CircleOptions;

    invoke-direct {v0}, Lcom/amap/api/maps/model/CircleOptions;-><init>()V

    .line 128
    .local v0, "circleOptions":Lcom/amap/api/maps/model/CircleOptions;
    iget-object v1, p0, Lcom/taobao/weex/amap/component/WXMapCircleComponent$6;->this$0:Lcom/taobao/weex/amap/component/WXMapCircleComponent;

    invoke-static {v1}, Lcom/taobao/weex/amap/component/WXMapCircleComponent;->access$000(Lcom/taobao/weex/amap/component/WXMapCircleComponent;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/CircleOptions;->strokeColor(I)Lcom/amap/api/maps/model/CircleOptions;

    .line 129
    iget-object v1, p0, Lcom/taobao/weex/amap/component/WXMapCircleComponent$6;->this$0:Lcom/taobao/weex/amap/component/WXMapCircleComponent;

    invoke-static {v1}, Lcom/taobao/weex/amap/component/WXMapCircleComponent;->access$200(Lcom/taobao/weex/amap/component/WXMapCircleComponent;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/CircleOptions;->strokeWidth(F)Lcom/amap/api/maps/model/CircleOptions;

    .line 130
    iget-object v1, p0, Lcom/taobao/weex/amap/component/WXMapCircleComponent$6;->this$0:Lcom/taobao/weex/amap/component/WXMapCircleComponent;

    invoke-static {v1}, Lcom/taobao/weex/amap/component/WXMapCircleComponent;->access$300(Lcom/taobao/weex/amap/component/WXMapCircleComponent;)F

    move-result v1

    float-to-double v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/amap/api/maps/model/CircleOptions;->radius(D)Lcom/amap/api/maps/model/CircleOptions;

    .line 131
    iget-object v1, p0, Lcom/taobao/weex/amap/component/WXMapCircleComponent$6;->this$0:Lcom/taobao/weex/amap/component/WXMapCircleComponent;

    invoke-static {v1}, Lcom/taobao/weex/amap/component/WXMapCircleComponent;->access$100(Lcom/taobao/weex/amap/component/WXMapCircleComponent;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/CircleOptions;->fillColor(I)Lcom/amap/api/maps/model/CircleOptions;

    .line 132
    iget-object v1, p0, Lcom/taobao/weex/amap/component/WXMapCircleComponent$6;->this$0:Lcom/taobao/weex/amap/component/WXMapCircleComponent;

    invoke-virtual {p1}, Lcom/amap/api/maps/TextureMapView;->getMap()Lcom/amap/api/maps/AMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/amap/api/maps/AMap;->addCircle(Lcom/amap/api/maps/model/CircleOptions;)Lcom/amap/api/maps/model/Circle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/taobao/weex/amap/component/WXMapCircleComponent;->setWidget(Ljava/lang/Object;)V

    .line 133
    return-void
.end method
