.class public Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;
.super Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;
.source "CycledLeScannerForLollipop.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field private static final BACKGROUND_L_SCAN_DETECTION_PERIOD_MILLIS:J = 0x2710L

.field private static final TAG:Ljava/lang/String; = "CycledLeScannerForLollipop"


# instance fields
.field private leScanCallback:Landroid/bluetooth/le/ScanCallback;

.field private mBackgroundLScanFirstDetectionTime:J

.field private mBackgroundLScanStartTime:J

.field private final mBeaconManager:Lorg/altbeacon/beacon/BeaconManager;

.field private mMainScanCycleActive:Z

.field private mScanDeferredBefore:Z

.field private mScanner:Landroid/bluetooth/le/BluetoothLeScanner;


# direct methods
.method public constructor <init>(Landroid/content/Context;JJZLorg/altbeacon/beacon/service/scanner/CycledLeScanCallback;Lorg/altbeacon/bluetooth/BluetoothCrashResolver;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "scanPeriod"    # J
    .param p4, "betweenScanPeriod"    # J
    .param p6, "backgroundFlag"    # Z
    .param p7, "cycledLeScanCallback"    # Lorg/altbeacon/beacon/service/scanner/CycledLeScanCallback;
    .param p8, "crashResolver"    # Lorg/altbeacon/bluetooth/BluetoothCrashResolver;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 36
    invoke-direct/range {p0 .. p8}, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;-><init>(Landroid/content/Context;JJZLorg/altbeacon/beacon/service/scanner/CycledLeScanCallback;Lorg/altbeacon/bluetooth/BluetoothCrashResolver;)V

    .line 29
    iput-wide v2, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->mBackgroundLScanStartTime:J

    .line 30
    iput-wide v2, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->mBackgroundLScanFirstDetectionTime:J

    .line 31
    iput-boolean v0, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->mScanDeferredBefore:Z

    .line 32
    iput-boolean v0, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->mMainScanCycleActive:Z

    .line 37
    iget-object v0, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/altbeacon/beacon/BeaconManager;->getInstanceForApplication(Landroid/content/Context;)Lorg/altbeacon/beacon/BeaconManager;

    move-result-object v0

    iput-object v0, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->mBeaconManager:Lorg/altbeacon/beacon/BeaconManager;

    .line 38
    return-void
.end method

.method static synthetic access$000(Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;)J
    .locals 2
    .param p0, "x0"    # Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;

    .prologue
    .line 24
    iget-wide v0, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->mBackgroundLScanStartTime:J

    return-wide v0
.end method

.method private getNewLeScanCallback()Landroid/bluetooth/le/ScanCallback;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->leScanCallback:Landroid/bluetooth/le/ScanCallback;

    if-nez v0, :cond_0

    .line 276
    new-instance v0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop$4;

    invoke-direct {v0, p0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop$4;-><init>(Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;)V

    iput-object v0, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->leScanCallback:Landroid/bluetooth/le/ScanCallback;

    .line 314
    :cond_0
    iget-object v0, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->leScanCallback:Landroid/bluetooth/le/ScanCallback;

    return-object v0
.end method

.method private getScanner()Landroid/bluetooth/le/BluetoothLeScanner;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 257
    :try_start_0
    iget-object v1, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->mScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    if-nez v1, :cond_1

    .line 258
    const-string/jumbo v1, "CycledLeScannerForLollipop"

    const-string/jumbo v2, "Making new Android L scanner"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 259
    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 260
    .local v0, "bluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    .line 261
    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v1

    iput-object v1, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->mScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    .line 263
    :cond_0
    iget-object v1, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->mScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    if-nez v1, :cond_1

    .line 264
    const-string/jumbo v1, "CycledLeScannerForLollipop"

    const-string/jumbo v2, "Failed to make new Android L scanner"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    .end local v0    # "bluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->mScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    return-object v1

    .line 269
    :catch_0
    move-exception v1

    const-string/jumbo v1, "CycledLeScannerForLollipop"

    const-string/jumbo v2, "SecurityException making new Android L scanner"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private isBluetoothOn()Z
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 243
    :try_start_0
    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 244
    .local v0, "bluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_1

    .line 245
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 252
    .end local v0    # "bluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    :cond_0
    :goto_0
    return v1

    .line 247
    .restart local v0    # "bluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    :cond_1
    const-string/jumbo v2, "CycledLeScannerForLollipop"

    const-string/jumbo v3, "Cannot get bluetooth adapter"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 250
    .end local v0    # "bluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    :catch_0
    move-exception v2

    const-string/jumbo v2, "CycledLeScannerForLollipop"

    const-string/jumbo v3, "SecurityException checking if bluetooth is on"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private postStartLeScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;)V
    .locals 7
    .param p2, "settings"    # Landroid/bluetooth/le/ScanSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;",
            "Landroid/bluetooth/le/ScanSettings;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 186
    .local p1, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    invoke-direct {p0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->getScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v2

    .line 187
    .local v2, "scanner":Landroid/bluetooth/le/BluetoothLeScanner;
    if-nez v2, :cond_0

    .line 209
    :goto_0
    return-void

    .line 190
    :cond_0
    invoke-direct {p0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->getNewLeScanCallback()Landroid/bluetooth/le/ScanCallback;

    move-result-object v5

    .line 191
    .local v5, "scanCallback":Landroid/bluetooth/le/ScanCallback;
    iget-object v0, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->mScanHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 192
    iget-object v6, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->mScanHandler:Landroid/os/Handler;

    new-instance v0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop$2;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop$2;-><init>(Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;Landroid/bluetooth/le/BluetoothLeScanner;Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private postStopLeScan()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 212
    invoke-direct {p0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->isBluetoothOn()Z

    move-result v2

    if-nez v2, :cond_1

    .line 213
    const-string/jumbo v2, "CycledLeScannerForLollipop"

    const-string/jumbo v3, "Not stopping scan because bluetooth is off"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    invoke-direct {p0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->getScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v1

    .line 217
    .local v1, "scanner":Landroid/bluetooth/le/BluetoothLeScanner;
    if-eqz v1, :cond_0

    .line 220
    invoke-direct {p0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->getNewLeScanCallback()Landroid/bluetooth/le/ScanCallback;

    move-result-object v0

    .line 221
    .local v0, "scanCallback":Landroid/bluetooth/le/ScanCallback;
    iget-object v2, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->mScanHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 222
    iget-object v2, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->mScanHandler:Landroid/os/Handler;

    new-instance v3, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop$3;

    invoke-direct {v3, p0, v1, v0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop$3;-><init>(Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;Landroid/bluetooth/le/BluetoothLeScanner;Landroid/bluetooth/le/ScanCallback;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method protected deferScanIfNeeded()Z
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 79
    iget-wide v4, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->mNextScanCycleStartTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v0, v4, v6

    .line 80
    .local v0, "millisecondsUntilStart":J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_7

    .line 81
    const/4 v4, 0x0

    iput-boolean v4, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->mMainScanCycleActive:Z

    .line 83
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 84
    invoke-static {}, Lorg/altbeacon/beacon/service/DetectionTracker;->getInstance()Lorg/altbeacon/beacon/service/DetectionTracker;

    move-result-object v6

    invoke-virtual {v6}, Lorg/altbeacon/beacon/service/DetectionTracker;->getLastDetectionTime()J

    move-result-wide v6

    sub-long v2, v4, v6

    .line 88
    .local v2, "secsSinceLastDetection":J
    iget-boolean v4, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->mScanDeferredBefore:Z

    if-nez v4, :cond_0

    .line 89
    const-wide/16 v4, 0x2710

    cmp-long v4, v2, v4

    if-lez v4, :cond_5

    .line 90
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->mBackgroundLScanStartTime:J

    .line 91
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->mBackgroundLScanFirstDetectionTime:J

    .line 92
    const-string/jumbo v4, "CycledLeScannerForLollipop"

    const-string/jumbo v5, "This is Android L. Doing a filtered scan for the background."

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->startScan()V

    .line 105
    :cond_0
    :goto_0
    iget-wide v4, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->mBackgroundLScanStartTime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    .line 107
    invoke-static {}, Lorg/altbeacon/beacon/service/DetectionTracker;->getInstance()Lorg/altbeacon/beacon/service/DetectionTracker;

    move-result-object v4

    invoke-virtual {v4}, Lorg/altbeacon/beacon/service/DetectionTracker;->getLastDetectionTime()J

    move-result-wide v4

    iget-wide v6, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->mBackgroundLScanStartTime:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    .line 108
    iget-wide v4, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->mBackgroundLScanFirstDetectionTime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 109
    invoke-static {}, Lorg/altbeacon/beacon/service/DetectionTracker;->getInstance()Lorg/altbeacon/beacon/service/DetectionTracker;

    move-result-object v4

    invoke-virtual {v4}, Lorg/altbeacon/beacon/service/DetectionTracker;->getLastDetectionTime()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->mBackgroundLScanFirstDetectionTime:J

    .line 111
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->mBackgroundLScanFirstDetectionTime:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x2710

    cmp-long v4, v4, v6

    if-ltz v4, :cond_6

    .line 116
    const-string/jumbo v4, "CycledLeScannerForLollipop"

    const-string/jumbo v5, "We\'ve been detecting for a bit.  Stopping Android L background scanning"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->stopScan()V

    .line 118
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->mBackgroundLScanStartTime:J

    .line 128
    :cond_2
    :goto_1
    const-string/jumbo v4, "CycledLeScannerForLollipop"

    const-string/jumbo v5, "Waiting to start full Bluetooth scan for another %s milliseconds"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 129
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    .line 128
    invoke-static {v4, v5, v6}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    iget-boolean v4, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->mScanDeferredBefore:Z

    if-nez v4, :cond_3

    iget-boolean v4, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->mBackgroundFlag:Z

    if-eqz v4, :cond_3

    .line 134
    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->setWakeUpAlarm()V

    .line 136
    :cond_3
    iget-object v4, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->mHandler:Landroid/os/Handler;

    new-instance v5, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop$1;

    invoke-direct {v5, p0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop$1;-><init>(Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;)V

    const-wide/16 v6, 0x3e8

    cmp-long v6, v0, v6

    if-lez v6, :cond_4

    const-wide/16 v0, 0x3e8

    .end local v0    # "millisecondsUntilStart":J
    :cond_4
    invoke-virtual {v4, v5, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 142
    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->mScanDeferredBefore:Z

    .line 143
    const/4 v4, 0x1

    .line 153
    .end local v2    # "secsSinceLastDetection":J
    :goto_2
    return v4

    .line 100
    .restart local v0    # "millisecondsUntilStart":J
    .restart local v2    # "secsSinceLastDetection":J
    :cond_5
    const-string/jumbo v4, "CycledLeScannerForLollipop"

    const-string/jumbo v5, "This is Android L, but we last saw a beacon only %s ago, so we will not keep scanning in background."

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 102
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    .line 100
    invoke-static {v4, v5, v6}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 122
    :cond_6
    const-string/jumbo v4, "CycledLeScannerForLollipop"

    const-string/jumbo v5, "Delivering Android L background scanning results"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    iget-object v4, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->mCycledLeScanCallback:Lorg/altbeacon/beacon/service/scanner/CycledLeScanCallback;

    invoke-interface {v4}, Lorg/altbeacon/beacon/service/scanner/CycledLeScanCallback;->onCycleEnd()V

    goto :goto_1

    .line 146
    .end local v2    # "secsSinceLastDetection":J
    :cond_7
    iget-wide v4, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->mBackgroundLScanStartTime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_8

    .line 147
    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->stopScan()V

    .line 148
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->mBackgroundLScanStartTime:J

    .line 150
    :cond_8
    const/4 v4, 0x0

    iput-boolean v4, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->mScanDeferredBefore:Z

    .line 151
    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->mMainScanCycleActive:Z

    .line 153
    const/4 v4, 0x0

    goto :goto_2
.end method

.method protected finishScan()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 180
    const-string/jumbo v0, "CycledLeScannerForLollipop"

    const-string/jumbo v1, "Stopping scan"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->stopScan()V

    .line 182
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->mScanningPaused:Z

    .line 183
    return-void
.end method

.method protected startScan()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 158
    invoke-direct {p0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->isBluetoothOn()Z

    move-result v2

    if-nez v2, :cond_0

    .line 159
    const-string/jumbo v2, "CycledLeScannerForLollipop"

    const-string/jumbo v3, "Not starting scan because bluetooth is off"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 176
    :goto_0
    return-void

    .line 162
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 165
    .local v0, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    iget-boolean v2, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->mBackgroundFlag:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->mMainScanCycleActive:Z

    if-nez v2, :cond_1

    .line 166
    const-string/jumbo v2, "CycledLeScannerForLollipop"

    const-string/jumbo v3, "starting filtered scan in SCAN_MODE_LOW_POWER"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    new-instance v2, Landroid/bluetooth/le/ScanSettings$Builder;

    invoke-direct {v2}, Landroid/bluetooth/le/ScanSettings$Builder;-><init>()V

    invoke-virtual {v2, v5}, Landroid/bluetooth/le/ScanSettings$Builder;->setScanMode(I)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/le/ScanSettings$Builder;->build()Landroid/bluetooth/le/ScanSettings;

    move-result-object v1

    .line 168
    .local v1, "settings":Landroid/bluetooth/le/ScanSettings;
    new-instance v2, Lorg/altbeacon/beacon/service/scanner/ScanFilterUtils;

    invoke-direct {v2}, Lorg/altbeacon/beacon/service/scanner/ScanFilterUtils;-><init>()V

    iget-object v3, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->mBeaconManager:Lorg/altbeacon/beacon/BeaconManager;

    .line 169
    invoke-virtual {v3}, Lorg/altbeacon/beacon/BeaconManager;->getBeaconParsers()Ljava/util/List;

    move-result-object v3

    .line 168
    invoke-virtual {v2, v3}, Lorg/altbeacon/beacon/service/scanner/ScanFilterUtils;->createScanFiltersForBeaconParsers(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 175
    :goto_1
    invoke-direct {p0, v0, v1}, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->postStartLeScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;)V

    goto :goto_0

    .line 171
    .end local v1    # "settings":Landroid/bluetooth/le/ScanSettings;
    :cond_1
    const-string/jumbo v2, "CycledLeScannerForLollipop"

    const-string/jumbo v3, "starting non-filtered scan in SCAN_MODE_LOW_LATENCY"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    new-instance v2, Landroid/bluetooth/le/ScanSettings$Builder;

    invoke-direct {v2}, Landroid/bluetooth/le/ScanSettings$Builder;-><init>()V

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/bluetooth/le/ScanSettings$Builder;->setScanMode(I)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/le/ScanSettings$Builder;->build()Landroid/bluetooth/le/ScanSettings;

    move-result-object v1

    .restart local v1    # "settings":Landroid/bluetooth/le/ScanSettings;
    goto :goto_1
.end method

.method protected stopScan()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->postStopLeScan()V

    .line 43
    return-void
.end method
