.class public Lorg/webrtc/ali/RtpSender;
.super Ljava/lang/Object;
.source "RtpSender.java"


# instance fields
.field private cachedTrack:Lorg/webrtc/ali/MediaStreamTrack;

.field private final dtmfSender:Lorg/webrtc/ali/DtmfSender;

.field final nativeRtpSender:J

.field private ownsTrack:Z


# direct methods
.method public constructor <init>(J)V
    .locals 9
    .param p1, "nativeRtpSender"    # J

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/webrtc/ali/RtpSender;->ownsTrack:Z

    .line 23
    iput-wide p1, p0, Lorg/webrtc/ali/RtpSender;->nativeRtpSender:J

    .line 24
    invoke-static {p1, p2}, Lorg/webrtc/ali/RtpSender;->nativeGetTrack(J)J

    move-result-wide v2

    .line 26
    .local v2, "track":J
    cmp-long v4, v2, v6

    if-eqz v4, :cond_1

    new-instance v4, Lorg/webrtc/ali/MediaStreamTrack;

    invoke-direct {v4, v2, v3}, Lorg/webrtc/ali/MediaStreamTrack;-><init>(J)V

    :goto_0
    iput-object v4, p0, Lorg/webrtc/ali/RtpSender;->cachedTrack:Lorg/webrtc/ali/MediaStreamTrack;

    .line 28
    invoke-static {p1, p2}, Lorg/webrtc/ali/RtpSender;->nativeGetDtmfSender(J)J

    move-result-wide v0

    .line 29
    .local v0, "nativeDtmfSender":J
    cmp-long v4, v0, v6

    if-eqz v4, :cond_0

    new-instance v5, Lorg/webrtc/ali/DtmfSender;

    invoke-direct {v5, v0, v1}, Lorg/webrtc/ali/DtmfSender;-><init>(J)V

    :cond_0
    iput-object v5, p0, Lorg/webrtc/ali/RtpSender;->dtmfSender:Lorg/webrtc/ali/DtmfSender;

    .line 30
    return-void

    .end local v0    # "nativeDtmfSender":J
    :cond_1
    move-object v4, v5

    .line 26
    goto :goto_0
.end method

.method private static native free(J)V
.end method

.method private static native nativeGetDtmfSender(J)J
.end method

.method private static native nativeGetParameters(J)Lorg/webrtc/ali/RtpParameters;
.end method

.method private static native nativeGetTrack(J)J
.end method

.method private static native nativeId(J)Ljava/lang/String;
.end method

.method private static native nativeSetParameters(JLorg/webrtc/ali/RtpParameters;)Z
.end method

.method private static native nativeSetTrack(JJ)Z
.end method


# virtual methods
.method public dispose()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 70
    iget-object v0, p0, Lorg/webrtc/ali/RtpSender;->dtmfSender:Lorg/webrtc/ali/DtmfSender;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lorg/webrtc/ali/RtpSender;->dtmfSender:Lorg/webrtc/ali/DtmfSender;

    invoke-virtual {v0}, Lorg/webrtc/ali/DtmfSender;->dispose()V

    .line 73
    :cond_0
    iget-object v0, p0, Lorg/webrtc/ali/RtpSender;->cachedTrack:Lorg/webrtc/ali/MediaStreamTrack;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/webrtc/ali/RtpSender;->ownsTrack:Z

    if-eqz v0, :cond_1

    .line 74
    iget-object v0, p0, Lorg/webrtc/ali/RtpSender;->cachedTrack:Lorg/webrtc/ali/MediaStreamTrack;

    invoke-virtual {v0}, Lorg/webrtc/ali/MediaStreamTrack;->dispose()V

    .line 76
    :cond_1
    iget-wide v0, p0, Lorg/webrtc/ali/RtpSender;->nativeRtpSender:J

    invoke-static {v0, v1}, Lorg/webrtc/ali/RtpSender;->free(J)V

    .line 77
    return-void
.end method

.method public dtmf()Lorg/webrtc/ali/DtmfSender;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lorg/webrtc/ali/RtpSender;->dtmfSender:Lorg/webrtc/ali/DtmfSender;

    return-object v0
.end method

.method public getParameters()Lorg/webrtc/ali/RtpParameters;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 58
    iget-wide v0, p0, Lorg/webrtc/ali/RtpSender;->nativeRtpSender:J

    invoke-static {v0, v1}, Lorg/webrtc/ali/RtpSender;->nativeGetParameters(J)Lorg/webrtc/ali/RtpParameters;

    move-result-object v0

    return-object v0
.end method

.method public id()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 62
    iget-wide v0, p0, Lorg/webrtc/ali/RtpSender;->nativeRtpSender:J

    invoke-static {v0, v1}, Lorg/webrtc/ali/RtpSender;->nativeId(J)Ljava/lang/String;

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
    .line 54
    iget-wide v0, p0, Lorg/webrtc/ali/RtpSender;->nativeRtpSender:J

    invoke-static {v0, v1, p1}, Lorg/webrtc/ali/RtpSender;->nativeSetParameters(JLorg/webrtc/ali/RtpParameters;)Z

    move-result v0

    return v0
.end method

.method public setTrack(Lorg/webrtc/ali/MediaStreamTrack;Z)Z
    .locals 4
    .param p1, "track"    # Lorg/webrtc/ali/MediaStreamTrack;
    .param p2, "takeOwnership"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 38
    iget-wide v2, p0, Lorg/webrtc/ali/RtpSender;->nativeRtpSender:J

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    invoke-static {v2, v3, v0, v1}, Lorg/webrtc/ali/RtpSender;->nativeSetTrack(JJ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 39
    const/4 v0, 0x0

    .line 46
    :goto_1
    return v0

    .line 38
    :cond_0
    iget-wide v0, p1, Lorg/webrtc/ali/MediaStreamTrack;->nativeTrack:J

    goto :goto_0

    .line 41
    :cond_1
    iget-object v0, p0, Lorg/webrtc/ali/RtpSender;->cachedTrack:Lorg/webrtc/ali/MediaStreamTrack;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/webrtc/ali/RtpSender;->ownsTrack:Z

    if-eqz v0, :cond_2

    .line 42
    iget-object v0, p0, Lorg/webrtc/ali/RtpSender;->cachedTrack:Lorg/webrtc/ali/MediaStreamTrack;

    invoke-virtual {v0}, Lorg/webrtc/ali/MediaStreamTrack;->dispose()V

    .line 44
    :cond_2
    iput-object p1, p0, Lorg/webrtc/ali/RtpSender;->cachedTrack:Lorg/webrtc/ali/MediaStreamTrack;

    .line 45
    iput-boolean p2, p0, Lorg/webrtc/ali/RtpSender;->ownsTrack:Z

    .line 46
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public track()Lorg/webrtc/ali/MediaStreamTrack;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lorg/webrtc/ali/RtpSender;->cachedTrack:Lorg/webrtc/ali/MediaStreamTrack;

    return-object v0
.end method
