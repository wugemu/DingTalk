.class Lorg/webrtc/ali/CameraCapturer$4;
.super Ljava/lang/Object;
.source "CameraCapturer.java"

# interfaces
.implements Lorg/webrtc/ali/CameraVideoCapturer$CameraEventsHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/ali/CameraCapturer;-><init>(Ljava/lang/String;Lorg/webrtc/ali/CameraVideoCapturer$CameraEventsHandler;Lorg/webrtc/ali/CameraEnumerator;)V
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
    .line 253
    iput-object p1, p0, Lorg/webrtc/ali/CameraCapturer$4;->this$0:Lorg/webrtc/ali/CameraCapturer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraClosed()V
    .locals 0

    .prologue
    .line 265
    return-void
.end method

.method public onCameraDisconnected()V
    .locals 0

    .prologue
    .line 257
    return-void
.end method

.method public onCameraError(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorDescription"    # Ljava/lang/String;

    .prologue
    .line 255
    return-void
.end method

.method public onCameraFreezed(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorDescription"    # Ljava/lang/String;

    .prologue
    .line 259
    return-void
.end method

.method public onCameraOpening(Ljava/lang/String;)V
    .locals 0
    .param p1, "cameraName"    # Ljava/lang/String;

    .prologue
    .line 261
    return-void
.end method

.method public onFirstFrameAvailable()V
    .locals 0

    .prologue
    .line 263
    return-void
.end method
