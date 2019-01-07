.class Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;
.super Ljava/lang/Object;
.source "NetworkMonitorAutoDetect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/ali/NetworkMonitorAutoDetect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ConnectivityManagerDelegate"
.end annotation


# instance fields
.field private final connectivityManager:Landroid/net/ConnectivityManager;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 201
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    const-string/jumbo v0, "connectivity"

    .line 193
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 194
    return-void
.end method

.method static synthetic access$300(Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;Landroid/net/Network;)Lorg/webrtc/ali/NetworkMonitorAutoDetect$NetworkInformation;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;
    .param p1, "x1"    # Landroid/net/Network;

    .prologue
    .line 182
    invoke-direct {p0, p1}, Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->networkToInfo(Landroid/net/Network;)Lorg/webrtc/ali/NetworkMonitorAutoDetect$NetworkInformation;

    move-result-object v0

    return-object v0
.end method

.method private networkToInfo(Landroid/net/Network;)Lorg/webrtc/ali/NetworkMonitorAutoDetect$NetworkInformation;
    .locals 8
    .param p1, "network"    # Landroid/net/Network;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 328
    iget-object v2, p0, Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, p1}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v0

    .line 331
    .local v0, "linkProperties":Landroid/net/LinkProperties;
    if-nez v0, :cond_0

    .line 332
    const-string/jumbo v2, "NetworkMonitorAutoDetect"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Detected unknown network: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Network;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lorg/webrtc/ali/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    :goto_0
    return-object v1

    .line 335
    :cond_0
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 336
    const-string/jumbo v2, "NetworkMonitorAutoDetect"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Null interface name for network "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Network;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lorg/webrtc/ali/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 340
    :cond_1
    invoke-virtual {p0, p1}, Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->getNetworkState(Landroid/net/Network;)Lorg/webrtc/ali/NetworkMonitorAutoDetect$NetworkState;

    move-result-object v7

    .line 341
    .local v7, "networkState":Lorg/webrtc/ali/NetworkMonitorAutoDetect$NetworkState;
    invoke-static {v7}, Lorg/webrtc/ali/NetworkMonitorAutoDetect$NetworkState;->access$400(Lorg/webrtc/ali/NetworkMonitorAutoDetect$NetworkState;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v7}, Lorg/webrtc/ali/NetworkMonitorAutoDetect$NetworkState;->getNetworkType()I

    move-result v2

    const/16 v4, 0x11

    if-ne v2, v4, :cond_2

    .line 346
    invoke-virtual {p0}, Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->getNetworkState()Lorg/webrtc/ali/NetworkMonitorAutoDetect$NetworkState;

    move-result-object v7

    .line 348
    :cond_2
    invoke-static {v7}, Lorg/webrtc/ali/NetworkMonitorAutoDetect;->getConnectionType(Lorg/webrtc/ali/NetworkMonitorAutoDetect$NetworkState;)Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectionType;

    move-result-object v3

    .line 349
    .local v3, "connectionType":Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectionType;
    sget-object v2, Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectionType;->CONNECTION_NONE:Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectionType;

    if-ne v3, v2, :cond_3

    .line 354
    const-string/jumbo v2, "NetworkMonitorAutoDetect"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Network "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Network;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " is disconnected"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 362
    :cond_3
    sget-object v2, Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectionType;->CONNECTION_UNKNOWN:Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectionType;

    if-eq v3, v2, :cond_4

    sget-object v2, Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectionType;->CONNECTION_UNKNOWN_CELLULAR:Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectionType;

    if-ne v3, v2, :cond_5

    .line 364
    :cond_4
    const-string/jumbo v2, "NetworkMonitorAutoDetect"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Network "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Network;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " connection type is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " because it has type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 365
    invoke-virtual {v7}, Lorg/webrtc/ali/NetworkMonitorAutoDetect$NetworkState;->getNetworkType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " and subtype "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 366
    invoke-virtual {v7}, Lorg/webrtc/ali/NetworkMonitorAutoDetect$NetworkState;->getNetworkSubType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 364
    invoke-static {v2, v4}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    :cond_5
    new-instance v1, Lorg/webrtc/ali/NetworkMonitorAutoDetect$NetworkInformation;

    .line 370
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    .line 371
    invoke-static {p1}, Lorg/webrtc/ali/NetworkMonitorAutoDetect;->access$000(Landroid/net/Network;)J

    move-result-wide v4

    invoke-virtual {p0, v0}, Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->getIPAddresses(Landroid/net/LinkProperties;)[Lorg/webrtc/ali/NetworkMonitorAutoDetect$IPAddress;

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lorg/webrtc/ali/NetworkMonitorAutoDetect$NetworkInformation;-><init>(Ljava/lang/String;Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectionType;J[Lorg/webrtc/ali/NetworkMonitorAutoDetect$IPAddress;)V

    .line 372
    .local v1, "networkInformation":Lorg/webrtc/ali/NetworkMonitorAutoDetect$NetworkInformation;
    goto/16 :goto_0
.end method


# virtual methods
.method getActiveNetworkList()Ljava/util/List;
    .locals 6
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

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 256
    invoke-virtual {p0}, Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->supportNetworkCallback()Z

    move-result v3

    if-nez v3, :cond_1

    .line 257
    const/4 v1, 0x0

    .line 266
    :cond_0
    return-object v1

    .line 259
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 260
    .local v1, "netInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/webrtc/ali/NetworkMonitorAutoDetect$NetworkInformation;>;"
    invoke-virtual {p0}, Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->getAllNetworks()[Landroid/net/Network;

    move-result-object v4

    array-length v5, v4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v2, v4, v3

    .line 261
    .local v2, "network":Landroid/net/Network;
    invoke-direct {p0, v2}, Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->networkToInfo(Landroid/net/Network;)Lorg/webrtc/ali/NetworkMonitorAutoDetect$NetworkInformation;

    move-result-object v0

    .line 262
    .local v0, "info":Lorg/webrtc/ali/NetworkMonitorAutoDetect$NetworkInformation;
    if-eqz v0, :cond_2

    .line 263
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method getAllNetworks()[Landroid/net/Network;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 249
    iget-object v0, p0, Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->connectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 250
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/net/Network;

    .line 252
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v0

    goto :goto_0
.end method

.method getDefaultNetId()J
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const-wide/16 v6, -0x1

    .line 279
    invoke-virtual {p0}, Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->supportNetworkCallback()Z

    move-result v8

    if-nez v8, :cond_1

    move-wide v0, v6

    .line 323
    :cond_0
    :goto_0
    return-wide v0

    .line 290
    :cond_1
    iget-object v8, p0, Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v8}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 291
    .local v2, "defaultNetworkInfo":Landroid/net/NetworkInfo;
    if-nez v2, :cond_2

    move-wide v0, v6

    .line 292
    goto :goto_0

    .line 294
    :cond_2
    invoke-virtual {p0}, Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->getAllNetworks()[Landroid/net/Network;

    move-result-object v5

    .line 295
    .local v5, "networks":[Landroid/net/Network;
    const-wide/16 v0, -0x1

    .line 296
    .local v0, "defaultNetId":J
    array-length v9, v5

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v9, :cond_0

    aget-object v3, v5, v8

    .line 297
    .local v3, "network":Landroid/net/Network;
    invoke-virtual {p0, v3}, Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->hasInternetCapability(Landroid/net/Network;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 300
    iget-object v10, p0, Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v10, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v4

    .line 301
    .local v4, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v10

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v11

    if-ne v10, v11, :cond_4

    .line 316
    cmp-long v10, v0, v6

    if-eqz v10, :cond_3

    .line 317
    new-instance v6, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "Multiple connected networks of same type are not supported."

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 320
    :cond_3
    invoke-static {v3}, Lorg/webrtc/ali/NetworkMonitorAutoDetect;->access$000(Landroid/net/Network;)J

    move-result-wide v0

    .line 296
    .end local v4    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_1
.end method

.method getIPAddresses(Landroid/net/LinkProperties;)[Lorg/webrtc/ali/NetworkMonitorAutoDetect$IPAddress;
    .locals 6
    .param p1, "linkProperties"    # Landroid/net/LinkProperties;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 412
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v1, v3, [Lorg/webrtc/ali/NetworkMonitorAutoDetect$IPAddress;

    .line 413
    .local v1, "ipAddresses":[Lorg/webrtc/ali/NetworkMonitorAutoDetect$IPAddress;
    const/4 v0, 0x0

    .line 414
    .local v0, "i":I
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkAddress;

    .line 415
    .local v2, "linkAddress":Landroid/net/LinkAddress;
    new-instance v4, Lorg/webrtc/ali/NetworkMonitorAutoDetect$IPAddress;

    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/webrtc/ali/NetworkMonitorAutoDetect$IPAddress;-><init>([B)V

    aput-object v4, v1, v0

    .line 416
    add-int/lit8 v0, v0, 0x1

    .line 417
    goto :goto_0

    .line 418
    .end local v2    # "linkAddress":Landroid/net/LinkAddress;
    :cond_0
    return-object v1
.end method

.method getNetworkState()Lorg/webrtc/ali/NetworkMonitorAutoDetect$NetworkState;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, -0x1

    .line 210
    iget-object v0, p0, Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->connectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 211
    new-instance v0, Lorg/webrtc/ali/NetworkMonitorAutoDetect$NetworkState;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/webrtc/ali/NetworkMonitorAutoDetect$NetworkState;-><init>(ZII)V

    .line 213
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->getNetworkState(Landroid/net/NetworkInfo;)Lorg/webrtc/ali/NetworkMonitorAutoDetect$NetworkState;

    move-result-object v0

    goto :goto_0
.end method

.method getNetworkState(Landroid/net/Network;)Lorg/webrtc/ali/NetworkMonitorAutoDetect$NetworkState;
    .locals 3
    .param p1, "network"    # Landroid/net/Network;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, -0x1

    .line 224
    iget-object v0, p0, Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->connectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 225
    new-instance v0, Lorg/webrtc/ali/NetworkMonitorAutoDetect$NetworkState;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/webrtc/ali/NetworkMonitorAutoDetect$NetworkState;-><init>(ZII)V

    .line 227
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->getNetworkState(Landroid/net/NetworkInfo;)Lorg/webrtc/ali/NetworkMonitorAutoDetect$NetworkState;

    move-result-object v0

    goto :goto_0
.end method

.method getNetworkState(Landroid/net/NetworkInfo;)Lorg/webrtc/ali/NetworkMonitorAutoDetect$NetworkState;
    .locals 4
    .param p1, "networkInfo"    # Landroid/net/NetworkInfo;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, -0x1

    .line 235
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 236
    :cond_0
    new-instance v0, Lorg/webrtc/ali/NetworkMonitorAutoDetect$NetworkState;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/webrtc/ali/NetworkMonitorAutoDetect$NetworkState;-><init>(ZII)V

    .line 238
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lorg/webrtc/ali/NetworkMonitorAutoDetect$NetworkState;

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lorg/webrtc/ali/NetworkMonitorAutoDetect$NetworkState;-><init>(ZII)V

    goto :goto_0
.end method

.method hasInternetCapability(Landroid/net/Network;)Z
    .locals 3
    .param p1, "network"    # Landroid/net/Network;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 383
    iget-object v2, p0, Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->connectivityManager:Landroid/net/ConnectivityManager;

    if-nez v2, :cond_1

    .line 388
    :cond_0
    :goto_0
    return v1

    .line 386
    :cond_1
    iget-object v2, p0, Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    .line 387
    .local v0, "capabilities":Landroid/net/NetworkCapabilities;
    if-eqz v0, :cond_0

    const/16 v2, 0xc

    .line 388
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public registerNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    .locals 3
    .param p1, "networkCallback"    # Landroid/net/ConnectivityManager$NetworkCallback;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 394
    iget-object v0, p0, Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->connectivityManager:Landroid/net/ConnectivityManager;

    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v2, 0xc

    .line 396
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    .line 397
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    .line 394
    invoke-virtual {v0, v1, p1}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 399
    return-void
.end method

.method public releaseCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    .locals 2
    .param p1, "networkCallback"    # Landroid/net/ConnectivityManager$NetworkCallback;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 423
    invoke-virtual {p0}, Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->supportNetworkCallback()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    const-string/jumbo v0, "NetworkMonitorAutoDetect"

    const-string/jumbo v1, "Unregister network callback"

    invoke-static {v0, v1}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    iget-object v0, p0, Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 427
    :cond_0
    return-void
.end method

.method public requestMobileNetwork(Landroid/net/ConnectivityManager$NetworkCallback;)V
    .locals 3
    .param p1, "networkCallback"    # Landroid/net/ConnectivityManager$NetworkCallback;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 404
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 405
    .local v0, "builder":Landroid/net/NetworkRequest$Builder;
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 406
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 407
    iget-object v1, p0, Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 408
    return-void
.end method

.method public supportNetworkCallback()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 430
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->connectivityManager:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
