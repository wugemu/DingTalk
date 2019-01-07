.class public Lcom/alibaba/doraemon/impl/bluetooth/BluetoothMagicianImpl;
.super Ljava/lang/Object;
.source "BluetoothMagicianImpl.java"

# interfaces
.implements Lcom/alibaba/doraemon/bluetooth/BluetoothMagician;


# instance fields
.field private mBleBluetoothScanner:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;

.field private mBleCharacteristic:Lcom/alibaba/doraemon/impl/bluetooth/BleCharacteristic;

.field private mBleServerBroadcast:Lcom/alibaba/doraemon/impl/bluetooth/BleServerBroadcast;

.field private mBleServerScanner:Lcom/alibaba/doraemon/impl/bluetooth/BleServerScanner;

.field private mBluetoothCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mBluetoothChannelManager:Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager;

.field private mClassicBluetoothScanner:Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;

.field private mHandler:Landroid/os/Handler;

.field private mIBeaconBraodcast:Lcom/alibaba/doraemon/impl/bluetooth/IBeaconBroadcast;

.field private mProxys:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothMagicianImpl;->mProxys:Ljava/util/Map;

    .line 40
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothMagicianImpl;->mBluetoothCache:Ljava/util/Map;

    .line 49
    new-instance v0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager;

    invoke-direct {v0}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager;-><init>()V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothMagicianImpl;->mBluetoothChannelManager:Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager;

    .line 50
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothMagicianImpl;->mHandler:Landroid/os/Handler;

    .line 51
    new-instance v0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;

    invoke-direct {v0}, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;-><init>()V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothMagicianImpl;->mClassicBluetoothScanner:Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;

    .line 52
    new-instance v0, Lcom/alibaba/doraemon/impl/bluetooth/IBeaconBroadcast;

    invoke-direct {v0}, Lcom/alibaba/doraemon/impl/bluetooth/IBeaconBroadcast;-><init>()V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothMagicianImpl;->mIBeaconBraodcast:Lcom/alibaba/doraemon/impl/bluetooth/IBeaconBroadcast;

    .line 53
    new-instance v0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;

    invoke-direct {v0}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;-><init>()V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothMagicianImpl;->mBleBluetoothScanner:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;

    .line 54
    new-instance v0, Lcom/alibaba/doraemon/impl/bluetooth/BleServerScanner;

    invoke-direct {v0}, Lcom/alibaba/doraemon/impl/bluetooth/BleServerScanner;-><init>()V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothMagicianImpl;->mBleServerScanner:Lcom/alibaba/doraemon/impl/bluetooth/BleServerScanner;

    .line 55
    new-instance v0, Lcom/alibaba/doraemon/impl/bluetooth/BleServerBroadcast;

    invoke-direct {v0}, Lcom/alibaba/doraemon/impl/bluetooth/BleServerBroadcast;-><init>()V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothMagicianImpl;->mBleServerBroadcast:Lcom/alibaba/doraemon/impl/bluetooth/BleServerBroadcast;

    .line 56
    return-void
.end method


