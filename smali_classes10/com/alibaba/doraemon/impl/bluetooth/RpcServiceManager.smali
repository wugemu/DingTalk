.class public Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;
.super Ljava/lang/Object;
.source "RpcServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager$ServiceInfo;,
        Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager$BluetoothInternalListener;,
        Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager$BluetoothServerStateListener;
    }
.end annotation


# static fields
.field private static final MAX_CLIENT:I = 0x5

.field private static TAG:Ljava/lang/String;

.field private static sRpcServiceManager:Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;


# instance fields
.field private mBluetoothInternalListener:Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager$BluetoothInternalListener;

.field private mBluetoothServerListener:Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager$BluetoothServerStateListener;

.field private mChannelsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel;",
            ">;>;"
        }
    .end annotation
.end field

.field private mListenersMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mNfcDataPack:Lcom/alibaba/doraemon/impl/nfcprotocol/NfcDataPack;

.field private mPacketCast:Ljaf;

.field private mServicesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager$ServiceInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-string/jumbo v0, "RpcServiceManager"

    sput-object v0, Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;->mListenersMap:Ljava/util/Map;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;->mChannelsMap:Ljava/util/Map;

    .line 44
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;->mServicesMap:Ljava/util/Map;

    .line 46
    new-instance v0, Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager$BluetoothServerStateListener;

    invoke-direct {v0, p0}, Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager$BluetoothServerStateListener;-><init>(Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;)V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;->mBluetoothServerListener:Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager$BluetoothServerStateListener;

    .line 47
    new-instance v0, Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager$BluetoothInternalListener;

    invoke-direct {v0, p0}, Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager$BluetoothInternalListener;-><init>(Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;)V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;->mBluetoothInternalListener:Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager$BluetoothInternalListener;

    .line 48
    new-instance v0, Lcom/alibaba/doraemon/impl/nfcprotocol/NfcDataPack;

    invoke-direct {v0}, Lcom/alibaba/doraemon/impl/nfcprotocol/NfcDataPack;-><init>()V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;->mNfcDataPack:Lcom/alibaba/doraemon/impl/nfcprotocol/NfcDataPack;

    .line 49
    const-string/jumbo v0, "msgpack"

    invoke-static {v0}, Ljad;->a(Ljava/lang/String;)Ljac;

    move-result-object v0

    check-cast v0, Ljaf;

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;->mPacketCast:Ljaf;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;->mChannelsMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;)Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager$BluetoothInternalListener;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;->mBluetoothInternalListener:Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager$BluetoothInternalListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;->mListenersMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;->mServicesMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$400(Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;)Ljaf;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;->mPacketCast:Ljaf;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;
    .locals 2

    .prologue
    .line 53
    sget-object v0, Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;->sRpcServiceManager:Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;

    if-nez v0, :cond_1

    .line 54
    const-class v1, Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;

    monitor-enter v1

    .line 55
    :try_start_0
    sget-object v0, Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;->sRpcServiceManager:Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;

    invoke-direct {v0}, Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;-><init>()V

    sput-object v0, Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;->sRpcServiceManager:Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;

    .line 57
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    :cond_1
    sget-object v0, Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;->sRpcServiceManager:Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;

    return-object v0

    .line 57
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private parseService(Ljava/lang/Object;)Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager$ServiceInfo;
    .locals 8
    .param p1, "service"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 136
    new-instance v3, Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager$ServiceInfo;

    invoke-direct {v3, p0}, Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager$ServiceInfo;-><init>(Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;)V

    .line 137
    .local v3, "serviceInfo":Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager$ServiceInfo;
    iput-object p1, v3, Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager$ServiceInfo;->mService:Ljava/lang/Object;

    .line 138
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 139
    .local v2, "serviceClass":Ljava/lang/Class;
    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    .line 140
    .local v1, "methods":[Ljava/lang/reflect/Method;
    array-length v5, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v0, v1, v4

    .line 141
    .local v0, "method":Ljava/lang/reflect/Method;
    iget-object v6, v3, Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager$ServiceInfo;->mMethodMap:Ljava/util/HashMap;

    if-nez v6, :cond_0

    .line 142
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, v3, Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager$ServiceInfo;->mMethodMap:Ljava/util/HashMap;

    .line 143
    :cond_0
    iget-object v6, v3, Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager$ServiceInfo;->mMethodMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 144
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "method name must not be same"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 147
    :cond_1
    iget-object v6, v3, Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager$ServiceInfo;->mMethodMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 140
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 151
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :cond_2
    return-object v3
.end method


# virtual methods
.method public addService(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;)Z
    .locals 6
    .param p1, "service"    # Ljava/lang/Object;
    .param p2, "bluetoothId"    # Ljava/lang/String;
    .param p3, "clientClass"    # Ljava/lang/Class;
    .param p4, "listener"    # Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 65
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;->mServicesMap:Ljava/util/Map;

    invoke-interface {v4, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 66
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;->mServicesMap:Ljava/util/Map;

    invoke-interface {v4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 67
    .local v3, "services":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager$ServiceInfo;>;"
    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 68
    const/4 v4, 0x0

    .line 97
    :goto_0
    return v4

    .line 72
    .end local v3    # "services":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager$ServiceInfo;>;"
    :cond_0
    invoke-direct {p0, p1}, Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;->parseService(Ljava/lang/Object;)Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager$ServiceInfo;

    move-result-object v1

    .line 73
    .local v1, "info":Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager$ServiceInfo;
    iput-object p4, v1, Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager$ServiceInfo;->mStateListener:Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;

    .line 74
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;->mServicesMap:Ljava/util/Map;

    invoke-interface {v4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 75
    .restart local v3    # "services":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager$ServiceInfo;>;"
    if-nez v3, :cond_1

    .line 76
    new-instance v3, Ljava/util/HashMap;

    .end local v3    # "services":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager$ServiceInfo;>;"
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 77
    .restart local v3    # "services":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager$ServiceInfo;>;"
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;->mServicesMap:Ljava/util/Map;

    invoke-interface {v4, p2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    :cond_1
    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;->mListenersMap:Ljava/util/Map;

    invoke-interface {v4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 84
    .local v2, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;>;"
    if-nez v2, :cond_2

    .line 85
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .restart local v2    # "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;>;"
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;->mListenersMap:Ljava/util/Map;

    invoke-interface {v4, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    :cond_2
    invoke-interface {v2, p4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 89
    invoke-interface {v2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    :cond_3
    invoke-static {}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager;->getInstance()Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager;

    move-result-object v4

    invoke-static {p2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager;->createServerChanel(Ljava/util/UUID;)Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;

    move-result-object v0

    .line 95
    .local v0, "bluetoothServer":Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;->mBluetoothServerListener:Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager$BluetoothServerStateListener;

    iget-object v5, p0, Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;->mBluetoothInternalListener:Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager$BluetoothInternalListener;

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;->start(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer$BluetoothServerListener;Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;)V

    .line 97
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public restartService()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 101
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;->mServicesMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 102
    .local v1, "bluetoothIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 103
    .local v0, "bluetoothId":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager;->getInstance()Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager;

    move-result-object v4

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager;->stopServerChannel(Ljava/util/UUID;)V

    .line 104
    invoke-static {}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager;->getInstance()Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager;

    move-result-object v4

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager;->createServerChanel(Ljava/util/UUID;)Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;

    move-result-object v2

    .line 105
    .local v2, "bluetoothServer":Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;->mBluetoothServerListener:Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager$BluetoothServerStateListener;

    iget-object v5, p0, Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;->mBluetoothInternalListener:Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager$BluetoothInternalListener;

    invoke-virtual {v2, v4, v5}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;->start(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer$BluetoothServerListener;Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;)V

    goto :goto_0

    .line 107
    .end local v0    # "bluetoothId":Ljava/lang/String;
    .end local v2    # "bluetoothServer":Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;
    :cond_0
    return-void
.end method

.method public stopService(Ljava/lang/String;Ljava/lang/Class;)Z
    .locals 5
    .param p1, "bluetoothId"    # Ljava/lang/String;
    .param p2, "clientClass"    # Ljava/lang/Class;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 110
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;->mServicesMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 111
    .local v2, "services":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager$ServiceInfo;>;"
    if-nez v2, :cond_1

    .line 132
    :cond_0
    :goto_0
    return v3

    .line 114
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager$ServiceInfo;

    .line 115
    .local v1, "serviceinfo":Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager$ServiceInfo;
    if-eqz v1, :cond_0

    .line 119
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;->mListenersMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 120
    .local v0, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;>;"
    if-eqz v0, :cond_2

    .line 121
    iget-object v3, v1, Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager$ServiceInfo;->mStateListener:Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;

    invoke-interface {v0, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 124
    :cond_2
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    if-nez v3, :cond_3

    .line 125
    invoke-static {}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager;->getInstance()Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager;

    move-result-object v3

    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager;->stopServerChannel(Ljava/util/UUID;)V

    .line 132
    :cond_3
    const/4 v3, 0x1

    goto :goto_0
.end method
