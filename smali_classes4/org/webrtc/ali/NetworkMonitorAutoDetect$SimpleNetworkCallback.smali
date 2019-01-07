.class Lorg/webrtc/ali/NetworkMonitorAutoDetect$SimpleNetworkCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "NetworkMonitorAutoDetect.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/ali/NetworkMonitorAutoDetect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SimpleNetworkCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/ali/NetworkMonitorAutoDetect;


# direct methods
.method private constructor <init>(Lorg/webrtc/ali/NetworkMonitorAutoDetect;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lorg/webrtc/ali/NetworkMonitorAutoDetect$SimpleNetworkCallback;->this$0:Lorg/webrtc/ali/NetworkMonitorAutoDetect;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/webrtc/ali/NetworkMonitorAutoDetect;Lorg/webrtc/ali/NetworkMonitorAutoDetect$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/webrtc/ali/NetworkMonitorAutoDetect;
    .param p2, "x1"    # Lorg/webrtc/ali/NetworkMonitorAutoDetect$1;

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lorg/webrtc/ali/NetworkMonitorAutoDetect$SimpleNetworkCallback;-><init>(Lorg/webrtc/ali/NetworkMonitorAutoDetect;)V

    return-void
.end method

.method private onNetworkChanged(Landroid/net/Network;)V
    .locals 2
    .param p1, "network"    # Landroid/net/Network;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 171
    iget-object v1, p0, Lorg/webrtc/ali/NetworkMonitorAutoDetect$SimpleNetworkCallback;->this$0:Lorg/webrtc/ali/NetworkMonitorAutoDetect;

    invoke-static {v1}, Lorg/webrtc/ali/NetworkMonitorAutoDetect;->access$200(Lorg/webrtc/ali/NetworkMonitorAutoDetect;)Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;

    move-result-object v1

    invoke-static {v1, p1}, Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->access$300(Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;Landroid/net/Network;)Lorg/webrtc/ali/NetworkMonitorAutoDetect$NetworkInformation;

    move-result-object v0

    .line 172
    .local v0, "networkInformation":Lorg/webrtc/ali/NetworkMonitorAutoDetect$NetworkInformation;
    if-eqz v0, :cond_0

    .line 173
    iget-object v1, p0, Lorg/webrtc/ali/NetworkMonitorAutoDetect$SimpleNetworkCallback;->this$0:Lorg/webrtc/ali/NetworkMonitorAutoDetect;

    invoke-static {v1}, Lorg/webrtc/ali/NetworkMonitorAutoDetect;->access$100(Lorg/webrtc/ali/NetworkMonitorAutoDetect;)Lorg/webrtc/ali/NetworkMonitorAutoDetect$Observer;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/webrtc/ali/NetworkMonitorAutoDetect$Observer;->onNetworkConnect(Lorg/webrtc/ali/NetworkMonitorAutoDetect$NetworkInformation;)V

    .line 175
    :cond_0
    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 3
    .param p1, "network"    # Landroid/net/Network;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 129
    const-string/jumbo v0, "NetworkMonitorAutoDetect"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Network becomes available: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Network;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-direct {p0, p1}, Lorg/webrtc/ali/NetworkMonitorAutoDetect$SimpleNetworkCallback;->onNetworkChanged(Landroid/net/Network;)V

    .line 131
    return-void
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 3
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "networkCapabilities"    # Landroid/net/NetworkCapabilities;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 139
    const-string/jumbo v0, "NetworkMonitorAutoDetect"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "capabilities changed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/net/NetworkCapabilities;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-direct {p0, p1}, Lorg/webrtc/ali/NetworkMonitorAutoDetect$SimpleNetworkCallback;->onNetworkChanged(Landroid/net/Network;)V

    .line 141
    return-void
.end method

.method public onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 3
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "linkProperties"    # Landroid/net/LinkProperties;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 149
    const-string/jumbo v0, "NetworkMonitorAutoDetect"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "link properties changed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/net/LinkProperties;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-direct {p0, p1}, Lorg/webrtc/ali/NetworkMonitorAutoDetect$SimpleNetworkCallback;->onNetworkChanged(Landroid/net/Network;)V

    .line 151
    return-void
.end method

.method public onLosing(Landroid/net/Network;I)V
    .locals 3
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "maxMsToLive"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 159
    const-string/jumbo v0, "NetworkMonitorAutoDetect"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Network "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p1}, Landroid/net/Network;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is about to lose in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 159
    invoke-static {v0, v1}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 4
    .param p1, "network"    # Landroid/net/Network;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 165
    const-string/jumbo v0, "NetworkMonitorAutoDetect"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Network "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Network;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is disconnected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lorg/webrtc/ali/NetworkMonitorAutoDetect$SimpleNetworkCallback;->this$0:Lorg/webrtc/ali/NetworkMonitorAutoDetect;

    invoke-static {v0}, Lorg/webrtc/ali/NetworkMonitorAutoDetect;->access$100(Lorg/webrtc/ali/NetworkMonitorAutoDetect;)Lorg/webrtc/ali/NetworkMonitorAutoDetect$Observer;

    move-result-object v0

    invoke-static {p1}, Lorg/webrtc/ali/NetworkMonitorAutoDetect;->access$000(Landroid/net/Network;)J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lorg/webrtc/ali/NetworkMonitorAutoDetect$Observer;->onNetworkDisconnect(J)V

    .line 167
    return-void
.end method
