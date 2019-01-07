.class public Lorg/webrtc/ali/NetworkMonitor;
.super Ljava/lang/Object;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/ali/NetworkMonitor$NetworkObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NetworkMonitor"

.field private static instance:Lorg/webrtc/ali/NetworkMonitor;


# instance fields
.field private autoDetector:Lorg/webrtc/ali/NetworkMonitorAutoDetect;

.field private currentConnectionType:Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectionType;

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
            "Lorg/webrtc/ali/NetworkMonitor$NetworkObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    sget-object v0, Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectionType;->CONNECTION_UNKNOWN:Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectionType;

    iput-object v0, p0, Lorg/webrtc/ali/NetworkMonitor;->currentConnectionType:Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectionType;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/webrtc/ali/NetworkMonitor;->nativeNetworkObservers:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/webrtc/ali/NetworkMonitor;->networkObservers:Ljava/util/ArrayList;

    .line 57
    return-void
.end method

.method static synthetic access$000(Lorg/webrtc/ali/NetworkMonitor;Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectionType;)V
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/ali/NetworkMonitor;
    .param p1, "x1"    # Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectionType;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lorg/webrtc/ali/NetworkMonitor;->updateCurrentConnectionType(Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectionType;)V

    return-void
.end method

.method static synthetic access$100(Lorg/webrtc/ali/NetworkMonitor;Lorg/webrtc/ali/NetworkMonitorAutoDetect$NetworkInformation;)V
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/ali/NetworkMonitor;
    .param p1, "x1"    # Lorg/webrtc/ali/NetworkMonitorAutoDetect$NetworkInformation;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lorg/webrtc/ali/NetworkMonitor;->notifyObserversOfNetworkConnect(Lorg/webrtc/ali/NetworkMonitorAutoDetect$NetworkInformation;)V

    return-void
.end method

.method static synthetic access$200(Lorg/webrtc/ali/NetworkMonitor;J)V
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/ali/NetworkMonitor;
    .param p1, "x1"    # J

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lorg/webrtc/ali/NetworkMonitor;->notifyObserversOfNetworkDisconnect(J)V

    return-void
.end method

.method public static addNetworkObserver(Lorg/webrtc/ali/NetworkMonitor$NetworkObserver;)V
    .locals 1
    .param p0, "observer"    # Lorg/webrtc/ali/NetworkMonitor$NetworkObserver;

    .prologue
    .line 207
    invoke-static {}, Lorg/webrtc/ali/NetworkMonitor;->getInstance()Lorg/webrtc/ali/NetworkMonitor;

    move-result-object v0

    invoke-direct {v0, p0}, Lorg/webrtc/ali/NetworkMonitor;->addNetworkObserverInternal(Lorg/webrtc/ali/NetworkMonitor$NetworkObserver;)V

    .line 208
    return-void
.end method

.method private addNetworkObserverInternal(Lorg/webrtc/ali/NetworkMonitor$NetworkObserver;)V
    .locals 1
    .param p1, "observer"    # Lorg/webrtc/ali/NetworkMonitor$NetworkObserver;

    .prologue
    .line 211
    iget-object v0, p0, Lorg/webrtc/ali/NetworkMonitor;->networkObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    return-void
.end method

.method private static androidSdkInt()I
    .locals 1

    .prologue
    .line 113
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method private static assertIsTrue(Z)V
    .locals 2
    .param p0, "condition"    # Z

    .prologue
    .line 86
    if-nez p0, :cond_0

    .line 87
    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Expected to be true"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 89
    :cond_0
    return-void
.end method

.method private destroyAutoDetector()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lorg/webrtc/ali/NetworkMonitor;->autoDetector:Lorg/webrtc/ali/NetworkMonitorAutoDetect;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lorg/webrtc/ali/NetworkMonitor;->autoDetector:Lorg/webrtc/ali/NetworkMonitorAutoDetect;

    invoke-virtual {v0}, Lorg/webrtc/ali/NetworkMonitorAutoDetect;->destroy()V

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/webrtc/ali/NetworkMonitor;->autoDetector:Lorg/webrtc/ali/NetworkMonitorAutoDetect;

    .line 129
    :cond_0
    return-void
.end method

.method public static getAutoDetectorForTest()Lorg/webrtc/ali/NetworkMonitorAutoDetect;
    .locals 1

    .prologue
    .line 246
    invoke-static {}, Lorg/webrtc/ali/NetworkMonitor;->getInstance()Lorg/webrtc/ali/NetworkMonitor;

    move-result-object v0

    iget-object v0, v0, Lorg/webrtc/ali/NetworkMonitor;->autoDetector:Lorg/webrtc/ali/NetworkMonitorAutoDetect;

    return-object v0
