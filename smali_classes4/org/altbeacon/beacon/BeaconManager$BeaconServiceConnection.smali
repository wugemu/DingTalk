.class Lorg/altbeacon/beacon/BeaconManager$BeaconServiceConnection;
.super Ljava/lang/Object;
.source "BeaconManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/altbeacon/beacon/BeaconManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BeaconServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/altbeacon/beacon/BeaconManager;


# direct methods
.method private constructor <init>(Lorg/altbeacon/beacon/BeaconManager;)V
    .locals 0

    .prologue
    .line 963
    iput-object p1, p0, Lorg/altbeacon/beacon/BeaconManager$BeaconServiceConnection;->this$0:Lorg/altbeacon/beacon/BeaconManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 964
    return-void
.end method

.method synthetic constructor <init>(Lorg/altbeacon/beacon/BeaconManager;Lorg/altbeacon/beacon/BeaconManager$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/altbeacon/beacon/BeaconManager;
    .param p2, "x1"    # Lorg/altbeacon/beacon/BeaconManager$1;

    .prologue
    .line 962
    invoke-direct {p0, p1}, Lorg/altbeacon/beacon/BeaconManager$BeaconServiceConnection;-><init>(Lorg/altbeacon/beacon/BeaconManager;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 968
    const-string/jumbo v2, "BeaconManager"

    const-string/jumbo v3, "we have a connection to the service now"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 969
    iget-object v2, p0, Lorg/altbeacon/beacon/BeaconManager$BeaconServiceConnection;->this$0:Lorg/altbeacon/beacon/BeaconManager;

    new-instance v3, Landroid/os/Messenger;

    invoke-direct {v3, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {v2, v3}, Lorg/altbeacon/beacon/BeaconManager;->access$102(Lorg/altbeacon/beacon/BeaconManager;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 970
    iget-object v2, p0, Lorg/altbeacon/beacon/BeaconManager$BeaconServiceConnection;->this$0:Lorg/altbeacon/beacon/BeaconManager;

    invoke-static {v2}, Lorg/altbeacon/beacon/BeaconManager;->access$200(Lorg/altbeacon/beacon/BeaconManager;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v3

    monitor-enter v3

    .line 971
    :try_start_0
    iget-object v2, p0, Lorg/altbeacon/beacon/BeaconManager$BeaconServiceConnection;->this$0:Lorg/altbeacon/beacon/BeaconManager;

    invoke-static {v2}, Lorg/altbeacon/beacon/BeaconManager;->access$200(Lorg/altbeacon/beacon/BeaconManager;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 972
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lorg/altbeacon/beacon/BeaconConsumer;Lorg/altbeacon/beacon/BeaconManager$ConsumerInfo;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 973
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 975
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/altbeacon/beacon/BeaconConsumer;Lorg/altbeacon/beacon/BeaconManager$ConsumerInfo;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/altbeacon/beacon/BeaconManager$ConsumerInfo;

    iget-boolean v2, v2, Lorg/altbeacon/beacon/BeaconManager$ConsumerInfo;->isConnected:Z

    if-nez v2, :cond_0

    .line 976
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/altbeacon/beacon/BeaconConsumer;

    invoke-interface {v2}, Lorg/altbeacon/beacon/BeaconConsumer;->onBeaconServiceConnect()V

    .line 977
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/altbeacon/beacon/BeaconManager$ConsumerInfo;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lorg/altbeacon/beacon/BeaconManager$ConsumerInfo;->isConnected:Z

    goto :goto_0

    .line 980
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/altbeacon/beacon/BeaconConsumer;Lorg/altbeacon/beacon/BeaconManager$ConsumerInfo;>;"
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lorg/altbeacon/beacon/BeaconConsumer;Lorg/altbeacon/beacon/BeaconManager$ConsumerInfo;>;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lorg/altbeacon/beacon/BeaconConsumer;Lorg/altbeacon/beacon/BeaconManager$ConsumerInfo;>;>;"
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 985
    const-string/jumbo v0, "BeaconManager"

    const-string/jumbo v1, "onServiceDisconnected"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 986
    iget-object v0, p0, Lorg/altbeacon/beacon/BeaconManager$BeaconServiceConnection;->this$0:Lorg/altbeacon/beacon/BeaconManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/altbeacon/beacon/BeaconManager;->access$102(Lorg/altbeacon/beacon/BeaconManager;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 987
    return-void
.end method
