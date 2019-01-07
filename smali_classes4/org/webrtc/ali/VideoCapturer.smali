.class public interface abstract Lorg/webrtc/ali/VideoCapturer;
.super Ljava/lang/Object;
.source "VideoCapturer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/ali/VideoCapturer$CapturerObserver;
    }
.end annotation


# virtual methods
.method public abstract changeCaptureFormat(III)V
.end method

.method public abstract dispose()V
.end method

.method public abstract initialize(Lorg/webrtc/ali/SurfaceTextureHelper;Landroid/content/Context;Lorg/webrtc/ali/VideoCapturer$CapturerObserver;)V
.end method

.method public abstract isScreencast()Z
.end method

.method public abstract startCapture(III)V
.end method

.method public abstract stopCapture()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method
