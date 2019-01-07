.class public Lorg/webrtc/NetworkMonitor;
.super Ljava/lang/Object;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/NetworkMonitor$NetworkObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NetworkMonitor"

.field private static instance:Lorg/webrtc/NetworkMonitor;


# instance fields
.field private final applicationContext:Landroid/content/Context;

.field private autoDetector:Lorg/webrtc/NetworkMonitorAutoDetect;

.field private currentConnectionType:Lorg/webrtc/NetworkMonitorAutoDetect$ConnectionType;

.field private final nativeNetworkObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final networkObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/webrtc/NetworkMonitor$NetworkObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    sget-object v0, Lorg/webrtc/NetworkMonitorAutoDetect$ConnectionType;->CONNECTION_UNKNOWN:Lorg/webrtc/NetworkMonitorAutoDetect$ConnectionType;

    iput-object v0, p0, Lorg/webrtc/NetworkMonitor;->currentConnectionType:Lorg/webrtc/NetworkMonitorAutoDetect$ConnectionType;

    .line 57
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lorg/webrtc/NetworkMonitor;->assertIsTrue(Z)V

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    .end local p1    # "context":Landroid/content/Context;
    :goto_1
    iput-object p1, p0, Lorg/webrtc/NetworkMonitor;->applicationContext:Landroid/content/Context;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/webrtc/NetworkMonitor;->nativeNetworkObservers:Ljava/util/ArrayList;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/webrtc/NetworkMonitor;->networkObservers:Ljava/util/ArrayList;

    .line 63
    return-void

    .line 57
    .restart local p1    # "context":Landroid/content/Context;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 59
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_1
.end method

.method static synthetic access$000(Lorg/webrtc/NetworkMonitor;Lorg/webrtc/NetworkMonitorAutoDetect$ConnectionType;)V
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/NetworkMonitor;
    .param p1, "x1"    # Lorg/webrtc/NetworkMonitorAutoDetect$ConnectionType;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lorg/webrtc/NetworkMonitor;->updateCurrentConnectionType(Lorg/webrtc/NetworkMonitorAutoDetect$ConnectionType;)V

    return-void
.end method

.method static synthetic access$100(Lorg/webrtc/NetworkMonitor;Lorg/webrtc/NetworkMonitorAutoDetect$NetworkInformation;)V
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/NetworkMonitor;
    .param p1, "x1"    # Lorg/webrtc/NetworkMonitorAutoDetect$NetworkInformation;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lorg/webrtc/NetworkMonitor;->notifyObserversOfNetworkConnect(Lorg/webrtc/NetworkMonitorAutoDetect$NetworkInformation;)V

    return-void
.end method

.method static synthetic access$200(Lorg/webrtc/NetworkMonitor;J)V
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/NetworkMonitor;
    .param p1, "x1"    # J

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lorg/webrtc/NetworkMonitor;->notifyObserversOfNetworkDisconnect(J)V

    return-void
.end method

.method public static addNetworkObserver(Lorg/webrtc/NetworkMonitor$NetworkObserver;)V
    .locals 1
    .param p0, "observer"    # Lorg/webrtc/NetworkMonitor$NetworkObserver;

    .prologue
    .line 215
    invoke-static {}, Lorg/webrtc/NetworkMonitor;->getInstance()Lorg/webrtc/NetworkMonitor;

    move-result-object v0

    invoke-direct {v0, p0}, Lorg/webrtc/NetworkMonitor;->addNetworkObserverInternal(Lorg/webrtc/NetworkMonitor$NetworkObserver;)V

    .line 216
    return-void
.end method

.method private addNetworkObserverInternal(Lorg/webrtc/NetworkMonitor$NetworkObserver;)V
    .locals 1
    .param p1, "observer"    # Lorg/webrtc/NetworkMonitor$NetworkObserver;

    .prologue
    .line 219
    iget-object v0, p0, Lorg/webrtc/NetworkMonitor;->networkObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    return-void
.end method

.method private static androidSdkInt()I
    .locals 1

    .prologue
    .line 121
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method private static assertIsTrue(Z)V
    .locals 2
    .param p0, "condition"    # Z

    .prologue
    .line 100
    if-nez p0, :cond_0

    .line 101
    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Expected to be true"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 103
    :cond_0
    return-void
.end method

.method private destroyAutoDetector()V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lorg/webrtc/NetworkMonitor;->autoDetector:Lorg/webrtc/NetworkMonitorAutoDetect;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lorg/webrtc/NetworkMonitor;->autoDetector:Lorg/webrtc/NetworkMonitorAutoDetect;

    invoke-virtual {v0}, Lorg/webrtc/NetworkMonitorAutoDetect;->destroy()V

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/webrtc/NetworkMonitor;->autoDetector:Lorg/webrtc/NetworkMonitorAutoDetect;

    .line 137
    :cond_0
    return-void
