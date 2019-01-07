.class public Lorg/webrtc/utils/NetworkMonitorAutoDetect;
.super Landroid/content/BroadcastReceiver;
.source "NetworkMonitorAutoDetect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/utils/NetworkMonitorAutoDetect$Observer;,
        Lorg/webrtc/utils/NetworkMonitorAutoDetect$WifiDirectManagerDelegate;,
        Lorg/webrtc/utils/NetworkMonitorAutoDetect$WifiManagerDelegate;,
        Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;,
        Lorg/webrtc/utils/NetworkMonitorAutoDetect$SimpleNetworkCallback;,
        Lorg/webrtc/utils/NetworkMonitorAutoDetect$NetworkState;,
        Lorg/webrtc/utils/NetworkMonitorAutoDetect$NetworkInformation;,
        Lorg/webrtc/utils/NetworkMonitorAutoDetect$IPAddress;,
        Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;
    }
.end annotation


# static fields
.field static final INVALID_NET_ID:J = -0x1L

.field private static final TAG:Ljava/lang/String; = "NetworkMonitorAutoDetect"


# instance fields
.field private final allNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private connectionType:Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;

.field private connectivityManagerDelegate:Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;

.field private final context:Landroid/content/Context;

.field private final intentFilter:Landroid/content/IntentFilter;

.field private isRegistered:Z

.field private final mobileNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private final observer:Lorg/webrtc/utils/NetworkMonitorAutoDetect$Observer;

.field private wifiDirectManagerDelegate:Lorg/webrtc/utils/NetworkMonitorAutoDetect$WifiDirectManagerDelegate;

.field private wifiManagerDelegate:Lorg/webrtc/utils/NetworkMonitorAutoDetect$WifiManagerDelegate;

