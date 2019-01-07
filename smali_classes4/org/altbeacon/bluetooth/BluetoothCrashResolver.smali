.class public Lorg/altbeacon/bluetooth/BluetoothCrashResolver;
.super Ljava/lang/Object;
.source "BluetoothCrashResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/altbeacon/bluetooth/BluetoothCrashResolver$UpdateNotifier;
    }
.end annotation


# static fields
.field private static final BLUEDROID_MAX_BLUETOOTH_MAC_COUNT:I = 0x7c6

.field private static final BLUEDROID_POST_DISCOVERY_ESTIMATED_BLUETOOTH_MAC_COUNT:I = 0x190

.field private static final DISTINCT_BLUETOOTH_ADDRESSES_FILE:Ljava/lang/String; = "BluetoothCrashResolverState.txt"

.field private static final MIN_TIME_BETWEEN_STATE_SAVES_MILLIS:J = 0xea60L

.field private static final PREEMPTIVE_ACTION_ENABLED:Z = true

.field private static final SUSPICIOUSLY_SHORT_BLUETOOTH_OFF_INTERVAL_MILLIS:J = 0x258L

.field private static final TAG:Ljava/lang/String; = "BluetoothCrashResolver"

.field private static final TIME_TO_LET_DISCOVERY_RUN_MILLIS:I = 0x1388


# instance fields
.field private context:Landroid/content/Context;

.field private detectedCrashCount:I

.field private discoveryStartConfirmed:Z

.field private final distinctBluetoothAddresses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lastBluetoothCrashDetectionTime:J

.field private lastBluetoothOffTime:J

.field private lastBluetoothTurningOnTime:J

.field private lastRecoverySucceeded:Z

.field private lastStateSaveTime:J

.field private final receiver:Landroid/content/BroadcastReceiver;

.field private recoveryAttemptCount:I

.field private recoveryInProgress:Z

.field private updateNotifier:Lorg/altbeacon/bluetooth/BluetoothCrashResolver$UpdateNotifier;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-boolean v2, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->recoveryInProgress:Z

    .line 50
    iput-boolean v2, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->discoveryStartConfirmed:Z

    .line 52
    iput-wide v0, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->lastBluetoothOffTime:J

    .line 53
    iput-wide v0, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->lastBluetoothTurningOnTime:J

    .line 54
    iput-wide v0, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->lastBluetoothCrashDetectionTime:J

    .line 55
    iput v2, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->detectedCrashCount:I

    .line 56
    iput v2, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->recoveryAttemptCount:I

    .line 57
    iput-boolean v2, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->lastRecoverySucceeded:Z

    .line 58
    iput-wide v0, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->lastStateSaveTime:J

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->context:Landroid/content/Context;

    .line 63
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->distinctBluetoothAddresses:Ljava/util/Set;

    .line 314
    new-instance v0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver$1;

    invoke-direct {v0, p0}, Lorg/altbeacon/bluetooth/BluetoothCrashResolver$1;-><init>(Lorg/altbeacon/bluetooth/BluetoothCrashResolver;)V

    iput-object v0, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->receiver:Landroid/content/BroadcastReceiver;

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->context:Landroid/content/Context;

    .line 104
    const-string/jumbo v0, "BluetoothCrashResolver"

    const-string/jumbo v1, "constructed"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    invoke-direct {p0}, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->loadState()V

    .line 106
    return-void
.end method

.method static synthetic access$000(Lorg/altbeacon/bluetooth/BluetoothCrashResolver;)Z
    .locals 1
    .param p0, "x0"    # Lorg/altbeacon/bluetooth/BluetoothCrashResolver;

    .prologue
    .line 42
    iget-boolean v0, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->recoveryInProgress:Z

    return v0
.end method

.method static synthetic access$100(Lorg/altbeacon/bluetooth/BluetoothCrashResolver;)V
    .locals 0
    .param p0, "x0"    # Lorg/altbeacon/bluetooth/BluetoothCrashResolver;

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->finishRecovery()V

    return-void
