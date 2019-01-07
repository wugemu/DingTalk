.class public interface abstract Lorg/webrtc/ali/CameraEnumerator;
.super Ljava/lang/Object;
.source "CameraEnumerator.java"


# virtual methods
.method public abstract createCapturer(Ljava/lang/String;Lorg/webrtc/ali/CameraVideoCapturer$CameraEventsHandler;)Lorg/webrtc/ali/CameraVideoCapturer;
.end method

.method public abstract getDeviceNames()[Ljava/lang/String;
.end method

.method public abstract getSupportedFormats(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/webrtc/ali/CameraEnumerationAndroid$CaptureFormat;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isBackFacing(Ljava/lang/String;)Z
.end method

.method public abstract isFrontFacing(Ljava/lang/String;)Z
.end method
