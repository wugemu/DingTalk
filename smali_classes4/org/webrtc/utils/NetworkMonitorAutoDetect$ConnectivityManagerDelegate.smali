.class Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;
.super Ljava/lang/Object;
.source "NetworkMonitorAutoDetect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/utils/NetworkMonitorAutoDetect;
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
    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 181
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    const-string/jumbo v0, "connectivity"

    .line 174
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 175
    return-void
.end method

.method static synthetic access$300(Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;Landroid/net/Network;)Lorg/webrtc/utils/NetworkMonitorAutoDetect$NetworkInformation;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;
    .param p1, "x1"    # Landroid/net/Network;

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->networkToInfo(Landroid/net/Network;)Lorg/webrtc/utils/NetworkMonitorAutoDetect$NetworkInformation;

    move-result-object v0

    return-object v0
.end method

.method private networkToInfo(Landroid/net/Network;)Lorg/webrtc/utils/NetworkMonitorAutoDetect$NetworkInformation;
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

    .line 287
    iget-object v2, p0, Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, p1}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v0

    .line 289
    .local v0, "linkProperties":Landroid/net/LinkProperties;
    if-nez v0, :cond_0

    .line 290
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

    .line 325
    :goto_0
    return-object v1

    .line 293
    :cond_0
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 294
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

    .line 298
    :cond_1
    invoke-virtual {p0, p1}, Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->getNetworkState(Landroid/net/Network;)Lorg/webrtc/utils/NetworkMonitorAutoDetect$NetworkState;

    move-result-object v7

    .line 299
    .local v7, "networkState":Lorg/webrtc/utils/NetworkMonitorAutoDetect$NetworkState;
    invoke-static {v7}, Lorg/webrtc/utils/NetworkMonitorAutoDetect$NetworkState;->access$400(Lorg/webrtc/utils/NetworkMonitorAutoDetect$NetworkState;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v7}, Lorg/webrtc/utils/NetworkMonitorAutoDetect$NetworkState;->getNetworkType()I

    move-result v2

    const/16 v4, 0x11

    if-ne v2, v4, :cond_2

    .line 303
    invoke-virtual {p0}, Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->getNetworkState()Lorg/webrtc/utils/NetworkMonitorAutoDetect$NetworkState;

    move-result-object v7

    .line 305
    :cond_2
    invoke-static {v7}, Lorg/webrtc/utils/NetworkMonitorAutoDetect;->getConnectionType(Lorg/webrtc/utils/NetworkMonitorAutoDetect$NetworkState;)Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;

    move-result-object v3

    .line 306
    .local v3, "connectionType":Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;
    sget-object v2, Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;->CONNECTION_NONE:Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;

    if-ne v3, v2, :cond_3

    .line 309
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

    .line 315
    :cond_3
    sget-object v2, Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;->CONNECTION_UNKNOWN:Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;

    if-eq v3, v2, :cond_4

    sget-object v2, Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;->CONNECTION_UNKNOWN_CELLULAR:Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;

    if-ne v3, v2, :cond_5

    .line 317
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

    .line 318
    invoke-virtual {v7}, Lorg/webrtc/utils/NetworkMonitorAutoDetect$NetworkState;->getNetworkType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " and subtype "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 319
    invoke-virtual {v7}, Lorg/webrtc/utils/NetworkMonitorAutoDetect$NetworkState;->getNetworkSubType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 317
    invoke-static {v2, v4}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    :cond_5
    new-instance v1, Lorg/webrtc/utils/NetworkMonitorAutoDetect$NetworkInformation;

    .line 323
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    .line 324
    invoke-static {p1}, Lorg/webrtc/utils/NetworkMonitorAutoDetect;->access$000(Landroid/net/Network;)J

    move-result-wide v4

    invoke-virtual {p0, v0}, Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->getIPAddresses(Landroid/net/LinkProperties;)[Lorg/webrtc/utils/NetworkMonitorAutoDetect$IPAddress;

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lorg/webrtc/utils/NetworkMonitorAutoDetect$NetworkInformation;-><init>(Ljava/lang/String;Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;J[Lorg/webrtc/utils/NetworkMonitorAutoDetect$IPAddress;)V

    .line 325
    .local v1, "networkInformation":Lorg/webrtc/utils/NetworkMonitorAutoDetect$NetworkInformation;
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
            "Lorg/webrtc/utils/NetworkMonitorAutoDetect$NetworkInformation;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 229
    invoke-virtual {p0}, Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->supportNetworkCallback()Z

    move-result v3

    if-nez v3, :cond_1

    .line 230
    const/4 v1, 0x0

    .line 239
    :cond_0
    return-object v1

    .line 232
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 233
    .local v1, "netInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/webrtc/utils/NetworkMonitorAutoDetect$NetworkInformation;>;"
    invoke-virtual {p0}, Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->getAllNetworks()[Landroid/net/Network;

    move-result-object v4

    array-length v5, v4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v2, v4, v3

    .line 234
    .local v2, "network":Landroid/net/Network;
    invoke-direct {p0, v2}, Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->networkToInfo(Landroid/net/Network;)Lorg/webrtc/utils/NetworkMonitorAutoDetect$NetworkInformation;

    move-result-object v0

    .line 235
    .local v0, "info":Lorg/webrtc/utils/NetworkMonitorAutoDetect$NetworkInformation;
    if-eqz v0, :cond_2

    .line 236
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
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
    .line 222
    iget-object v0, p0, Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->connectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 223
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/net/Network;

    .line 225
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->connectivityManager:Landroid/net/ConnectivityManager;

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

    .line 249
    invoke-virtual {p0}, Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->supportNetworkCallback()Z

    move-result v8

    if-nez v8, :cond_1

    move-wide v0, v6

    .line 282
    :cond_0
    :goto_0
    return-wide v0

    .line 256
    :cond_1
    iget-object v8, p0, Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v8}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 257
    .local v2, "defaultNetworkInfo":Landroid/net/NetworkInfo;
    if-nez v2, :cond_2

    move-wide v0, v6

    .line 258
    goto :goto_0

    .line 260
    :cond_2
    invoke-virtual {p0}, Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->getAllNetworks()[Landroid/net/Network;

    move-result-object v5

    .line 261
    .local v5, "networks":[Landroid/net/Network;
    const-wide/16 v0, -0x1

    .line 262
    .local v0, "defaultNetId":J
    array-length v9, v5

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v9, :cond_0

    aget-object v3, v5, v8

    .line 263
    .local v3, "network":Landroid/net/Network;
    invoke-virtual {p0, v3}, Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->hasInternetCapability(Landroid/net/Network;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 266
    iget-object v10, p0, Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v10, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v4

    .line 267
    .local v4, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v10

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v11

    if-ne v10, v11, :cond_4

    .line 275
    cmp-long v10, v0, v6

    if-eqz v10, :cond_3

    .line 276
    new-instance v6, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "Multiple connected networks of same type are not supported."

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 279
    :cond_3
    invoke-static {v3}, Lorg/webrtc/utils/NetworkMonitorAutoDetect;->access$000(Landroid/net/Network;)J

    move-result-wide v0

    .line 262
    .end local v4    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_1
.end method

.method getIPAddresses(Landroid/net/LinkProperties;)[Lorg/webrtc/utils/NetworkMonitorAutoDetect$IPAddress;
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
    .line 363
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v1, v3, [Lorg/webrtc/utils/NetworkMonitorAutoDetect$IPAddress;

    .line 364
    .local v1, "ipAddresses":[Lorg/webrtc/utils/NetworkMonitorAutoDetect$IPAddress;
    const/4 v0, 0x0

    .line 365
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

    .line 366
    .local v2, "linkAddress":Landroid/net/LinkAddress;
    new-instance v4, Lorg/webrtc/utils/NetworkMonitorAutoDetect$IPAddress;

    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/webrtc/utils/NetworkMonitorAutoDetect$IPAddress;-><init>([B)V

    aput-object v4, v1, v0

    .line 367
    add-int/lit8 v0, v0, 0x1

    .line 368
    goto :goto_0

    .line 369
    .end local v2    # "linkAddress":Landroid/net/LinkAddress;
    :cond_0
    return-object v1
.end method

.method getNetworkState()Lorg/webrtc/utils/NetworkMonitorAutoDetect$NetworkState;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, -0x1

    .line 188
    iget-object v0, p0, Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->connectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 189
    new-instance v0, Lorg/webrtc/utils/NetworkMonitorAutoDetect$NetworkState;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/webrtc/utils/NetworkMonitorAutoDetect$NetworkState;-><init>(ZII)V

    .line 191
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->getNetworkState(Landroid/net/NetworkInfo;)Lorg/webrtc/utils/NetworkMonitorAutoDetect$NetworkState;

    move-result-object v0

    goto :goto_0
.end method

.method getNetworkState(Landroid/net/Network;)Lorg/webrtc/utils/NetworkMonitorAutoDetect$NetworkState;
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

    .line 200
    iget-object v0, p0, Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->connectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 201
    new-instance v0, Lorg/webrtc/utils/NetworkMonitorAutoDetect$NetworkState;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/webrtc/utils/NetworkMonitorAutoDetect$NetworkState;-><init>(ZII)V

    .line 203
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->getNetworkState(Landroid/net/NetworkInfo;)Lorg/webrtc/utils/NetworkMonitorAutoDetect$NetworkState;

    move-result-object v0

    goto :goto_0
.end method

.method getNetworkState(Landroid/net/NetworkInfo;)Lorg/webrtc/utils/NetworkMonitorAutoDetect$NetworkState;
    .locals 4
    .param p1, "networkInfo"    # Landroid/net/NetworkInfo;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, -0x1

    .line 210
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 211
    :cond_0
    new-instance v0, Lorg/webrtc/utils/NetworkMonitorAutoDetect$NetworkState;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/webrtc/utils/NetworkMonitorAutoDetect$NetworkState;-><init>(ZII)V

    .line 213
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lorg/webrtc/utils/NetworkMonitorAutoDetect$NetworkState;

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lorg/webrtc/utils/NetworkMonitorAutoDetect$NetworkState;-><init>(ZII)V

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

    .line 334
    iget-object v2, p0, Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->connectivityManager:Landroid/net/ConnectivityManager;

    if-nez v2, :cond_1

    .line 339
    :cond_0
    :goto_0
    return v1

    .line 337
    :cond_1
    iget-object v2, p0, Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    .line 338
    .local v0, "capabilities":Landroid/net/NetworkCapabilities;
    if-eqz v0, :cond_0

    const/16 v2, 0xc

    .line 339
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
    .line 345
    iget-object v0, p0, Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->connectivityManager:Landroid/net/ConnectivityManager;

    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v2, 0xc

    .line 347
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    .line 348
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    .line 345
    invoke-virtual {v0, v1, p1}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 350
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
    .line 374
    invoke-virtual {p0}, Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->supportNetworkCallback()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    const-string/jumbo v0, "NetworkMonitorAutoDetect"

    const-string/jumbo v1, "Unregister network callback"

    invoke-static {v0, v1}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    iget-object v0, p0, Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 378
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
    .line 355
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 356
    .local v0, "builder":Landroid/net/NetworkRequest$Builder;
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 357
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 358
    iget-object v1, p0, Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 359
    return-void
.end method

.method public supportNetworkCallback()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 381
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->connectivityManager:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
