.class public Lorg/webrtc/utils/NetworkMonitor;
.super Ljava/lang/Object;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/utils/NetworkMonitor$NetworkObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NetworkMonitor"

.field private static instance:Lorg/webrtc/utils/NetworkMonitor;


# instance fields
.field private autoDetector:Lorg/webrtc/utils/NetworkMonitorAutoDetect;

.field private currentConnectionType:Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;

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
            "Lorg/webrtc/utils/NetworkMonitor$NetworkObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    sget-object v0, Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;->CONNECTION_UNKNOWN:Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;

    iput-object v0, p0, Lorg/webrtc/utils/NetworkMonitor;->currentConnectionType:Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/webrtc/utils/NetworkMonitor;->nativeNetworkObservers:Ljava/util/ArrayList;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/webrtc/utils/NetworkMonitor;->networkObservers:Ljava/util/ArrayList;

    .line 58
    return-void
.end method

.method static synthetic access$000(Lorg/webrtc/utils/NetworkMonitor;Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;)V
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/utils/NetworkMonitor;
    .param p1, "x1"    # Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lorg/webrtc/utils/NetworkMonitor;->updateCurrentConnectionType(Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;)V

    return-void
.end method

.method static synthetic access$100(Lorg/webrtc/utils/NetworkMonitor;Lorg/webrtc/utils/NetworkMonitorAutoDetect$NetworkInformation;)V
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/utils/NetworkMonitor;
    .param p1, "x1"    # Lorg/webrtc/utils/NetworkMonitorAutoDetect$NetworkInformation;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lorg/webrtc/utils/NetworkMonitor;->notifyObserversOfNetworkConnect(Lorg/webrtc/utils/NetworkMonitorAutoDetect$NetworkInformation;)V

    return-void
.end method

.method static synthetic access$200(Lorg/webrtc/utils/NetworkMonitor;J)V
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/utils/NetworkMonitor;
    .param p1, "x1"    # J

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lorg/webrtc/utils/NetworkMonitor;->notifyObserversOfNetworkDisconnect(J)V

    return-void
.end method

.method public static addNetworkObserver(Lorg/webrtc/utils/NetworkMonitor$NetworkObserver;)V
    .locals 1
    .param p0, "observer"    # Lorg/webrtc/utils/NetworkMonitor$NetworkObserver;

    .prologue
    .line 208
    invoke-static {}, Lorg/webrtc/utils/NetworkMonitor;->getInstance()Lorg/webrtc/utils/NetworkMonitor;

    move-result-object v0

    invoke-direct {v0, p0}, Lorg/webrtc/utils/NetworkMonitor;->addNetworkObserverInternal(Lorg/webrtc/utils/NetworkMonitor$NetworkObserver;)V

    .line 209
    return-void
.end method

.method private addNetworkObserverInternal(Lorg/webrtc/utils/NetworkMonitor$NetworkObserver;)V
    .locals 1
    .param p1, "observer"    # Lorg/webrtc/utils/NetworkMonitor$NetworkObserver;

    .prologue
    .line 212
    iget-object v0, p0, Lorg/webrtc/utils/NetworkMonitor;->networkObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    return-void
.end method

.method private static androidSdkInt()I
    .locals 1

    .prologue
    .line 114
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method private static assertIsTrue(Z)V
    .locals 2
    .param p0, "condition"    # Z

    .prologue
    .line 87
    if-nez p0, :cond_0

    .line 88
    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Expected to be true"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 90
    :cond_0
    return-void
.end method

.method private destroyAutoDetector()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lorg/webrtc/utils/NetworkMonitor;->autoDetector:Lorg/webrtc/utils/NetworkMonitorAutoDetect;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lorg/webrtc/utils/NetworkMonitor;->autoDetector:Lorg/webrtc/utils/NetworkMonitorAutoDetect;

    invoke-virtual {v0}, Lorg/webrtc/utils/NetworkMonitorAutoDetect;->destroy()V

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/webrtc/utils/NetworkMonitor;->autoDetector:Lorg/webrtc/utils/NetworkMonitorAutoDetect;

    .line 130
    :cond_0
    return-void
