.class public interface abstract Lorg/webrtc/ali/CameraSession$Events;
.super Ljava/lang/Object;
.source "CameraSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/ali/CameraSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Events"
.end annotation


# virtual methods
.method public abstract onByteBufferFrameCaptured(Lorg/webrtc/ali/CameraSession;[BIIIJ)V
.end method

.method public abstract onCameraClosed(Lorg/webrtc/ali/CameraSession;)V
.end method

.method public abstract onCameraDisconnected(Lorg/webrtc/ali/CameraSession;)V
.end method

.method public abstract onCameraError(Lorg/webrtc/ali/CameraSession;Ljava/lang/String;)V
.end method

.method public abstract onCameraOpening()V
.end method

.method public abstract onTextureFrameCaptured(Lorg/webrtc/ali/CameraSession;III[FIJ)V
.end method
