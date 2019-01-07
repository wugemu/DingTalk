.class public Lorg/webrtc/utils/NetworkMonitorAutoDetect$NetworkInformation;
.super Ljava/lang/Object;
.source "NetworkMonitorAutoDetect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/utils/NetworkMonitorAutoDetect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkInformation"
.end annotation


# instance fields
.field public final handle:J

.field public final ipAddresses:[Lorg/webrtc/utils/NetworkMonitorAutoDetect$IPAddress;

.field public final name:Ljava/lang/String;

.field public final type:Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;J[Lorg/webrtc/utils/NetworkMonitorAutoDetect$IPAddress;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;
    .param p3, "handle"    # J
    .param p5, "addresses"    # [Lorg/webrtc/utils/NetworkMonitorAutoDetect$IPAddress;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lorg/webrtc/utils/NetworkMonitorAutoDetect$NetworkInformation;->name:Ljava/lang/String;

    .line 80
    iput-object p2, p0, Lorg/webrtc/utils/NetworkMonitorAutoDetect$NetworkInformation;->type:Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;

    .line 81
    iput-wide p3, p0, Lorg/webrtc/utils/NetworkMonitorAutoDetect$NetworkInformation;->handle:J

    .line 82
    iput-object p5, p0, Lorg/webrtc/utils/NetworkMonitorAutoDetect$NetworkInformation;->ipAddresses:[Lorg/webrtc/utils/NetworkMonitorAutoDetect$IPAddress;

    .line 83
    return-void
.end method
