.class public Lorg/webrtc/ali/NetworkMonitorAutoDetect;
.super Landroid/content/BroadcastReceiver;
.source "NetworkMonitorAutoDetect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/ali/NetworkMonitorAutoDetect$Observer;,
        Lorg/webrtc/ali/NetworkMonitorAutoDetect$WifiDirectManagerDelegate;,
        Lorg/webrtc/ali/NetworkMonitorAutoDetect$WifiManagerDelegate;,
        Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;,
        Lorg/webrtc/ali/NetworkMonitorAutoDetect$SimpleNetworkCallback;,
        Lorg/webrtc/ali/NetworkMonitorAutoDetect$NetworkState;,
        Lorg/webrtc/ali/NetworkMonitorAutoDetect$NetworkInformation;,
        Lorg/webrtc/ali/NetworkMonitorAutoDetect$IPAddress;,
        Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectionType;
    }
.end annotation


# static fields
.field static final INVALID_NET_ID:J = -0x1L

.field private static final TAG:Ljava/lang/String; = "NetworkMonitorAutoDetect"


# instance fields
.field private final allNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private connectionType:Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectionType;

.field private connectivityManagerDelegate:Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;

.field private final context:Landroid/content/Context;

.field private final intentFilter:Landroid/content/IntentFilter;

.field private isRegistered:Z

.field private final mobileNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private final observer:Lorg/webrtc/ali/NetworkMonitorAutoDetect$Observer;

.field private wifiDirectManagerDelegate:Lorg/webrtc/ali/NetworkMonitorAutoDetect$WifiDirectManagerDelegate;

.field private wifiManagerDelegate:Lorg/webrtc/ali/NetworkMonitorAutoDetect$WifiManagerDelegate;

