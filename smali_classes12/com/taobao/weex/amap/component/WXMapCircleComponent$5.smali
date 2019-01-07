.class Lcom/taobao/weex/amap/component/WXMapCircleComponent$5;
.super Ljava/lang/Object;
.source "WXMapCircleComponent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/amap/component/WXMapCircleComponent;->setRadius(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/amap/component/WXMapCircleComponent;


# direct methods
.method constructor <init>(Lcom/taobao/weex/amap/component/WXMapCircleComponent;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/taobao/weex/amap/component/WXMapCircleComponent$5;->this$0:Lcom/taobao/weex/amap/component/WXMapCircleComponent;

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
    .line 115
    iget-object v1, p0, Lcom/taobao/weex/amap/component/WXMapCircleComponent$5;->this$0:Lcom/taobao/weex/amap/component/WXMapCircleComponent;

    invoke-virtual {v1}, Lcom/taobao/weex/amap/component/WXMapCircleComponent;->getWidget()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/Circle;

    .line 116
    .local v0, "circle":Lcom/amap/api/maps/model/Circle;
    if-eqz v0, :cond_0

    .line 117
    iget-object v1, p0, Lcom/taobao/weex/amap/component/WXMapCircleComponent$5;->this$0:Lcom/taobao/weex/amap/component/WXMapCircleComponent;

    invoke-static {v1}, Lcom/taobao/weex/amap/component/WXMapCircleComponent;->access$300(Lcom/taobao/weex/amap/component/WXMapCircleComponent;)F

    move-result v1

    float-to-double v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/amap/api/maps/model/Circle;->setRadius(D)V

    .line 119
    :cond_0
    return-void
.end method
