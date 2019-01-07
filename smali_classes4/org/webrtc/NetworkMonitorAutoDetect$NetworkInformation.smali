.class public Lorg/webrtc/NetworkMonitorAutoDetect$NetworkInformation;
.super Ljava/lang/Object;
.source "NetworkMonitorAutoDetect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/NetworkMonitorAutoDetect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkInformation"
.end annotation


# instance fields
.field public final handle:J

.field public final ipAddresses:[Lorg/webrtc/NetworkMonitorAutoDetect$IPAddress;

.field public final name:Ljava/lang/String;

.field public final type:Lorg/webrtc/NetworkMonitorAutoDetect$ConnectionType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/webrtc/NetworkMonitorAutoDetect$ConnectionType;J[Lorg/webrtc/NetworkMonitorAutoDetect$IPAddress;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Lorg/webrtc/NetworkMonitorAutoDetect$ConnectionType;
    .param p3, "handle"    # J
    .param p5, "addresses"    # [Lorg/webrtc/NetworkMonitorAutoDetect$IPAddress;

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lorg/webrtc/NetworkMonitorAutoDetect$NetworkInformation;->name:Ljava/lang/String;

    .line 76
    iput-object p2, p0, Lorg/webrtc/NetworkMonitorAutoDetect$NetworkInformation;->type:Lorg/webrtc/NetworkMonitorAutoDetect$ConnectionType;

    .line 77
    iput-wide p3, p0, Lorg/webrtc/NetworkMonitorAutoDetect$NetworkInformation;->handle:J

    .line 78
    iput-object p5, p0, Lorg/webrtc/NetworkMonitorAutoDetect$NetworkInformation;->ipAddresses:[Lorg/webrtc/NetworkMonitorAutoDetect$IPAddress;

    .line 79
    return-void
.end method
