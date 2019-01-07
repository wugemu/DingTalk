.class Lcom/taobao/weex/amap/component/WXMapPolyLineComponent$4;
.super Ljava/lang/Object;
.source "WXMapPolyLineComponent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/amap/component/WXMapPolyLineComponent;->setStrokeStyle(Ljava/lang/String;)V
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
    .line 104
    iput-object p1, p0, Lcom/taobao/weex/amap/component/WXMapPolyLineComponent$4;->this$0:Lcom/taobao/weex/amap/component/WXMapPolyLineComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 107
    iget-object v1, p0, Lcom/taobao/weex/amap/component/WXMapPolyLineComponent$4;->this$0:Lcom/taobao/weex/amap/component/WXMapPolyLineComponent;

    invoke-virtual {v1}, Lcom/taobao/weex/amap/component/WXMapPolyLineComponent;->getWidget()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/Polyline;

    .line 108
    .local v0, "polyline":Lcom/amap/api/maps/model/Polyline;
    if-eqz v0, :cond_0

    .line 109
    const-string/jumbo v1, "dashed"

    iget-object v2, p0, Lcom/taobao/weex/amap/component/WXMapPolyLineComponent$4;->this$0:Lcom/taobao/weex/amap/component/WXMapPolyLineComponent;

    invoke-static {v2}, Lcom/taobao/weex/amap/component/WXMapPolyLineComponent;->access$200(Lcom/taobao/weex/amap/component/WXMapPolyLineComponent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/Polyline;->setDottedLine(Z)V

    .line 111
    :cond_0
    return-void
.end method