.end method

.method public static getAutoDetectorForTest()Lorg/webrtc/utils/NetworkMonitorAutoDetect;
    .locals 1

    .prologue
    .line 247
    invoke-static {}, Lorg/webrtc/utils/NetworkMonitor;->getInstance()Lorg/webrtc/utils/NetworkMonitor;

    move-result-object v0

    iget-object v0, v0, Lorg/webrtc/utils/NetworkMonitor;->autoDetector:Lorg/webrtc/utils/NetworkMonitorAutoDetect;

    return-object v0
.end method

.method private getCurrentDefaultNetId()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 122
    iget-object v0, p0, Lorg/webrtc/utils/NetworkMonitor;->autoDetector:Lorg/webrtc/utils/NetworkMonitorAutoDetect;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lorg/webrtc/utils/NetworkMonitor;->autoDetector:Lorg/webrtc/utils/NetworkMonitorAutoDetect;

    invoke-virtual {v0}, Lorg/webrtc/utils/NetworkMonitorAutoDetect;->getDefaultNetId()J

    move-result-wide v0

    goto :goto_0
.end method

.method public static getInstance()Lorg/webrtc/utils/NetworkMonitor;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lorg/webrtc/utils/NetworkMonitor;->instance:Lorg/webrtc/utils/NetworkMonitor;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lorg/webrtc/utils/NetworkMonitor;

    invoke-direct {v0}, Lorg/webrtc/utils/NetworkMonitor;-><init>()V

    sput-object v0, Lorg/webrtc/utils/NetworkMonitor;->instance:Lorg/webrtc/utils/NetworkMonitor;

    .line 71
    :cond_0
    sget-object v0, Lorg/webrtc/utils/NetworkMonitor;->instance:Lorg/webrtc/utils/NetworkMonitor;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 62
    return-void
.end method

.method public static isOnline()Z
    .locals 2

    .prologue
    .line 230
    invoke-static {}, Lorg/webrtc/utils/NetworkMonitor;->getInstance()Lorg/webrtc/utils/NetworkMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lorg/webrtc/utils/NetworkMonitor;->getCurrentConnectionType()Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;

    move-result-object v0

    .line 231
    .local v0, "connectionType":Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;
    sget-object v1, Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;->CONNECTION_NONE:Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private notifyObserversOfConnectionTypeChange(Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;)V
    .locals 3
    .param p1, "newConnectionType"    # Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 171
    iget-object v1, p0, Lorg/webrtc/utils/NetworkMonitor;->nativeNetworkObservers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    goto :goto_0

    .line 174
    :cond_0
    iget-object v1, p0, Lorg/webrtc/utils/NetworkMonitor;->networkObservers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/webrtc/utils/NetworkMonitor$NetworkObserver;

    .line 175
    .local v0, "observer":Lorg/webrtc/utils/NetworkMonitor$NetworkObserver;
    invoke-interface {v0, p1}, Lorg/webrtc/utils/NetworkMonitor$NetworkObserver;->onConnectionTypeChanged(Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;)V

    goto :goto_1

    .line 177
    .end local v0    # "observer":Lorg/webrtc/utils/NetworkMonitor$NetworkObserver;
    :cond_1
    return-void
.end method

.method private notifyObserversOfNetworkConnect(Lorg/webrtc/utils/NetworkMonitorAutoDetect$NetworkInformation;)V
    .locals 2
    .param p1, "networkInfo"    # Lorg/webrtc/utils/NetworkMonitorAutoDetect$NetworkInformation;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 180
    iget-object v0, p0, Lorg/webrtc/utils/NetworkMonitor;->nativeNetworkObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    goto :goto_0

    .line 183
    :cond_0
    return-void
