.class public interface abstract Lorg/webrtc/ali/VideoDecoder;
.super Ljava/lang/Object;
.source "VideoDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/ali/VideoDecoder$Callback;,
        Lorg/webrtc/ali/VideoDecoder$DecodeInfo;,
        Lorg/webrtc/ali/VideoDecoder$Settings;
    }
.end annotation


# virtual methods
.method public abstract decode(Lorg/webrtc/ali/EncodedImage;Lorg/webrtc/ali/VideoDecoder$DecodeInfo;)Lorg/webrtc/ali/VideoCodecStatus;
.end method

.method public abstract getImplementationName()Ljava/lang/String;
.end method

.method public abstract getPrefersLateDecoding()Z
.end method

.method public abstract initDecode(Lorg/webrtc/ali/VideoDecoder$Settings;Lorg/webrtc/ali/VideoDecoder$Callback;)Lorg/webrtc/ali/VideoCodecStatus;
.end method

.method public abstract release()Lorg/webrtc/ali/VideoCodecStatus;
.end method
