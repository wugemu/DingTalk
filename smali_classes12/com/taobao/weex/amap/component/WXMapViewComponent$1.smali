.class Lcom/taobao/weex/amap/component/WXMapViewComponent$1;
.super Ljava/lang/Object;
.source "WXMapViewComponent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/amap/component/WXMapViewComponent;->setHostLayoutParams(Landroid/widget/FrameLayout;IIIIII)V
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
    .line 105
    iput-object p1, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent$1;->this$0:Lcom/taobao/weex/amap/component/WXMapViewComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, -0x1

    .line 108
    iget-object v0, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent$1;->this$0:Lcom/taobao/weex/amap/component/WXMapViewComponent;

    new-instance v1, Lcom/amap/api/maps/TextureMapView;

    iget-object v2, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent$1;->this$0:Lcom/taobao/weex/amap/component/WXMapViewComponent;

    invoke-virtual {v2}, Lcom/taobao/weex/amap/component/WXMapViewComponent;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amap/api/maps/TextureMapView;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/taobao/weex/amap/component/WXMapViewComponent;->access$002(Lcom/taobao/weex/amap/component/WXMapViewComponent;Lcom/amap/api/maps/TextureMapView;)Lcom/amap/api/maps/TextureMapView;

    .line 109
    iget-object v0, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent$1;->this$0:Lcom/taobao/weex/amap/component/WXMapViewComponent;

    invoke-static {v0}, Lcom/taobao/weex/amap/component/WXMapViewComponent;->access$100(Lcom/taobao/weex/amap/component/WXMapViewComponent;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent$1;->this$0:Lcom/taobao/weex/amap/component/WXMapViewComponent;

    invoke-static {v1}, Lcom/taobao/weex/amap/component/WXMapViewComponent;->access$000(Lcom/taobao/weex/amap/component/WXMapViewComponent;)Lcom/amap/api/maps/TextureMapView;

    move-result-object v1

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    const-string/jumbo v0, "WXMapViewComponent"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Create MapView "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent$1;->this$0:Lcom/taobao/weex/amap/component/WXMapViewComponent;

    invoke-static {v2}, Lcom/taobao/weex/amap/component/WXMapViewComponent;->access$000(Lcom/taobao/weex/amap/component/WXMapViewComponent;)Lcom/amap/api/maps/TextureMapView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amap/api/maps/TextureMapView;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent$1;->this$0:Lcom/taobao/weex/amap/component/WXMapViewComponent;

    invoke-static {v0}, Lcom/taobao/weex/amap/component/WXMapViewComponent;->access$200(Lcom/taobao/weex/amap/component/WXMapViewComponent;)V

    .line 113
    return-void
.end method
