.class public interface abstract Lorg/webrtc/ali/VideoCapturer$CapturerObserver;
.super Ljava/lang/Object;
.source "VideoCapturer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/ali/VideoCapturer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CapturerObserver"
.end annotation


# virtual methods
.method public abstract onByteBufferFrameCaptured([BIIIJ)V
.end method

.method public abstract onCapturerStarted(Z)V
.end method

.method public abstract onCapturerStopped()V
.end method

.method public abstract onTextureFrameCaptured(III[FIJ)V
.end method
