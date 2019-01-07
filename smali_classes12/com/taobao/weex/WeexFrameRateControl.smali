.class public Lcom/taobao/weex/WeexFrameRateControl;
.super Ljava/lang/Object;
.source "WeexFrameRateControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/WeexFrameRateControl$VSyncListener;
    }
.end annotation


# static fields
.field private static final VSYNC_FRAME:J = 0x3eL


# instance fields
.field private final mChoreographer:Landroid/view/Choreographer;

.field private mListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/taobao/weex/WeexFrameRateControl$VSyncListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mVSyncFrameCallback:Landroid/view/Choreographer$FrameCallback;

.field private final runnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/taobao/weex/WeexFrameRateControl$VSyncListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/taobao/weex/WeexFrameRateControl$VSyncListener;

    .prologue
    const/4 v2, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/taobao/weex/WeexFrameRateControl;->mListener:Ljava/lang/ref/WeakReference;

    .line 44
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-le v0, v1, :cond_0

    .line 45
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/WeexFrameRateControl;->mChoreographer:Landroid/view/Choreographer;

    .line 46
    new-instance v0, Lcom/taobao/weex/WeexFrameRateControl$1;

    invoke-direct {v0, p0}, Lcom/taobao/weex/WeexFrameRateControl$1;-><init>(Lcom/taobao/weex/WeexFrameRateControl;)V

    iput-object v0, p0, Lcom/taobao/weex/WeexFrameRateControl;->mVSyncFrameCallback:Landroid/view/Choreographer$FrameCallback;

    .line 55
    iput-object v2, p0, Lcom/taobao/weex/WeexFrameRateControl;->runnable:Ljava/lang/Runnable;

    .line 70
    :goto_0
    return-void

    .line 58
    :cond_0
    new-instance v0, Lcom/taobao/weex/WeexFrameRateControl$2;

    invoke-direct {v0, p0}, Lcom/taobao/weex/WeexFrameRateControl$2;-><init>(Lcom/taobao/weex/WeexFrameRateControl;)V

    iput-object v0, p0, Lcom/taobao/weex/WeexFrameRateControl;->runnable:Ljava/lang/Runnable;

    .line 67
    iput-object v2, p0, Lcom/taobao/weex/WeexFrameRateControl;->mChoreographer:Landroid/view/Choreographer;

    .line 68
    iput-object v2, p0, Lcom/taobao/weex/WeexFrameRateControl;->mVSyncFrameCallback:Landroid/view/Choreographer$FrameCallback;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/taobao/weex/WeexFrameRateControl;)Landroid/view/Choreographer$FrameCallback;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/WeexFrameRateControl;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/taobao/weex/WeexFrameRateControl;->mVSyncFrameCallback:Landroid/view/Choreographer$FrameCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/taobao/weex/WeexFrameRateControl;)Landroid/view/Choreographer;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/WeexFrameRateControl;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/taobao/weex/WeexFrameRateControl;->mChoreographer:Landroid/view/Choreographer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/taobao/weex/WeexFrameRateControl;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/WeexFrameRateControl;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/taobao/weex/WeexFrameRateControl;->mListener:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/taobao/weex/WeexFrameRateControl;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/WeexFrameRateControl;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/taobao/weex/WeexFrameRateControl;->runnable:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method public start()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 73
    iget-object v0, p0, Lcom/taobao/weex/WeexFrameRateControl;->mChoreographer:Landroid/view/Choreographer;

    if-eqz v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/taobao/weex/WeexFrameRateControl;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/taobao/weex/WeexFrameRateControl;->mVSyncFrameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/taobao/weex/WeexFrameRateControl;->runnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 77
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/WeexFrameRateControl;->runnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/weex/ui/WXRenderManager;->postOnUiThread(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 82
    iget-object v0, p0, Lcom/taobao/weex/WeexFrameRateControl;->mChoreographer:Landroid/view/Choreographer;

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/taobao/weex/WeexFrameRateControl;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/taobao/weex/WeexFrameRateControl;->mVSyncFrameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/taobao/weex/WeexFrameRateControl;->runnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 85
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/WeexFrameRateControl;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/WXRenderManager;->removeTask(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
