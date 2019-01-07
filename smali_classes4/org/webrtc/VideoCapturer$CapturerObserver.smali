.class public interface abstract Lorg/webrtc/VideoCapturer$CapturerObserver;
.super Ljava/lang/Object;
.source "VideoCapturer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/VideoCapturer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CapturerObserver"
.end annotation


# virtual methods
.method public abstract onByteBufferFrameCaptured(Ljava/nio/ByteBuffer;IIIJI)V
.end method

.method public abstract onByteBufferFrameCaptured([BIIIJI)V
.end method

.method public abstract onCapturerStarted(Z)V
.end method

.method public abstract onCapturerStopped()V
.end method

.method public abstract onTextureFrameCaptured(IIIZ[FIJ)V
.end method
