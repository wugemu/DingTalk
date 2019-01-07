.class Lorg/webrtc/ali/ScreenCapturerAndroid$1;
.super Ljava/lang/Object;
.source "ScreenCapturerAndroid.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/ali/ScreenCapturerAndroid;->stopCapture()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/ali/ScreenCapturerAndroid;


# direct methods
.method constructor <init>(Lorg/webrtc/ali/ScreenCapturerAndroid;)V
    .locals 0
    .param p1, "this$0"    # Lorg/webrtc/ali/ScreenCapturerAndroid;

    .prologue
    .line 120
    iput-object p1, p0, Lorg/webrtc/ali/ScreenCapturerAndroid$1;->this$0:Lorg/webrtc/ali/ScreenCapturerAndroid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 123
    iget-object v0, p0, Lorg/webrtc/ali/ScreenCapturerAndroid$1;->this$0:Lorg/webrtc/ali/ScreenCapturerAndroid;

    invoke-static {v0}, Lorg/webrtc/ali/ScreenCapturerAndroid;->access$000(Lorg/webrtc/ali/ScreenCapturerAndroid;)Lorg/webrtc/ali/SurfaceTextureHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/webrtc/ali/SurfaceTextureHelper;->stopListening()V

    .line 124
    iget-object v0, p0, Lorg/webrtc/ali/ScreenCapturerAndroid$1;->this$0:Lorg/webrtc/ali/ScreenCapturerAndroid;

    invoke-static {v0}, Lorg/webrtc/ali/ScreenCapturerAndroid;->access$100(Lorg/webrtc/ali/ScreenCapturerAndroid;)Lorg/webrtc/ali/VideoCapturer$CapturerObserver;

    move-result-object v0

    invoke-interface {v0}, Lorg/webrtc/ali/VideoCapturer$CapturerObserver;->onCapturerStopped()V

    .line 126
    iget-object v0, p0, Lorg/webrtc/ali/ScreenCapturerAndroid$1;->this$0:Lorg/webrtc/ali/ScreenCapturerAndroid;

    invoke-static {v0}, Lorg/webrtc/ali/ScreenCapturerAndroid;->access$200(Lorg/webrtc/ali/ScreenCapturerAndroid;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lorg/webrtc/ali/ScreenCapturerAndroid$1;->this$0:Lorg/webrtc/ali/ScreenCapturerAndroid;

    invoke-static {v0}, Lorg/webrtc/ali/ScreenCapturerAndroid;->access$200(Lorg/webrtc/ali/ScreenCapturerAndroid;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->release()V

    .line 128
    iget-object v0, p0, Lorg/webrtc/ali/ScreenCapturerAndroid$1;->this$0:Lorg/webrtc/ali/ScreenCapturerAndroid;

    invoke-static {v0, v2}, Lorg/webrtc/ali/ScreenCapturerAndroid;->access$202(Lorg/webrtc/ali/ScreenCapturerAndroid;Landroid/hardware/display/VirtualDisplay;)Landroid/hardware/display/VirtualDisplay;

    .line 131
    :cond_0
    iget-object v0, p0, Lorg/webrtc/ali/ScreenCapturerAndroid$1;->this$0:Lorg/webrtc/ali/ScreenCapturerAndroid;

    invoke-static {v0}, Lorg/webrtc/ali/ScreenCapturerAndroid;->access$300(Lorg/webrtc/ali/ScreenCapturerAndroid;)Landroid/media/projection/MediaProjection;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 134
    iget-object v0, p0, Lorg/webrtc/ali/ScreenCapturerAndroid$1;->this$0:Lorg/webrtc/ali/ScreenCapturerAndroid;

    invoke-static {v0}, Lorg/webrtc/ali/ScreenCapturerAndroid;->access$300(Lorg/webrtc/ali/ScreenCapturerAndroid;)Landroid/media/projection/MediaProjection;

    move-result-object v0

    iget-object v1, p0, Lorg/webrtc/ali/ScreenCapturerAndroid$1;->this$0:Lorg/webrtc/ali/ScreenCapturerAndroid;

    invoke-static {v1}, Lorg/webrtc/ali/ScreenCapturerAndroid;->access$400(Lorg/webrtc/ali/ScreenCapturerAndroid;)Landroid/media/projection/MediaProjection$Callback;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/projection/MediaProjection;->unregisterCallback(Landroid/media/projection/MediaProjection$Callback;)V

    .line 135
    iget-object v0, p0, Lorg/webrtc/ali/ScreenCapturerAndroid$1;->this$0:Lorg/webrtc/ali/ScreenCapturerAndroid;

    invoke-static {v0}, Lorg/webrtc/ali/ScreenCapturerAndroid;->access$300(Lorg/webrtc/ali/ScreenCapturerAndroid;)Landroid/media/projection/MediaProjection;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/projection/MediaProjection;->stop()V

    .line 136
    iget-object v0, p0, Lorg/webrtc/ali/ScreenCapturerAndroid$1;->this$0:Lorg/webrtc/ali/ScreenCapturerAndroid;

    invoke-static {v0, v2}, Lorg/webrtc/ali/ScreenCapturerAndroid;->access$302(Lorg/webrtc/ali/ScreenCapturerAndroid;Landroid/media/projection/MediaProjection;)Landroid/media/projection/MediaProjection;

    .line 138
    :cond_1
    return-void
.end method
