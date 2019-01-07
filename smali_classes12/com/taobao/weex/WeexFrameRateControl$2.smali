.class Lcom/taobao/weex/WeexFrameRateControl$2;
.super Ljava/lang/Object;
.source "WeexFrameRateControl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/WeexFrameRateControl;-><init>(Lcom/taobao/weex/WeexFrameRateControl$VSyncListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/WeexFrameRateControl;


# direct methods
.method constructor <init>(Lcom/taobao/weex/WeexFrameRateControl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/weex/WeexFrameRateControl;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/taobao/weex/WeexFrameRateControl$2;->this$0:Lcom/taobao/weex/WeexFrameRateControl;

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
    .line 61
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/WeexFrameRateControl$2;->this$0:Lcom/taobao/weex/WeexFrameRateControl;

    invoke-static {v1}, Lcom/taobao/weex/WeexFrameRateControl;->access$300(Lcom/taobao/weex/WeexFrameRateControl;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/weex/ui/WXRenderManager;->postOnUiThread(Ljava/lang/Runnable;J)V

    .line 62
    iget-object v0, p0, Lcom/taobao/weex/WeexFrameRateControl$2;->this$0:Lcom/taobao/weex/WeexFrameRateControl;

    invoke-static {v0}, Lcom/taobao/weex/WeexFrameRateControl;->access$200(Lcom/taobao/weex/WeexFrameRateControl;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/weex/WeexFrameRateControl$2;->this$0:Lcom/taobao/weex/WeexFrameRateControl;

    invoke-static {v0}, Lcom/taobao/weex/WeexFrameRateControl;->access$200(Lcom/taobao/weex/WeexFrameRateControl;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/taobao/weex/WeexFrameRateControl$2;->this$0:Lcom/taobao/weex/WeexFrameRateControl;

    invoke-static {v0}, Lcom/taobao/weex/WeexFrameRateControl;->access$200(Lcom/taobao/weex/WeexFrameRateControl;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/WeexFrameRateControl$VSyncListener;

    invoke-interface {v0}, Lcom/taobao/weex/WeexFrameRateControl$VSyncListener;->OnVSync()V

    .line 65
    :cond_0
    return-void
.end method
