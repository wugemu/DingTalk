.class Lcom/taobao/weex/amap/component/WXMapViewComponent$5;
.super Ljava/lang/Object;
.source "WXMapViewComponent.java"

# interfaces
.implements Lcom/amap/api/maps/AMap$OnMapTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/amap/component/WXMapViewComponent;->initMap()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field dragged:Z

.field final synthetic this$0:Lcom/taobao/weex/amap/component/WXMapViewComponent;


# direct methods
.method constructor <init>(Lcom/taobao/weex/amap/component/WXMapViewComponent;)V
    .locals 1

    .prologue
    .line 196
    iput-object p1, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent$5;->this$0:Lcom/taobao/weex/amap/component/WXMapViewComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent$5;->dragged:Z

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 202
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 211
    :goto_0
    return-void

    .line 204
    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent$5;->dragged:Z

    goto :goto_0

    .line 207
    :pswitch_1
    iget-boolean v0, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent$5;->dragged:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent$5;->this$0:Lcom/taobao/weex/amap/component/WXMapViewComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/amap/component/WXMapViewComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent$5;->this$0:Lcom/taobao/weex/amap/component/WXMapViewComponent;

    invoke-virtual {v1}, Lcom/taobao/weex/amap/component/WXMapViewComponent;->getRef()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "dragend"

    invoke-virtual {v0, v1, v2}, Lcom/taobao/weex/WXSDKInstance;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent$5;->dragged:Z

    goto :goto_0

    .line 202
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
