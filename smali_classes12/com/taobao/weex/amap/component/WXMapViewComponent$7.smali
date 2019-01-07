.class Lcom/taobao/weex/amap/component/WXMapViewComponent$7;
.super Ljava/lang/Object;
.source "WXMapViewComponent.java"

# interfaces
.implements Lcom/taobao/weex/amap/component/WXMapViewComponent$MapOperationTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/amap/component/WXMapViewComponent;->setZoomEnable(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/amap/component/WXMapViewComponent;

.field final synthetic val$zoomEnable:Z


# direct methods
.method constructor <init>(Lcom/taobao/weex/amap/component/WXMapViewComponent;Z)V
    .locals 0

    .prologue
    .line 349
    iput-object p1, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent$7;->this$0:Lcom/taobao/weex/amap/component/WXMapViewComponent;

    iput-boolean p2, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent$7;->val$zoomEnable:Z

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
    .line 352
    iget-object v0, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent$7;->this$0:Lcom/taobao/weex/amap/component/WXMapViewComponent;

    iget-boolean v1, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent$7;->val$zoomEnable:Z

    invoke-static {v0, v1}, Lcom/taobao/weex/amap/component/WXMapViewComponent;->access$1002(Lcom/taobao/weex/amap/component/WXMapViewComponent;Z)Z

    .line 353
    iget-object v0, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent$7;->this$0:Lcom/taobao/weex/amap/component/WXMapViewComponent;

    invoke-static {v0}, Lcom/taobao/weex/amap/component/WXMapViewComponent;->access$900(Lcom/taobao/weex/amap/component/WXMapViewComponent;)Lcom/amap/api/maps/UiSettings;

    move-result-object v0

    iget-boolean v1, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent$7;->val$zoomEnable:Z

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/UiSettings;->setZoomControlsEnabled(Z)V

    .line 354
    return-void
.end method
