.class public Lorg/webrtc/ali/Camera1Capturer;
.super Lorg/webrtc/ali/CameraCapturer;
.source "Camera1Capturer.java"


# instance fields
.field private final captureToTexture:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/webrtc/ali/CameraVideoCapturer$CameraEventsHandler;Z)V
    .locals 1
    .param p1, "cameraName"    # Ljava/lang/String;
    .param p2, "eventsHandler"    # Lorg/webrtc/ali/CameraVideoCapturer$CameraEventsHandler;
    .param p3, "captureToTexture"    # Z

    .prologue
    .line 21
    new-instance v0, Lorg/webrtc/ali/Camera1Enumerator;

    invoke-direct {v0, p3}, Lorg/webrtc/ali/Camera1Enumerator;-><init>(Z)V

    invoke-direct {p0, p1, p2, v0}, Lorg/webrtc/ali/CameraCapturer;-><init>(Ljava/lang/String;Lorg/webrtc/ali/CameraVideoCapturer$CameraEventsHandler;Lorg/webrtc/ali/CameraEnumerator;)V

    .line 23
    iput-boolean p3, p0, Lorg/webrtc/ali/Camera1Capturer;->captureToTexture:Z

    .line 24
    return-void
.end method


# virtual methods
.method public bridge synthetic addMediaRecorderToCamera(Landroid/media/MediaRecorder;Lorg/webrtc/ali/CameraVideoCapturer$MediaRecorderHandler;)V
    .locals 0

    .prologue
    .line 16
    invoke-super {p0, p1, p2}, Lorg/webrtc/ali/CameraCapturer;->addMediaRecorderToCamera(Landroid/media/MediaRecorder;Lorg/webrtc/ali/CameraVideoCapturer$MediaRecorderHandler;)V

    return-void
.end method

.method public bridge synthetic changeCaptureFormat(III)V
    .locals 0

    .prologue
    .line 16
    invoke-super {p0, p1, p2, p3}, Lorg/webrtc/ali/CameraCapturer;->changeCaptureFormat(III)V

    return-void
.end method

.method protected createCameraSession(Lorg/webrtc/ali/CameraSession$CreateSessionCallback;Lorg/webrtc/ali/CameraSession$Events;Landroid/content/Context;Lorg/webrtc/ali/SurfaceTextureHelper;Landroid/media/MediaRecorder;Ljava/lang/String;III)V
    .locals 10
    .param p1, "createSessionCallback"    # Lorg/webrtc/ali/CameraSession$CreateSessionCallback;
    .param p2, "events"    # Lorg/webrtc/ali/CameraSession$Events;
    .param p3, "applicationContext"    # Landroid/content/Context;
    .param p4, "surfaceTextureHelper"    # Lorg/webrtc/ali/SurfaceTextureHelper;
    .param p5, "mediaRecorder"    # Landroid/media/MediaRecorder;
    .param p6, "cameraName"    # Ljava/lang/String;
    .param p7, "width"    # I
    .param p8, "height"    # I
    .param p9, "framerate"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 31
    iget-boolean v0, p0, Lorg/webrtc/ali/Camera1Capturer;->captureToTexture:Z

    if-nez v0, :cond_0

    if-eqz p5, :cond_1

    :cond_0
    const/4 v2, 0x1

    .line 33
    :goto_0
    invoke-static/range {p6 .. p6}, Lorg/webrtc/ali/Camera1Enumerator;->getCameraIndex(Ljava/lang/String;)I

    move-result v6

    move-object v0, p1

    move-object v1, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    .line 31
    invoke-static/range {v0 .. v9}, Lorg/webrtc/ali/Camera1Session;->create(Lorg/webrtc/ali/CameraSession$CreateSessionCallback;Lorg/webrtc/ali/CameraSession$Events;ZLandroid/content/Context;Lorg/webrtc/ali/SurfaceTextureHelper;Landroid/media/MediaRecorder;IIII)V

    .line 34
    return-void

    .line 31
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public bridge synthetic dispose()V
    .locals 0

    .prologue
    .line 16
    invoke-super {p0}, Lorg/webrtc/ali/CameraCapturer;->dispose()V

    return-void
.end method

.method public bridge synthetic initialize(Lorg/webrtc/ali/SurfaceTextureHelper;Landroid/content/Context;Lorg/webrtc/ali/VideoCapturer$CapturerObserver;)V
    .locals 0

    .prologue
    .line 16
    invoke-super {p0, p1, p2, p3}, Lorg/webrtc/ali/CameraCapturer;->initialize(Lorg/webrtc/ali/SurfaceTextureHelper;Landroid/content/Context;Lorg/webrtc/ali/VideoCapturer$CapturerObserver;)V

    return-void
.end method

.method public bridge synthetic isScreencast()Z
    .locals 1

    .prologue
    .line 16
    invoke-super {p0}, Lorg/webrtc/ali/CameraCapturer;->isScreencast()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic printStackTrace()V
    .locals 0

    .prologue
    .line 16
    invoke-super {p0}, Lorg/webrtc/ali/CameraCapturer;->printStackTrace()V

    return-void
.end method

.method public bridge synthetic removeMediaRecorderFromCamera(Lorg/webrtc/ali/CameraVideoCapturer$MediaRecorderHandler;)V
    .locals 0

    .prologue
    .line 16
    invoke-super {p0, p1}, Lorg/webrtc/ali/CameraCapturer;->removeMediaRecorderFromCamera(Lorg/webrtc/ali/CameraVideoCapturer$MediaRecorderHandler;)V

    return-void
.end method

.method public bridge synthetic startCapture(III)V
    .locals 0

    .prologue
    .line 16
    invoke-super {p0, p1, p2, p3}, Lorg/webrtc/ali/CameraCapturer;->startCapture(III)V

    return-void
.end method

.method public bridge synthetic stopCapture()V
    .locals 0

    .prologue
    .line 16
    invoke-super {p0}, Lorg/webrtc/ali/CameraCapturer;->stopCapture()V

    return-void
.end method

.method public bridge synthetic switchCamera(Lorg/webrtc/ali/CameraVideoCapturer$CameraSwitchHandler;)V
    .locals 0

    .prologue
    .line 16
    invoke-super {p0, p1}, Lorg/webrtc/ali/CameraCapturer;->switchCamera(Lorg/webrtc/ali/CameraVideoCapturer$CameraSwitchHandler;)V

    return-void
.end method
