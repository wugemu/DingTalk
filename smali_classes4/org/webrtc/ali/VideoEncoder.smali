.class public interface abstract Lorg/webrtc/ali/VideoEncoder;
.super Ljava/lang/Object;
.source "VideoEncoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/ali/VideoEncoder$Callback;,
        Lorg/webrtc/ali/VideoEncoder$ScalingSettings;,
        Lorg/webrtc/ali/VideoEncoder$BitrateAllocation;,
        Lorg/webrtc/ali/VideoEncoder$CodecSpecificInfoH264;,
        Lorg/webrtc/ali/VideoEncoder$CodecSpecificInfoVP9;,
        Lorg/webrtc/ali/VideoEncoder$CodecSpecificInfoVP8;,
        Lorg/webrtc/ali/VideoEncoder$CodecSpecificInfo;,
        Lorg/webrtc/ali/VideoEncoder$EncodeInfo;,
        Lorg/webrtc/ali/VideoEncoder$Settings;
    }
.end annotation


# virtual methods
.method public abstract encode(Lorg/webrtc/ali/VideoFrame;Lorg/webrtc/ali/VideoEncoder$EncodeInfo;)Lorg/webrtc/ali/VideoCodecStatus;
.end method

.method public abstract getImplementationName()Ljava/lang/String;
.end method

.method public abstract getScalingSettings()Lorg/webrtc/ali/VideoEncoder$ScalingSettings;
.end method

.method public abstract initEncode(Lorg/webrtc/ali/VideoEncoder$Settings;Lorg/webrtc/ali/VideoEncoder$Callback;)Lorg/webrtc/ali/VideoCodecStatus;
.end method

.method public abstract release()Lorg/webrtc/ali/VideoCodecStatus;
.end method

.method public abstract setChannelParameters(SJ)Lorg/webrtc/ali/VideoCodecStatus;
.end method

.method public abstract setRateAllocation(Lorg/webrtc/ali/VideoEncoder$BitrateAllocation;I)Lorg/webrtc/ali/VideoCodecStatus;
.end method
