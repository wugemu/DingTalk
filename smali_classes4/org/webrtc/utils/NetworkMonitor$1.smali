.class Lorg/webrtc/utils/NetworkMonitor$1;
.super Ljava/lang/Object;
.source "NetworkMonitor.java"

# interfaces
.implements Lorg/webrtc/utils/NetworkMonitorAutoDetect$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/utils/NetworkMonitor;->setAutoDetectConnectivityStateInternal(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/utils/NetworkMonitor;


# direct methods
.method constructor <init>(Lorg/webrtc/utils/NetworkMonitor;)V
    .locals 0
    .param p1, "this$0"    # Lorg/webrtc/utils/NetworkMonitor;

    .prologue
    .line 138
    iput-object p1, p0, Lorg/webrtc/utils/NetworkMonitor$1;->this$0:Lorg/webrtc/utils/NetworkMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionTypeChanged(Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;)V
    .locals 1
    .param p1, "newConnectionType"    # Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;

    .prologue
    .line 142
    iget-object v0, p0, Lorg/webrtc/utils/NetworkMonitor$1;->this$0:Lorg/webrtc/utils/NetworkMonitor;

    invoke-static {v0, p1}, Lorg/webrtc/utils/NetworkMonitor;->access$000(Lorg/webrtc/utils/NetworkMonitor;Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;)V

    .line 143
    return-void
.end method

.method public onNetworkConnect(Lorg/webrtc/utils/NetworkMonitorAutoDetect$NetworkInformation;)V
    .locals 1
    .param p1, "networkInfo"    # Lorg/webrtc/utils/NetworkMonitorAutoDetect$NetworkInformation;

    .prologue
    .line 147
    iget-object v0, p0, Lorg/webrtc/utils/NetworkMonitor$1;->this$0:Lorg/webrtc/utils/NetworkMonitor;

    invoke-static {v0, p1}, Lorg/webrtc/utils/NetworkMonitor;->access$100(Lorg/webrtc/utils/NetworkMonitor;Lorg/webrtc/utils/NetworkMonitorAutoDetect$NetworkInformation;)V

    .line 148
    return-void
.end method

.method public onNetworkDisconnect(J)V
    .locals 1
    .param p1, "networkHandle"    # J

    .prologue
    .line 152
    iget-object v0, p0, Lorg/webrtc/utils/NetworkMonitor$1;->this$0:Lorg/webrtc/utils/NetworkMonitor;

    invoke-static {v0, p1, p2}, Lorg/webrtc/utils/NetworkMonitor;->access$200(Lorg/webrtc/utils/NetworkMonitor;J)V

    .line 153
    return-void
.end method
