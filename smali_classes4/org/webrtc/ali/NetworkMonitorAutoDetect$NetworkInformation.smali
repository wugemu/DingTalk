.class public Lorg/webrtc/ali/NetworkMonitorAutoDetect$NetworkInformation;
.super Ljava/lang/Object;
.source "NetworkMonitorAutoDetect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/ali/NetworkMonitorAutoDetect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkInformation"
.end annotation


# instance fields
.field public final handle:J

.field public final ipAddresses:[Lorg/webrtc/ali/NetworkMonitorAutoDetect$IPAddress;

.field public final name:Ljava/lang/String;

.field public final type:Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectionType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectionType;J[Lorg/webrtc/ali/NetworkMonitorAutoDetect$IPAddress;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectionType;
    .param p3, "handle"    # J
    .param p5, "addresses"    # [Lorg/webrtc/ali/NetworkMonitorAutoDetect$IPAddress;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lorg/webrtc/ali/NetworkMonitorAutoDetect$NetworkInformation;->name:Ljava/lang/String;

    .line 79
    iput-object p2, p0, Lorg/webrtc/ali/NetworkMonitorAutoDetect$NetworkInformation;->type:Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectionType;

    .line 80
    iput-wide p3, p0, Lorg/webrtc/ali/NetworkMonitorAutoDetect$NetworkInformation;->handle:J

    .line 81
    iput-object p5, p0, Lorg/webrtc/ali/NetworkMonitorAutoDetect$NetworkInformation;->ipAddresses:[Lorg/webrtc/ali/NetworkMonitorAutoDetect$IPAddress;

    .line 82
    return-void
.end method
