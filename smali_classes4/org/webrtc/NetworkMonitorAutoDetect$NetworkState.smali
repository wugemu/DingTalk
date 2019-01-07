.class Lorg/webrtc/NetworkMonitorAutoDetect$NetworkState;
.super Ljava/lang/Object;
.source "NetworkMonitorAutoDetect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/NetworkMonitorAutoDetect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NetworkState"
.end annotation


# instance fields
.field private final connected:Z

.field private final subtype:I

.field private final type:I


# direct methods
.method public constructor <init>(ZII)V
    .locals 0
    .param p1, "connected"    # Z
    .param p2, "type"    # I
    .param p3, "subtype"    # I

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-boolean p1, p0, Lorg/webrtc/NetworkMonitorAutoDetect$NetworkState;->connected:Z

    .line 93
    iput p2, p0, Lorg/webrtc/NetworkMonitorAutoDetect$NetworkState;->type:I

    .line 94
    iput p3, p0, Lorg/webrtc/NetworkMonitorAutoDetect$NetworkState;->subtype:I

    .line 95
    return-void
.end method

.method static synthetic access$400(Lorg/webrtc/NetworkMonitorAutoDetect$NetworkState;)Z
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/NetworkMonitorAutoDetect$NetworkState;

    .prologue
    .line 82
    iget-boolean v0, p0, Lorg/webrtc/NetworkMonitorAutoDetect$NetworkState;->connected:Z

    return v0
.end method


# virtual methods
.method public getNetworkSubType()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lorg/webrtc/NetworkMonitorAutoDetect$NetworkState;->subtype:I

    return v0
.end method

.method public getNetworkType()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lorg/webrtc/NetworkMonitorAutoDetect$NetworkState;->type:I

    return v0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lorg/webrtc/NetworkMonitorAutoDetect$NetworkState;->connected:Z

    return v0
.end method
