.class Lcom/taobao/weex/amap/component/WXMapViewComponent$13;
.super Ljava/lang/Object;
.source "WXMapViewComponent.java"

# interfaces
.implements Lcom/taobao/weex/amap/component/WXMapViewComponent$MapOperationTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/amap/component/WXMapViewComponent;->setGesture(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/amap/component/WXMapViewComponent;

.field final synthetic val$gesture:I


# direct methods
.method constructor <init>(Lcom/taobao/weex/amap/component/WXMapViewComponent;I)V
    .locals 0

    .prologue
    .line 434
    iput-object p1, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent$13;->this$0:Lcom/taobao/weex/amap/component/WXMapViewComponent;

    iput p2, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent$13;->val$gesture:I

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
    .line 437
    iget-object v0, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent$13;->this$0:Lcom/taobao/weex/amap/component/WXMapViewComponent;

    iget v1, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent$13;->val$gesture:I

    invoke-static {v0, v1}, Lcom/taobao/weex/amap/component/WXMapViewComponent;->access$1402(Lcom/taobao/weex/amap/component/WXMapViewComponent;I)I

    .line 438
    iget-object v0, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent$13;->this$0:Lcom/taobao/weex/amap/component/WXMapViewComponent;

    invoke-static {v0}, Lcom/taobao/weex/amap/component/WXMapViewComponent;->access$1500(Lcom/taobao/weex/amap/component/WXMapViewComponent;)V

    .line 439
    return-void
.end method
