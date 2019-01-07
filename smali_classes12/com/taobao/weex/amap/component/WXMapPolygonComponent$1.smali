.class Lcom/taobao/weex/amap/component/WXMapPolygonComponent$1;
.super Ljava/lang/Object;
.source "WXMapPolygonComponent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/amap/component/WXMapPolygonComponent;->setPath(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/amap/component/WXMapPolygonComponent;


# direct methods
.method constructor <init>(Lcom/taobao/weex/amap/component/WXMapPolygonComponent;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/taobao/weex/amap/component/WXMapPolygonComponent$1;->this$0:Lcom/taobao/weex/amap/component/WXMapPolygonComponent;

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
    .line 65
    iget-object v1, p0, Lcom/taobao/weex/amap/component/WXMapPolygonComponent$1;->this$0:Lcom/taobao/weex/amap/component/WXMapPolygonComponent;

    invoke-virtual {v1}, Lcom/taobao/weex/amap/component/WXMapPolygonComponent;->getWidget()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/Polygon;

    .line 66
    .local v0, "polygon":Lcom/amap/api/maps/model/Polygon;
    if-eqz v0, :cond_0

    .line 67
    iget-object v1, p0, Lcom/taobao/weex/amap/component/WXMapPolygonComponent$1;->this$0:Lcom/taobao/weex/amap/component/WXMapPolygonComponent;

    iget-object v1, v1, Lcom/taobao/weex/amap/component/WXMapPolygonComponent;->mPosition:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/Polygon;->setPoints(Ljava/util/List;)V

    .line 69
    :cond_0
    return-void
.end method