.end method

.method public static getAutoDetectorForTest()Lorg/webrtc/NetworkMonitorAutoDetect;
    .locals 1

    .prologue
    .line 254
    invoke-static {}, Lorg/webrtc/NetworkMonitor;->getInstance()Lorg/webrtc/NetworkMonitor;

    move-result-object v0

    iget-object v0, v0, Lorg/webrtc/NetworkMonitor;->autoDetector:Lorg/webrtc/NetworkMonitorAutoDetect;

    return-object v0
.end method

.method private getCurrentConnectionType()Lorg/webrtc/NetworkMonitorAutoDetect$ConnectionType;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lorg/webrtc/NetworkMonitor;->currentConnectionType:Lorg/webrtc/NetworkMonitorAutoDetect$ConnectionType;

    return-object v0
.end method

.method private getCurrentDefaultNetId()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 129
    iget-object v0, p0, Lorg/webrtc/NetworkMonitor;->autoDetector:Lorg/webrtc/NetworkMonitorAutoDetect;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lorg/webrtc/NetworkMonitor;->autoDetector:Lorg/webrtc/NetworkMonitorAutoDetect;

    invoke-virtual {v0}, Lorg/webrtc/NetworkMonitorAutoDetect;->getDefaultNetId()J

    move-result-wide v0

    goto :goto_0
.end method

.method public static getInstance()Lorg/webrtc/NetworkMonitor;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lorg/webrtc/NetworkMonitor;->instance:Lorg/webrtc/NetworkMonitor;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)Lorg/webrtc/NetworkMonitor;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    invoke-static {}, Lorg/webrtc/NetworkMonitor;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Lorg/webrtc/NetworkMonitor;

    invoke-direct {v0, p0}, Lorg/webrtc/NetworkMonitor;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/webrtc/NetworkMonitor;->instance:Lorg/webrtc/NetworkMonitor;

    .line 73
    :cond_0
    sget-object v0, Lorg/webrtc/NetworkMonitor;->instance:Lorg/webrtc/NetworkMonitor;

    return-object v0
.end method

.method public static isInitialized()Z
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lorg/webrtc/NetworkMonitor;->instance:Lorg/webrtc/NetworkMonitor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isOnline()Z
    .locals 2

    .prologue
    .line 237
    invoke-static {}, Lorg/webrtc/NetworkMonitor;->getInstance()Lorg/webrtc/NetworkMonitor;

    move-result-object v1

    invoke-direct {v1}, Lorg/webrtc/NetworkMonitor;->getCurrentConnectionType()Lorg/webrtc/NetworkMonitorAutoDetect$ConnectionType;

    move-result-object v0

    .line 238
    .local v0, "connectionType":Lorg/webrtc/NetworkMonitorAutoDetect$ConnectionType;
    sget-object v1, Lorg/webrtc/NetworkMonitorAutoDetect$ConnectionType;->CONNECTION_NONE:Lorg/webrtc/NetworkMonitorAutoDetect$ConnectionType;

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private native nativeNotifyConnectionTypeChanged(J)V
.end method

