.class public Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;
.super Ljava/lang/Object;
.source "BleBluetoothScanner.java"

# interfaces
.implements Lorg/altbeacon/beacon/BeaconConsumer;


# static fields
.field public static final BEACON_LAYOUT:Ljava/lang/String; = "m:2-3=0215,i:4-19,i:20-21,i:22-23,p:24-24"

.field public static final BLE_LAYOUT:Ljava/lang/String; = "m:0-1=0001,p:2-2,i:3-4,i:5-8,i:9-12,i:13-14,i:15-16,i:17-17,i:18-18,i:19-21"

.field private static final BLE_SERVICE_UUID:I = 0xfe3c

.field private static final QUICK_SCAN_DEFAUL_RECOVERY_TIME:I = 0x2710

.field private static final QUICK_SCAN_SCREENON_RECOVERY_TIME:I = 0x7d0

.field private static final TAG:Ljava/lang/String; = "BleBluetoothScanner"


# instance fields
.field private final BINDED:I

.field private final STARTED:I

.field private final STOPED:I

.field private highRecoveryRunnable:Ljava/lang/Runnable;

.field private isHighFrequencySanMode:Z

.field private mAPPStateListener:Lcom/alibaba/doraemon/lifecycle/APPStateListener;

.field private mBeaconManager:Lorg/altbeacon/beacon/BeaconManager;

.field private mHandler:Landroid/os/Handler;

.field private mMonitorNotifier:Lorg/altbeacon/beacon/MonitorNotifier;

.field private mPendingRegion:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/altbeacon/beacon/Region;",
            ">;"
        }
    .end annotation
.end field

.field private mRangeNotifier:Lorg/altbeacon/beacon/RangeNotifier;

.field private mRegionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/altbeacon/beacon/Region;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/doraemon/bluetooth/BeaconMonitorListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mScanPeriod:Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod;

.field private mScreenReceiver:Landroid/content/BroadcastReceiver;

.field private mState:I

.field private recoveryRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->STARTED:I

    .line 56
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->BINDED:I

    .line 57
    iput v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->STOPED:I

    .line 62
    iput v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->mState:I

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->mRegionMap:Ljava/util/Map;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->mPendingRegion:Ljava/util/List;

    .line 83
    iput-boolean v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->isHighFrequencySanMode:Z

    .line 304
    new-instance v0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$6;

    invoke-direct {v0, p0}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$6;-><init>(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;)V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->mRangeNotifier:Lorg/altbeacon/beacon/RangeNotifier;

    .line 363
    new-instance v0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$7;

    invoke-direct {v0, p0}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$7;-><init>(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;)V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->mMonitorNotifier:Lorg/altbeacon/beacon/MonitorNotifier;

    .line 425
    new-instance v0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$8;

    invoke-direct {v0, p0}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$8;-><init>(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;)V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->highRecoveryRunnable:Ljava/lang/Runnable;

    .line 458
    new-instance v0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$9;

    invoke-direct {v0, p0}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$9;-><init>(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;)V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->recoveryRunnable:Ljava/lang/Runnable;

    .line 86
    const-class v0, Lorg/altbeacon/beacon/RunningAverageRssiFilter;

    invoke-static {v0}, Lorg/altbeacon/beacon/BeaconManager;->setRssiFilterImplClass(Ljava/lang/Class;)V

    .line 88
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/altbeacon/beacon/BeaconManager;->getInstanceForApplication(Landroid/content/Context;)Lorg/altbeacon/beacon/BeaconManager;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->mBeaconManager:Lorg/altbeacon/beacon/BeaconManager;

    .line 89
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->mBeaconManager:Lorg/altbeacon/beacon/BeaconManager;

    invoke-virtual {v0, v1}, Lorg/altbeacon/beacon/BeaconManager;->setRegionStatePeristenceEnabled(Z)V

    .line 90
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->mBeaconManager:Lorg/altbeacon/beacon/BeaconManager;

    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Lorg/altbeacon/beacon/BeaconManager;->setMaxTrackingAge(I)V

    .line 92
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->mHandler:Landroid/os/Handler;

    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;)Lorg/altbeacon/beacon/BeaconManager;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->mBeaconManager:Lorg/altbeacon/beacon/BeaconManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;

    .prologue
    .line 50
    iget v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->mState:I

    return v0
.end method