.end method

.method private getCurrentConnectionType()Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectionType;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lorg/webrtc/ali/NetworkMonitor;->currentConnectionType:Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectionType;

    return-object v0
.end method

.method private getCurrentDefaultNetId()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 121
    iget-object v0, p0, Lorg/webrtc/ali/NetworkMonitor;->autoDetector:Lorg/webrtc/ali/NetworkMonitorAutoDetect;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lorg/webrtc/ali/NetworkMonitor;->autoDetector:Lorg/webrtc/ali/NetworkMonitorAutoDetect;

    invoke-virtual {v0}, Lorg/webrtc/ali/NetworkMonitorAutoDetect;->getDefaultNetId()J

    move-result-wide v0

    goto :goto_0
.end method

.method public static getInstance()Lorg/webrtc/ali/NetworkMonitor;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lorg/webrtc/ali/NetworkMonitor;->instance:Lorg/webrtc/ali/NetworkMonitor;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lorg/webrtc/ali/NetworkMonitor;

    invoke-direct {v0}, Lorg/webrtc/ali/NetworkMonitor;-><init>()V

    sput-object v0, Lorg/webrtc/ali/NetworkMonitor;->instance:Lorg/webrtc/ali/NetworkMonitor;

    .line 70
    :cond_0
    sget-object v0, Lorg/webrtc/ali/NetworkMonitor;->instance:Lorg/webrtc/ali/NetworkMonitor;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 61
    return-void
.end method

.method public static isOnline()Z
    .locals 2

    .prologue
    .line 229
    invoke-static {}, Lorg/webrtc/ali/NetworkMonitor;->getInstance()Lorg/webrtc/ali/NetworkMonitor;

    move-result-object v1

    invoke-direct {v1}, Lorg/webrtc/ali/NetworkMonitor;->getCurrentConnectionType()Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectionType;

    move-result-object v0

    .line 230
    .local v0, "connectionType":Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectionType;
    sget-object v1, Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectionType;->CONNECTION_NONE:Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectionType;

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

