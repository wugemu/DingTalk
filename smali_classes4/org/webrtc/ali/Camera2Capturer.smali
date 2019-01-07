.class public Lorg/webrtc/ali/Camera2Capturer;
.super Lorg/webrtc/ali/CameraCapturer;
.source "Camera2Capturer.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# instance fields
.field private final cameraManager:Landroid/hardware/camera2/CameraManager;

.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lorg/webrtc/ali/CameraVideoCapturer$CameraEventsHandler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cameraName"    # Ljava/lang/String;
    .param p3, "eventsHandler"    # Lorg/webrtc/ali/CameraVideoCapturer$CameraEventsHandler;

    .prologue
    .line 24
    new-instance v0, Lorg/webrtc/ali/Camera2Enumerator;

    invoke-direct {v0, p1}, Lorg/webrtc/ali/Camera2Enumerator;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p2, p3, v0}, Lorg/webrtc/ali/CameraCapturer;-><init>(Ljava/lang/String;Lorg/webrtc/ali/CameraVideoCapturer$CameraEventsHandler;Lorg/webrtc/ali/CameraEnumerator;)V

    .line 26
    iput-object p1, p0, Lorg/webrtc/ali/Camera2Capturer;->context:Landroid/content/Context;

    .line 27
    const-string/jumbo v0, "camera"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    iput-object v0, p0, Lorg/webrtc/ali/Camera2Capturer;->cameraManager:Landroid/hardware/camera2/CameraManager;

    .line 28
    return-void
.end method


# virtual methods
.method public bridge synthetic addMediaRecorderToCamera(Landroid/media/MediaRecorder;Lorg/webrtc/ali/CameraVideoCapturer$MediaRecorderHandler;)V
    .locals 0

    .prologue
    .line 18
    invoke-super {p0, p1, p2}, Lorg/webrtc/ali/CameraCapturer;->addMediaRecorderToCamera(Landroid/media/MediaRecorder;Lorg/webrtc/ali/CameraVideoCapturer$MediaRecorderHandler;)V

    return-void
.end method

.method public bridge synthetic changeCaptureFormat(III)V
    .locals 0

    .prologue
    .line 18
    invoke-super {p0, p1, p2, p3}, Lorg/webrtc/ali/CameraCapturer;->changeCaptureFormat(III)V

    return-void
.end method

.method protected createCameraSession(Lorg/webrtc/ali/CameraSession$CreateSessionCallback;Lorg/webrtc/ali/CameraSession$Events;Landroid/content/Context;Lorg/webrtc/ali/SurfaceTextureHelper;Landroid/media/MediaRecorder;Ljava/lang/String;III)V
    .locals 10
    .param p1, "createSessionCallback"    # Lorg/webrtc/ali/CameraSession$CreateSessionCallback;
    .param p2, "events"    # Lorg/webrtc/ali/CameraSession$Events;
    .param p3, "applicationContext"    # Landroid/content/Context;
    .param p4, "surfaceTextureHelper"    # Lorg/webrtc/ali/SurfaceTextureHelper;
    .param p5, "mediaRecoder"    # Landroid/media/MediaRecorder;
    .param p6, "cameraName"    # Ljava/lang/String;
    .param p7, "width"    # I
    .param p8, "height"    # I
    .param p9, "framerate"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 35
    iget-object v3, p0, Lorg/webrtc/ali/Camera2Capturer;->cameraManager:Landroid/hardware/camera2/CameraManager;

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-static/range {v0 .. v9}, Lorg/webrtc/ali/Camera2Session;->create(Lorg/webrtc/ali/CameraSession$CreateSessionCallback;Lorg/webrtc/ali/CameraSession$Events;Landroid/content/Context;Landroid/hardware/camera2/CameraManager;Lorg/webrtc/ali/SurfaceTextureHelper;Landroid/media/MediaRecorder;Ljava/lang/String;III)V

    .line 37
    return-void
.end method

.method public bridge synthetic dispose()V
    .locals 0

    .prologue
    .line 18
    invoke-super {p0}, Lorg/webrtc/ali/CameraCapturer;->dispose()V

    return-void
.end method

.method public bridge synthetic initialize(Lorg/webrtc/ali/SurfaceTextureHelper;Landroid/content/Context;Lorg/webrtc/ali/VideoCapturer$CapturerObserver;)V
    .locals 0

    .prologue
    .line 18
    invoke-super {p0, p1, p2, p3}, Lorg/webrtc/ali/CameraCapturer;->initialize(Lorg/webrtc/ali/SurfaceTextureHelper;Landroid/content/Context;Lorg/webrtc/ali/VideoCapturer$CapturerObserver;)V

    return-void
.end method

.method public bridge synthetic isScreencast()Z
    .locals 1

    .prologue
    .line 18
    invoke-super {p0}, Lorg/webrtc/ali/CameraCapturer;->isScreencast()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic printStackTrace()V
    .locals 0

    .prologue
    .line 18
    invoke-super {p0}, Lorg/webrtc/ali/CameraCapturer;->printStackTrace()V

    return-void
.end method

.method public bridge synthetic removeMediaRecorderFromCamera(Lorg/webrtc/ali/CameraVideoCapturer$MediaRecorderHandler;)V
    .locals 0

    .prologue
    .line 18
    invoke-super {p0, p1}, Lorg/webrtc/ali/CameraCapturer;->removeMediaRecorderFromCamera(Lorg/webrtc/ali/CameraVideoCapturer$MediaRecorderHandler;)V

    return-void
.end method

.method public bridge synthetic startCapture(III)V
    .locals 0

    .prologue
    .line 18
    invoke-super {p0, p1, p2, p3}, Lorg/webrtc/ali/CameraCapturer;->startCapture(III)V

    return-void
.end method

.method public bridge synthetic stopCapture()V
    .locals 0

    .prologue
    .line 18
    invoke-super {p0}, Lorg/webrtc/ali/CameraCapturer;->stopCapture()V

    return-void
.end method

.method public bridge synthetic switchCamera(Lorg/webrtc/ali/CameraVideoCapturer$CameraSwitchHandler;)V
    .locals 0

    .prologue
    .line 18
    invoke-super {p0, p1}, Lorg/webrtc/ali/CameraCapturer;->switchCamera(Lorg/webrtc/ali/CameraVideoCapturer$CameraSwitchHandler;)V

    return-void
.end method
