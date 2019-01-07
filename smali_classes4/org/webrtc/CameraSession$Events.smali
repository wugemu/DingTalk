.class public interface abstract Lorg/webrtc/CameraSession$Events;
.super Ljava/lang/Object;
.source "CameraSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/CameraSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Events"
.end annotation


# virtual methods
.method public abstract onAdjustBrightnessSupport(I)V
.end method

.method public abstract onByteBufferFrameCaptured(Lorg/webrtc/CameraSession;[BIIIJ)V
.end method

.method public abstract onCameraClosed(Lorg/webrtc/CameraSession;)V
.end method

.method public abstract onCameraDisconnected(Lorg/webrtc/CameraSession;)V
.end method

.method public abstract onCameraError(Lorg/webrtc/CameraSession;Ljava/lang/String;I)V
.end method

.method public abstract onCameraOpening()V
.end method

.method public abstract onTextureFrameCaptured(Lorg/webrtc/CameraSession;III[FIJ)V
.end method
