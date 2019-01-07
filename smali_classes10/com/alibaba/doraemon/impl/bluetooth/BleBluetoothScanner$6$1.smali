.class Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$6$1;
.super Ljava/lang/Object;
.source "BleBluetoothScanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$6;->didRangeBeaconsInRegion(Ljava/util/Collection;Lorg/altbeacon/beacon/Region;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$6;

.field final synthetic val$collection:Ljava/util/Collection;

.field final synthetic val$region:Lorg/altbeacon/beacon/Region;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$6;Ljava/util/Collection;Lorg/altbeacon/beacon/Region;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$6;

    .prologue
    .line 310
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$6$1;->this$1:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$6;

    iput-object p2, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$6$1;->val$collection:Ljava/util/Collection;

    iput-object p3, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$6$1;->val$region:Lorg/altbeacon/beacon/Region;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x1

    .line 313
    const/4 v5, 0x0

    .line 315
    .local v5, "highScanMode":Z
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 316
    .local v3, "bleBeacons":Ljava/util/List;, "Ljava/util/List<Lorg/altbeacon/beacon/BleBeacon;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 318
    .local v1, "beacons":Ljava/util/List;, "Ljava/util/List<Lorg/altbeacon/beacon/Beacon;>;"
    iget-object v9, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$6$1;->val$collection:Ljava/util/Collection;

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/altbeacon/beacon/Beacon;

    .line 319
    .local v0, "beacon":Lorg/altbeacon/beacon/Beacon;
    if-eqz v0, :cond_0

    .line 322
    instance-of v10, v0, Lorg/altbeacon/beacon/BleBeacon;

    if-eqz v10, :cond_2

    move-object v2, v0

    .line 323
    check-cast v2, Lorg/altbeacon/beacon/BleBeacon;

    .line 324
    .local v2, "bleBeacon":Lorg/altbeacon/beacon/BleBeacon;
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    if-nez v5, :cond_0

    .line 328
    iget-byte v10, v2, Lorg/altbeacon/beacon/BleBeacon;->mDevAttr:B

    and-int/lit8 v4, v10, 0x1

    .line 329
    .local v4, "flag":I
    if-ne v4, v8, :cond_1

    move v5, v8

    :goto_1
    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 333
    .end local v2    # "bleBeacon":Lorg/altbeacon/beacon/BleBeacon;
    .end local v4    # "flag":I
    :cond_2
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 337
    .end local v0    # "beacon":Lorg/altbeacon/beacon/Beacon;
    :cond_3
    iget-object v9, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$6$1;->this$1:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$6;

    iget-object v9, v9, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$6;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;

    invoke-static {v9}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->access$600(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;)Ljava/util/Map;

    move-result-object v9

    iget-object v10, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$6$1;->val$region:Lorg/altbeacon/beacon/Region;

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 338
    .local v7, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/doraemon/bluetooth/BeaconMonitorListener;>;"
    if-eqz v7, :cond_6

    .line 339
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_4
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/doraemon/bluetooth/BeaconMonitorListener;

    .line 340
    .local v6, "listener":Lcom/alibaba/doraemon/bluetooth/BeaconMonitorListener;
    if-eqz v6, :cond_4

    .line 343
    instance-of v10, v6, Lcom/alibaba/doraemon/bluetooth/BleBeaconScanListener;

    if-eqz v10, :cond_5

    .line 344
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_4

    .line 345
    check-cast v6, Lcom/alibaba/doraemon/bluetooth/BleBeaconScanListener;

    .end local v6    # "listener":Lcom/alibaba/doraemon/bluetooth/BeaconMonitorListener;
    invoke-interface {v6, v3}, Lcom/alibaba/doraemon/bluetooth/BleBeaconScanListener;->onBeaconRangeChange(Ljava/util/List;)V

    goto :goto_2

    .line 347
    .restart local v6    # "listener":Lcom/alibaba/doraemon/bluetooth/BeaconMonitorListener;
    :cond_5
    instance-of v10, v6, Lcom/alibaba/doraemon/bluetooth/BeaconScanListener;

    if-eqz v10, :cond_4

    .line 348
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_4

    .line 349
    check-cast v6, Lcom/alibaba/doraemon/bluetooth/BeaconScanListener;

    .end local v6    # "listener":Lcom/alibaba/doraemon/bluetooth/BeaconMonitorListener;
    invoke-interface {v6, v1}, Lcom/alibaba/doraemon/bluetooth/BeaconScanListener;->onBeaconRangeChange(Ljava/util/List;)V

    goto :goto_2

    .line 355
    :cond_6
    if-eqz v5, :cond_7

    .line 356
    iget-object v9, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$6$1;->this$1:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$6;

    iget-object v9, v9, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$6;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;

    invoke-static {v9, v8}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->access$900(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;Z)V

    .line 358
    :cond_7
    return-void
.end method
