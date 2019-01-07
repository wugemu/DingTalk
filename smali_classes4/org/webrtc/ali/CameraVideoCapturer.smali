.class public interface abstract Lorg/webrtc/ali/CameraVideoCapturer;
.super Ljava/lang/Object;
.source "CameraVideoCapturer.java"

# interfaces
.implements Lorg/webrtc/ali/VideoCapturer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/ali/CameraVideoCapturer$CameraStatistics;,
        Lorg/webrtc/ali/CameraVideoCapturer$MediaRecorderHandler;,
        Lorg/webrtc/ali/CameraVideoCapturer$CameraSwitchHandler;,
        Lorg/webrtc/ali/CameraVideoCapturer$CameraEventsHandler;
    }
.end annotation


# virtual methods
.method public abstract addMediaRecorderToCamera(Landroid/media/MediaRecorder;Lorg/webrtc/ali/CameraVideoCapturer$MediaRecorderHandler;)V
.end method

.method public abstract removeMediaRecorderFromCamera(Lorg/webrtc/ali/CameraVideoCapturer$MediaRecorderHandler;)V
.end method

.method public abstract switchCamera(Lorg/webrtc/ali/CameraVideoCapturer$CameraSwitchHandler;)V
.end method
