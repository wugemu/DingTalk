.class Lorg/altbeacon/beacon/service/BeaconService$1;
.super Ljava/lang/Object;
.source "BeaconService.java"

# interfaces
.implements Lorg/altbeacon/beacon/service/scanner/CycledLeScanCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/altbeacon/beacon/service/BeaconService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/altbeacon/beacon/service/BeaconService;


# direct methods
.method constructor <init>(Lorg/altbeacon/beacon/service/BeaconService;)V
    .locals 0
    .param p1, "this$0"    # Lorg/altbeacon/beacon/service/BeaconService;

    .prologue
    .line 342
    iput-object p1, p0, Lorg/altbeacon/beacon/service/BeaconService$1;->this$0:Lorg/altbeacon/beacon/service/BeaconService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCycleEnd()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 359
    iget-object v1, p0, Lorg/altbeacon/beacon/service/BeaconService$1;->this$0:Lorg/altbeacon/beacon/service/BeaconService;

    invoke-static {v1}, Lorg/altbeacon/beacon/service/BeaconService;->access$200(Lorg/altbeacon/beacon/service/BeaconService;)Lorg/altbeacon/beacon/service/MonitoringStatus;

    move-result-object v1

    invoke-virtual {v1}, Lorg/altbeacon/beacon/service/MonitoringStatus;->updateNewlyOutside()V

    .line 360
    iget-object v1, p0, Lorg/altbeacon/beacon/service/BeaconService$1;->this$0:Lorg/altbeacon/beacon/service/BeaconService;

    invoke-static {v1}, Lorg/altbeacon/beacon/service/BeaconService;->access$300(Lorg/altbeacon/beacon/service/BeaconService;)V

    .line 362
    iget-object v1, p0, Lorg/altbeacon/beacon/service/BeaconService$1;->this$0:Lorg/altbeacon/beacon/service/BeaconService;

    invoke-static {v1}, Lorg/altbeacon/beacon/service/BeaconService;->access$400(Lorg/altbeacon/beacon/service/BeaconService;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 365
    const-string/jumbo v1, "BeaconService"

    const-string/jumbo v2, "Simulated scan data is deprecated and will be removed in a future release. Please use the new BeaconSimulator interface instead."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 367
    iget-object v1, p0, Lorg/altbeacon/beacon/service/BeaconService$1;->this$0:Lorg/altbeacon/beacon/service/BeaconService;

    invoke-virtual {v1}, Lorg/altbeacon/beacon/service/BeaconService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    if-eqz v2, :cond_0

    .line 368
    iget-object v1, p0, Lorg/altbeacon/beacon/service/BeaconService$1;->this$0:Lorg/altbeacon/beacon/service/BeaconService;

    invoke-static {v1}, Lorg/altbeacon/beacon/service/BeaconService;->access$400(Lorg/altbeacon/beacon/service/BeaconService;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/altbeacon/beacon/Beacon;

    .line 369
    .local v0, "beacon":Lorg/altbeacon/beacon/Beacon;
    iget-object v2, p0, Lorg/altbeacon/beacon/service/BeaconService$1;->this$0:Lorg/altbeacon/beacon/service/BeaconService;

    invoke-static {v2, v0}, Lorg/altbeacon/beacon/service/BeaconService;->access$500(Lorg/altbeacon/beacon/service/BeaconService;Lorg/altbeacon/beacon/Beacon;)V

    goto :goto_0

    .line 372
    .end local v0    # "beacon":Lorg/altbeacon/beacon/Beacon;
    :cond_0
    const-string/jumbo v1, "BeaconService"

    const-string/jumbo v2, "Simulated scan data provided, but ignored because we are not running in debug mode.  Please remove simulated scan data for production."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 375
    :cond_1
    invoke-static {}, Lorg/altbeacon/beacon/BeaconManager;->getBeaconSimulator()Lorg/altbeacon/beacon/simulator/BeaconSimulator;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 378
    invoke-static {}, Lorg/altbeacon/beacon/BeaconManager;->getBeaconSimulator()Lorg/altbeacon/beacon/simulator/BeaconSimulator;

    move-result-object v1

    invoke-interface {v1}, Lorg/altbeacon/beacon/simulator/BeaconSimulator;->getBeacons()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 379
    iget-object v1, p0, Lorg/altbeacon/beacon/service/BeaconService$1;->this$0:Lorg/altbeacon/beacon/service/BeaconService;

    invoke-virtual {v1}, Lorg/altbeacon/beacon/service/BeaconService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    if-eqz v2, :cond_2

    .line 380
    invoke-static {}, Lorg/altbeacon/beacon/BeaconManager;->getBeaconSimulator()Lorg/altbeacon/beacon/simulator/BeaconSimulator;

    move-result-object v1

    invoke-interface {v1}, Lorg/altbeacon/beacon/simulator/BeaconSimulator;->getBeacons()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/altbeacon/beacon/Beacon;

    .line 381
    .restart local v0    # "beacon":Lorg/altbeacon/beacon/Beacon;
    iget-object v2, p0, Lorg/altbeacon/beacon/service/BeaconService$1;->this$0:Lorg/altbeacon/beacon/service/BeaconService;

    invoke-static {v2, v0}, Lorg/altbeacon/beacon/service/BeaconService;->access$500(Lorg/altbeacon/beacon/service/BeaconService;Lorg/altbeacon/beacon/Beacon;)V

    goto :goto_1

    .line 384
    .end local v0    # "beacon":Lorg/altbeacon/beacon/Beacon;
    :cond_2
    const-string/jumbo v1, "BeaconService"

    const-string/jumbo v2, "Beacon simulations provided, but ignored because we are not running in debug mode.  Please remove beacon simulations for production."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 390
    :cond_3
    :goto_2
    return-void

    .line 387
    :cond_4
    const-string/jumbo v1, "BeaconService"

    const-string/jumbo v2, "getBeacons is returning null. No simulated beacons to report."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 8
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "rssi"    # I
    .param p3, "scanRecord"    # [B
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 347
    iget-object v1, p0, Lorg/altbeacon/beacon/service/BeaconService$1;->this$0:Lorg/altbeacon/beacon/service/BeaconService;

    invoke-static {v1}, Lorg/altbeacon/beacon/service/BeaconService;->access$000(Lorg/altbeacon/beacon/service/BeaconService;)Lorg/altbeacon/beacon/BeaconManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/altbeacon/beacon/BeaconManager;->getNonBeaconLeScanCallback()Lorg/altbeacon/beacon/service/scanner/NonBeaconLeScanCallback;

    move-result-object v0

    .line 350
    .local v0, "nonBeaconLeScanCallback":Lorg/altbeacon/beacon/service/scanner/NonBeaconLeScanCallback;
    :try_start_0
    new-instance v1, Lorg/altbeacon/beacon/service/BeaconService$ScanProcessor;

    iget-object v2, p0, Lorg/altbeacon/beacon/service/BeaconService$1;->this$0:Lorg/altbeacon/beacon/service/BeaconService;

    invoke-direct {v1, v2, v0}, Lorg/altbeacon/beacon/service/BeaconService$ScanProcessor;-><init>(Lorg/altbeacon/beacon/service/BeaconService;Lorg/altbeacon/beacon/service/scanner/NonBeaconLeScanCallback;)V

    invoke-static {}, Lorg/altbeacon/beacon/service/BeaconService;->access$100()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Lorg/altbeacon/beacon/service/BeaconService$ScanData;

    const/4 v4, 0x0

    new-instance v5, Lorg/altbeacon/beacon/service/BeaconService$ScanData;

    iget-object v6, p0, Lorg/altbeacon/beacon/service/BeaconService$1;->this$0:Lorg/altbeacon/beacon/service/BeaconService;

    invoke-direct {v5, v6, p1, p2, p3}, Lorg/altbeacon/beacon/service/BeaconService$ScanData;-><init>(Lorg/altbeacon/beacon/service/BeaconService;Landroid/bluetooth/BluetoothDevice;I[B)V

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/altbeacon/beacon/service/BeaconService$ScanProcessor;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    :goto_0
    return-void

    .line 353
    :catch_0
    move-exception v1

    const-string/jumbo v1, "BeaconService"

    const-string/jumbo v2, "Ignoring scan result because we cannot keep up."

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