.end method

.method static synthetic access$202(Lorg/altbeacon/bluetooth/BluetoothCrashResolver;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/altbeacon/bluetooth/BluetoothCrashResolver;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->discoveryStartConfirmed:Z

    return p1
.end method

.method static synthetic access$300(Lorg/altbeacon/bluetooth/BluetoothCrashResolver;)J
    .locals 2
    .param p0, "x0"    # Lorg/altbeacon/bluetooth/BluetoothCrashResolver;

    .prologue
    .line 42
    iget-wide v0, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->lastBluetoothOffTime:J

    return-wide v0
.end method

.method static synthetic access$302(Lorg/altbeacon/bluetooth/BluetoothCrashResolver;J)J
    .locals 1
    .param p0, "x0"    # Lorg/altbeacon/bluetooth/BluetoothCrashResolver;
    .param p1, "x1"    # J

    .prologue
    .line 42
    iput-wide p1, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->lastBluetoothOffTime:J

    return-wide p1
.end method

.method static synthetic access$400(Lorg/altbeacon/bluetooth/BluetoothCrashResolver;)J
    .locals 2
    .param p0, "x0"    # Lorg/altbeacon/bluetooth/BluetoothCrashResolver;

    .prologue
    .line 42
    iget-wide v0, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->lastBluetoothTurningOnTime:J

    return-wide v0
.end method

.method static synthetic access$402(Lorg/altbeacon/bluetooth/BluetoothCrashResolver;J)J
    .locals 1
    .param p0, "x0"    # Lorg/altbeacon/bluetooth/BluetoothCrashResolver;
    .param p1, "x1"    # J

    .prologue
    .line 42
    iput-wide p1, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->lastBluetoothTurningOnTime:J

    return-wide p1
.end method

.method private cancelDiscovery()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 450
    const-wide/16 v2, 0x1388

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 451
    iget-boolean v1, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->discoveryStartConfirmed:Z

    if-nez v1, :cond_0

    .line 452
    const-string/jumbo v1, "BluetoothCrashResolver"

    const-string/jumbo v2, "BluetoothAdapter.ACTION_DISCOVERY_STARTED never received.  Recovery may fail."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 455
    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 456
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 457
    const-string/jumbo v1, "BluetoothCrashResolver"

    const-string/jumbo v2, "Cancelling discovery"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 458
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 466
    .end local v0    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    :goto_0
    return-void

    .line 461
    .restart local v0    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    :cond_1
    const-string/jumbo v1, "BluetoothCrashResolver"

    const-string/jumbo v2, "Discovery not running.  Won\'t cancel it"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 464
    .end local v0    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    :catch_0
    move-exception v1

    const-string/jumbo v1, "BluetoothCrashResolver"

    const-string/jumbo v2, "DiscoveryCanceller sleep interrupted."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private finishRecovery()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 307
    const-string/jumbo v0, "BluetoothCrashResolver"

    const-string/jumbo v1, "Recovery attempt finished"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 308
    iget-object v1, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->distinctBluetoothAddresses:Ljava/util/Set;

    monitor-enter v1

    .line 309
    :try_start_0
    iget-object v0, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->distinctBluetoothAddresses:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 310
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    iput-boolean v3, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->recoveryInProgress:Z

    .line 312
    return-void

    .line 310
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getCrashRiskDeviceCount()I
    .locals 1

    .prologue
    .line 262
    const/16 v0, 0x636

    return v0
.end method

.method private loadState()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 402
    const/4 v3, 0x0

    .line 405
    .local v3, "reader":Ljava/io/BufferedReader;
    :try_start_0
    iget-object v5, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->context:Landroid/content/Context;

    const-string/jumbo v6, "BluetoothCrashResolverState.txt"

    invoke-virtual {v5, v6}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    .line 406
    .local v0, "inputStream":Ljava/io/FileInputStream;
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 408
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .local v4, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 409
    .local v1, "line":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 410
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->lastBluetoothCrashDetectionTime:J

    .line 412
    :cond_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 413
    if-eqz v1, :cond_1

    .line 414
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->detectedCrashCount:I

    .line 416
    :cond_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 417
    if-eqz v1, :cond_2

    .line 418
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->recoveryAttemptCount:I

    .line 420
    :cond_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 421
    if-eqz v1, :cond_3

    .line 422
    const/4 v5, 0x0

    iput-boolean v5, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->lastRecoverySucceeded:Z

    .line 423
    const-string/jumbo v5, "1"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 424
    const/4 v5, 0x1

    iput-boolean v5, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->lastRecoverySucceeded:Z

    .line 429
    :cond_3
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, "mac":Ljava/lang/String;
    if-eqz v2, :cond_5

    .line 430
    iget-object v5, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->distinctBluetoothAddresses:Ljava/util/Set;

    invoke-interface {v5, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 434
    .end local v1    # "line":Ljava/lang/String;
    .end local v2    # "mac":Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v3, v4

    .end local v0    # "inputStream":Ljava/io/FileInputStream;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :goto_1
    :try_start_2
    const-string/jumbo v5, "BluetoothCrashResolver"

    const-string/jumbo v6, "Can\'t read macs from %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v9, "BluetoothCrashResolverState.txt"

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 439
    if-eqz v3, :cond_4

    .line 441
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 445
    :cond_4
    :goto_2
    const-string/jumbo v5, "BluetoothCrashResolver"

    const-string/jumbo v6, "Read %s Bluetooth addresses"

    new-array v7, v11, [Ljava/lang/Object;

    iget-object v8, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->distinctBluetoothAddresses:Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v5, v6, v7}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 446
    return-void

    .line 441
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v0    # "inputStream":Ljava/io/FileInputStream;
    .restart local v1    # "line":Ljava/lang/String;
    .restart local v2    # "mac":Ljava/lang/String;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :cond_5
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v3, v4

    .line 442
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_2

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_2

    .line 436
    .end local v0    # "inputStream":Ljava/io/FileInputStream;
    .end local v1    # "line":Ljava/lang/String;
    .end local v2    # "mac":Ljava/lang/String;
    :catch_2
    move-exception v5

    :goto_3
    :try_start_5
    const-string/jumbo v5, "BluetoothCrashResolver"

    const-string/jumbo v6, "Can\'t parse file %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v9, "BluetoothCrashResolverState.txt"

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 439
    if-eqz v3, :cond_4

    .line 441
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    .line 442
    :catch_3
    move-exception v5

    goto :goto_2

    .line 439
    :catchall_0
    move-exception v5

    :goto_4
    if-eqz v3, :cond_6

    .line 441
    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 442
    :cond_6
    :goto_5
    throw v5

    :catch_4
    move-exception v5

    goto :goto_2

    :catch_5
    move-exception v6

    goto :goto_5

    .line 439
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v0    # "inputStream":Ljava/io/FileInputStream;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_4

    .line 436
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_6
    move-exception v5

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 434
    .end local v0    # "inputStream":Ljava/io/FileInputStream;
    :catch_7
    move-exception v5

    goto :goto_1
.end method

.method private processStateChange()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 266
    iget-object v0, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->updateNotifier:Lorg/altbeacon/bluetooth/BluetoothCrashResolver$UpdateNotifier;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->updateNotifier:Lorg/altbeacon/bluetooth/BluetoothCrashResolver$UpdateNotifier;

    invoke-interface {v0}, Lorg/altbeacon/bluetooth/BluetoothCrashResolver$UpdateNotifier;->dataUpdated()V

    .line 269
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->lastStateSaveTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 270
    invoke-direct {p0}, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->saveState()V

    .line 272
    :cond_1
    return-void
.end method

.method private saveState()V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 370
    const/4 v2, 0x0

    .line 371
    .local v2, "writer":Ljava/io/OutputStreamWriter;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->lastStateSaveTime:J

    .line 374
    :try_start_0
    iget-object v4, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->context:Landroid/content/Context;

    const-string/jumbo v5, "BluetoothCrashResolverState.txt"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 375
    .local v1, "outputStream":Ljava/io/FileOutputStream;
    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-direct {v3, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 376
    .end local v2    # "writer":Ljava/io/OutputStreamWriter;
    .local v3, "writer":Ljava/io/OutputStreamWriter;
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->lastBluetoothCrashDetectionTime:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 377
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->detectedCrashCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 378
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->recoveryAttemptCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 379
    iget-boolean v4, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->lastRecoverySucceeded:Z

    if-eqz v4, :cond_1

    const-string/jumbo v4, "1\n"

    :goto_0
    invoke-virtual {v3, v4}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 380
    iget-object v5, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->distinctBluetoothAddresses:Ljava/util/Set;

    monitor-enter v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 381
    :try_start_2
    iget-object v4, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->distinctBluetoothAddresses:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 382
    .local v0, "mac":Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 383
    const-string/jumbo v6, "\n"

    invoke-virtual {v3, v6}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 385
    .end local v0    # "mac":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v4
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 387
    :catch_0
    move-exception v4

    move-object v2, v3

    .end local v1    # "outputStream":Ljava/io/FileOutputStream;
    .end local v3    # "writer":Ljava/io/OutputStreamWriter;
    .restart local v2    # "writer":Ljava/io/OutputStreamWriter;
    :goto_2
    :try_start_4
    const-string/jumbo v4, "BluetoothCrashResolver"

    const-string/jumbo v5, "Can\'t write macs to %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "BluetoothCrashResolverState.txt"

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 390
    if-eqz v2, :cond_0

    .line 392
    :try_start_5
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 396
    :cond_0
    :goto_3
    const-string/jumbo v4, "BluetoothCrashResolver"

    const-string/jumbo v5, "Wrote %s Bluetooth addresses"

    new-array v6, v10, [Ljava/lang/Object;

    iget-object v7, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->distinctBluetoothAddresses:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v4, v5, v6}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 398
    return-void

    .line 379
    .end local v2    # "writer":Ljava/io/OutputStreamWriter;
    .restart local v1    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v3    # "writer":Ljava/io/OutputStreamWriter;
    :cond_1
    :try_start_6
    const-string/jumbo v4, "0\n"
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_0

    .line 385
    :cond_2
    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 392
    :try_start_8
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    move-object v2, v3

    .line 393
    .end local v3    # "writer":Ljava/io/OutputStreamWriter;
    .restart local v2    # "writer":Ljava/io/OutputStreamWriter;
    goto :goto_3

    .end local v2    # "writer":Ljava/io/OutputStreamWriter;
    .restart local v3    # "writer":Ljava/io/OutputStreamWriter;
    :catch_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "writer":Ljava/io/OutputStreamWriter;
    .restart local v2    # "writer":Ljava/io/OutputStreamWriter;
    goto :goto_3

    .line 390
    .end local v1    # "outputStream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    :goto_4
    if-eqz v2, :cond_3

    .line 392
    :try_start_9
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 393
    :cond_3
    :goto_5
    throw v4

    :catch_2
    move-exception v4

    goto :goto_3

    :catch_3
    move-exception v5

    goto :goto_5

    .line 390
    .end local v2    # "writer":Ljava/io/OutputStreamWriter;
    .restart local v1    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v3    # "writer":Ljava/io/OutputStreamWriter;
    :catchall_2
    move-exception v4

    move-object v2, v3

    .end local v3    # "writer":Ljava/io/OutputStreamWriter;
    .restart local v2    # "writer":Ljava/io/OutputStreamWriter;
    goto :goto_4

    .line 387
    .end local v1    # "outputStream":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v4

    goto :goto_2
.end method

.method private startRecovery()V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 278
    iget v1, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->recoveryAttemptCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->recoveryAttemptCount:I

    .line 279
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 280
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    const-string/jumbo v1, "BluetoothCrashResolver"

    const-string/jumbo v2, "about to check if discovery is active"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 281
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v1

    if-nez v1, :cond_1

    .line 282
    const-string/jumbo v1, "BluetoothCrashResolver"

    const-string/jumbo v2, "Recovery attempt started"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 283
    iput-boolean v6, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->recoveryInProgress:Z

    .line 284
    iput-boolean v5, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->discoveryStartConfirmed:Z

    .line 285
    const-string/jumbo v1, "BluetoothCrashResolver"

    const-string/jumbo v2, "about to command discovery"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 286
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    move-result v1

    if-nez v1, :cond_0

    .line 287
    const-string/jumbo v1, "BluetoothCrashResolver"

    const-string/jumbo v2, "Can\'t start discovery.  Is Bluetooth turned on?"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 289
    :cond_0
    const-string/jumbo v1, "BluetoothCrashResolver"

    const-string/jumbo v2, "startDiscovery commanded.  isDiscovering()=%s"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 294
    const-string/jumbo v1, "BluetoothCrashResolver"

    const-string/jumbo v2, "We will be cancelling this discovery in %s milliseconds."

    new-array v3, v6, [Ljava/lang/Object;

    const/16 v4, 0x1388

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 295
    invoke-direct {p0}, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->cancelDiscovery()V

    .line 305
    :goto_0
    return-void

    .line 302
    :cond_1
    const-string/jumbo v1, "BluetoothCrashResolver"

    const-string/jumbo v2, "Already discovering.  Recovery attempt abandoned."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public crashDetected()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 203
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-ge v2, v3, :cond_0

    .line 204
    const-string/jumbo v2, "BluetoothCrashResolver"

    const-string/jumbo v3, "Ignoring crashes before API 18, because BLE is unsupported."

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 224
    :goto_0
    return-void

    .line 207
    :cond_0
    const-string/jumbo v2, "BluetoothCrashResolver"

    const-string/jumbo v3, "BluetoothService crash detected"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 208
    iget-object v2, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->distinctBluetoothAddresses:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 209
    const-string/jumbo v2, "BluetoothCrashResolver"

    const-string/jumbo v3, "Distinct Bluetooth devices seen at crash: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->distinctBluetoothAddresses:Ljava/util/Set;

    .line 210
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    .line 209
    invoke-static {v2, v3, v4}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 212
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 213
    .local v0, "nowTimestamp":J
    iput-wide v0, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->lastBluetoothCrashDetectionTime:J

    .line 214
    iget v2, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->detectedCrashCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->detectedCrashCount:I

    .line 216
    iget-boolean v2, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->recoveryInProgress:Z

    if-eqz v2, :cond_2

    .line 217
    const-string/jumbo v2, "BluetoothCrashResolver"

    const-string/jumbo v3, "Ignoring Bluetooth crash because recovery is already in progress."

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 222
    :goto_1
    invoke-direct {p0}, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->processStateChange()V

    goto :goto_0

    .line 220
    :cond_2
    invoke-direct {p0}, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->startRecovery()V

    goto :goto_1
.end method

.method public disableDebug()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 155
    return-void
.end method

.method public enableDebug()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 144
    return-void
.end method

.method public forceFlush()V
    .locals 0

    .prologue
    .line 252
    invoke-direct {p0}, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->startRecovery()V

    .line 253
    invoke-direct {p0}, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->processStateChange()V

    .line 254
    return-void
.end method

.method public getDetectedCrashCount()I
    .locals 1

    .prologue
    .line 230
    iget v0, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->detectedCrashCount:I

    return v0
.end method

.method public getLastBluetoothCrashDetectionTime()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 227
    iget-wide v0, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->lastBluetoothCrashDetectionTime:J

    return-wide v0
.end method

.method public getRecoveryAttemptCount()I
    .locals 1

    .prologue
    .line 233
    iget v0, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->recoveryAttemptCount:I

    return v0
.end method

.method public isLastRecoverySucceeded()Z
    .locals 1

    .prologue
    .line 236
    iget-boolean v0, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->lastRecoverySucceeded:Z

    return v0
.end method

.method public isRecoveryInProgress()Z
    .locals 1

    .prologue
    .line 238
    iget-boolean v0, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->recoveryInProgress:Z

    return v0
.end method

.method public notifyScannedDevice(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V
    .locals 8
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "scanner"    # Landroid/bluetooth/BluetoothAdapter$LeScanCallback;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 179
    iget-object v2, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->distinctBluetoothAddresses:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v1

    .line 181
    .local v1, "oldSize":I
    iget-object v3, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->distinctBluetoothAddresses:Ljava/util/Set;

    monitor-enter v3

    .line 182
    :try_start_0
    iget-object v2, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->distinctBluetoothAddresses:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 183
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    iget-object v2, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->distinctBluetoothAddresses:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v0

    .line 186
    .local v0, "newSize":I
    if-eq v1, v0, :cond_0

    rem-int/lit8 v2, v0, 0x64

    if-nez v2, :cond_0

    .line 187
    const-string/jumbo v2, "BluetoothCrashResolver"

    const-string/jumbo v3, "Distinct Bluetooth devices seen: %s"

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->distinctBluetoothAddresses:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    :cond_0
    iget-object v2, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->distinctBluetoothAddresses:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-direct {p0}, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->getCrashRiskDeviceCount()I

    move-result v3

    if-le v2, v3, :cond_1

    .line 190
    iget-boolean v2, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->recoveryInProgress:Z

    if-nez v2, :cond_1

    .line 191
    const-string/jumbo v2, "BluetoothCrashResolver"

    const-string/jumbo v3, "Large number of Bluetooth devices detected: %s Proactively attempting to clear out address list to prevent a crash"

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->distinctBluetoothAddresses:Ljava/util/Set;

    .line 193
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    .line 191
    invoke-static {v2, v3, v4}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    const-string/jumbo v2, "BluetoothCrashResolver"

    const-string/jumbo v3, "Stopping LE Scan"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 195
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    .line 196
    invoke-direct {p0}, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->startRecovery()V

    .line 197
    invoke-direct {p0}, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->processStateChange()V

    .line 200
    :cond_1
    return-void

    .line 183
    .end local v0    # "newSize":I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public setUpdateNotifier(Lorg/altbeacon/bluetooth/BluetoothCrashResolver$UpdateNotifier;)V
    .locals 0
    .param p1, "updateNotifier"    # Lorg/altbeacon/bluetooth/BluetoothCrashResolver$UpdateNotifier;

    .prologue
    .line 245
    iput-object p1, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->updateNotifier:Lorg/altbeacon/bluetooth/BluetoothCrashResolver$UpdateNotifier;

    .line 246
    return-void
.end method

.method public start()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 114
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 115
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 116
    const-string/jumbo v1, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 117
    const-string/jumbo v1, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 118
    iget-object v1, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->context:Landroid/content/Context;

    iget-object v2, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 120
    const-string/jumbo v1, "BluetoothCrashResolver"

    const-string/jumbo v2, "started listening for BluetoothAdapter events"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    return-void
.end method

.method public stop()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 128
    iget-object v0, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->context:Landroid/content/Context;

    iget-object v1, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 129
    const-string/jumbo v0, "BluetoothCrashResolver"

    const-string/jumbo v1, "stopped listening for BluetoothAdapter events"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    invoke-direct {p0}, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->saveState()V

    .line 131
    return-void
.end method
