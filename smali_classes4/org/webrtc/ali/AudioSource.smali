.class public Lorg/webrtc/ali/AudioSource;
.super Lorg/webrtc/ali/MediaSource;
.source "AudioSource.java"


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "nativeSource"    # J

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lorg/webrtc/ali/MediaSource;-><init>(J)V

    .line 20
    return-void
.end method
