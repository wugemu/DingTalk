.class public Lorg/altbeacon/beacon/service/BeaconService;
.super Landroid/app/Service;
.source "BeaconService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/altbeacon/beacon/service/BeaconService$ScanProcessor;,
        Lorg/altbeacon/beacon/service/BeaconService$ScanData;,
        Lorg/altbeacon/beacon/service/BeaconService$IncomingHandler;,
        Lorg/altbeacon/beacon/service/BeaconService$BeaconBinder;
    }
.end annotation


# static fields
.field public static final MSG_SET_SCAN_PERIODS:I = 0x6

.field public static final MSG_START_MONITORING:I = 0x4

.field public static final MSG_START_RANGING:I = 0x2

.field public static final MSG_STOP_MONITORING:I = 0x5

.field public static final MSG_STOP_RANGING:I = 0x3

.field public static final TAG:Ljava/lang/String; = "BeaconService"

.field private static final sBeaconExecutor:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private beaconManager:Lorg/altbeacon/beacon/BeaconManager;

.field private beaconParsers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lorg/altbeacon/beacon/BeaconParser;",
            ">;"
        }
    .end annotation
.end field

.field private bluetoothCrashResolver:Lorg/altbeacon/bluetooth/BluetoothCrashResolver;

.field private defaultDistanceCalculator:Lorg/altbeacon/beacon/distance/DistanceCalculator;

.field private final handler:Landroid/os/Handler;

.field private mBackgroundFlag:Z

.field protected final mCycledLeScanCallback:Lorg/altbeacon/beacon/service/scanner/CycledLeScanCallback;

.field private mCycledScanner:Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;

.field private mExtraDataBeaconTracker:Lorg/altbeacon/beacon/service/ExtraDataBeaconTracker;

.field final mMessenger:Landroid/os/Messenger;

.field private monitoringStatus:Lorg/altbeacon/beacon/service/MonitoringStatus;

.field private final rangedRegionState:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/altbeacon/beacon/Region;",
            "Lorg/altbeacon/beacon/service/RangeState;",
            ">;"
        }
    .end annotation
.end field

.field private simulatedScanData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/altbeacon/beacon/Beacon;",
            ">;"
        }
    .end annotation
.end field

