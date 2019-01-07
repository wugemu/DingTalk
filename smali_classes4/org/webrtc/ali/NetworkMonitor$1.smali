.class Lorg/webrtc/ali/NetworkMonitor$1;
.super Ljava/lang/Object;
.source "NetworkMonitor.java"

# interfaces
.implements Lorg/webrtc/ali/NetworkMonitorAutoDetect$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/ali/NetworkMonitor;->setAutoDetectConnectivityStateInternal(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/ali/NetworkMonitor;


# direct methods
.method constructor <init>(Lorg/webrtc/ali/NetworkMonitor;)V
    .locals 0
    .param p1, "this$0"    # Lorg/webrtc/ali/NetworkMonitor;

    .prologue
    .line 137
    iput-object p1, p0, Lorg/webrtc/ali/NetworkMonitor$1;->this$0:Lorg/webrtc/ali/NetworkMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionTypeChanged(Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectionType;)V
    .locals 1
    .param p1, "newConnectionType"    # Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectionType;

    .prologue
    .line 141
    iget-object v0, p0, Lorg/webrtc/ali/NetworkMonitor$1;->this$0:Lorg/webrtc/ali/NetworkMonitor;

    invoke-static {v0, p1}, Lorg/webrtc/ali/NetworkMonitor;->access$000(Lorg/webrtc/ali/NetworkMonitor;Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectionType;)V

    .line 142
    return-void
.end method

.method public onNetworkConnect(Lorg/webrtc/ali/NetworkMonitorAutoDetect$NetworkInformation;)V
    .locals 1
    .param p1, "networkInfo"    # Lorg/webrtc/ali/NetworkMonitorAutoDetect$NetworkInformation;

    .prologue
    .line 146
    iget-object v0, p0, Lorg/webrtc/ali/NetworkMonitor$1;->this$0:Lorg/webrtc/ali/NetworkMonitor;

    invoke-static {v0, p1}, Lorg/webrtc/ali/NetworkMonitor;->access$100(Lorg/webrtc/ali/NetworkMonitor;Lorg/webrtc/ali/NetworkMonitorAutoDetect$NetworkInformation;)V

    .line 147
    return-void
.end method

.method public onNetworkDisconnect(J)V
    .locals 1
    .param p1, "networkHandle"    # J

    .prologue
    .line 151
    iget-object v0, p0, Lorg/webrtc/ali/NetworkMonitor$1;->this$0:Lorg/webrtc/ali/NetworkMonitor;

    invoke-static {v0, p1, p2}, Lorg/webrtc/ali/NetworkMonitor;->access$200(Lorg/webrtc/ali/NetworkMonitor;J)V

    .line 152
    return-void
.end method
