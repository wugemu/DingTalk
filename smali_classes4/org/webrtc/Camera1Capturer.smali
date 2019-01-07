.class public Lorg/webrtc/Camera1Capturer;
.super Lorg/webrtc/CameraCapturer;
.source "Camera1Capturer.java"


# instance fields
.field private final cameraOutFormat:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/webrtc/CameraVideoCapturer$CameraEventsHandler;I)V
    .locals 1
    .param p1, "cameraName"    # Ljava/lang/String;
    .param p2, "eventsHandler"    # Lorg/webrtc/CameraVideoCapturer$CameraEventsHandler;
    .param p3, "cameraOutFormat"    # I

    .prologue
    .line 20
    new-instance v0, Lorg/webrtc/Camera1Enumerator;

    invoke-direct {v0, p3}, Lorg/webrtc/Camera1Enumerator;-><init>(I)V

    invoke-direct {p0, p1, p2, v0}, Lorg/webrtc/CameraCapturer;-><init>(Ljava/lang/String;Lorg/webrtc/CameraVideoCapturer$CameraEventsHandler;Lorg/webrtc/CameraEnumerator;)V

    .line 22
    iput p3, p0, Lorg/webrtc/Camera1Capturer;->cameraOutFormat:I

    .line 23
    return-void
.end method


# virtual methods
.method protected createCameraSession(Lorg/webrtc/CameraSession$CreateSessionCallback;Lorg/webrtc/CameraSession$Events;Landroid/content/Context;Lorg/webrtc/SurfaceTextureHelper;Ljava/lang/String;III)V
    .locals 9
    .param p1, "createSessionCallback"    # Lorg/webrtc/CameraSession$CreateSessionCallback;
    .param p2, "events"    # Lorg/webrtc/CameraSession$Events;
    .param p3, "applicationContext"    # Landroid/content/Context;
    .param p4, "surfaceTextureHelper"    # Lorg/webrtc/SurfaceTextureHelper;
    .param p5, "cameraName"    # Ljava/lang/String;
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "framerate"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 30
    iget v2, p0, Lorg/webrtc/Camera1Capturer;->cameraOutFormat:I

    .line 31
    invoke-static {p5}, Lorg/webrtc/Camera1Enumerator;->getCameraIndex(Ljava/lang/String;)I

    move-result v5

    move-object v0, p1

    move-object v1, p2

    move-object v3, p3

    move-object v4, p4

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    .line 30
    invoke-static/range {v0 .. v8}, Lorg/webrtc/Camera1Session;->create(Lorg/webrtc/CameraSession$CreateSessionCallback;Lorg/webrtc/CameraSession$Events;ILandroid/content/Context;Lorg/webrtc/SurfaceTextureHelper;IIII)V

    .line 33
    return-void
.end method
