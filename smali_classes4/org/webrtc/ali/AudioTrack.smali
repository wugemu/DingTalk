.class public Lorg/webrtc/ali/AudioTrack;
.super Lorg/webrtc/ali/MediaStreamTrack;
.source "AudioTrack.java"


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "nativeTrack"    # J

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lorg/webrtc/ali/MediaStreamTrack;-><init>(J)V

    .line 17
    return-void
.end method

.method private static native nativeSetVolume(JD)V
.end method


# virtual methods
.method public setVolume(D)V
    .locals 3
    .param p1, "volume"    # D

    .prologue
    .line 23
    iget-wide v0, p0, Lorg/webrtc/ali/MediaStreamTrack;->nativeTrack:J

    invoke-static {v0, v1, p1, p2}, Lorg/webrtc/ali/AudioTrack;->nativeSetVolume(JD)V

    .line 24
    return-void
.end method
