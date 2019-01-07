.class public Lorg/webrtc/ali/PeerConnection;
.super Ljava/lang/Object;
.source "PeerConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/ali/PeerConnection$RTCConfiguration;,
        Lorg/webrtc/ali/PeerConnection$ContinualGatheringPolicy;,
        Lorg/webrtc/ali/PeerConnection$KeyType;,
        Lorg/webrtc/ali/PeerConnection$CandidateNetworkPolicy;,
        Lorg/webrtc/ali/PeerConnection$TcpCandidatePolicy;,
        Lorg/webrtc/ali/PeerConnection$RtcpMuxPolicy;,
        Lorg/webrtc/ali/PeerConnection$BundlePolicy;,
        Lorg/webrtc/ali/PeerConnection$IceTransportsType;,
        Lorg/webrtc/ali/PeerConnection$IceServer;,
        Lorg/webrtc/ali/PeerConnection$Observer;,
        Lorg/webrtc/ali/PeerConnection$SignalingState;,
        Lorg/webrtc/ali/PeerConnection$TlsCertPolicy;,
        Lorg/webrtc/ali/PeerConnection$IceConnectionState;,
        Lorg/webrtc/ali/PeerConnection$IceGatheringState;
    }
.end annotation


# instance fields
.field private final localStreams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/webrtc/ali/MediaStream;",
            ">;"
        }
    .end annotation
.end field

.field private final nativeObserver:J

.field private final nativePeerConnection:J

.field private receivers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/webrtc/ali/RtpReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private senders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/webrtc/ali/RtpSender;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 26
    return-void
.end method

.method constructor <init>(JJ)V
    .locals 1
    .param p1, "nativePeerConnection"    # J
    .param p3, "nativeObserver"    # J

    .prologue
    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    iput-wide p1, p0, Lorg/webrtc/ali/PeerConnection;->nativePeerConnection:J

    .line 211
    iput-wide p3, p0, Lorg/webrtc/ali/PeerConnection;->nativeObserver:J

    .line 212
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/webrtc/ali/PeerConnection;->localStreams:Ljava/util/List;

    .line 213
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/webrtc/ali/PeerConnection;->senders:Ljava/util/List;

    .line 214
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/webrtc/ali/PeerConnection;->receivers:Ljava/util/List;

    .line 215
    return-void
.end method

.method private static native freeObserver(J)V
.end method

.method private static native freePeerConnection(J)V
.end method

.method private native nativeAddIceCandidate(Ljava/lang/String;ILjava/lang/String;)Z
.end method

.method private native nativeAddLocalStream(J)Z
.end method

.method private native nativeCreateSender(Ljava/lang/String;Ljava/lang/String;)Lorg/webrtc/ali/RtpSender;
.end method

.method private native nativeGetReceivers()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/webrtc/ali/RtpReceiver;",
            ">;"
        }
    .end annotation
.end method

.method private native nativeGetSenders()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/webrtc/ali/RtpSender;",
            ">;"
        }
    .end annotation
.end method

.method private native nativeNewGetStats(Lorg/webrtc/ali/RTCStatsCollectorCallback;)V
.end method

.method private native nativeOldGetStats(Lorg/webrtc/ali/StatsObserver;J)Z
.end method

