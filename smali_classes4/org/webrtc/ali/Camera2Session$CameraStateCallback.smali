.class Lorg/webrtc/ali/Camera2Session$CameraStateCallback;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "Camera2Session.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/ali/Camera2Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CameraStateCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/ali/Camera2Session;


# direct methods
.method private constructor <init>(Lorg/webrtc/ali/Camera2Session;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lorg/webrtc/ali/Camera2Session$CameraStateCallback;->this$0:Lorg/webrtc/ali/Camera2Session;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/webrtc/ali/Camera2Session;Lorg/webrtc/ali/Camera2Session$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/webrtc/ali/Camera2Session;
    .param p2, "x1"    # Lorg/webrtc/ali/Camera2Session$1;

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lorg/webrtc/ali/Camera2Session$CameraStateCallback;-><init>(Lorg/webrtc/ali/Camera2Session;)V

    return-void
.end method

.method private getErrorDescription(I)Ljava/lang/String;
    .locals 2
    .param p1, "errorCode"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 82
    packed-switch p1, :pswitch_data_0

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Unknown camera error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 84
    :pswitch_0
    const-string/jumbo v0, "Camera device has encountered a fatal error."

    goto :goto_0

    .line 86
    :pswitch_1
    const-string/jumbo v0, "Camera device could not be opened due to a device policy."

    goto :goto_0

    .line 88
    :pswitch_2
    const-string/jumbo v0, "Camera device is in use already."

    goto :goto_0

    .line 90
    :pswitch_3
    const-string/jumbo v0, "Camera service has encountered a fatal error."

    goto :goto_0

    .line 92
    :pswitch_4
    const-string/jumbo v0, "Camera device could not be opened because there are too many other open camera devices."

    goto :goto_0

    .line 82
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public onClosed(Landroid/hardware/camera2/CameraDevice;)V
    .locals 2
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 144
    iget-object v0, p0, Lorg/webrtc/ali/Camera2Session$CameraStateCallback;->this$0:Lorg/webrtc/ali/Camera2Session;

    invoke-static {v0}, Lorg/webrtc/ali/Camera2Session;->access$000(Lorg/webrtc/ali/Camera2Session;)V

    .line 146
    const-string/jumbo v0, "Camera2Session"

    const-string/jumbo v1, "Camera device closed."

    invoke-static {v0, v1}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lorg/webrtc/ali/Camera2Session$CameraStateCallback;->this$0:Lorg/webrtc/ali/Camera2Session;

    invoke-static {v0}, Lorg/webrtc/ali/Camera2Session;->access$500(Lorg/webrtc/ali/Camera2Session;)Lorg/webrtc/ali/CameraSession$Events;

    move-result-object v0

    iget-object v1, p0, Lorg/webrtc/ali/Camera2Session$CameraStateCallback;->this$0:Lorg/webrtc/ali/Camera2Session;

    invoke-interface {v0, v1}, Lorg/webrtc/ali/CameraSession$Events;->onCameraClosed(Lorg/webrtc/ali/CameraSession;)V

    .line 148
    return-void
.end method

.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 4
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 101
    iget-object v1, p0, Lorg/webrtc/ali/Camera2Session$CameraStateCallback;->this$0:Lorg/webrtc/ali/Camera2Session;

    invoke-static {v1}, Lorg/webrtc/ali/Camera2Session;->access$000(Lorg/webrtc/ali/Camera2Session;)V

    .line 102
    iget-object v1, p0, Lorg/webrtc/ali/Camera2Session$CameraStateCallback;->this$0:Lorg/webrtc/ali/Camera2Session;

    invoke-static {v1}, Lorg/webrtc/ali/Camera2Session;->access$100(Lorg/webrtc/ali/Camera2Session;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/webrtc/ali/Camera2Session$CameraStateCallback;->this$0:Lorg/webrtc/ali/Camera2Session;

    invoke-static {v1}, Lorg/webrtc/ali/Camera2Session;->access$200(Lorg/webrtc/ali/Camera2Session;)Lorg/webrtc/ali/Camera2Session$SessionState;

    move-result-object v1

    sget-object v2, Lorg/webrtc/ali/Camera2Session$SessionState;->STOPPED:Lorg/webrtc/ali/Camera2Session$SessionState;

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    .line 103
    .local v0, "startFailure":Z
    :goto_0
    iget-object v1, p0, Lorg/webrtc/ali/Camera2Session$CameraStateCallback;->this$0:Lorg/webrtc/ali/Camera2Session;

    sget-object v2, Lorg/webrtc/ali/Camera2Session$SessionState;->STOPPED:Lorg/webrtc/ali/Camera2Session$SessionState;

    invoke-static {v1, v2}, Lorg/webrtc/ali/Camera2Session;->access$202(Lorg/webrtc/ali/Camera2Session;Lorg/webrtc/ali/Camera2Session$SessionState;)Lorg/webrtc/ali/Camera2Session$SessionState;

    .line 104
    iget-object v1, p0, Lorg/webrtc/ali/Camera2Session$CameraStateCallback;->this$0:Lorg/webrtc/ali/Camera2Session;

    invoke-static {v1}, Lorg/webrtc/ali/Camera2Session;->access$300(Lorg/webrtc/ali/Camera2Session;)V

    .line 105
    if-eqz v0, :cond_1

    .line 106
    iget-object v1, p0, Lorg/webrtc/ali/Camera2Session$CameraStateCallback;->this$0:Lorg/webrtc/ali/Camera2Session;

    invoke-static {v1}, Lorg/webrtc/ali/Camera2Session;->access$400(Lorg/webrtc/ali/Camera2Session;)Lorg/webrtc/ali/CameraSession$CreateSessionCallback;

    move-result-object v1

    sget-object v2, Lorg/webrtc/ali/CameraSession$FailureType;->DISCONNECTED:Lorg/webrtc/ali/CameraSession$FailureType;

    const-string/jumbo v3, "Camera disconnected / evicted."

    invoke-interface {v1, v2, v3}, Lorg/webrtc/ali/CameraSession$CreateSessionCallback;->onFailure(Lorg/webrtc/ali/CameraSession$FailureType;Ljava/lang/String;)V

    .line 110
    :goto_1
    return-void

    .line 102
    .end local v0    # "startFailure":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 108
    .restart local v0    # "startFailure":Z
    :cond_1
    iget-object v1, p0, Lorg/webrtc/ali/Camera2Session$CameraStateCallback;->this$0:Lorg/webrtc/ali/Camera2Session;

    invoke-static {v1}, Lorg/webrtc/ali/Camera2Session;->access$500(Lorg/webrtc/ali/Camera2Session;)Lorg/webrtc/ali/CameraSession$Events;

    move-result-object v1

    iget-object v2, p0, Lorg/webrtc/ali/Camera2Session$CameraStateCallback;->this$0:Lorg/webrtc/ali/Camera2Session;

    invoke-interface {v1, v2}, Lorg/webrtc/ali/CameraSession$Events;->onCameraDisconnected(Lorg/webrtc/ali/CameraSession;)V

    goto :goto_1
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 2
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;
    .param p2, "errorCode"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 114
    iget-object v0, p0, Lorg/webrtc/ali/Camera2Session$CameraStateCallback;->this$0:Lorg/webrtc/ali/Camera2Session;

    invoke-static {v0}, Lorg/webrtc/ali/Camera2Session;->access$000(Lorg/webrtc/ali/Camera2Session;)V

    .line 115
    iget-object v0, p0, Lorg/webrtc/ali/Camera2Session$CameraStateCallback;->this$0:Lorg/webrtc/ali/Camera2Session;

    invoke-direct {p0, p2}, Lorg/webrtc/ali/Camera2Session$CameraStateCallback;->getErrorDescription(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/ali/Camera2Session;->access$600(Lorg/webrtc/ali/Camera2Session;Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 6
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 120
    iget-object v3, p0, Lorg/webrtc/ali/Camera2Session$CameraStateCallback;->this$0:Lorg/webrtc/ali/Camera2Session;

    invoke-static {v3}, Lorg/webrtc/ali/Camera2Session;->access$000(Lorg/webrtc/ali/Camera2Session;)V

    .line 122
    const-string/jumbo v3, "Camera2Session"

    const-string/jumbo v4, "Camera opened."

    invoke-static {v3, v4}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v3, p0, Lorg/webrtc/ali/Camera2Session$CameraStateCallback;->this$0:Lorg/webrtc/ali/Camera2Session;

    invoke-static {v3, p1}, Lorg/webrtc/ali/Camera2Session;->access$702(Lorg/webrtc/ali/Camera2Session;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    .line 125
    iget-object v3, p0, Lorg/webrtc/ali/Camera2Session$CameraStateCallback;->this$0:Lorg/webrtc/ali/Camera2Session;

    invoke-static {v3}, Lorg/webrtc/ali/Camera2Session;->access$800(Lorg/webrtc/ali/Camera2Session;)Lorg/webrtc/ali/SurfaceTextureHelper;

    move-result-object v3

    invoke-virtual {v3}, Lorg/webrtc/ali/SurfaceTextureHelper;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    .line 126
    .local v1, "surfaceTexture":Landroid/graphics/SurfaceTexture;
    iget-object v3, p0, Lorg/webrtc/ali/Camera2Session$CameraStateCallback;->this$0:Lorg/webrtc/ali/Camera2Session;

    invoke-static {v3}, Lorg/webrtc/ali/Camera2Session;->access$900(Lorg/webrtc/ali/Camera2Session;)Lorg/webrtc/ali/CameraEnumerationAndroid$CaptureFormat;

    move-result-object v3

    iget v3, v3, Lorg/webrtc/ali/CameraEnumerationAndroid$CaptureFormat;->width:I

    iget-object v4, p0, Lorg/webrtc/ali/Camera2Session$CameraStateCallback;->this$0:Lorg/webrtc/ali/Camera2Session;

    invoke-static {v4}, Lorg/webrtc/ali/Camera2Session;->access$900(Lorg/webrtc/ali/Camera2Session;)Lorg/webrtc/ali/CameraEnumerationAndroid$CaptureFormat;

    move-result-object v4

    iget v4, v4, Lorg/webrtc/ali/CameraEnumerationAndroid$CaptureFormat;->height:I

    invoke-virtual {v1, v3, v4}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 127
    iget-object v3, p0, Lorg/webrtc/ali/Camera2Session$CameraStateCallback;->this$0:Lorg/webrtc/ali/Camera2Session;

    new-instance v4, Landroid/view/Surface;

    invoke-direct {v4, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-static {v3, v4}, Lorg/webrtc/ali/Camera2Session;->access$1002(Lorg/webrtc/ali/Camera2Session;Landroid/view/Surface;)Landroid/view/Surface;

    .line 128
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .local v2, "surfaces":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    iget-object v3, p0, Lorg/webrtc/ali/Camera2Session$CameraStateCallback;->this$0:Lorg/webrtc/ali/Camera2Session;

    invoke-static {v3}, Lorg/webrtc/ali/Camera2Session;->access$1000(Lorg/webrtc/ali/Camera2Session;)Landroid/view/Surface;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    iget-object v3, p0, Lorg/webrtc/ali/Camera2Session$CameraStateCallback;->this$0:Lorg/webrtc/ali/Camera2Session;

    invoke-static {v3}, Lorg/webrtc/ali/Camera2Session;->access$1100(Lorg/webrtc/ali/Camera2Session;)Landroid/view/Surface;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 131
    const-string/jumbo v3, "Camera2Session"

    const-string/jumbo v4, "Add MediaRecorder surface to capture session."

    invoke-static {v3, v4}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v3, p0, Lorg/webrtc/ali/Camera2Session$CameraStateCallback;->this$0:Lorg/webrtc/ali/Camera2Session;

    invoke-static {v3}, Lorg/webrtc/ali/Camera2Session;->access$1100(Lorg/webrtc/ali/Camera2Session;)Landroid/view/Surface;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    :cond_0
    :try_start_0
    new-instance v3, Lorg/webrtc/ali/Camera2Session$CaptureSessionCallback;

    iget-object v4, p0, Lorg/webrtc/ali/Camera2Session$CameraStateCallback;->this$0:Lorg/webrtc/ali/Camera2Session;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lorg/webrtc/ali/Camera2Session$CaptureSessionCallback;-><init>(Lorg/webrtc/ali/Camera2Session;Lorg/webrtc/ali/Camera2Session$1;)V

    iget-object v4, p0, Lorg/webrtc/ali/Camera2Session$CameraStateCallback;->this$0:Lorg/webrtc/ali/Camera2Session;

    invoke-static {v4}, Lorg/webrtc/ali/Camera2Session;->access$1300(Lorg/webrtc/ali/Camera2Session;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :goto_0
    return-void

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    iget-object v3, p0, Lorg/webrtc/ali/Camera2Session$CameraStateCallback;->this$0:Lorg/webrtc/ali/Camera2Session;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Failed to create capture session. "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/webrtc/ali/Camera2Session;->access$600(Lorg/webrtc/ali/Camera2Session;Ljava/lang/String;)V

    goto :goto_0
.end method
