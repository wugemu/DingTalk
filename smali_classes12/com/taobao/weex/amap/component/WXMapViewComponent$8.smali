.class Lcom/taobao/weex/amap/component/WXMapViewComponent$8;
.super Ljava/lang/Object;
.source "WXMapViewComponent.java"

# interfaces
.implements Lcom/taobao/weex/amap/component/WXMapViewComponent$MapOperationTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/amap/component/WXMapViewComponent;->setZoom(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/amap/component/WXMapViewComponent;

.field final synthetic val$level:I


# direct methods
.method constructor <init>(Lcom/taobao/weex/amap/component/WXMapViewComponent;I)V
    .locals 0

    .prologue
    .line 360
    iput-object p1, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent$8;->this$0:Lcom/taobao/weex/amap/component/WXMapViewComponent;

    iput p2, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent$8;->val$level:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/amap/api/maps/TextureMapView;)V
    .locals 2
    .param p1, "mapView"    # Lcom/amap/api/maps/TextureMapView;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 363
    iget-object v0, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent$8;->this$0:Lcom/taobao/weex/amap/component/WXMapViewComponent;

    invoke-static {v0}, Lcom/taobao/weex/amap/component/WXMapViewComponent;->access$500(Lcom/taobao/weex/amap/component/WXMapViewComponent;)Lcom/amap/api/maps/AMap;

    move-result-object v0

    iget v1, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent$8;->val$level:I

    int-to-float v1, v1

    invoke-static {v1}, Lcom/amap/api/maps/CameraUpdateFactory;->zoomTo(F)Lcom/amap/api/maps/CameraUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->moveCamera(Lcom/amap/api/maps/CameraUpdate;)V

    .line 364
    return-void
.end method
