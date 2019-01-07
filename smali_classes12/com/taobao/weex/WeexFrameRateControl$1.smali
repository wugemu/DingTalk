.class Lcom/taobao/weex/WeexFrameRateControl$1;
.super Ljava/lang/Object;
.source "WeexFrameRateControl.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


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
    .line 46
    iput-object p1, p0, Lcom/taobao/weex/WeexFrameRateControl$1;->this$0:Lcom/taobao/weex/WeexFrameRateControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 2
    .param p1, "frameTimeNanos"    # J

    .prologue
    .line 49
    iget-object v0, p0, Lcom/taobao/weex/WeexFrameRateControl$1;->this$0:Lcom/taobao/weex/WeexFrameRateControl;

    invoke-static {v0}, Lcom/taobao/weex/WeexFrameRateControl;->access$100(Lcom/taobao/weex/WeexFrameRateControl;)Landroid/view/Choreographer;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/WeexFrameRateControl$1;->this$0:Lcom/taobao/weex/WeexFrameRateControl;

    invoke-static {v1}, Lcom/taobao/weex/WeexFrameRateControl;->access$000(Lcom/taobao/weex/WeexFrameRateControl;)Landroid/view/Choreographer$FrameCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 50
    iget-object v0, p0, Lcom/taobao/weex/WeexFrameRateControl$1;->this$0:Lcom/taobao/weex/WeexFrameRateControl;

    invoke-static {v0}, Lcom/taobao/weex/WeexFrameRateControl;->access$200(Lcom/taobao/weex/WeexFrameRateControl;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/weex/WeexFrameRateControl$1;->this$0:Lcom/taobao/weex/WeexFrameRateControl;

    invoke-static {v0}, Lcom/taobao/weex/WeexFrameRateControl;->access$200(Lcom/taobao/weex/WeexFrameRateControl;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/taobao/weex/WeexFrameRateControl$1;->this$0:Lcom/taobao/weex/WeexFrameRateControl;

    invoke-static {v0}, Lcom/taobao/weex/WeexFrameRateControl;->access$200(Lcom/taobao/weex/WeexFrameRateControl;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/WeexFrameRateControl$VSyncListener;

    invoke-interface {v0}, Lcom/taobao/weex/WeexFrameRateControl$VSyncListener;->OnVSync()V

    .line 53
    :cond_0
    return-void
.end method
