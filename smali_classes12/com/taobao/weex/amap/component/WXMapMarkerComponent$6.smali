.class Lcom/taobao/weex/amap/component/WXMapMarkerComponent$6;
.super Ljava/lang/Object;
.source "WXMapMarkerComponent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/amap/component/WXMapMarkerComponent;->setOpened(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/amap/component/WXMapMarkerComponent;

.field final synthetic val$opened:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Lcom/taobao/weex/amap/component/WXMapMarkerComponent;Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/taobao/weex/amap/component/WXMapMarkerComponent$6;->this$0:Lcom/taobao/weex/amap/component/WXMapMarkerComponent;

    iput-object p2, p0, Lcom/taobao/weex/amap/component/WXMapMarkerComponent$6;->val$opened:Ljava/lang/Boolean;

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
    .line 184
    iget-object v1, p0, Lcom/taobao/weex/amap/component/WXMapMarkerComponent$6;->this$0:Lcom/taobao/weex/amap/component/WXMapMarkerComponent;

    invoke-virtual {v1}, Lcom/taobao/weex/amap/component/WXMapMarkerComponent;->getWidget()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/Marker;

    .line 185
    .local v0, "marker":Lcom/amap/api/maps/model/Marker;
    if-eqz v0, :cond_0

    .line 186
    iget-object v1, p0, Lcom/taobao/weex/amap/component/WXMapMarkerComponent$6;->val$opened:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 187
    invoke-virtual {v0}, Lcom/amap/api/maps/model/Marker;->showInfoWindow()V

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    invoke-virtual {v0}, Lcom/amap/api/maps/model/Marker;->hideInfoWindow()V

    goto :goto_0
.end method
