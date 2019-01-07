.class public interface abstract Lorg/webrtc/CameraVideoCapturer;
.super Ljava/lang/Object;
.source "CameraVideoCapturer.java"

# interfaces
.implements Lorg/webrtc/VideoCapturer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/CameraVideoCapturer$CameraStatistics;,
        Lorg/webrtc/CameraVideoCapturer$CameraSwitchHandler;,
        Lorg/webrtc/CameraVideoCapturer$CameraEventsHandler;
    }
.end annotation


# virtual methods
.method public abstract checkLightEnable()Z
.end method

.method public abstract enableCameraLight(Z)V
.end method

.method public abstract enableMirror(Z)V
.end method

.method public abstract getBrightness()I
.end method

.method public abstract isFrontFacingCamera()Z
.end method

.method public abstract setBrightness(I)V
.end method

.method public abstract setCameraXParam([Ljava/lang/String;[Ljava/lang/String;)V
.end method

.method public abstract setVideoRotation(ZI)V
.end method

.method public abstract switchCamera(Lorg/webrtc/CameraVideoCapturer$CameraSwitchHandler;)V
.end method