.field private wifiSSID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/webrtc/utils/NetworkMonitorAutoDetect$Observer;Landroid/content/Context;)V
    .locals 5
    .param p1, "observer"    # Lorg/webrtc/utils/NetworkMonitorAutoDetect$Observer;
    .param p2, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 535
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 536
    iput-object p1, p0, Lorg/webrtc/utils/NetworkMonitorAutoDetect;->observer:Lorg/webrtc/utils/NetworkMonitorAutoDetect$Observer;

    .line 537
    iput-object p2, p0, Lorg/webrtc/utils/NetworkMonitorAutoDetect;->context:Landroid/content/Context;

    .line 538
    new-instance v2, Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;

    invoke-direct {v2, p2}, Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/webrtc/utils/NetworkMonitorAutoDetect;->connectivityManagerDelegate:Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;

    .line 539
    new-instance v2, Lorg/webrtc/utils/NetworkMonitorAutoDetect$WifiManagerDelegate;

    invoke-direct {v2, p2}, Lorg/webrtc/utils/NetworkMonitorAutoDetect$WifiManagerDelegate;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/webrtc/utils/NetworkMonitorAutoDetect;->wifiManagerDelegate:Lorg/webrtc/utils/NetworkMonitorAutoDetect$WifiManagerDelegate;

    .line 541
    iget-object v2, p0, Lorg/webrtc/utils/NetworkMonitorAutoDetect;->connectivityManagerDelegate:Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;

    invoke-virtual {v2}, Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->getNetworkState()Lorg/webrtc/utils/NetworkMonitorAutoDetect$NetworkState;

    move-result-object v0

    .line 542
    .local v0, "networkState":Lorg/webrtc/utils/NetworkMonitorAutoDetect$NetworkState;
    invoke-static {v0}, Lorg/webrtc/utils/NetworkMonitorAutoDetect;->getConnectionType(Lorg/webrtc/utils/NetworkMonitorAutoDetect$NetworkState;)Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;

    move-result-object v2

    iput-object v2, p0, Lorg/webrtc/utils/NetworkMonitorAutoDetect;->connectionType:Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;

    .line 543
    invoke-direct {p0, v0}, Lorg/webrtc/utils/NetworkMonitorAutoDetect;->getWifiSSID(Lorg/webrtc/utils/NetworkMonitorAutoDetect$NetworkState;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/webrtc/utils/NetworkMonitorAutoDetect;->wifiSSID:Ljava/lang/String;

    .line 544
    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lorg/webrtc/utils/NetworkMonitorAutoDetect;->intentFilter:Landroid/content/IntentFilter;

    .line 546
    const-string/jumbo v2, "IncludeWifiDirect"

    invoke-static {v2}, Lorg/webrtc/ali/PeerConnectionFactory;->fieldTrialsFindFullName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Enabled"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 547
    new-instance v2, Lorg/webrtc/utils/NetworkMonitorAutoDetect$WifiDirectManagerDelegate;

    invoke-direct {v2, p1, p2}, Lorg/webrtc/utils/NetworkMonitorAutoDetect$WifiDirectManagerDelegate;-><init>(Lorg/webrtc/utils/NetworkMonitorAutoDetect$Observer;Landroid/content/Context;)V

    iput-object v2, p0, Lorg/webrtc/utils/NetworkMonitorAutoDetect;->wifiDirectManagerDelegate:Lorg/webrtc/utils/NetworkMonitorAutoDetect$WifiDirectManagerDelegate;

    .line 550
    :cond_0
    invoke-direct {p0}, Lorg/webrtc/utils/NetworkMonitorAutoDetect;->registerReceiver()V

    .line 551
    iget-object v2, p0, Lorg/webrtc/utils/NetworkMonitorAutoDetect;->connectivityManagerDelegate:Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;

    invoke-virtual {v2}, Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->supportNetworkCallback()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 554
    new-instance v1, Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-direct {v1}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 556
    .local v1, "tempNetworkCallback":Landroid/net/ConnectivityManager$NetworkCallback;
    :try_start_0
    iget-object v2, p0, Lorg/webrtc/utils/NetworkMonitorAutoDetect;->connectivityManagerDelegate:Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;

    invoke-virtual {v2, v1}, Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->requestMobileNetwork(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 561
    :goto_0
    iput-object v1, p0, Lorg/webrtc/utils/NetworkMonitorAutoDetect;->mobileNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 562
    new-instance v2, Lorg/webrtc/utils/NetworkMonitorAutoDetect$SimpleNetworkCallback;

    invoke-direct {v2, p0, v4}, Lorg/webrtc/utils/NetworkMonitorAutoDetect$SimpleNetworkCallback;-><init>(Lorg/webrtc/utils/NetworkMonitorAutoDetect;Lorg/webrtc/utils/NetworkMonitorAutoDetect$1;)V

    iput-object v2, p0, Lorg/webrtc/utils/NetworkMonitorAutoDetect;->allNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 563
    iget-object v2, p0, Lorg/webrtc/utils/NetworkMonitorAutoDetect;->connectivityManagerDelegate:Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;

    iget-object v3, p0, Lorg/webrtc/utils/NetworkMonitorAutoDetect;->allNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v2, v3}, Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->registerNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 568
    .end local v1    # "tempNetworkCallback":Landroid/net/ConnectivityManager$NetworkCallback;
    :goto_1
    return-void

    .line 558
    .restart local v1    # "tempNetworkCallback":Landroid/net/ConnectivityManager$NetworkCallback;
    :catch_0
    move-exception v2

    const-string/jumbo v2, "NetworkMonitorAutoDetect"

    const-string/jumbo v3, "Unable to obtain permission to request a cellular network."

    invoke-static {v2, v3}, Lorg/webrtc/ali/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    const/4 v1, 0x0

    goto :goto_0

    .line 565
    .end local v1    # "tempNetworkCallback":Landroid/net/ConnectivityManager$NetworkCallback;
    :cond_1
    iput-object v4, p0, Lorg/webrtc/utils/NetworkMonitorAutoDetect;->mobileNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 566
    iput-object v4, p0, Lorg/webrtc/utils/NetworkMonitorAutoDetect;->allNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    goto :goto_1
.end method

.method static synthetic access$000(Landroid/net/Network;)J
    .locals 2
    .param p0, "x0"    # Landroid/net/Network;

    .prologue
    .line 51
    invoke-static {p0}, Lorg/webrtc/utils/NetworkMonitorAutoDetect;->networkToNetId(Landroid/net/Network;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$100(Lorg/webrtc/utils/NetworkMonitorAutoDetect;)Lorg/webrtc/utils/NetworkMonitorAutoDetect$Observer;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/utils/NetworkMonitorAutoDetect;

    .prologue
    .line 51
    iget-object v0, p0, Lorg/webrtc/utils/NetworkMonitorAutoDetect;->observer:Lorg/webrtc/utils/NetworkMonitorAutoDetect$Observer;

    return-object v0
.end method

.method static synthetic access$200(Lorg/webrtc/utils/NetworkMonitorAutoDetect;)Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/utils/NetworkMonitorAutoDetect;

    .prologue
    .line 51
    iget-object v0, p0, Lorg/webrtc/utils/NetworkMonitorAutoDetect;->connectivityManagerDelegate:Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;

    return-object v0
.end method

.method private connectionTypeChanged(Lorg/webrtc/utils/NetworkMonitorAutoDetect$NetworkState;)V
    .locals 5
    .param p1, "networkState"    # Lorg/webrtc/utils/NetworkMonitorAutoDetect$NetworkState;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 717
    invoke-static {p1}, Lorg/webrtc/utils/NetworkMonitorAutoDetect;->getConnectionType(Lorg/webrtc/utils/NetworkMonitorAutoDetect$NetworkState;)Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;

    move-result-object v0

    .line 718
    .local v0, "newConnectionType":Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;
    invoke-direct {p0, p1}, Lorg/webrtc/utils/NetworkMonitorAutoDetect;->getWifiSSID(Lorg/webrtc/utils/NetworkMonitorAutoDetect$NetworkState;)Ljava/lang/String;

    move-result-object v1

    .line 719
    .local v1, "newWifiSSID":Ljava/lang/String;
    iget-object v2, p0, Lorg/webrtc/utils/NetworkMonitorAutoDetect;->connectionType:Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;

    if-ne v0, v2, :cond_0

    iget-object v2, p0, Lorg/webrtc/utils/NetworkMonitorAutoDetect;->wifiSSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 726
    :goto_0
    return-void

    .line 722
    :cond_0
    iput-object v0, p0, Lorg/webrtc/utils/NetworkMonitorAutoDetect;->connectionType:Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;

    .line 723
    iput-object v1, p0, Lorg/webrtc/utils/NetworkMonitorAutoDetect;->wifiSSID:Ljava/lang/String;

    .line 724
    const-string/jumbo v2, "NetworkMonitorAutoDetect"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Network connectivity changed, type is: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/webrtc/utils/NetworkMonitorAutoDetect;->connectionType:Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    iget-object v2, p0, Lorg/webrtc/utils/NetworkMonitorAutoDetect;->observer:Lorg/webrtc/utils/NetworkMonitorAutoDetect$Observer;

    invoke-interface {v2, v0}, Lorg/webrtc/utils/NetworkMonitorAutoDetect$Observer;->onConnectionTypeChanged(Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;)V

    goto :goto_0
.end method

.method public static getConnectionType(Lorg/webrtc/utils/NetworkMonitorAutoDetect$NetworkState;)Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;
    .locals 1
    .param p0, "networkState"    # Lorg/webrtc/utils/NetworkMonitorAutoDetect$NetworkState;

    .prologue
    .line 659
    invoke-virtual {p0}, Lorg/webrtc/utils/NetworkMonitorAutoDetect$NetworkState;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 660
    sget-object v0, Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;->CONNECTION_NONE:Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;

    .line 697
    :goto_0
    return-object v0

    .line 663
    :cond_0
    invoke-virtual {p0}, Lorg/webrtc/utils/NetworkMonitorAutoDetect$NetworkState;->getNetworkType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 697
    :pswitch_0
    sget-object v0, Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;->CONNECTION_UNKNOWN:Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;

    goto :goto_0

    .line 665
    :pswitch_1
    sget-object v0, Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;->CONNECTION_ETHERNET:Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;

    goto :goto_0

    .line 667
    :pswitch_2
    sget-object v0, Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;->CONNECTION_WIFI:Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;

    goto :goto_0

    .line 669
    :pswitch_3
    sget-object v0, Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;->CONNECTION_4G:Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;

    goto :goto_0

    .line 671
    :pswitch_4
    sget-object v0, Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;->CONNECTION_BLUETOOTH:Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;

    goto :goto_0

    .line 674
    :pswitch_5
    invoke-virtual {p0}, Lorg/webrtc/utils/NetworkMonitorAutoDetect$NetworkState;->getNetworkSubType()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 694
    sget-object v0, Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;->CONNECTION_UNKNOWN_CELLULAR:Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;

    goto :goto_0

    .line 680
    :pswitch_6
    sget-object v0, Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;->CONNECTION_2G:Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;

    goto :goto_0

    .line 690
    :pswitch_7
    sget-object v0, Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;->CONNECTION_3G:Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;

    goto :goto_0

    .line 692
    :pswitch_8
    sget-object v0, Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;->CONNECTION_4G:Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;

    goto :goto_0

    .line 663
    .line 674
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

.method private getWifiSSID(Lorg/webrtc/utils/NetworkMonitorAutoDetect$NetworkState;)Ljava/lang/String;
    .locals 2
    .param p1, "networkState"    # Lorg/webrtc/utils/NetworkMonitorAutoDetect$NetworkState;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 702
    invoke-static {p1}, Lorg/webrtc/utils/NetworkMonitorAutoDetect;->getConnectionType(Lorg/webrtc/utils/NetworkMonitorAutoDetect$NetworkState;)Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;

    move-result-object v0

    sget-object v1, Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;->CONNECTION_WIFI:Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;

    if-eq v0, v1, :cond_0

    .line 703
    const-string/jumbo v0, ""

    .line 704
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/webrtc/utils/NetworkMonitorAutoDetect;->wifiManagerDelegate:Lorg/webrtc/utils/NetworkMonitorAutoDetect$WifiManagerDelegate;

    invoke-virtual {v0}, Lorg/webrtc/utils/NetworkMonitorAutoDetect$WifiManagerDelegate;->getWifiSSID()Ljava/lang/String;

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
    .line 735
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 736
    invoke-virtual {p0}, Landroid/net/Network;->getNetworkHandle()J

    move-result-wide v0

    .line 741
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
    .line 626
    iget-boolean v0, p0, Lorg/webrtc/utils/NetworkMonitorAutoDetect;->isRegistered:Z

    if-eqz v0, :cond_0

    .line 631
    :goto_0
    return-void

    .line 629
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/webrtc/utils/NetworkMonitorAutoDetect;->isRegistered:Z

    .line 630
    iget-object v0, p0, Lorg/webrtc/utils/NetworkMonitorAutoDetect;->context:Landroid/content/Context;

    iget-object v1, p0, Lorg/webrtc/utils/NetworkMonitorAutoDetect;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private unregisterReceiver()V
    .locals 1

    .prologue
    .line 637
    iget-boolean v0, p0, Lorg/webrtc/utils/NetworkMonitorAutoDetect;->isRegistered:Z

    if-nez v0, :cond_0

    .line 642
    :goto_0
    return-void

    .line 640
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/webrtc/utils/NetworkMonitorAutoDetect;->isRegistered:Z

    .line 641
    iget-object v0, p0, Lorg/webrtc/utils/NetworkMonitorAutoDetect;->context:Landroid/content/Context;

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
    .line 610
    iget-object v0, p0, Lorg/webrtc/utils/NetworkMonitorAutoDetect;->allNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v0, :cond_0

    .line 611
    iget-object v0, p0, Lorg/webrtc/utils/NetworkMonitorAutoDetect;->connectivityManagerDelegate:Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;

    iget-object v1, p0, Lorg/webrtc/utils/NetworkMonitorAutoDetect;->allNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->releaseCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 613
    :cond_0
    iget-object v0, p0, Lorg/webrtc/utils/NetworkMonitorAutoDetect;->mobileNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v0, :cond_1

    .line 614
    iget-object v0, p0, Lorg/webrtc/utils/NetworkMonitorAutoDetect;->connectivityManagerDelegate:Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;

    iget-object v1, p0, Lorg/webrtc/utils/NetworkMonitorAutoDetect;->mobileNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->releaseCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 616
    :cond_1
    iget-object v0, p0, Lorg/webrtc/utils/NetworkMonitorAutoDetect;->wifiDirectManagerDelegate:Lorg/webrtc/utils/NetworkMonitorAutoDetect$WifiDirectManagerDelegate;

    if-eqz v0, :cond_2

    .line 617
    iget-object v0, p0, Lorg/webrtc/utils/NetworkMonitorAutoDetect;->wifiDirectManagerDelegate:Lorg/webrtc/utils/NetworkMonitorAutoDetect$WifiDirectManagerDelegate;

    invoke-virtual {v0}, Lorg/webrtc/utils/NetworkMonitorAutoDetect$WifiDirectManagerDelegate;->release()V

    .line 619
    :cond_2
    invoke-direct {p0}, Lorg/webrtc/utils/NetworkMonitorAutoDetect;->unregisterReceiver()V

    .line 620
    return-void
.end method

.method getActiveNetworkList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/webrtc/utils/NetworkMonitorAutoDetect$NetworkInformation;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 597
    const/4 v1, 0x0

    .line 598
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/webrtc/utils/NetworkMonitorAutoDetect$NetworkInformation;>;"
    iget-object v2, p0, Lorg/webrtc/utils/NetworkMonitorAutoDetect;->connectivityManagerDelegate:Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;

    invoke-virtual {v2}, Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->getActiveNetworkList()Ljava/util/List;

    move-result-object v0

    .line 599
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lorg/webrtc/utils/NetworkMonitorAutoDetect$NetworkInformation;>;"
    if-eqz v0, :cond_0

    .line 600
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/webrtc/utils/NetworkMonitorAutoDetect$NetworkInformation;>;"
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 601
    .restart local v1    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/webrtc/utils/NetworkMonitorAutoDetect$NetworkInformation;>;"
    iget-object v2, p0, Lorg/webrtc/utils/NetworkMonitorAutoDetect;->wifiDirectManagerDelegate:Lorg/webrtc/utils/NetworkMonitorAutoDetect$WifiDirectManagerDelegate;

    if-eqz v2, :cond_0

    .line 602
    iget-object v2, p0, Lorg/webrtc/utils/NetworkMonitorAutoDetect;->wifiDirectManagerDelegate:Lorg/webrtc/utils/NetworkMonitorAutoDetect$WifiDirectManagerDelegate;

    invoke-virtual {v2}, Lorg/webrtc/utils/NetworkMonitorAutoDetect$WifiDirectManagerDelegate;->getActiveNetworkList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 606
    :cond_0
    return-object v1
.end method

.method public getCurrentNetworkState()Lorg/webrtc/utils/NetworkMonitorAutoDetect$NetworkState;
    .locals 1

    .prologue
    .line 645
    iget-object v0, p0, Lorg/webrtc/utils/NetworkMonitorAutoDetect;->connectivityManagerDelegate:Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;

    invoke-virtual {v0}, Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->getNetworkState()Lorg/webrtc/utils/NetworkMonitorAutoDetect$NetworkState;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultNetId()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 655
    iget-object v0, p0, Lorg/webrtc/utils/NetworkMonitorAutoDetect;->connectivityManagerDelegate:Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;

    invoke-virtual {v0}, Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->getDefaultNetId()J

    move-result-wide v0

    return-wide v0
.end method

.method isReceiverRegisteredForTesting()Z
    .locals 1

    .prologue
    .line 593
    iget-boolean v0, p0, Lorg/webrtc/utils/NetworkMonitorAutoDetect;->isRegistered:Z

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
    .line 710
    invoke-virtual {p0}, Lorg/webrtc/utils/NetworkMonitorAutoDetect;->getCurrentNetworkState()Lorg/webrtc/utils/NetworkMonitorAutoDetect$NetworkState;

    move-result-object v0

    .line 711
    .local v0, "networkState":Lorg/webrtc/utils/NetworkMonitorAutoDetect$NetworkState;
    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 712
    invoke-direct {p0, v0}, Lorg/webrtc/utils/NetworkMonitorAutoDetect;->connectionTypeChanged(Lorg/webrtc/utils/NetworkMonitorAutoDetect$NetworkState;)V

    .line 714
    :cond_0
    return-void
.end method

.method setConnectivityManagerDelegateForTests(Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;)V
    .locals 0
    .param p1, "delegate"    # Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;

    .prologue
    .line 578
    iput-object p1, p0, Lorg/webrtc/utils/NetworkMonitorAutoDetect;->connectivityManagerDelegate:Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;

    .line 579
    return-void
.end method

.method setWifiManagerDelegateForTests(Lorg/webrtc/utils/NetworkMonitorAutoDetect$WifiManagerDelegate;)V
    .locals 0
    .param p1, "delegate"    # Lorg/webrtc/utils/NetworkMonitorAutoDetect$WifiManagerDelegate;

    .prologue
    .line 585
    iput-object p1, p0, Lorg/webrtc/utils/NetworkMonitorAutoDetect;->wifiManagerDelegate:Lorg/webrtc/utils/NetworkMonitorAutoDetect$WifiManagerDelegate;

    .line 586
    return-void
.end method

.method public supportNetworkCallback()Z
    .locals 1

    .prologue
    .line 571
    iget-object v0, p0, Lorg/webrtc/utils/NetworkMonitorAutoDetect;->connectivityManagerDelegate:Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;

    invoke-virtual {v0}, Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->supportNetworkCallback()Z

    move-result v0

    return v0
.end method
