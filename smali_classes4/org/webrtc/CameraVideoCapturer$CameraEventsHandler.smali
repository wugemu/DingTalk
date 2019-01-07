.class public interface abstract Lorg/webrtc/CameraVideoCapturer$CameraEventsHandler;
.super Ljava/lang/Object;
.source "CameraVideoCapturer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/CameraVideoCapturer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CameraEventsHandler"
.end annotation


# virtual methods
.method public abstract onAdjustBrightnessSupport(I)V
.end method

.method public abstract onCameraClosed()V
.end method

.method public abstract onCameraDisconnected()V
.end method

.method public abstract onCameraError(Ljava/lang/String;I)V
.end method

.method public abstract onCameraFreezed(Ljava/lang/String;)V
.end method

.method public abstract onCameraOpening(Ljava/lang/String;)V
.end method

.method public abstract onCameraPreview(III[FIJ)I
.end method

.method public abstract onCameraPreview([BIIIJ)I
.end method

.method public abstract onFirstFrameAvailable()V
.end method