.method private native nativeRemoveIceCandidates([Lorg/webrtc/ali/IceCandidate;)Z
.end method

.method private native nativeRemoveLocalStream(J)V
.end method

.method private native nativeStartRtcEventLog(II)Z
.end method

.method private native nativeStopRtcEventLog()V
.end method


# virtual methods
.method public addIceCandidate(Lorg/webrtc/ali/IceCandidate;)Z
    .locals 3
    .param p1, "candidate"    # Lorg/webrtc/ali/IceCandidate;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 237
    iget-object v0, p1, Lorg/webrtc/ali/IceCandidate;->sdpMid:Ljava/lang/String;

    iget v1, p1, Lorg/webrtc/ali/IceCandidate;->sdpMLineIndex:I

    iget-object v2, p1, Lorg/webrtc/ali/IceCandidate;->sdp:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lorg/webrtc/ali/PeerConnection;->nativeAddIceCandidate(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public addStream(Lorg/webrtc/ali/MediaStream;)Z
    .locals 4
    .param p1, "stream"    # Lorg/webrtc/ali/MediaStream;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 245
    iget-wide v2, p1, Lorg/webrtc/ali/MediaStream;->nativeStream:J

    invoke-direct {p0, v2, v3}, Lorg/webrtc/ali/PeerConnection;->nativeAddLocalStream(J)Z

    move-result v0

    .line 246
    .local v0, "ret":Z
    if-nez v0, :cond_0

    .line 247
    const/4 v1, 0x0

    .line 250
    :goto_0
    return v1

    .line 249
    :cond_0
    iget-object v1, p0, Lorg/webrtc/ali/PeerConnection;->localStreams:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public native close()V
.end method

.method public native createAnswer(Lorg/webrtc/ali/SdpObserver;Lorg/webrtc/ali/MediaConstraints;)V
.end method

.method public native createDataChannel(Ljava/lang/String;Lorg/webrtc/ali/DataChannel$Init;)Lorg/webrtc/ali/DataChannel;
.end method

.method public native createOffer(Lorg/webrtc/ali/SdpObserver;Lorg/webrtc/ali/MediaConstraints;)V
.end method

.method public createSender(Ljava/lang/String;Ljava/lang/String;)Lorg/webrtc/ali/RtpSender;
    .locals 2
    .param p1, "kind"    # Ljava/lang/String;
    .param p2, "stream_id"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 259
    invoke-direct {p0, p1, p2}, Lorg/webrtc/ali/PeerConnection;->nativeCreateSender(Ljava/lang/String;Ljava/lang/String;)Lorg/webrtc/ali/RtpSender;

    move-result-object v0

    .line 260
    .local v0, "new_sender":Lorg/webrtc/ali/RtpSender;
    if-eqz v0, :cond_0

    .line 261
    iget-object v1, p0, Lorg/webrtc/ali/PeerConnection;->senders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    :cond_0
    return-object v0
.end method

.method public dispose()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 322
    invoke-virtual {p0}, Lorg/webrtc/ali/PeerConnection;->close()V

    .line 323
    iget-object v3, p0, Lorg/webrtc/ali/PeerConnection;->localStreams:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/webrtc/ali/MediaStream;

    .line 324
    .local v2, "stream":Lorg/webrtc/ali/MediaStream;
    iget-wide v4, v2, Lorg/webrtc/ali/MediaStream;->nativeStream:J

    invoke-direct {p0, v4, v5}, Lorg/webrtc/ali/PeerConnection;->nativeRemoveLocalStream(J)V

    .line 325
    invoke-virtual {v2}, Lorg/webrtc/ali/MediaStream;->dispose()V

    goto :goto_0

    .line 327
    .end local v2    # "stream":Lorg/webrtc/ali/MediaStream;
    :cond_0
    iget-object v3, p0, Lorg/webrtc/ali/PeerConnection;->localStreams:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 328
    iget-object v3, p0, Lorg/webrtc/ali/PeerConnection;->senders:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/webrtc/ali/RtpSender;

    .line 329
    .local v1, "sender":Lorg/webrtc/ali/RtpSender;
    invoke-virtual {v1}, Lorg/webrtc/ali/RtpSender;->dispose()V

    goto :goto_1

    .line 331
    .end local v1    # "sender":Lorg/webrtc/ali/RtpSender;
    :cond_1
    iget-object v3, p0, Lorg/webrtc/ali/PeerConnection;->senders:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 332
    iget-object v3, p0, Lorg/webrtc/ali/PeerConnection;->receivers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/webrtc/ali/RtpReceiver;

    .line 333
    .local v0, "receiver":Lorg/webrtc/ali/RtpReceiver;
    invoke-virtual {v0}, Lorg/webrtc/ali/RtpReceiver;->dispose()V

    goto :goto_2

    .line 335
    .end local v0    # "receiver":Lorg/webrtc/ali/RtpReceiver;
    :cond_2
    iget-object v3, p0, Lorg/webrtc/ali/PeerConnection;->receivers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 336
    iget-wide v4, p0, Lorg/webrtc/ali/PeerConnection;->nativePeerConnection:J

    invoke-static {v4, v5}, Lorg/webrtc/ali/PeerConnection;->freePeerConnection(J)V

    .line 337
    iget-wide v4, p0, Lorg/webrtc/ali/PeerConnection;->nativeObserver:J

    invoke-static {v4, v5}, Lorg/webrtc/ali/PeerConnection;->freeObserver(J)V

    .line 338
    return-void
.end method

.method public native getLocalDescription()Lorg/webrtc/ali/SessionDescription;
.end method

.method public getReceivers()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/webrtc/ali/RtpReceiver;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 277
    iget-object v1, p0, Lorg/webrtc/ali/PeerConnection;->receivers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/webrtc/ali/RtpReceiver;

    .line 278
    .local v0, "receiver":Lorg/webrtc/ali/RtpReceiver;
    invoke-virtual {v0}, Lorg/webrtc/ali/RtpReceiver;->dispose()V

    goto :goto_0

    .line 280
    .end local v0    # "receiver":Lorg/webrtc/ali/RtpReceiver;
    :cond_0
    invoke-direct {p0}, Lorg/webrtc/ali/PeerConnection;->nativeGetReceivers()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/webrtc/ali/PeerConnection;->receivers:Ljava/util/List;

    .line 281
    iget-object v1, p0, Lorg/webrtc/ali/PeerConnection;->receivers:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public native getRemoteDescription()Lorg/webrtc/ali/SessionDescription;
.end method

.method public getSenders()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/webrtc/ali/RtpSender;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 269
    iget-object v1, p0, Lorg/webrtc/ali/PeerConnection;->senders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/webrtc/ali/RtpSender;

    .line 270
    .local v0, "sender":Lorg/webrtc/ali/RtpSender;
    invoke-virtual {v0}, Lorg/webrtc/ali/RtpSender;->dispose()V

    goto :goto_0

    .line 272
    .end local v0    # "sender":Lorg/webrtc/ali/RtpSender;
    :cond_0
    invoke-direct {p0}, Lorg/webrtc/ali/PeerConnection;->nativeGetSenders()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/webrtc/ali/PeerConnection;->senders:Ljava/util/List;

    .line 273
    iget-object v1, p0, Lorg/webrtc/ali/PeerConnection;->senders:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getStats(Lorg/webrtc/ali/RTCStatsCollectorCallback;)V
    .locals 0
    .param p1, "callback"    # Lorg/webrtc/ali/RTCStatsCollectorCallback;

    .prologue
    .line 293
    invoke-direct {p0, p1}, Lorg/webrtc/ali/PeerConnection;->nativeNewGetStats(Lorg/webrtc/ali/RTCStatsCollectorCallback;)V

    .line 294
    return-void
.end method

.method public getStats(Lorg/webrtc/ali/StatsObserver;Lorg/webrtc/ali/MediaStreamTrack;)Z
    .locals 2
    .param p1, "observer"    # Lorg/webrtc/ali/StatsObserver;
    .param p2, "track"    # Lorg/webrtc/ali/MediaStreamTrack;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 287
    if-nez p2, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0, v1}, Lorg/webrtc/ali/PeerConnection;->nativeOldGetStats(Lorg/webrtc/ali/StatsObserver;J)Z

    move-result v0

    return v0

    :cond_0
    iget-wide v0, p2, Lorg/webrtc/ali/MediaStreamTrack;->nativeTrack:J

    goto :goto_0
.end method

.method public native iceConnectionState()Lorg/webrtc/ali/PeerConnection$IceConnectionState;
.end method

.method public native iceGatheringState()Lorg/webrtc/ali/PeerConnection$IceGatheringState;
.end method

.method public native nativeSetConfiguration(Lorg/webrtc/ali/PeerConnection$RTCConfiguration;J)Z
.end method

.method public removeIceCandidates([Lorg/webrtc/ali/IceCandidate;)Z
    .locals 1
    .param p1, "candidates"    # [Lorg/webrtc/ali/IceCandidate;

    .prologue
    .line 241
    invoke-direct {p0, p1}, Lorg/webrtc/ali/PeerConnection;->nativeRemoveIceCandidates([Lorg/webrtc/ali/IceCandidate;)Z

    move-result v0

    return v0
.end method

.method public removeStream(Lorg/webrtc/ali/MediaStream;)V
    .locals 2
    .param p1, "stream"    # Lorg/webrtc/ali/MediaStream;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 254
    iget-wide v0, p1, Lorg/webrtc/ali/MediaStream;->nativeStream:J

    invoke-direct {p0, v0, v1}, Lorg/webrtc/ali/PeerConnection;->nativeRemoveLocalStream(J)V

    .line 255
    iget-object v0, p0, Lorg/webrtc/ali/PeerConnection;->localStreams:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 256
    return-void
.end method

.method public setConfiguration(Lorg/webrtc/ali/PeerConnection$RTCConfiguration;)Z
    .locals 2
    .param p1, "config"    # Lorg/webrtc/ali/PeerConnection$RTCConfiguration;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 233
    iget-wide v0, p0, Lorg/webrtc/ali/PeerConnection;->nativeObserver:J

    invoke-virtual {p0, p1, v0, v1}, Lorg/webrtc/ali/PeerConnection;->nativeSetConfiguration(Lorg/webrtc/ali/PeerConnection$RTCConfiguration;J)Z

    move-result v0

    return v0
.end method

.method public native setLocalDescription(Lorg/webrtc/ali/SdpObserver;Lorg/webrtc/ali/SessionDescription;)V
.end method

.method public native setRemoteDescription(Lorg/webrtc/ali/SdpObserver;Lorg/webrtc/ali/SessionDescription;)V
.end method

.method public native signalingState()Lorg/webrtc/ali/PeerConnection$SignalingState;
.end method

.method public startRtcEventLog(II)Z
    .locals 1
    .param p1, "file_descriptor"    # I
    .param p2, "max_size_bytes"    # I

    .prologue
    .line 302
    invoke-direct {p0, p1, p2}, Lorg/webrtc/ali/PeerConnection;->nativeStartRtcEventLog(II)Z

    move-result v0

    return v0
.end method

.method public stopRtcEventLog()V
    .locals 0

    .prologue
    .line 308
    invoke-direct {p0}, Lorg/webrtc/ali/PeerConnection;->nativeStopRtcEventLog()V

    .line 309
    return-void
.end method
