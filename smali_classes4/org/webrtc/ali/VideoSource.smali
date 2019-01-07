.class public Lorg/webrtc/ali/VideoSource;
.super Lorg/webrtc/ali/MediaSource;
.source "VideoSource.java"


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "nativeSource"    # J

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lorg/webrtc/ali/MediaSource;-><init>(J)V

    .line 19
    return-void
.end method

.method private static native nativeAdaptOutputFormat(JIII)V
.end method


# virtual methods
.method public adaptOutputFormat(III)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "fps"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 28
    iget-wide v0, p0, Lorg/webrtc/ali/VideoSource;->nativeSource:J

    invoke-static {v0, v1, p1, p2, p3}, Lorg/webrtc/ali/VideoSource;->nativeAdaptOutputFormat(JIII)V

    .line 29
    return-void
.end method
