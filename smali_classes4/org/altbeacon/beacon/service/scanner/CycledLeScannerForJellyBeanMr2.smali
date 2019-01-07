.class public Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForJellyBeanMr2;
.super Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;
.source "CycledLeScannerForJellyBeanMr2.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CycledLeScannerForJellyBeanMr2"


# instance fields
.field private leScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;JJZLorg/altbeacon/beacon/service/scanner/CycledLeScanCallback;Lorg/altbeacon/bluetooth/BluetoothCrashResolver;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "scanPeriod"    # J
    .param p4, "betweenScanPeriod"    # J
    .param p6, "backgroundFlag"    # Z
    .param p7, "cycledLeScanCallback"    # Lorg/altbeacon/beacon/service/scanner/CycledLeScanCallback;
    .param p8, "crashResolver"    # Lorg/altbeacon/bluetooth/BluetoothCrashResolver;

    .prologue
    .line 18
    invoke-direct/range {p0 .. p8}, Lorg/altbeacon/beacon/service/scanner/CycledLeScanner;-><init>(Landroid/content/Context;JJZLorg/altbeacon/beacon/service/scanner/CycledLeScanCallback;Lorg/altbeacon/bluetooth/BluetoothCrashResolver;)V

    .line 19
    return-void
.end method

.method static synthetic access$000(Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForJellyBeanMr2;)Landroid/bluetooth/BluetoothAdapter$LeScanCallback;
    .locals 1
    .param p0, "x0"    # Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForJellyBeanMr2;

    .prologue
    .line 13
    invoke-direct {p0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForJellyBeanMr2;->getLeScanCallback()Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    move-result-object v0

    return-object v0
.end method

.method private getLeScanCallback()Landroid/bluetooth/BluetoothAdapter$LeScanCallback;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForJellyBeanMr2;->leScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForJellyBeanMr2$4;

    invoke-direct {v0, p0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForJellyBeanMr2$4;-><init>(Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForJellyBeanMr2;)V

    iput-object v0, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForJellyBeanMr2;->leScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    .line 114
    :cond_0
    iget-object v0, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForJellyBeanMr2;->leScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    return-object v0
.end method

.method private postStartLeScan()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 61
    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForJellyBeanMr2;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 62
    .local v0, "bluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    if-nez v0, :cond_0

    .line 78
    :goto_0
    return-void

    .line 65
    :cond_0
    invoke-direct {p0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForJellyBeanMr2;->getLeScanCallback()Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    move-result-object v1

    .line 66
    .local v1, "leScanCallback":Landroid/bluetooth/BluetoothAdapter$LeScanCallback;
    iget-object v2, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForJellyBeanMr2;->mScanHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 67
    iget-object v2, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForJellyBeanMr2;->mScanHandler:Landroid/os/Handler;

    new-instance v3, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForJellyBeanMr2$2;

    invoke-direct {v3, p0, v0, v1}, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForJellyBeanMr2$2;-><init>(Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForJellyBeanMr2;Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private postStopLeScan()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 81
    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForJellyBeanMr2;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 82
    .local v0, "bluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    if-nez v0, :cond_0

    .line 98
    :goto_0
    return-void

    .line 85
    :cond_0
    invoke-direct {p0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForJellyBeanMr2;->getLeScanCallback()Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    move-result-object v1

    .line 86
    .local v1, "leScanCallback":Landroid/bluetooth/BluetoothAdapter$LeScanCallback;
    iget-object v2, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForJellyBeanMr2;->mScanHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 87
    iget-object v2, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForJellyBeanMr2;->mScanHandler:Landroid/os/Handler;

    new-instance v3, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForJellyBeanMr2$3;

    invoke-direct {v3, p0, v0, v1}, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForJellyBeanMr2$3;-><init>(Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForJellyBeanMr2;Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method protected deferScanIfNeeded()Z
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const-wide/16 v2, 0x3e8

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 28
    iget-wide v6, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForJellyBeanMr2;->mNextScanCycleStartTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v0, v6, v8

    .line 29
    .local v0, "millisecondsUntilStart":J
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-lez v6, :cond_2

    .line 30
    const-string/jumbo v6, "CycledLeScannerForJellyBeanMr2"

    const-string/jumbo v7, "Waiting to start next Bluetooth scan for another %s milliseconds"

    new-array v8, v4, [Ljava/lang/Object;

    .line 31
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v5

    .line 30
    invoke-static {v6, v7, v8}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    iget-boolean v5, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForJellyBeanMr2;->mBackgroundFlag:Z

    if-eqz v5, :cond_0

    .line 36
    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForJellyBeanMr2;->setWakeUpAlarm()V

    .line 38
    :cond_0
    iget-object v5, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForJellyBeanMr2;->mHandler:Landroid/os/Handler;

    new-instance v6, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForJellyBeanMr2$1;

    invoke-direct {v6, p0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForJellyBeanMr2$1;-><init>(Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForJellyBeanMr2;)V

    cmp-long v7, v0, v2

    if-lez v7, :cond_1

    move-wide v0, v2

    .end local v0    # "millisecondsUntilStart":J
    :cond_1
    invoke-virtual {v5, v6, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move v2, v4

    .line 46
    :goto_0
    return v2

    .restart local v0    # "millisecondsUntilStart":J
    :cond_2
    move v2, v5

    goto :goto_0
.end method

.method protected finishScan()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForJellyBeanMr2;->postStopLeScan()V

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForJellyBeanMr2;->mScanningPaused:Z

    .line 58
    return-void
.end method

.method protected startScan()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForJellyBeanMr2;->postStartLeScan()V

    .line 52
    return-void
.end method

.method protected stopScan()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForJellyBeanMr2;->postStopLeScan()V

    .line 24
    return-void
.end method