.method private native nativeNotifyOfActiveNetworkList(J[Lorg/webrtc/NetworkMonitorAutoDetect$NetworkInformation;)V
.end method

.method private native nativeNotifyOfNetworkConnect(JLorg/webrtc/NetworkMonitorAutoDetect$NetworkInformation;)V
.end method

.method private native nativeNotifyOfNetworkDisconnect(JJ)V
.end method

.method private notifyObserversOfConnectionTypeChange(Lorg/webrtc/NetworkMonitorAutoDetect$ConnectionType;)V
    .locals 5
    .param p1, "newConnectionType"    # Lorg/webrtc/NetworkMonitorAutoDetect$ConnectionType;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 178
    iget-object v3, p0, Lorg/webrtc/NetworkMonitor;->nativeNetworkObservers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 179
    .local v0, "nativeObserver":J
    invoke-direct {p0, v0, v1}, Lorg/webrtc/NetworkMonitor;->nativeNotifyConnectionTypeChanged(J)V

    goto :goto_0

    .line 181
    .end local v0    # "nativeObserver":J
    :cond_0
    iget-object v3, p0, Lorg/webrtc/NetworkMonitor;->networkObservers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/webrtc/NetworkMonitor$NetworkObserver;

    .line 182
    .local v2, "observer":Lorg/webrtc/NetworkMonitor$NetworkObserver;
    invoke-interface {v2, p1}, Lorg/webrtc/NetworkMonitor$NetworkObserver;->onConnectionTypeChanged(Lorg/webrtc/NetworkMonitorAutoDetect$ConnectionType;)V

    goto :goto_1

    .line 184
    .end local v2    # "observer":Lorg/webrtc/NetworkMonitor$NetworkObserver;
    :cond_1
    return-void
.end method

.method private notifyObserversOfNetworkConnect(Lorg/webrtc/NetworkMonitorAutoDetect$NetworkInformation;)V
    .locals 4
    .param p1, "networkInfo"    # Lorg/webrtc/NetworkMonitorAutoDetect$NetworkInformation;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 187
    iget-object v2, p0, Lorg/webrtc/NetworkMonitor;->nativeNetworkObservers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 188
    .local v0, "nativeObserver":J
    invoke-direct {p0, v0, v1, p1}, Lorg/webrtc/NetworkMonitor;->nativeNotifyOfNetworkConnect(JLorg/webrtc/NetworkMonitorAutoDetect$NetworkInformation;)V

    goto :goto_0

    .line 190
    .end local v0    # "nativeObserver":J
    :cond_0
    return-void
.end method

.method private notifyObserversOfNetworkDisconnect(J)V
    .locals 5
    .param p1, "networkHandle"    # J

    .prologue
    .line 193
    iget-object v2, p0, Lorg/webrtc/NetworkMonitor;->nativeNetworkObservers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 194
    .local v0, "nativeObserver":J
    invoke-direct {p0, v0, v1, p1, p2}, Lorg/webrtc/NetworkMonitor;->nativeNotifyOfNetworkDisconnect(JJ)V

    goto :goto_0

    .line 196
    .end local v0    # "nativeObserver":J
    :cond_0
    return-void
.end method

.method public static removeNetworkObserver(Lorg/webrtc/NetworkMonitor$NetworkObserver;)V
    .locals 1
    .param p0, "observer"    # Lorg/webrtc/NetworkMonitor$NetworkObserver;

    .prologue
    .line 226
    invoke-static {}, Lorg/webrtc/NetworkMonitor;->getInstance()Lorg/webrtc/NetworkMonitor;

    move-result-object v0

    invoke-direct {v0, p0}, Lorg/webrtc/NetworkMonitor;->removeNetworkObserverInternal(Lorg/webrtc/NetworkMonitor$NetworkObserver;)V

    .line 227
    return-void
.end method

.method private removeNetworkObserverInternal(Lorg/webrtc/NetworkMonitor$NetworkObserver;)V
    .locals 1
    .param p1, "observer"    # Lorg/webrtc/NetworkMonitor$NetworkObserver;

    .prologue
    .line 230
    iget-object v0, p0, Lorg/webrtc/NetworkMonitor;->networkObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 231
    return-void
.end method

.method static resetInstanceForTests(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 249
    new-instance v0, Lorg/webrtc/NetworkMonitor;

    invoke-direct {v0, p0}, Lorg/webrtc/NetworkMonitor;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/webrtc/NetworkMonitor;->instance:Lorg/webrtc/NetworkMonitor;

    .line 250
    return-void
.end method

.method public static setAutoDetectConnectivityState(Z)V
    .locals 1
    .param p0, "shouldAutoDetect"    # Z

    .prologue
    .line 96
    invoke-static {}, Lorg/webrtc/NetworkMonitor;->getInstance()Lorg/webrtc/NetworkMonitor;

    move-result-object v0

    invoke-direct {v0, p0}, Lorg/webrtc/NetworkMonitor;->setAutoDetectConnectivityStateInternal(Z)V

    .line 97
    return-void
.end method

.method private setAutoDetectConnectivityStateInternal(Z)V
    .locals 4
    .param p1, "shouldAutoDetect"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 140
    if-nez p1, :cond_1

    .line 141
    invoke-direct {p0}, Lorg/webrtc/NetworkMonitor;->destroyAutoDetector()V

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    iget-object v1, p0, Lorg/webrtc/NetworkMonitor;->autoDetector:Lorg/webrtc/NetworkMonitorAutoDetect;

    if-nez v1, :cond_0

    .line 145
    new-instance v1, Lorg/webrtc/NetworkMonitorAutoDetect;

    new-instance v2, Lorg/webrtc/NetworkMonitor$1;

    invoke-direct {v2, p0}, Lorg/webrtc/NetworkMonitor$1;-><init>(Lorg/webrtc/NetworkMonitor;)V

    iget-object v3, p0, Lorg/webrtc/NetworkMonitor;->applicationContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lorg/webrtc/NetworkMonitorAutoDetect;-><init>(Lorg/webrtc/NetworkMonitorAutoDetect$Observer;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/webrtc/NetworkMonitor;->autoDetector:Lorg/webrtc/NetworkMonitorAutoDetect;

    .line 162
    iget-object v1, p0, Lorg/webrtc/NetworkMonitor;->autoDetector:Lorg/webrtc/NetworkMonitorAutoDetect;

    .line 163
    invoke-virtual {v1}, Lorg/webrtc/NetworkMonitorAutoDetect;->getCurrentNetworkState()Lorg/webrtc/NetworkMonitorAutoDetect$NetworkState;

    move-result-object v0

    .line 164
    .local v0, "networkState":Lorg/webrtc/NetworkMonitorAutoDetect$NetworkState;
    invoke-static {v0}, Lorg/webrtc/NetworkMonitorAutoDetect;->getConnectionType(Lorg/webrtc/NetworkMonitorAutoDetect$NetworkState;)Lorg/webrtc/NetworkMonitorAutoDetect$ConnectionType;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/webrtc/NetworkMonitor;->updateCurrentConnectionType(Lorg/webrtc/NetworkMonitorAutoDetect$ConnectionType;)V

    .line 165
    invoke-direct {p0}, Lorg/webrtc/NetworkMonitor;->updateActiveNetworkList()V

    goto :goto_0
.end method

.method private startMonitoring(J)V
    .locals 3
    .param p1, "nativeObserver"    # J

    .prologue
    .line 107
    const-string/jumbo v0, "NetworkMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Start monitoring from native observer "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    iget-object v0, p0, Lorg/webrtc/NetworkMonitor;->nativeNetworkObservers:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/webrtc/NetworkMonitor;->setAutoDetectConnectivityStateInternal(Z)V

    .line 110
    return-void
.end method

.method private stopMonitoring(J)V
    .locals 5
    .param p1, "nativeObserver"    # J

    .prologue
    const/4 v3, 0x0

    .line 114
    const-string/jumbo v0, "NetworkMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Stop monitoring from native observer "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    invoke-direct {p0, v3}, Lorg/webrtc/NetworkMonitor;->setAutoDetectConnectivityStateInternal(Z)V

    .line 116
    iget-object v0, p0, Lorg/webrtc/NetworkMonitor;->nativeNetworkObservers:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 117
    return-void
.end method

.method private updateActiveNetworkList()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 199
    iget-object v4, p0, Lorg/webrtc/NetworkMonitor;->autoDetector:Lorg/webrtc/NetworkMonitorAutoDetect;

    invoke-virtual {v4}, Lorg/webrtc/NetworkMonitorAutoDetect;->getActiveNetworkList()Ljava/util/List;

    move-result-object v2

    .line 200
    .local v2, "networkInfoList":Ljava/util/List;, "Ljava/util/List<Lorg/webrtc/NetworkMonitorAutoDetect$NetworkInformation;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 209
    :cond_0
    return-void

    .line 204
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    new-array v3, v4, [Lorg/webrtc/NetworkMonitorAutoDetect$NetworkInformation;

    .line 205
    .local v3, "networkInfos":[Lorg/webrtc/NetworkMonitorAutoDetect$NetworkInformation;
    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "networkInfos":[Lorg/webrtc/NetworkMonitorAutoDetect$NetworkInformation;
    check-cast v3, [Lorg/webrtc/NetworkMonitorAutoDetect$NetworkInformation;

    .line 206
    .restart local v3    # "networkInfos":[Lorg/webrtc/NetworkMonitorAutoDetect$NetworkInformation;
    iget-object v4, p0, Lorg/webrtc/NetworkMonitor;->nativeNetworkObservers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 207
    .local v0, "nativeObserver":J
    invoke-direct {p0, v0, v1, v3}, Lorg/webrtc/NetworkMonitor;->nativeNotifyOfActiveNetworkList(J[Lorg/webrtc/NetworkMonitorAutoDetect$NetworkInformation;)V

    goto :goto_0
.end method

.method private updateCurrentConnectionType(Lorg/webrtc/NetworkMonitorAutoDetect$ConnectionType;)V
    .locals 0
    .param p1, "newConnectionType"    # Lorg/webrtc/NetworkMonitorAutoDetect$ConnectionType;

    .prologue
    .line 170
    iput-object p1, p0, Lorg/webrtc/NetworkMonitor;->currentConnectionType:Lorg/webrtc/NetworkMonitorAutoDetect$ConnectionType;

    .line 171
    invoke-direct {p0, p1}, Lorg/webrtc/NetworkMonitor;->notifyObserversOfConnectionTypeChange(Lorg/webrtc/NetworkMonitorAutoDetect$ConnectionType;)V

    .line 172
    return-void
.end method