.method private native nativeNotifyOfActiveNetworkList(J[Lorg/webrtc/ali/NetworkMonitorAutoDetect$NetworkInformation;)V
.end method

.method private native nativeNotifyOfNetworkConnect(JLorg/webrtc/ali/NetworkMonitorAutoDetect$NetworkInformation;)V
.end method

.method private native nativeNotifyOfNetworkDisconnect(JJ)V
.end method

.method private networkBindingSupported()Z
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lorg/webrtc/ali/NetworkMonitor;->autoDetector:Lorg/webrtc/ali/NetworkMonitorAutoDetect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/webrtc/ali/NetworkMonitor;->autoDetector:Lorg/webrtc/ali/NetworkMonitorAutoDetect;

    invoke-virtual {v0}, Lorg/webrtc/ali/NetworkMonitorAutoDetect;->supportNetworkCallback()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyObserversOfConnectionTypeChange(Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectionType;)V
    .locals 5
    .param p1, "newConnectionType"    # Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectionType;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 170
    iget-object v3, p0, Lorg/webrtc/ali/NetworkMonitor;->nativeNetworkObservers:Ljava/util/ArrayList;

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

    .line 171
    .local v0, "nativeObserver":J
    invoke-direct {p0, v0, v1}, Lorg/webrtc/ali/NetworkMonitor;->nativeNotifyConnectionTypeChanged(J)V

    goto :goto_0

    .line 173
    .end local v0    # "nativeObserver":J
    :cond_0
    iget-object v3, p0, Lorg/webrtc/ali/NetworkMonitor;->networkObservers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/webrtc/ali/NetworkMonitor$NetworkObserver;

    .line 174
    .local v2, "observer":Lorg/webrtc/ali/NetworkMonitor$NetworkObserver;
    invoke-interface {v2, p1}, Lorg/webrtc/ali/NetworkMonitor$NetworkObserver;->onConnectionTypeChanged(Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectionType;)V

    goto :goto_1

    .line 176
    .end local v2    # "observer":Lorg/webrtc/ali/NetworkMonitor$NetworkObserver;
    :cond_1
    return-void
.end method

.method private notifyObserversOfNetworkConnect(Lorg/webrtc/ali/NetworkMonitorAutoDetect$NetworkInformation;)V
    .locals 4
    .param p1, "networkInfo"    # Lorg/webrtc/ali/NetworkMonitorAutoDetect$NetworkInformation;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 179
    iget-object v2, p0, Lorg/webrtc/ali/NetworkMonitor;->nativeNetworkObservers:Ljava/util/ArrayList;

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

    .line 180
    .local v0, "nativeObserver":J
    invoke-direct {p0, v0, v1, p1}, Lorg/webrtc/ali/NetworkMonitor;->nativeNotifyOfNetworkConnect(JLorg/webrtc/ali/NetworkMonitorAutoDetect$NetworkInformation;)V

    goto :goto_0

    .line 182
    .end local v0    # "nativeObserver":J
    :cond_0
    return-void
.end method

.method private notifyObserversOfNetworkDisconnect(J)V
    .locals 5
    .param p1, "networkHandle"    # J

    .prologue
    .line 185
    iget-object v2, p0, Lorg/webrtc/ali/NetworkMonitor;->nativeNetworkObservers:Ljava/util/ArrayList;

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

    .line 186
    .local v0, "nativeObserver":J
    invoke-direct {p0, v0, v1, p1, p2}, Lorg/webrtc/ali/NetworkMonitor;->nativeNotifyOfNetworkDisconnect(JJ)V

    goto :goto_0

    .line 188
    .end local v0    # "nativeObserver":J
    :cond_0
    return-void
.end method

.method public static removeNetworkObserver(Lorg/webrtc/ali/NetworkMonitor$NetworkObserver;)V
    .locals 1
    .param p0, "observer"    # Lorg/webrtc/ali/NetworkMonitor$NetworkObserver;

    .prologue
    .line 218
    invoke-static {}, Lorg/webrtc/ali/NetworkMonitor;->getInstance()Lorg/webrtc/ali/NetworkMonitor;

    move-result-object v0

    invoke-direct {v0, p0}, Lorg/webrtc/ali/NetworkMonitor;->removeNetworkObserverInternal(Lorg/webrtc/ali/NetworkMonitor$NetworkObserver;)V

    .line 219
    return-void
.end method

.method private removeNetworkObserverInternal(Lorg/webrtc/ali/NetworkMonitor$NetworkObserver;)V
    .locals 1
    .param p1, "observer"    # Lorg/webrtc/ali/NetworkMonitor$NetworkObserver;

    .prologue
    .line 222
    iget-object v0, p0, Lorg/webrtc/ali/NetworkMonitor;->networkObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 223
    return-void
.end method

.method static resetInstanceForTests()V
    .locals 1

    .prologue
    .line 241
    new-instance v0, Lorg/webrtc/ali/NetworkMonitor;

    invoke-direct {v0}, Lorg/webrtc/ali/NetworkMonitor;-><init>()V

    sput-object v0, Lorg/webrtc/ali/NetworkMonitor;->instance:Lorg/webrtc/ali/NetworkMonitor;

    .line 242
    return-void
.end method

.method public static setAutoDetectConnectivityState(Z)V
    .locals 1
    .param p0, "shouldAutoDetect"    # Z

    .prologue
    .line 82
    invoke-static {}, Lorg/webrtc/ali/NetworkMonitor;->getInstance()Lorg/webrtc/ali/NetworkMonitor;

    move-result-object v0

    invoke-direct {v0, p0}, Lorg/webrtc/ali/NetworkMonitor;->setAutoDetectConnectivityStateInternal(Z)V

    .line 83
    return-void
.end method

.method private setAutoDetectConnectivityStateInternal(Z)V
    .locals 4
    .param p1, "shouldAutoDetect"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 132
    if-nez p1, :cond_1

    .line 133
    invoke-direct {p0}, Lorg/webrtc/ali/NetworkMonitor;->destroyAutoDetector()V

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    iget-object v1, p0, Lorg/webrtc/ali/NetworkMonitor;->autoDetector:Lorg/webrtc/ali/NetworkMonitorAutoDetect;

    if-nez v1, :cond_0

    .line 137
    new-instance v1, Lorg/webrtc/ali/NetworkMonitorAutoDetect;

    new-instance v2, Lorg/webrtc/ali/NetworkMonitor$1;

    invoke-direct {v2, p0}, Lorg/webrtc/ali/NetworkMonitor$1;-><init>(Lorg/webrtc/ali/NetworkMonitor;)V

    .line 153
    invoke-static {}, Lorg/webrtc/ali/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/webrtc/ali/NetworkMonitorAutoDetect;-><init>(Lorg/webrtc/ali/NetworkMonitorAutoDetect$Observer;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/webrtc/ali/NetworkMonitor;->autoDetector:Lorg/webrtc/ali/NetworkMonitorAutoDetect;

    .line 154
    iget-object v1, p0, Lorg/webrtc/ali/NetworkMonitor;->autoDetector:Lorg/webrtc/ali/NetworkMonitorAutoDetect;

    .line 155
    invoke-virtual {v1}, Lorg/webrtc/ali/NetworkMonitorAutoDetect;->getCurrentNetworkState()Lorg/webrtc/ali/NetworkMonitorAutoDetect$NetworkState;

    move-result-object v0

    .line 156
    .local v0, "networkState":Lorg/webrtc/ali/NetworkMonitorAutoDetect$NetworkState;
    invoke-static {v0}, Lorg/webrtc/ali/NetworkMonitorAutoDetect;->getConnectionType(Lorg/webrtc/ali/NetworkMonitorAutoDetect$NetworkState;)Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectionType;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/webrtc/ali/NetworkMonitor;->updateCurrentConnectionType(Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectionType;)V

    .line 157
    invoke-direct {p0}, Lorg/webrtc/ali/NetworkMonitor;->updateActiveNetworkList()V

    goto :goto_0
.end method

.method private startMonitoring(J)V
    .locals 3
    .param p1, "nativeObserver"    # J

    .prologue
    .line 93
    const-string/jumbo v0, "NetworkMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Start monitoring from native observer "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lorg/webrtc/ali/NetworkMonitor;->nativeNetworkObservers:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/webrtc/ali/NetworkMonitor;->setAutoDetectConnectivityStateInternal(Z)V

    .line 96
    return-void
.end method

.method private stopMonitoring(J)V
    .locals 3
    .param p1, "nativeObserver"    # J

    .prologue
    .line 100
    const-string/jumbo v0, "NetworkMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Stop monitoring from native observer "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/webrtc/ali/NetworkMonitor;->setAutoDetectConnectivityStateInternal(Z)V

    .line 102
    iget-object v0, p0, Lorg/webrtc/ali/NetworkMonitor;->nativeNetworkObservers:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 103
    return-void
.end method

.method private updateActiveNetworkList()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 191
    iget-object v4, p0, Lorg/webrtc/ali/NetworkMonitor;->autoDetector:Lorg/webrtc/ali/NetworkMonitorAutoDetect;

    invoke-virtual {v4}, Lorg/webrtc/ali/NetworkMonitorAutoDetect;->getActiveNetworkList()Ljava/util/List;

    move-result-object v2

    .line 192
    .local v2, "networkInfoList":Ljava/util/List;, "Ljava/util/List<Lorg/webrtc/ali/NetworkMonitorAutoDetect$NetworkInformation;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 201
    :cond_0
    return-void

    .line 196
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    new-array v3, v4, [Lorg/webrtc/ali/NetworkMonitorAutoDetect$NetworkInformation;

    .line 197
    .local v3, "networkInfos":[Lorg/webrtc/ali/NetworkMonitorAutoDetect$NetworkInformation;
    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "networkInfos":[Lorg/webrtc/ali/NetworkMonitorAutoDetect$NetworkInformation;
    check-cast v3, [Lorg/webrtc/ali/NetworkMonitorAutoDetect$NetworkInformation;

    .line 198
    .restart local v3    # "networkInfos":[Lorg/webrtc/ali/NetworkMonitorAutoDetect$NetworkInformation;
    iget-object v4, p0, Lorg/webrtc/ali/NetworkMonitor;->nativeNetworkObservers:Ljava/util/ArrayList;

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

    .line 199
    .local v0, "nativeObserver":J
    invoke-direct {p0, v0, v1, v3}, Lorg/webrtc/ali/NetworkMonitor;->nativeNotifyOfActiveNetworkList(J[Lorg/webrtc/ali/NetworkMonitorAutoDetect$NetworkInformation;)V

    goto :goto_0
.end method

.method private updateCurrentConnectionType(Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectionType;)V
    .locals 0
    .param p1, "newConnectionType"    # Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectionType;

    .prologue
    .line 162
    iput-object p1, p0, Lorg/webrtc/ali/NetworkMonitor;->currentConnectionType:Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectionType;

    .line 163
    invoke-direct {p0, p1}, Lorg/webrtc/ali/NetworkMonitor;->notifyObserversOfConnectionTypeChange(Lorg/webrtc/ali/NetworkMonitorAutoDetect$ConnectionType;)V

    .line 164
    return-void
.end method