.field trackedBeaconsPacketCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 92
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lorg/altbeacon/beacon/service/BeaconService;->sBeaconExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->rangedRegionState:Ljava/util/Map;

    .line 84
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->handler:Landroid/os/Handler;

    .line 86
    iput-object v1, p0, Lorg/altbeacon/beacon/service/BeaconService;->defaultDistanceCalculator:Lorg/altbeacon/beacon/distance/DistanceCalculator;

    .line 88
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->beaconParsers:Ljava/util/Set;

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->mBackgroundFlag:Z

    .line 116
    iput-object v1, p0, Lorg/altbeacon/beacon/service/BeaconService;->simulatedScanData:Ljava/util/List;

    .line 187
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lorg/altbeacon/beacon/service/BeaconService$IncomingHandler;

    invoke-direct {v1, p0}, Lorg/altbeacon/beacon/service/BeaconService$IncomingHandler;-><init>(Lorg/altbeacon/beacon/service/BeaconService;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->mMessenger:Landroid/os/Messenger;

    .line 342
    new-instance v0, Lorg/altbeacon/beacon/service/BeaconService$1;

    invoke-direct {v0, p0}, Lorg/altbeacon/beacon/service/BeaconService$1;-><init>(Lorg/altbeacon/beacon/service/BeaconService;)V

    iput-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->mCycledLeScanCallback:Lorg/altbeacon/beacon/service/scanner/CycledLeScanCallback;

    .line 455
    return-void
.end method

.method static synthetic access$000(Lorg/altbeacon/beacon/service/BeaconService;)Lorg/altbeacon/beacon/BeaconManager;
    .locals 1
    .param p0, "x0"    # Lorg/altbeacon/beacon/service/BeaconService;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->beaconManager:Lorg/altbeacon/beacon/BeaconManager;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lorg/altbeacon/beacon/service/BeaconService;->sBeaconExecutor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic access$200(Lorg/altbeacon/beacon/service/BeaconService;)Lorg/altbeacon/beacon/service/MonitoringStatus;
    .locals 1
    .param p0, "x0"    # Lorg/altbeacon/beacon/service/BeaconService;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->monitoringStatus:Lorg/altbeacon/beacon/service/MonitoringStatus;

    return-object v0
.end method

.method static synthetic access$300(Lorg/altbeacon/beacon/service/BeaconService;)V
    .locals 0
    .param p0, "x0"    # Lorg/altbeacon/beacon/service/BeaconService;

    .prologue
    .line 77
    invoke-direct {p0}, Lorg/altbeacon/beacon/service/BeaconService;->processRangeData()V

    return-void
.end method

.method static synthetic access$400(Lorg/altbeacon/beacon/service/BeaconService;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/altbeacon/beacon/service/BeaconService;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->simulatedScanData:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lorg/altbeacon/beacon/service/BeaconService;Lorg/altbeacon/beacon/Beacon;)V
    .locals 0
    .param p0, "x0"    # Lorg/altbeacon/beacon/service/BeaconService;
    .param p1, "x1"    # Lorg/altbeacon/beacon/Beacon;

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lorg/altbeacon/beacon/service/BeaconService;->processBeaconFromScan(Lorg/altbeacon/beacon/Beacon;)V

    return-void
.end method

.method static synthetic access$600(Lorg/altbeacon/beacon/service/BeaconService;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lorg/altbeacon/beacon/service/BeaconService;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->beaconParsers:Ljava/util/Set;

    return-object v0
.end method

.method private getRestartIntent()Landroid/app/PendingIntent;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 290
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/BeaconService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lorg/altbeacon/beacon/startup/StartupBroadcastReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 291
    .local v0, "restartIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/BeaconService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method private matchingRegions(Lorg/altbeacon/beacon/Beacon;Ljava/util/Collection;)Ljava/util/List;
    .locals 7
    .param p1, "beacon"    # Lorg/altbeacon/beacon/Beacon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/altbeacon/beacon/Beacon;",
            "Ljava/util/Collection",
            "<",
            "Lorg/altbeacon/beacon/Region;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lorg/altbeacon/beacon/Region;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 503
    .local p2, "regions":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/altbeacon/beacon/Region;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 504
    .local v0, "matched":Ljava/util/List;, "Ljava/util/List<Lorg/altbeacon/beacon/Region;>;"
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/altbeacon/beacon/Region;

    .line 505
    .local v1, "region":Lorg/altbeacon/beacon/Region;
    invoke-virtual {v1, p1}, Lorg/altbeacon/beacon/Region;->matchesBeacon(Lorg/altbeacon/beacon/Beacon;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 506
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 508
    :cond_0
    const-string/jumbo v3, "BeaconService"

    const-string/jumbo v4, "This region (%s) does not match beacon: %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-static {v3, v4, v5}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 511
    .end local v1    # "region":Lorg/altbeacon/beacon/Region;
    :cond_1
    return-object v0
.end method

.method private processBeaconFromScan(Lorg/altbeacon/beacon/Beacon;)V
    .locals 9
    .param p1, "beacon"    # Lorg/altbeacon/beacon/Beacon;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 404
    invoke-static {}, Lorg/altbeacon/beacon/service/Stats;->getInstance()Lorg/altbeacon/beacon/service/Stats;

    move-result-object v4

    invoke-virtual {v4}, Lorg/altbeacon/beacon/service/Stats;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 405
    invoke-static {}, Lorg/altbeacon/beacon/service/Stats;->getInstance()Lorg/altbeacon/beacon/service/Stats;

    move-result-object v4

    invoke-virtual {v4, p1}, Lorg/altbeacon/beacon/service/Stats;->log(Lorg/altbeacon/beacon/Beacon;)V

    .line 407
    :cond_0
    invoke-static {}, Lorg/altbeacon/beacon/logging/LogManager;->isVerboseLoggingEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 408
    const-string/jumbo v4, "BeaconService"

    const-string/jumbo v5, "beacon detected : %s"

    new-array v6, v6, [Ljava/lang/Object;

    .line 409
    invoke-virtual {p1}, Lorg/altbeacon/beacon/Beacon;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    .line 408
    invoke-static {v4, v5, v6}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 412
    :cond_1
    iget-object v4, p0, Lorg/altbeacon/beacon/service/BeaconService;->mExtraDataBeaconTracker:Lorg/altbeacon/beacon/service/ExtraDataBeaconTracker;

    invoke-virtual {v4, p1}, Lorg/altbeacon/beacon/service/ExtraDataBeaconTracker;->track(Lorg/altbeacon/beacon/Beacon;)Lorg/altbeacon/beacon/Beacon;

    move-result-object p1

    .line 415
    if-nez p1, :cond_3

    .line 416
    invoke-static {}, Lorg/altbeacon/beacon/logging/LogManager;->isVerboseLoggingEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 417
    const-string/jumbo v4, "BeaconService"

    const-string/jumbo v5, "not processing detections for GATT extra data beacon"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 440
    :cond_2
    :goto_0
    return-void

    .line 422
    :cond_3
    iget-object v4, p0, Lorg/altbeacon/beacon/service/BeaconService;->monitoringStatus:Lorg/altbeacon/beacon/service/MonitoringStatus;

    invoke-virtual {v4, p1}, Lorg/altbeacon/beacon/service/MonitoringStatus;->updateNewlyInsideInRegionsContaining(Lorg/altbeacon/beacon/Beacon;)V

    .line 426
    const-string/jumbo v4, "BeaconService"

    const-string/jumbo v5, "looking for ranging region matches for this beacon"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 427
    iget-object v5, p0, Lorg/altbeacon/beacon/service/BeaconService;->rangedRegionState:Ljava/util/Map;

    monitor-enter v5

    .line 428
    :try_start_0
    iget-object v4, p0, Lorg/altbeacon/beacon/service/BeaconService;->rangedRegionState:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lorg/altbeacon/beacon/service/BeaconService;->matchingRegions(Lorg/altbeacon/beacon/Beacon;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    .line 429
    .local v1, "matchedRegions":Ljava/util/List;, "Ljava/util/List<Lorg/altbeacon/beacon/Region;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 430
    .local v0, "matchedRegionIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/altbeacon/beacon/Region;>;"
    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 431
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/altbeacon/beacon/Region;

    .line 432
    .local v3, "region":Lorg/altbeacon/beacon/Region;
    const-string/jumbo v4, "BeaconService"

    const-string/jumbo v6, "matches ranging region: %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    invoke-static {v4, v6, v7}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 433
    iget-object v4, p0, Lorg/altbeacon/beacon/service/BeaconService;->rangedRegionState:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/altbeacon/beacon/service/RangeState;

    .line 434
    .local v2, "rangeState":Lorg/altbeacon/beacon/service/RangeState;
    if-eqz v2, :cond_4

    .line 435
    invoke-virtual {v2, p1}, Lorg/altbeacon/beacon/service/RangeState;->addBeacon(Lorg/altbeacon/beacon/Beacon;)V

    goto :goto_1

    .line 438
    .end local v0    # "matchedRegionIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/altbeacon/beacon/Region;>;"
    .end local v1    # "matchedRegions":Ljava/util/List;, "Ljava/util/List<Lorg/altbeacon/beacon/Region;>;"
    .end local v2    # "rangeState":Lorg/altbeacon/beacon/service/RangeState;
    .end local v3    # "region":Lorg/altbeacon/beacon/Region;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v0    # "matchedRegionIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/altbeacon/beacon/Region;>;"
    .restart local v1    # "matchedRegions":Ljava/util/List;, "Ljava/util/List<Lorg/altbeacon/beacon/Region;>;"
    :cond_5
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private processRangeData()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 394
    iget-object v3, p0, Lorg/altbeacon/beacon/service/BeaconService;->rangedRegionState:Ljava/util/Map;

    monitor-enter v3

    .line 395
    :try_start_0
    iget-object v2, p0, Lorg/altbeacon/beacon/service/BeaconService;->rangedRegionState:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/altbeacon/beacon/Region;

    .line 396
    .local v1, "region":Lorg/altbeacon/beacon/Region;
    iget-object v4, p0, Lorg/altbeacon/beacon/service/BeaconService;->rangedRegionState:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/altbeacon/beacon/service/RangeState;

    .line 397
    .local v0, "rangeState":Lorg/altbeacon/beacon/service/RangeState;
    const-string/jumbo v4, "BeaconService"

    const-string/jumbo v5, "Calling ranging callback"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 398
    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/RangeState;->getCallback()Lorg/altbeacon/beacon/service/Callback;

    move-result-object v4

    const-string/jumbo v5, "rangingData"

    new-instance v6, Lorg/altbeacon/beacon/service/RangingData;

    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/RangeState;->finalizeBeacons()Ljava/util/Collection;

    move-result-object v7

    invoke-direct {v6, v7, v1}, Lorg/altbeacon/beacon/service/RangingData;-><init>(Ljava/util/Collection;Lorg/altbeacon/beacon/Region;)V

    invoke-virtual {v4, p0, v5, v6}, Lorg/altbeacon/beacon/service/Callback;->call(Landroid/content/Context;Ljava/lang/String;Landroid/os/Parcelable;)Z

    goto :goto_0

    .line 400
    .end local v0    # "rangeState":Lorg/altbeacon/beacon/service/RangeState;
    .end local v1    # "region":Lorg/altbeacon/beacon/Region;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 250
    const-string/jumbo v0, "BeaconService"

    const-string/jumbo v1, "binding"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 251
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v13, 0x0

    .line 192
    const-string/jumbo v1, "BeaconService"

    const-string/jumbo v2, "beaconService version %s is starting up"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "2.9.3.13"

    aput-object v4, v3, v13

    invoke-static {v1, v2, v3}, Lorg/altbeacon/beacon/logging/LogManager;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 193
    new-instance v1, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;

    invoke-direct {v1, p0}, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/altbeacon/beacon/service/BeaconService;->bluetoothCrashResolver:Lorg/altbeacon/bluetooth/BluetoothCrashResolver;

    .line 194
    iget-object v1, p0, Lorg/altbeacon/beacon/service/BeaconService;->bluetoothCrashResolver:Lorg/altbeacon/bluetooth/BluetoothCrashResolver;

    invoke-virtual {v1}, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->start()V

    .line 196
    const-wide/16 v2, 0x44c

    const-wide/16 v4, 0x0

    iget-boolean v6, p0, Lorg/altbeacon/beacon/service/BeaconService;->mBackgroundFlag:Z

    iget-object v7, p0, Lorg/altbeacon/beacon/service/BeaconService;->mCycledLeScanCallback:Lorg/altbeacon/beacon/service/scanner/CycledLeScanCallback;

    iget-object v8, p0, Lorg/altbeacon/beacon/service/BeaconService;->bluetoothCrashResolver:Lorg/altbeacon/bluetooth/BluetoothCrashResolver;

    move-object v1, p0

    invoke-static/range {v1 .. v8}, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->createScanner(Landroid/content/Context;JJZLorg/altbeacon/beacon/service/scanner/CycledLeScanCallback;Lorg/altbeacon/bluetooth/BluetoothCrashResolver;)Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;

    move-result-object v1

    iput-object v1, p0, Lorg/altbeacon/beacon/service/BeaconService;->mCycledScanner:Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;

    .line 199
    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/BeaconService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/altbeacon/beacon/BeaconManager;->getInstanceForApplication(Landroid/content/Context;)Lorg/altbeacon/beacon/BeaconManager;

    move-result-object v1

    iput-object v1, p0, Lorg/altbeacon/beacon/service/BeaconService;->beaconManager:Lorg/altbeacon/beacon/BeaconManager;

    .line 202
    const/4 v12, 0x1

    .line 203
    .local v12, "matchBeaconsByServiceUUID":Z
    iget-object v1, p0, Lorg/altbeacon/beacon/service/BeaconService;->beaconManager:Lorg/altbeacon/beacon/BeaconManager;

    invoke-virtual {v1}, Lorg/altbeacon/beacon/BeaconManager;->getBeaconParsers()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 204
    iget-object v1, p0, Lorg/altbeacon/beacon/service/BeaconService;->beaconParsers:Ljava/util/Set;

    iget-object v2, p0, Lorg/altbeacon/beacon/service/BeaconService;->beaconManager:Lorg/altbeacon/beacon/BeaconManager;

    invoke-virtual {v2}, Lorg/altbeacon/beacon/BeaconManager;->getBeaconParsers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 205
    iget-object v1, p0, Lorg/altbeacon/beacon/service/BeaconService;->beaconManager:Lorg/altbeacon/beacon/BeaconManager;

    invoke-virtual {v1}, Lorg/altbeacon/beacon/BeaconManager;->getBeaconParsers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/altbeacon/beacon/BeaconParser;

    .line 206
    .local v0, "beaconParser":Lorg/altbeacon/beacon/BeaconParser;
    invoke-virtual {v0}, Lorg/altbeacon/beacon/BeaconParser;->getExtraDataParsers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 207
    const/4 v12, 0x0

    .line 208
    iget-object v2, p0, Lorg/altbeacon/beacon/service/BeaconService;->beaconParsers:Ljava/util/Set;

    invoke-virtual {v0}, Lorg/altbeacon/beacon/BeaconParser;->getExtraDataParsers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 214
    .end local v0    # "beaconParser":Lorg/altbeacon/beacon/BeaconParser;
    :cond_1
    new-instance v1, Lorg/altbeacon/beacon/service/ExtraDataBeaconTracker;

    invoke-direct {v1, v12}, Lorg/altbeacon/beacon/service/ExtraDataBeaconTracker;-><init>(Z)V

    iput-object v1, p0, Lorg/altbeacon/beacon/service/BeaconService;->mExtraDataBeaconTracker:Lorg/altbeacon/beacon/service/ExtraDataBeaconTracker;

    .line 216
    new-instance v1, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;

    invoke-static {}, Lorg/altbeacon/beacon/BeaconManager;->getDistanceModelUpdateUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/altbeacon/beacon/service/BeaconService;->defaultDistanceCalculator:Lorg/altbeacon/beacon/distance/DistanceCalculator;

    .line 217
    iget-object v1, p0, Lorg/altbeacon/beacon/service/BeaconService;->defaultDistanceCalculator:Lorg/altbeacon/beacon/distance/DistanceCalculator;

    invoke-static {v1}, Lorg/altbeacon/beacon/Beacon;->setDistanceCalculator(Lorg/altbeacon/beacon/distance/DistanceCalculator;)V

    .line 219
    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/BeaconService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/altbeacon/beacon/service/MonitoringStatus;->getInstanceForApplication(Landroid/content/Context;)Lorg/altbeacon/beacon/service/MonitoringStatus;

    move-result-object v1

    iput-object v1, p0, Lorg/altbeacon/beacon/service/BeaconService;->monitoringStatus:Lorg/altbeacon/beacon/service/MonitoringStatus;

    .line 222
    :try_start_0
    const-string/jumbo v1, "org.altbeacon.beacon.SimulatedScanData"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    .line 223
    .local v11, "klass":Ljava/lang/Class;
    const-string/jumbo v1, "beacons"

    invoke-virtual {v11, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    .line 224
    .local v10, "f":Ljava/lang/reflect/Field;
    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iput-object v1, p0, Lorg/altbeacon/beacon/service/BeaconService;->simulatedScanData:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 230
    .end local v10    # "f":Ljava/lang/reflect/Field;
    .end local v11    # "klass":Ljava/lang/Class;
    :goto_1
    return-void

    .line 226
    :catch_0
    move-exception v1

    const-string/jumbo v1, "BeaconService"

    const-string/jumbo v2, "No org.altbeacon.beacon.SimulatedScanData class exists."

    new-array v3, v13, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 227
    :catch_1
    move-exception v9

    .line 228
    .local v9, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "BeaconService"

    const-string/jumbo v2, "Cannot get simulated Scan data.  Make sure your org.altbeacon.beacon.SimulatedScanData class defines a field with the signature \'public static List<Beacon> beacons\'"

    new-array v3, v13, [Ljava/lang/Object;

    invoke-static {v9, v1, v2, v3}, Lorg/altbeacon/beacon/logging/LogManager;->e(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 262
    const-string/jumbo v0, "BeaconService"

    const-string/jumbo v1, "onDestroy()"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 263
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    .line 264
    const-string/jumbo v0, "BeaconService"

    const-string/jumbo v1, "Not supported prior to API 18."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 274
    :goto_0
    return-void

    .line 267
    :cond_0
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->bluetoothCrashResolver:Lorg/altbeacon/bluetooth/BluetoothCrashResolver;

    invoke-virtual {v0}, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->stop()V

    .line 268
    const-string/jumbo v0, "BeaconService"

    const-string/jumbo v1, "onDestroy called.  stopping scanning"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 269
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 270
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->mCycledScanner:Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;

    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->stop()V

    .line 271
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->mCycledScanner:Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;

    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->destroy()V

    .line 272
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->monitoringStatus:Lorg/altbeacon/beacon/service/MonitoringStatus;

    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/MonitoringStatus;->stopStatusPreservation()V

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 235
    const-string/jumbo v1, "BeaconService"

    if-nez p1, :cond_0

    const-string/jumbo v0, "starting with null intent"

    .line 239
    :goto_0
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 235
    invoke-static {v1, v0, v2}, Lorg/altbeacon/beacon/logging/LogManager;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 241
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0

    .line 235
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "starting with intent "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 7
    .param p1, "rootIntent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 278
    invoke-super {p0, p1}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    .line 279
    const-string/jumbo v1, "BeaconService"

    const-string/jumbo v2, "task removed"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 280
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string/jumbo v2, "4.4.1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string/jumbo v2, "4.4.2"

    .line 281
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string/jumbo v2, "4.4.3"

    .line 282
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 283
    :cond_0
    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/BeaconService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 284
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    invoke-direct {p0}, Lorg/altbeacon/beacon/service/BeaconService;->getRestartIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v6, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 285
    const-string/jumbo v1, "BeaconService"

    const-string/jumbo v2, "Setting a wakeup alarm to go off due to Android 4.4.2 service restarting bug."

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 287
    .end local v0    # "alarmManager":Landroid/app/AlarmManager;
    :cond_1
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 256
    const-string/jumbo v0, "BeaconService"

    const-string/jumbo v1, "unbinding"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 257
    return v3
.end method

.method public setScanPeriods(JJZ)V
    .locals 7
    .param p1, "scanPeriod"    # J
    .param p3, "betweenScanPeriod"    # J
    .param p5, "backgroundFlag"    # Z

    .prologue
    .line 339
    iget-object v1, p0, Lorg/altbeacon/beacon/service/BeaconService;->mCycledScanner:Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->setScanPeriods(JJZ)V

    .line 340
    return-void
.end method

.method public startMonitoringBeaconsInRegion(Lorg/altbeacon/beacon/Region;Lorg/altbeacon/beacon/service/Callback;)V
    .locals 5
    .param p1, "region"    # Lorg/altbeacon/beacon/Region;
    .param p2, "callback"    # Lorg/altbeacon/beacon/service/Callback;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 323
    const-string/jumbo v0, "BeaconService"

    const-string/jumbo v1, "startMonitoring called"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 324
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->monitoringStatus:Lorg/altbeacon/beacon/service/MonitoringStatus;

    invoke-virtual {v0, p1, p2}, Lorg/altbeacon/beacon/service/MonitoringStatus;->addRegion(Lorg/altbeacon/beacon/Region;Lorg/altbeacon/beacon/service/Callback;)V

    .line 325
    const-string/jumbo v0, "BeaconService"

    const-string/jumbo v1, "Currently monitoring %s regions."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/altbeacon/beacon/service/BeaconService;->monitoringStatus:Lorg/altbeacon/beacon/service/MonitoringStatus;

    invoke-virtual {v3}, Lorg/altbeacon/beacon/service/MonitoringStatus;->regionsCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 326
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->mCycledScanner:Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;

    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->start()V

    .line 327
    return-void
.end method

.method public startRangingBeaconsInRegion(Lorg/altbeacon/beacon/Region;Lorg/altbeacon/beacon/service/Callback;)V
    .locals 6
    .param p1, "region"    # Lorg/altbeacon/beacon/Region;
    .param p2, "callback"    # Lorg/altbeacon/beacon/service/Callback;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 298
    iget-object v1, p0, Lorg/altbeacon/beacon/service/BeaconService;->rangedRegionState:Ljava/util/Map;

    monitor-enter v1

    .line 299
    :try_start_0
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->rangedRegionState:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    const-string/jumbo v0, "BeaconService"

    const-string/jumbo v2, "Already ranging that region -- will replace existing region."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lorg/altbeacon/beacon/logging/LogManager;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 301
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->rangedRegionState:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    :cond_0
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->rangedRegionState:Ljava/util/Map;

    new-instance v2, Lorg/altbeacon/beacon/service/RangeState;

    invoke-direct {v2, p2}, Lorg/altbeacon/beacon/service/RangeState;-><init>(Lorg/altbeacon/beacon/service/Callback;)V

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    const-string/jumbo v0, "BeaconService"

    const-string/jumbo v2, "Currently ranging %s regions."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/altbeacon/beacon/service/BeaconService;->rangedRegionState:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 305
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->mCycledScanner:Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;

    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->start()V

    .line 307
    return-void

    .line 305
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public stopMonitoringBeaconsInRegion(Lorg/altbeacon/beacon/Region;)V
    .locals 5
    .param p1, "region"    # Lorg/altbeacon/beacon/Region;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 330
    const-string/jumbo v0, "BeaconService"

    const-string/jumbo v1, "stopMonitoring called"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 331
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->monitoringStatus:Lorg/altbeacon/beacon/service/MonitoringStatus;

    invoke-virtual {v0, p1}, Lorg/altbeacon/beacon/service/MonitoringStatus;->removeRegion(Lorg/altbeacon/beacon/Region;)V

    .line 332
    const-string/jumbo v0, "BeaconService"

    const-string/jumbo v1, "Currently monitoring %s regions."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/altbeacon/beacon/service/BeaconService;->monitoringStatus:Lorg/altbeacon/beacon/service/MonitoringStatus;

    invoke-virtual {v3}, Lorg/altbeacon/beacon/service/MonitoringStatus;->regionsCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 333
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->monitoringStatus:Lorg/altbeacon/beacon/service/MonitoringStatus;

    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/MonitoringStatus;->regionsCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->rangedRegionState:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 334
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService;->mCycledScanner:Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;

    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->stop()V

    .line 336
    :cond_0
    return-void
.end method

.method public stopRangingBeaconsInRegion(Lorg/altbeacon/beacon/Region;)V
    .locals 7
    .param p1, "region"    # Lorg/altbeacon/beacon/Region;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 311
    iget-object v2, p0, Lorg/altbeacon/beacon/service/BeaconService;->rangedRegionState:Ljava/util/Map;

    monitor-enter v2

    .line 312
    :try_start_0
    iget-object v1, p0, Lorg/altbeacon/beacon/service/BeaconService;->rangedRegionState:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    iget-object v1, p0, Lorg/altbeacon/beacon/service/BeaconService;->rangedRegionState:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v0

    .line 314
    .local v0, "rangedRegionCount":I
    const-string/jumbo v1, "BeaconService"

    const-string/jumbo v3, "Currently ranging %s regions."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/altbeacon/beacon/service/BeaconService;->rangedRegionState:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v3, v4}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 315
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/altbeacon/beacon/service/BeaconService;->monitoringStatus:Lorg/altbeacon/beacon/service/MonitoringStatus;

    invoke-virtual {v1}, Lorg/altbeacon/beacon/service/MonitoringStatus;->regionsCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 318
    iget-object v1, p0, Lorg/altbeacon/beacon/service/BeaconService;->mCycledScanner:Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;

    invoke-virtual {v1}, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;->stop()V

    .line 320
    :cond_0
    return-void

    .line 315
    .end local v0    # "rangedRegionCount":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
