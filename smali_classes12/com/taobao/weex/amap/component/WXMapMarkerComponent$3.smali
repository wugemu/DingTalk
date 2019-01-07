.class Lcom/taobao/weex/amap/component/WXMapMarkerComponent$3;
.super Ljava/lang/Object;
.source "WXMapMarkerComponent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/amap/component/WXMapMarkerComponent;->setHideCallOut(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/amap/component/WXMapMarkerComponent;

.field final synthetic val$hide:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Lcom/taobao/weex/amap/component/WXMapMarkerComponent;Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/taobao/weex/amap/component/WXMapMarkerComponent$3;->this$0:Lcom/taobao/weex/amap/component/WXMapMarkerComponent;

    iput-object p2, p0, Lcom/taobao/weex/amap/component/WXMapMarkerComponent$3;->val$hide:Ljava/lang/Boolean;

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
    .line 130
    iget-object v1, p0, Lcom/taobao/weex/amap/component/WXMapMarkerComponent$3;->this$0:Lcom/taobao/weex/amap/component/WXMapMarkerComponent;

    iget-object v0, p0, Lcom/taobao/weex/amap/component/WXMapMarkerComponent$3;->this$0:Lcom/taobao/weex/amap/component/WXMapMarkerComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/amap/component/WXMapMarkerComponent;->getWidget()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/Marker;

    iget-object v2, p0, Lcom/taobao/weex/amap/component/WXMapMarkerComponent$3;->val$hide:Ljava/lang/Boolean;

    invoke-static {v1, v0, v2}, Lcom/taobao/weex/amap/component/WXMapMarkerComponent;->access$200(Lcom/taobao/weex/amap/component/WXMapMarkerComponent;Lcom/amap/api/maps/model/Marker;Ljava/lang/Boolean;)V

    .line 131
    return-void
.end method
