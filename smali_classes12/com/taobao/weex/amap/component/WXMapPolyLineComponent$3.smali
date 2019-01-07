.class Lcom/taobao/weex/amap/component/WXMapPolyLineComponent$3;
.super Ljava/lang/Object;
.source "WXMapPolyLineComponent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/amap/component/WXMapPolyLineComponent;->setStrokeWeight(F)V
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
    .line 90
    iput-object p1, p0, Lcom/taobao/weex/amap/component/WXMapPolyLineComponent$3;->this$0:Lcom/taobao/weex/amap/component/WXMapPolyLineComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 93
    iget-object v1, p0, Lcom/taobao/weex/amap/component/WXMapPolyLineComponent$3;->this$0:Lcom/taobao/weex/amap/component/WXMapPolyLineComponent;

    invoke-virtual {v1}, Lcom/taobao/weex/amap/component/WXMapPolyLineComponent;->getWidget()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/Polyline;

    .line 94
    .local v0, "polyline":Lcom/amap/api/maps/model/Polyline;
    if-eqz v0, :cond_0

    .line 95
    iget-object v1, p0, Lcom/taobao/weex/amap/component/WXMapPolyLineComponent$3;->this$0:Lcom/taobao/weex/amap/component/WXMapPolyLineComponent;

    invoke-static {v1}, Lcom/taobao/weex/amap/component/WXMapPolyLineComponent;->access$100(Lcom/taobao/weex/amap/component/WXMapPolyLineComponent;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/Polyline;->setWidth(F)V

    .line 97
    :cond_0
    return-void
.end method