.method static synthetic access$1000(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$102(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;
    .param p1, "x1"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->mState:I

    return p1
.end method

.method static synthetic access$1102(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->isHighFrequencySanMode:Z

    return p1
.end method

.method static synthetic access$200(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->mPendingRegion:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;Lorg/altbeacon/beacon/Region;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;
    .param p1, "x1"    # Lorg/altbeacon/beacon/Region;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->postScan(Lorg/altbeacon/beacon/Region;)V

    return-void
.end method

.method static synthetic access$400(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;J)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;
    .param p1, "x1"    # J

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->quickScan(J)V

    return-void
.end method

.method static synthetic access$500(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->ensureScanPeriod()V

    return-void
.end method

.method static synthetic access$600(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->mRegionMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$700(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->unRegisterScreenReceiver()V

    return-void
.end method

.method static synthetic access$800(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->unregisterAppStateListener()V

    return-void
.end method

.method static synthetic access$900(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->highFrequencyScanMode(Z)V

    return-void
.end method

.method private addBluetoothScanListener(Lcom/alibaba/doraemon/bluetooth/BeaconMonitorListener;Lorg/altbeacon/beacon/Region;)V
    .locals 2
    .param p1, "listener"    # Lcom/alibaba/doraemon/bluetooth/BeaconMonitorListener;
    .param p2, "region"    # Lorg/altbeacon/beacon/Region;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 557
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$11;

    invoke-direct {v1, p0, p2, p1}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$11;-><init>(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;Lorg/altbeacon/beacon/Region;Lcom/alibaba/doraemon/bluetooth/BeaconMonitorListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 568
    return-void
.end method

.method private ensureScanPeriod()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 503
    iget-boolean v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->isHighFrequencySanMode:Z

    if-eqz v1, :cond_1

    .line 520
    :cond_0
    :goto_0
    return-void

    .line 506
    :cond_1
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->mScanPeriod:Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod;

    if-nez v1, :cond_2

    .line 507
    new-instance v1, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod;

    invoke-direct {v1}, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod;-><init>()V

    iput-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->mScanPeriod:Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod;

    .line 509
    :cond_2
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->mBeaconManager:Lorg/altbeacon/beacon/BeaconManager;

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->mScanPeriod:Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod;

    invoke-virtual {v2}, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod;->getForegroundScanPeriod()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/altbeacon/beacon/BeaconManager;->setForegroundScanPeriod(J)V

    .line 510
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->mBeaconManager:Lorg/altbeacon/beacon/BeaconManager;

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->mScanPeriod:Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod;

    invoke-virtual {v2}, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod;->getForegroundBetweenScanPeriod()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/altbeacon/beacon/BeaconManager;->setForegroundBetweenScanPeriod(J)V

    .line 511
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->mBeaconManager:Lorg/altbeacon/beacon/BeaconManager;

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->mScanPeriod:Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod;

    invoke-virtual {v2}, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod;->getBackgroundScanPeriod()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/altbeacon/beacon/BeaconManager;->setBackgroundScanPeriod(J)V

    .line 512
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->mBeaconManager:Lorg/altbeacon/beacon/BeaconManager;

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->mScanPeriod:Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod;

    invoke-virtual {v2}, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod;->getBackgroundBetweenScanPeriod()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/altbeacon/beacon/BeaconManager;->setBackgroundBetweenScanPeriod(J)V

    .line 513
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->mBeaconManager:Lorg/altbeacon/beacon/BeaconManager;

    invoke-virtual {v1, p0}, Lorg/altbeacon/beacon/BeaconManager;->isBound(Lorg/altbeacon/beacon/BeaconConsumer;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 515
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->mBeaconManager:Lorg/altbeacon/beacon/BeaconManager;

    invoke-virtual {v1}, Lorg/altbeacon/beacon/BeaconManager;->updateScanPeriods()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 516
    :catch_0
    move-exception v0

    .line 517
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getScanMode()I
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->mScanPeriod:Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod;

    if-nez v0, :cond_0

    .line 154
    new-instance v0, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod;

    invoke-direct {v0}, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod;-><init>()V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->mScanPeriod:Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod;

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->mScanPeriod:Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod;->getScanMode()Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod$ScanMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod$ScanMode;->value()I

    move-result v0

    return v0
.end method

.method public static getServiceIdentifierFromParcelUuid(Ljava/util/UUID;)I
    .locals 6
    .param p0, "uuid"    # Ljava/util/UUID;

    .prologue
    .line 241
    invoke-virtual {p0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v2

    const-wide v4, 0xffff00000000L

    and-long/2addr v2, v4

    const/16 v4, 0x20

    ushr-long v0, v2, v4

    .line 242
    .local v0, "value":J
    long-to-int v2, v0

    return v2
.end method

.method private highFrequencyScanMode(Z)V
    .locals 6
    .param p1, "enable"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 438
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->highRecoveryRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 439
    iget-boolean v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->isHighFrequencySanMode:Z

    .line 440
    .local v0, "oldMode":Z
    iput-boolean p1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->isHighFrequencySanMode:Z

    .line 441
    if-eqz p1, :cond_2

    .line 443
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->highRecoveryRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x2710

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 444
    if-nez v0, :cond_1

    .line 445
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getDebugMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 446
    const-string/jumbo v1, "BleBluetoothScanner"

    const-string/jumbo v2, "start high frequency scan mode"

    invoke-static {v1, v2}, Lcom/alibaba/doraemon/DoraemonLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->updateHighFrequencySanPeriods()V

    .line 456
    :cond_1
    :goto_0
    return-void

    .line 451
    :cond_2
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getDebugMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 452
    const-string/jumbo v1, "BleBluetoothScanner"

    const-string/jumbo v2, "stop high frequency scan mode"

    invoke-static {v1, v2}, Lcom/alibaba/doraemon/DoraemonLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    :cond_3
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->ensureScanPeriod()V

    goto :goto_0
.end method

.method private postScan(Lorg/altbeacon/beacon/Region;)V
    .locals 2
    .param p1, "region"    # Lorg/altbeacon/beacon/Region;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 227
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$4;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$4;-><init>(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;Lorg/altbeacon/beacon/Region;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 238
    return-void
.end method

.method private quickScan(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 470
    iget-boolean v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->isHighFrequencySanMode:Z

    if-nez v0, :cond_0

    .line 471
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->updateHighFrequencySanPeriods()V

    .line 473
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->recoveryRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 474
    iget-boolean v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->isHighFrequencySanMode:Z

    if-nez v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->recoveryRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 478
    :cond_0
    return-void
.end method

.method private registerAppStateListener()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 195
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->mAPPStateListener:Lcom/alibaba/doraemon/lifecycle/APPStateListener;

    if-nez v1, :cond_0

    .line 196
    new-instance v1, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$3;

    invoke-direct {v1, p0}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$3;-><init>(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;)V

    iput-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->mAPPStateListener:Lcom/alibaba/doraemon/lifecycle/APPStateListener;

    .line 211
    const-string/jumbo v1, "LIFECYCLE"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

    .line 212
    .local v0, "lifecycleMonitor":Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->mAPPStateListener:Lcom/alibaba/doraemon/lifecycle/APPStateListener;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;->registerAppStateListener(Lcom/alibaba/doraemon/lifecycle/APPStateListener;)V

    .line 213
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->mBeaconManager:Lorg/altbeacon/beacon/BeaconManager;

    invoke-interface {v0}, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;->isBackground()Z

    move-result v2

    invoke-virtual {v1, v2}, Lorg/altbeacon/beacon/BeaconManager;->setBackgroundMode(Z)V

    .line 215
    .end local v0    # "lifecycleMonitor":Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;
    :cond_0
    return-void
.end method

.method private registerScreenReceiver()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 160
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_0

    .line 161
    new-instance v2, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$2;

    invoke-direct {v2, p0}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$2;-><init>(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;)V

    iput-object v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    .line 174
    :try_start_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.SCREEN_ON"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 175
    .local v1, "screenOnFilter":Landroid/content/IntentFilter;
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    .end local v1    # "screenOnFilter":Landroid/content/IntentFilter;
    :cond_0
    :goto_0
    return-void

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "BleBluetoothScanner"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "register screen on error, "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/doraemon/impl/bluetooth/utils/BleTrace;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private removeBluetoothScanListener(Lcom/alibaba/doraemon/bluetooth/BeaconMonitorListener;Lorg/altbeacon/beacon/Region;)V
    .locals 2
    .param p1, "listener"    # Lcom/alibaba/doraemon/bluetooth/BeaconMonitorListener;
    .param p2, "region"    # Lorg/altbeacon/beacon/Region;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 571
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$12;

    invoke-direct {v1, p0, p2, p1}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$12;-><init>(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;Lorg/altbeacon/beacon/Region;Lcom/alibaba/doraemon/bluetooth/BeaconMonitorListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 583
    return-void
.end method

.method private unRegisterScreenReceiver()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 184
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 185
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 187
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->mScreenReceiver:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :goto_0
    return-void

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "BleBluetoothScanner"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "unregister screen on error, "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/doraemon/impl/bluetooth/utils/BleTrace;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private unregisterAppStateListener()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 218
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->mAPPStateListener:Lcom/alibaba/doraemon/lifecycle/APPStateListener;

    if-eqz v1, :cond_0

    .line 219
    const-string/jumbo v1, "LIFECYCLE"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

    .line 220
    .local v0, "lifecycleMonitor":Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->mAPPStateListener:Lcom/alibaba/doraemon/lifecycle/APPStateListener;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;->unregisterAppStateListener(Lcom/alibaba/doraemon/lifecycle/APPStateListener;)V

    .line 222
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->mAPPStateListener:Lcom/alibaba/doraemon/lifecycle/APPStateListener;

    .line 224
    .end local v0    # "lifecycleMonitor":Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;
    :cond_0
    return-void
.end method

.method private updateHighFrequencySanPeriods()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v4, 0x12c

    const-wide/16 v2, 0x64

    .line 482
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->mBeaconManager:Lorg/altbeacon/beacon/BeaconManager;

    invoke-virtual {v1, v4, v5}, Lorg/altbeacon/beacon/BeaconManager;->setForegroundScanPeriod(J)V

    .line 483
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->mBeaconManager:Lorg/altbeacon/beacon/BeaconManager;

    invoke-virtual {v1, v2, v3}, Lorg/altbeacon/beacon/BeaconManager;->setForegroundBetweenScanPeriod(J)V

    .line 484
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->mBeaconManager:Lorg/altbeacon/beacon/BeaconManager;

    invoke-virtual {v1, v4, v5}, Lorg/altbeacon/beacon/BeaconManager;->setBackgroundScanPeriod(J)V

    .line 485
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->mBeaconManager:Lorg/altbeacon/beacon/BeaconManager;

    invoke-virtual {v1, v2, v3}, Lorg/altbeacon/beacon/BeaconManager;->setBackgroundBetweenScanPeriod(J)V

    .line 487
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->mBeaconManager:Lorg/altbeacon/beacon/BeaconManager;

    invoke-virtual {v1}, Lorg/altbeacon/beacon/BeaconManager;->updateScanPeriods()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 491
    :goto_0
    return-void

    .line 488
    :catch_0
    move-exception v0

    .line 489
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    goto :goto_0
.end method


# virtual methods
.method public bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "serviceConnection"    # Landroid/content/ServiceConnection;
    .param p3, "i"    # I

    .prologue
    .line 534
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    return v0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 524
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public onBeaconServiceConnect()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 404
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getDebugMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 405
    const-string/jumbo v2, "BleBluetoothScanner"

    const-string/jumbo v3, "bind beaconService success"

    invoke-static {v2, v3}, Lcom/alibaba/doraemon/DoraemonLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :cond_0
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->mBeaconManager:Lorg/altbeacon/beacon/BeaconManager;

    iget-object v3, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->mRangeNotifier:Lorg/altbeacon/beacon/RangeNotifier;

    invoke-virtual {v2, v3}, Lorg/altbeacon/beacon/BeaconManager;->setRangeNotifier(Lorg/altbeacon/beacon/RangeNotifier;)V

    .line 408
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->mBeaconManager:Lorg/altbeacon/beacon/BeaconManager;

    iget-object v3, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->mMonitorNotifier:Lorg/altbeacon/beacon/MonitorNotifier;

    invoke-virtual {v2, v3}, Lorg/altbeacon/beacon/BeaconManager;->setMonitorNotifier(Lorg/altbeacon/beacon/MonitorNotifier;)V

    .line 410
    invoke-direct {p0, v7}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->highFrequencyScanMode(Z)V

    .line 412
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->mPendingRegion:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/altbeacon/beacon/Region;

    .line 414
    .local v1, "region":Lorg/altbeacon/beacon/Region;
    :try_start_0
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->mBeaconManager:Lorg/altbeacon/beacon/BeaconManager;

    invoke-virtual {v3, v1}, Lorg/altbeacon/beacon/BeaconManager;->startMonitoringBeaconsInRegion(Lorg/altbeacon/beacon/Region;)V

    .line 415
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->mBeaconManager:Lorg/altbeacon/beacon/BeaconManager;

    invoke-virtual {v3, v1}, Lorg/altbeacon/beacon/BeaconManager;->startRangingBeaconsInRegion(Lorg/altbeacon/beacon/Region;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 416
    :catch_0
    move-exception v0

    .line 417
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "BleBluetoothScanner"

    new-array v4, v8, [Ljava/lang/Object;

    const-string/jumbo v5, "beacon service connect error, "

    aput-object v5, v4, v7

    const/4 v5, 0x1

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alibaba/doraemon/impl/bluetooth/utils/BleTrace;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 420
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "region":Lorg/altbeacon/beacon/Region;
    :cond_1
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->mPendingRegion:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 422
    iput v8, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->mState:I

    .line 423
    return-void
.end method

.method public quickScan()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 466
    const-wide/16 v0, 0x2710

    invoke-direct {p0, v0, v1}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->quickScan(J)V

    .line 467
    return-void
.end method

.method public setBackgroundMode(Z)V
    .locals 1
    .param p1, "backgroundMode"    # Z

    .prologue
    .line 495
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->mBeaconManager:Lorg/altbeacon/beacon/BeaconManager;

    invoke-virtual {v0, p1}, Lorg/altbeacon/beacon/BeaconManager;->setBackgroundMode(Z)V

    .line 496
    return-void
.end method

.method public setScanMode(Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod$ScanMode;)V
    .locals 1
    .param p1, "scanMode"    # Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod$ScanMode;

    .prologue
    .line 253
    if-eqz p1, :cond_1

    .line 254
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->mScanPeriod:Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod;

    if-nez v0, :cond_0

    .line 255
    new-instance v0, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod;

    invoke-direct {v0}, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod;-><init>()V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->mScanPeriod:Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod;

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->mScanPeriod:Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod;

    invoke-virtual {v0, p1}, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod;->setScanMode(Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod$ScanMode;)V

    .line 258
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->ensureScanPeriod()V

    .line 260
    :cond_1
    return-void
.end method

.method public setScanPeriod(Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod;)V
    .locals 0
    .param p1, "scanPeriod"    # Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod;

    .prologue
    .line 246
    if-eqz p1, :cond_0

    .line 247
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->mScanPeriod:Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod;

    .line 248
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->ensureScanPeriod()V

    .line 250
    :cond_0
    return-void
.end method

.method public startFind(Lcom/alibaba/doraemon/bluetooth/BeaconMonitorListener;Ljava/lang/String;II)V
    .locals 5
    .param p1, "listener"    # Lcom/alibaba/doraemon/bluetooth/BeaconMonitorListener;
    .param p2, "uuid"    # Ljava/lang/String;
    .param p3, "version1"    # I
    .param p4, "version2"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 137
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getDebugMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 138
    const-string/jumbo v2, "BleBluetoothScanner"

    const-string/jumbo v3, "start find with uuid"

    invoke-static {v2, v3}, Lcom/alibaba/doraemon/DoraemonLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_0
    const/4 v2, 0x3

    new-array v2, v2, [Lorg/altbeacon/beacon/Identifier;

    const/4 v3, 0x0

    invoke-static {p2}, Lorg/altbeacon/beacon/Identifier;->parse(Ljava/lang/String;)Lorg/altbeacon/beacon/Identifier;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p3}, Lorg/altbeacon/beacon/Identifier;->fromInt(I)Lorg/altbeacon/beacon/Identifier;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p4}, Lorg/altbeacon/beacon/Identifier;->fromInt(I)Lorg/altbeacon/beacon/Identifier;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 144
    .local v0, "identifiers":Ljava/util/List;, "Ljava/util/List<Lorg/altbeacon/beacon/Identifier;>;"
    instance-of v2, p1, Lcom/alibaba/doraemon/bluetooth/BleBeaconScanListener;

    if-eqz v2, :cond_1

    .line 145
    new-instance v1, Lorg/altbeacon/beacon/BleRegion;

    invoke-direct {v1, p2, v0}, Lorg/altbeacon/beacon/BleRegion;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 149
    .local v1, "region":Lorg/altbeacon/beacon/Region;
    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->startFind(Lcom/alibaba/doraemon/bluetooth/BeaconMonitorListener;Lorg/altbeacon/beacon/Region;)V

    .line 150
    return-void

    .line 147
    .end local v1    # "region":Lorg/altbeacon/beacon/Region;
    :cond_1
    new-instance v1, Lorg/altbeacon/beacon/Region;

    invoke-direct {v1, p2, v0}, Lorg/altbeacon/beacon/Region;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .restart local v1    # "region":Lorg/altbeacon/beacon/Region;
    goto :goto_0
.end method

.method public startFind(Lcom/alibaba/doraemon/bluetooth/BeaconMonitorListener;Lorg/altbeacon/beacon/Region;)V
    .locals 2
    .param p1, "listener"    # Lcom/alibaba/doraemon/bluetooth/BeaconMonitorListener;
    .param p2, "region"    # Lorg/altbeacon/beacon/Region;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 96
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getDebugMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    const-string/jumbo v0, "BleBluetoothScanner"

    const-string/jumbo v1, "start find with region"

    invoke-static {v0, v1}, Lcom/alibaba/doraemon/DoraemonLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->ensureScanPeriod()V

    .line 102
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->registerScreenReceiver()V

    .line 103
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->registerAppStateListener()V

    .line 105
    invoke-direct {p0, p1, p2}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->addBluetoothScanListener(Lcom/alibaba/doraemon/bluetooth/BeaconMonitorListener;Lorg/altbeacon/beacon/Region;)V

    .line 106
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$1;

    invoke-direct {v1, p0, p2}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$1;-><init>(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;Lorg/altbeacon/beacon/Region;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 134
    return-void
.end method

.method public stopFind(Lcom/alibaba/doraemon/bluetooth/BeaconMonitorListener;Ljava/lang/String;II)V
    .locals 5
    .param p1, "listener"    # Lcom/alibaba/doraemon/bluetooth/BeaconMonitorListener;
    .param p2, "uuid"    # Ljava/lang/String;
    .param p3, "version1"    # I
    .param p4, "version2"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 263
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getDebugMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 264
    const-string/jumbo v1, "BleBluetoothScanner"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "stopFind mode "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->getScanMode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/doraemon/DoraemonLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_0
    new-instance v0, Lorg/altbeacon/beacon/Region;

    invoke-static {p2}, Lorg/altbeacon/beacon/Identifier;->parse(Ljava/lang/String;)Lorg/altbeacon/beacon/Identifier;

    move-result-object v1

    invoke-static {p3}, Lorg/altbeacon/beacon/Identifier;->fromInt(I)Lorg/altbeacon/beacon/Identifier;

    move-result-object v2

    invoke-static {p4}, Lorg/altbeacon/beacon/Identifier;->fromInt(I)Lorg/altbeacon/beacon/Identifier;

    move-result-object v3

    invoke-direct {v0, p2, v1, v2, v3}, Lorg/altbeacon/beacon/Region;-><init>(Ljava/lang/String;Lorg/altbeacon/beacon/Identifier;Lorg/altbeacon/beacon/Identifier;Lorg/altbeacon/beacon/Identifier;)V

    .line 267
    .local v0, "region":Lorg/altbeacon/beacon/Region;
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->stopFind(Lcom/alibaba/doraemon/bluetooth/BeaconMonitorListener;Lorg/altbeacon/beacon/Region;)V

    .line 268
    return-void
.end method

.method public stopFind(Lcom/alibaba/doraemon/bluetooth/BeaconMonitorListener;Lorg/altbeacon/beacon/Region;)V
    .locals 2
    .param p1, "listener"    # Lcom/alibaba/doraemon/bluetooth/BeaconMonitorListener;
    .param p2, "region"    # Lorg/altbeacon/beacon/Region;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 272
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getDebugMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    const-string/jumbo v0, "BleBluetoothScanner"

    const-string/jumbo v1, "stop find"

    invoke-static {v0, v1}, Lcom/alibaba/doraemon/DoraemonLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->ensureScanPeriod()V

    .line 277
    invoke-direct {p0, p1, p2}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->removeBluetoothScanListener(Lcom/alibaba/doraemon/bluetooth/BeaconMonitorListener;Lorg/altbeacon/beacon/Region;)V

    .line 279
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$5;

    invoke-direct {v1, p0, p2}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$5;-><init>(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;Lorg/altbeacon/beacon/Region;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 302
    return-void
.end method

.method public tryUnbindBeaconServiceIfNotWork()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 538
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$10;

    invoke-direct {v1, p0}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$10;-><init>(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 553
    return-void
.end method

.method public unbindService(Landroid/content/ServiceConnection;)V
    .locals 1
    .param p1, "serviceConnection"    # Landroid/content/ServiceConnection;

    .prologue
    .line 529
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 530
    return-void
.end method
