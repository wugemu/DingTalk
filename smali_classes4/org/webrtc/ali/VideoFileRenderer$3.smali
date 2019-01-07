.class Lorg/webrtc/ali/VideoFileRenderer$3;
.super Ljava/lang/Object;
.source "VideoFileRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/ali/VideoFileRenderer;->release()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/ali/VideoFileRenderer;

.field final synthetic val$cleanupBarrier:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lorg/webrtc/ali/VideoFileRenderer;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .param p1, "this$0"    # Lorg/webrtc/ali/VideoFileRenderer;

    .prologue
    .line 137
    iput-object p1, p0, Lorg/webrtc/ali/VideoFileRenderer$3;->this$0:Lorg/webrtc/ali/VideoFileRenderer;

    iput-object p2, p0, Lorg/webrtc/ali/VideoFileRenderer$3;->val$cleanupBarrier:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lorg/webrtc/ali/VideoFileRenderer$3;->this$0:Lorg/webrtc/ali/VideoFileRenderer;

    invoke-static {v0}, Lorg/webrtc/ali/VideoFileRenderer;->access$100(Lorg/webrtc/ali/VideoFileRenderer;)Lorg/webrtc/ali/YuvConverter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/webrtc/ali/YuvConverter;->release()V

    .line 141
    iget-object v0, p0, Lorg/webrtc/ali/VideoFileRenderer$3;->this$0:Lorg/webrtc/ali/VideoFileRenderer;

    invoke-static {v0}, Lorg/webrtc/ali/VideoFileRenderer;->access$000(Lorg/webrtc/ali/VideoFileRenderer;)Lorg/webrtc/ali/EglBase;

    move-result-object v0

    invoke-virtual {v0}, Lorg/webrtc/ali/EglBase;->release()V

    .line 142
    iget-object v0, p0, Lorg/webrtc/ali/VideoFileRenderer$3;->this$0:Lorg/webrtc/ali/VideoFileRenderer;

    invoke-static {v0}, Lorg/webrtc/ali/VideoFileRenderer;->access$300(Lorg/webrtc/ali/VideoFileRenderer;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 143
    iget-object v0, p0, Lorg/webrtc/ali/VideoFileRenderer$3;->val$cleanupBarrier:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 144
    return-void
.end method
