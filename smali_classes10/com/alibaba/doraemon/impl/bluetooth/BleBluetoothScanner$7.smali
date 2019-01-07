.class Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$7;
.super Ljava/lang/Object;
.source "BleBluetoothScanner.java"

# interfaces
.implements Lorg/altbeacon/beacon/MonitorNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;

    .prologue
    .line 363
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$7;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didDetermineStateForRegion(ILorg/altbeacon/beacon/Region;)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "region"    # Lorg/altbeacon/beacon/Region;

    .prologue
    .line 399
    return-void
.end method

.method public didEnterRegion(Lorg/altbeacon/beacon/Region;)V
    .locals 4
    .param p1, "region"    # Lorg/altbeacon/beacon/Region;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 366
    if-nez p1, :cond_1

    .line 378
    :cond_0
    return-void

    .line 370
    :cond_1
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$7;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;

    invoke-static {v2}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->access$600(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 371
    .local v1, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/doraemon/bluetooth/BeaconMonitorListener;>;"
    if-eqz v1, :cond_0

    .line 372
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/bluetooth/BeaconMonitorListener;

    .line 373
    .local v0, "listener":Lcom/alibaba/doraemon/bluetooth/BeaconMonitorListener;
    if-eqz v0, :cond_2

    .line 374
    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/bluetooth/BeaconMonitorListener;->didEnterRegion(Lorg/altbeacon/beacon/Region;)V

    goto :goto_0
.end method

.method public didExitRegion(Lorg/altbeacon/beacon/Region;)V
    .locals 4
    .param p1, "region"    # Lorg/altbeacon/beacon/Region;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 382
    if-nez p1, :cond_1

    .line 394
    :cond_0
    return-void

    .line 386
    :cond_1
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$7;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;

    invoke-static {v2}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->access$600(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 387
    .local v1, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/doraemon/bluetooth/BeaconMonitorListener;>;"
    if-eqz v1, :cond_0

    .line 388
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/bluetooth/BeaconMonitorListener;

    .line 389
    .local v0, "listener":Lcom/alibaba/doraemon/bluetooth/BeaconMonitorListener;
    if-eqz v0, :cond_2

    .line 390
    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/bluetooth/BeaconMonitorListener;->didExitRegion(Lorg/altbeacon/beacon/Region;)V

    goto :goto_0
.end method
