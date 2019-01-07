.class Lcom/taobao/weex/amap/component/WXMapViewComponent$16;
.super Ljava/lang/Object;
.source "WXMapViewComponent.java"

# interfaces
.implements Lcom/taobao/weex/amap/component/WXMapViewComponent$MapOperationTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/amap/component/WXMapViewComponent;->setShowMyLocation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/amap/component/WXMapViewComponent;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lcom/taobao/weex/amap/component/WXMapViewComponent;Z)V
    .locals 0

    .prologue
    .line 486
    iput-object p1, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent$16;->this$0:Lcom/taobao/weex/amap/component/WXMapViewComponent;

    iput-boolean p2, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent$16;->val$show:Z

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
    .line 489
    const-string/jumbo v1, "WXMapViewComponent"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setShowMyLocation: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent$16;->val$show:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    iget-object v1, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent$16;->this$0:Lcom/taobao/weex/amap/component/WXMapViewComponent;

    invoke-static {v1}, Lcom/taobao/weex/amap/component/WXMapViewComponent;->access$500(Lcom/taobao/weex/amap/component/WXMapViewComponent;)Lcom/amap/api/maps/AMap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/maps/AMap;->getMyLocationStyle()Lcom/amap/api/maps/model/MyLocationStyle;

    move-result-object v0

    .line 491
    .local v0, "style":Lcom/amap/api/maps/model/MyLocationStyle;
    if-nez v0, :cond_0

    .line 492
    new-instance v0, Lcom/amap/api/maps/model/MyLocationStyle;

    .end local v0    # "style":Lcom/amap/api/maps/model/MyLocationStyle;
    invoke-direct {v0}, Lcom/amap/api/maps/model/MyLocationStyle;-><init>()V

    .line 494
    .restart local v0    # "style":Lcom/amap/api/maps/model/MyLocationStyle;
    :cond_0
    iget-boolean v1, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent$16;->val$show:Z

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/MyLocationStyle;->showMyLocation(Z)Lcom/amap/api/maps/model/MyLocationStyle;

    .line 495
    iget-object v1, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent$16;->this$0:Lcom/taobao/weex/amap/component/WXMapViewComponent;

    invoke-static {v1}, Lcom/taobao/weex/amap/component/WXMapViewComponent;->access$500(Lcom/taobao/weex/amap/component/WXMapViewComponent;)Lcom/amap/api/maps/AMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/amap/api/maps/AMap;->setMyLocationStyle(Lcom/amap/api/maps/model/MyLocationStyle;)V

    .line 496
    return-void
.end method