.field private wifiSSID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/webrtc/ali/NetworkMonitorAutoDetect$Observer;Landroid/content/Context;)V
    .locals 5
    .param p1, "observer"    # Lorg/webrtc/ali/NetworkMonitorAutoDetect$Observer;
    .param p2, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 594
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 595
    iput-object p1, p0, Lorg/webrtc/ali/NetworkMonitorAutoDetect;->observer:Lorg/webrtc/ali/NetworkMonitorAutoDetect$Observer;

    .line 596
    iput-object p2, p0, Lorg/webrtc/ali/NetworkMonitorAutoDetect;->context:Landroid/content/Context;

    .line 597
    new-instance v2, Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;

    invoke-direct {v2, p2}, Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/webrtc/ali/NetworkMonitorAutoDetect;->connectivityManagerDelegate:Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;

    .line 598
    new-instance v2, Lorg/webrtc/ali/NetworkMonitorAutoDetect$WifiManagerDelegate;

    invoke-direct {v2, p2}, Lorg/webrtc/ali/NetworkMonitorAutoDetect$WifiManagerDelegate;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/webrtc/ali/NetworkMonitorAutoDetect;->wifiManagerDelegate:Lorg/webrtc/ali/NetworkMonitorAutoDetect$WifiManagerDelegate;

    .line 600
    iget-object v2, p0, Lorg/webrtc/ali/NetworkMonitorAutoDetect;->connectivityManagerDelegate:Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;

    invoke-virtual {v2}, Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->getNetworkState()Lorg/webrtc/ali/NetworkMonitorAutoDetect$NetworkState;

    move-result-object v0

    .line 601
    .local v0, "networkState":Lorg/webrtc/ali/NetworkMonitorAutoDetect$NetworkState;
    invoke-static {v0}, Lorg/webrtc/ali/NetworkMonitorAutoDetect;->getConnectionType(Lorg/webrtc/ali/NetworkMonitorAutoDetect$NetworkState;)Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectionType;

    move-result-object v2

    iput-object v2, p0, Lorg/webrtc/ali/NetworkMonitorAutoDetect;->connectionType:Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectionType;

    .line 602
    invoke-direct {p0, v0}, Lorg/webrtc/ali/NetworkMonitorAutoDetect;->getWifiSSID(Lorg/webrtc/ali/NetworkMonitorAutoDetect$NetworkState;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/webrtc/ali/NetworkMonitorAutoDetect;->wifiSSID:Ljava/lang/String;

    .line 603
    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lorg/webrtc/ali/NetworkMonitorAutoDetect;->intentFilter:Landroid/content/IntentFilter;

    .line 605
    const-string/jumbo v2, "IncludeWifiDirect"

    invoke-static {v2}, Lorg/webrtc/ali/PeerConnectionFactory;->fieldTrialsFindFullName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Enabled"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 606
    new-instance v2, Lorg/webrtc/ali/NetworkMonitorAutoDetect$WifiDirectManagerDelegate;

    invoke-direct {v2, p1, p2}, Lorg/webrtc/ali/NetworkMonitorAutoDetect$WifiDirectManagerDelegate;-><init>(Lorg/webrtc/ali/NetworkMonitorAutoDetect$Observer;Landroid/content/Context;)V

    iput-object v2, p0, Lorg/webrtc/ali/NetworkMonitorAutoDetect;->wifiDirectManagerDelegate:Lorg/webrtc/ali/NetworkMonitorAutoDetect$WifiDirectManagerDelegate;

    .line 609
    :cond_0
    invoke-direct {p0}, Lorg/webrtc/ali/NetworkMonitorAutoDetect;->registerReceiver()V

    .line 610
    iget-object v2, p0, Lorg/webrtc/ali/NetworkMonitorAutoDetect;->connectivityManagerDelegate:Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;

    invoke-virtual {v2}, Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->supportNetworkCallback()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 613
    new-instance v1, Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-direct {v1}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 615
    .local v1, "tempNetworkCallback":Landroid/net/ConnectivityManager$NetworkCallback;
    :try_start_0
    iget-object v2, p0, Lorg/webrtc/ali/NetworkMonitorAutoDetect;->connectivityManagerDelegate:Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;

    invoke-virtual {v2, v1}, Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->requestMobileNetwork(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 620
    :goto_0
    iput-object v1, p0, Lorg/webrtc/ali/NetworkMonitorAutoDetect;->mobileNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 621
    new-instance v2, Lorg/webrtc/ali/NetworkMonitorAutoDetect$SimpleNetworkCallback;

    invoke-direct {v2, p0, v4}, Lorg/webrtc/ali/NetworkMonitorAutoDetect$SimpleNetworkCallback;-><init>(Lorg/webrtc/ali/NetworkMonitorAutoDetect;Lorg/webrtc/ali/NetworkMonitorAutoDetect$1;)V

    iput-object v2, p0, Lorg/webrtc/ali/NetworkMonitorAutoDetect;->allNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 622
    iget-object v2, p0, Lorg/webrtc/ali/NetworkMonitorAutoDetect;->connectivityManagerDelegate:Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;

    iget-object v3, p0, Lorg/webrtc/ali/NetworkMonitorAutoDetect;->allNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v2, v3}, Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->registerNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 627
    .end local v1    # "tempNetworkCallback":Landroid/net/ConnectivityManager$NetworkCallback;
    :goto_1
    return-void

    .line 617
    .restart local v1    # "tempNetworkCallback":Landroid/net/ConnectivityManager$NetworkCallback;
    :catch_0
    move-exception v2

    const-string/jumbo v2, "NetworkMonitorAutoDetect"

    const-string/jumbo v3, "Unable to obtain permission to request a cellular network."

    invoke-static {v2, v3}, Lorg/webrtc/ali/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    const/4 v1, 0x0

    goto :goto_0

    .line 624
    .end local v1    # "tempNetworkCallback":Landroid/net/ConnectivityManager$NetworkCallback;
    :cond_1
    iput-object v4, p0, Lorg/webrtc/ali/NetworkMonitorAutoDetect;->mobileNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 625
    iput-object v4, p0, Lorg/webrtc/ali/NetworkMonitorAutoDetect;->allNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    goto :goto_1
.end method

.method static synthetic access$000(Landroid/net/Network;)J
    .locals 2
    .param p0, "x0"    # Landroid/net/Network;

    .prologue
    .line 50
    invoke-static {p0}, Lorg/webrtc/ali/NetworkMonitorAutoDetect;->networkToNetId(Landroid/net/Network;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$100(Lorg/webrtc/ali/NetworkMonitorAutoDetect;)Lorg/webrtc/ali/NetworkMonitorAutoDetect$Observer;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/ali/NetworkMonitorAutoDetect;

    .prologue
    .line 50
    iget-object v0, p0, Lorg/webrtc/ali/NetworkMonitorAutoDetect;->observer:Lorg/webrtc/ali/NetworkMonitorAutoDetect$Observer;

    return-object v0
.end method

.method static synthetic access$200(Lorg/webrtc/ali/NetworkMonitorAutoDetect;)Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/ali/NetworkMonitorAutoDetect;

    .prologue
    .line 50
    iget-object v0, p0, Lorg/webrtc/ali/NetworkMonitorAutoDetect;->connectivityManagerDelegate:Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;

    return-object v0
.end method

.method private connectionTypeChanged(Lorg/webrtc/ali/NetworkMonitorAutoDetect$NetworkState;)V
    .locals 5
    .param p1, "networkState"    # Lorg/webrtc/ali/NetworkMonitorAutoDetect$NetworkState;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 772
    invoke-static {p1}, Lorg/webrtc/ali/NetworkMonitorAutoDetect;->getConnectionType(Lorg/webrtc/ali/NetworkMonitorAutoDetect$NetworkState;)Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectionType;

    move-result-object v0

    .line 773
    .local v0, "newConnectionType":Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectionType;
    invoke-direct {p0, p1}, Lorg/webrtc/ali/NetworkMonitorAutoDetect;->getWifiSSID(Lorg/webrtc/ali/NetworkMonitorAutoDetect$NetworkState;)Ljava/lang/String;

    move-result-object v1

    .line 774
    .local v1, "newWifiSSID":Ljava/lang/String;
    iget-object v2, p0, Lorg/webrtc/ali/NetworkMonitorAutoDetect;->connectionType:Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectionType;

    if-ne v0, v2, :cond_0

    iget-object v2, p0, Lorg/webrtc/ali/NetworkMonitorAutoDetect;->wifiSSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 781
    :goto_0
    return-void

    .line 777
    :cond_0
    iput-object v0, p0, Lorg/webrtc/ali/NetworkMonitorAutoDetect;->connectionType:Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectionType;

    .line 778
    iput-object v1, p0, Lorg/webrtc/ali/NetworkMonitorAutoDetect;->wifiSSID:Ljava/lang/String;

    .line 779
    const-string/jumbo v2, "NetworkMonitorAutoDetect"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Network connectivity changed, type is: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/webrtc/ali/NetworkMonitorAutoDetect;->connectionType:Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectionType;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    iget-object v2, p0, Lorg/webrtc/ali/NetworkMonitorAutoDetect;->observer:Lorg/webrtc/ali/NetworkMonitorAutoDetect$Observer;

    invoke-interface {v2, v0}, Lorg/webrtc/ali/NetworkMonitorAutoDetect$Observer;->onConnectionTypeChanged(Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectionType;)V

    goto :goto_0
.end method

.method public static getConnectionType(Lorg/webrtc/ali/NetworkMonitorAutoDetect$NetworkState;)Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectionType;
    .locals 1
    .param p0, "networkState"    # Lorg/webrtc/ali/NetworkMonitorAutoDetect$NetworkState;

    .prologue
    .line 714
    invoke-virtual {p0}, Lorg/webrtc/ali/NetworkMonitorAutoDetect$NetworkState;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 715
    sget-object v0, Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectionType;->CONNECTION_NONE:Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectionType;

    .line 752
    :goto_0
    return-object v0

    .line 718
    :cond_0
    invoke-virtual {p0}, Lorg/webrtc/ali/NetworkMonitorAutoDetect$NetworkState;->getNetworkType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 752
    :pswitch_0
    sget-object v0, Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectionType;->CONNECTION_UNKNOWN:Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectionType;

    goto :goto_0

    .line 720
    :pswitch_1
    sget-object v0, Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectionType;->CONNECTION_ETHERNET:Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectionType;

    goto :goto_0

    .line 722
    :pswitch_2
    sget-object v0, Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectionType;->CONNECTION_WIFI:Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectionType;

    goto :goto_0

    .line 724
    :pswitch_3
    sget-object v0, Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectionType;->CONNECTION_4G:Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectionType;

    goto :goto_0

    .line 726
    :pswitch_4
    sget-object v0, Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectionType;->CONNECTION_BLUETOOTH:Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectionType;

    goto :goto_0

    .line 729
    :pswitch_5
    invoke-virtual {p0}, Lorg/webrtc/ali/NetworkMonitorAutoDetect$NetworkState;->getNetworkSubType()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 749
    sget-object v0, Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectionType;->CONNECTION_UNKNOWN_CELLULAR:Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectionType;

    goto :goto_0

    .line 735
    :pswitch_6
    sget-object v0, Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectionType;->CONNECTION_2G:Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectionType;

    goto :goto_0

    .line 745
    :pswitch_7
    sget-object v0, Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectionType;->CONNECTION_3G:Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectionType;

    goto :goto_0

    .line 747
    :pswitch_8
    sget-object v0, Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectionType;->CONNECTION_4G:Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectionType;

    goto :goto_0

    .line 718
    .line 729
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method private getWifiSSID(Lorg/webrtc/ali/NetworkMonitorAutoDetect$NetworkState;)Ljava/lang/String;
    .locals 2
    .param p1, "networkState"    # Lorg/webrtc/ali/NetworkMonitorAutoDetect$NetworkState;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 757
    invoke-static {p1}, Lorg/webrtc/ali/NetworkMonitorAutoDetect;->getConnectionType(Lorg/webrtc/ali/NetworkMonitorAutoDetect$NetworkState;)Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectionType;

    move-result-object v0

    sget-object v1, Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectionType;->CONNECTION_WIFI:Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectionType;

    if-eq v0, v1, :cond_0

    .line 758
    const-string/jumbo v0, ""

    .line 759
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/webrtc/ali/NetworkMonitorAutoDetect;->wifiManagerDelegate:Lorg/webrtc/ali/NetworkMonitorAutoDetect$WifiManagerDelegate;

    invoke-virtual {v0}, Lorg/webrtc/ali/NetworkMonitorAutoDetect$WifiManagerDelegate;->getWifiSSID()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static networkToNetId(Landroid/net/Network;)J
    .locals 2
    .param p0, "network"    # Landroid/net/Network;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 790
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 791
    invoke-virtual {p0}, Landroid/net/Network;->getNetworkHandle()J

    move-result-wide v0

    .line 796
    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Landroid/net/Network;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    goto :goto_0
.end method

.method private registerReceiver()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 681
    iget-boolean v0, p0, Lorg/webrtc/ali/NetworkMonitorAutoDetect;->isRegistered:Z

    if-eqz v0, :cond_0

    .line 686
    :goto_0
    return-void

    .line 684
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/webrtc/ali/NetworkMonitorAutoDetect;->isRegistered:Z

    .line 685
    iget-object v0, p0, Lorg/webrtc/ali/NetworkMonitorAutoDetect;->context:Landroid/content/Context;

    iget-object v1, p0, Lorg/webrtc/ali/NetworkMonitorAutoDetect;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private unregisterReceiver()V
    .locals 1

    .prologue
    .line 692
    iget-boolean v0, p0, Lorg/webrtc/ali/NetworkMonitorAutoDetect;->isRegistered:Z

    if-nez v0, :cond_0

    .line 697
    :goto_0
    return-void

    .line 695
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/webrtc/ali/NetworkMonitorAutoDetect;->isRegistered:Z

    .line 696
    iget-object v0, p0, Lorg/webrtc/ali/NetworkMonitorAutoDetect;->context:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 665
    iget-object v0, p0, Lorg/webrtc/ali/NetworkMonitorAutoDetect;->allNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v0, :cond_0

    .line 666
    iget-object v0, p0, Lorg/webrtc/ali/NetworkMonitorAutoDetect;->connectivityManagerDelegate:Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;

    iget-object v1, p0, Lorg/webrtc/ali/NetworkMonitorAutoDetect;->allNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->releaseCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 668
    :cond_0
    iget-object v0, p0, Lorg/webrtc/ali/NetworkMonitorAutoDetect;->mobileNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v0, :cond_1

    .line 669
    iget-object v0, p0, Lorg/webrtc/ali/NetworkMonitorAutoDetect;->connectivityManagerDelegate:Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;

    iget-object v1, p0, Lorg/webrtc/ali/NetworkMonitorAutoDetect;->mobileNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->releaseCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 671
    :cond_1
    iget-object v0, p0, Lorg/webrtc/ali/NetworkMonitorAutoDetect;->wifiDirectManagerDelegate:Lorg/webrtc/ali/NetworkMonitorAutoDetect$WifiDirectManagerDelegate;

    if-eqz v0, :cond_2

    .line 672
    iget-object v0, p0, Lorg/webrtc/ali/NetworkMonitorAutoDetect;->wifiDirectManagerDelegate:Lorg/webrtc/ali/NetworkMonitorAutoDetect$WifiDirectManagerDelegate;

    invoke-virtual {v0}, Lorg/webrtc/ali/NetworkMonitorAutoDetect$WifiDirectManagerDelegate;->release()V

    .line 674
    :cond_2
    invoke-direct {p0}, Lorg/webrtc/ali/NetworkMonitorAutoDetect;->unregisterReceiver()V

    .line 675
    return-void
.end method

.method getActiveNetworkList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/webrtc/ali/NetworkMonitorAutoDetect$NetworkInformation;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 656
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/webrtc/ali/NetworkMonitorAutoDetect;->connectivityManagerDelegate:Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;

    .line 657
    invoke-virtual {v1}, Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->getActiveNetworkList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 658
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/webrtc/ali/NetworkMonitorAutoDetect$NetworkInformation;>;"
    iget-object v1, p0, Lorg/webrtc/ali/NetworkMonitorAutoDetect;->wifiDirectManagerDelegate:Lorg/webrtc/ali/NetworkMonitorAutoDetect$WifiDirectManagerDelegate;

    if-eqz v1, :cond_0

    .line 659
    iget-object v1, p0, Lorg/webrtc/ali/NetworkMonitorAutoDetect;->wifiDirectManagerDelegate:Lorg/webrtc/ali/NetworkMonitorAutoDetect$WifiDirectManagerDelegate;

    invoke-virtual {v1}, Lorg/webrtc/ali/NetworkMonitorAutoDetect$WifiDirectManagerDelegate;->getActiveNetworkList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 661
    :cond_0
    return-object v0
.end method

.method public getCurrentNetworkState()Lorg/webrtc/ali/NetworkMonitorAutoDetect$NetworkState;
    .locals 1

    .prologue
    .line 700
    iget-object v0, p0, Lorg/webrtc/ali/NetworkMonitorAutoDetect;->connectivityManagerDelegate:Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;

    invoke-virtual {v0}, Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->getNetworkState()Lorg/webrtc/ali/NetworkMonitorAutoDetect$NetworkState;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultNetId()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 710
    iget-object v0, p0, Lorg/webrtc/ali/NetworkMonitorAutoDetect;->connectivityManagerDelegate:Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;

    invoke-virtual {v0}, Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->getDefaultNetId()J

    move-result-wide v0

    return-wide v0
.end method

.method isReceiverRegisteredForTesting()Z
    .locals 1

    .prologue
    .line 652
    iget-boolean v0, p0, Lorg/webrtc/ali/NetworkMonitorAutoDetect;->isRegistered:Z

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 765
    invoke-virtual {p0}, Lorg/webrtc/ali/NetworkMonitorAutoDetect;->getCurrentNetworkState()Lorg/webrtc/ali/NetworkMonitorAutoDetect$NetworkState;

    move-result-object v0

    .line 766
    .local v0, "networkState":Lorg/webrtc/ali/NetworkMonitorAutoDetect$NetworkState;
    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 767
    invoke-direct {p0, v0}, Lorg/webrtc/ali/NetworkMonitorAutoDetect;->connectionTypeChanged(Lorg/webrtc/ali/NetworkMonitorAutoDetect$NetworkState;)V

    .line 769
    :cond_0
    return-void
.end method

.method setConnectivityManagerDelegateForTests(Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;)V
    .locals 0
    .param p1, "delegate"    # Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;

    .prologue
    .line 637
    iput-object p1, p0, Lorg/webrtc/ali/NetworkMonitorAutoDetect;->connectivityManagerDelegate:Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;

    .line 638
    return-void
.end method

.method setWifiManagerDelegateForTests(Lorg/webrtc/ali/NetworkMonitorAutoDetect$WifiManagerDelegate;)V
    .locals 0
    .param p1, "delegate"    # Lorg/webrtc/ali/NetworkMonitorAutoDetect$WifiManagerDelegate;

    .prologue
    .line 644
    iput-object p1, p0, Lorg/webrtc/ali/NetworkMonitorAutoDetect;->wifiManagerDelegate:Lorg/webrtc/ali/NetworkMonitorAutoDetect$WifiManagerDelegate;

    .line 645
    return-void
.end method

.method public supportNetworkCallback()Z
    .locals 1

    .prologue
    .line 630
    iget-object v0, p0, Lorg/webrtc/ali/NetworkMonitorAutoDetect;->connectivityManagerDelegate:Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;

    invoke-virtual {v0}, Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->supportNetworkCallback()Z

    move-result v0

    return v0
.end method
