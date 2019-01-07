.class Lorg/webrtc/ali/CameraCapturer$1;
.super Ljava/lang/Object;
.source "CameraCapturer.java"

# interfaces
.implements Lorg/webrtc/ali/CameraSession$CreateSessionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/ali/CameraCapturer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/ali/CameraCapturer;


# direct methods
.method constructor <init>(Lorg/webrtc/ali/CameraCapturer;)V
    .locals 0
    .param p1, "this$0"    # Lorg/webrtc/ali/CameraCapturer;

    .prologue
    .line 44
    iput-object p1, p0, Lorg/webrtc/ali/CameraCapturer$1;->this$0:Lorg/webrtc/ali/CameraCapturer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Lorg/webrtc/ali/CameraSession;)V
    .locals 5
    .param p1, "session"    # Lorg/webrtc/ali/CameraSession;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 47
    iget-object v0, p0, Lorg/webrtc/ali/CameraCapturer$1;->this$0:Lorg/webrtc/ali/CameraCapturer;

    invoke-static {v0}, Lorg/webrtc/ali/CameraCapturer;->access$000(Lorg/webrtc/ali/CameraCapturer;)V

    .line 48
    const-string/jumbo v0, "CameraCapturer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Create session done. Switch state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/webrtc/ali/CameraCapturer$1;->this$0:Lorg/webrtc/ali/CameraCapturer;

    .line 49
    invoke-static {v2}, Lorg/webrtc/ali/CameraCapturer;->access$100(Lorg/webrtc/ali/CameraCapturer;)Lorg/webrtc/ali/CameraCapturer$SwitchState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". MediaRecorder state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/webrtc/ali/CameraCapturer$1;->this$0:Lorg/webrtc/ali/CameraCapturer;

    .line 50
    invoke-static {v2}, Lorg/webrtc/ali/CameraCapturer;->access$200(Lorg/webrtc/ali/CameraCapturer;)Lorg/webrtc/ali/CameraCapturer$MediaRecorderState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 48
    invoke-static {v0, v1}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lorg/webrtc/ali/CameraCapturer$1;->this$0:Lorg/webrtc/ali/CameraCapturer;

    invoke-static {v0}, Lorg/webrtc/ali/CameraCapturer;->access$400(Lorg/webrtc/ali/CameraCapturer;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lorg/webrtc/ali/CameraCapturer$1;->this$0:Lorg/webrtc/ali/CameraCapturer;

    invoke-static {v1}, Lorg/webrtc/ali/CameraCapturer;->access$300(Lorg/webrtc/ali/CameraCapturer;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 52
    iget-object v0, p0, Lorg/webrtc/ali/CameraCapturer$1;->this$0:Lorg/webrtc/ali/CameraCapturer;

    invoke-static {v0}, Lorg/webrtc/ali/CameraCapturer;->access$500(Lorg/webrtc/ali/CameraCapturer;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 53
    :try_start_0
    iget-object v0, p0, Lorg/webrtc/ali/CameraCapturer$1;->this$0:Lorg/webrtc/ali/CameraCapturer;

    invoke-static {v0}, Lorg/webrtc/ali/CameraCapturer;->access$600(Lorg/webrtc/ali/CameraCapturer;)Lorg/webrtc/ali/VideoCapturer$CapturerObserver;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lorg/webrtc/ali/VideoCapturer$CapturerObserver;->onCapturerStarted(Z)V

    .line 54
    iget-object v0, p0, Lorg/webrtc/ali/CameraCapturer$1;->this$0:Lorg/webrtc/ali/CameraCapturer;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/webrtc/ali/CameraCapturer;->access$702(Lorg/webrtc/ali/CameraCapturer;Z)Z

    .line 55
    iget-object v0, p0, Lorg/webrtc/ali/CameraCapturer$1;->this$0:Lorg/webrtc/ali/CameraCapturer;

    invoke-static {v0, p1}, Lorg/webrtc/ali/CameraCapturer;->access$802(Lorg/webrtc/ali/CameraCapturer;Lorg/webrtc/ali/CameraSession;)Lorg/webrtc/ali/CameraSession;

    .line 56
    iget-object v0, p0, Lorg/webrtc/ali/CameraCapturer$1;->this$0:Lorg/webrtc/ali/CameraCapturer;

    new-instance v2, Lorg/webrtc/ali/CameraVideoCapturer$CameraStatistics;

    iget-object v3, p0, Lorg/webrtc/ali/CameraCapturer$1;->this$0:Lorg/webrtc/ali/CameraCapturer;

    invoke-static {v3}, Lorg/webrtc/ali/CameraCapturer;->access$1000(Lorg/webrtc/ali/CameraCapturer;)Lorg/webrtc/ali/SurfaceTextureHelper;

    move-result-object v3

    iget-object v4, p0, Lorg/webrtc/ali/CameraCapturer$1;->this$0:Lorg/webrtc/ali/CameraCapturer;

    invoke-static {v4}, Lorg/webrtc/ali/CameraCapturer;->access$1100(Lorg/webrtc/ali/CameraCapturer;)Lorg/webrtc/ali/CameraVideoCapturer$CameraEventsHandler;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/webrtc/ali/CameraVideoCapturer$CameraStatistics;-><init>(Lorg/webrtc/ali/SurfaceTextureHelper;Lorg/webrtc/ali/CameraVideoCapturer$CameraEventsHandler;)V

    invoke-static {v0, v2}, Lorg/webrtc/ali/CameraCapturer;->access$902(Lorg/webrtc/ali/CameraCapturer;Lorg/webrtc/ali/CameraVideoCapturer$CameraStatistics;)Lorg/webrtc/ali/CameraVideoCapturer$CameraStatistics;

    .line 57
    iget-object v0, p0, Lorg/webrtc/ali/CameraCapturer$1;->this$0:Lorg/webrtc/ali/CameraCapturer;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/webrtc/ali/CameraCapturer;->access$1202(Lorg/webrtc/ali/CameraCapturer;Z)Z

    .line 58
    iget-object v0, p0, Lorg/webrtc/ali/CameraCapturer$1;->this$0:Lorg/webrtc/ali/CameraCapturer;

    invoke-static {v0}, Lorg/webrtc/ali/CameraCapturer;->access$500(Lorg/webrtc/ali/CameraCapturer;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 60
    iget-object v0, p0, Lorg/webrtc/ali/CameraCapturer$1;->this$0:Lorg/webrtc/ali/CameraCapturer;

    invoke-static {v0}, Lorg/webrtc/ali/CameraCapturer;->access$100(Lorg/webrtc/ali/CameraCapturer;)Lorg/webrtc/ali/CameraCapturer$SwitchState;

    move-result-object v0

    sget-object v2, Lorg/webrtc/ali/CameraCapturer$SwitchState;->IN_PROGRESS:Lorg/webrtc/ali/CameraCapturer$SwitchState;

    if-ne v0, v2, :cond_5

    .line 61
    iget-object v0, p0, Lorg/webrtc/ali/CameraCapturer$1;->this$0:Lorg/webrtc/ali/CameraCapturer;

    invoke-static {v0}, Lorg/webrtc/ali/CameraCapturer;->access$1300(Lorg/webrtc/ali/CameraCapturer;)Lorg/webrtc/ali/CameraVideoCapturer$CameraSwitchHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lorg/webrtc/ali/CameraCapturer$1;->this$0:Lorg/webrtc/ali/CameraCapturer;

    invoke-static {v0}, Lorg/webrtc/ali/CameraCapturer;->access$1300(Lorg/webrtc/ali/CameraCapturer;)Lorg/webrtc/ali/CameraVideoCapturer$CameraSwitchHandler;

    move-result-object v0

    iget-object v2, p0, Lorg/webrtc/ali/CameraCapturer$1;->this$0:Lorg/webrtc/ali/CameraCapturer;

    invoke-static {v2}, Lorg/webrtc/ali/CameraCapturer;->access$1500(Lorg/webrtc/ali/CameraCapturer;)Lorg/webrtc/ali/CameraEnumerator;

    move-result-object v2

    iget-object v3, p0, Lorg/webrtc/ali/CameraCapturer$1;->this$0:Lorg/webrtc/ali/CameraCapturer;

    invoke-static {v3}, Lorg/webrtc/ali/CameraCapturer;->access$1400(Lorg/webrtc/ali/CameraCapturer;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/webrtc/ali/CameraEnumerator;->isFrontFacing(Ljava/lang/String;)Z

    move-result v2

    invoke-interface {v0, v2}, Lorg/webrtc/ali/CameraVideoCapturer$CameraSwitchHandler;->onCameraSwitchDone(Z)V

    .line 63
    iget-object v0, p0, Lorg/webrtc/ali/CameraCapturer$1;->this$0:Lorg/webrtc/ali/CameraCapturer;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/webrtc/ali/CameraCapturer;->access$1302(Lorg/webrtc/ali/CameraCapturer;Lorg/webrtc/ali/CameraVideoCapturer$CameraSwitchHandler;)Lorg/webrtc/ali/CameraVideoCapturer$CameraSwitchHandler;

    .line 65
    :cond_0
    iget-object v0, p0, Lorg/webrtc/ali/CameraCapturer$1;->this$0:Lorg/webrtc/ali/CameraCapturer;

    sget-object v2, Lorg/webrtc/ali/CameraCapturer$SwitchState;->IDLE:Lorg/webrtc/ali/CameraCapturer$SwitchState;

    invoke-static {v0, v2}, Lorg/webrtc/ali/CameraCapturer;->access$102(Lorg/webrtc/ali/CameraCapturer;Lorg/webrtc/ali/CameraCapturer$SwitchState;)Lorg/webrtc/ali/CameraCapturer$SwitchState;

    .line 71
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/webrtc/ali/CameraCapturer$1;->this$0:Lorg/webrtc/ali/CameraCapturer;

    invoke-static {v0}, Lorg/webrtc/ali/CameraCapturer;->access$200(Lorg/webrtc/ali/CameraCapturer;)Lorg/webrtc/ali/CameraCapturer$MediaRecorderState;

    move-result-object v0

    sget-object v2, Lorg/webrtc/ali/CameraCapturer$MediaRecorderState;->IDLE_TO_ACTIVE:Lorg/webrtc/ali/CameraCapturer$MediaRecorderState;

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lorg/webrtc/ali/CameraCapturer$1;->this$0:Lorg/webrtc/ali/CameraCapturer;

    .line 72
    invoke-static {v0}, Lorg/webrtc/ali/CameraCapturer;->access$200(Lorg/webrtc/ali/CameraCapturer;)Lorg/webrtc/ali/CameraCapturer$MediaRecorderState;

    move-result-object v0

    sget-object v2, Lorg/webrtc/ali/CameraCapturer$MediaRecorderState;->ACTIVE_TO_IDLE:Lorg/webrtc/ali/CameraCapturer$MediaRecorderState;

    if-ne v0, v2, :cond_4

    .line 73
    :cond_2
    iget-object v0, p0, Lorg/webrtc/ali/CameraCapturer$1;->this$0:Lorg/webrtc/ali/CameraCapturer;

    invoke-static {v0}, Lorg/webrtc/ali/CameraCapturer;->access$1700(Lorg/webrtc/ali/CameraCapturer;)Lorg/webrtc/ali/CameraVideoCapturer$MediaRecorderHandler;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 74
    iget-object v0, p0, Lorg/webrtc/ali/CameraCapturer$1;->this$0:Lorg/webrtc/ali/CameraCapturer;

    invoke-static {v0}, Lorg/webrtc/ali/CameraCapturer;->access$1700(Lorg/webrtc/ali/CameraCapturer;)Lorg/webrtc/ali/CameraVideoCapturer$MediaRecorderHandler;

    move-result-object v0

    invoke-interface {v0}, Lorg/webrtc/ali/CameraVideoCapturer$MediaRecorderHandler;->onMediaRecorderSuccess()V

    .line 75
    iget-object v0, p0, Lorg/webrtc/ali/CameraCapturer$1;->this$0:Lorg/webrtc/ali/CameraCapturer;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/webrtc/ali/CameraCapturer;->access$1702(Lorg/webrtc/ali/CameraCapturer;Lorg/webrtc/ali/CameraVideoCapturer$MediaRecorderHandler;)Lorg/webrtc/ali/CameraVideoCapturer$MediaRecorderHandler;

    .line 77
    :cond_3
    iget-object v0, p0, Lorg/webrtc/ali/CameraCapturer$1;->this$0:Lorg/webrtc/ali/CameraCapturer;

    invoke-static {v0}, Lorg/webrtc/ali/CameraCapturer;->access$200(Lorg/webrtc/ali/CameraCapturer;)Lorg/webrtc/ali/CameraCapturer$MediaRecorderState;

    move-result-object v0

    sget-object v2, Lorg/webrtc/ali/CameraCapturer$MediaRecorderState;->IDLE_TO_ACTIVE:Lorg/webrtc/ali/CameraCapturer$MediaRecorderState;

    if-ne v0, v2, :cond_6

    .line 78
    iget-object v0, p0, Lorg/webrtc/ali/CameraCapturer$1;->this$0:Lorg/webrtc/ali/CameraCapturer;

    sget-object v2, Lorg/webrtc/ali/CameraCapturer$MediaRecorderState;->ACTIVE:Lorg/webrtc/ali/CameraCapturer$MediaRecorderState;

    invoke-static {v0, v2}, Lorg/webrtc/ali/CameraCapturer;->access$202(Lorg/webrtc/ali/CameraCapturer;Lorg/webrtc/ali/CameraCapturer$MediaRecorderState;)Lorg/webrtc/ali/CameraCapturer$MediaRecorderState;

    .line 83
    :cond_4
    :goto_1
    monitor-exit v1

    return-void

    .line 66
    :cond_5
    iget-object v0, p0, Lorg/webrtc/ali/CameraCapturer$1;->this$0:Lorg/webrtc/ali/CameraCapturer;

    invoke-static {v0}, Lorg/webrtc/ali/CameraCapturer;->access$100(Lorg/webrtc/ali/CameraCapturer;)Lorg/webrtc/ali/CameraCapturer$SwitchState;

    move-result-object v0

    sget-object v2, Lorg/webrtc/ali/CameraCapturer$SwitchState;->PENDING:Lorg/webrtc/ali/CameraCapturer$SwitchState;

    if-ne v0, v2, :cond_1

    .line 67
    iget-object v0, p0, Lorg/webrtc/ali/CameraCapturer$1;->this$0:Lorg/webrtc/ali/CameraCapturer;

    sget-object v2, Lorg/webrtc/ali/CameraCapturer$SwitchState;->IDLE:Lorg/webrtc/ali/CameraCapturer$SwitchState;

    invoke-static {v0, v2}, Lorg/webrtc/ali/CameraCapturer;->access$102(Lorg/webrtc/ali/CameraCapturer;Lorg/webrtc/ali/CameraCapturer$SwitchState;)Lorg/webrtc/ali/CameraCapturer$SwitchState;

    .line 68
    iget-object v0, p0, Lorg/webrtc/ali/CameraCapturer$1;->this$0:Lorg/webrtc/ali/CameraCapturer;

    iget-object v2, p0, Lorg/webrtc/ali/CameraCapturer$1;->this$0:Lorg/webrtc/ali/CameraCapturer;

    invoke-static {v2}, Lorg/webrtc/ali/CameraCapturer;->access$1300(Lorg/webrtc/ali/CameraCapturer;)Lorg/webrtc/ali/CameraVideoCapturer$CameraSwitchHandler;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/webrtc/ali/CameraCapturer;->access$1600(Lorg/webrtc/ali/CameraCapturer;Lorg/webrtc/ali/CameraVideoCapturer$CameraSwitchHandler;)V

    goto :goto_0

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 80
    :cond_6
    :try_start_1
    iget-object v0, p0, Lorg/webrtc/ali/CameraCapturer$1;->this$0:Lorg/webrtc/ali/CameraCapturer;

    sget-object v2, Lorg/webrtc/ali/CameraCapturer$MediaRecorderState;->IDLE:Lorg/webrtc/ali/CameraCapturer$MediaRecorderState;

    invoke-static {v0, v2}, Lorg/webrtc/ali/CameraCapturer;->access$202(Lorg/webrtc/ali/CameraCapturer;Lorg/webrtc/ali/CameraCapturer$MediaRecorderState;)Lorg/webrtc/ali/CameraCapturer$MediaRecorderState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public onFailure(Lorg/webrtc/ali/CameraSession$FailureType;Ljava/lang/String;)V
    .locals 4
    .param p1, "failureType"    # Lorg/webrtc/ali/CameraSession$FailureType;
    .param p2, "error"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 88
    iget-object v0, p0, Lorg/webrtc/ali/CameraCapturer$1;->this$0:Lorg/webrtc/ali/CameraCapturer;

    invoke-static {v0}, Lorg/webrtc/ali/CameraCapturer;->access$000(Lorg/webrtc/ali/CameraCapturer;)V

    .line 89
    iget-object v0, p0, Lorg/webrtc/ali/CameraCapturer$1;->this$0:Lorg/webrtc/ali/CameraCapturer;

    invoke-static {v0}, Lorg/webrtc/ali/CameraCapturer;->access$400(Lorg/webrtc/ali/CameraCapturer;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lorg/webrtc/ali/CameraCapturer$1;->this$0:Lorg/webrtc/ali/CameraCapturer;

    invoke-static {v1}, Lorg/webrtc/ali/CameraCapturer;->access$300(Lorg/webrtc/ali/CameraCapturer;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 90
    iget-object v0, p0, Lorg/webrtc/ali/CameraCapturer$1;->this$0:Lorg/webrtc/ali/CameraCapturer;

    invoke-static {v0}, Lorg/webrtc/ali/CameraCapturer;->access$500(Lorg/webrtc/ali/CameraCapturer;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 91
    :try_start_0
    iget-object v0, p0, Lorg/webrtc/ali/CameraCapturer$1;->this$0:Lorg/webrtc/ali/CameraCapturer;

    invoke-static {v0}, Lorg/webrtc/ali/CameraCapturer;->access$600(Lorg/webrtc/ali/CameraCapturer;)Lorg/webrtc/ali/VideoCapturer$CapturerObserver;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lorg/webrtc/ali/VideoCapturer$CapturerObserver;->onCapturerStarted(Z)V

    .line 92
    iget-object v0, p0, Lorg/webrtc/ali/CameraCapturer$1;->this$0:Lorg/webrtc/ali/CameraCapturer;

    invoke-static {v0}, Lorg/webrtc/ali/CameraCapturer;->access$1810(Lorg/webrtc/ali/CameraCapturer;)I

    .line 94
    iget-object v0, p0, Lorg/webrtc/ali/CameraCapturer$1;->this$0:Lorg/webrtc/ali/CameraCapturer;

    invoke-static {v0}, Lorg/webrtc/ali/CameraCapturer;->access$1800(Lorg/webrtc/ali/CameraCapturer;)I

    move-result v0

    if-gtz v0, :cond_5

    .line 95
    const-string/jumbo v0, "CameraCapturer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Opening camera failed, passing: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/webrtc/ali/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lorg/webrtc/ali/CameraCapturer$1;->this$0:Lorg/webrtc/ali/CameraCapturer;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/webrtc/ali/CameraCapturer;->access$702(Lorg/webrtc/ali/CameraCapturer;Z)Z

    .line 97
    iget-object v0, p0, Lorg/webrtc/ali/CameraCapturer$1;->this$0:Lorg/webrtc/ali/CameraCapturer;

    invoke-static {v0}, Lorg/webrtc/ali/CameraCapturer;->access$500(Lorg/webrtc/ali/CameraCapturer;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 99
    iget-object v0, p0, Lorg/webrtc/ali/CameraCapturer$1;->this$0:Lorg/webrtc/ali/CameraCapturer;

    invoke-static {v0}, Lorg/webrtc/ali/CameraCapturer;->access$100(Lorg/webrtc/ali/CameraCapturer;)Lorg/webrtc/ali/CameraCapturer$SwitchState;

    move-result-object v0

    sget-object v2, Lorg/webrtc/ali/CameraCapturer$SwitchState;->IDLE:Lorg/webrtc/ali/CameraCapturer$SwitchState;

    if-eq v0, v2, :cond_1

    .line 100
    iget-object v0, p0, Lorg/webrtc/ali/CameraCapturer$1;->this$0:Lorg/webrtc/ali/CameraCapturer;

    invoke-static {v0}, Lorg/webrtc/ali/CameraCapturer;->access$1300(Lorg/webrtc/ali/CameraCapturer;)Lorg/webrtc/ali/CameraVideoCapturer$CameraSwitchHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lorg/webrtc/ali/CameraCapturer$1;->this$0:Lorg/webrtc/ali/CameraCapturer;

    invoke-static {v0}, Lorg/webrtc/ali/CameraCapturer;->access$1300(Lorg/webrtc/ali/CameraCapturer;)Lorg/webrtc/ali/CameraVideoCapturer$CameraSwitchHandler;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/webrtc/ali/CameraVideoCapturer$CameraSwitchHandler;->onCameraSwitchError(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lorg/webrtc/ali/CameraCapturer$1;->this$0:Lorg/webrtc/ali/CameraCapturer;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/webrtc/ali/CameraCapturer;->access$1302(Lorg/webrtc/ali/CameraCapturer;Lorg/webrtc/ali/CameraVideoCapturer$CameraSwitchHandler;)Lorg/webrtc/ali/CameraVideoCapturer$CameraSwitchHandler;

    .line 104
    :cond_0
    iget-object v0, p0, Lorg/webrtc/ali/CameraCapturer$1;->this$0:Lorg/webrtc/ali/CameraCapturer;

    sget-object v2, Lorg/webrtc/ali/CameraCapturer$SwitchState;->IDLE:Lorg/webrtc/ali/CameraCapturer$SwitchState;

    invoke-static {v0, v2}, Lorg/webrtc/ali/CameraCapturer;->access$102(Lorg/webrtc/ali/CameraCapturer;Lorg/webrtc/ali/CameraCapturer$SwitchState;)Lorg/webrtc/ali/CameraCapturer$SwitchState;

    .line 107
    :cond_1
    iget-object v0, p0, Lorg/webrtc/ali/CameraCapturer$1;->this$0:Lorg/webrtc/ali/CameraCapturer;

    invoke-static {v0}, Lorg/webrtc/ali/CameraCapturer;->access$200(Lorg/webrtc/ali/CameraCapturer;)Lorg/webrtc/ali/CameraCapturer$MediaRecorderState;

    move-result-object v0

    sget-object v2, Lorg/webrtc/ali/CameraCapturer$MediaRecorderState;->IDLE:Lorg/webrtc/ali/CameraCapturer$MediaRecorderState;

    if-eq v0, v2, :cond_3

    .line 108
    iget-object v0, p0, Lorg/webrtc/ali/CameraCapturer$1;->this$0:Lorg/webrtc/ali/CameraCapturer;

    invoke-static {v0}, Lorg/webrtc/ali/CameraCapturer;->access$1700(Lorg/webrtc/ali/CameraCapturer;)Lorg/webrtc/ali/CameraVideoCapturer$MediaRecorderHandler;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 109
    iget-object v0, p0, Lorg/webrtc/ali/CameraCapturer$1;->this$0:Lorg/webrtc/ali/CameraCapturer;

    invoke-static {v0}, Lorg/webrtc/ali/CameraCapturer;->access$1700(Lorg/webrtc/ali/CameraCapturer;)Lorg/webrtc/ali/CameraVideoCapturer$MediaRecorderHandler;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/webrtc/ali/CameraVideoCapturer$MediaRecorderHandler;->onMediaRecorderError(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lorg/webrtc/ali/CameraCapturer$1;->this$0:Lorg/webrtc/ali/CameraCapturer;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/webrtc/ali/CameraCapturer;->access$1702(Lorg/webrtc/ali/CameraCapturer;Lorg/webrtc/ali/CameraVideoCapturer$MediaRecorderHandler;)Lorg/webrtc/ali/CameraVideoCapturer$MediaRecorderHandler;

    .line 112
    :cond_2
    iget-object v0, p0, Lorg/webrtc/ali/CameraCapturer$1;->this$0:Lorg/webrtc/ali/CameraCapturer;

    sget-object v2, Lorg/webrtc/ali/CameraCapturer$MediaRecorderState;->IDLE:Lorg/webrtc/ali/CameraCapturer$MediaRecorderState;

    invoke-static {v0, v2}, Lorg/webrtc/ali/CameraCapturer;->access$202(Lorg/webrtc/ali/CameraCapturer;Lorg/webrtc/ali/CameraCapturer$MediaRecorderState;)Lorg/webrtc/ali/CameraCapturer$MediaRecorderState;

    .line 115
    :cond_3
    sget-object v0, Lorg/webrtc/ali/CameraSession$FailureType;->DISCONNECTED:Lorg/webrtc/ali/CameraSession$FailureType;

    if-ne p1, v0, :cond_4

    .line 116
    iget-object v0, p0, Lorg/webrtc/ali/CameraCapturer$1;->this$0:Lorg/webrtc/ali/CameraCapturer;

    invoke-static {v0}, Lorg/webrtc/ali/CameraCapturer;->access$1100(Lorg/webrtc/ali/CameraCapturer;)Lorg/webrtc/ali/CameraVideoCapturer$CameraEventsHandler;

    move-result-object v0

    invoke-interface {v0}, Lorg/webrtc/ali/CameraVideoCapturer$CameraEventsHandler;->onCameraDisconnected()V

    .line 124
    :goto_0
    monitor-exit v1

    return-void

    .line 118
    :cond_4
    iget-object v0, p0, Lorg/webrtc/ali/CameraCapturer$1;->this$0:Lorg/webrtc/ali/CameraCapturer;

    invoke-static {v0}, Lorg/webrtc/ali/CameraCapturer;->access$1100(Lorg/webrtc/ali/CameraCapturer;)Lorg/webrtc/ali/CameraVideoCapturer$CameraEventsHandler;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/webrtc/ali/CameraVideoCapturer$CameraEventsHandler;->onCameraError(Ljava/lang/String;)V

    goto :goto_0

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 121
    :cond_5
    :try_start_1
    const-string/jumbo v0, "CameraCapturer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Opening camera failed, retry: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/webrtc/ali/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lorg/webrtc/ali/CameraCapturer$1;->this$0:Lorg/webrtc/ali/CameraCapturer;

    const/16 v2, 0x1f4

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lorg/webrtc/ali/CameraCapturer;->access$1900(Lorg/webrtc/ali/CameraCapturer;ILandroid/media/MediaRecorder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
