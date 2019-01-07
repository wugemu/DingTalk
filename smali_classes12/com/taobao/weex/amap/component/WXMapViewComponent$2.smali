.class Lcom/taobao/weex/amap/component/WXMapViewComponent$2;
.super Ljava/lang/Object;
.source "WXMapViewComponent.java"

# interfaces
.implements Lcom/amap/api/maps/AMap$OnMapLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/amap/component/WXMapViewComponent;->initMap()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/amap/component/WXMapViewComponent;


# direct methods
.method constructor <init>(Lcom/taobao/weex/amap/component/WXMapViewComponent;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent$2;->this$0:Lcom/taobao/weex/amap/component/WXMapViewComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapLoaded()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 128
    const-string/jumbo v0, "WXMapViewComponent"

    const-string/jumbo v1, "Map loaded"

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent$2;->this$0:Lcom/taobao/weex/amap/component/WXMapViewComponent;

    invoke-static {v0}, Lcom/taobao/weex/amap/component/WXMapViewComponent;->access$300(Lcom/taobao/weex/amap/component/WXMapViewComponent;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 130
    iget-object v0, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent$2;->this$0:Lcom/taobao/weex/amap/component/WXMapViewComponent;

    iget-object v1, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent$2;->this$0:Lcom/taobao/weex/amap/component/WXMapViewComponent;

    invoke-static {v1}, Lcom/taobao/weex/amap/component/WXMapViewComponent;->access$500(Lcom/taobao/weex/amap/component/WXMapViewComponent;)Lcom/amap/api/maps/AMap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/maps/AMap;->getCameraPosition()Lcom/amap/api/maps/model/CameraPosition;

    move-result-object v1

    iget v1, v1, Lcom/amap/api/maps/model/CameraPosition;->zoom:F

    invoke-static {v0, v1}, Lcom/taobao/weex/amap/component/WXMapViewComponent;->access$402(Lcom/taobao/weex/amap/component/WXMapViewComponent;F)F

    .line 131
    iget-object v0, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent$2;->this$0:Lcom/taobao/weex/amap/component/WXMapViewComponent;

    invoke-static {v0}, Lcom/taobao/weex/amap/component/WXMapViewComponent;->access$000(Lcom/taobao/weex/amap/component/WXMapViewComponent;)Lcom/amap/api/maps/TextureMapView;

    move-result-object v0

    new-instance v1, Lcom/taobao/weex/amap/component/WXMapViewComponent$2$1;

    invoke-direct {v1, p0}, Lcom/taobao/weex/amap/component/WXMapViewComponent$2$1;-><init>(Lcom/taobao/weex/amap/component/WXMapViewComponent$2;)V

    const-wide/16 v2, 0x10

    invoke-virtual {v0, v1, v2, v3}, Lcom/amap/api/maps/TextureMapView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 137
    return-void
.end method