.end method

.method private notifyObserversOfNetworkDisconnect(J)V
    .locals 2
    .param p1, "networkHandle"    # J

    .prologue
    .line 186
    iget-object v0, p0, Lorg/webrtc/utils/NetworkMonitor;->nativeNetworkObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    goto :goto_0

    .line 189
    :cond_0
    return-void
.end method

.method public static removeNetworkObserver(Lorg/webrtc/utils/NetworkMonitor$NetworkObserver;)V
    .locals 1
    .param p0, "observer"    # Lorg/webrtc/utils/NetworkMonitor$NetworkObserver;

    .prologue
    .line 219
    invoke-static {}, Lorg/webrtc/utils/NetworkMonitor;->getInstance()Lorg/webrtc/utils/NetworkMonitor;

    move-result-object v0

    invoke-direct {v0, p0}, Lorg/webrtc/utils/NetworkMonitor;->removeNetworkObserverInternal(Lorg/webrtc/utils/NetworkMonitor$NetworkObserver;)V

    .line 220
    return-void
.end method

.method private removeNetworkObserverInternal(Lorg/webrtc/utils/NetworkMonitor$NetworkObserver;)V
    .locals 1
    .param p1, "observer"    # Lorg/webrtc/utils/NetworkMonitor$NetworkObserver;

    .prologue
    .line 223
    iget-object v0, p0, Lorg/webrtc/utils/NetworkMonitor;->networkObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 224
    return-void
.end method

.method static resetInstanceForTests()V
    .locals 1

    .prologue
    .line 242
    new-instance v0, Lorg/webrtc/utils/NetworkMonitor;

    invoke-direct {v0}, Lorg/webrtc/utils/NetworkMonitor;-><init>()V

    sput-object v0, Lorg/webrtc/utils/NetworkMonitor;->instance:Lorg/webrtc/utils/NetworkMonitor;

    .line 243
    return-void
.end method

.method public static setAutoDetectConnectivityState(Z)V
    .locals 1
    .param p0, "shouldAutoDetect"    # Z

    .prologue
    .line 83
    invoke-static {}, Lorg/webrtc/utils/NetworkMonitor;->getInstance()Lorg/webrtc/utils/NetworkMonitor;

    move-result-object v0

    invoke-direct {v0, p0}, Lorg/webrtc/utils/NetworkMonitor;->setAutoDetectConnectivityStateInternal(Z)V

    .line 84
    return-void
.end method

