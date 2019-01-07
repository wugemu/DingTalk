.class Lorg/webrtc/CameraCapturer$4;
.super Ljava/lang/Object;
.source "CameraCapturer.java"

# interfaces
.implements Lorg/webrtc/CameraVideoCapturer$CameraEventsHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/CameraCapturer;-><init>(Ljava/lang/String;Lorg/webrtc/CameraVideoCapturer$CameraEventsHandler;Lorg/webrtc/CameraEnumerator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/CameraCapturer;


# direct methods
.method constructor <init>(Lorg/webrtc/CameraCapturer;)V
    .locals 0
    .param p1, "this$0"    # Lorg/webrtc/CameraCapturer;

    .prologue
    .line 240
    iput-object p1, p0, Lorg/webrtc/CameraCapturer$4;->this$0:Lorg/webrtc/CameraCapturer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdjustBrightnessSupport(I)V
    .locals 0
    .param p1, "brightness"    # I

    .prologue
    .line 255
    return-void
.end method

.method public onCameraClosed()V
    .locals 0

    .prologue
    .line 252
    return-void
.end method

.method public onCameraDisconnected()V
    .locals 0

    .prologue
    .line 244
    return-void
.end method

.method public onCameraError(Ljava/lang/String;I)V
    .locals 0
    .param p1, "errorDescription"    # Ljava/lang/String;
    .param p2, "errorCode"    # I

    .prologue
    .line 242
    return-void
.end method

.method public onCameraFreezed(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorDescription"    # Ljava/lang/String;

    .prologue
    .line 246
    return-void
.end method

.method public onCameraOpening(Ljava/lang/String;)V
    .locals 0
    .param p1, "cameraName"    # Ljava/lang/String;

    .prologue
    .line 248
    return-void
.end method

.method public onCameraPreview(III[FIJ)I
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "oesTextureId"    # I
    .param p4, "transformMatrix"    # [F
    .param p5, "rotation"    # I
    .param p6, "timestamp"    # J

    .prologue
    .line 264
    const/4 v0, -0x1

    return v0
.end method

.method public onCameraPreview([BIIIJ)I
    .locals 1
    .param p1, "data"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "rotation"    # I
    .param p5, "timestamp_ns"    # J

    .prologue
    .line 259
    const/4 v0, -0x1

    return v0
.end method

.method public onFirstFrameAvailable()V
    .locals 0

    .prologue
    .line 250
    return-void
.end method