# virtual methods
.method public addBuletoothName2Cache(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "bluetoothDevice"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 390
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothMagicianImpl;->mBluetoothCache:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    return-void
.end method

.method public createBleClient(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Ljava/lang/Class;Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;)Ljava/lang/Object;
    .locals 7
    .param p1, "bluetoothDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "bluetoothUUID"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/bluetooth/BluetoothDevice;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;",
            ")TT;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p3, "clientClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v5, 0x1

    .line 228
    new-instance v0, Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy;-><init>(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;Ljava/lang/Class;Z)V

    .line 229
    .local v0, "rpcProxy":Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    invoke-static {v1, v2, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v6

    .line 230
    .local v6, "ret":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothMagicianImpl;->mProxys:Ljava/util/Map;

    invoke-interface {v1, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    return-object v6
.end method

.method public createBleClient(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Ljava/lang/Class;Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;Landroid/app/Activity;)Ljava/lang/Object;
    .locals 3
    .param p1, "bluetoothDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "bluetoothUUID"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;
    .param p5, "activityLifecycle"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/bluetooth/BluetoothDevice;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;",
            "Landroid/app/Activity;",
            ")TT;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 236
    .local p3, "clientClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothMagicianImpl;->createBleClient(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Ljava/lang/Class;Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;)Ljava/lang/Object;

    move-result-object v1

    .line 237
    .local v1, "ret":Ljava/lang/Object;, "TT;"
    if-eqz p5, :cond_0

    .line 238
    const-string/jumbo v2, "LIFECYCLE"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

    .line 239
    .local v0, "lifecycleMonitor":Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;
    new-instance v2, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothMagicianImpl$4;

    invoke-direct {v2, p0, p5, v1, v0}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothMagicianImpl$4;-><init>(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothMagicianImpl;Landroid/app/Activity;Ljava/lang/Object;Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;)V

    invoke-interface {v0, v2}, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;->registerActivityLifecycleCallbacks(Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompat;)V

    .line 278
    .end local v0    # "lifecycleMonitor":Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;
    :cond_0
    return-object v1
.end method

.method public createBleClientByAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;)Ljava/lang/Object;
    .locals 8
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "bluetoothUUID"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;",
            ")TT;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p3, "clientClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v6, 0x1

    .line 330
    new-instance v0, Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy;

    const-string/jumbo v5, "MAC_"

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;Ljava/lang/Class;Ljava/lang/String;Z)V

    .line 331
    .local v0, "rpcProxy":Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    invoke-static {v1, v2, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v7

    .line 332
    .local v7, "ret":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothMagicianImpl;->mProxys:Ljava/util/Map;

    invoke-interface {v1, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    return-object v7
.end method

.method public createBleClientByAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;Landroid/app/Activity;)Ljava/lang/Object;
    .locals 3
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "bluetoothUUID"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;
    .param p5, "activityLifecycle"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;",
            "Landroid/app/Activity;",
            ")TT;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 283
    .local p3, "clientClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothMagicianImpl;->createBleClientByAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;)Ljava/lang/Object;

    move-result-object v1

    .line 284
    .local v1, "ret":Ljava/lang/Object;, "TT;"
    if-eqz p5, :cond_0

    .line 285
    const-string/jumbo v2, "LIFECYCLE"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

    .line 286
    .local v0, "lifecycleMonitor":Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;
    new-instance v2, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothMagicianImpl$5;

    invoke-direct {v2, p0, p5, v1, v0}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothMagicianImpl$5;-><init>(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothMagicianImpl;Landroid/app/Activity;Ljava/lang/Object;Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;)V

    invoke-interface {v0, v2}, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;->registerActivityLifecycleCallbacks(Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompat;)V

    .line 325
    .end local v0    # "lifecycleMonitor":Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;
    :cond_0
    return-object v1
.end method

.method public createClient(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Ljava/lang/Class;Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;)Ljava/lang/Object;
    .locals 7
    .param p1, "bluetoothDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "bluetoothUUID"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/bluetooth/BluetoothDevice;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;",
            ")TT;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p3, "clientClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v5, 0x0

    .line 173
    new-instance v0, Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy;-><init>(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;Ljava/lang/Class;Z)V

    .line 174
    .local v0, "rpcProxy":Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    aput-object p3, v2, v5

    invoke-static {v1, v2, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v6

    .line 175
    .local v6, "ret":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothMagicianImpl;->mProxys:Ljava/util/Map;

    invoke-interface {v1, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    return-object v6
.end method

.method public createClient(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Ljava/lang/Class;Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;Landroid/app/Activity;)Ljava/lang/Object;
    .locals 3
    .param p1, "bluetoothDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "bluetoothUUID"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;
    .param p5, "activityLifecycle"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/bluetooth/BluetoothDevice;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;",
            "Landroid/app/Activity;",
            ")TT;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 181
    .local p3, "clientClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothMagicianImpl;->createClient(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Ljava/lang/Class;Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;)Ljava/lang/Object;

    move-result-object v1

    .line 182
    .local v1, "ret":Ljava/lang/Object;, "TT;"
    if-eqz p5, :cond_0

    .line 183
    const-string/jumbo v2, "LIFECYCLE"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

    .line 184
    .local v0, "lifecycleMonitor":Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;
    new-instance v2, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothMagicianImpl$3;

    invoke-direct {v2, p0, p5, v1, v0}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothMagicianImpl$3;-><init>(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothMagicianImpl;Landroid/app/Activity;Ljava/lang/Object;Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;)V

    invoke-interface {v0, v2}, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;->registerActivityLifecycleCallbacks(Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompat;)V

    .line 223
    .end local v0    # "lifecycleMonitor":Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;
    :cond_0
    return-object v1
.end method

.method public declared-synchronized createClient(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;)Ljava/lang/Object;
    .locals 8
    .param p1, "bluetoothName"    # Ljava/lang/String;
    .param p2, "bluetoothId"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;",
            ")TT;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 60
    .local p3, "clientClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy;

    const-string/jumbo v5, "NAME_"

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;Ljava/lang/Class;Ljava/lang/String;Z)V

    .line 61
    .local v0, "rpcProxy":Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    invoke-static {v1, v2, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v7

    .line 62
    .local v7, "ret":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothMagicianImpl;->mProxys:Ljava/util/Map;

    invoke-interface {v1, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    monitor-exit p0

    return-object v7

    .line 60
    .end local v0    # "rpcProxy":Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy;
    .end local v7    # "ret":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public createClient(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;Landroid/app/Activity;)Ljava/lang/Object;
    .locals 3
    .param p1, "bluetoothName"    # Ljava/lang/String;
    .param p2, "bluetoothUUID"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;
    .param p5, "activityLifecycle"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;",
            "Landroid/app/Activity;",
            ")TT;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 125
    .local p3, "clientClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothMagicianImpl;->createClient(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;)Ljava/lang/Object;

    move-result-object v1

    .line 126
    .local v1, "ret":Ljava/lang/Object;, "TT;"
    if-eqz p5, :cond_0

    .line 127
    const-string/jumbo v2, "LIFECYCLE"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

    .line 128
    .local v0, "lifecycleMonitor":Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;
    new-instance v2, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothMagicianImpl$2;

    invoke-direct {v2, p0, p5, v1, v0}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothMagicianImpl$2;-><init>(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothMagicianImpl;Landroid/app/Activity;Ljava/lang/Object;Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;)V

    invoke-interface {v0, v2}, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;->registerActivityLifecycleCallbacks(Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompat;)V

    .line 168
    .end local v0    # "lifecycleMonitor":Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;
    :cond_0
    return-object v1
.end method

.method public createClientByAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;)Ljava/lang/Object;
    .locals 8
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "bluetoothUUID"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;",
            ")TT;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p3, "clientClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v6, 0x0

    .line 116
    new-instance v0, Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy;

    const-string/jumbo v5, "MAC_"

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;Ljava/lang/Class;Ljava/lang/String;Z)V

    .line 117
    .local v0, "rpcProxy":Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    aput-object p3, v2, v6

    invoke-static {v1, v2, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v7

    .line 118
    .local v7, "ret":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothMagicianImpl;->mProxys:Ljava/util/Map;

    invoke-interface {v1, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    return-object v7
.end method

.method public createClientByAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;Landroid/app/Activity;)Ljava/lang/Object;
    .locals 3
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "bluetoothUUID"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;
    .param p5, "activityLifecycle"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;",
            "Landroid/app/Activity;",
            ")TT;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 68
    .local p3, "clientClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothMagicianImpl;->createClientByAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;)Ljava/lang/Object;

    move-result-object v1

    .line 69
    .local v1, "ret":Ljava/lang/Object;, "TT;"
    if-eqz p5, :cond_0

    .line 70
    const-string/jumbo v2, "LIFECYCLE"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

    .line 71
    .local v0, "lifecycleMonitor":Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;
    new-instance v2, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothMagicianImpl$1;

    invoke-direct {v2, p0, p5, v1, v0}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothMagicianImpl$1;-><init>(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothMagicianImpl;Landroid/app/Activity;Ljava/lang/Object;Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;)V

    invoke-interface {v0, v2}, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;->registerActivityLifecycleCallbacks(Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompat;)V

    .line 111
    .end local v0    # "lifecycleMonitor":Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;
    :cond_0
    return-object v1
.end method

.method public generateBleCharacteristic()Lcom/alibaba/doraemon/impl/bluetooth/BleCharacteristic;
    .locals 1

    .prologue
    .line 410
    new-instance v0, Lcom/alibaba/doraemon/impl/bluetooth/BleCharacteristic;

    invoke-direct {v0}, Lcom/alibaba/doraemon/impl/bluetooth/BleCharacteristic;-><init>()V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothMagicianImpl;->mBleCharacteristic:Lcom/alibaba/doraemon/impl/bluetooth/BleCharacteristic;

    .line 411
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothMagicianImpl;->mBleCharacteristic:Lcom/alibaba/doraemon/impl/bluetooth/BleCharacteristic;

    return-object v0
.end method

.method public getBleCharacteristic()Lcom/alibaba/doraemon/impl/bluetooth/BleCharacteristic;
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothMagicianImpl;->mBleCharacteristic:Lcom/alibaba/doraemon/impl/bluetooth/BleCharacteristic;

    return-object v0
.end method

.method public getBluetoothNameFromeCache(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 490
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothMagicianImpl;->mBluetoothCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public quickScan()V
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothMagicianImpl;->mBleBluetoothScanner:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->quickScan()V

    .line 441
    return-void
.end method

.method public releaseClient(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 339
    .local p1, "client":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothMagicianImpl;->mProxys:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy;

    .line 340
    .local v0, "rpcProxy":Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy;
    if-eqz v0, :cond_0

    .line 341
    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/bluetooth/RpcProxy;->release()V

    .line 342
    :cond_0
    return-void
.end method

.method public releaseClient(Ljava/lang/Object;J)V
    .locals 2
    .param p2, "delay"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)V"
        }
    .end annotation

    .prologue
    .line 346
    .local p1, "client":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothMagicianImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothMagicianImpl$6;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothMagicianImpl$6;-><init>(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothMagicianImpl;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 352
    return-void
.end method

.method public scanBleBeaconAdvertising(Ljava/lang/String;IILcom/alibaba/doraemon/bluetooth/BleBeaconScanListener;)V
    .locals 1
    .param p1, "bleBeaconUUID"    # Ljava/lang/String;
    .param p2, "version1"    # I
    .param p3, "version2"    # I
    .param p4, "scanListener"    # Lcom/alibaba/doraemon/bluetooth/BleBeaconScanListener;

    .prologue
    .line 405
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothMagicianImpl;->mBleBluetoothScanner:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;

    invoke-virtual {v0, p4, p1, p2, p3}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->startFind(Lcom/alibaba/doraemon/bluetooth/BeaconMonitorListener;Ljava/lang/String;II)V

    .line 406
    return-void
.end method

.method public scanBleServer(Ljava/lang/String;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V
    .locals 1
    .param p1, "serverUUID"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    .prologue
    .line 480
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothMagicianImpl;->mBleServerScanner:Lcom/alibaba/doraemon/impl/bluetooth/BleServerScanner;

    invoke-virtual {v0, p2, p1}, Lcom/alibaba/doraemon/impl/bluetooth/BleServerScanner;->startFind(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;Ljava/lang/String;)V

    .line 481
    return-void
.end method

.method public scanBluetoothDevice(Lcom/alibaba/doraemon/bluetooth/BluetoothScanListener;)V
    .locals 1
    .param p1, "scanListener"    # Lcom/alibaba/doraemon/bluetooth/BluetoothScanListener;

    .prologue
    .line 380
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothMagicianImpl;->mClassicBluetoothScanner:Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;

    invoke-virtual {v0, p1}, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;->startFind(Lcom/alibaba/doraemon/bluetooth/BluetoothScanListener;)V

    .line 381
    return-void
.end method

.method public scanIBeaconAdvertising(Ljava/lang/String;IILcom/alibaba/doraemon/bluetooth/BeaconScanListener;)V
    .locals 1
    .param p1, "ibeaconUUID"    # Ljava/lang/String;
    .param p2, "version1"    # I
    .param p3, "version2"    # I
    .param p4, "scanListener"    # Lcom/alibaba/doraemon/bluetooth/BeaconScanListener;

    .prologue
    .line 400
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothMagicianImpl;->mBleBluetoothScanner:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;

    invoke-virtual {v0, p4, p1, p2, p3}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->startFind(Lcom/alibaba/doraemon/bluetooth/BeaconMonitorListener;Ljava/lang/String;II)V

    .line 401
    return-void
.end method

.method public setBleBeaconScanBackgroundMode(Z)V
    .locals 1
    .param p1, "backgroundMode"    # Z

    .prologue
    .line 500
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothMagicianImpl;->mBleBluetoothScanner:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;

    invoke-virtual {v0, p1}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->setBackgroundMode(Z)V

    .line 501
    return-void
.end method

.method public setBluetoothName(Ljava/lang/String;)V
    .locals 3
    .param p1, "bluetoothName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 367
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-le v1, v2, :cond_1

    .line 368
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "bluetooth"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothManager;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 372
    .local v0, "bluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    :goto_0
    if-eqz v0, :cond_0

    .line 373
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->setName(Ljava/lang/String;)Z

    .line 375
    :cond_0
    invoke-static {}, Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;->getInstance()Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;->restartService()V

    .line 376
    return-void

    .line 370
    .end local v0    # "bluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    :cond_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .restart local v0    # "bluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    goto :goto_0
.end method

.method public setScanPeriod(Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod;)V
    .locals 1
    .param p1, "scanPeriod"    # Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod;

    .prologue
    .line 421
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothMagicianImpl;->mBleBluetoothScanner:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothMagicianImpl;->mBleBluetoothScanner:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;

    invoke-virtual {v0, p1}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->setScanPeriod(Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod;)V

    .line 424
    :cond_0
    return-void
.end method

.method public startBeaconAdvertising(Lorg/altbeacon/beacon/Region;Lcom/alibaba/doraemon/bluetooth/BeaconMonitorListener;)V
    .locals 1
    .param p1, "region"    # Lorg/altbeacon/beacon/Region;
    .param p2, "listener"    # Lcom/alibaba/doraemon/bluetooth/BeaconMonitorListener;

    .prologue
    .line 460
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothMagicianImpl;->mBleBluetoothScanner:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;

    invoke-virtual {v0, p2, p1}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->startFind(Lcom/alibaba/doraemon/bluetooth/BeaconMonitorListener;Lorg/altbeacon/beacon/Region;)V

    .line 461
    return-void
.end method

.method public startBleServerAdvertising(Ljava/lang/String;Lcom/alibaba/doraemon/impl/bluetooth/advertise/AdvertisingBeacon;Lcom/alibaba/doraemon/impl/bluetooth/advertise/AdvertisingCallback;)V
    .locals 1
    .param p1, "serverUUID"    # Ljava/lang/String;
    .param p2, "advertisingBeacon"    # Lcom/alibaba/doraemon/impl/bluetooth/advertise/AdvertisingBeacon;
    .param p3, "advertisingCallback"    # Lcom/alibaba/doraemon/impl/bluetooth/advertise/AdvertisingCallback;

    .prologue
    .line 455
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothMagicianImpl;->mBleServerBroadcast:Lcom/alibaba/doraemon/impl/bluetooth/BleServerBroadcast;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alibaba/doraemon/impl/bluetooth/BleServerBroadcast;->broadcast(Ljava/lang/String;Lcom/alibaba/doraemon/impl/bluetooth/advertise/AdvertisingBeacon;Lcom/alibaba/doraemon/impl/bluetooth/advertise/AdvertisingCallback;)V

    .line 456
    return-void
.end method

.method public startIBeaconAdvertising(Ljava/lang/String;III)V
    .locals 1
    .param p1, "ibeaconUUID"    # Ljava/lang/String;
    .param p2, "version1"    # I
    .param p3, "version2"    # I
    .param p4, "txPower"    # I

    .prologue
    .line 445
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothMagicianImpl;->mIBeaconBraodcast:Lcom/alibaba/doraemon/impl/bluetooth/IBeaconBroadcast;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/alibaba/doraemon/impl/bluetooth/IBeaconBroadcast;->broadcast(Ljava/lang/String;III)V

    .line 446
    return-void
.end method

.method public startIBeaconAdvertising(Lorg/altbeacon/beacon/Beacon;)V
    .locals 1
    .param p1, "beacon"    # Lorg/altbeacon/beacon/Beacon;

    .prologue
    .line 450
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothMagicianImpl;->mIBeaconBraodcast:Lcom/alibaba/doraemon/impl/bluetooth/IBeaconBroadcast;

    invoke-virtual {v0, p1}, Lcom/alibaba/doraemon/impl/bluetooth/IBeaconBroadcast;->broadcast(Lorg/altbeacon/beacon/Beacon;)V

    .line 451
    return-void
.end method

.method public startService(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;)Z
    .locals 1
    .param p1, "bluetoothId"    # Ljava/lang/String;
    .param p2, "service"    # Ljava/lang/Object;
    .param p3, "clientClass"    # Ljava/lang/Class;
    .param p4, "listener"    # Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;

    .prologue
    .line 356
    invoke-static {}, Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;->getInstance()Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;

    move-result-object v0

    invoke-virtual {v0, p2, p1, p3, p4}, Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;->addService(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;)Z

    move-result v0

    return v0
.end method

.method public stopBeaconAdvertising(Lorg/altbeacon/beacon/Region;Lcom/alibaba/doraemon/bluetooth/BeaconMonitorListener;)V
    .locals 1
    .param p1, "region"    # Lorg/altbeacon/beacon/Region;
    .param p2, "listener"    # Lcom/alibaba/doraemon/bluetooth/BeaconMonitorListener;

    .prologue
    .line 465
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothMagicianImpl;->mBleBluetoothScanner:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;

    invoke-virtual {v0, p2, p1}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->stopFind(Lcom/alibaba/doraemon/bluetooth/BeaconMonitorListener;Lorg/altbeacon/beacon/Region;)V

    .line 466
    return-void
.end method

.method public stopBleServerAdvertising()V
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothMagicianImpl;->mBleServerBroadcast:Lcom/alibaba/doraemon/impl/bluetooth/BleServerBroadcast;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/bluetooth/BleServerBroadcast;->stopBroadcast()V

    .line 476
    return-void
.end method

.method public stopIBeaconAdvertising()V
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothMagicianImpl;->mIBeaconBraodcast:Lcom/alibaba/doraemon/impl/bluetooth/IBeaconBroadcast;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/bluetooth/IBeaconBroadcast;->stopBroadcast()V

    .line 396
    return-void
.end method

.method public stopScanBleBeacon(Ljava/lang/String;IILcom/alibaba/doraemon/bluetooth/BleBeaconScanListener;)V
    .locals 1
    .param p1, "bleBeaconUUID"    # Ljava/lang/String;
    .param p2, "version1"    # I
    .param p3, "version2"    # I
    .param p4, "scanListener"    # Lcom/alibaba/doraemon/bluetooth/BleBeaconScanListener;

    .prologue
    .line 470
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothMagicianImpl;->mBleBluetoothScanner:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;

    invoke-virtual {v0, p4, p1, p2, p3}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->stopFind(Lcom/alibaba/doraemon/bluetooth/BeaconMonitorListener;Ljava/lang/String;II)V

    .line 471
    return-void
.end method

.method public stopScanBleServer(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V
    .locals 1
    .param p1, "listener"    # Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    .prologue
    .line 485
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothMagicianImpl;->mBleServerScanner:Lcom/alibaba/doraemon/impl/bluetooth/BleServerScanner;

    invoke-virtual {v0, p1}, Lcom/alibaba/doraemon/impl/bluetooth/BleServerScanner;->stopFind(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    .line 486
    return-void
.end method

.method public stopScanBluetoothDevice(Lcom/alibaba/doraemon/bluetooth/BluetoothScanListener;)V
    .locals 1
    .param p1, "scanListener"    # Lcom/alibaba/doraemon/bluetooth/BluetoothScanListener;

    .prologue
    .line 385
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothMagicianImpl;->mClassicBluetoothScanner:Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;

    invoke-virtual {v0, p1}, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;->stopScan(Lcom/alibaba/doraemon/bluetooth/BluetoothScanListener;)V

    .line 386
    return-void
.end method

.method public stopScanIBeacon(Ljava/lang/String;IILcom/alibaba/doraemon/bluetooth/BeaconScanListener;)V
    .locals 1
    .param p1, "ibeaconUUID"    # Ljava/lang/String;
    .param p2, "version1"    # I
    .param p3, "version2"    # I
    .param p4, "scanListener"    # Lcom/alibaba/doraemon/bluetooth/BeaconScanListener;

    .prologue
    .line 435
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothMagicianImpl;->mBleBluetoothScanner:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;

    invoke-virtual {v0, p4, p1, p2, p3}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->stopFind(Lcom/alibaba/doraemon/bluetooth/BeaconMonitorListener;Ljava/lang/String;II)V

    .line 436
    return-void
.end method

.method public stopService(Ljava/lang/String;Ljava/lang/Class;)Z
    .locals 1
    .param p1, "bluetoothId"    # Ljava/lang/String;
    .param p2, "clientClass"    # Ljava/lang/Class;

    .prologue
    .line 361
    invoke-static {}, Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;->getInstance()Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;->stopService(Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public supportAdvertise()Z
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothMagicianImpl;->mBleServerBroadcast:Lcom/alibaba/doraemon/impl/bluetooth/BleServerBroadcast;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/bluetooth/BleServerBroadcast;->supportAdvertise()Z

    move-result v0

    return v0
.end method

.method public switchScanMode(Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod$ScanMode;)V
    .locals 1
    .param p1, "mode"    # Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod$ScanMode;

    .prologue
    .line 428
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothMagicianImpl;->mBleBluetoothScanner:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothMagicianImpl;->mBleBluetoothScanner:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;

    invoke-virtual {v0, p1}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->setScanMode(Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod$ScanMode;)V

    .line 431
    :cond_0
    return-void
.end method

.method public tryUnbindBeaconServiceIfNotWork()V
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothMagicianImpl;->mBleBluetoothScanner:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->tryUnbindBeaconServiceIfNotWork()V

    .line 506
    return-void
.end method