.method private setAutoDetectConnectivityStateInternal(Z)V
    .locals 4
    .param p1, "shouldAutoDetect"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 133
    if-nez p1, :cond_1

    .line 134
    invoke-direct {p0}, Lorg/webrtc/utils/NetworkMonitor;->destroyAutoDetector()V

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    iget-object v1, p0, Lorg/webrtc/utils/NetworkMonitor;->autoDetector:Lorg/webrtc/utils/NetworkMonitorAutoDetect;

    if-nez v1, :cond_0

    .line 138
    new-instance v1, Lorg/webrtc/utils/NetworkMonitorAutoDetect;

    new-instance v2, Lorg/webrtc/utils/NetworkMonitor$1;

    invoke-direct {v2, p0}, Lorg/webrtc/utils/NetworkMonitor$1;-><init>(Lorg/webrtc/utils/NetworkMonitor;)V

    .line 154
    invoke-static {}, Lorg/webrtc/ali/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/webrtc/utils/NetworkMonitorAutoDetect;-><init>(Lorg/webrtc/utils/NetworkMonitorAutoDetect$Observer;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/webrtc/utils/NetworkMonitor;->autoDetector:Lorg/webrtc/utils/NetworkMonitorAutoDetect;

    .line 155
    iget-object v1, p0, Lorg/webrtc/utils/NetworkMonitor;->autoDetector:Lorg/webrtc/utils/NetworkMonitorAutoDetect;

    .line 156
    invoke-virtual {v1}, Lorg/webrtc/utils/NetworkMonitorAutoDetect;->getCurrentNetworkState()Lorg/webrtc/utils/NetworkMonitorAutoDetect$NetworkState;

    move-result-object v0

    .line 157
    .local v0, "networkState":Lorg/webrtc/utils/NetworkMonitorAutoDetect$NetworkState;
    invoke-static {v0}, Lorg/webrtc/utils/NetworkMonitorAutoDetect;->getConnectionType(Lorg/webrtc/utils/NetworkMonitorAutoDetect$NetworkState;)Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/webrtc/utils/NetworkMonitor;->updateCurrentConnectionType(Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;)V

    .line 158
    invoke-direct {p0}, Lorg/webrtc/utils/NetworkMonitor;->updateActiveNetworkList()V

    goto :goto_0
.end method

.method private updateActiveNetworkList()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 192
    iget-object v2, p0, Lorg/webrtc/utils/NetworkMonitor;->autoDetector:Lorg/webrtc/utils/NetworkMonitorAutoDetect;

    invoke-virtual {v2}, Lorg/webrtc/utils/NetworkMonitorAutoDetect;->getActiveNetworkList()Ljava/util/List;

    move-result-object v0

    .line 193
    .local v0, "networkInfoList":Ljava/util/List;, "Ljava/util/List<Lorg/webrtc/utils/NetworkMonitorAutoDetect$NetworkInformation;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 202
    :cond_0
    return-void

    .line 197
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v1, v2, [Lorg/webrtc/utils/NetworkMonitorAutoDetect$NetworkInformation;

    .line 198
    .local v1, "networkInfos":[Lorg/webrtc/utils/NetworkMonitorAutoDetect$NetworkInformation;
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 199
    iget-object v2, p0, Lorg/webrtc/utils/NetworkMonitor;->nativeNetworkObservers:Ljava/util/ArrayList;

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

    goto :goto_0
.end method

.method private updateCurrentConnectionType(Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;)V
    .locals 0
    .param p1, "newConnectionType"    # Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;

    .prologue
    .line 163
    iput-object p1, p0, Lorg/webrtc/utils/NetworkMonitor;->currentConnectionType:Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;

    .line 164
    invoke-direct {p0, p1}, Lorg/webrtc/utils/NetworkMonitor;->notifyObserversOfConnectionTypeChange(Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;)V

    .line 165
    return-void
.end method


# virtual methods
.method public getCurrentConnectionType()Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lorg/webrtc/utils/NetworkMonitor;->currentConnectionType:Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;

    return-object v0
.end method

.method public networkBindingSupported()Z
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lorg/webrtc/utils/NetworkMonitor;->autoDetector:Lorg/webrtc/utils/NetworkMonitorAutoDetect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/webrtc/utils/NetworkMonitor;->autoDetector:Lorg/webrtc/utils/NetworkMonitorAutoDetect;

    invoke-virtual {v0}, Lorg/webrtc/utils/NetworkMonitorAutoDetect;->supportNetworkCallback()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startMonitoring(J)V
    .locals 3
    .param p1, "nativeObserver"    # J

    .prologue
    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Start monitoring from native observer "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 95
    iget-object v0, p0, Lorg/webrtc/utils/NetworkMonitor;->nativeNetworkObservers:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/webrtc/utils/NetworkMonitor;->setAutoDetectConnectivityStateInternal(Z)V

    .line 97
    return-void
.end method

.method public stopMonitoring(J)V
    .locals 3
    .param p1, "nativeObserver"    # J

    .prologue
    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Stop monitoring from native observer "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 102
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/webrtc/utils/NetworkMonitor;->setAutoDetectConnectivityStateInternal(Z)V

    .line 103
    iget-object v0, p0, Lorg/webrtc/utils/NetworkMonitor;->nativeNetworkObservers:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 104
    return-void
.end method
