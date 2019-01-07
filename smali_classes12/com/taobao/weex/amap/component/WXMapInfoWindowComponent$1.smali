.class Lcom/taobao/weex/amap/component/WXMapInfoWindowComponent$1;
.super Ljava/lang/Object;
.source "WXMapInfoWindowComponent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/amap/component/WXMapInfoWindowComponent;->setPosition(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/amap/component/WXMapInfoWindowComponent;

.field final synthetic val$position:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/taobao/weex/amap/component/WXMapInfoWindowComponent;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/taobao/weex/amap/component/WXMapInfoWindowComponent$1;->this$0:Lcom/taobao/weex/amap/component/WXMapInfoWindowComponent;

    iput-object p2, p0, Lcom/taobao/weex/amap/component/WXMapInfoWindowComponent$1;->val$position:Ljava/lang/String;

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
    .line 80
    iget-object v1, p0, Lcom/taobao/weex/amap/component/WXMapInfoWindowComponent$1;->this$0:Lcom/taobao/weex/amap/component/WXMapInfoWindowComponent;

    iget-object v0, p0, Lcom/taobao/weex/amap/component/WXMapInfoWindowComponent$1;->this$0:Lcom/taobao/weex/amap/component/WXMapInfoWindowComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/amap/component/WXMapInfoWindowComponent;->getWidget()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/Marker;

    iget-object v2, p0, Lcom/taobao/weex/amap/component/WXMapInfoWindowComponent$1;->val$position:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/taobao/weex/amap/component/WXMapInfoWindowComponent;->access$000(Lcom/taobao/weex/amap/component/WXMapInfoWindowComponent;Lcom/amap/api/maps/model/Marker;Ljava/lang/String;)V

    .line 81
    return-void
.end method
