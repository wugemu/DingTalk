.class public Lorg/webrtc/ali/PeerConnection$RTCConfiguration;
.super Ljava/lang/Object;
.source "PeerConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/ali/PeerConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RTCConfiguration"
.end annotation


# instance fields
.field public audioJitterBufferFastAccelerate:Z

.field public audioJitterBufferMaxPackets:I

.field public bundlePolicy:Lorg/webrtc/ali/PeerConnection$BundlePolicy;

.field public candidateNetworkPolicy:Lorg/webrtc/ali/PeerConnection$CandidateNetworkPolicy;

.field public continualGatheringPolicy:Lorg/webrtc/ali/PeerConnection$ContinualGatheringPolicy;

.field public disableIPv6OnWifi:Z

.field public iceBackupCandidatePairPingInterval:I

.field public iceCandidatePoolSize:I

.field public iceCheckMinInterval:Ljava/lang/Integer;

.field public iceConnectionReceivingTimeout:I

.field public iceServers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/webrtc/ali/PeerConnection$IceServer;",
            ">;"
        }
    .end annotation
.end field

.field public iceTransportsType:Lorg/webrtc/ali/PeerConnection$IceTransportsType;

.field public keyType:Lorg/webrtc/ali/PeerConnection$KeyType;

.field public presumeWritableWhenFullyRelayed:Z

.field public pruneTurnPorts:Z

.field public rtcpMuxPolicy:Lorg/webrtc/ali/PeerConnection$RtcpMuxPolicy;

.field public tcpCandidatePolicy:Lorg/webrtc/ali/PeerConnection$TcpCandidatePolicy;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/webrtc/ali/PeerConnection$IceServer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "iceServers":Ljava/util/List;, "Ljava/util/List<Lorg/webrtc/ali/PeerConnection$IceServer;>;"
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    sget-object v0, Lorg/webrtc/ali/PeerConnection$IceTransportsType;->ALL:Lorg/webrtc/ali/PeerConnection$IceTransportsType;

    iput-object v0, p0, Lorg/webrtc/ali/PeerConnection$RTCConfiguration;->iceTransportsType:Lorg/webrtc/ali/PeerConnection$IceTransportsType;

    .line 184
    sget-object v0, Lorg/webrtc/ali/PeerConnection$BundlePolicy;->BALANCED:Lorg/webrtc/ali/PeerConnection$BundlePolicy;

    iput-object v0, p0, Lorg/webrtc/ali/PeerConnection$RTCConfiguration;->bundlePolicy:Lorg/webrtc/ali/PeerConnection$BundlePolicy;

    .line 185
    sget-object v0, Lorg/webrtc/ali/PeerConnection$RtcpMuxPolicy;->REQUIRE:Lorg/webrtc/ali/PeerConnection$RtcpMuxPolicy;

    iput-object v0, p0, Lorg/webrtc/ali/PeerConnection$RTCConfiguration;->rtcpMuxPolicy:Lorg/webrtc/ali/PeerConnection$RtcpMuxPolicy;

    .line 186
    sget-object v0, Lorg/webrtc/ali/PeerConnection$TcpCandidatePolicy;->ENABLED:Lorg/webrtc/ali/PeerConnection$TcpCandidatePolicy;

    iput-object v0, p0, Lorg/webrtc/ali/PeerConnection$RTCConfiguration;->tcpCandidatePolicy:Lorg/webrtc/ali/PeerConnection$TcpCandidatePolicy;

    .line 187
    sget-object v0, Lorg/webrtc/ali/PeerConnection$CandidateNetworkPolicy;->ALL:Lorg/webrtc/ali/PeerConnection$CandidateNetworkPolicy;

    iput-object v0, p0, Lorg/webrtc/ali/PeerConnection$RTCConfiguration;->candidateNetworkPolicy:Lorg/webrtc/ali/PeerConnection$CandidateNetworkPolicy;

    .line 188
    iput-object p1, p0, Lorg/webrtc/ali/PeerConnection$RTCConfiguration;->iceServers:Ljava/util/List;

    .line 189
    const/16 v0, 0x32

    iput v0, p0, Lorg/webrtc/ali/PeerConnection$RTCConfiguration;->audioJitterBufferMaxPackets:I

    .line 190
    iput-boolean v1, p0, Lorg/webrtc/ali/PeerConnection$RTCConfiguration;->audioJitterBufferFastAccelerate:Z

    .line 191
    iput v2, p0, Lorg/webrtc/ali/PeerConnection$RTCConfiguration;->iceConnectionReceivingTimeout:I

    .line 192
    iput v2, p0, Lorg/webrtc/ali/PeerConnection$RTCConfiguration;->iceBackupCandidatePairPingInterval:I

    .line 193
    sget-object v0, Lorg/webrtc/ali/PeerConnection$KeyType;->ECDSA:Lorg/webrtc/ali/PeerConnection$KeyType;

    iput-object v0, p0, Lorg/webrtc/ali/PeerConnection$RTCConfiguration;->keyType:Lorg/webrtc/ali/PeerConnection$KeyType;

    .line 194
    sget-object v0, Lorg/webrtc/ali/PeerConnection$ContinualGatheringPolicy;->GATHER_ONCE:Lorg/webrtc/ali/PeerConnection$ContinualGatheringPolicy;

    iput-object v0, p0, Lorg/webrtc/ali/PeerConnection$RTCConfiguration;->continualGatheringPolicy:Lorg/webrtc/ali/PeerConnection$ContinualGatheringPolicy;

    .line 195
    iput v1, p0, Lorg/webrtc/ali/PeerConnection$RTCConfiguration;->iceCandidatePoolSize:I

    .line 196
    iput-boolean v1, p0, Lorg/webrtc/ali/PeerConnection$RTCConfiguration;->pruneTurnPorts:Z

    .line 197
    iput-boolean v1, p0, Lorg/webrtc/ali/PeerConnection$RTCConfiguration;->presumeWritableWhenFullyRelayed:Z

    .line 198
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/webrtc/ali/PeerConnection$RTCConfiguration;->iceCheckMinInterval:Ljava/lang/Integer;

    .line 199
    iput-boolean v1, p0, Lorg/webrtc/ali/PeerConnection$RTCConfiguration;->disableIPv6OnWifi:Z

    .line 200
    return-void
.end method
