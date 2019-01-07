.class Lorg/webrtc/ali/CameraVideoCapturer$CameraStatistics$1;
.super Ljava/lang/Object;
.source "CameraVideoCapturer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/ali/CameraVideoCapturer$CameraStatistics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/ali/CameraVideoCapturer$CameraStatistics;


# direct methods
.method constructor <init>(Lorg/webrtc/ali/CameraVideoCapturer$CameraStatistics;)V
    .locals 0
    .param p1, "this$0"    # Lorg/webrtc/ali/CameraVideoCapturer$CameraStatistics;

    .prologue
    .line 105
    iput-object p1, p0, Lorg/webrtc/ali/CameraVideoCapturer$CameraStatistics$1;->this$0:Lorg/webrtc/ali/CameraVideoCapturer$CameraStatistics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 108
    iget-object v1, p0, Lorg/webrtc/ali/CameraVideoCapturer$CameraStatistics$1;->this$0:Lorg/webrtc/ali/CameraVideoCapturer$CameraStatistics;

    invoke-static {v1}, Lorg/webrtc/ali/CameraVideoCapturer$CameraStatistics;->access$000(Lorg/webrtc/ali/CameraVideoCapturer$CameraStatistics;)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x44fa0000    # 2000.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 109
    .local v0, "cameraFps":I
    const-string/jumbo v1, "CameraStatistics"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Camera fps: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v1, p0, Lorg/webrtc/ali/CameraVideoCapturer$CameraStatistics$1;->this$0:Lorg/webrtc/ali/CameraVideoCapturer$CameraStatistics;

    invoke-static {v1}, Lorg/webrtc/ali/CameraVideoCapturer$CameraStatistics;->access$000(Lorg/webrtc/ali/CameraVideoCapturer$CameraStatistics;)I

    move-result v1

    if-nez v1, :cond_1

    .line 111
    iget-object v1, p0, Lorg/webrtc/ali/CameraVideoCapturer$CameraStatistics$1;->this$0:Lorg/webrtc/ali/CameraVideoCapturer$CameraStatistics;

    invoke-static {v1}, Lorg/webrtc/ali/CameraVideoCapturer$CameraStatistics;->access$104(Lorg/webrtc/ali/CameraVideoCapturer$CameraStatistics;)I

    .line 112
    iget-object v1, p0, Lorg/webrtc/ali/CameraVideoCapturer$CameraStatistics$1;->this$0:Lorg/webrtc/ali/CameraVideoCapturer$CameraStatistics;

    invoke-static {v1}, Lorg/webrtc/ali/CameraVideoCapturer$CameraStatistics;->access$100(Lorg/webrtc/ali/CameraVideoCapturer$CameraStatistics;)I

    move-result v1

    mul-int/lit16 v1, v1, 0x7d0

    const/16 v2, 0xfa0

    if-lt v1, v2, :cond_2

    iget-object v1, p0, Lorg/webrtc/ali/CameraVideoCapturer$CameraStatistics$1;->this$0:Lorg/webrtc/ali/CameraVideoCapturer$CameraStatistics;

    .line 113
    invoke-static {v1}, Lorg/webrtc/ali/CameraVideoCapturer$CameraStatistics;->access$200(Lorg/webrtc/ali/CameraVideoCapturer$CameraStatistics;)Lorg/webrtc/ali/CameraVideoCapturer$CameraEventsHandler;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 114
    const-string/jumbo v1, "CameraStatistics"

    const-string/jumbo v2, "Camera freezed."

    invoke-static {v1, v2}, Lorg/webrtc/ali/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v1, p0, Lorg/webrtc/ali/CameraVideoCapturer$CameraStatistics$1;->this$0:Lorg/webrtc/ali/CameraVideoCapturer$CameraStatistics;

    invoke-static {v1}, Lorg/webrtc/ali/CameraVideoCapturer$CameraStatistics;->access$300(Lorg/webrtc/ali/CameraVideoCapturer$CameraStatistics;)Lorg/webrtc/ali/SurfaceTextureHelper;

    move-result-object v1

    invoke-virtual {v1}, Lorg/webrtc/ali/SurfaceTextureHelper;->isTextureInUse()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    iget-object v1, p0, Lorg/webrtc/ali/CameraVideoCapturer$CameraStatistics$1;->this$0:Lorg/webrtc/ali/CameraVideoCapturer$CameraStatistics;

    invoke-static {v1}, Lorg/webrtc/ali/CameraVideoCapturer$CameraStatistics;->access$200(Lorg/webrtc/ali/CameraVideoCapturer$CameraStatistics;)Lorg/webrtc/ali/CameraVideoCapturer$CameraEventsHandler;

    move-result-object v1

    const-string/jumbo v2, "Camera failure. Client must return video buffers."

    invoke-interface {v1, v2}, Lorg/webrtc/ali/CameraVideoCapturer$CameraEventsHandler;->onCameraFreezed(Ljava/lang/String;)V

    .line 128
    :goto_0
    return-void

    .line 119
    :cond_0
    iget-object v1, p0, Lorg/webrtc/ali/CameraVideoCapturer$CameraStatistics$1;->this$0:Lorg/webrtc/ali/CameraVideoCapturer$CameraStatistics;

    invoke-static {v1}, Lorg/webrtc/ali/CameraVideoCapturer$CameraStatistics;->access$200(Lorg/webrtc/ali/CameraVideoCapturer$CameraStatistics;)Lorg/webrtc/ali/CameraVideoCapturer$CameraEventsHandler;

    move-result-object v1

    const-string/jumbo v2, "Camera failure."

    invoke-interface {v1, v2}, Lorg/webrtc/ali/CameraVideoCapturer$CameraEventsHandler;->onCameraFreezed(Ljava/lang/String;)V

    goto :goto_0

    .line 124
    :cond_1
    iget-object v1, p0, Lorg/webrtc/ali/CameraVideoCapturer$CameraStatistics$1;->this$0:Lorg/webrtc/ali/CameraVideoCapturer$CameraStatistics;

    invoke-static {v1, v4}, Lorg/webrtc/ali/CameraVideoCapturer$CameraStatistics;->access$102(Lorg/webrtc/ali/CameraVideoCapturer$CameraStatistics;I)I

    .line 126
    :cond_2
    iget-object v1, p0, Lorg/webrtc/ali/CameraVideoCapturer$CameraStatistics$1;->this$0:Lorg/webrtc/ali/CameraVideoCapturer$CameraStatistics;

    invoke-static {v1, v4}, Lorg/webrtc/ali/CameraVideoCapturer$CameraStatistics;->access$002(Lorg/webrtc/ali/CameraVideoCapturer$CameraStatistics;I)I

    .line 127
    iget-object v1, p0, Lorg/webrtc/ali/CameraVideoCapturer$CameraStatistics$1;->this$0:Lorg/webrtc/ali/CameraVideoCapturer$CameraStatistics;

    invoke-static {v1}, Lorg/webrtc/ali/CameraVideoCapturer$CameraStatistics;->access$300(Lorg/webrtc/ali/CameraVideoCapturer$CameraStatistics;)Lorg/webrtc/ali/SurfaceTextureHelper;

    move-result-object v1

    invoke-virtual {v1}, Lorg/webrtc/ali/SurfaceTextureHelper;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
