.class Lcom/taobao/weex/amap/component/AbstractMapWidgetComponent$1;
.super Ljava/lang/Object;
.source "AbstractMapWidgetComponent.java"

# interfaces
.implements Lcom/taobao/weex/amap/component/WXMapViewComponent$MapOperationTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/amap/component/AbstractMapWidgetComponent;->postMapOperationTask(Lcom/taobao/weex/amap/component/WXMapViewComponent;Lcom/taobao/weex/amap/component/WXMapViewComponent$MapOperationTask;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/amap/component/AbstractMapWidgetComponent;

.field final synthetic val$task:Lcom/taobao/weex/amap/component/WXMapViewComponent$MapOperationTask;


# direct methods
.method constructor <init>(Lcom/taobao/weex/amap/component/AbstractMapWidgetComponent;Lcom/taobao/weex/amap/component/WXMapViewComponent$MapOperationTask;)V
    .locals 0

    .prologue
    .line 33
    .local p0, "this":Lcom/taobao/weex/amap/component/AbstractMapWidgetComponent$1;, "Lcom/taobao/weex/amap/component/AbstractMapWidgetComponent.1;"
    iput-object p1, p0, Lcom/taobao/weex/amap/component/AbstractMapWidgetComponent$1;->this$0:Lcom/taobao/weex/amap/component/AbstractMapWidgetComponent;

    iput-object p2, p0, Lcom/taobao/weex/amap/component/AbstractMapWidgetComponent$1;->val$task:Lcom/taobao/weex/amap/component/WXMapViewComponent$MapOperationTask;

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
    .line 37
    .local p0, "this":Lcom/taobao/weex/amap/component/AbstractMapWidgetComponent$1;, "Lcom/taobao/weex/amap/component/AbstractMapWidgetComponent.1;"
    :try_start_0
    iget-object v1, p0, Lcom/taobao/weex/amap/component/AbstractMapWidgetComponent$1;->this$0:Lcom/taobao/weex/amap/component/AbstractMapWidgetComponent;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/taobao/weex/amap/component/AbstractMapWidgetComponent;->setMapLoaded(Z)V

    .line 38
    iget-object v1, p0, Lcom/taobao/weex/amap/component/AbstractMapWidgetComponent$1;->val$task:Lcom/taobao/weex/amap/component/WXMapViewComponent$MapOperationTask;

    invoke-interface {v1, p1}, Lcom/taobao/weex/amap/component/WXMapViewComponent$MapOperationTask;->execute(Lcom/amap/api/maps/TextureMapView;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :goto_0
    return-void

    .line 39
    :catch_0
    move-exception v0

    .line 40
    .local v0, "t":Ljava/lang/Throwable;
    const-string/jumbo v1, "WXMapViewComponent"

    invoke-static {v1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
