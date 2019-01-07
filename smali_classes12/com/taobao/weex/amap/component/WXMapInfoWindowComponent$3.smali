.class Lcom/taobao/weex/amap/component/WXMapInfoWindowComponent$3;
.super Ljava/lang/Object;
.source "WXMapInfoWindowComponent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/amap/component/WXMapInfoWindowComponent;->setOpened(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/amap/component/WXMapInfoWindowComponent;

.field final synthetic val$opened:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Lcom/taobao/weex/amap/component/WXMapInfoWindowComponent;Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/taobao/weex/amap/component/WXMapInfoWindowComponent$3;->this$0:Lcom/taobao/weex/amap/component/WXMapInfoWindowComponent;

    iput-object p2, p0, Lcom/taobao/weex/amap/component/WXMapInfoWindowComponent$3;->val$opened:Ljava/lang/Boolean;

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
    .line 100
    iget-object v1, p0, Lcom/taobao/weex/amap/component/WXMapInfoWindowComponent$3;->this$0:Lcom/taobao/weex/amap/component/WXMapInfoWindowComponent;

    invoke-virtual {v1}, Lcom/taobao/weex/amap/component/WXMapInfoWindowComponent;->getWidget()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/Marker;

    .line 101
    .local v0, "marker":Lcom/amap/api/maps/model/Marker;
    if-eqz v0, :cond_0

    .line 102
    iget-object v1, p0, Lcom/taobao/weex/amap/component/WXMapInfoWindowComponent$3;->val$opened:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 103
    invoke-virtual {v0}, Lcom/amap/api/maps/model/Marker;->showInfoWindow()V

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    invoke-virtual {v0}, Lcom/amap/api/maps/model/Marker;->hideInfoWindow()V

    goto :goto_0
.end method
