.class public Lorg/webrtc/ali/RtpReceiver;
.super Ljava/lang/Object;
.source "RtpReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/ali/RtpReceiver$Observer;
    }
.end annotation


# instance fields
.field private cachedTrack:Lorg/webrtc/ali/MediaStreamTrack;

.field private nativeObserver:J

.field final nativeRtpReceiver:J


# direct methods
.method public constructor <init>(J)V
    .locals 3
    .param p1, "nativeRtpReceiver"    # J

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-wide p1, p0, Lorg/webrtc/ali/RtpReceiver;->nativeRtpReceiver:J

    .line 28
    invoke-static {p1, p2}, Lorg/webrtc/ali/RtpReceiver;->nativeGetTrack(J)J

    move-result-wide v0

    .line 30
    .local v0, "track":J
    new-instance v2, Lorg/webrtc/ali/MediaStreamTrack;

    invoke-direct {v2, v0, v1}, Lorg/webrtc/ali/MediaStreamTrack;-><init>(J)V

    iput-object v2, p0, Lorg/webrtc/ali/RtpReceiver;->cachedTrack:Lorg/webrtc/ali/MediaStreamTrack;

    .line 31
    return-void
.end method

.method private static native free(J)V
.end method

.method private static native nativeGetParameters(J)Lorg/webrtc/ali/RtpParameters;
.end method

.method private static native nativeGetTrack(J)J
.end method

.method private static native nativeId(J)Ljava/lang/String;
.end method

.method private static native nativeSetObserver(JLorg/webrtc/ali/RtpReceiver$Observer;)J
.end method

.method private static native nativeSetParameters(JLorg/webrtc/ali/RtpParameters;)Z
.end method

.method private static native nativeUnsetObserver(JJ)J
.end method


# virtual methods
.method public SetObserver(Lorg/webrtc/ali/RtpReceiver$Observer;)V
    .locals 4
    .param p1, "observer"    # Lorg/webrtc/ali/RtpReceiver$Observer;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 60
    iget-wide v0, p0, Lorg/webrtc/ali/RtpReceiver;->nativeObserver:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 61
    iget-wide v0, p0, Lorg/webrtc/ali/RtpReceiver;->nativeRtpReceiver:J

    iget-wide v2, p0, Lorg/webrtc/ali/RtpReceiver;->nativeObserver:J

    invoke-static {v0, v1, v2, v3}, Lorg/webrtc/ali/RtpReceiver;->nativeUnsetObserver(JJ)J

    .line 63
    :cond_0
    iget-wide v0, p0, Lorg/webrtc/ali/RtpReceiver;->nativeRtpReceiver:J

    invoke-static {v0, v1, p1}, Lorg/webrtc/ali/RtpReceiver;->nativeSetObserver(JLorg/webrtc/ali/RtpReceiver$Observer;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/webrtc/ali/RtpReceiver;->nativeObserver:J

    .line 64
    return-void
.end method

.method public dispose()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const-wide/16 v4, 0x0

    .line 50
    iget-object v0, p0, Lorg/webrtc/ali/RtpReceiver;->cachedTrack:Lorg/webrtc/ali/MediaStreamTrack;

    invoke-virtual {v0}, Lorg/webrtc/ali/MediaStreamTrack;->dispose()V

    .line 51
    iget-wide v0, p0, Lorg/webrtc/ali/RtpReceiver;->nativeObserver:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 52
    iget-wide v0, p0, Lorg/webrtc/ali/RtpReceiver;->nativeRtpReceiver:J

    iget-wide v2, p0, Lorg/webrtc/ali/RtpReceiver;->nativeObserver:J

    invoke-static {v0, v1, v2, v3}, Lorg/webrtc/ali/RtpReceiver;->nativeUnsetObserver(JJ)J

    .line 53
    iput-wide v4, p0, Lorg/webrtc/ali/RtpReceiver;->nativeObserver:J

    .line 55
    :cond_0
    iget-wide v0, p0, Lorg/webrtc/ali/RtpReceiver;->nativeRtpReceiver:J

    invoke-static {v0, v1}, Lorg/webrtc/ali/RtpReceiver;->free(J)V

    .line 56
    return-void
.end method

.method public getParameters()Lorg/webrtc/ali/RtpParameters;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 42
    iget-wide v0, p0, Lorg/webrtc/ali/RtpReceiver;->nativeRtpReceiver:J

    invoke-static {v0, v1}, Lorg/webrtc/ali/RtpReceiver;->nativeGetParameters(J)Lorg/webrtc/ali/RtpParameters;

    move-result-object v0

    return-object v0
.end method

.method public id()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 46
    iget-wide v0, p0, Lorg/webrtc/ali/RtpReceiver;->nativeRtpReceiver:J

    invoke-static {v0, v1}, Lorg/webrtc/ali/RtpReceiver;->nativeId(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setParameters(Lorg/webrtc/ali/RtpParameters;)Z
    .locals 2
    .param p1, "parameters"    # Lorg/webrtc/ali/RtpParameters;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 38
    iget-wide v0, p0, Lorg/webrtc/ali/RtpReceiver;->nativeRtpReceiver:J

    invoke-static {v0, v1, p1}, Lorg/webrtc/ali/RtpReceiver;->nativeSetParameters(JLorg/webrtc/ali/RtpParameters;)Z

    move-result v0

    return v0
.end method

.method public track()Lorg/webrtc/ali/MediaStreamTrack;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lorg/webrtc/ali/RtpReceiver;->cachedTrack:Lorg/webrtc/ali/MediaStreamTrack;

    return-object v0
.end method
